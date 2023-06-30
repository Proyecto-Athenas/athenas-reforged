
 /* ScriptData
 SDCreator: frostI
 SDName: boss_maximus
 EndScriptData */

#include "ScriptPCH.h"

 //Spells
enum Spells
{
	//Phase one 
	SPELL_TWILIGHT_CHANNEL = 57797,			// señalar al PJ(estético)
	SPELL_TWILIGHT_PORTAL_VISUAL = 95716,	// portal oscuro(visual)
	SPELL_DMG_SHIELD = 25059,				// Escudo de espinas (daño de la naturaleza) 
	//Phase two  
	SPELL_AURA_OF_DREAD = 41142,			// aura de terror
	SPELL_SUNDER_ARMOR = 108043,			// Hender Armadura
	SPELL_UNHOLY_POWER = 69167,				// poder profrano: aumenta daño y reduce velocidad
	SPELL_BURNING_FISTS = 76086,			// Puños ardientes
	SPELL_FABULOUS_FLAMES = 95423,			// llamas portentosas(daño de las sombras)
	SPELL_SEARING_SHADOWS = 96913,			// sombras-abrasadoras(daño de las sombras)  
	SPELL_MASSIVE_ERUPTION = 93508,			// erupcion masiva (jefe de mundo GARR)
	//Phase three
	SPELL_SPIRITUAL_IMMUNITY = 95332,			// inmunidad espiritual
	SPELL_HIGH_SECURITY_SHADOW_PRISON = 79725,	// Prisión de las sombras de alta seguridad
	SPELL_FINGER_OF_DEATH = 31984,				// dedo de la muerte
	SPELL_HATEFUL_STRIKE = 41926,				// golpe de odio
	SPELL_BERSERK = 82395,						// Rábia
	SPELL_THUNDERCLAP = 84622,						// Atronar
	SPELL_SHADOW_NOVA = 62714,				// Nova de las sombras 62714  (daño de las sombras) 
};

//Creatures
enum Creatures
{
	NPC_ANCIENT_WISP = 100005,
	NPC_TWILIGHT_PORTAL = 100004,
};

//Creature sounds
#define SOUND_ONAGGRO       8595
#define SOUND_ONSLAY        8602
#define SOUND_ONDEATH       8594

//Emotes
#define EMOTE_ONAGGRO      "La asistencia llegará pronto, ¡mantente erguido!"
#define EMOTE_STRENGTH     "¡La fuerza del Demonio está aumentando!"  
#define EMOTE_FAIL         "El General del Crepúsculo comienza a lanzar Dedo de la Muerte, estamos perdidos ..."
#define EMOTE_WIN          "¡Lo hicimos! ¡La ayuda está a segundos de distancia!"

//Maximus AI:
class boss_maximus : public CreatureScript
{
public:
	boss_maximus() : CreatureScript("boss_maximus") { }

	CreatureAI* GetAI(Creature* creature) const
	{
		return new boss_maximusAI(creature);
	}

	struct boss_maximusAI : public ScriptedAI
	{
		boss_maximusAI(Creature* creature) : ScriptedAI(creature), summons(me) { }

		uint32 ChannelTwilight_Timer;

		uint32 AuraOfDread_Timer;
		uint32 SunderArmor_Timer;
		uint32 UnholyPower_Timer;
		uint32 BurningFists_Timer;
		uint32 FabulousFlames_Timer;
		uint32 FireballBarrage_Timer;
		uint32 MassiveEruption_Timer;

		uint32 SummonWisp_Timer;
		uint32 WispCount;

		uint32 Enrage_Timer;
		uint32 FingerOfDeath_Timer;

		bool IsChanneling;
		bool Enraged;
		bool Enraged_Auras = false;
		bool BelowTwentyPercent;
		bool HasProtected;

		SummonList summons;

		//When resetting:
		void Reset()
		{
			ChannelTwilight_Timer = 0;

			AuraOfDread_Timer = 2000;
			SunderArmor_Timer = 5000;
			MassiveEruption_Timer = 45000;
			UnholyPower_Timer = 9750;
			BurningFists_Timer = 10000;
			FabulousFlames_Timer = urand(20000, 30000);
			FireballBarrage_Timer = urand(20000, 30000);

			FingerOfDeath_Timer = 8000;
			Enrage_Timer = 300000; // 300000 = 5 min (Tiempo de Enrage)

			SummonWisp_Timer = 5000;
			WispCount = 0;

			IsChanneling = false;
			Enraged = false;
			Enraged_Auras = false;

			BelowTwentyPercent = false;
			HasProtected = false;
			summons.DespawnAll();

			me->RemoveAllAuras();
			me->SetFullHealth();
		}

		//When entering combat:
		void EnterCombat(Unit* who)
		{
			me->MonsterYell("¡Mis poderes se renuevan!", LANG_UNIVERSAL, me->GetGUID());
			DoPlaySoundToSet(me, SOUND_ONAGGRO);
			me->MonsterTextEmote(EMOTE_ONAGGRO, 0, true);

			me->InterruptSpell(CURRENT_CHANNELED_SPELL);
			me->RemoveAllAuras();
			DoCast(me, SPELL_DMG_SHIELD);
			DoZoneInCombat();
			summons.DoZoneInCombat();
		}

		//When summoned creature:
		void JustSummoned(Creature* summoned)
		{
			if (summoned->GetEntry() == NPC_ANCIENT_WISP)
				summoned->AI()->AttackStart(me);
			else
			{
				summoned->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			}
		}

		//When despawning summoned creature:
		void SummonedCreatureDespawn(Creature* summon)
		{
			summons.Despawn(summon);
		}

		//When reached home position:
		void JustReachedHome()
		{
			DoCast(me, SPELL_TWILIGHT_CHANNEL);
		}

		//When killed a unit:
		void KilledUnit(Unit* /*who*/)
		{
			me->MonsterYell("Un gusano menos", LANG_UNIVERSAL, me->GetGUID());
			DoPlaySoundToSet(me, SOUND_ONSLAY);
		}

		//When died:
		void JustDied(Unit* /*killer*/)
		{
			me->MonsterYell("Yo he.. fallado...", LANG_UNIVERSAL, me->GetGUID());
			DoPlaySoundToSet(me, SOUND_ONDEATH);
		}

		//Stay up to date
		void UpdateAI(const uint32 diff)
		{
			//Channel on Twilight Portal
			if (ChannelTwilight_Timer <= diff)
			{
				if (!IsChanneling)
				{
					DoCast(me, SPELL_TWILIGHT_CHANNEL);
					IsChanneling = true;
				}
			}
			else ChannelTwilight_Timer -= diff;

			if (!UpdateVictim())
				return;

			if (me->HealthBelowPct(20) && !BelowTwentyPercent && !Enraged)
				BelowTwentyPercent = true;

			//When enraged:
			if (Enrage_Timer < diff && !Enraged)
			{
				//me->GetMotionMaster()->Clear(false);
				//me->GetMotionMaster()->MoveIdle();
				me->RemoveAllAuras();
				me->MonsterTextEmote(EMOTE_FAIL, 0, true);
				Enraged = true;
			}
			else Enrage_Timer -= diff;

			if (Enraged)
			{
				// aplication of Auras
				if (Enraged_Auras == false) {
					DoCast(me, SPELL_BERSERK);
					DoCast(me, SPELL_DMG_SHIELD);
					Enraged_Auras = true;
				}										

				//Finger of Death timer
				if (FingerOfDeath_Timer <= diff)
				{
					if (Unit *Target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					{ 						
						DoCast(Target, SPELL_SHADOW_NOVA);
						DoCast(Target, SPELL_AURA_OF_DREAD);
						DoCast(Target, SPELL_THUNDERCLAP);
						DoCast(Target, SPELL_FINGER_OF_DEATH);
					}						
					FingerOfDeath_Timer = 4000;
				}
				else FingerOfDeath_Timer -= diff;
				return;
			}

			//When boss is below 20% health:
			if (BelowTwentyPercent && !Enraged)
			{
				if (!HasProtected)
				{
					me->RemoveAllAuras();
					DoCast(me, SPELL_HIGH_SECURITY_SHADOW_PRISON);
					DoCast(me, SPELL_SPIRITUAL_IMMUNITY);

					me->MonsterTextEmote(EMOTE_WIN, 0, true);
					HasProtected = true;
				}

				//Summon Wisp timer
				if (SummonWisp_Timer <= diff)
				{
					DoSpawnCreature(NPC_ANCIENT_WISP, float(rand() % 40), float(rand() % 40), 0, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 15000);
					SummonWisp_Timer = 2500;
					++WispCount;
				}
				else SummonWisp_Timer -= diff;

				if (WispCount >= 10)
					me->DealDamage(me, me->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
				return;
			}

			//Aura of Dread Timer
			if (AuraOfDread_Timer <= diff)
			{
				DoCast(me->getVictim(), SPELL_AURA_OF_DREAD);
				AuraOfDread_Timer = 1750;
			}
			else AuraOfDread_Timer -= diff;

			//Sunder Armor Timer
			if (SunderArmor_Timer <= diff)
			{
				DoCast(me->getVictim(), SPELL_SUNDER_ARMOR);
				SunderArmor_Timer = 15000;
			}
			else SunderArmor_Timer -= diff;

			//Burning Fists Timer
			if (BurningFists_Timer <= diff)
			{
				DoCast(me->getVictim(), SPELL_BURNING_FISTS);
				BurningFists_Timer = 60000;
			}
			else BurningFists_Timer -= diff;

			//Unholy Power Timer
			if (UnholyPower_Timer <= diff)
			{
				DoCast(me->getVictim(), SPELL_UNHOLY_POWER);
				UnholyPower_Timer = urand(20000, 30000);;
				me->MonsterTextEmote(EMOTE_STRENGTH, 0, true);
			}
			else UnholyPower_Timer -= diff;

			//Fabulous Flames Timer
			if (FabulousFlames_Timer <= diff)
			{
				if (Unit *Target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(Target, SPELL_FABULOUS_FLAMES);
				FabulousFlames_Timer = urand(20000, 30000);
			}
			else FabulousFlames_Timer -= diff;

			//Fireball Barrage Timer
			if (FireballBarrage_Timer <= diff)
			{
				if (Unit *Target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(Target, SPELL_SEARING_SHADOWS);
				FireballBarrage_Timer = 18000;
			}
			else FireballBarrage_Timer -= diff;

			//Sunder Armor Timer
			if (MassiveEruption_Timer <= diff)
			{
				DoCast(me->getVictim(), SPELL_MASSIVE_ERUPTION);
				MassiveEruption_Timer = 45000;
			}
			else MassiveEruption_Timer -= diff;
			DoMeleeAttackIfReady();
		}
	};
};

//Twilight Portal AI:
class npc_twilight_portal : public CreatureScript
{
public:
	npc_twilight_portal() : CreatureScript("npc_twilight_portal") { }

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_twilight_portalAI(creature);
	}

	struct npc_twilight_portalAI : public Scripted_NoMovementAI
	{
		npc_twilight_portalAI(Creature* creature) : Scripted_NoMovementAI(creature) { }

		//When resetting:
		void Reset()
		{
			DoCast(me, SPELL_TWILIGHT_PORTAL_VISUAL);

			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
		}

		//Stay up to date
		void UpdateAI(const uint32 diff)
		{
			if (!UpdateVictim())
				return;
		}
	};
};

//Ancient Wisp AI:
class npc_ancient_wisp : public CreatureScript
{
public:
	npc_ancient_wisp() : CreatureScript("npc_ancient_wisp") { }

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_ancient_wispAI(creature);
	}

	struct npc_ancient_wispAI : public ScriptedAI
	{
		npc_ancient_wispAI(Creature* creature) : ScriptedAI(creature)
		{
			MaximusGUID = 0;
		}

		uint64 MaximusGUID;
		uint32 Check_Timer;
		uint64 TargetGUID;

		uint32 ChangeTarget_Timer;

		//When resetting:
		void Reset()
		{
			Check_Timer = 1000;
			ChangeTarget_Timer = 7500;

			TargetGUID = 0;
		}

		//When moving in line of sight:
		void MoveInLineOfSight(Unit* who)
		{
			if (!TargetGUID && who->GetTypeId() == TYPEID_PLAYER)
				TargetGUID = who->GetGUID();
		}

		void EnterCombat(Unit* /*who*/)
		{
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
		}

		//When taking damage:
		void DamageTaken(Unit* /*done_by*/, uint32 &damage) { damage = 0; }

		//When reached waypoint:
		void WaypointReached(uint32 /*i*/) { }

		//Stay up to date
		void UpdateAI(const uint32 diff)
		{
			//Change target timer
			if (ChangeTarget_Timer <= diff)
			{
				if (Unit* temp = Unit::GetUnit(*me, TargetGUID))
				{
					me->GetMotionMaster()->MoveFollow(temp, 0.0f, 0.0f);
					TargetGUID = 0;
				}
				else
				{
					Position pos;
					me->GetRandomNearPosition(pos, 40);
					me->GetMotionMaster()->MovePoint(0, pos.m_positionX, pos.m_positionY, pos.m_positionZ);
				}

				ChangeTarget_Timer = 5000;
			}
			else ChangeTarget_Timer -= diff;
		}
	};
};

void AddSC_boss_maximus()
{
	new boss_maximus();
	new npc_ancient_wisp();
	new npc_twilight_portal();
}