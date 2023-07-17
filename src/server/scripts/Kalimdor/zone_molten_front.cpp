
#include "PassiveAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "Player.h"

enum eNpcs
{
    NPC_MALFURION_EVENT = 52135,
    NPC_OBSIDIAN_SLAGLORD = 53381,
};

enum eQuests
{
    QUEST_ENTER_HELL = 29201,
    QUEST_SHADOW_GUARDIAN = 29214,
    QUEST_SERRE_DRUID = 29181,
    QUEST_FEU_FOLLET = 29143,
    QUEST_DRUID_OF_TALON = 29181,
};

enum introEventSpells
{
    // NPC_MALFURION_EVENT
    SPELL_CALL_THE_ROCK = 100848,
    SPELL_CLEANSING_WIND = 100818,
    SPELL_STARFALL = 100804,
    SPELL_TRANQUILITY = 100854,

    SPELL_MALFURION_SEED = 100490,

    // NPC_OBSIDIAN_SLAGLORD
    SPELL_OBSIDIAN_DEVASTATION = 98979,
};

enum introEventEvents
{
    EVENT_CALL_THE_ROCK = 1,
    EVENT_CLEANSING_WIND = 2,
    EVENT_STARFALL,
    EVENT_TRANQUILITY,

    EVENT_OBSIDIAN_DEVASTATION,

    EVENT_OUTRO,
    EVENT_OUTRO_1,
    EVENT_OUTRO_2,
    EVENT_OUTRO_3,

    EVENT_SEED_1,
    EVENT_SEED_2,
    EVENT_SEED_3,
    EVENT_SEED_4,

    EVENT_SUMMON_IGNITER,
    EVENT_DESACTIVATE_FIRE,
    EVENT_MOVE_EVENT,
    EVENT_MOVE_POINT,
    EVENT_ONE,
    EVENT_TWO,
    EVENT_THREE,
};

enum introEventMiscs
{
    DATA_MALFURION_EVENT = 1,
    POINT_OUTRO,
    POINT_OUTRO_1,
    POINT_OUTRO_2,
    POINT_WAR,
    ACTION_SEED,
    ACTION_START_EVENT,
};

class SlagLordEvent : public BasicEvent
{
public:
    SlagLordEvent(Unit *owner) : _owner(owner) {}

    bool Execute(uint64 execTime, uint32 /*diff*/)
    {
        _owner->CastSpell(_owner, SPELL_OBSIDIAN_DEVASTATION, false);
        _owner->m_Events.AddEvent(this, execTime + 15000);
        return false;
    }

private:
    Unit *_owner;
};

class npc_malfurion_intro_event : public CreatureScript
{
public:
    npc_malfurion_intro_event() : CreatureScript("npc_malfurion_intro_event") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_malfurion_intro_eventAI(creature);
    }

    bool OnQuestReward(Player *player, Creature *creature, Quest const *_Quest, uint32)
    {
        switch (_Quest->GetQuestId())
        {
        case QUEST_ENTER_HELL:
            creature->AI()->DoAction(ACTION_SEED);
            break;
        }
        return true;
    }

    struct npc_malfurion_intro_eventAI : public ScriptedAI
    {
        npc_malfurion_intro_eventAI(Creature *creature) : ScriptedAI(creature), summons(me)
        {
            _dataEvent = NOT_STARTED;
        }

        void EnterEvadeMode() override
        {
            if (GetData(DATA_MALFURION_EVENT) != NOT_STARTED)
                return;
            _EnterEvadeMode();
        }

        void SetData(uint32 id, uint32 value) override
        {
            switch (id)
            {
            case DATA_MALFURION_EVENT:
            {
                switch (value)
                {
                case IN_PROGRESS:
                {
                    events.Reset();
                    me->SummonCreature(NPC_OBSIDIAN_SLAGLORD, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
                    events.ScheduleEvent(EVENT_STARFALL, 5000);
                    events.ScheduleEvent(EVENT_TRANQUILITY, 0);
                    events.ScheduleEvent(EVENT_CALL_THE_ROCK, 5000);
                    events.ScheduleEvent(EVENT_CLEANSING_WIND, 5000);
                    break;
                }
                case DONE:
                {
                    events.Reset();
                    events.ScheduleEvent(EVENT_OUTRO, 5000);
                    std::list<Player *> _players = me->GetPlayersInRange(100, true);
                    for (std::list<Player *>::const_iterator itr = _players.begin(); itr != _players.end(); itr++)
                        if (Player *player = *itr)
                            player->KilledMonsterCredit(53370, 0);
                    //                            me->DespawnOrUnsummon(10000);
                    break;
                }
                case NOT_STARTED:
                {
                    me->SetVisible(false);
                    events.Reset();
                    summons.DespawnAll();
                }
                }
                _dataEvent = id;
                break;
            }
            default:
                break;
            }
        }

        uint32 GetData(uint32 id) const override
        {
            switch (id)
            {
            case DATA_MALFURION_EVENT:
                return _dataEvent;
            default:
                break;
            }
            return 0;
        }

        void DoAction(int32 const param) override
        {
            switch (param)
            {
            case ACTION_SEED:
                events.ScheduleEvent(EVENT_SEED_1, 0);
                break;
            }
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type != POINT_MOTION_TYPE)
                return;
            switch (id)
            {
            case POINT_OUTRO:
                events.ScheduleEvent(EVENT_OUTRO_1, 0);
                break;
            case POINT_OUTRO_1:
                events.ScheduleEvent(EVENT_OUTRO_2, 0);
                break;
            case POINT_OUTRO_2:
                break;
            case POINT_WAR:
                Talk(4);
                events.ScheduleEvent(EVENT_SEED_4, 5000);
                break;
            }
        }

        void DamageTaken(Unit * /*done_by*/, uint32 &damage) override
        {
            damage = 0;
        }

        void SummonedCreatureDies(Creature *summon, Unit * /*killer*/) override
        {
            if (summon->GetEntry() == NPC_OBSIDIAN_SLAGLORD)
                SetData(DATA_MALFURION_EVENT, DONE);
        }

        void JustSummoned(Creature *summon) override
        {
            switch (summon->GetEntry())
            {
            case NPC_OBSIDIAN_SLAGLORD:
            {
                summon->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_ATTACK_ME, true);
                summon->ApplySpellImmune(0, IMMUNITY_STATE, SPELL_AURA_MOD_TAUNT, true);
                summon->AI()->AttackStart(me);
                me->getThreatManager().addThreat(summon, 10000000.0f);
                summon->getThreatManager().addThreat(me, 10000000.0f);
                summon->m_Events.AddEvent(new SlagLordEvent(summon), summon->m_Events.CalculateTime(6000));
                break;
            }
            }
            summons.Summon(summon);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_STARFALL:
                    DoCast(SPELL_STARFALL);
                    events.ScheduleEvent(EVENT_STARFALL, 10000);
                    break;
                case EVENT_CALL_THE_ROCK:
                    DoCast(SPELL_CALL_THE_ROCK);
                    events.ScheduleEvent(EVENT_CALL_THE_ROCK, 20000);
                    break;
                case EVENT_TRANQUILITY:
                    DoCast(SPELL_TRANQUILITY);
                    events.ScheduleEvent(EVENT_TRANQUILITY, 8000);
                    break;
                case EVENT_CLEANSING_WIND:
                    DoCast(SPELL_CLEANSING_WIND);
                    events.ScheduleEvent(EVENT_CLEANSING_WIND, 5000);
                    break;
                case EVENT_OUTRO:
                    me->SetReactState(REACT_PASSIVE);
                    Talk(0);
                    me->GetMotionMaster()->MovePoint(POINT_OUTRO, 1015.68f, 369.78f, 41.04f);
                    break;
                case EVENT_OUTRO_1:
                    me->GetMotionMaster()->MovePoint(POINT_OUTRO_1, 983.68f, 373.78f, 38.11f);
                    break;
                case EVENT_OUTRO_2:
                {
                    SetData(DATA_MALFURION_EVENT, NOT_STARTED);
                    me->DespawnOrUnsummon();
                    break;
                }
                case EVENT_SEED_1:
                    //                        DoCast(SPELL_MALFURION_SEED); need a sniff to be fix
                    Talk(1);
                    events.ScheduleEvent(EVENT_SEED_2, 10000);
                    break;
                case EVENT_SEED_2:
                    Talk(2);
                    events.ScheduleEvent(EVENT_SEED_3, 10000);
                    break;
                case EVENT_SEED_3:
                    me->GetMotionMaster()->MovePoint(POINT_WAR, 1017.12f, 369.13f, 41.02f);
                    Talk(3);
                    break;
                case EVENT_SEED_4:
                    me->NearTeleportTo(976.86f, 373.97f, 38.2f, 6.16f);
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        SummonList summons;
        uint32 _dataEvent;
    };
};

// 6937
class at_molten_front_enter : public AreaTriggerScript
{
public:
    at_molten_front_enter() : AreaTriggerScript("at_molten_front_enter")
    {
    }

    bool OnTrigger(Player *player, AreaTriggerEntry const * /*areaTrigger*/)
    {
        if (player->GetQuestStatus(QUEST_ENTER_HELL) != QUEST_STATUS_INCOMPLETE)
            return true;
        if (Map *map = player->GetMap())
        {
            if (Creature *malfurion = player->FindNearestCreature(NPC_MALFURION_EVENT, 500.0f))
                if (malfurion->AI()->GetData(DATA_MALFURION_EVENT) != NOT_STARTED)
                    return true;
            Position pos{1013.34f, 341.23f, 41.1f, 5.84f};
            if (Creature *malfurion = map->SummonCreature(NPC_MALFURION_EVENT, pos))
            {
                malfurion->RemoveAllAuras();
                malfurion->SetVisible(true);
                malfurion->AI()->SetData(DATA_MALFURION_EVENT, IN_PROGRESS);
            }
        }
        return true;
    }
};

class npc_hyjal_defender_hurted : public CreatureScript
{
public:
    npc_hyjal_defender_hurted() : CreatureScript("npc_hyjal_defender_hurted") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_hyjal_defender_hurtedAI(creature);
    }

    struct npc_hyjal_defender_hurtedAI : public ScriptedAI
    {
        npc_hyjal_defender_hurtedAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void SpellHit(Unit *caster, const SpellInfo *spell) override
        {
            if (spell && spell->Id == 98662)
            {
                me->RemoveFlag(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
                me->RemoveFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH);
                me->CastSpell(caster, 98666, true);
                Talk(0, caster->GetGUID());
                me->DespawnOrUnsummon(5000);
            }
            if (me->HasAura(97664))
                if (caster->GetTypeId() == TYPEID_PLAYER && spell && spell->Id == 97670)
                    if (Player *player = caster->ToPlayer())
                    {
                        me->RemoveAllAuras();
                        me->SetStandState(UNIT_STAND_STATE_STAND);
                        player->KilledMonsterCredit(me->GetEntry());
                        Talk(0, player->GetGUID());
                        me->DespawnOrUnsummon(10000);
                    }
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };
};

class npc_molten_front_rayne : public CreatureScript
{
public:
    npc_molten_front_rayne() : CreatureScript("npc_molten_front_rayne") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_front_rayneAI(creature);
    }

    bool OnQuestAccept(Player *player, Creature *creature, Quest const *_Quest)
    {
        switch (_Quest->GetQuestId())
        {
        case QUEST_FEU_FOLLET:
            player->CastSpell(player, 98151, true);
            break;
        }
        return true;
    }

    struct npc_molten_front_rayneAI : public ScriptedAI
    {
        npc_molten_front_rayneAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };
};

class npc_molten_front_feu_follet : public CreatureScript
{
public:
    npc_molten_front_feu_follet() : CreatureScript("npc_molten_front_feu_follet") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_front_feu_folletAI(creature);
    }

    struct npc_molten_front_feu_folletAI : public ScriptedAI
    {
        npc_molten_front_feu_folletAI(Creature *creature) : ScriptedAI(creature)
        {
            _plGUID = 0;
        }

        void IsSummonedBy(Unit *summoner)
        {
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->MoveFollow(summoner, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
            _plGUID = summoner->GetGUID();
            events.ScheduleEvent(EVENT_OUTRO, 0);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                    if (Creature *portal = me->FindNearestCreature(52531, 5.0f))
                    {
                        me->DespawnOrUnsummon(1000);
                        portal->DespawnOrUnsummon(1000);
                        if (Player *player = Unit::GetPlayer(*me, _plGUID))
                            player->KilledMonsterCredit(52531, 0);
                    }
                    else
                        events.ScheduleEvent(EVENT_OUTRO, 1000);
                    break;
                }
            }
        }

    private:
        EventMap events;
        uint64 _plGUID;
    };
};

class npc_molten_captain_saynna : public CreatureScript
{
public:
    npc_molten_captain_saynna() : CreatureScript("npc_molten_captain_saynna") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_captain_saynnaAI(creature);
    }

    bool OnQuestReward(Player *player, Creature *creature, Quest const *_Quest, uint32)
    {
        switch (_Quest->GetQuestId())
        {
        case 29214:
            creature->AI()->SetGUID(player->GetGUID());
            creature->AI()->DoAction(ACTION_START_EVENT);
            break;
        }
        return true;
    }

    struct npc_molten_captain_saynnaAI : public ScriptedAI
    {
        npc_molten_captain_saynnaAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
        }

        void SetGUID(uint64 guid, int32 /*id*/) override
        {
            _plGUID = guid;
        }

        void DoAction(int32 const param) override
        {
            switch (param)
            {
            case ACTION_START_EVENT:
                Talk(0, _plGUID);
                events.ScheduleEvent(EVENT_OUTRO, 10000);
                break;
            }
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    Talk(1, _plGUID);
                    // 52934
                    Position pos;
                    me->GetNearPosition(pos, 2.0f, M_PI / 2.0f);
                    me->SummonCreature(52934, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                    me->GetNearPosition(pos, 4.0f, M_PI / 2.0f);
                    me->SummonCreature(52934, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                    me->GetNearPosition(pos, 2.0f, -M_PI / 2.0f);
                    me->SummonCreature(52934, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                    me->GetNearPosition(pos, 4.0f, -M_PI / 2.0f);
                    me->SummonCreature(52934, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                    events.ScheduleEvent(EVENT_OUTRO_1, 10000);
                    break;
                }
                case EVENT_OUTRO_1:
                    Talk(2, _plGUID);
                    events.ScheduleEvent(EVENT_OUTRO_2, 10000);
                    break;
                case EVENT_OUTRO_2:
                    me->CastSpell(me, 96639, true);
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        uint64 _plGUID;
    };
};

class molten_front_playerscript : public PlayerScript
{
public:
    molten_front_playerscript() : PlayerScript("molten_front_playerscript") {}

    void OnEnterMap(Player *player, uint32 mapId)
    {
        if (mapId == 861)
        {
            if (!player->HasAura(99557) && !player->HasAura(99556))
            {
                if (!player->isAlive())
                    player->ResurrectPlayer(0.0f, false);
            }
            if (player->GetQuestStatus(80000) != QUEST_STATUS_REWARDED)
                if (player->GetQuestStatus(29215) == QUEST_STATUS_REWARDED && player->GetQuestStatus(29182) == QUEST_STATUS_REWARDED)
                    if (Quest const *quest = sObjectMgr->GetQuestTemplate(80000))
                    {
                        player->AddQuest(quest, NULL);
                        player->CompleteQuest(80000);
                        player->RewardQuest(quest, 0, player);
                    }
        }
    }
};

// 6902
class at_molten_front_depth_enter : public AreaTriggerScript
{
public:
    at_molten_front_depth_enter() : AreaTriggerScript("at_molten_front_depth_enter")
    {
    }

    bool OnTrigger(Player *player, AreaTriggerEntry const * /*areaTrigger*/)
    {
        if (player->GetQuestStatus(29210) == QUEST_STATUS_INCOMPLETE)
            if (!player->HasAura(97741) &&
                !player->HasAura(97742) &&
                !player->HasAura(97743) &&
                !player->HasAura(97744) &&
                !player->HasAura(97745) &&
                !player->HasAura(97746) &&
                !player->HasAura(97747) &&
                !player->HasAura(97748))
            {
                player->AddAura(97741, player);
                player->AddAura(97742, player);
                player->AddAura(97743, player);
                player->AddAura(97744, player);
                player->AddAura(97745, player);
                player->AddAura(97746, player);
                player->AddAura(97747, player);
                player->AddAura(97748, player);
                player->AddAura(97734, player);
                player->KilledMonsterCredit(53886, 0);
            }
        return true;
    }
};

class npc_molten_captain_saynna_event : public CreatureScript
{
public:
    npc_molten_captain_saynna_event() : CreatureScript("npc_molten_captain_saynna_event") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_captain_saynna_eventAI(creature);
    }

    struct npc_molten_captain_saynna_eventAI : public ScriptedAI
    {
        npc_molten_captain_saynna_eventAI(Creature *creature) : ScriptedAI(creature), summons(me)
        {
            isEventInprogress = false;
            waveCount = 0;
            summons.DespawnAll();
            events.Reset();
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type != POINT_MOTION_TYPE)
                return;
            switch (id)
            {
            case POINT_OUTRO:
                events.ScheduleEvent(EVENT_SUMMON_IGNITER, 0);
                break;
            case POINT_OUTRO_1:
                Talk(2);
                me->SummonCreature(52998, 1185.06f, 140.49f, 63.66f, 0.64f);
                break;
            case POINT_OUTRO_2:
                break;
            }
        }

        void JustSummoned(Creature *summon) override
        {
            switch (summon->GetEntry())
            {
            case 52999:
                summon->AI()->AttackStart(me);
                break;
            }
            AttackStart(summon);
            summons.Summon(summon);
        }

        void SummonedCreatureDies(Creature *summon, Unit * /*killer*/) override
        {
            if (summon->GetEntry() == 52998)
                events.ScheduleEvent(EVENT_OUTRO_2, 5000);
        }

        void MoveInLineOfSight(Unit *unit)
        {
            if (isEventInprogress || unit->GetTypeId() != TYPEID_PLAYER)
                return;

            if (Player *player = unit->ToPlayer())
                if (player->GetQuestStatus(29204) != QUEST_STATUS_INCOMPLETE)
                    return;

            if (me->GetDistance2d(unit->GetPositionX(), unit->GetPositionY()) <= 10.0f)
            {
                isEventInprogress = true;
                Talk(0, unit->GetGUID());
                events.ScheduleEvent(EVENT_OUTRO, 1000);
            }
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    me->GetMotionMaster()->MovePoint(POINT_OUTRO, 1196.42f, 224.63f, 51.92f);
                    // 52999
                    break;
                }
                case EVENT_SUMMON_IGNITER:
                {
                    waveCount++;
                    Position pos;
                    me->GetNearPosition(pos, 10.0f, 0.0f);
                    me->SummonCreature(52999, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                    if (waveCount < 5)
                        events.ScheduleEvent(EVENT_SUMMON_IGNITER, 5000);
                    else
                    {
                        events.Reset();
                        events.ScheduleEvent(EVENT_OUTRO_1, 15000);
                    }
                    break;
                }
                case EVENT_OUTRO_1:
                    Talk(1);
                    me->GetMotionMaster()->MovePoint(POINT_OUTRO_1, 1219.52f, 165.23f, 59.0f);
                    break;
                case EVENT_OUTRO_2:
                {
                    Talk(3);
                    events.Reset();
                    events.ScheduleEvent(EVENT_OUTRO_3, 5000);
                    break;
                }
                case EVENT_OUTRO_3:
                {
                    events.Reset();
                    std::list<Player *> _players = me->GetPlayersInRange(50, true);
                    for (std::list<Player *>::const_iterator itr = _players.begin(); itr != _players.end(); itr++)
                        if (Player *player = *itr)
                        {
                            player->KilledMonsterCredit(me->GetEntry(), 0);
                            player->AddAura(100575, player);
                        }
                    me->NearTeleportTo(1163.1f, 279.91f, 17.0f, 2.65f);
                    isEventInprogress = false;
                    waveCount = 0;
                    summons.DespawnAll();
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        uint8 waveCount;
        SummonList summons;
        bool isEventInprogress;
    };
};

class npc_molten_front_marin_bladewing : public CreatureScript
{
public:
    npc_molten_front_marin_bladewing() : CreatureScript("npc_molten_front_marin_bladewing") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_front_marin_bladewingAI(creature);
    }

    bool OnQuestAccept(Player *player, Creature *creature, Quest const *_Quest)
    {
        switch (_Quest->GetQuestId())
        {
        case 29192:
            player->CastSpell(player, 97561, true);
            break;
        }
        return true;
    }

    struct npc_molten_front_marin_bladewingAI : public ScriptedAI
    {
        npc_molten_front_marin_bladewingAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };
};

class npc_molten_front_shadow_guard : public CreatureScript
{
public:
    npc_molten_front_shadow_guard() : CreatureScript("npc_molten_front_shadow_guard") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_front_shadow_guardAI(creature);
    }

    struct npc_molten_front_shadow_guardAI : public ScriptedAI
    {
        npc_molten_front_shadow_guardAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void AttackStart(Unit *enemy)
        {
            if (Creature *unit = enemy->ToCreature())
                if (unit->GetEntry() == 52661)
                    CreatureAI::AttackStart(enemy);
        }

        void IsSummonedBy(Unit *summoner)
        {
            _plGUID = summoner->GetGUID();
            events.ScheduleEvent(EVENT_OUTRO, 1000);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    if (Creature *druid = me->FindNearestCreature(52661, 10))
                        if (druid->HealthBelowPct(50))
                        {
                            me->CastSpell(druid, 97586, true);
                            me->CastSpell(druid, 97565, true);
                            if (Player *player = Unit::GetPlayer(*me, _plGUID))
                                player->KilledMonsterCredit(52815, 0);
                            me->DespawnOrUnsummon(10000);
                            return;
                        }
                    events.ScheduleEvent(EVENT_OUTRO, 1000);
                    break;
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        uint64 _plGUID;
    };
};

class spell_molten_front_rune_activation : public SpellScriptLoader
{
public:
    spell_molten_front_rune_activation() : SpellScriptLoader("spell_molten_front_rune_activation") {}

    class spell_molten_front_rune_activation_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_molten_front_rune_activation_AuraScript);

        void UpdateAmount(AuraEffect const * /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit *player = GetCaster())
                if (!player->HasAura(97741) &&
                    !player->HasAura(97742) &&
                    !player->HasAura(97743) &&
                    !player->HasAura(97744) &&
                    !player->HasAura(97745) &&
                    !player->HasAura(97746) &&
                    !player->HasAura(97747) &&
                    !player->HasAura(97748))
                    player->CastSpell(player, 97773, true);
        }

        void Register()
        {
            AfterEffectApply += AuraEffectApplyFn(spell_molten_front_rune_activation_AuraScript::UpdateAmount, EFFECT_1, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const override
    {
        return new spell_molten_front_rune_activation_AuraScript();
    }
};

// 52985 termal rock
class npc_molten_thermal_jump : public CreatureScript
{
public:
    npc_molten_thermal_jump() : CreatureScript("npc_molten_thermal_jump") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_thermal_jumpAI(creature);
    }

    struct npc_molten_thermal_jumpAI : public ScriptedAI
    {
        npc_molten_thermal_jumpAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            me->CastSpell(me, 96463, true);
            me->CastSpell(me, 96529, true);
        }

        void MoveInLineOfSight(Unit *unit)
        {
            if (unit->GetTypeId() != TYPEID_PLAYER)
                return;

            if (me->GetDistance2d(unit->GetPositionX(), unit->GetPositionY()) <= 3.0f)
                unit->CastSpell(unit, 96441, true);
        }
    };
};

enum omnSpells
{
    SPELL_OMN_FLIGHT_FORM = 100202,
};

enum omnNpcs
{
    NPC_THISALEE_EVENT_OMN = 53984,
    NPC_OMN_EVENT = 53982,
    NPC_DRUID_TALON = 53983,
};

class npc_molten_omnuron_pre_event : public CreatureScript
{
public:
    npc_molten_omnuron_pre_event() : CreatureScript("npc_molten_omnuron_pre_event") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_omnuron_pre_eventAI(creature);
    }

    bool OnQuestReward(Player *player, Creature *creature, Quest const *_Quest, uint32)
    {
        switch (_Quest->GetQuestId())
        {
        case QUEST_DRUID_OF_TALON:
            creature->AI()->SetGUID(player->GetGUID());
            creature->AI()->DoAction(ACTION_START_EVENT);
            break;
        }
        return true;
    }

    struct npc_molten_omnuron_pre_eventAI : public ScriptedAI
    {
        npc_molten_omnuron_pre_eventAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
        }

        void SetGUID(uint64 guid, int32 /*id*/) override
        {
            _plGUID = guid;
        }

        void DoAction(int32 const param) override
        {
            switch (param)
            {
            case ACTION_START_EVENT:
            {
                me->CastSpell(me, 96639, true);
                Position pos;
                me->GetPosition(&pos);
                me->SummonCreature(NPC_OMN_EVENT, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                me->SummonCreature(NPC_THISALEE_EVENT_OMN, 4911.69f, -2756.63f, 1452.3f, 4.55f, TEMPSUMMON_TIMED_DESPAWN, 20000);
                events.ScheduleEvent(EVENT_OUTRO, 5000);
                break;
            }
            }
        }

        void JustSummoned(Creature *summon) override
        {
            switch (summon->GetEntry())
            {
            case NPC_THISALEE_EVENT_OMN:
                thisGUID = summon->GetGUID();
                break;
            case NPC_OMN_EVENT:
                omnGUID = summon->GetGUID();
                summon->AI()->Talk(0, _plGUID);
                break;
            case NPC_DRUID_TALON:
                druidGUID = summon->GetGUID();
                break;
            }
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    if (Creature *thisalee = Unit::GetCreature(*me, thisGUID))
                    {
                        thisalee->AI()->Talk(0, _plGUID);
                        thisalee->GetMotionMaster()->MovePoint(0, 4902.31f, -2777.37f, 1460.58f);
                    }
                    events.ScheduleEvent(EVENT_OUTRO_1, 5000);
                    break;
                }
                case EVENT_OUTRO_1:
                {
                    if (Creature *omn = Unit::GetCreature(*me, omnGUID))
                        omn->AI()->Talk(1, _plGUID);
                    me->SummonCreature(NPC_DRUID_TALON, 4899.27f, -2781.12f, 1460.61f, 1.27f, TEMPSUMMON_TIMED_DESPAWN, 10000);
                    events.ScheduleEvent(EVENT_OUTRO_2, 5000);
                    break;
                }
                case EVENT_OUTRO_2:
                {
                    if (Creature *omn = Unit::GetCreature(*me, omnGUID))
                    {
                        omn->CastSpell(omn, SPELL_OMN_FLIGHT_FORM, true);
                        omn->SetCanFly(true);
                        omn->SetDisableGravity(true);
                        omn->GetMotionMaster()->MovePoint(0, 4922.64f, -2713.60f, 1443.22f);
                    }
                    if (Creature *thisalee = Unit::GetCreature(*me, thisGUID))
                    {
                        thisalee->CastSpell(thisalee, SPELL_OMN_FLIGHT_FORM, true);
                        thisalee->SetCanFly(true);
                        thisalee->SetDisableGravity(true);
                        thisalee->AI()->Talk(1, _plGUID);
                        thisalee->GetMotionMaster()->MovePoint(0, 4922.64f, -2713.60f, 1443.22f);
                    }
                    if (Creature *druid = Unit::GetCreature(*me, druidGUID))
                    {
                        druid->CastSpell(druid, SPELL_OMN_FLIGHT_FORM, true);
                        druid->SetCanFly(true);
                        druid->SetDisableGravity(true);
                        druid->GetMotionMaster()->MovePoint(0, 4922.64f, -2713.60f, 1443.22f);
                    }
                    break;
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        uint64 _plGUID, thisGUID, omnGUID, druidGUID;
    };
};

static const Position eventPos[5] =
    {
        {1087.15f, 457.61f, 45.0f, 0.77f},
        {1107.91f, 458.98f, 50.17f, 0.14f},
        {1121.97f, 476.87f, 57.11f, 0.91f},
        {1121.97f, 476.87f, 57.2f, 0.92f},
        {1148.11f, 511.31f, 57.2f, 0.92f},
};

class npc_molten_nordrala_event : public CreatureScript
{
public:
    npc_molten_nordrala_event() : CreatureScript("npc_molten_nordrala_event") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_nordrala_eventAI(creature);
    }

    struct npc_molten_nordrala_eventAI : public ScriptedAI
    {
        npc_molten_nordrala_eventAI(Creature *creature) : ScriptedAI(creature), summons(me)
        {
        }

        void Reset() override
        {
            me->SetReactState(REACT_PASSIVE);
            isEventInprogress = false;
            waveCount = 0;
            point = 0;
            summons.DespawnAll();
            events.Reset();
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type != POINT_MOTION_TYPE)
                return;
            switch (id)
            {
            case POINT_OUTRO:
                events.ScheduleEvent(EVENT_MOVE_EVENT, 1000);
                break;
            }
        }

        void JustSummoned(Creature *summon) override
        {
            switch (summon->GetEntry())
            {
            case 52683:
            {
                _bossGUID = summon->GetGUID();
                me->SummonCreature(53329, 1147.96f, 535.84f, 55.28f, 5.95f);
                me->SummonCreature(53329, 1154.60f, 547.28f, 54.61f, 5.42f);
                me->SummonCreature(53329, 1171.59f, 552.21f, 54.41f, 5.51f);
                me->SummonCreature(53329, 1185.61f, 517.70f, 56.90f, 2.37f);
                me->SummonCreature(53329, 1174.47f, 513.24f, 55.23f, 1.94f);
                break;
            }
            case 53329:
            {
                if (Creature *boss = Unit::GetCreature(*me, _bossGUID))
                    summon->AI()->AttackStart(boss);
                break;
            }
            default:
                break;
            }
            summons.Summon(summon);
        }

        void SummonedCreatureDies(Creature *summon, Unit * /*killer*/) override
        {
            if (summon->GetEntry() == 52683)
            {
                std::list<Player *> _players = me->GetPlayersInRange(50, true);
                for (std::list<Player *>::const_iterator itr = _players.begin(); itr != _players.end(); itr++)
                    if (Player *player = *itr)
                        player->KilledMonsterCredit(53218, 0);
                events.ScheduleEvent(EVENT_OUTRO_3, 5000);
            }
        }

        void MoveInLineOfSight(Unit *unit)
        {
            if (isEventInprogress || unit->GetTypeId() != TYPEID_PLAYER)
                return;

            if (Player *player = unit->ToPlayer())
                if (player->GetQuestStatus(29206) != QUEST_STATUS_INCOMPLETE)
                    return;

            if (me->GetDistance2d(unit->GetPositionX(), unit->GetPositionY()) <= 10.0f)
            {
                isEventInprogress = true;
                events.ScheduleEvent(EVENT_OUTRO, 1000);
                events.ScheduleEvent(EVENT_OUTRO_3, 420000); // safe reset
            }
        }

        void DesactivateFire(uint32 entry, uint32 delay = 10000)
        {
            std::list<Creature *> eventCr;
            me->GetCreatureListWithEntryInGrid(eventCr, entry, 8.0f);
            for (std::list<Creature *>::iterator itr = eventCr.begin(); itr != eventCr.end(); ++itr)
                if (Creature *c = (*itr))
                {
                    if (c->HasAura(96824))
                    {
                        c->RemoveAura(96824);
                        c->CastWithDelay(delay, c, 96824, true);
                    }
                    if (c->HasAura(100610))
                    {
                        c->RemoveAura(100610);
                        c->CastWithDelay(delay, c, 100610, true);
                    }
                    if (c->HasAura(97921))
                    {
                        c->RemoveAura(97921);
                        c->CastWithDelay(delay, c, 97921, true);
                    }
                    if (c->HasAura(100608))
                    {
                        c->RemoveAura(100608);
                        c->CastWithDelay(delay, c, 100608, true);
                    }
                }
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_DESACTIVATE_FIRE:
                    DesactivateFire(54039);
                    DesactivateFire(53213);
                    DesactivateFire(54040);
                    DesactivateFire(54038);
                    DesactivateFire(52948);
                    DesactivateFire(54037);
                    DesactivateFire(54036);
                    DesactivateFire(53212);
                    events.ScheduleEvent(EVENT_DESACTIVATE_FIRE, 1000);
                    break;
                case EVENT_OUTRO:
                {
                    me->CastSpell(me, 98566, true);
                    me->SetPhaseMask(16 + 32, true);
                    me->ClearUnitState(UNIT_STATE_CASTING);
                    events.ScheduleEvent(EVENT_SUMMON_IGNITER, 10000);
                    events.ScheduleEvent(EVENT_DESACTIVATE_FIRE, 1000);
                    events.ScheduleEvent(EVENT_MOVE_EVENT, 0);
                    break;
                }
                case EVENT_MOVE_EVENT:
                {
                    me->SetSpeed(MOVE_WALK, 0.3f);
                    me->SetSpeed(MOVE_RUN, 0.3f);
                    if (point < 5)
                        me->GetMotionMaster()->MovePoint(POINT_OUTRO, eventPos[point]);
                    else
                        me->SummonCreature(52683, 1168.17f, 532.02f, 54.54f, 3.86f);
                    point++;
                }
                case EVENT_SUMMON_IGNITER:
                {
                    waveCount++;
                    Position pos;
                    Position mpos;
                    me->GetPosition(&mpos);
                    me->GetRandomPoint(mpos, 12.0f, pos);
                    me->SummonCreature(53328, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                    if (waveCount < 5)
                        events.ScheduleEvent(EVENT_SUMMON_IGNITER, 5000);
                    break;
                }
                case EVENT_OUTRO_3:
                {
                    events.Reset();
                    me->RemoveAura(98566);
                    me->SetPhaseMask(16, true);
                    me->NearTeleportTo(1065.36f, 420.26f, 41.53f, 0.75f);
                    isEventInprogress = false;
                    waveCount = 0;
                    point = 0;
                    summons.DespawnAll();
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        uint8 waveCount, point;
        SummonList summons;
        bool isEventInprogress;
        uint64 _bossGUID;
    };
};

class spell_wind_vs_fire : public SpellScriptLoader
{
public:
    spell_wind_vs_fire() : SpellScriptLoader("spell_wind_vs_fire") {}

    class spell_wind_vs_fire_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_wind_vs_fire_SpellScript);

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit *c = GetHitUnit())
            {
                if (c->HasAura(96824))
                {
                    c->RemoveAura(96824);
                    c->CastWithDelay(5000, c, 96824, true);
                }
                if (c->HasAura(100610))
                {
                    c->RemoveAura(100610);
                    c->CastWithDelay(5000, c, 100610, true);
                }
                if (c->HasAura(97921))
                {
                    c->RemoveAura(97921);
                    c->CastWithDelay(5000, c, 97921, true);
                }
                if (c->HasAura(100608))
                {
                    c->RemoveAura(100608);
                    c->CastWithDelay(5000, c, 100608, true);
                }
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_wind_vs_fire_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_wind_vs_fire_SpellScript();
    }
};

class npc_molten_front_young_firewak : public CreatureScript
{
public:
    npc_molten_front_young_firewak() : CreatureScript("npc_molten_front_young_firewak") {}

    struct npc_molten_front_young_firewakAI : public PassiveAI
    {
        npc_molten_front_young_firewakAI(Creature *creature) : PassiveAI(creature) {}

        void OnSpellClick(Unit *player, bool &result)
        {
            if (!result)
                return;

            me->DespawnOrUnsummon();
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_molten_front_young_firewakAI(creature);
    }
};

class npc_jump_out_of_the_depth : public CreatureScript
{
public:
    npc_jump_out_of_the_depth() : CreatureScript("npc_jump_out_of_the_depth") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_jump_out_of_the_depthAI(creature);
    }

    struct npc_jump_out_of_the_depthAI : public ScriptedAI
    {
        npc_jump_out_of_the_depthAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            events.Reset();
            events.ScheduleEvent(EVENT_OUTRO, 1000);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    if (Player *player = me->FindNearestPlayer(10.0f))
                        if (player->HasAura(98833))
                            player->GetMotionMaster()->MoveJump(1164.8f, 558.47f, 55.15f, 45.0f, 45.0f);
                    events.ScheduleEvent(EVENT_OUTRO, 1000);
                    break;
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };
};

class npc_giant_magma_worm_marker : public CreatureScript
{
public:
    npc_giant_magma_worm_marker() : CreatureScript("npc_giant_magma_worm_marker") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_giant_magma_worm_markerAI(creature);
    }

    struct npc_giant_magma_worm_markerAI : public ScriptedAI
    {
        npc_giant_magma_worm_markerAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            me->SetVisible(false);
            events.Reset();
            events.ScheduleEvent(EVENT_OUTRO, 1000);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    if (GameObject *go = me->FindNearestGameObject(208546, 1.5f))
                    {
                        me->CastWithDelay(5000, me, 98294, true);
                        events.ScheduleEvent(EVENT_OUTRO, 20000);
                    }
                    else
                        events.ScheduleEvent(EVENT_OUTRO, 1000);
                    break;
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };
};

class spell_molten_front_magma_flow : public SpellScriptLoader
{
public:
    spell_molten_front_magma_flow() : SpellScriptLoader("spell_molten_front_magma_flow") {}

    class spell_molten_front_magma_flow_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_molten_front_magma_flow_AuraScript);

        bool Validate(SpellInfo const * /*spellInfo*/)
        {
            return true;
        }

        void HandleEffectPeriodic(AuraEffect const *aurEff)
        {
            if (Unit *me = GetUnitOwner())
            {
                float orient = me->GetOrientation() + M_PI / aurEff->GetTickNumber();
                float x, y;
                me->GetNearPoint2D(x, y, 10.0f, orient);
                me->CastSpell(x, y, me->GetPositionZ(), 97551, true);
            }
        }

    private:
        float orient;

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_molten_front_magma_flow_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript *GetAuraScript() const override
    {
        return new spell_molten_front_magma_flow_AuraScript();
    }
};

enum leyaraEndEvent
{
    NPC_HAMUUL_LEYARA_EVENT = 53913,
    NPC_MALFURION_LEYARA_EVENT = 53912,
    NPC_LEYARA_EVENT = 53366,
};

class npc_leyaraa_into_the_depth : public CreatureScript
{
public:
    npc_leyaraa_into_the_depth() : CreatureScript("npc_leyaraa_into_the_depth") {}

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_leyaraa_into_the_depthAI(creature);
    }

    struct npc_leyaraa_into_the_depthAI : public ScriptedAI
    {
        npc_leyaraa_into_the_depthAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset() override
        {
            step = 0;
            isEventInprogress = false;
            events.Reset();
        }

        void JustSummoned(Creature *summon) override
        {
            switch (summon->GetEntry())
            {
            case NPC_HAMUUL_LEYARA_EVENT:
                hamuulGUID = summon->GetGUID();
                summon->AI()->AttackStart(me);
                break;
            case NPC_MALFURION_LEYARA_EVENT:
                malfurionGUID = summon->GetGUID();
                summon->AI()->AttackStart(me);
                break;
            }
        }

        void MoveInLineOfSight(Unit *unit)
        {
            if (isEventInprogress || unit->GetTypeId() != TYPEID_PLAYER)
                return;

            if (Player *player = unit->ToPlayer())
                if (player->GetQuestStatus(29203) != QUEST_STATUS_INCOMPLETE)
                    return;

            if (me->GetDistance2d(unit->GetPositionX(), unit->GetPositionY()) <= 10.0f)
            {
                isEventInprogress = true;
                events.ScheduleEvent(EVENT_OUTRO, 1000);
            }
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_OUTRO:
                {
                    uint32 delay = 1000;
                    switch (step)
                    {
                    case 0:
                        Talk(0);
                        delay = 7000;
                        break;
                    case 1:
                        Talk(1);
                        delay = 10000;
                        break;
                    case 2:
                        Talk(2);
                        delay = 9000;
                        break;
                    case 3:
                        Talk(3);
                        delay = 6000;
                        break;
                    case 4:
                        Talk(4);
                        delay = 11000;
                        break;
                    case 5:
                        Talk(5);
                        delay = 22000;
                        break;
                    case 6:
                    {
                        if (Creature *malfurion = me->SummonCreature(NPC_MALFURION_LEYARA_EVENT, 1231.25f, 148.52f, 10.71f, 1.61f, TEMPSUMMON_TIMED_DESPAWN, 300000))
                            malfurion->AI()->Talk(0);
                        delay = 9000;
                        break;
                    }
                    case 7:
                        Talk(6);
                        delay = 20000;
                        break;
                    case 8:
                        Talk(7);
                        delay = 11000;
                        break;
                    case 9:
                        Talk(8);
                        delay = 3000;
                        break;
                    case 10:
                        Talk(9);
                        delay = 8000;
                        break;
                    case 11:
                        Talk(10);
                        delay = 9000;
                        break;
                    case 12:
                    {
                        if (Creature *malfurion = Unit::GetCreature(*me, malfurionGUID))
                            malfurion->AI()->Talk(1);
                        delay = 11000;
                        break;
                    }
                    case 13:
                    {
                        if (Creature *hamuul = me->SummonCreature(NPC_HAMUUL_LEYARA_EVENT, 1230.1f, 176.82f, 10.46f, 4.87f, TEMPSUMMON_TIMED_DESPAWN, 300000))
                            hamuul->AI()->Talk(0);
                        delay = 7000;
                        break;
                    }
                    case 14:
                        Talk(11);
                        delay = 51000;
                        break;
                    case 15:
                    {
                        if (Creature *hamuul = Unit::GetCreature(*me, hamuulGUID))
                        {
                            hamuul->AI()->Talk(1);
                            me->SetVisible(false);
                            std::list<Player *> _players = me->GetPlayersInRange(50, true);
                            for (std::list<Player *>::const_iterator itr = _players.begin(); itr != _players.end(); itr++)
                                if (Player *player = *itr)
                                    player->KilledMonsterCredit(me->GetEntry(), 0);
                        }
                        delay = 21000;
                        break;
                    }
                    case 16:
                    {
                        if (Creature *hamuul = Unit::GetCreature(*me, hamuulGUID))
                            hamuul->AI()->Talk(2);
                        delay = 9000;
                        break;
                    }
                    case 17:
                    {
                        if (Creature *malfurion = Unit::GetCreature(*me, malfurionGUID))
                            malfurion->AI()->Talk(2);
                        delay = 8000;
                        break;
                    }
                    default:
                    {
                        me->SetVisible(true);
                        step = 0;
                        if (Creature *hamuul = Unit::GetCreature(*me, hamuulGUID))
                        {
                            hamuul->DespawnOrUnsummon(5000);
                            hamuul->AI()->Talk(3);
                        }
                        if (Creature *malfurion = Unit::GetCreature(*me, malfurionGUID))
                            malfurion->DespawnOrUnsummon(5000);
                        return;
                    }
                    }
                    step++;
                    events.ScheduleEvent(EVENT_OUTRO, delay);
                    break;
                }
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
        uint8 step;
        uint64 hamuulGUID, malfurionGUID;
        bool isEventInprogress;
    };
};

/*######
# npc_little_lasher - 53013
######*/

class npc_little_lasher : public CreatureScript
{
public:
    npc_little_lasher() : CreatureScript("npc_little_lasher") {}

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_little_lasherAI(pCreature);
    }

    bool OnGossipHello(Player *pPlayer, Creature *pCreature)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        pPlayer->CLOSE_GOSSIP_MENU();

        if (pPlayer->GetQuestStatus(29254) == QUEST_STATUS_INCOMPLETE)
        {
            pPlayer->KilledMonsterCredit(53079);
            Creature *avrilla = GetClosestCreatureWithEntry(pCreature, 52489, 200.0f);
            if (avrilla)
                pCreature->GetMotionMaster()->MovePoint(0, avrilla->GetPositionX(), avrilla->GetPositionY(), avrilla->GetPositionZ());
        }

        return true;
    }

    struct npc_little_lasherAI : public ScriptedAI
    {
        npc_little_lasherAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        void Reset() override
        {
            // me->SetCanFly(true);
            // me->SetDisableGravity(true);
            // me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
        }

        void EnterCombat(Unit * /*who*/) override
        {
            // events.ScheduleEvent(EVENT_ONE, 100);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ONE:
                    break;
                }
            }
        }
    };
};

/*######
# npc_currency_required_quest_taker - 52490(29181) - 52493(29214) - 52669(29279) - 52669(29281) - 52906(29283)
######*/

class npc_currency_required_quest_taker : public CreatureScript
{
public:
    npc_currency_required_quest_taker() : CreatureScript("npc_currency_required_quest_taker") {}

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_currency_required_quest_takerAI(pCreature);
    }

    bool OnGossipHello(Player *pPlayer, Creature *pCreature)
    {
        if (pCreature->GetEntry() == 52490 && pPlayer->GetQuestStatus(29181) == QUEST_STATUS_COMPLETE)
        {
            if (pPlayer->GetCurrency(416, true) >= 150)
                return false;

            return true;
        }
        else if (pCreature->GetEntry() == 52493 && pPlayer->GetQuestStatus(29214) == QUEST_STATUS_COMPLETE)
        {
            if (pPlayer->GetCurrency(416, true) >= 150)
                return false;

            return true;
        }

        return false;
    }

    struct npc_currency_required_quest_takerAI : public ScriptedAI
    {
        npc_currency_required_quest_takerAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        void Reset() override
        {
            // me->SetCanFly(true);
            // me->SetDisableGravity(true);
            // me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
            events.Reset();
        }

        void EnterCombat(Unit * /*who*/) override
        {
            // events.ScheduleEvent(EVENT_ONE, 100);
        }

        void UpdateAI(const uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ONE:
                    // if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    // DoCast(pTarget, 43509, true);
                    // events.ScheduleEvent(EVENT_ONE, 8000);
                    return;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

/*######
# npc_firehawk - 53245,53249
######*/

class npc_firehawk : public CreatureScript
{
public:
    npc_firehawk() : CreatureScript("npc_firehawk") {}

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_firehawkAI(pCreature);
    }

    struct npc_firehawkAI : public ScriptedAI
    {
        npc_firehawkAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        void Reset() override
        {
            me->SetCanFly(true);
            me->SetDisableGravity(true);
            me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
            events.Reset();
        }

        void EnterCombat(Unit * /*who*/) override
        {
            events.ScheduleEvent(EVENT_ONE, 4000);
        }

        void UpdateAI(const uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ONE:
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->CastSpell(pTarget, 43509, true);
                    events.ScheduleEvent(EVENT_ONE, 8000);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

/*######
# npc_cinderweb_cocoon - 52751,52783,52784,52989,52991,52992
######*/

class npc_cinderweb_cocoon : public CreatureScript
{
public:
    npc_cinderweb_cocoon() : CreatureScript("npc_cinderweb_cocoon") {}

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_cinderweb_cocoonAI(pCreature);
    }

    bool OnGossipHello(Player *pPlayer, Creature *pCreature)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        pPlayer->CLOSE_GOSSIP_MENU();

        if (pPlayer->GetQuestStatus(29189) == QUEST_STATUS_INCOMPLETE)
        {
            pPlayer->KilledMonsterCredit(52751);
            pCreature->DespawnOrUnsummon();
            return false;
        }

        return true;
    }

    struct npc_cinderweb_cocoonAI : public ScriptedAI
    {
        npc_cinderweb_cocoonAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        void Reset() override
        {
            // me->SetCanFly(true);
            // me->SetDisableGravity(true);
            // me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
        }

        void EnterCombat(Unit * /*who*/) override
        {
            // events.ScheduleEvent(EVENT_ONE, 100);
        }

        void UpdateAI(const uint32 diff) override
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ONE:
                    break;
                }
            }
        }
    };
};

/*######
# npc_druid_of_the_flame_molten_front - 52871,52872
######*/

class npc_druid_of_the_flame_molten_front : public CreatureScript
{
public:
    npc_druid_of_the_flame_molten_front() : CreatureScript("npc_druid_of_the_flame_molten_front") {}

    CreatureAI *GetAI(Creature *pCreature) const
    {
        return new npc_druid_of_the_flame_molten_frontAI(pCreature);
    }

    struct npc_druid_of_the_flame_molten_frontAI : public ScriptedAI
    {
        npc_druid_of_the_flame_molten_frontAI(Creature *c) : ScriptedAI(c)
        {
            phase = false;
        }

        EventMap events;
        bool phase;

        void Reset() override
        {
            // me->SetCanFly(true);
            // me->SetDisableGravity(true);
            // me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
        }

        void EnterCombat(Unit * /*who*/) override
        {
            events.ScheduleEvent(EVENT_ONE, urand(2000, 5000));
            events.ScheduleEvent(EVENT_TWO, urand(7000, 10000));
        }

        void SpellHit(Unit *caster, const SpellInfo *spell) override
        {
            if (spell->Id == 98628)
            {
                Map::PlayerList const &PlayerList = me->GetMap()->GetPlayers();
                if (!PlayerList.isEmpty())
                    for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                        if (i->getSource()->isAlive())
                            if (me->GetExactDist(i->getSource()) < 50.0f)
                                if (i->getSource()->GetQuestStatus(29297) == QUEST_STATUS_INCOMPLETE)
                                    if (me->HasAura(98827))
                                    {
                                        i->getSource()->KilledMonsterCredit(53251);
                                        me->DespawnOrUnsummon();
                                    }
            }
        }

        void UpdateAI(const uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            events.Update(diff);

            if (HealthBelowPct(50) && !phase)
            {
                phase = true;
                Map::PlayerList const &PlayerList = me->GetMap()->GetPlayers();
                if (!PlayerList.isEmpty())
                    for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                        if (i->getSource()->isAlive())
                            if (me->GetExactDist(i->getSource()) < 50.0f)
                                if (i->getSource()->GetQuestStatus(29192) == QUEST_STATUS_INCOMPLETE)
                                    if (Creature *shadowwarden = me->SummonCreature(52804, me->GetPositionX(), me->GetPositionY() + 10, me->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 5000))
                                    {
                                        i->getSource()->KilledMonsterCredit(52815);
                                        shadowwarden->AI()->AttackStart(me);
                                        me->CastSpell(me, 97565, true);
                                    }
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_ONE:
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->CastSpell(pTarget, 17273, true);
                    events.ScheduleEvent(EVENT_ONE, urand(15000, 18000));
                    break;
                case EVENT_TWO:
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->CastSpell(pTarget, 13878, true);
                    events.ScheduleEvent(EVENT_TWO, urand(10000, 12000));
                    events.ScheduleEvent(EVENT_THREE, urand(5000, 10000));
                    break;
                case EVENT_THREE:
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        if (pTarget)
                            if (pTarget->ToPlayer()->GetQuestStatus(29297) == QUEST_STATUS_INCOMPLETE)
                            {
                                me->CastSpell(me, 98827, true);
                                me->SetCanFly(true);
                                me->SetDisableGravity(true);
                                me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_ALWAYS_STAND | UNIT_BYTE1_FLAG_HOVER);
                                me->SetDisplayId(38814);
                                me->GetMotionMaster()->MovePoint(0, pTarget->GetPositionX() + 10, pTarget->GetPositionY() + 10, pTarget->GetPositionZ() + 10);
                            }
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_molten_front()
{
    new npc_druid_of_the_flame_molten_front();
    new npc_cinderweb_cocoon();
    new npc_firehawk();
    new npc_currency_required_quest_taker();
    new npc_little_lasher();
    new npc_malfurion_intro_event();
    new at_molten_front_enter();
    new npc_hyjal_defender_hurted();
    new npc_molten_front_rayne();
    new npc_molten_front_feu_follet();
    new npc_molten_captain_saynna();
    new molten_front_playerscript();
    new npc_molten_captain_saynna_event();
    new npc_molten_front_marin_bladewing();
    new npc_molten_front_shadow_guard();
    new spell_molten_front_rune_activation();
    new at_molten_front_depth_enter();
    new npc_molten_thermal_jump();
    new npc_molten_omnuron_pre_event();
    new npc_molten_nordrala_event();
    new spell_wind_vs_fire();
    new npc_molten_front_young_firewak();
    new npc_jump_out_of_the_depth();
    new npc_giant_magma_worm_marker();
    new spell_molten_front_magma_flow();
    new npc_leyaraa_into_the_depth();
}
