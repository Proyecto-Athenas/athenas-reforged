-- ¡Véngame! quest
-- elimina el reporte de la mision
DELETE FROM `report_quest` WHERE id=13230;
-- agrega los datos de la creatura
DELETE FROM `creature_template` WHERE `entry`=31304;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(31304, 0, 0, 0, 0, 0, 3167, 3258, 24065, 24361, 'Dying Soldier', '', '', 10040, 80, 80, 2, 0, 1732, 1732, 3, 1, 1.14286, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 2800, NULL, NULL, 'SmartAI', 0, 3, 0, 0.01, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 31304, 0, 0, '', 12340);

-- smartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=31304 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(31304, 0, 0, 0, 62, 0, 100, 0, 10040, 0, 0, 0, 11, 58955, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Gossip Option 0 Selected - Cast \'Alliance Quest Aura\''),
(31304, 0, 1, 2, 62, 0, 100, 0, 10040, 3, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Gossip Option 3 Selected - Set Npc Flags Gossip & Questgiver'),
(31304, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Gossip Option 1 Selected - Close Gossip'),
(31304, 0, 3, 4, 62, 0, 100, 0, 10040, 1, 0, 0, 85, 59226, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Gossip Option 1 Selected - Invoker Cast \'Finish It\''),
(31304, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Spellhit \'Finish It\' - Close Gossip'),
(31304, 0, 6, 7, 8, 0, 100, 0, 59226, 0, 0, 0, 11, 3240, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Spellhit \'Finish It\' - Cast \'Bloody Explosion\''),
(31304, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 58955, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Gossip Option 3 Selected - Cast \'Alliance Quest Aura\''),
(31304, 0, 8, 9, 25, 0, 100, 0, 0, 0, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Reset - Set Npc Flag Gossip'),
(31304, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Reset - Set Reactstate Defensive'),
(31304, 0, 10, 0, 19, 0, 100, 0, 13232, 0, 0, 0, 81, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dying Soldier - On Quest \'Finish Me!\' Taken - Set Npc Flag Gossip');

-- causaba problemas de fases en corona de hielo
DELETE FROM `spell_area` WHERE AREA=4507;
