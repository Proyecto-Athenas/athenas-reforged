/*
 * Copyright (C) 2013-2014 trinity core og
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Battleground.h"
#include "BattlegroundMgr.h"
#include "BattlegroundQueue.h"
#include "Chat.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "ReputationMgr.h"
#include "BattlegroundCrossFaction.h"

/*####################################################################################
###############################CROSSFACTION BATTLEGROUNDS#############################
####################################################################################*/

uint8 Unit::getRace(bool forceoriginal) const
{
    if (GetTypeId() == TYPEID_PLAYER)
    {
        Player const* player = ToPlayer();

        if (forceoriginal)
            return player->getORace();

        if (player->InArena())
            return GetByteValue(UNIT_FIELD_BYTES_0, 0);

        if (!player->IsPlayingNative())
            return player->getFRace();
    }

    return GetByteValue(UNIT_FIELD_BYTES_0, 0);
 }

bool Player::SendRealNameQuery()
{
    if (IsPlayingNative())
        return false;

    WorldPacket data(SMSG_NAME_QUERY_RESPONSE, (8 + 1 + 1 + 1 + 1 + 1 + 10));
    data.appendPackGUID(GetGUID()); // player guid
    data << uint8(0); // added in 3.1; if > 1, then end of packet
    data << GetName(); // played nam
    data << uint8(0); // realm name for cross realm BG usage
    data << uint8(getORace());
    data << uint8(getGender());
    data << uint8(getClass());
    data << uint8(0); // is not declined

    return true;
}

void Player::SetFakeRace()
{
    m_FakeRace = GetOTeam() == ALLIANCE ? RACE_BLOODELF : RACE_HUMAN;
}

bool Player::SendBattleGroundChat(uint8 msgtype, std::string message)
{
    // Select distance to broadcast to.
    float distance = msgtype == CHAT_MSG_SAY ? sWorld->getFloatConfig(CONFIG_LISTEN_RANGE_SAY) : sWorld->getFloatConfig(CONFIG_LISTEN_RANGE_YELL);

    if (Battleground* pBattleGround = GetBattleground())
    {
        if (pBattleGround->isArena()) // Only fake chat in BG's. CFBG should not interfere with arenas.
            return false;

        for (Battleground::BattlegroundPlayerMap::const_iterator itr = pBattleGround->GetPlayers().begin(); itr != pBattleGround->GetPlayers().end(); ++itr)
        {
            if (Player* pPlayer = ObjectAccessor::FindPlayer(itr->first))
            {
                if (GetDistance2d(pPlayer->GetPositionX(), pPlayer->GetPositionY()) <= distance)
                {
                    WorldPacket data(SMSG_MESSAGECHAT, 200);

                    if (GetTeam() == pPlayer->GetTeam())
                        BuildPlayerChat(&data, msgtype, message, LANG_UNIVERSAL, "");
                    else if (msgtype != CHAT_MSG_EMOTE)
                        BuildPlayerChat(&data, msgtype, message, pPlayer->GetTeam() == ALLIANCE ? LANG_ORCISH : LANG_COMMON, "");

                    pPlayer->GetSession()->SendPacket(&data);
                }
            }
        }
        return true;
    }
    else
        return false;
}

void Player::MorphFit(bool value)
{
    if (!IsPlayingNative() && value)
    {
        if (GetOTeam() == HORDE)
        {
            if (getGender() == GENDER_MALE)
            {
                SetDisplayId(19723);
                SetNativeDisplayId(19723);
            }
            else
            {
                SetDisplayId(19724);
                SetNativeDisplayId(19724);
            }
        }
        else
        {
            if (getGender() == GENDER_MALE)
            {
                SetDisplayId(20578);
                SetNativeDisplayId(20578);
            }
            else
            {
                SetDisplayId(20579);
                SetNativeDisplayId(20579);
            }
        }
    }
    else
        InitDisplayIds();
}

void Player::FitPlayerInTeam(bool action, Battleground* pBattleGround)
{
    if (!pBattleGround)
        pBattleGround = GetBattleground();

    if (!pBattleGround || (pBattleGround->isArena() && action))
        return;

    if (!pBattleGround->isRatedBattleground())
    {
        if (!IsPlayingNative() && action)
            setFactionForRace(getRace());
        else
            setFactionForRace(getORace());
    }

    if (action)
        SetForgetBGPlayers(true);
    else
        SetForgetInListPlayers(true);

    if (!pBattleGround->isRatedBattleground())
        MorphFit(action);
    else
        RemoveArenaAuras();

    if (!IsPlayingNative())
        ForceBGFactions(true);

    if (pBattleGround && action)
        SendChatMessage("%sYou are playing for the %s%s in this %s", MSG_COLOR_WHITE, GetTeam() == ALLIANCE ? MSG_COLOR_DARKBLUE"alliance" : MSG_COLOR_RED"horde", MSG_COLOR_WHITE, pBattleGround->GetName());
}

void Player::ForceBGFactions(bool apply)
{
    GetReputationMgr().ApplyForceReaction(1216, (GetTeam() == ALLIANCE ? REP_FRIENDLY : REP_HOSTILE), apply);
    GetReputationMgr().ApplyForceReaction(469, (GetTeam() == ALLIANCE ? REP_FRIENDLY : REP_HOSTILE), apply);
    GetReputationMgr().ApplyForceReaction(1214, (GetTeam() == ALLIANCE ? REP_HOSTILE : REP_FRIENDLY), apply);
    GetReputationMgr().ApplyForceReaction(67, (GetTeam() == ALLIANCE ? REP_HOSTILE : REP_FRIENDLY), apply);
    GetReputationMgr().ApplyForceReaction(1534, (GetTeam() == ALLIANCE ? REP_FRIENDLY : REP_HOSTILE), apply);
}

void Player::DoForgetPlayersInList()
{
    // m_FakePlayers is filled from a vector within the battleground
    // they were in previously so all players that have been in that BG will be invalidated.
    for (FakePlayers::const_iterator itr = m_FakePlayers.begin(); itr != m_FakePlayers.end(); ++itr)
    {
        WorldPacket data(SMSG_INVALIDATE_PLAYER, 16);
        data << *itr;
        GetSession()->SendPacket(&data);
        if (Player* pPlayer = ObjectAccessor::FindPlayer(*itr))
            GetSession()->SendNameQueryOpcode(pPlayer->GetGUID());
    }
    m_FakePlayers.clear();
}

void Player::DoForgetPlayersInBG(Battleground* pBattleGround)
{
    for (Battleground::BattlegroundPlayerMap::const_iterator itr = pBattleGround->GetPlayers().begin(); itr != pBattleGround->GetPlayers().end(); ++itr)
    {
        // Here we invalidate players in the bg to the added player
        WorldPacket data1(SMSG_INVALIDATE_PLAYER, 16);
        data1 << MAKE_NEW_GUID(itr->first, 0, HIGHGUID_PLAYER);
        GetSession()->SendPacket(&data1);

        if (Player* pPlayer = ObjectAccessor::FindPlayer(itr->first))
        {
            GetSession()->SendNameQueryOpcode(pPlayer->GetGUID()); // Send namequery answer instantly if player is available
            // Here we invalidate the player added to players in the bg
            WorldPacket data2(SMSG_INVALIDATE_PLAYER, 16);
            data2 << GetGUID();
            pPlayer->GetSession()->SendPacket(&data2);
            pPlayer->GetSession()->SendNameQueryOpcode(GetGUID());
        }
    }
}

bool BattlegroundQueue::CheckCrossFactionMatch(BattlegroundBracketId bracket_id, Battleground* bg, uint8 minPlayers, uint8 maxPlayers)
{
    if (!sWorld->getBoolConfig(BATTLEGROUND_CROSSFACTION_ENABLED) || bg->isArena())
        return false; // Only do this if crossbg's are enabled.

    // Here we will add all players to selectionpool, later we check if there are enough and launch a bg.
    FillXPlayersToBG(bracket_id, bg, true, minPlayers, maxPlayers);

    if (sBattlegroundMgr->isTesting() && (m_SelectionPools[TEAM_ALLIANCE].GetPlayerCount() || m_SelectionPools[TEAM_HORDE].GetPlayerCount()))
        return true;

    if (m_SelectionPools[TEAM_ALLIANCE].GetPlayerCount() < minPlayers || m_SelectionPools[TEAM_HORDE].GetPlayerCount() < minPlayers)
        return false;

    return true;
}

// This function will invite players in the least populated faction, which makes battleground queues much faster.
// This function will return true if cross faction battlegrounds are enabled, otherwise return false,
// which is useful in FillPlayersToBG. Because then we can interrupt the regular invitation if cross faction bg's are enabled.
bool BattlegroundQueue::FillXPlayersToBG(BattlegroundBracketId bracket_id, Battleground* bg, bool start, uint8 minPlayers, uint8 maxPlayers)
{
    uint8 queuedPeople = 0;
    for (GroupsQueueType::const_iterator itr = m_QueuedGroups[bracket_id][BG_QUEUE_MIXED].begin(); itr != m_QueuedGroups[bracket_id][BG_QUEUE_MIXED].end(); ++itr)
        if (!(*itr)->IsInvitedToBGInstanceGUID)
            queuedPeople += (*itr)->Players.size();

    if (sWorld->getBoolConfig(BATTLEGROUND_CROSSFACTION_ENABLED) && (sBattlegroundMgr->isTesting() || queuedPeople >= (minPlayers * 2) || !start))
    {
        int32 aliFree = start ? maxPlayers : bg->GetFreeSlotsForTeam(ALLIANCE);
        int32 hordeFree = start ? maxPlayers : bg->GetFreeSlotsForTeam(HORDE);
        // Empty selection pools. They will be refilled from queued groups.
        m_SelectionPools[TEAM_ALLIANCE].Init();
        m_SelectionPools[TEAM_HORDE].Init();
        int32 valiFree = aliFree;
        int32 vhordeFree = hordeFree;
        int32 diff = 0;
		
		
        // Add teams to their own factions as far as possible.
        if (start)
        {
            QueuedGroupMap m_PreGroupMap_a, m_PreGroupMap_h;
            int32 m_SmallestOfTeams = 0;
            int32 queuedAlliance = 0;
            int32 queuedHorde = 0;

            for (GroupsQueueType::const_iterator itr = m_QueuedGroups[bracket_id][BG_QUEUE_MIXED].begin(); itr != m_QueuedGroups[bracket_id][BG_QUEUE_MIXED].end(); ++itr)
            {
                if ((*itr)->IsInvitedToBGInstanceGUID)
                    continue;

                bool alliance = (*itr)->OTeam == ALLIANCE;

                if (alliance)
                {
                    m_PreGroupMap_a.insert(std::make_pair((*itr)->Players.size(), *itr));
                    queuedAlliance += (*itr)->Players.size();
                }
                else
                {
                    m_PreGroupMap_h.insert(std::make_pair((*itr)->Players.size(), *itr));
                    queuedHorde += (*itr)->Players.size();
                }
            }

            m_SmallestOfTeams = std::min(std::min(aliFree, queuedAlliance), std::min(hordeFree, queuedHorde));

            valiFree -= PreAddPlayers(m_PreGroupMap_a, m_SmallestOfTeams, aliFree);
            vhordeFree -= PreAddPlayers(m_PreGroupMap_h, m_SmallestOfTeams, hordeFree);
        }

        QueuedGroupMap m_QueuedGroupMap;

        for (GroupsQueueType::const_iterator itr = m_QueuedGroups[bracket_id][BG_QUEUE_MIXED].begin(); itr != m_QueuedGroups[bracket_id][BG_QUEUE_MIXED].end(); ++itr)
            m_QueuedGroupMap.insert(std::make_pair((*itr)->Players.size(), *itr));

        for (QueuedGroupMap::reverse_iterator itr = m_QueuedGroupMap.rbegin(); itr != m_QueuedGroupMap.rend(); ++itr)
        {
            GroupsQueueType allypool = m_SelectionPools[TEAM_ALLIANCE].SelectedGroups;
            GroupsQueueType hordepool = m_SelectionPools[TEAM_HORDE].SelectedGroups;

            GroupQueueInfo* ginfo = itr->second;

            // If player already was invited via pre adding (add to own team first) or he was already invited to a bg, skip.
            if (ginfo->IsInvitedToBGInstanceGUID ||
                std::find(allypool.begin(), allypool.end(), ginfo) != allypool.end() ||
                std::find(hordepool.begin(), hordepool.end(), ginfo) != hordepool.end() ||
                (valiFree == 0 && vhordeFree == 0))
                continue;

            diff = abs(valiFree - vhordeFree);
            bool moreAli = valiFree < vhordeFree;

            if (diff > 0)
                ginfo->Team = moreAli ? HORDE : ALLIANCE;

            bool alliance = ginfo->Team == ALLIANCE;

            if (m_SelectionPools[alliance ? TEAM_ALLIANCE : TEAM_HORDE].AddGroup(ginfo, alliance ? aliFree : hordeFree))
                alliance ? valiFree -= ginfo->Players.size() : vhordeFree -= ginfo->Players.size();
        }

        return true;
    }
    return false;
}

int32 BattlegroundQueue::PreAddPlayers(QueuedGroupMap m_PreGroupMap, int32 MaxAdd, uint32 MaxInTeam)
{
    int32 LeftToAdd = MaxAdd;
    uint32 Added = 0;

    for (QueuedGroupMap::reverse_iterator itr = m_PreGroupMap.rbegin(); itr != m_PreGroupMap.rend(); ++itr)
    {
        int32 PlayerSize = itr->first;
        bool alliance = itr->second->OTeam == ALLIANCE;

        if (PlayerSize <= LeftToAdd && m_SelectionPools[alliance ? TEAM_ALLIANCE : TEAM_HORDE].AddGroup(itr->second, MaxInTeam))
            LeftToAdd -= PlayerSize, Added -= PlayerSize;
    }

    return LeftToAdd;
}

void Player::SendChatMessage(const char *format, ...)
{
    if (!IsInWorld())
        return;

    if (format)
    {
        va_list ap;
        char str [2048];
        va_start(ap, format);
        vsnprintf(str, 2048, format, ap);
        va_end(ap);

        ChatHandler(GetSession()).SendSysMessage(str);
    }
}
