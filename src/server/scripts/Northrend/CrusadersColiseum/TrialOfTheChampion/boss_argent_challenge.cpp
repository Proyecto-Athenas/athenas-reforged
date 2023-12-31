/*
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
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

// Reordenada, trinity codestyle y limpieza de CRLF por Eilo
/* ScriptData
SDName: Argent Challenge Encounter.
SD%Complete: 80%
SDComment: Hay que mirar bien las habilidades de las memorias y mejorarlas
SDCategory: Trial of the Champion
EndScriptData */

#include "Player.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "trial_of_the_champion.h"

enum Spells
{
    // Argent Soldiers
    SPELL_KNEE                  = 68442,
    // Monk
    SPELL_DIVINE_SHIELD         = 67251,
    SPELL_FINAL_MEDITATION      = 67255,
    SPELL_FLURRY_OF_BLOWS       = 67233,
    SPELL_PUMMEL                = 67235,
    // Lightwielder
    SPELL_BLAZING_LIGHT         = 67247,
    SPELL_CLEAVE                = 15284,
    SPELL_UNBALANCING_STRIKE    = 67237,
    // Priest
    SPELL_HOLY_SMITE            = 36176,
    SPELL_HOLY_SMITE_H          = 67289,
    SPELL_SHADOW_WORD_PAIN      = 34941,
    SPELL_SHADOW_WORD_PAIN_H    = 34942,
    SPELL_MIND_CONTROL          = 67229,
    SPELL_FOUNTAIN_OF_LIGHT     = 67194,

    //Eadric
    SPELL_EADRIC_ACHIEVEMENT    = 68197, // Faceroller achievement
    SPELL_HAMMER_JUSTICE        = 66863,
    SPELL_HAMMER_RIGHTEOUS      = 66867,
    SPELL_RADIANCE              = 66935,
    SPELL_VENGEANCE             = 66865,
    SPELL_VENGANCE_AURA         = 66889,
    // Necessary for the achievement
    SPELL_HAMMER_RIGHTEOUS_P    = 66904, // Aura on player, changes to a stance with the spell
    SPELL_HAMMER_RIGHTEOUS_RET  = 66905, // Casted by player to Eadric
    SPELL_HAMMER_JUSTICE_STUN   = 66940,

    //Paletress
    SPELL_SMITE                 = 66536,
    SPELL_SMITE_H               = 67674,
    SPELL_HOLY_FIRE             = 66538,
    SPELL_HOLY_FIRE_H           = 67676,
    SPELL_RENEW                 = 66537,
    SPELL_RENEW_H               = 67675,
    SPELL_HOLY_NOVA             = 66546,
    SPELL_SHIELD                = 66515,
    SPELL_CONFESS               = 66680,
    SPELL_SUMMON_MEMORY         = 66545,

    //Memory
    SPELL_SHADOW_FORM           = 34429, // THIS IS NOT CORRECT!
    SPELL_OLD_WOUNDS            = 66620,
    SPELL_OLD_WOUNDS_H          = 67679,
    SPELL_SHADOWS_PAST          = 66619,
    SPELL_SHADOWS_PAST_H        = 67678,
    SPELL_WAKING_NIGHTMARE      = 66552,
    SPELL_WAKING_NIGHTMARE_H    = 67677
};

enum Says
{
    SAY_COMMON_AGGRO                = 1,
    SAY_COMMON_KILL                 = 3,
    SAY_COMMON_DEATH                = 4,

    SAY_EADRIC_HAMMER               = 2,
    SAY_EADRIC_RADIANCE_WARNING     = 5,
    SAY_EADRIC_HAMMER_WARNING       = -1999913,

    SAY_PALETRESS_SUMMON_MEMORY     = 2,
    SAY_PALETRESS_MEMORY_DIES       = 5,
    SAY_PALETRESS_NIGHTMARE_WARNING = -1999912,  // Convert to script_texts
};

class OrientationCheck
{
    public:
        explicit OrientationCheck(Unit *_caster) : caster(_caster) { }

        bool operator() (WorldObject* unit)
        {
            return unit && unit->ToUnit() && !unit->ToUnit()->isInFrontInMap(caster, 40.0f, 2.5f);
        }

    private:
        Unit* caster;
};

class spell_eadric_radiance : public SpellScriptLoader
{
    public:
        spell_eadric_radiance() : SpellScriptLoader("spell_eadric_radiance") { }
        class spell_eadric_radiance_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_eadric_radiance_SpellScript);
            void FilterTargets(std::list<WorldObject*>& unitList)
            {
                unitList.remove_if (OrientationCheck(GetCaster()));
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_eadric_radiance_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_eadric_radiance_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_SRC_AREA_ENEMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_eadric_radiance_SpellScript();
        }
};

class spell_eadric_hammer_of_righteous : public SpellScriptLoader
{
    public:
        spell_eadric_hammer_of_righteous() : SpellScriptLoader("spell_eadric_hammer_of_righteous") {}

        class spell_eadric_hammer_of_righteousSpellScript : public SpellScript
        {
            PrepareSpellScript(spell_eadric_hammer_of_righteousSpellScript)

            void HandleBeforeHit()
            {
                Unit* caster = GetCaster();
                Unit* target = GetExplTargetUnit();

                if(!caster || !target)
                    return;

                Aura* hammerJustice = target->GetAura(SPELL_HAMMER_JUSTICE_STUN);

                // Target isn't affected by HoJ so is able to pickup the Hammer
                if(!hammerJustice)
                {
                    caster->CastSpell(target, SPELL_HAMMER_RIGHTEOUS_P);
                    PreventHitDamage();
                }
            }

            void Register()
            {
                BeforeHit += SpellHitFn(spell_eadric_hammer_of_righteousSpellScript::HandleBeforeHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_eadric_hammer_of_righteousSpellScript();
        }
};

class boss_eadric : public CreatureScript
{
public:
    boss_eadric() : CreatureScript("boss_eadric") { }
    struct boss_eadricAI : public ScriptedAI
    {
        boss_eadricAI(Creature* creature) : ScriptedAI(creature) { }

        uint32 venganceTimer;
        uint32 radianceTimer;
        uint32 hammerJusticeTimer;

        bool defeated;

        void Reset()
        {
            venganceTimer = 10000;
            radianceTimer = 16000;
            hammerJusticeTimer = 25000;

            defeated = false;
        }

        void SpellHit(Unit* /*caster*/, const SpellInfo *spell)
        {
            // Faceroller achievement
            if(IsHeroic())
                if(spell->Id == SPELL_HAMMER_RIGHTEOUS_RET)
                    if(me->GetHealth() <= (uint32)spell->Effects[0].BasePoints)
                        if(InstanceScript* instance = me->GetInstanceScript())
                            instance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, SPELL_EADRIC_ACHIEVEMENT);
        }

        void EnterCombat(Unit* /*attacker*/)
        {
            Talk(SAY_COMMON_AGGRO);

            if(InstanceScript* instance = me->GetInstanceScript())
                if(instance->GetData(BOSS_ARGENT_CHALLENGE_E) != IN_PROGRESS)
                    instance->SetData(BOSS_ARGENT_CHALLENGE_E, IN_PROGRESS);
        }

        void JustReachedHome()
        {
            if(InstanceScript* instance = me->GetInstanceScript())
                if(instance->GetData(BOSS_ARGENT_CHALLENGE_E) == IN_PROGRESS)
                    instance->SetData(BOSS_ARGENT_CHALLENGE_E, FAIL);
        }

        void KilledUnit(Unit* /*target*/)
        {
            Talk(SAY_COMMON_KILL);
        }

        void DamageTaken(Unit* /*done_by*/, uint32 &damage)
        {
            if(defeated)
            {
                damage = 0;
                return;
            }

            // Prevent damage from finishing hit and mark creature as defeated
            if (damage >= me->GetHealth())
            {
                damage = 0;
                defeated = true;
                me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);
                me->GetMotionMaster()->MovePoint(1, me->GetHomePosition());
                me->SetTarget(0);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                Talk(SAY_COMMON_DEATH);
                BindPlayersToInstance(me);
                /*                if (spellInfo && spellInfo->Id == 66905)
                    if(InstanceScript* instance = me->GetInstanceScript())
                    instance->DoCompleteAchievement(3803);*/
            }
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if(type == POINT_MOTION_TYPE && id == 1)
                me->DespawnOrUnsummon(0);
        }

        uint32 GetData(uint32 type) const
        {
            // Used by Announcer on periodic check of the bosses state
            if(type == DATA_CHAMPION_DEFEATED)
                return defeated ? 1 : 0;

            return 0;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(defeated || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (hammerJusticeTimer <= diff)
            {
                me->InterruptNonMeleeSpells(true);

                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 250, true))
                {
                    if (target && target->isAlive())
                    {
                        Talk(SAY_EADRIC_HAMMER);
                        DoCast(target, SPELL_HAMMER_JUSTICE);
                        // DpScriptText(SAY_EADRIC_HAMMER_WARNING, me, target);
                        DoCast(target, SPELL_HAMMER_RIGHTEOUS);
                    }
                }
                hammerJusticeTimer = 25000;
            } else hammerJusticeTimer -= diff;

            if (venganceTimer <= diff)
            {
                DoCast(me, SPELL_VENGEANCE);
                venganceTimer = 10000;
            } else venganceTimer -= diff;

            if (radianceTimer <= diff)
            {
                Talk(SAY_EADRIC_RADIANCE_WARNING);
                DoCastAOE(SPELL_RADIANCE);

                radianceTimer = 16000;
            } else radianceTimer -= diff;

            //DoMeleeAttackIfReady();
            if (me->isAttackReady() && me->IsWithinMeleeRange(me->getVictim()))
            {
                me->AttackerStateUpdate(me->getVictim());
                me->resetAttackTimer();

                if (Aura* vengance = me->GetAura(SPELL_VENGANCE_AURA))
                    if (vengance->GetDuration() < 4900)
                        me->RemoveAurasDueToSpell(SPELL_VENGANCE_AURA);
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_eadricAI(creature);
    }
};

class spell_paletress_shield : public SpellScriptLoader
{
    public:
        spell_paletress_shield() : SpellScriptLoader("spell_paletress_shield") { }

        class spell_paletress_shieldAuraScript : public AuraScript
        {
            PrepareAuraScript(spell_paletress_shieldAuraScript);

            void HandleOnEffectAbsorb(AuraEffect* /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
            {
                Unit* caster = GetCaster();
                Unit* attacker = dmgInfo.GetAttacker();

                if(!caster || !attacker)
                    return;

                absorbAmount = dmgInfo.GetDamage();
                // Deal the damage and show it on caster's log
                caster->DealDamage(attacker, (uint32)(absorbAmount*0.25f), NULL, dmgInfo.GetDamageType(), dmgInfo.GetSchoolMask());
                caster->SendSpellNonMeleeDamageLog(attacker, GetSpellInfo()->Id, (uint32) (absorbAmount*0.25f),  dmgInfo.GetSchoolMask(), 0, 0, true, 0);
            }

            // function registering
            void Register()
            {
                OnEffectAbsorb += AuraEffectAbsorbFn(spell_paletress_shieldAuraScript::HandleOnEffectAbsorb, EFFECT_0);
            }
        };

        // function which creates AuraScript
        AuraScript* GetAuraScript() const override
        {
            return new spell_paletress_shieldAuraScript();
        }
};

class boss_paletress : public CreatureScript
{
public:
    boss_paletress() : CreatureScript("boss_paletress") { }

    struct boss_paletressAI : public ScriptedAI
    {
        boss_paletressAI(Creature* creature) : ScriptedAI(creature) {}


        uint64 memoryGUID;

        bool shielded;
        bool defeated;

        uint32 holyFireTimer;
        uint32 holySmiteTimer;
        uint32 renewTimer;

        void Reset()
        {
            me->RemoveAllAuras();
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

            holyFireTimer     = urand(9000, 12000);
            holySmiteTimer    = urand(5000, 7000);
            renewTimer        = urand(2000, 5000);

            if (Creature* memory = Unit::GetCreature(*me, memoryGUID))
                memory->DespawnOrUnsummon();

            memoryGUID = 0;

            shielded = false;
            defeated = false;
        }

        void SetData(uint32 id, uint32 /*value*/)
        {
            if (id == 1)
            {
                if (Creature* memory = Unit::GetCreature(*me, memoryGUID))
                    memory->DespawnOrUnsummon();

                Talk(SAY_PALETRESS_MEMORY_DIES);
                me->RemoveAura(SPELL_SHIELD);
            }
        }
        void EnterCombat(Unit* /*attacker*/)
        {
            Talk(SAY_COMMON_AGGRO);

            if(InstanceScript* instance = me->GetInstanceScript())
                if(instance->GetData(BOSS_ARGENT_CHALLENGE_P) != IN_PROGRESS)
                    instance->SetData(BOSS_ARGENT_CHALLENGE_P, IN_PROGRESS);
        }

        void JustReachedHome()
        {
            if(InstanceScript* instance = me->GetInstanceScript())
                if(instance->GetData(BOSS_ARGENT_CHALLENGE_P) == IN_PROGRESS)
                    instance->SetData(BOSS_ARGENT_CHALLENGE_P, FAIL);
        }

        void KilledUnit(Unit* /*target*/)
        {
            Talk(SAY_COMMON_KILL);
        }

        void DamageTaken(Unit* /*attacker*/, uint32 & damage)
        {
            if (defeated)
            {
                damage = 0;
                return;
            }

            // Prevent damage from finishing hit and mark creature as defeated
            if (damage >= me->GetHealth())
            {
                damage = 0;
                defeated = true;
                me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);
                me->GetMotionMaster()->MovePoint(1, me->GetHomePosition());
                me->SetTarget(0);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                Talk(SAY_COMMON_DEATH);
                BindPlayersToInstance(me);

                if (Creature* memory = Unit::GetCreature(*me, memoryGUID))
                    memory->DespawnOrUnsummon();
            }

            if (!shielded && HealthBelowPct(25))
            {
        if (Creature* memory = Unit::GetCreature(*me, memoryGUID))
          return;
                shielded = true;
                me->InterruptNonMeleeSpells(true);
                DoCastAOE(SPELL_HOLY_NOVA, false);
                DoCast(me, SPELL_SHIELD);
                //DoCastAOE(SPELL_SUMMON_MEMORY, false);
                //DoCastAOE(SPELL_CONFESS, false);
                Talk(SAY_PALETRESS_SUMMON_MEMORY);

                switch (urand(0, 24))
                {
                    case 0: me->SummonCreature(NPC_MEMORY_ALGALON, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 1: me->SummonCreature(NPC_MEMORY_CHROMAGGUS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 2: me->SummonCreature(NPC_MEMORY_CYANIGOSA, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 3: me->SummonCreature(NPC_MEMORY_DELRISSA, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 4: me->SummonCreature(NPC_MEMORY_ECK, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 5: me->SummonCreature(NPC_MEMORY_MURU, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 6: me->SummonCreature(NPC_MEMORY_GRUUL, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 7: me->SummonCreature(NPC_MEMORY_HAKKAR, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 8: me->SummonCreature(NPC_MEMORY_HEIGAN, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 9: me->SummonCreature(NPC_MEMORY_HEROD, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 10: me->SummonCreature(NPC_MEMORY_HOGGER, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 11: me->SummonCreature(NPC_MEMORY_IGNIS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 12: me->SummonCreature(NPC_MEMORY_ILLIDAN, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 13: me->SummonCreature(NPC_MEMORY_INGVAR, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 14: me->SummonCreature(NPC_MEMORY_KALITHRESH, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 15: me->SummonCreature(NPC_MEMORY_LUCIFROM, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 16: me->SummonCreature(NPC_MEMORY_MALCHEZAAR, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 17: me->SummonCreature(NPC_MEMORY_MUTANUS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 18: me->SummonCreature(NPC_MEMORY_ONYXIA, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 19: me->SummonCreature(NPC_MEMORY_THUNDERAAN, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 20: me->SummonCreature(NPC_MEMORY_VANCLEEF, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 21: me->SummonCreature(NPC_MEMORY_VASHJ, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 22: me->SummonCreature(NPC_MEMORY_VEKNILASH, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 23: me->SummonCreature(NPC_MEMORY_VEZAX, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                    case 24: me->SummonCreature(NPC_MEMORY_ARCHIMONDE, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                        break;
                }
            }
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type == POINT_MOTION_TYPE && id == 1)
                me->DespawnOrUnsummon(0);
        }

        uint32 GetData(uint32 type) const
        {
            // Used by Announcer on periodic check of the bosses state
            if (type == DATA_CHAMPION_DEFEATED)
                return defeated ? 1 : 0;

            return 0;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(defeated || me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (holyFireTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 250, true))
                {
                    if (target && target->isAlive())
                        DoCast(target, SPELL_HOLY_FIRE);
                }
                 if (me->HasAura(SPELL_SHIELD))
                    holyFireTimer = 13000;
                else
                    holyFireTimer = urand(9000, 12000);
            } else holyFireTimer -= diff;

            if (holySmiteTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 250, true))
                {
                    if (target && target->isAlive())
                        DoCast(target, SPELL_SMITE);
                }
                if (me->HasAura(SPELL_SHIELD))
                    holySmiteTimer = 9000;
                else
                    holySmiteTimer = urand(5000, 7000);
            } else holySmiteTimer -= diff;

            if (me->HasAura(SPELL_SHIELD))
            {
                if (renewTimer <= diff)
                {
                    me->InterruptNonMeleeSpells(true);
                    uint8 target = urand(0, 1);
                    switch(target)
                    {
                        case 0:
                            DoCast(me, SPELL_RENEW);
                            break;
                        case 1:
                            if (Creature* memory = Unit::GetCreature(*me, memoryGUID))
                            {
                                if (memory->isAlive())
                                    DoCast(memory, SPELL_RENEW);
                                else
                                {
                                    if (me->HasAura(SPELL_SHIELD))
                                        me->RemoveAura(SPELL_SHIELD);
                                }
                            }
                            break;
                    }
                    renewTimer = urand(15000, 17000);
                } else renewTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summon)
        {
            memoryGUID = summon->GetGUID();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_paletressAI(creature);
    }
};

class npc_memory : public CreatureScript
{
public:
    npc_memory() : CreatureScript("npc_memory") { }

    struct npc_memoryAI : public ScriptedAI
    {
        npc_memoryAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 oldWoundsTimer;
        uint32 shadowPastTimer;
        uint32 wakingNightmareTimer;

        void Reset()
        {
            if (InstanceScript* instance = me->GetInstanceScript())
                instance->SetData(DATA_MEMORY_ENTRY, me->GetEntry());

            oldWoundsTimer = 12000;
            shadowPastTimer = 5000;
            wakingNightmareTimer = 7000;
            DoCast(SPELL_SHADOW_FORM);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (oldWoundsTimer <= diff)
            {
                Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0);
                if (target && target->isAlive())
                    DoCast(target, DUNGEON_MODE(SPELL_OLD_WOUNDS, SPELL_OLD_WOUNDS_H));
                oldWoundsTimer = 12000;
            }else oldWoundsTimer -= diff;

            if (wakingNightmareTimer <= diff)
            {
                // DpScriptText(SAY_PALETRESS_NIGHTMARE_WARNING, me);
                DoCast(me, DUNGEON_MODE(SPELL_WAKING_NIGHTMARE, SPELL_WAKING_NIGHTMARE_H));
                wakingNightmareTimer = 7000;
            }else wakingNightmareTimer -= diff;

            if (shadowPastTimer <= diff)
            {
                Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1);
                if (target && target->isAlive())
                    DoCast(target, DUNGEON_MODE(SPELL_SHADOWS_PAST,SPELL_SHADOWS_PAST_H));
                shadowPastTimer = 5000;
            }else shadowPastTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            if (me->isSummon())
            {
                Unit* summoner = me->ToTempSummon()->GetSummoner();
                if (summoner && summoner->isAlive())
                {
                    summoner->GetAI()->SetData(1, 0);
                    summoner->RemoveAura(SPELL_SHIELD);
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_memoryAI(creature);
    }
};

class npc_argent_monk : public CreatureScript
{
public:
    npc_argent_monk() : CreatureScript("npc_argent_monk") { }

    struct npc_argent_monkAI : public ScriptedAI
    {
        npc_argent_monkAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 timerFlurryBlows;
        uint32 timerPummel;
        bool shieldCasted;
        bool defeated;

        void Reset()
        {
            timerFlurryBlows = 2000;
            timerPummel = 1000;
            shieldCasted = false;
            defeated = false;
        }

        void JustReachedHome()
        {
            if (InstanceScript* instance = me->GetInstanceScript())
                if (instance->GetData(MINION_ENCOUNTER) == IN_PROGRESS)
                    instance->SetData(MINION_ENCOUNTER, FAIL);
        }

        void EnterCombat(Unit* /*attacker*/)
        {
            if (InstanceScript* instance = me->GetInstanceScript())
                if (instance->GetData(MINION_ENCOUNTER) != IN_PROGRESS)
                    instance->SetData(MINION_ENCOUNTER, IN_PROGRESS);
        }

        void DamageTaken(Unit* /*attacker*/, uint32 & damage)
        {
            if (damage >= me->GetHealth() && !shieldCasted)
            {
                damage = 0;
                DoCast(me, SPELL_DIVINE_SHIELD, true);
                DoCastVictim(SPELL_FINAL_MEDITATION);
                shieldCasted = true;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(defeated || me->HasAura(SPELL_DIVINE_SHIELD))
                return;

            if (timerFlurryBlows <= diff)
            {
                DoCast(me, SPELL_FLURRY_OF_BLOWS);
                timerFlurryBlows = urand(7000, 10000);
            }else timerFlurryBlows -= diff;

            if (timerPummel <= diff)
            {
                DoCastVictim(SPELL_PUMMEL);
                timerPummel = urand(3000, 6000);
            }else timerPummel -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_argent_monkAI(creature);
    }
};

class npc_argent_lightwielder : public CreatureScript
{
public:
    npc_argent_lightwielder() : CreatureScript("npc_argent_lightwielder") { }

    struct npc_argent_lightwielderAI : public ScriptedAI
    {
        npc_argent_lightwielderAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 timerBlazingLight;
        uint32 timerCleave;
        uint32 timerUnbalancingStrike;
        bool defeated;

        void Reset()
        {
            timerBlazingLight = 5000;
            timerCleave = 2000;
            timerUnbalancingStrike = 3000;
            defeated = false;
        }

        void JustReachedHome()
        {
            if(InstanceScript* instance = me->GetInstanceScript())
                if (instance->GetData(MINION_ENCOUNTER) == IN_PROGRESS)
                    instance->SetData(MINION_ENCOUNTER, FAIL);
        }

        void EnterCombat(Unit* /*attacker*/)
        {
            if(InstanceScript* instance = me->GetInstanceScript())
                if (instance->GetData(MINION_ENCOUNTER) != IN_PROGRESS)
                    instance->SetData(MINION_ENCOUNTER, IN_PROGRESS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(defeated)
                return;

            if(me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (timerBlazingLight <= diff)
            {
                Unit* target = DoSelectLowestHpFriendly(40);

                if (!target || target->GetHealth() > me->GetHealth())
                    target = me;

                DoCast(target, SPELL_BLAZING_LIGHT);
                timerBlazingLight = urand(8000, 10000);
            }else timerBlazingLight -= diff;

            if (timerCleave <= diff)
            {
                DoCastVictim(SPELL_CLEAVE);
                timerCleave = urand(7000, 8500);
            }else timerCleave -= diff;

            if (timerUnbalancingStrike <= diff)
            {
                DoCastVictim(SPELL_UNBALANCING_STRIKE);
                timerUnbalancingStrike = urand(3000, 6000);
            }else timerUnbalancingStrike -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_argent_lightwielderAI(creature);
    }
};

class npc_argent_priest : public CreatureScript
{
public:
    npc_argent_priest() : CreatureScript("npc_argent_priest") { }

    struct npc_argent_priestAI : public ScriptedAI
    {
        npc_argent_priestAI(Creature* creature) : ScriptedAI(creature) {}

        uint32 timerMindControl;
        uint32 timerShadowWord;
        uint32 timerFountain;
        uint32 timerSmite;
        bool defeated;

        void Reset()
        {
            timerMindControl = 7000;
            timerShadowWord = 2000;
            timerFountain = 9000;
            timerSmite = 1000;
            defeated = false;
        }

        void JustReachedHome()
        {
            if(InstanceScript* instance = me->GetInstanceScript())
                if (instance->GetData(MINION_ENCOUNTER) == IN_PROGRESS)
                    instance->SetData(MINION_ENCOUNTER, FAIL);
        }

        void EnterCombat(Unit* /*attacker*/)
        {
            if (InstanceScript* instance = me->GetInstanceScript())
                if (instance->GetData(MINION_ENCOUNTER) != IN_PROGRESS)
                    instance->SetData(MINION_ENCOUNTER, IN_PROGRESS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (defeated)
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (timerFountain <= diff)
            {
                DoCast(SPELL_FOUNTAIN_OF_LIGHT);
                timerFountain = urand(40000, 45000);
            }else timerFountain -= diff;

            if (timerMindControl <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    DoCast(target, SPELL_MIND_CONTROL);
                timerMindControl = urand(12000, 16000);
                return;
            }else timerMindControl -= diff;

            if (timerShadowWord <= diff)
            {
                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    if(!target->HasAura(IsHeroic() ? SPELL_SHADOW_WORD_PAIN_H : SPELL_SHADOW_WORD_PAIN))
                        DoCast(target, IsHeroic() ? SPELL_SHADOW_WORD_PAIN_H : SPELL_SHADOW_WORD_PAIN);
                timerShadowWord = urand(3000, 5000);
            }else timerShadowWord -= diff;

            if (timerSmite <= diff)
            {
                if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    DoCast(target, IsHeroic() ? SPELL_HOLY_SMITE_H : SPELL_HOLY_SMITE);
                timerSmite = urand(1000, 2000);
            } else timerSmite -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_argent_priestAI(creature);
    }
};

void AddSC_boss_argent_challenge()
{
    new boss_eadric();
    new spell_eadric_radiance();
    new spell_eadric_hammer_of_righteous();
    new boss_paletress();
    new spell_paletress_shield();
    new npc_memory();
    new npc_argent_monk();
    new npc_argent_lightwielder();
    new npc_argent_priest();
}
