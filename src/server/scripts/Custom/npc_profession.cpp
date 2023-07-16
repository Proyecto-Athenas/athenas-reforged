#include "ScriptPCH.h"
#include "Language.h"

#define MARK_ITEM 100605
#define PROF_MAX 525

class npc_profession : public CreatureScript
{
public:
    npc_profession() : CreatureScript("npc_profession") {}

    void CreatureWhisperBasedOnBool(const char *text, Creature *_creature, Player *pPlayer, bool value)
    {
        if (value)
            _creature->MonsterWhisper(text, pPlayer->GetGUIDLow());
    }

    uint32 PlayerMaxLevel() const
    {
        return sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL);
    }

    bool HaveMarks(const Player *player) const
    {
        return player->HasItemCount(MARK_ITEM, 1, true);
    }

    bool PlayerHasItemOrSpell(const Player *plr, uint32 itemId, uint32 spellId) const
    {
        return plr->HasItemCount(itemId, 1, true) || plr->HasSpell(spellId);
    }

    bool OnGossipHello(Player *pPlayer, Creature *_creature)
    {
        pPlayer->ADD_GOSSIP_ITEM_DB(51001, 0, GOSSIP_SENDER_MAIN, 196);
        pPlayer->ADD_GOSSIP_ITEM_DB(51001, 1, GOSSIP_SENDER_MAIN, 220);
        pPlayer->PlayerTalkClass->SendGossipMenu(20011, _creature->GetGUID());
        return true;
    }

    bool LearnProfessionGreatUp(Player *player, SkillType skill)
    {
        ChatHandler handler(player->GetSession());
        char *skill_name;

        SkillLineEntry const *SkillInfo = sSkillLineStore.LookupEntry(skill);
        skill_name = SkillInfo->name;

        if (!HaveMarks(player))
            return false;

        if (player->getLevel() < 80)
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Tienes que ser nivel 80 o superior!");
            return false;
        }

        if (!SkillInfo)
        {
            return false;
        }

        player->DestroyItemCount(MARK_ITEM, 1, true);

        LearnSkillRecipesHelper(player, SkillInfo->id);
        player->SetSkill(SkillInfo->id, player->GetSkillStep(SkillInfo->id), PROF_MAX, PROF_MAX);
        handler.PSendSysMessage(LANG_COMMAND_LEARN_ALL_RECIPES, skill_name);
        return true;
    }

    bool LearnAllRecipesInProfession(Player *player, SkillType skill)
    {
        return LearnProfessionGreatUp(player, skill);

        ChatHandler handler(player->GetSession());
        char *skill_name;

        SkillLineEntry const *SkillInfo = sSkillLineStore.LookupEntry(skill);
        skill_name = SkillInfo->name;

        if (!SkillInfo)
        {
            return false;
        }

        player->DestroyItemCount(MARK_ITEM, 1, true);

        LearnSkillRecipesHelper(player, SkillInfo->id);
        player->SetSkill(SkillInfo->id, player->GetSkillStep(SkillInfo->id), 600, 600);
        handler.PSendSysMessage(LANG_COMMAND_LEARN_ALL_RECIPES, skill_name);
        return true;
    }

    void LearnSkillRecipesHelper(Player *player, uint32 skill_id)
    {
        uint32 classmask = player->getClassMask();

        for (uint32 j = 0; j < sSkillLineAbilityStore.GetNumRows(); ++j)
        {
            SkillLineAbilityEntry const *skillLine = sSkillLineAbilityStore.LookupEntry(j);
            if (!skillLine)
                continue;

            // wrong skill
            if (skillLine->skillId != skill_id)
                continue;

            // not high rank
            if (skillLine->forward_spellid)
                continue;

            // skip racial skills
            if (skillLine->racemask != 0)
                continue;

            // skip wrong class skills
            if (skillLine->classmask && (skillLine->classmask & classmask) == 0)
                continue;

            SpellInfo const *spellInfo = sSpellMgr->GetSpellInfo(skillLine->spellId);
            if (!spellInfo || !SpellMgr::IsSpellValid(spellInfo, player, false))
                continue;

            switch (spellInfo->Id)
            {
            case 28677:
            case 28675:
            case 28672:
            case 26801:
            case 26798:
            case 26797:
            case 20222:
            case 20219:
            case 17041:
            case 17040:
            case 17039:
            case 10656:
            case 10658:
            case 10660:
            case 9787:
            case 8788:
                continue;
            default:
                break;
            }

            if (!spellInfo->HasEffect(SPELL_EFFECT_SKILL))
                continue;

            player->learnSpell(skillLine->spellId, false);
        }
    }

    bool IsSecondarySkill(SkillType skill) const
    {
        return skill == SKILL_COOKING || skill == SKILL_FIRST_AID;
    }

    void CompleteLearnProfession(Player *pPlayer, Creature *pCreature, SkillType skill)
    {
        if (IsSecondarySkill(skill))
            return;

        if (!LearnAllRecipesInProfession(pPlayer, skill))
            pCreature->MonsterWhisper("Inner error", pPlayer->GetGUIDLow());
    }

    bool OnGossipSelect(Player *pPlayer, Creature *_creature, uint32 /*uiSender*/, uint32 uiAction)
    {
        if (!pPlayer->HasItemCount(MARK_ITEM, 1))
        {
            _creature->MonsterWhisper("You have no mark item", pPlayer->GetGUIDLow());
            pPlayer->PlayerTalkClass->SendCloseGossip();
            return false;
        }
        pPlayer->PlayerTalkClass->ClearMenus();

        switch (uiAction)
        {
        case 200:
            pPlayer->ADD_GOSSIP_ITEM_DB(51001, 0, GOSSIP_SENDER_MAIN, 196);
            pPlayer->ADD_GOSSIP_ITEM_DB(51001, 1, GOSSIP_SENDER_MAIN, 220);
            pPlayer->PlayerTalkClass->SendGossipMenu(20011, _creature->GetGUID());
            break;
        case 220:
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 196:
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 0, GOSSIP_SENDER_MAIN, 1);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 1, GOSSIP_SENDER_MAIN, 2);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 2, GOSSIP_SENDER_MAIN, 3);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 3, GOSSIP_SENDER_MAIN, 4);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 4, GOSSIP_SENDER_MAIN, 5);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 5, GOSSIP_SENDER_MAIN, 6);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 6, GOSSIP_SENDER_MAIN, 7);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 7, GOSSIP_SENDER_MAIN, 8);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 8, GOSSIP_SENDER_MAIN, 9);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 9, GOSSIP_SENDER_MAIN, 10);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 10, GOSSIP_SENDER_MAIN, 11);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 11, GOSSIP_SENDER_MAIN, 12);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 12, GOSSIP_SENDER_MAIN, 13);
            pPlayer->ADD_GOSSIP_ITEM_DB(51002, 13, GOSSIP_SENDER_MAIN, 200);
            pPlayer->PlayerTalkClass->SendGossipMenu(20011, _creature->GetGUID());
            break;
        case 1:
            if (pPlayer->HasSkill(SKILL_ALCHEMY))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_ALCHEMY);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 2:
            if (pPlayer->HasSkill(SKILL_BLACKSMITHING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_BLACKSMITHING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 3:
            if (pPlayer->HasSkill(SKILL_LEATHERWORKING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_LEATHERWORKING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 4:
            if (pPlayer->HasSkill(SKILL_TAILORING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_TAILORING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 5:
            if (pPlayer->HasSkill(SKILL_ENGINEERING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_ENGINEERING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 6:
            if (pPlayer->HasSkill(SKILL_ENCHANTING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_ENCHANTING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 7:
            if (pPlayer->HasSkill(SKILL_JEWELCRAFTING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_JEWELCRAFTING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 8:
            if (pPlayer->HasSkill(SKILL_INSCRIPTION))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_INSCRIPTION);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 9:
            if (pPlayer->HasSkill(SKILL_COOKING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_COOKING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 10:
            if (pPlayer->HasSkill(SKILL_FIRST_AID))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_FIRST_AID);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 11:
            if (pPlayer->HasSkill(SKILL_HERBALISM))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_HERBALISM);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 12:
            if (pPlayer->HasSkill(SKILL_SKINNING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_SKINNING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        case 13:
            if (pPlayer->HasSkill(SKILL_MINING))
            {
                _creature->MonsterWhisper("You already have this profession!", pPlayer->GetGUIDLow());
                pPlayer->PlayerTalkClass->SendCloseGossip();
                break;
            }
            CompleteLearnProfession(pPlayer, _creature, SKILL_MINING);
            pPlayer->PlayerTalkClass->SendCloseGossip();
            break;
        }

        return true;
    }
};

void AddSC_npc_profession()
{
    new npc_profession();
}