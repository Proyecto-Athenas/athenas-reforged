/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
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

#include "Totem.h"
#include "Log.h"
#include "Group.h"
#include "ObjectMgr.h"
#include "Opcodes.h"
#include "Player.h"
#include "SpellMgr.h"
#include "SpellInfo.h"
#include "WorldPacket.h"

Totem::Totem(SummonPropertiesEntry const* properties, Unit* owner) : Minion(properties, owner, false)
{
    m_unitTypeMask |= UNIT_MASK_TOTEM;
    m_duration = 0;
    m_type = TOTEM_PASSIVE;
}

void Totem::Update(uint32 time)
{
    if (!m_owner->isAlive() || !isAlive())
    {
        UnSummon();                                         // remove self
        return;
    }

    if (m_duration <= time)
    {
        UnSummon();                                         // remove self
        return;
    }
    else
        m_duration -= time;

    Creature::Update(time);
}

void Totem::InitStats(uint32 duration)
{
    // client requires SMSG_TOTEM_CREATED to be sent before adding to world and before removing old totem
    if (m_owner->GetTypeId() == TYPEID_PLAYER
        && m_Properties->Slot >= SUMMON_SLOT_TOTEM
        && m_Properties->Slot < MAX_TOTEM_SLOT)
    {
        WorldPacket data(SMSG_TOTEM_CREATED, 1 + 8 + 4 + 4);
        data << uint8(m_Properties->Slot - 1);
        data << uint64(GetGUID());
        data << uint32(duration);
        data << uint32(GetUInt32Value(UNIT_CREATED_BY_SPELL));
        m_owner->ToPlayer()->SendDirectMessage(&data);

        // set display id depending on caster's race
        SetDisplayId(m_owner->GetModelForTotem(PlayerTotemType(m_Properties->Id)));

        if (Player* owner = m_owner->ToPlayer())
        {
            if (owner->GetPrimaryTalentTree(owner->GetActiveSpec()) == TALENT_TREE_SHAMAN_ENHANCEMENT)
                m_modSpellHitChance += owner->GetRatingBonusValue(CR_HIT_MELEE);
            else
                m_modSpellHitChance += owner->GetRatingBonusValue(CR_HIT_SPELL);

            m_modSpellHitChance += owner->GetTotalAuraModifier(SPELL_AURA_MOD_SPELL_HIT_CHANCE);
        }
    }

    if (m_owner->GetDummyAuraEffect(SPELLFAMILY_GENERIC, 2019, EFFECT_0))
        if (m_Properties->Slot == SUMMON_SLOT_TOTEM)
            CastSpell(this, 77747, true);

    Minion::InitStats(duration);

    // Get spell cast by totem
    if (SpellInfo const* totemSpell = sSpellMgr->GetSpellInfo(GetSpell()))
        if (totemSpell->CalcCastTime())   // If spell has cast time -> its an active totem
            m_type = TOTEM_ACTIVE;

    if (GetEntry() == SENTRY_TOTEM_ENTRY)
        SetReactState(REACT_AGGRESSIVE);

    m_duration = duration;

    SetLevel(m_owner->getLevel());
}

void Totem::InitSummon()
{
    if (m_type == TOTEM_PASSIVE && GetSpell())
    {
        switch (GetSpell())
        {
            case 8178: // Grounding Totem
                if (m_owner->HasAura(55441))
                {
                    m_spells[0] = 89523;
                    CastSpell(this, 89523, true);
                    return;
                }
                break;
        }
        CastSpell(this, GetSpell(), true);
    }

    // Some totems can have both instant effect and passive spell
    if (GetSpell(1))
        CastSpell(this, GetSpell(1), true);
}

void Totem::UnSummon(uint32 msTime)
{
    if (msTime)
    {
        m_Events.AddEvent(new ForcedUnsummonDelayEvent(*this), m_Events.CalculateTime(msTime));
        return;
    }

    CombatStop();
    RemoveAurasDueToSpell(GetSpell(), GetGUID());

    // clear owner's totem slot
    for (int i = SUMMON_SLOT_TOTEM; i < MAX_TOTEM_SLOT; ++i)
    {
        if (m_owner->m_SummonSlot[i] == GetGUID())
        {
            m_owner->m_SummonSlot[i] = 0;
            break;
        }
    }

    m_owner->RemoveAurasDueToSpell(GetSpell(), GetGUID());

    // Remove Sentry Totem Aura
    if (GetEntry() == SENTRY_TOTEM_ENTRY)
        m_owner->RemoveAurasDueToSpell(SENTRY_TOTEM_SPELLID);

    //remove aura all party members too
    if (Player* owner = m_owner->ToPlayer())
    {
        owner->SendAutoRepeatCancel(this);

        if (SpellInfo const* spell = sSpellMgr->GetSpellInfo(GetUInt32Value(UNIT_CREATED_BY_SPELL)))
            owner->SendCooldownEvent(spell, 0, NULL, false);

        if (Group* group = owner->GetGroup())
        {
            for (GroupReference* itr = group->GetFirstMember(); itr != NULL; itr = itr->next())
            {
                Player* target = itr->getSource();
                if (target && group->SameSubGroup(owner, target))
                    target->RemoveAurasDueToSpell(GetSpell(), GetGUID());
            }
        }
    }

    // any totem unsummon look like as totem kill, req. for proper animation
    if (isAlive())
        setDeathState(DEAD);

    AddObjectToRemoveList();
}

bool Totem::IsImmunedToSpellEffect(SpellInfo const* spellInfo, uint32 index) const
{
    // TODO: possibly all negative auras immune?
    if (GetEntry() == 5925)
        return false;

    switch (spellInfo->Effects[index].ApplyAuraName)
    {
        case SPELL_AURA_PERIODIC_DAMAGE:
        case SPELL_AURA_PERIODIC_LEECH:
        case SPELL_AURA_MOD_FEAR:
        case SPELL_AURA_TRANSFORM:
        case SPELL_AURA_MOD_STUN:
            return true;
        default:
            break;
    }

    return Creature::IsImmunedToSpellEffect(spellInfo, index);
}
