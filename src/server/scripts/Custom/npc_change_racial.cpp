#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "Player.h"
#include <map>

/*
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
values
('3880002','0','0','0','0','0','25900','0','0','0','Tyrael','change racial','','0','1','1','0','0','35','35','1','1','1.14286','1','1.14286','3','0','4','5.175','0','16','0.75','2000','0','1','0','2048','8','0','0','0','0','0','2.2','3.825','11','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'','0','3','1','2.38095','0','1','1','0','0','0','0','0','0','0','121','1','0','0','0','npc_change_racial_traits','12340');
*/

class npc_change_racial_traits : public CreatureScript
{
    public:
        std::map<std::string, int> mapRacial;

        npc_change_racial_traits()
            : CreatureScript("npc_change_racial_traits")
        {
            /* orco */
            mapRacial["orc_1"] = 20574; //Especializacion en hachas
            mapRacial["orc_2"] = 20573; //Firmeza
            mapRacial["orc_3"] = 33697; //Furia sangrienta ????????????
            mapRacial["orc_3_1"] = 33702; //duplicado
            mapRacial["orc_3_2"] = 20572; //duplicado
            mapRacial["orc_4"] = 20575; //Ordenar
            mapRacial["orc_4_1"] = 20576; //Duplicado
            mapRacial["orc_4_2"] = 21563; //Duplicado
            mapRacial["orc_4_3"] = 54562; //Duplicado
            mapRacial["orc_4_4"] = 65222; //Duplicado
            /* elfo de sangre */
            mapRacial["blood_elf_1"] = 28877; //Afinidad Arcana
            mapRacial["blood_elf_2"] = 822; //Resistencia a lo Arcano
            mapRacial["blood_elf_3"] = 28730; //Torrente Arcano ????????
            mapRacial["blood_elf_3_1"] = 69179; //Duplicado
            mapRacial["blood_elf_3_2"] = 80483; //Duplicado
            mapRacial["blood_elf_3_3"] = 25046; //Duplicado
            mapRacial["blood_elf_3_4"] = 50613; //Duplicado
            /* goblin */
            mapRacial["goblin_1"] = 69042; //El tiempo es oro
            mapRacial["goblin_2"] = 69045; //Es cuestión de química
            mapRacial["goblin_3"] = 69046; //Hobgoblin de bolsillo
            mapRacial["goblin_4"] = 69044; //Los mejores precios del mercado
            mapRacial["goblin_5"] = 69070; //Salto con cohete
            mapRacial["goblin_6"] = 69041; //Tromba de cohetes
            /* no-muerto */
            mapRacial["undead_1"] = 20577; //Canibalismo
            mapRacial["undead_2"] = 20579; //Resistencia a las Sombras
            mapRacial["undead_3"] = 5227; //Toque de la tumba
            mapRacial["undead_4"] = 7744; //Voluntad de los Renegados
            /* tauren */
            mapRacial["tauren_1"] = 20552; //Cultivo
            mapRacial["tauren_2"] = 20549; //Pisotón de guerra
            mapRacial["tauren_3"] = 20551; //Resistencia a la Naturaleza
            mapRacial["tauren_4"] = 20550; //Robustez
            /* troll */
            mapRacial["troll_1"] = 26290; //Especializacion en arcos
            mapRacial["troll_2"] = 20558; //Especializacion en lanzamiento
            mapRacial["troll_3"] = 58943; //La marcha vudú
            mapRacial["troll_4"] = 20557; //Matanza de bestias
            mapRacial["troll_5"] = 26297; //Rabiar
            mapRacial["troll_6"] = 20555; //Regeneración
            /* draenei */
            mapRacial["draenei_1"] = 59547; //Ofrenda de los naaru ??????
            mapRacial["draenei_1_1"] = 59548; //duplicado
            mapRacial["draenei_1_2"] = 59545; //duplicado
            mapRacial["draenei_1_3"] = 59544; //duplicado
            mapRacial["draenei_1_4"] = 59543; //duplicado
            mapRacial["draenei_1_5"] = 59542; //duplicado
            mapRacial["draenei_1_6"] = 28880; //duplicado
            mapRacial["draenei_2"] = 28878; //Presencia heroica
            mapRacial["draenei_2_1"] = 6562; //duplicado
            mapRacial["draenei_4"] = 59540; //Resistencia a las Sombras
            mapRacial["draenei_4_1"] = 59541; //duplicado
            mapRacial["draenei_4_2"] = 59539; //duplicado
            mapRacial["draenei_4_3"] = 59538; //duplicado
            mapRacial["draenei_4_4"] = 59536; //duplicado
            mapRacial["draenei_4_5"] = 59535; //duplicado
            mapRacial["draenei_4_6"] = 59221; //duplicado
            mapRacial["draenei_5"] = 28875; //Tallar gemas
            /* huargen */
            mapRacial["huargen_1"] = 68978; //Despellejador
            mapRacial["huargen_2"] = 68976; //Desviación
            mapRacial["huargen_3"] = 68996; //Dos formas
            //mapRacial["huargen_4"] = 94293; //Forma alterada
            //mapRacial["huargen_5"] = 87840; //Galopada salvaje
            mapRacial["huargen_6"] = 68992; //Huida oscura
            mapRacial["huargen_7"] = 68975; //Saña
            /* gnomo */
            mapRacial["gnomo_1"] = 20589; //Artista del escape
			mapRacial["gnomo_2"] = 20593; //Especialización de ingeniería
            mapRacial["gnomo_3"] = 92680; //Especialización en hojas cortas
            mapRacial["gnomo_4"] = 20591; //Mente expansiva
            mapRacial["gnomo_5"] = 20592; //Resistencia a lo Arcano
            /* humano */
            mapRacial["human_1"] = 20599; //Diplomacia
            mapRacial["human_2"] = 20598; //El espíritu humano
            mapRacial["human_3"] = 20597; //Especialización en espadas
            mapRacial["human_4"] = 20864; //Especialización en mazas
			mapRacial["human_5"] = 59752; //Salvese quien pueda
            /* elfo de la noche */
			mapRacial["night_elf_1"] = 21009; //Elusión
            mapRacial["night_elf_2"] = 20585; //Espíritu de fuego fatuo
            mapRacial["night_elf_3"] = 58984; //Fusión de las sombras
            mapRacial["night_elf_4"] = 20582; //Presura
            mapRacial["night_elf_5"] = 20583; //Resistencia a la Naturaleza
            /* enano */
			mapRacial["dwarf_1"] = 20595; //Especialización en armas de fuego
			mapRacial["dwarf_2"] = 59224; //Especialización en mazas
            mapRacial["dwarf_3"] = 92682; //Expedicionario
            mapRacial["dwarf_4"] = 20594; //Forma de piedra
            mapRacial["dwarf_5"] = 20596; //Resistencia a la Escarcha
        }
        
        void cleanRacialTraits(Player* player)
        {
            std::map<std::string, int>::iterator it = mapRacial.begin();

            while (it != mapRacial.end())
            {
                if (player->HasSpell(it->second))
                    player->removeSpell(it->second);

                ++it;
            }
        }

        bool OnGossipHello(Player* player, Creature* creature)
        {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Orco", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Elfo de Sangre", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Goblin", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de No-muerto", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Tauren", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Troll", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Draenei", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Huargen", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Gnomo", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 9);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Humano", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 10);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Elfo de la Noche", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 11);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Raciales de Enano", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 12);
            player->SEND_GOSSIP_MENU(907, creature->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
        {
            int64 cost = 5000000;
            player->PlayerTalkClass->ClearMenus();
            if (player->getLevel() < 84)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Tienes que ser nivel 84 o superior!");
				player->CLOSE_GOSSIP_MENU();
                return false;
            }

            if (!player->HasEnoughMoney(cost))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Debes tener 500 de oro para cambiar tus raciales");
				player->CLOSE_GOSSIP_MENU();
                return false;
            }
            player->ModifyMoney(-cost, false);

            cleanRacialTraits(player);
            switch (action)
            {
            case GOSSIP_ACTION_INFO_DEF+1:
                player->learnSpell(mapRacial["orc_1"], false);
                player->learnSpell(mapRacial["orc_2"], false);
                player->learnSpell(mapRacial["orc_3"], false);
                player->learnSpell(mapRacial["orc_4"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+2:
                player->learnSpell(mapRacial["blood_elf_1"], false);
                player->learnSpell(mapRacial["blood_elf_2"], false);
                player->learnSpell(mapRacial["blood_elf_3"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+3:
                player->learnSpell(mapRacial["goblin_1"], false);
                player->learnSpell(mapRacial["goblin_2"], false);
                player->learnSpell(mapRacial["goblin_3"], false);
                player->learnSpell(mapRacial["goblin_4"], false);
                player->learnSpell(mapRacial["goblin_5"], false);
                player->learnSpell(mapRacial["goblin_6"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+4:
                player->learnSpell(mapRacial["undead_1"], false);
                player->learnSpell(mapRacial["undead_2"], false);
                player->learnSpell(mapRacial["undead_3"], false);
                player->learnSpell(mapRacial["undead_4"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+5:
                player->learnSpell(mapRacial["tauren_1"], false);
                player->learnSpell(mapRacial["tauren_2"], false);
                player->learnSpell(mapRacial["tauren_3"], false);
                player->learnSpell(mapRacial["tauren_4"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+6:
                player->learnSpell(mapRacial["troll_1"], false);
                player->learnSpell(mapRacial["troll_2"], false);
                player->learnSpell(mapRacial["troll_3"], false);
                player->learnSpell(mapRacial["troll_4"], false);
                player->learnSpell(mapRacial["troll_5"], false);
                player->learnSpell(mapRacial["troll_6"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+7:
                player->learnSpell(mapRacial["draenei_1"], false);
                player->learnSpell(mapRacial["draenei_2"], false);
                player->learnSpell(mapRacial["draenei_4"], false);
                player->learnSpell(mapRacial["draenei_5"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+8:
                player->learnSpell(mapRacial["huargen_1"], false);
                player->learnSpell(mapRacial["huargen_2"], false);
                player->learnSpell(mapRacial["huargen_3"], false);
                //player->learnSpell(mapRacial["huargen_4"], false);
                //player->learnSpell(mapRacial["huargen_5"], false);
                player->learnSpell(mapRacial["huargen_6"], false);
                player->learnSpell(mapRacial["huargen_7"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+9:
                player->learnSpell(mapRacial["gnomo_1"], false);
                player->learnSpell(mapRacial["gnomo_2"], false);
                player->learnSpell(mapRacial["gnomo_3"], false);
                player->learnSpell(mapRacial["gnomo_4"], false);
                player->learnSpell(mapRacial["gnomo_5"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+10:
                player->learnSpell(mapRacial["human_1"], false);
                player->learnSpell(mapRacial["human_2"], false);
                player->learnSpell(mapRacial["human_3"], false);
                player->learnSpell(mapRacial["human_4"], false);
                player->learnSpell(mapRacial["human_5"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+11:
                player->learnSpell(mapRacial["night_elf_1"], false);
                player->learnSpell(mapRacial["night_elf_2"], false);
                player->learnSpell(mapRacial["night_elf_3"], false);
                player->learnSpell(mapRacial["night_elf_4"], false);
                player->learnSpell(mapRacial["night_elf_5"], false);
                break;
            case GOSSIP_ACTION_INFO_DEF+12:
                player->learnSpell(mapRacial["dwarf_1"], false);
                player->learnSpell(mapRacial["dwarf_2"], false);
                player->learnSpell(mapRacial["dwarf_3"], false);
                player->learnSpell(mapRacial["dwarf_4"], false);
                player->learnSpell(mapRacial["dwarf_5"], false);
                break;            
            default:
                cleanRacialTraits(player);
                break;
            } 
            player->CLOSE_GOSSIP_MENU();

            return true;
        }
};


void AddSC_npc_change_racial_traits()
{
    new npc_change_racial_traits();
}
