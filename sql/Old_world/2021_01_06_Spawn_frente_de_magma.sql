-- elimina las fases de frente de magma

DELETE FROM `phase_definitions` WHERE zoneId=5733;

DELETE FROM `creature_template_addon` WHERE `entry` IN (32520,44403,44775,52107,52122,52134,52135,52162,52341,52444,52467,52476,52477,52478,52488,52489,52490,52493,52494,52495,52500,52501,52502,52503,52504,52531,52547,52552,52633,52648,52660,52661,52663,52703,52751,52783,52822,52823,52824,52825,52834,52871,52872,52884,52885,52886,52887,52888,52889,52890,52892,52893,52921,52934,52948,52955,52965,52976,52981,52984,52985,52991,52999,53003,53013,53056,53080,53085,53093,53099,53143,53152,53190,53191,53192,53196,53212,53213,53214,53217,53228,53230,53233,53240,53243,53245,53249,53297,53353,53355,53446,53447,53448,53449,53659,53662,53753,53881,53882,53887,53911,54036,54037,54038,54039,54040,54322,54339,54343,54515,70041,70042);


-- 52825 creature_template y spawm

DELETE FROM `creature` WHERE `id`=52825;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(158542, 52825, 861, 5733, 5738, 1, 14, 0, 0, 980.068, 303.021, 45.7818, 0.0698132, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=52825;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52825, 0, 0, 0, 0, 0, 38052, 0, 0, 0, 'Theresa Barkskin', '', '', 12970, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52825, 0, 0, '', 15595);

-- 52547 creature_template, spawm y aura
DELETE FROM `creature_template` WHERE `entry`=52547;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52547, 0, 0, 0, 0, 0, 28718, 28725, 0, 0, 'Ancient Hyjal Protector', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1.11111, 1.14286, 1, 1, 3044, 3412, 0, 0, 4.9, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=52547;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(158856, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1046.24, 307.314, 41.7121, 2.21657, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158991, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1029.27, 427.455, 41.3423, 4.69494, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159014, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1027.42, 300.882, 41.393, 1.39626, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159024, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1010.45, 420.429, 41.9174, 6.03884, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159031, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1004.21, 417.059, 42.063, 5.44543, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159038, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1002.93, 334.969, 41.6068, 0.942478, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159043, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1002.78, 322.759, 41.4849, 6.14356, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159057, 52547, 861, 5733, 5738, 1, 2, 0, 0, 989.358, 402.894, 40.4558, 5.96903, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159060, 52547, 861, 5733, 5738, 1, 2, 0, 0, 976.632, 291.658, 45.8019, 0.907571, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159062, 52547, 1, 616, 5019, 1, 2, 28725, 0, 4432.62, -2049.11, 1208.83, 0.541052, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159064, 52547, 1, 616, 5019, 1, 2, 28718, 0, 4427.91, -2003.07, 1217.24, 6.00393, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159067, 52547, 1, 616, 5019, 1, 2, 28725, 0, 4418.24, -2022.01, 1215.44, 5.98648, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52547;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52547, 0, 0, 0, 0, 0, '89303');

-- 53413 creature_template y spawm
DELETE FROM `creature_template` WHERE `entry`=53413;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53413, 0, 0, 0, 0, 0, 37936, 37937, 38544, 38545, 'Hyjal Marksman', '', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1000.8, 1500.8, 0, 0, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 1, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53413;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(158774, 53413, 861, 5733, 5738, 1, 1, 0, 0, 1042.13, 389.246, 41.2731, 1.44862, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158549, 53413, 861, 5733, 5738, 1, 1, 0, 0, 1034.29, 328.521, 41.1337, 1.84301, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53381 creature_template, spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=53381;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53381, 0, 0, 0, 0, 0, 38305, 0, 0, 0, 'Obsidian Slaglord', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1.55556, 1.14286, 1, 1, 1000.8, 1500.8, 0, 0, 3, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=53381;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(135004, 53381, 861, 5733, 5738, 1, 1, 0, 0, 1027.85, 341.941, 41.5201, 3.78736, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(134996, 53381, 861, 5733, 5738, 1, 1, 0, 0, 1045.62, 368.088, 39.3973, 4.49513, 300, 0, 0, 542430, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53381 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53381, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 53370, 0, 0, 0, 0, 0, 18, 80, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template` WHERE `entry`=53370;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53370, 0, 0, 0, 0, 0, 16480, 21342, 0, 0, 'Foothold Kill Credit', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

-- ------------------


-- creature entry

DELETE FROM `creature_template` WHERE `entry`=52504;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52504, 0, 0, 0, 0, 0, 1070, 0, 0, 0, 'Charred Soldier', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 4, 0, 0, 52504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 69722, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

-- spawn
DELETE FROM `creature` WHERE `id`=52504;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(152503, 52504, 861, 5733, 5740, 1, 14, 0, 0, 1240.31, 371.568, 15.9922, 2.98451, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152512, 52504, 861, 5733, 5740, 1, 14, 0, 0, 1237.13, 380.257, 15.6183, 3.42085, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152546, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1226, 373.77, 16.1392, 3.49139, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152558, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1224.95, 349.066, 15.7481, 3.42085, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152560, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1224.17, 342.016, 15.5626, 3.42085, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152562, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1204.03, 399.718, 16.4085, 2.75453, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152567, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1202.46, 348.996, 16.6667, 3.12246, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152570, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1191.07, 425.04, 16.0779, 2.82743, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152575, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1186.03, 320.677, 16.4541, 2.82743, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152578, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1183.76, 335.145, 16.4398, 3.27676, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152778, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1178.61, 352.064, 17.0984, 0.626554, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152783, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1177.08, 410.578, 16.3813, 2.63332, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152795, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1174, 391.626, 16.2909, 3.19991, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(153327, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1173.68, 290.29, 16.4541, 2.3911, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(153594, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1157.7, 288.387, 16.5012, 3.3088, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(153857, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1156.08, 430.34, 16.8165, 2.82743, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154174, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1139.78, 308.746, 16.5218, 2.3911, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154517, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1132.12, 368.866, 16.7458, 3.10092, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154550, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1127.59, 427.504, 20.3406, 1.40143, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154556, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1126.92, 309.155, 16.5221, 3.2298, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154561, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1126.84, 376.036, 16.7458, 5.64674, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154565, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1125.54, 264.125, 16.8017, 1.72788, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154567, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1124.38, 393.231, 16.9841, 2.68267, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(154569, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1122.73, 271.93, 16.6099, 5.4779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(156183, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1101.03, 412.976, 18.0345, 2.95028, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(156186, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1099.69, 291.481, 16.8239, 2.60016, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(156552, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1099.69, 357.929, 23.5012, 3.05881, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(156723, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1095.9, 387.404, 24.2674, 5.48408, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(157829, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1087.4, 359.007, 27.2654, 3.05359, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158272, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1087.34, 383.997, 24.5245, 6.03282, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158282, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1076.08, 341.704, 26.9828, 2.30783, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158288, 52504, 861, 5733, 5738, 1, 14, 0, 0, 1058.34, 373.479, 35.6653, 2.8362, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158515, 52504, 861, 5733, 5738, 1, 14, 0, 0, 1049.11, 377.356, 40.6636, 2.85132, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(158518, 52504, 861, 5733, 5739, 1, 14, 0, 0, 1078.01, 317.475, 22.2618, 4.48605, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=52504 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52504, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 0, 20, 0, 0, 0, 0, 0, ''),
(52504, 0, 1, 0, 1, 0, 100, 0, 5000, 5000, 5000, 5000, 49, 0, 0, 0, 0, 0, 0, 11, 0, 20, 0, 0, 0, 0, 0, '');

-- creature_template 
DELETE FROM `creature_template` WHERE `entry`=52834;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52834, 0, 0, 0, 0, 0, 31212, 31213, 38546, 38547, 'Wounded Hyjal Defender', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 3, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 3.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52834, 0, 0, '', 15595);

-- condicion del spell ID 97670 para la creature Entry 52834
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=97670;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 97670, 0, 0, 31, 1, 3, 52834, 0, 0, 0, 0, '', '');

-- spawn 
DELETE FROM `creature` WHERE `id`=52834;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(144013, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1221.42, 375.149, 16.1642, 1.01229, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144018, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1187.29, 388.057, 17.0608, 0.855211, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144022, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1182.63, 310.642, 16.4541, 5.44543, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144026, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1181.96, 333.116, 16.5552, 5.51524, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144031, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1177.79, 360.033, 16.4818, 5.44543, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144035, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1175.22, 422.58, 16.0786, 0.331613, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144044, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1171.56, 382.576, 16.4541, 4.32842, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144364, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1169.51, 408.918, 16.4541, 5.34071, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144863, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1160.45, 394.224, 16.4561, 4.64258, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(145156, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1155.57, 311.719, 16.4541, 0.418879, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(145660, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1154.94, 292.497, 16.4592, 3.76991, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(145668, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1151.55, 343.502, 17.1345, 0.244346, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(145716, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1147.34, 416.922, 16.8436, 0.645772, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(146661, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1139.69, 402.08, 17.0027, 1.46608, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(148617, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1136.27, 297.286, 16.6868, 1.51844, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(148714, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1129.5, 422.465, 16.9568, 0.279253, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149432, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1128.78, 342.78, 16.7562, 5.63741, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149520, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1122.7, 330.517, 16.7562, 5.27496, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149522, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1118.41, 359.578, 18.3629, 5.77704, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149524, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1118.17, 388.266, 16.8242, 0.471239, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149526, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1113.15, 314.729, 16.5604, 4.69494, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149657, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1107.97, 416.573, 16.901, 5.79449, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149659, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1103.47, 394.254, 24.2451, 2.04204, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149674, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1101.52, 284.924, 16.8448, 0.331613, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149681, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1096.76, 373.913, 24.3711, 5.8294, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(150015, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1096.2, 394.827, 24.0708, 4.2164, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(150080, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1094.89, 335.859, 24.2578, 4.4855, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(150423, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1092.66, 321.231, 22.1422, 5.09636, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(150911, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1076.34, 372.097, 29.77, 0.244346, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(151819, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1077.44, 308.026, 19.2923, 4.45059, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(152187, 52834, 861, 5733, 5739, 1, 14, 0, 0, 1066.97, 301.696, 17.5493, 6.21337, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- creature spell cast
DELETE FROM `creature_template_addon` WHERE `entry`=52834;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52834, 0, 0, 0, 1, 0, '84063 52165');

-- textos para la creature
DELETE FROM `creature_text` WHERE `entry`=52834;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52834, 0, 0, 'I\'ll return immediately. Thank you, $c.', 12, 0, 100, 2, 0, 0, 51805, ''),
(52834, 0, 1, 'I was surely done for. I owe you greatly, $r.', 12, 0, 100, 2, 0, 0, 51809, ''),
(52834, 0, 2, 'Elune be praised! And you as well.', 12, 0, 100, 2, 0, 0, 51803, ''),
(52834, 0, 3, 'It was foolish of me to get caught away from the line. Thank you for the second chance.', 12, 0, 100, 2, 0, 0, 51804, ''),
(52834, 0, 4, 'I owe you a very special thank you. Find me sometime when this fight is over.', 12, 0, 100, 2, 0, 0, 51808, ''),
(52834, 0, 5, 'I\'m in your debt, $c.', 12, 0, 100, 2, 0, 0, 51802, '');

-- smartAI

DELETE FROM `smart_scripts` WHERE `entryorguid`=52834 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52834, 0, 0, 0, 8, 0, 100, 1, 97670, 0, 0, 0, 80, 5283400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


-- smartAI

DELETE FROM `smart_scripts` WHERE `entryorguid`=5283400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5283400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5283400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 85684, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5283400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 52834, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5283400, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5283400, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5283400, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- creature_template Entry 53411
DELETE FROM `creature_template` WHERE `entry`=53411;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53411, 0, 0, 0, 0, 0, 31212, 31213, 38546, 38547, 'Hyjal Defender', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1000.8, 1500.8, 0, 0, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 3.5, 1, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52500, 786382847, 0, '', 15595);

-- spawm

DELETE FROM `creature` WHERE `id`=53411;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143117, 53411, 861, 5733, 5739, 1, 1, 0, 0, 1074.12, 351.714, 29.5522, 5.72468, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143300, 53411, 861, 5733, 5738, 1, 1, 0, 0, 1039.92, 394.368, 41.6929, 1.11701, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143302, 53411, 861, 5733, 5738, 1, 1, 0, 0, 1031.89, 403.623, 41.606, 0.907571, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143996, 53411, 861, 5733, 5738, 1, 1, 0, 0, 1045.02, 348.936, 40.9729, 3.67616, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(144009, 53411, 861, 5733, 5738, 1, 1, 0, 0, 1022.58, 366.393, 41.0231, 0.756449, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0);

-- creature_template Entry 52500
DELETE FROM `creature_template` WHERE `entry`=52500;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52500, 0, 0, 0, 0, 0, 31212, 31213, 38546, 38547, 'Hyjal Defender', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1165, 1306, 0, 207, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 3.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52500, 786382847, 0, '', 15595);


-- spawm
DELETE FROM `creature` WHERE `id`=52500;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142376, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1209.05, 375.479, 15.9211, 0.68377, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142428, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1181.58, 354.214, 16.9693, 6.01245, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142467, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1128.03, 430.09, 22.6502, 0.279253, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142589, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1124.08, 411.109, 16.8211, 0.383972, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142810, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1120.98, 421.901, 21.935, 5.42447, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142883, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1120.3, 311.507, 16.6786, 0.772814, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142946, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1114.6, 385.961, 20.2077, 1.00481, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142948, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1112.71, 361.605, 19.4395, 4.2164, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142952, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1102.64, 283.28, 16.822, 5.37561, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142973, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1099.87, 339.819, 27.7884, 4.37489, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142976, 52500, 861, 5733, 5745, 1, 14, 0, 0, 1096.63, 408.653, 20.1027, 4.39556, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142992, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1096.58, 367.764, 24.6001, 6.10865, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143036, 52500, 861, 5733, 5739, 1, 14, 0, 0, 1094.59, 394.59, 24.104, 1.58823, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143038, 52500, 861, 5733, 5738, 1, 14, 0, 0, 1046.83, 359.294, 39.2569, 0.20944, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143042, 52500, 861, 5733, 5738, 1, 14, 0, 0, 1046.41, 378.38, 41.1214, 6.02139, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143045, 52500, 861, 5733, 5738, 1, 2, 0, 52500, 1012.37, 366.638, 41.0318, 0.0633175, 90, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143048, 52500, 861, 5733, 5738, 1, 2, 0, 52500, 1012.67, 373.701, 41.0234, 6.04544, 90, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143053, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1092.6, 322.54, 22.3802, 5.18694, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143061, 52500, 861, 5733, 5738, 1, 2, 0, 52500, 1065.64, 374.438, 31.9289, 0.203585, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143063, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1106.18, 393.867, 24.1658, 0.78814, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143076, 52500, 861, 5733, 5745, 1, 2, 0, 52500, 1096.01, 405.841, 21.1086, 0.341554, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143084, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1195.34, 359.835, 16.36, 4.49718, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143088, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1190.36, 354.925, 16.3909, 3.91913, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143095, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1124.56, 338.644, 16.673, 1.66176, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143103, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1089.34, 364.81, 26.8046, 6.22217, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0),
(143113, 52500, 861, 5733, 5739, 1, 2, 0, 52500, 1084.77, 348.602, 27.2612, 5.73544, 300, 0, 0, 23247000, 0, 0, 0, 0, 0, 0);


-- smartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=52500 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52500, 0, 0, 0, 0, 0, 100, 0, 6000, 8000, 12000, 18000, 11, 79878, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '');

-- creature_template entry 53364

DELETE FROM `creature_template` WHERE `entry`=53364;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53364, 0, 0, 0, 0, 0, 35095, 0, 0, 0, 'Malfurion Stormrage', '', '', 0, 88, 88, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1, 1, 3, 908, 1071, 0, 1833, 7.9, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 0, 908, 1071, 1833, 7, 266244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 500, 860.596, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


-- spawm 53364


DELETE FROM `creature` WHERE `id`=53364;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142352, 53364, 861, 5733, 5738, 1, 1, 0, 0, 1023.16, 338.026, 42.7006, 0.698132, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- creature_template entry 52476
DELETE FROM `creature_template` WHERE `entry`=52476;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52476, 0, 0, 0, 0, 0, 7618, 0, 0, 0, 'Keeper Krothis', '', '', 12900, 82, 82, 3, 0, 2252, 2252, 3, 1, 1.14286, 1.11111, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

-- spawm 

DELETE FROM `creature` WHERE `id`=52476;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142299, 52476, 861, 5733, 5738, 1, 14, 0, 0, 1008.73, 327.46, 41.553, 6.19592, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- creature_template entry 52489
DELETE FROM `creature_template` WHERE `entry`=52489;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52489, 0, 0, 0, 0, 0, 37942, 0, 0, 0, 'Avrilla', '', '', 12822, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1, 1, 1, 1688, 1761, 0, 0, 4, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

-- spawn 

DELETE FROM `creature` WHERE `id`=52489;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142297, 52489, 861, 5733, 5738, 1, 14, 0, 0, 1009.43, 330.759, 41.4774, 0.226893, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- creature_template entry 53013 lleva script C++

DELETE FROM `creature_template` WHERE `entry`=53013;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53013, 0, 0, 0, 0, 0, 19011, 0, 0, 0, 'Crimson Lasher', '', '', 0, 1, 1, 0, 0, 35, 35, 1, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 256, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_little_lasher', 15595);


-- spawm

DELETE FROM `creature` WHERE `id`=53013;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(134981, 53013, 861, 5733, 5738, 1, 1, 0, 0, 1008.65, 333.639, 41.4752, 5.91667, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- https://github.com/RuinOzenu/WowSource434/commit/f995a95fadff879f60e3e7b7cbeec910b2c1b2ce
-- 54339 creature_template, spamws, aura y smartAI

DELETE FROM `creature_template` WHERE `entry`=54339;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54339, 0, 0, 0, 0, 0, 38760, 0, 0, 0, 'Ancient Charhound', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1233, 2007, 0, 0, 3, 2000, 2000, 1, 294912, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 0, 54339, 0, 0, 0, 0, 0, 0, 0, 0, 3356, 98701, 42648, 0, 0, 0, 0, 0, 0, 0, 8, 8, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 0, 69816, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54339;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141944, 54339, 861, 5733, 5745, 1, 14, 0, 0, 1248.25, 467.052, 22.4856, 4.71239, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141967, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1222.21, 363.969, 15.6648, 3.1765, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141971, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1218.58, 397.431, 15.046, 3.08923, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141974, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1207.8, 339.858, 16.4991, 2.51327, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141987, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1203.75, 273.042, 22.743, 0.0523599, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141989, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1203.35, 379.909, 16.6717, 4.17616, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141992, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1202.81, 317.887, 17.085, 2.44335, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142006, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1202.06, 264.535, 22.7436, 0.610865, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142061, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1200.55, 343.755, 16.6243, 3.07698, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142063, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1189.95, 423.967, 16.0779, 3.92699, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142067, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1180.86, 403.086, 16.1502, 3.55389, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142101, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1154.33, 428.023, 16.8165, 3.92699, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142103, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1151.6, 276.623, 17.1427, 2.61132, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142105, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1147.43, 366.217, 17.4269, 2.87884, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142107, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1127.09, 321.145, 16.7855, 3.70072, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142109, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1125.57, 285.833, 15.6537, 2.99459, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142113, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1122.86, 351.52, 17.9056, 2.86323, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142115, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1118.84, 390.321, 16.9063, 5.26876, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142121, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1106.38, 331.091, 31.4864, 1.0576, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142125, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1103.77, 362.013, 21.9918, 0.309777, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142164, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1100.59, 308.194, 18.0927, 2.42258, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142166, 54339, 861, 5733, 5745, 1, 14, 0, 0, 1095.84, 406.223, 21.5942, 1.25396, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142168, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1092.56, 394.836, 24.2674, 5.24294, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142170, 54339, 861, 5733, 5739, 1, 14, 0, 0, 1071.08, 369.438, 31.6837, 3.10446, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142180, 54339, 861, 5733, 5738, 1, 14, 0, 0, 1038.12, 361.401, 39.7676, 3.62497, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(142185, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1514.56, 421.619, 63.5849, 4.62957, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0),
(142190, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1502.23, 417.933, 63.2064, 4.10772, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0),
(142195, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1519.8, 401.385, 63.049, 5.52458, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0),
(142282, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1497.99, 265.116, 63.4581, 5.48073, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0),
(142284, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1525.92, 263.163, 63.5658, 0.191859, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0),
(142286, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1514.66, 271.608, 63.4299, 2.75854, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0),
(142295, 54339, 861, 5733, 5749, 1, 2, 0, 0, 1493.75, 284.472, 62.0828, 5.55761, 300, 0, 0, 92988, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=54339;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54339, 0, 0, 0, 1, 0, '42648');

DELETE FROM `smart_scripts` WHERE `entryorguid`=54339 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54339, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 52500, 15, 0, 0, 0, 0, 0, ''),
(54339, 0, 1, 0, 0, 0, 100, 0, 3000, 8000, 30000, 45000, 11, 3356, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(54339, 0, 2, 0, 0, 0, 100, 0, 10000, 20000, 30000, 50000, 11, 98701, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(54339, 0, 3, 0, 1, 0, 100, 1, 10000, 20000, 30000, 50000, 11, 42648, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 53384 creature_template y  spawms

DELETE FROM `creature_template` WHERE `entry`=53384;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53384, 0, 0, 0, 0, 0, 37757, 0, 0, 0, 'Obsidian Monstrosity', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1.55556, 1.14286, 1, 0, 1165, 1306, 0, 207, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=53384;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141790, 53384, 861, 5733, 5739, 1, 1, 0, 0, 1108.59, 367.981, 20.5796, 3.33358, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141792, 53384, 861, 5733, 5739, 1, 1, 0, 0, 1108.4, 359.99, 20.4343, 3.07178, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141794, 53384, 861, 5733, 5739, 1, 1, 0, 0, 1094.31, 385.693, 24.2658, 3.71755, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141801, 53384, 861, 5733, 5739, 1, 1, 0, 0, 1073.08, 372.353, 30.6505, 3.37286, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141812, 53384, 861, 5733, 5738, 1, 1, 0, 0, 1046.68, 431.611, 40.9226, 3.9968, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141817, 53384, 861, 5733, 5738, 1, 1, 0, 0, 1042.18, 397.253, 41.6214, 4.04714, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141830, 53384, 861, 5733, 5738, 1, 1, 0, 0, 1025.94, 388.436, 41.1491, 0.790279, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(141834, 53384, 861, 5733, 5738, 1, 1, 0, 0, 1029.66, 361.674, 39.5758, 3.97725, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(141846, 53384, 861, 5733, 5738, 1, 1, 0, 0, 1011.79, 341.604, 41.2103, 5.14435, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

-- 53327 creature_template y spamws

DELETE FROM `creature_template` WHERE `entry`=53327;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53327, 0, 0, 0, 0, 0, 38250, 38251, 38253, 0, 'Druid of the Talon', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=53327;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141788, 53327, 861, 5733, 5738, 1, 15, 0, 0, 1058.01, 429.444, 50.1122, 0.593412, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141786, 53327, 861, 5733, 5738, 1, 15, 0, 0, 1046.34, 340.111, 43.5331, 6.16101, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141779, 53327, 861, 5733, 5738, 1, 15, 0, 0, 997.408, 364.462, 54.6041, 6.17846, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141776, 53327, 861, 5733, 5738, 1, 15, 0, 0, 983.698, 337.071, 46.4377, 0.628318, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141774, 53327, 861, 5733, 5738, 1, 15, 0, 0, 1066.14, 390.182, 43.5972, 6.17846, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 54343 creature_template y  spamws

DELETE FROM `creature_template` WHERE `entry`=54343;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54343, 0, 0, 0, 0, 0, 38436, 38540, 38541, 38542, 'Druid of the Flame', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 8, 0, 54343, 0, 0, 0, 0, 0, 0, 0, 0, 97678, 17273, 13878, 0, 0, 0, 0, 0, 0, 0, 2769, 2769, NULL, NULL, 'SmartAI', 0, 3, 1, 2.5, 1.00031, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 54343, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54343;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141532, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1148.14, 342.671, 16.9726, 2.43108, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141549, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1203.73, 347.493, 16.8596, 2.76824, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141565, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1196.36, 323.301, 16.7285, 2.442, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141576, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1188.63, 363.669, 20.121, 0.281906, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141580, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1183.73, 415.297, 16.5516, 2.95904, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141585, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1179.71, 358.75, 16.4123, 3.22533, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141590, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1163.05, 313.886, 16.3708, 2.36021, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141601, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1165.55, 419.353, 16.5018, 2.71993, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141606, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1187.78, 301.267, 16.9339, 1.56919, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141616, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1116.37, 309.646, 16.7061, 1.06394, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141618, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1145.53, 383.109, 16.8366, 3.54091, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141625, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1144.04, 422.463, 16.841, 3.57794, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141629, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1142.15, 282.161, 16.8491, 2.61132, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141634, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1126.2, 388.731, 17.1461, 1.37903, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141641, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1119.21, 348.441, 21.3723, 3.46615, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141669, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1107.2, 390.928, 24.3447, 5.19984, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141672, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1091.36, 327.338, 23.5728, 6.18812, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141681, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1091.35, 350.115, 26.5262, 1.74729, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141695, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1076.43, 366.162, 30.5108, 2.6462, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141706, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1076.56, 301.186, 18.1077, 1.85514, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141731, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1071.5, 352.022, 30.1267, 2.37896, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141736, 54343, 861, 5733, 5738, 1, 14, 0, 0, 1054.33, 367.563, 37.4294, 3.07515, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141739, 54343, 861, 5733, 5738, 1, 14, 0, 0, 1053.82, 378.123, 38.7912, 1.55029, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141745, 54343, 861, 5733, 5738, 1, 14, 0, 0, 1027.45, 354.728, 41.0756, 0.785313, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141749, 54343, 861, 5733, 5738, 1, 14, 0, 0, 1023.92, 367.884, 41.0756, 3.10103, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141762, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1078.21, 294.205, 17.4721, 1.76919, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141768, 54343, 861, 5733, 5739, 1, 14, 0, 0, 1069.03, 368.513, 32.4865, 3.27812, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52501 creature_template y  spamws

DELETE FROM `creature_template` WHERE `entry`=52501;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52501, 0, 0, 0, 0, 0, 31228, 31229, 31230, 31231, 'Hyjal Druid', '', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1165, 1306, 0, 207, 2, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52501, 786382847, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=52501;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141402, 52501, 861, 5733, 5739, 1, 14, 0, 0, 1192.73, 364.89, 16.8902, 0.261799, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141405, 52501, 861, 5733, 5739, 1, 14, 0, 0, 1157.15, 392.266, 16.4958, 6.03884, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141417, 52501, 861, 5733, 5739, 1, 14, 0, 0, 1142.05, 327.261, 16.5727, 0.15708, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141423, 52501, 861, 5733, 5739, 1, 14, 0, 0, 1116.33, 395.243, 19.3364, 4.97556, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141425, 52501, 861, 5733, 5739, 1, 14, 0, 0, 1109.19, 366.272, 20.5228, 0.112681, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141443, 52501, 861, 5733, 5739, 1, 14, 0, 0, 1080.62, 323.319, 23.7591, 6.08326, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141469, 52501, 861, 5733, 5738, 1, 14, 0, 0, 1054.49, 385.224, 43.0981, 5.23599, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141474, 52501, 861, 5733, 5738, 1, 14, 0, 0, 1044.06, 377.668, 41.1214, 5.81195, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141478, 52501, 861, 5733, 5738, 1, 14, 0, 0, 1026.85, 348.177, 41.6053, 1.19374, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141489, 52501, 861, 5733, 5738, 1, 14, 0, 0, 1026.69, 381.881, 41.0955, 1.69029, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141491, 52501, 861, 5733, 5738, 1, 14, 0, 0, 1019.04, 345.167, 41.0756, 0.750492, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141510, 52501, 861, 5733, 5738, 1, 14, 0, 0, 1015.33, 376.422, 41.0756, 0.23185, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141522, 52501, 861, 5733, 5742, 1, 4, 0, 52501, 1184.07, 137.2, 63.5556, 0.510931, 300, 0, 0, 23247000, 8908, 0, 0, 0, 0, 0),
(141524, 52501, 861, 5733, 5742, 1, 4, 0, 52501, 1181.3, 140.521, 63.556, 0.69157, 300, 0, 0, 23247000, 8908, 0, 0, 0, 0, 0);

-- 52503 creature_template y spawms 

DELETE FROM `creature_template` WHERE `entry`=52503;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52503, 0, 0, 0, 52504, 0, 24905, 0, 0, 0, 'Charred Vanquisher', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 4, 0, 0, 52503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 1, 1, 1, 0, 52506, 69722, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52503;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141048, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1209.18, 337.568, 16.5107, 2.68781, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141121, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1190.86, 424.335, 16.0779, 4.08407, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141129, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1177.62, 327.301, 16.5877, 2.41541, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141146, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1183.53, 406.711, 16.3552, 4.20918, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141184, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1165.26, 370.524, 16.5104, 2.98451, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141191, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1162.43, 389.357, 16.4958, 3.25775, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141194, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1161.39, 346.233, 16.1263, 2.94305, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141197, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1155.78, 431.273, 16.8697, 4.08407, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141200, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1147.17, 327.398, 16.7953, 2.15841, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141203, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1130.22, 371.148, 16.7458, 3.24712, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141207, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1128.01, 404.016, 17.4279, 4.9267, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141212, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1126.35, 263.757, 16.8087, 1.67552, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141214, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1125.63, 322.349, 16.7855, 0.441809, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141220, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1123.16, 357.753, 17.4565, 2.36716, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141240, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1121.93, 420.808, 18.5646, 2.28228, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141255, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1118.94, 272.49, 16.697, 3.39633, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141265, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1115.8, 282.832, 16.2851, 2.41715, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141269, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1113.39, 413.803, 16.835, 0.391233, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141300, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1096.18, 354.285, 25.1968, 3.5526, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141305, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1100.24, 248.242, 17.0847, 0.258521, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141312, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1070.81, 280.254, 18.4089, 4.0376, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141314, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1031.38, 342.981, 41.0756, 4.10875, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141322, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1028.8, 365.247, 40.1861, 3.04185, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141358, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1023.14, 347.578, 41.0756, 3.67398, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141360, 52503, 861, 5733, 5739, 1, 14, 0, 0, 1014.79, 371.401, 41.0756, 5.11657, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52341 creature_template y  spawms

DELETE FROM `creature_template` WHERE `entry`=52341;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52341, 0, 0, 0, 0, 0, 32255, 32256, 32257, 32258, 'Druid of the Talon', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52341, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52341;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140912, 52341, 861, 5733, 5738, 1, 6, 0, 0, 1054.78, 415.462, 41.1513, 0.523599, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140995, 52341, 861, 5733, 5738, 1, 6, 0, 0, 1054.56, 422.694, 41.7631, 0.314159, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141011, 52341, 861, 5733, 5745, 1, 6, 0, 52341, 1244.84, 497.989, 59.3407, 0.759345, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(141045, 52341, 861, 5733, 5745, 1, 6, 0, 52341, 1231.56, 494.671, 58.2769, 3.74002, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

-- 52703 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52703;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52703, 0, 0, 0, 0, 0, 33364, 33365, 0, 0, 'Hyjal Enforcer', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 50, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52703, 786382847, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=52703;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140910, 52703, 861, 5733, 5738, 1, 14, 0, 0, 1040.76, 365.673, 40.0398, 4.0224, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52502 creature_template y spawm 

DELETE FROM `creature_template` WHERE `entry`=52502;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52502, 0, 0, 0, 0, 0, 37936, 37937, 38544, 38545, 'Hyjal Marksman', '', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1165, 1306, 0, 207, 2, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52502, 786382847, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52502;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140705, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1120.83, 394.149, 16.8708, 6.02997, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140713, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1112.6, 392.108, 20.3708, 5.10168, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140722, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1112.47, 348.538, 21.7645, 4.07943, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140755, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1107.87, 342.7, 26.6209, 0.376007, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140761, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1106.5, 392.545, 24.3708, 6.0912, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140763, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1097.51, 307.035, 18.5118, 1.62635, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140776, 52502, 861, 5733, 5739, 1, 14, 0, 0, 1088.59, 312.425, 20.1368, 3.28494, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140784, 52502, 861, 5733, 5745, 1, 14, 0, 0, 1080.97, 401.536, 24.2467, 3.17887, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140830, 52502, 861, 5733, 5738, 1, 14, 0, 0, 1056.1, 387.031, 43.2464, 5.21853, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140880, 52502, 861, 5733, 5738, 1, 14, 0, 0, 1043.93, 381.496, 41.1214, 6.05297, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140882, 52502, 861, 5733, 5738, 1, 14, 0, 0, 1043.82, 352.014, 41.0426, 0.453786, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140886, 52502, 861, 5733, 5745, 1, 14, 0, 0, 1069.57, 409.254, 39.307, 5.89502, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53412 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53412;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53412, 0, 0, 0, 0, 0, 31228, 31229, 31230, 31231, 'Hyjal Druid', '', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1000.8, 1500.8, 0, 0, 2, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 2.01904, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53412;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140688, 53412, 861, 5733, 5739, 1, 1, 0, 0, 1073.27, 357.672, 30.9546, 5.95157, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140694, 53412, 861, 5733, 5738, 1, 1, 0, 0, 1023.73, 395.307, 42.2427, 1.13446, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140701, 53412, 861, 5733, 5739, 1, 1, 0, 0, 1067.94, 371.141, 32.3387, 0.418879, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53365 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53365;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53365, 0, 0, 0, 0, 0, 38053, 0, 0, 0, 'General Taldris Moonfall', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 100, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=53365;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140686, 53365, 861, 5733, 5738, 1, 1, 0, 0, 1034.35, 342.87, 41.0426, 3.03687, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53355 creature_template, auras, spawm y textos

DELETE FROM `creature_template` WHERE `entry`=53355;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53355, 0, 0, 0, 0, 0, 32223, 0, 0, 0, 'Windcaller Nordrala', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 1.51428, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE `entry`=53355;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53355, 0, 0, 0, 0, 0, '86877 98549');

DELETE FROM `creature_text` WHERE `entry`=53355;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(53355, 0, 0, 'I will go with you by foot and clear the path of flames.  It will take all my concentration to keep the fire at bay, so you need to make sure that I remain safe.', 12, 0, 100, 1, 0, 0, 0, 'Windcaller Nordrala to Player'),
(53355, 1, 0, 'Stay close. Stay vigilant.', 12, 0, 100, 1, 0, 0, 0, 'Windcaller Nordrala to Player'),
(53355, 2, 0, 'We\'re almost through. Stay close!', 12, 0, 100, 1, 0, 0, 0, 'Windcaller Nordrala to Player'),
(53355, 3, 0, 'Brothers! Strike now!', 14, 0, 100, 1, 0, 0, 0, 'Windcaller Nordrala to Player');


DELETE FROM `creature` WHERE `id`=53355;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140678, 53355, 861, 5733, 5738, 1, 1, 0, 0, 1066.36, 420.403, 41.3963, 0.750492, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140684, 53355, 861, 5733, 5738, 1, 2, 0, 0, 1066.51, 418.656, 41.1113, 0.975443, 300, 0, 0, 117322, 6681, 0, 0, 0, 0, 0);

-- 53217 creature_template, aura y spawm 

DELETE FROM `creature_template` WHERE `entry`=53217;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (53217, 0, 0, 0, 0, 0, 32222, 0, 0, 0, 'Windcaller Voramus', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 1.51428, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE `entry`=53217;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53217, 0, 0, 0, 0, 0, '86877 98549');

DELETE FROM `creature` WHERE `id`=53217;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140670, 53217, 861, 5733, 5738, 1, 1, 0, 0, 1065.53, 421.75, 41.5095, 0.872665, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140673, 53217, 861, 5733, 5738, 1, 2, 0, 0, 1065.17, 421.161, 41.3892, 0.855016, 300, 0, 0, 117322, 6681, 0, 0, 0, 0, 0);


DELETE FROM `creature_text` WHERE `entry`=53217;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(53217, 0, 0, 'I will go with you by foot and clear the path of flames. It will take all my concentration to keep the fire at bay, so you need to make sure that I remain safe.', 12, 0, 100, 0, 0, 0, 0, ''),
(53217, 1, 0, 'Stay close. Stay vigilant.', 12, 0, 100, 0, 2000, 0, 51746, ''),
(53217, 2, 0, 'We\'re almost through. Stay close!', 12, 0, 100, 0, 2000, 0, 51747, ''),
(53217, 3, 0, 'Brothers! Strike now!', 12, 0, 100, 0, 2000, 0, 51748, '');

-- 52495 creature_template y spawm 

DELETE FROM `creature_template` WHERE `entry`=52495;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52495, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shalis Darkhunter', '', '', 12906, 85, 85, 3, 0, 2233, 2233, 3, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32784, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52495, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52495;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140661, 52495, 861, 5733, 5738, 1, 14, 0, 52495, 1054.11, 318.137, 45.5622, 5.91667, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);

-- 52467 creature_template y spawm 

DELETE FROM `creature_template` WHERE `entry`=52467;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52467, 0, 0, 0, 0, 0, 31801, 0, 0, 0, 'Rayne Feathersong', '', '', 12791, 85, 85, 3, 0, 2369, 2369, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 10, 5.0476, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52467, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52467;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140658, 52467, 861, 5733, 5738, 1, 14, 0, 0, 1017.37, 354.38, 41.0231, 6.08804, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53080 creature_template y spamw

DELETE FROM `creature_template` WHERE `entry`=53080;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53080, 0, 0, 0, 0, 0, 32487, 0, 0, 0, 'Captain Irontree', '', '', 12899, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 1923, 2170, 0, 0, 4, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53080, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53080;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140655, 53080, 861, 5733, 5738, 1, 14, 0, 0, 1018.28, 390.474, 42.2427, 5.67232, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=53080;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53080, 0, 0, 0, 0, 0, NULL);

-- 52824 creature_template, spawm, smartAI y spellDBC

DELETE FROM `creature_template` WHERE `entry`=52824;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52824, 0, 0, 0, 0, 0, 38053, 0, 0, 0, 'General Taldris Moonfall', '', '', 12790, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 3000, 4000, 0, 0, 5, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 100, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52824, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52824;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140647, 52824, 861, 5733, 5738, 1, 14, 0, 0, 1020.84, 390.993, 42.2156, 5.51524, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52824 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52824, 0, 0, 0, 62, 0, 100, 0, 12790, 0, 0, 0, 85, 101182, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `spell_dbc` WHERE `Id`=101182;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(101182, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spelleffect_dbc` WHERE `Id`=155979;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155979, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101182, 0);

-- 52134 creature_template, spawm, textos, smartAI y spellDBC

DELETE FROM `creature_template` WHERE `entry`=52134;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52134, 0, 0, 0, 0, 0, 38656, 0, 0, 0, 'Commander Jarod Shadowsong', '', '', 12974, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 100, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52134;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140650, 52134, 861, 5733, 5738, 1, 14, 0, 0, 1047.94, 399.226, 40.8005, 5.09643, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52134;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52134, 0, 0, 0, 0, 0, NULL);


DELETE FROM `creature_text` WHERE `entry`=52134;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52134, 0, 0, 'We cannot let the deaths of our comrades go wasted! Do not let down your guard!', 12, 0, 100, 22, 0, 0, 0, ''),
(52134, 0, 1, 'Rest? We can rest when we are buried in our graves. Today, we must fight!', 12, 0, 100, 15, 0, 0, 0, ''),
(52134, 0, 2, 'This fight is the true test of courage. Steel your hearts and drench your blades in the enemies\' blood!', 12, 0, 100, 22, 0, 0, 0, ''),
(52134, 0, 3, 'Good work, defenders! We are gaining ground!', 12, 0, 100, 22, 0, 0, 0, ''),
(52134, 0, 4, 'Use your legs, soldiers!', 12, 0, 100, 15, 0, 0, 0, ''),
(52134, 0, 5, 'Our enemies think we are weak. Are we weak, soldiers? If not, then prove it to them!', 12, 0, 100, 22, 0, 0, 0, ''),
(52134, 0, 6, 'We must hold out a little longer, just until reinforcements arrive.', 12, 0, 100, 22, 0, 0, 0, ''),
(52134, 0, 7, 'Hold the line, soldiers! Do not give them quarter! Do not let them pass!', 12, 0, 100, 397, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52134 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52134, 0, 0, 0, 62, 0, 100, 0, 12975, 0, 0, 0, 85, 101173, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `spell_dbc` WHERE `Id`=101173;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(101173, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `spelleffect_dbc` WHERE `Id`=155985;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155985, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101173, 0);

-- 52488 creature_template, aura y spawm

DELETE FROM `creature_template` WHERE `entry`=52488;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52488, 0, 0, 0, 0, 0, 34201, 0, 0, 0, 'Elderlimb', 'Ancient of Lore', '', 12898, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 20, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52488;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140645, 52488, 861, 5733, 5738, 1, 1, 0, 0, 995.68, 412.446, 40.9031, 5.63741, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52488;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52488, 0, 0, 0, 0, 0, '89303');

-- 53881 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53881;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53881, 0, 0, 0, 0, 0, 38536, 0, 0, 0, 'Ayla Shadowstorm', 'Treasures of Elune', '', 12825, 85, 85, 3, 0, 2252, 2252, 131, 1, 1.14286, 1, 1.14286, 1, 0, 1821, 1943, 0, 1, 4, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53881, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=53881;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140641, 53881, 861, 5733, 5738, 1, 4, 0, 0, 1016.87, 408.917, 41.6207, 4.92183, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


-- 53882 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53882;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53882, 0, 0, 0, 0, 0, 38537, 0, 0, 0, 'Varlan Highbough', 'Provisions of the Grove', '', 12824, 85, 85, 3, 0, 2252, 2252, 131, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53882;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140643, 53882, 861, 5733, 5738, 1, 4, 0, 0, 997.339, 404.771, 40.5319, 5.68977, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


-- 52135 creature_template, spawm, smartAI, aura y spellDBC

DELETE FROM `creature_template` WHERE `entry`=52135;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52135, 0, 0, 0, 0, 0, 35095, 0, 0, 0, 'Malfurion Stormrage', '', '', 12799, 88, 88, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1, 1, 3, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 500, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE `id`=52135;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140623, 52135, 861, 5733, 5738, 1, 15, 0, 0, 976.863, 373.974, 38.1054, 6.16101, 120, 0, 0, 8589200, 275100, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52135;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52135, 0, 0, 0, 0, 0, '84886');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52135 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52135, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 85, 101174, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `spell_dbc` WHERE `Id`=101174;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(101174, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spelleffect_dbc` WHERE `Id`=155984;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155984, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101174, 0);

-- 52822 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52822;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52822, 0, 0, 0, 0, 0, 38051, 0, 0, 0, 'Zen\'Vorka', 'Favors of the World Tree', '', 0, 85, 85, 3, 0, 2252, 2252, 4226, 1, 1.14286, 1, 1.14286, 1, 1, 1786, 2009, 0, 0, 4, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52822, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52822;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140559, 52822, 861, 5733, 5738, 1, 7, 0, 52822, 981.303, 375.354, 37.9749, 3.53345, 300, 0, 0, 293305, 8908, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52822;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52822, 0, 0, 0, 0, 0, NULL);

-- 53214 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53214;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53214, 0, 0, 0, 0, 0, 38226, 0, 0, 0, 'Damek Bloombeard', 'Exceptional Equipment', '', 12823, 85, 85, 3, 0, 1475, 1475, 4227, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53214;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140483, 53214, 861, 5733, 5738, 1, 4, 0, 0, 987.759, 375.234, 38.7087, 2.37365, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53196 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53196;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53196, 0, 0, 0, 0, 0, 26243, 0, 0, 0, 'Ricket', '', '', 12839, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53196;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140337, 53196, 861, 5733, 5738, 1, 6, 0, 0, 986.411, 377.059, 38.4833, 5.68977, 120, 0, 0, 586610, 0, 0, 0, 0, 0, 0);


-- 52493 creature_template, spawm y aura

DELETE FROM `creature_template` WHERE `entry`=52493;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52493, 0, 0, 0, 0, 0, 20628, 0, 0, 0, 'Captain Saynna Stormrunner', '', '', 12901, 85, 85, 3, 0, 2233, 2233, 3, 1, 1.14286, 1, 1, 1, 1, 1611, 1718, 0, 0, 4, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 50, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52493, 0, 0, 'npc_molten_captain_saynna', 15595);


DELETE FROM `creature` WHERE `id`=52493;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140334, 52493, 861, 5733, 5738, 1, 2, 0, 0, 983.299, 367.307, 38.213, 1.51844, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52493;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52493, 0, 0, 0, 0, 0, '49414');

-- 44775 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=44775;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44775, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Generic Bunny - PRK (Large AOI)', '', '', 0, 60, 60, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 104, 138, 0, 252, 1, 2000, 2000, 1, 33554688, 2048, 2048, 0, 0, 0, 0, 0, 72, 106, 26, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);


DELETE FROM `creature` WHERE `id`=44775 AND `map`=861;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140298, 44775, 861, 5733, 5745, 1, 2, 0, 0, 1166.51, 531.465, 58.2133, 4.48959, 120, 0, 0, 3052, 0, 0, 0, 0, 0, 0),
(140300, 44775, 861, 5733, 5738, 1, 1, 0, 0, 1027.81, 333.387, 53.2482, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140329, 44775, 861, 5733, 5745, 1, 4, 0, 0, 1175.14, 525.081, 53.9108, 4.90738, 300, 0, 0, 3052, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=44775;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(44775, 0, 0, 50331648, 1, 0, NULL);

-- 52490 creature_template, spawm y aura

DELETE FROM `creature_template` WHERE `entry`=52490;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52490, 0, 0, 0, 0, 0, 32245, 0, 0, 0, 'Skylord Omnuron', 'Druid of the Talon', '', 12907, 85, 85, 3, 0, 2233, 2233, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 25, 10.0952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52490, 0, 0, 'npc_currency_required_quest_taker', 15595);


DELETE FROM `creature` WHERE `id`=52490;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140294, 52490, 861, 5733, 5738, 1, 2, 0, 52490, 1062.34, 421.427, 41.5121, 0.837758, 120, 0, 0, 1466522, 44540, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=52490;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52490, 0, 0, 0, 0, 0, '86877 98549');

-- 54039 creature_template, spawm, auras y smartAI

DELETE FROM `creature_template` WHERE `entry`=54039;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54039, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire C, 0.8 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature` WHERE `id`=54039;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140198, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1207.72, 490.648, 58.993, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140204, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1197.54, 474.45, 59.2582, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140206, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1183.24, 477.05, 59.2799, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140213, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1166.33, 493.031, 59.219, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140247, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1128.94, 469.257, 56.5972, 5.13127, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140251, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1112.95, 491.075, 58.089, 3.82227, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140263, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1091.9, 464.859, 47.6403, 1.78024, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140275, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1091.6, 476.073, 52.2263, 2.1293, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140278, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1080.93, 446.504, 42.099, 1.78024, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140285, 54039, 861, 5733, 5745, 1, 3, 0, 0, 1080.71, 427.845, 41.9525, 3.82227, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=54039;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54039, 0, 0, 65536, 1, 0, '100610 96824 86877');


DELETE FROM `smart_scripts` WHERE `entryorguid`=54039 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54039, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


-- creature_template, spawms, suras y smartAI

DELETE FROM `creature_template` WHERE `entry`=54036;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54036, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire B, 1.0 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature_template` WHERE `entry`=54037;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54037, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Furnace Bunny, Fire C, 1.0 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature_template` WHERE `entry`=54038;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54038, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire B, 0.8 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature_template` WHERE `entry`=54040;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54040, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire B, 1.6 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature` WHERE `id` IN (54040,54037,54038,54036);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137279, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1191.68, 477.608, 59.2506, 3.33358, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137306, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1191.37, 488.181, 59.1624, 3.33358, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137319, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1178.97, 484.786, 59.408, 5.8294, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137344, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1125.67, 502.017, 60.3322, 3.7001, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137355, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1123.28, 471.908, 56.3969, 4.83456, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137401, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1121.35, 522.846, 60.2054, 2.35619, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137929, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1117.85, 514.26, 60.6105, 3.15905, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138003, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1111.21, 518.667, 62.4756, 1.72788, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138015, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1093.04, 481.597, 53.5405, 1.69297, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138060, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1090.58, 470.227, 48.9075, 0.0174533, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138181, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1087.34, 455.764, 44.6386, 0.122173, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138309, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1085.16, 437.186, 42.5015, 6.05629, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138327, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1082.76, 462.031, 45.6226, 5.16617, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138332, 54036, 861, 5733, 5745, 1, 3, 0, 0, 1068.44, 448.427, 42.9076, 0.541052, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),

(138757, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1183.48, 473.063, 59.2592, 5.51524, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138809, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1182.59, 491.012, 59.1944, 3.33358, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138857, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1164.69, 500.644, 59.8299, 4.45059, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138863, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1137.5, 495.861, 59.553, 3.97935, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138869, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1135.02, 485.924, 59.4826, 3.97935, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138885, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1105.41, 487.925, 57.2956, 4.55531, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139017, 54037, 861, 5733, 5745, 1, 1, 0, 0, 1086.42, 432.205, 41.9844, 0.191986, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),

(139019, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1168.66, 485.25, 59.2587, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139029, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1156.35, 482.248, 59.9358, 6.05629, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139048, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1137.29, 479.578, 59.2763, 3.07178, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139050, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1113.08, 456.875, 50.8469, 5.02655, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139056, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1105.22, 497.052, 58.7783, 3.82227, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139134, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1103.79, 458.658, 49.0764, 2.58309, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139141, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1083.81, 465.097, 46.4921, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139164, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1082.93, 442.219, 42.4873, 5.28835, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139169, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1076.23, 434.481, 42.1864, 5.28835, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139469, 54038, 861, 5733, 5738, 1, 3, 0, 0, 1061.74, 446.524, 43.1023, 5.28835, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139593, 54038, 861, 5733, 5745, 1, 3, 0, 0, 1067.95, 437.229, 42.4286, 5.28835, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),

(139788, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1203.28, 486.635, 59.191, 6.19592, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139796, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1156.05, 490.222, 59.5521, 0.610865, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139798, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1147.56, 504.778, 58.258, 0.610865, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139806, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1132.33, 492.47, 59.592, 5.88176, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(139810, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1127.79, 515.05, 59.1609, 5.88176, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140070, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1120.53, 476.851, 56.901, 4.72984, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140115, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1110.96, 532.811, 62.5775, 1.97222, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140118, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1097.28, 455.894, 46.8351, 5.89921, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140131, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1081.25, 431.227, 42.186, 3.82227, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(140191, 54040, 861, 5733, 5745, 1, 3, 0, 0, 1074.56, 445.988, 42.4149, 4.53786, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=54036;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54036, 0, 0, 65536, 1, 0, '100608 96824 86877');

DELETE FROM `creature_template_addon` WHERE `entry`=54037;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54037, 0, 0, 65536, 1, 0, '100610 96824 86877');

DELETE FROM `creature_template_addon` WHERE `entry`=54038;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54038, 0, 0, 65536, 1, 0, '100608 96824 86877');

DELETE FROM `creature_template_addon` WHERE `entry`=54040;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54040, 0, 0, 65536, 1, 0, '100608 96824 86877');


DELETE FROM `smart_scripts` WHERE `entryorguid`=54036 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54036, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=54038 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54038, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=54040 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54040, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- creature_templates, smartAI, spawms y auras


DELETE FROM `creature_template` WHERE `entry`=52948;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52948, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire A, 1.0 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554944, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature_template` WHERE `entry`=53212;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53212, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire A, 1.6 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554944, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature_template` WHERE `entry`=53213;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53213, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Furnace Bunny, Fire A, 0.8 scale', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554944, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);



DELETE FROM `smart_scripts` WHERE `entryorguid`=52948 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52948, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=53212 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53212, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=53213 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53213, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template_addon` WHERE `entry`=52948;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52948, 0, 0, 65536, 1, 0, '97921 96824 86877');

DELETE FROM `creature_template_addon` WHERE `entry`=53212;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53212, 0, 0, 65536, 1, 0, '97921 96824 86877');

DELETE FROM `creature_template_addon` WHERE `entry`=53213;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53213, 0, 0, 65536, 1, 0, '100608 96824 86877');


DELETE FROM `creature` WHERE `id` IN (53213,53212,52948);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(135006, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1207.55, 483.196, 59.2292, 0.471239, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135008, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1198.71, 469.319, 59.2594, 3.4383, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135047, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1187.47, 469.63, 59.2845, 0.663225, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135074, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1175.92, 477.556, 59.3871, 5.09636, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135102, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1173.53, 497.295, 59.2188, 2.14675, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135123, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1171.91, 487.802, 59.3331, 4.88692, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135125, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1159.92, 486.345, 60.3342, 4.88692, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135127, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1151.63, 478.634, 58.2079, 0.139626, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135129, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1143.37, 516.731, 56.908, 3.08923, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135131, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1141.3, 495.582, 59.5278, 1.71042, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135151, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1139.34, 483.257, 59.3669, 0.139626, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135153, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1133.05, 500.255, 59.5287, 4.5204, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135174, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1130.01, 525.142, 58.8818, 1.50098, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135176, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1127.16, 510.694, 59.2678, 1.69297, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135178, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1127.02, 494.781, 59.6547, 3.12414, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135180, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1120.77, 507.701, 60.7093, 4.60767, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135182, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1119.46, 467.462, 54.711, 3.31613, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135230, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1111.46, 469.328, 53.7188, 3.28122, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135232, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1110.32, 454.879, 49.9075, 4.74729, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135234, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1109.34, 515.948, 61.7989, 4.2586, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135236, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1108.75, 497.722, 59.6086, 0.802851, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135238, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1105.63, 522.3, 62.2319, 2.40855, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135240, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1099.41, 485.517, 56.2922, 3.19395, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135242, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1095.28, 466, 48.8175, 2.82743, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135244, 52948, 861, 5733, 5745, 1, 3, 0, 0, 1080.11, 433.75, 42.278, 2.68781, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135246, 52948, 861, 5733, 5738, 1, 3, 0, 0, 1061.89, 450.688, 43.9479, 1.55334, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135248, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1195.03, 483.472, 59.191, 5.75959, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135250, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1173.19, 476.009, 59.633, 0.610865, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135252, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1168.59, 490.694, 59.2587, 2.61799, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135254, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1152.48, 484.674, 59.3476, 0.610865, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135256, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1141.98, 509.326, 58.6136, 0.610865, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135258, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1135.14, 505.012, 59.1889, 5.88176, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135260, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1130.37, 478.644, 59.1267, 3.78736, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135262, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1126.89, 488.396, 59.4453, 3.78736, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135264, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1116.16, 500.358, 58.2074, 3.82227, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135266, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1113.67, 506.186, 62.0048, 4.72984, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135268, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1110.81, 460.823, 51.2859, 0.122173, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135319, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1106.97, 508.479, 59.9044, 2.26893, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(135915, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1098.74, 480.356, 54.6401, 6.16101, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(136663, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1098.2, 490.063, 56.6378, 4.72984, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(136665, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1094.56, 460.938, 47.6684, 3.94444, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(136764, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1090.45, 439.905, 42.9903, 0.506145, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(136977, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1078.95, 439.224, 42.1635, 1.65806, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137020, 53212, 861, 5733, 5745, 1, 3, 0, 0, 1078.48, 467.196, 47.5593, 1.29154, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137057, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1219.01, 484.939, 58.4533, 2.11185, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137072, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1205.14, 480.071, 59.2507, 3.4383, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137076, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1197.85, 491.16, 59.1628, 3.4383, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137085, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1190.45, 483.389, 59.2056, 5.42797, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137152, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1188.4, 476.052, 59.2621, 4.31096, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137174, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1178.01, 491.589, 59.2887, 3.4383, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137207, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1145.67, 509.382, 57.3935, 3.4383, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137224, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1124.19, 527.682, 60.2538, 3.07178, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137244, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1122.66, 515.078, 59.729, 6.12611, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137256, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1111, 474.833, 55.743, 3.89208, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137262, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1076.57, 430.186, 42.1486, 2.11185, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137274, 53213, 861, 5733, 5745, 1, 2, 0, 0, 1068.17, 460.773, 45.7673, 3.82227, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 70041 creature_template, spawm, condiciones, aura y smartAI

DELETE FROM `creature_template` WHERE `entry`=70041;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(70041, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'MF - Into the Fire - Trigger', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 3.8, 3.8, 0, 46, 1, 2000, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);


DELETE FROM `creature` WHERE `id`=70041;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234226, 70041, 861, 5733, 5738, 1, 2, 0, 0, 1062.32, 417.462, 41.0532, 0.849996, 300, 0, 0, 57, 0, 0, 0, 33554432, 0, 0);


DELETE FROM `conditions` WHERE `SourceEntry`=70041;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 70041, 0, 0, 9, 0, 29206, 0, 0, 0, 0, 0, '', ''),
(22, 1, 70041, 0, 0, 1, 0, 98549, 0, 0, 0, 0, 0, '', ''),
(22, 1, 70041, 0, 0, 1, 0, 67351, 0, 0, 1, 0, 0, '', '');


DELETE FROM `creature_template_addon` WHERE `entry`=70041;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(70041, 0, 0, 0, 0, 0, '86877');


DELETE FROM `smart_scripts` WHERE `entryorguid`=70041 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(70041, 0, 0, 1, 10, 0, 100, 0, 1, 2, 1000, 50000, 45, 0, 1, 0, 0, 0, 0, 11, 53217, 5, 0, 0, 0, 0, 0, ''),
(70041, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 86, 67351, 0, 7, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 53328 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53328;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53328, 0, 0, 0, 0, 0, 31808, 19894, 0, 0, 'Flamewaker Assassin', '', '', 0, 1, 1, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 53328, 53328, 0, 0, 0, 0, 0, 0, 0, 22120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2770, 2770, NULL, NULL, '', 0, 3, 1, 0.75, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=53328;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234169, 53328, 861, 5733, 5745, 1, 1, 0, 0, 1186.88, 498.495, 59.3612, 3.48004, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234174, 53328, 861, 5733, 5745, 1, 1, 0, 0, 1120.39, 497.359, 59.958, 4.45564, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234192, 53328, 861, 5733, 5745, 1, 1, 0, 0, 1110.17, 484.686, 56.567, 5.96101, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234216, 53328, 861, 5733, 5745, 1, 1, 0, 0, 1094.38, 467.894, 48.5724, 4.16208, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53329 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53329;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53329, 0, 0, 0, 0, 0, 32258, 32256, 32257, 32255, 'Druid of the Talon', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53329;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234175, 53329, 861, 5733, 5745, 1, 1, 0, 0, 1211.38, 558.09, 96.9551, 3.57792, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234193, 53329, 861, 5733, 5745, 1, 1, 0, 0, 1207.08, 523.448, 94.7982, 2.89725, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234217, 53329, 861, 5733, 5745, 1, 1, 0, 0, 1182.55, 577.988, 105.096, 4.24115, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234229, 53329, 861, 5733, 5745, 1, 1, 0, 0, 1144.84, 569.755, 98.8657, 5.18363, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234232, 53329, 861, 5733, 5745, 1, 1, 0, 0, 1128.03, 543.484, 89.1055, 6.10865, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 208570 gameobject_template y spawm

DELETE FROM `gameobject_template` WHERE `entry`=208570;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208570, 22, 7538, 'Rappelling Rope', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 98428, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '', 1);


DELETE FROM `gameobject` WHERE `id`=208570;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(150343, 208570, 861, 5733, 5745, 1, 4, 1176.41, 524.135, 54.6354, 0, 0, 0, 0, 1, 300, 255, 1);

-- creature entry 44775 para el guid 140298
DELETE FROM `smart_scripts` WHERE `entryorguid`=-140298 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-140298, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 11, 98839, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(-140298, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 208778, 10, 0, 0, 0, 0, 0, ''),
(-140298, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 208427, 10, 0, 0, 0, 0, 0, '');

-- 208778 gameobject_template y spawm

DELETE FROM `gameobject_template` WHERE `entry`=208778;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208778, 0, 10573, 'Furnace Door', '', '', '', 114, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '', 1);

DELETE FROM `gameobject` WHERE `id`=208778;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(150341, 208778, 861, 5733, 5745, 1, 2, 1165.84, 533.719, 53.5342, 3.10665, 0, 0, 0.999847, 0.0174686, 10, 255, 1);

-- 208427 gameobject_template y spawm

DELETE FROM `gameobject_template` WHERE `entry`=208427;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208427, 0, 10573, 'Furnace Door', '', '', '', 114, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `gameobject` WHERE `id`=208427;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(127946, 208427, 861, 5733, 5745, 1, 2, 1165.84, 533.719, 53.5342, 3.10665, 0, 0, 0.999847, 0.0174686, 10, 255, 1);

-- 53353 creature_template, spawm, aura, condiciones y smartAI

DELETE FROM `creature_template` WHERE `entry`=53353;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53353, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature` WHERE `id`=53353;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234234, 53353, 861, 5733, 5746, 1, 1, 0, 0, 1165.87, 536.469, -48.2467, 4.93928, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=53353;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53353, 0, 0, 0, 0, 0, '98835');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=53353;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 53353, 0, 0, 1, 0, 98506, 0, 0, 1, 0, 0, '', ''),
(22, 1, 53353, 0, 0, 1, 0, 46598, 0, 0, 1, 0, 0, '', '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=53353 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53353, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 2000, 85, 98832, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 53228 creature_template, spawm, aura y smartAI

DELETE FROM `creature_template` WHERE `entry`=53228;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53228, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=53228;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(233989, 53228, 861, 5733, 5746, 1, 31, 0, 0, 1276.84, 351.097, -61.4355, 5.72468, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234045, 53228, 861, 5733, 5746, 1, 31, 0, 0, 1266.49, 356.396, -53.1936, 5.91667, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234051, 53228, 861, 5733, 5746, 1, 31, 0, 0, 1262.67, 366.321, -45.7408, 4.32842, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234176, 53228, 861, 5733, 5746, 1, 31, 0, 0, 1216.97, 469.875, -62.8949, 3.03687, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234194, 53228, 861, 5733, 5746, 1, 65535, 0, 0, 1323.25, 385.514, -70.3419, 4.90857, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234218, 53228, 861, 5733, 5746, 1, 65535, 0, 0, 1326.3, 366.3, -64.6674, 4.62255, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234230, 53228, 861, 5733, 5746, 1, 65535, 0, 0, 1315.07, 342.395, -54.3641, 2.95162, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=53228;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53228, 0, 0, 0, 0, 0, '98579');


DELETE FROM `smart_scripts` WHERE `entryorguid`=53228 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53228, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 52444 creature_template, spawm, smartAI y spellDBC

DELETE FROM `creature_template` WHERE `entry`=52444;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52444, 0, 0, 0, 0, 0, 32254, 0, 0, 0, 'Thisalee Crow', 'Druid of the Talon', '', 12833, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 34816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 20, 5.0476, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52444, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=52444;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234242, 52444, 861, 5733, 5746, 1, 3, 0, 0, 1228.29, 427.451, -52.886, 4.4855, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=52444 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52444, 0, 0, 0, 62, 0, 100, 0, 12977, 0, 0, 0, 85, 101176, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `spell_dbc` WHERE `Id`=101176;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(101176, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `spelleffect_dbc` WHERE `Id`=155982;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155982, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101176, 0);

-- 53085 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53085;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53085, 0, 0, 0, 53093, 0, 38144, 12002, 13030, 0, 'Flamewaker Sentinel', '', '', 0, 85, 85, 3, 0, 2170, 2170, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 0, 0, 53085, 53085, 0, 0, 0, 0, 0, 0, 0, 32323, 79881, 0, 0, 0, 0, 0, 0, 0, 1631, 2766, 2766, NULL, NULL, 'SmartAI', 0, 3, 1, 1.6, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53085, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53085;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(209405, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1336.2, 397.546, -73.0697, 3.03501, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209423, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1307.17, 288.114, -66.2833, 3.00252, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209468, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1298.92, 292.934, -62.632, 2.75762, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(227426, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1256.1, 322.105, -59.804, 2.72643, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(232804, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1224.2, 383.32, -50.9968, 1.50771, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(233906, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1185.56, 368.615, -54.6069, 3.29978, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234177, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1185.3, 318.985, -55.3262, 3.51717, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234195, 53085, 861, 5733, 5746, 1, 1, 0, 0, 1156.1, 347.926, -54.5638, 1.97282, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234219, 53085, 861, 5733, 5746, 1, 1, 0, 53085, 1381.73, 309.09, -91.5898, 3.2547, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(234235, 53085, 861, 5733, 5746, 1, 1, 0, 53085, 1359.15, 357.102, -91.7052, 6.21919, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(234237, 53085, 861, 5733, 5746, 1, 1, 0, 53085, 1396.69, 387.297, -87.9076, 2.92697, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(234240, 53085, 861, 5733, 5746, 1, 1, 0, 53085, 1355.35, 440.356, -74.7607, 3.93272, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);

-- 53152 creature_template y spawm 

DELETE FROM `creature_template` WHERE `entry`=53152;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53152, 0, 0, 0, 54339, 0, 38186, 38187, 31541, 0, 'Charhound', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1998, 2109, 0, 0, 4, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 53152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, NULL, NULL, '', 0, 3, 1, 0.4, 1, 1, 1, 0, 69816, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53152;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(209361, 53152, 861, 5733, 5746, 1, 14, 0, 0, 1178.44, 345.692, -53.507, 2.28208, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53093 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53093;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53093, 0, 0, 0, 0, 0, 31808, 19894, 15329, 0, 'Flamewaker Shaman', '', '', 0, 85, 85, 3, 0, 2170, 2170, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 0, 0, 53093, 53093, 0, 0, 0, 0, 0, 0, 0, 32062, 15096, 98210, 0, 0, 0, 0, 0, 0, 0, 2768, 2768, NULL, NULL, 'SmartAI', 0, 3, 1, 1.2, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53093, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53093;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(201585, 53093, 861, 5733, 5746, 1, 1, 0, 0, 1307.91, 384.623, -67.628, 5.11381, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(202773, 53093, 861, 5733, 5746, 1, 1, 0, 0, 1270.42, 302.567, -59.0589, 3.94816, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(208905, 53093, 861, 5733, 5746, 1, 1, 0, 0, 1252.8, 291.069, -60.9555, 3.50811, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209193, 53093, 861, 5733, 5746, 1, 1, 0, 0, 1203.51, 323.094, -56.7136, 2.50982, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209241, 53093, 861, 5733, 5746, 1, 1, 0, 0, 1161.74, 333.46, -54.2102, 3.54302, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209319, 53093, 861, 5733, 5746, 1, 1, 0, 53093, 1353.88, 316.403, -90.6746, 0.989525, 300, 0, 0, 77490, 4454, 0, 0, 0, 0, 0);

-- 53230 creature_template, spawm, aura y smartAI

DELETE FROM `creature_template` WHERE `entry`=53230;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53230, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature` WHERE `id`=53230;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234249, 53230, 861, 5733, 5746, 1, 31, 0, 0, 1255.61, 379.896, -38.6323, 6.07375, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234251, 53230, 861, 5733, 5746, 1, 31, 0, 0, 1209.15, 311.314, -37.6421, 3.64774, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234258, 53230, 861, 5733, 5746, 1, 31, 0, 0, 1205.89, 339.896, -35.5896, 1.53589, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234267, 53230, 861, 5733, 5746, 1, 31, 0, 0, 1204.91, 363.201, -51.2598, 1.46608, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=53230;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53230, 0, 0, 0, 0, 0, '98586');


DELETE FROM `smart_scripts` WHERE `entryorguid`=53230 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53230, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 53143 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53143;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53143, 0, 0, 0, 53093, 0, 31808, 19894, 15329, 0, 'Flamewaker Hunter', '', '', 0, 85, 85, 3, 0, 2170, 2170, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 0, 0, 53143, 53143, 0, 0, 0, 0, 0, 0, 0, 82707, 98169, 98393, 98369, 0, 0, 0, 0, 0, 0, 2764, 2764, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53143, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53143;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234259, 53143, 861, 5733, 5746, 1, 3, 0, 0, 1332.52, 438.17, -73.2118, 3.63844, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234268, 53143, 861, 5733, 5746, 1, 3, 0, 0, 1285.39, 299.636, -60.7558, 0.676263, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234270, 53143, 861, 5733, 5746, 1, 3, 0, 0, 1249.86, 304.191, -60.3133, 3.34863, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53099 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53099;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53099, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Wave Genesis Bunny', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `creature` WHERE `id`=53099;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(209424, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1279.63, 381.996, -64.8636, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209469, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1273.5, 387.837, -65.3341, 5.44442, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(227427, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1271.12, 337.698, -62.0975, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(232805, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1254.67, 327.771, -61.2534, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(233907, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1246.13, 347.238, -57.1849, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234178, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1241.7, 365.969, -54.1969, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234196, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1240.16, 378.991, -52.4873, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234238, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1239.68, 308.896, -60.5108, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234244, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1222.38, 324.724, -57.6951, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234246, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1209.94, 315.406, -57.4942, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234252, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1188.01, 312.682, -56.1549, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234260, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1169.52, 314.514, -54.5535, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(234532, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1157.03, 329.748, -54.7216, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(237954, 53099, 861, 5733, 5746, 1, 1, 0, 0, 1145.73, 351.285, -55.4024, 5.49779, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53233 creature_template, aura, smartAI, spawm y enlace AI

DELETE FROM `creature_template` WHERE `entry`=53233;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53233, 0, 0, 0, 0, 0, 29213, 0, 0, 0, 'Anren Shadowseeker', '', '', 50842, 80, 80, 3, 0, 2369, 2369, 3, 1, 1.14286, 1, 1.14286, 1, 1, 1266, 1778, 0, 0, 5, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 5, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=53233;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53233, 0, 0, 0, 0, 0, '49414');


DELETE FROM `creature` WHERE `id`=53233;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242416, 53233, 861, 5733, 5746, 1, 1, 0, 0, 1455.89, 315.773, -93.3707, 2.66341, 300, 0, 0, 36865, 7988, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53233 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53233, 0, 0, 0, 62, 0, 100, 0, 50842, 0, 0, 0, 80, 5323300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=5323300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5323300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 98590, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5323300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5323300, 9, 2, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 54323 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=54323;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54323, 0, 0, 0, 0, 0, 38453, 0, 0, 0, 'Kirix', '', '', 0, 85, 85, 3, 0, 16, 16, 0, 1, 1.14286, 1.11111, 1.14286, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 1, 32832, 2048, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101319, 2649, 101302, 101340, 4167, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 12.9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54323;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242417, 54323, 861, 5733, 5745, 1, 15, 0, 0, 1226.98, 596.295, 60.5048, 2.25362, 28800, 0, 0, 756727, 0, 0, 0, 0, 0, 0);

-- 53240 creature_template, spamw y smartAI

DELETE FROM `creature_template` WHERE `entry`=53240;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53240, 0, 0, 0, 0, 0, 37539, 0, 0, 0, 'Emberspit Scorpion', '', '', 0, 85, 85, 3, 0, 2156, 2156, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 32768, 2048, 0, 20, 0, 0, 0, 0, 356, 517, 0, 1, 1, 0, 53240, 0, 53240, 0, 0, 0, 0, 0, 0, 53148, 98714, 11985, 2649, 24394, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53240;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(233908, 53240, 861, 5733, 5740, 1, 31, 0, 0, 1279.34, 371.326, 22.4881, 1.01169, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(234179, 53240, 861, 5733, 5740, 1, 31, 0, 0, 1268.63, 365.927, 22.5326, 3.99451, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(234197, 53240, 861, 5733, 5740, 1, 31, 0, 0, 1260.99, 452.679, 23.2184, 1.82771, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(234253, 53240, 861, 5733, 5740, 1, 31, 0, 0, 1246.88, 337.246, 22.5906, 2.90377, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(234261, 53240, 861, 5733, 5739, 1, 31, 0, 0, 1224.69, 443.444, 22.566, 2.90914, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(234533, 53240, 861, 5733, 5739, 1, 31, 0, 0, 1213.04, 287.02, 21.4349, 1.49422, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(238080, 53240, 861, 5733, 5739, 1, 31, 0, 0, 1184.11, 425.818, 16.039, 0.768456, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(238084, 53240, 861, 5733, 5739, 1, 31, 0, 0, 1156.94, 347.164, 16.4664, 4.26618, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(238088, 53240, 861, 5733, 5739, 1, 31, 0, 0, 1173.12, 298.021, 16.371, 1.30207, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0),
(240098, 53240, 861, 5733, 5739, 1, 31, 0, 0, 1127.7, 276.48, 16.0837, 3.42714, 120, 25, 0, 1, 0, 1, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53240 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53240, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 22000, 35000, 11, 98714, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, ''),
(53240, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 12000, 15000, 11, 11985, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '');

-- 52531 creature_template, spawm, aura, smartAI y enlace AI

DELETE FROM `creature_template` WHERE `entry`=52531;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (52531, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Fire Attacker Portal', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=52531;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(201580, 52531, 861, 5733, 5740, 1, 14, 0, 0, 1243.34, 371.552, 16.0473, 3.22886, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(201586, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1211.4, 337.227, 16.6613, 2.68781, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(202774, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1192.66, 426.556, 16.0955, 3.90954, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(208906, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1187.95, 319.609, 16.4541, 2.49582, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209194, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1175.08, 289.078, 16.4541, 2.28638, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209362, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1167.73, 371.552, 16.4541, 3.26377, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209406, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1157.98, 431.879, 16.8165, 3.90954, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209470, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1141.22, 307.476, 16.4503, 2.40855, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(227428, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1126.03, 262.03, 16.844, 1.8326, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(232806, 52531, 861, 5733, 5739, 1, 14, 0, 0, 1081.13, 276.201, 16.807, 1.51844, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);



DELETE FROM `creature_template_addon` WHERE `entry`=52531;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52531, 0, 0, 0, 0, 0, '97124');



DELETE FROM `smart_scripts` WHERE `entryorguid`=52531 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52531, 0, 0, 0, 1, 0, 100, 0, 3000, 6000, 3000, 6000, 11, 98162, 0, 0, 0, 0, 0, 11, 53083, 6, 0, 0, 0, 0, 0, ''),
(52531, 0, 0, 1, 38, 0, 100, 0, 0, 1, 0, 0, 80, 5253100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=5253100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5253100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 5, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 98183, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 8, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 28, 98184, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 52531, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 53083, 40, 0, 0, 0, 0, 0, ''),
(5253100, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 99977, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5253100, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 53090 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53090;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53090, 0, 0, 0, 52633, 0, 38002, 11686, 0, 0, 'Lava Burster', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 53090, 0, 0, 0, 0, 0, 0, 0, 0, 97549, 97306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1.2, 1, 1, 1, 0, 69723, 69725, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53090;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196247, 53090, 861, 5733, 5740, 1, 1, 0, 0, 1365.59, 291.887, 20.5443, 3.87669, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196257, 53090, 861, 5733, 5740, 1, 1, 0, 0, 1358.37, 300.66, 20.5495, 3.63029, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196282, 53090, 861, 5733, 5740, 1, 1, 0, 0, 1323.9, 274.361, 20.4219, 3.7216, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196325, 53090, 861, 5733, 5740, 1, 1, 0, 0, 1291.28, 300.392, 21.25, 4.46804, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(200836, 53090, 861, 5733, 5740, 1, 1, 0, 0, 1270.09, 276.734, 21.0566, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(200842, 53090, 861, 5733, 5739, 1, 1, 0, 0, 1225.75, 346.21, 15.7067, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(201573, 53090, 861, 5733, 5739, 1, 1, 0, 0, 1211.92, 378.063, 15.6109, 5.65772, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);
 
-- 52660 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52660;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52660, 0, 0, 0, 0, 0, 38013, 0, 0, 0, 'Fire Hawk', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.44444, 1.5873, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 4, 0, 0, 52660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52660;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195726, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1397.99, 621.146, 116.182, 0.506519, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(195739, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1382.95, 691.585, 116.897, 6.02139, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(195751, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1328.06, 581.111, 99.342, 2.67664, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(195763, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1293.45, 685.326, 90.0517, 3.42085, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196176, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1292.95, 642.493, 78.4825, 1.55334, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196219, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1281.45, 725.033, 77.6562, 5.8234, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196233, 52660, 861, 5733, 5748, 1, 2, 0, 0, 1380.34, 610.144, 117.039, 0.142872, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);



DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=53297;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 53297, 98757, 0, 0, 9, 0, 29290, 0, 0, 0, 0, 0, '', '');

-- 53297 creature_template, spawm, smartAI, enlace AI

DELETE FROM `creature_template` WHERE `entry`=53297;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53297, 0, 0, 0, 0, 0, 38265, 0, 0, 0, 'Trained Fire Hawk', '', 'vehichleCursor', 0, 85, 85, 3, 0, 2252, 2252, 16777216, 1, 1.14286, 1.44444, 1.5873, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 16777220, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53297;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242506, 53297, 861, 5733, 5745, 1, 6, 0, 0, 1248.03, 529.969, 60.1635, 5.65487, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53297;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(53297, 98757, 2, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=53297 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53297, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5329700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=5329700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5329700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5329700, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 81, 16777216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 53259 creature_template, spawm, smartAI y spell DBC

DELETE FROM `creature_template` WHERE `entry`=53259;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53259, 0, 0, 0, 0, 0, 21136, 0, 0, 0, 'Arthorn Windsong', 'Druid of the Talon', '', 12897, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 1778, 1909, 0, 0, 4, 2000, 2000, 2, 33536, 34816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 5, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53259;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242498, 53259, 861, 5733, 5745, 1, 4, 0, 0, 1254.23, 525.32, 60.9585, 0.296706, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=53259 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53259, 0, 0, 0, 62, 0, 100, 0, 12897, 0, 0, 0, 85, 101177, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `spell_dbc` WHERE `Id`=101177;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(101177, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `spelleffect_dbc` WHERE `Id`=155981;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155981, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101177, 0);

-- 52491 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52491;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52491, 0, 0, 0, 0, 0, 32251, 0, 0, 0, 'Morthis Whisperwing', 'Druid of the Talon', '', 0, 85, 85, 3, 0, 2252, 2252, 2, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52491;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242465, 52491, 861, 5733, 5745, 1, 4, 0, 0, 1255.93, 522.974, 60.4901, 0.506145, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52478 creature_template y apawm

DELETE FROM `creature_template` WHERE `entry`=52478;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52478, 0, 0, 0, 0, 0, 29213, 0, 0, 0, 'Anren Shadowseeker', '', '', 12968, 80, 80, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.38571, 1, 1, 1468, 1761, 0, 0, 4, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52478;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242426, 52478, 861, 5733, 5742, 1, 4, 0, 0, 1178.12, 151.134, 63.1317, 5.00188, 300, 0, 0, 36865, 7988, 0, 0, 134217728, 0, 0),
(242428, 52478, 861, 5733, 5745, 1, 4, 0, 0, 1230.29, 506.891, 59.1917, 5.77398, 300, 0, 0, 36865, 7988, 0, 0, 134217728, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=52478;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52478, 0, 14332, 0, 0, 0, NULL);

-- 52477 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52477;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52477, 0, 0, 0, 0, 0, 31777, 0, 0, 0, 'Tholo Whitehoof', '', '', 12966, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5.0476, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52477, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52477;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234534, 52477, 861, 5733, 5742, 1, 4, 0, 52477, 1179.46, 146.609, 63.4349, 1.80553, 300, 0, 0, 586610, 22270, 0, 0, 0, 0, 0),
(240099, 52477, 861, 5733, 5745, 1, 4, 0, 52477, 1233.98, 503.978, 59.1917, 2.52745, 300, 0, 0, 586610, 22270, 0, 0, 0, 0, 0);

-- 52492 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52492;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52492, 0, 0, 0, 0, 0, 32253, 0, 0, 0, 'Choluna', 'Druid of the Talon', '', 12896, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52492;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234262, 52492, 861, 5733, 5745, 1, 4, 0, 0, 1254.9, 501.519, 60.6848, 0.942478, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


-- 53304 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53304;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53304, 0, 0, 0, 0, 0, 26243, 0, 0, 0, 'Ricket', '', '', 12840, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53304;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234254, 53304, 861, 5733, 5745, 1, 4, 0, 0, 1253.03, 502.123, 61.7115, 0.872665, 120, 0, 0, 586610, 0, 0, 0, 0, 0, 0);

-- 53245 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53245;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53245, 0, 0, 0, 52660, 0, 38013, 0, 0, 0, 'Fire Hawk', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.44444, 1.5873, 1, 0, 619.2, 835.2, 0, 0, 4.6, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 53245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53245;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(240100, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1351.41, 549.746, 109.278, 2.93507, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242429, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1306.53, 629.849, 132.404, 5.23367, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242483, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1300.3, 642.775, 132.404, 1.94642, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242490, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1272.02, 651.727, 119.371, 4.8731, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242507, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1490.83, 711.687, 79.1497, 3.33693, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(242510, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1455.78, 617.777, 104.069, 2.88314, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(242523, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1435.48, 696.546, 107.991, 4.55447, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(242539, 53245, 861, 5733, 5748, 1, 1, 0, 0, 1416.12, 547.926, 139.105, 0.768222, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=53245;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53245, 0, 0, 50331648, 1, 0, NULL);

-- 53243  creature_template, condiciones, spawm, aura, textos, smartAI y ensalase AI

DELETE FROM `creature_template` WHERE `entry`=53243;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53243, 0, 0, 0, 0, 0, 38250, 38251, 38253, 38252, 'Injured Druid of the Talon', '', 'openhandglow', 0, 85, 85, 3, 0, 2252, 2252, 16777216, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=53243;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 53243, 98662, 0, 0, 9, 0, 29293, 0, 0, 0, 0, 0, '', '');

DELETE FROM `creature` WHERE `id`=53243;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(201587, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1389.18, 735.075, 96.7225, 2.93215, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(202775, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1367.2, 702.087, 117.653, 1.62316, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(208907, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1360.23, 614.354, 117.008, 0.523599, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209195, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1331.74, 597.543, 101.089, 2.60054, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209363, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1327.23, 669.059, 110.621, 2.30383, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209407, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1303.62, 621.014, 79.8487, 6.19592, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(209471, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1303.29, 699.904, 89.2883, 1.50098, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(227429, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1337.18, 718.669, 90.496, 5.4114, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(232807, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1277.31, 713.031, 77.3643, 0.550436, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(233909, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1436.61, 596.179, 94.8905, 0.0517089, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234180, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1374.48, 526.496, 84.3339, 0.180863, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234198, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1484.26, 583.048, 80.0376, 1.85477, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234255, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1529.69, 641.698, 85.906, 1.20747, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234263, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1480.14, 700.348, 92.1404, 2.46655, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234535, 53243, 861, 5733, 5748, 1, 6, 0, 0, 1393.83, 760.399, 78.3827, 4.04795, 30, 0, 0, 58661, 0, 0, 0, 0, 0, 0);



DELETE FROM `creature_template_addon` WHERE `entry`=53243;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53243, 0, 0, 0, 0, 0, '97664 96733 ');



DELETE FROM `creature_text` WHERE `entry`=53243;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(53243, 0, 0, 'These are harsher skies than any of us could have known..', 12, 0, 100, 0, 0, 0, 0, ''),
(53243, 0, 1, 'Thank you, $N. I might have died out here if not for you.', 12, 0, 100, 0, 0, 0, 0, ''),
(53243, 0, 2, 'The matriarch knocked me right out of the sky. I\'m lucky to be alive.', 12, 0, 100, 0, 0, 0, 51799, ''),
(53243, 0, 3, 'These thermals have made flying here nearly suicidal. Thank you for coming for us.', 12, 0, 100, 0, 0, 0, 51800, ''),
(53243, 0, 4, 'It will be some time before I can recover from these injures. Still, I\' glad to be alive.', 12, 0, 100, 0, 0, 0, 0, ''),
(53243, 0, 5, 'You have my thanks. Stay safe, $N.', 12, 0, 100, 0, 0, 0, 0, '');


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53243;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(53243, 98662, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53243 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53243, 0, 0, 0, 8, 0, 100, 0, 98662, 0, 0, 0, 80, 5324300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=5324300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5324300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5324300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 97664, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5324300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 96733, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5324300, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 53243, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5324300, 9, 4, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5324300, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5324300, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 52107 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52107;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52107, 0, 0, 0, 0, 0, 2169, 0, 0, 0, 'Obsidium Punisher', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.2, 0.857143, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 4, 520, 0, 52107, 0, 52107, 0, 0, 0, 0, 0, 0, 98589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 1, 1, 1, 0, 52506, 0, 0, 0, 0, 0, 103, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52107;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242430, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1282.53, 620.731, 77.8673, 3.25327, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242484, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1324.67, 558.593, 80.815, 3.07991, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0),
(242491, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1403.19, 552.842, 79.458, 3.28795, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0),
(242508, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1457.71, 551.565, 79.6216, 0.0953951, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0),
(242511, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1501.12, 603.877, 80.4711, 3.50023, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0),
(242524, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1483.82, 660.568, 93.3057, 5.71767, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0),
(242540, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1432.31, 751.564, 77.9047, 4.10363, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0),
(242581, 52107, 861, 5733, 5748, 1, 2, 0, 0, 1368.04, 742.887, 79.7199, 2.5002, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0);


-- 53275 creature_template, spawm, condiciones, spell para npc y smartAI

DELETE FROM `creature_template` WHERE `entry`=53275;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53275, 0, 0, 0, 0, 0, 38814, 0, 0, 0, 'Fire Hawk Hatchling', '', 'Pickup', 0, 85, 85, 3, 0, 7, 7, 16777216, 1, 1.14286, 1.44444, 1.5873, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53275;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(209196, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1475.84, 673.628, 93.9289, 4.39786, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(209364, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1465.88, 692.111, 93.7131, 1.55529, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(209408, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1370.69, 647.818, 134.31, 5.18762, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(209472, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1383.58, 667.545, 134.133, 5.39732, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(227430, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1364.71, 661.524, 134.433, 3.39377, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(232808, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1329.21, 652.643, 107.088, 5.36237, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(233910, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1339.1, 643.417, 106.709, 2.14381, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234181, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1292.85, 658.563, 79.2623, 3.26872, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234199, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1301.98, 638.457, 78.9214, 5.15446, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234256, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1444.72, 559.697, 78.8177, 0.580253, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234264, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1460.35, 569.944, 77.3097, 0.580253, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(234536, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1395.17, 688.664, 116.728, 5.52368, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(240101, 53275, 861, 5733, 5748, 1, 2, 0, 0, 1320.91, 698.192, 88.7761, 3.89393, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=53275;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 53275, 98725, 0, 0, 9, 0, 29288, 0, 0, 0, 0, 0, '', '');


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53275;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(53275, 98725, 2, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53275 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53275, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(53275, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 52984 creature_template, spawm y aura

DELETE FROM `creature_template` WHERE `entry`=52984;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52984, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=52984;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195727, 52984, 861, 5733, 5748, 1, 31, 0, 0, 1400.54, 558.689, 79.8695, 3.87463, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(195740, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1490.99, 619.544, 79.2789, 5.42369, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(195752, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1482.63, 651.228, 87.4258, 5.06677, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(195764, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1446.93, 651.433, 104.075, 4.82037, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(196177, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1434.85, 699.333, 107.847, 6.09075, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(196258, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1457.95, 694.612, 93.6522, 0.216144, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(196283, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1358.1, 564.242, 81.2818, 5.09165, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(196326, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1289.39, 672.922, 81.1989, 3.82181, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(200837, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1409.51, 719.568, 100.338, 2.24535, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(200843, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1403.63, 686.32, 118.17, 2.2905, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(201574, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1398.88, 639.188, 127.098, 5.75782, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(201581, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1415.57, 598.064, 94.9947, 0.738987, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(201588, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1343.95, 689.516, 110.895, 3.47828, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(202776, 52984, 861, 5733, 5748, 1, 2, 0, 0, 1360.48, 736.769, 80.2359, 1.71842, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52984;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52984, 0, 0, 0, 0, 0, '97966');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52984 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52984, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 52162 creature_template, spawm, aura y smartAI

DELETE FROM `creature_template` WHERE `entry`=52162;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (52162, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=52162;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242644, 52162, 861, 5733, 5748, 1, 31, 0, 0, 1278.19, 583.528, 77.6112, 0.314159, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);



DELETE FROM `creature_template_addon` WHERE `entry`=52162;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52162, 0, 0, 0, 0, 0, '97963');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52162 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52162, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 54515 creature_template, spawm, aura y smartAI

DELETE FROM `creature_template` WHERE `entry`=54515;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54515, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=54515;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242636, 54515, 861, 5733, 5748, 1, 31, 0, 0, 1326.09, 508.252, 69.213, 3.97935, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242638, 54515, 861, 5733, 5748, 1, 31, 0, 0, 1276.04, 544.646, 75.0502, 3.92699, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=54515;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54515, 0, 0, 0, 0, 0, '101851');


DELETE FROM `smart_scripts` WHERE `entryorguid`=54515 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54515, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 50959 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=50959;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(50959, 0, 0, 0, 0, 0, 1062, 0, 0, 0, 'Karkin', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 4, 2, 2, 0, 24, 1, 2000, 2000, 1, 64, 2048, 0, 8, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 50959, 0, 0, 0, 0, 0, 0, 0, 0, 53148, 100095, 86694, 100093, 21402, 2649, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `id`=50959;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242620, 50959, 861, 5733, 5748, 1, 1, 0, 0, 1288.29, 535.311, 70.339, 0.326499, 300, 0, 0, 154980, 0, 0, 0, 0, 0, 0);

-- 50815 creature_template, spawm y condiciones 

DELETE FROM `creature_template` WHERE `entry`=50815;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(50815, 0, 0, 0, 0, 0, 19607, 0, 0, 0, 'Skarr', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 4, 2, 2, 0, 24, 1, 2000, 2000, 1, 64, 2048, 0, 2, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 50815, 0, 0, 0, 0, 0, 0, 0, 0, 53148, 70893, 100095, 86694, 100093, 21402, 19615, 2649, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `id`=50815;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242617, 50815, 861, 5733, 5748, 1, 1, 0, 0, 1287.96, 541.505, 53.8655, 4.18879, 28800, 0, 0, 1, 0, 0, 0, 0, 0, 0);



DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=50815;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 50815, 0, 0, 0, 9, 0, 14318, 0, 0, 0, 0, 0, '', '');

-- 53249 script en C++, creature_template y spawm 
DELETE FROM `creature_template` WHERE `entry`=53249;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53249, 0, 0, 0, 0, 0, 38259, 0, 0, 0, 'Fire Hawk Matriarch', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.2, 0.714286, 1, 1, 619.2, 835.2, 0, 0, 4.6, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 53249, 0, 0, 0, 0, 0, 0, 0, 0, 43509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 7, 1, 3.5, 5.0476, 1, 1, 0, 0, 0, 0, 0, 0, 0, 91, 1, 0, 0, 0, 'npc_firehawk', 15595);


DELETE FROM `creature` WHERE `id`=53249;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242610, 53249, 861, 5733, 5748, 1, 2, 0, 0, 1368.36, 665.774, 138.933, 5.61679, 120, 0, 0, 205314, 22270, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=53249;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53249, 0, 0, 50331648, 1, 0, NULL);

-- 53192 creature_template, spawm, aura, condiciones y smartAI

DELETE FROM `creature_template` WHERE `entry`=53192;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53192, 0, 0, 0, 0, 0, 40060, 0, 0, 0, 'Central Pool Credit', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554944, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=98511;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 98511, 0, 2, 29, 0, 53192, 3, 0, 0, 0, 0, '', ''),
(17, 0, 98511, 0, 1, 29, 0, 53191, 3, 0, 0, 0, 0, '', ''),
(17, 0, 98511, 0, 0, 29, 0, 53190, 3, 0, 0, 0, 0, '', '');

DELETE FROM `creature` WHERE `id`=53192;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242655, 53192, 861, 5733, 5748, 1, 2, 0, 0, 1377.61, 669.897, 133.282, 3.95677, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=53192;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53192, 0, 0, 0, 0, 0, '78931');


DELETE FROM `smart_scripts` WHERE `entryorguid`=53192 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53192, 0, 0, 0, 8, 0, 100, 0, 30012, 0, 0, 0, 33, 53192, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 52552 creature_template,spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=52552;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52552, 0, 0, 0, 0, 0, 38850, 38851, 0, 0, 'Molten Behemoth', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.6, 0.571429, 1, 1, 1007, 1007, 0, 0, 3, 2000, 2000, 1, 16384, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 512, 0, 52552, 0, 52552, 0, 0, 0, 0, 0, 0, 97247, 97243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 84, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52552;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242618, 52552, 861, 5733, 5740, 1, 14, 0, 0, 1243.09, 446.955, 22.7305, 3.46576, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242639, 52552, 861, 5733, 5739, 1, 14, 0, 0, 1208.59, 374.356, 15.9996, 3.73969, 30, 0, 0, 154980, 0, 0, 0, 540672, 0, 0),
(242645, 52552, 861, 5733, 5739, 1, 14, 0, 0, 1224.78, 284.741, 22.1332, 2.78305, 30, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242652, 52552, 861, 5733, 5740, 1, 14, 0, 0, 1378.7, 386.563, 22.7954, 3.13172, 30, 0, 0, 154980, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52552 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52552, 0, 0, 0, 0, 0, 100, 0, 3000, 8000, 20000, 45000, 11, 97247, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(52552, 0, 1, 0, 0, 0, 100, 0, 10000, 20000, 30000, 50000, 11, 97243, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '');

-- 52633 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52633;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52633, 0, 0, 0, 0, 0, 38002, 0, 0, 0, 'Lava Burster', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1, 1, 1, 0, 1365, 1906, 0, 1707, 3, 2000, 2000, 1, 32768, 2048, 4, 0, 0, 0, 0, 0, 356, 517, 0, 1, 0, 0, 52633, 0, 0, 0, 0, 0, 0, 0, 0, 97549, 97306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.2, 1, 1, 1, 0, 69723, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=52633;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(234537, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1313.65, 381.618, 20.8522, 1.82307, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(240102, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1342.39, 417.382, 20.9543, 5.93515, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242431, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1360.23, 306.6, 20.8935, 2.84553, 300, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242485, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1311.12, 279.323, 20.6139, 3.38278, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242492, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1250.55, 268.718, 20.9685, 2.78566, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242512, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1265.92, 348.57, 20.964, 3.83988, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242525, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1291.47, 318.605, 20.823, 1.13929, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242541, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1302.86, 345.588, 21.1, 4.50123, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242604, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1335.12, 352.59, 20.7972, 2.99309, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0),
(242611, 52633, 861, 5733, 5740, 1, 2, 0, 0, 1271.03, 398.315, 20.7179, 2.69145, 90, 0, 0, 154980, 0, 0, 0, 0, 0, 0);


-- 54429 creature_template, spawm y textos

DELETE FROM `creature_template` WHERE `entry`=54429;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54429, 0, 0, 0, 0, 0, 38793, 0, 0, 0, 'Avatar of Baleroc', '', '', 0, 85, 85, 3, 0, 7, 7, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2771, 3154, 0, 0, 5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 50, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54429;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242881, 54429, 861, 5733, 5739, 1, 1, 0, 0, 1180.51, 370.724, 33.544, 3.21666, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);



DELETE FROM `creature_text` WHERE `entry`=54429;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(54429, 0, 0, 'The master will see you all consumed.', 12, 0, 0, 0, 0, 24457, 0, ''),
(54429, 0, 1, 'Be swallowed by a sea of flame!', 12, 0, 0, 0, 0, 24458, 0, ''),
(54429, 0, 2, 'None may enter the master\'s domain!', 12, 0, 0, 0, 0, 24460, 0, ''),
(54429, 0, 3, 'Burn beneath my molten fury.', 12, 0, 0, 0, 0, 24459, 0, '');

-- 32520 creature_template, spawm

DELETE FROM `creature_template` WHERE `entry`=32520;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(32520, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Totally Generic Bunny (All Phase)', '', '', 0, 60, 60, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 104, 138, 0, 252, 1.7, 2000, 2000, 1, 256, 1073743872, 8, 0, 0, 0, 0, 0, 72, 106, 26, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);


DELETE FROM `creature_template_addon` WHERE `entry`=32520;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(32520, 0, 0, 0, 1, 0, NULL);


DELETE FROM `creature` WHERE `id`=32520;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242863, 32520, 861, 5733, 5739, 1, 1, 0, 0, 1184.01, 370.983, 28.1296, 3.12414, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242869, 32520, 1, 5034, 5669, 1, 1, 21342, 0, -9299.88, 464.557, 246.914, 0, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(242876, 32520, 1, 5034, 5602, 1, 1, 21342, 0, -10514, 989.495, 57.1806, 0, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0);

-- 52662 creature_template, spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=52662;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52662, 0, 0, 0, 0, 0, 38064, 0, 0, 0, 'Unstable Flamerager', '', '', 0, 85, 85, 3, 0, 7, 7, 0, 1, 1.14286, 1, 1.14286, 1, 0, 1671, 2077, 0, 0, 4, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97884, 97735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 103, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52662;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242657, 52662, 861, 5733, 5739, 1, 6, 0, 0, 1203.18, 302.621, 18.5175, 2.71069, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242714, 52662, 861, 5733, 5741, 1, 6, 0, 0, 1193.36, 213.467, 3.34552, 4.0184, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242825, 52662, 861, 5733, 5741, 1, 6, 0, 0, 1176.59, 189.372, 4.33703, 4.7515, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52662 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52662, 0, 0, 0, 8, 0, 100, 0, 98085, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52662, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 8000, 16000, 11, 97884, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '');

-- 53193 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53193;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53193, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Meteor Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=53193;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242653, 53193, 861, 5733, 5740, 1, 1, 0, 0, 1308.45, 385.157, 21.6479, 5.65487, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53373 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53373;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53373, 0, 0, 0, 0, 0, 28726, 39970, 0, 0, 'Magnetic Stone', '', 'Interact', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1611661312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53373;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(242432, 53373, 861, 5733, 5740, 1, 1, 0, 0, 1352.11, 377.413, 22.5364, 0.837758, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242493, 53373, 861, 5733, 5740, 1, 1, 0, 0, 1349.04, 284.415, 23.0879, 1.95477, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242513, 53373, 861, 5733, 5740, 1, 1, 0, 0, 1314.03, 437.087, 22.5794, 1.97222, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242640, 53373, 861, 5733, 5740, 1, 1, 0, 0, 1300.3, 339.262, 22.2501, 4.45059, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(242646, 53373, 861, 5733, 5740, 1, 1, 0, 0, 1296.89, 396.707, 22.2072, 5.65487, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 70042 creature_template, spawm, condiciones y aura

DELETE FROM `creature_template` WHERE `entry`=70042;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(70042, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'MF - The Forlorn Spire - Trigger', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 3.8, 3.8, 0, 46, 1, 2000, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);


DELETE FROM `creature` WHERE `id`=70042;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(240103, 70042, 861, 5733, 5739, 1, 2, 0, 0, 1143.45, 284.386, 16.7609, 5.72618, 90, 0, 0, 57, 0, 0, 0, 33554432, 0, 0);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=70042;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 70042, 0, 0, 29, 0, 52964, 50, 0, 1, 0, 0, '', ''),
(22, 1, 70042, 0, 0, 29, 0, 52854, 50, 0, 1, 0, 0, '', ''),
(22, 1, 70042, 0, 0, 9, 0, 29205, 0, 0, 0, 0, 0, '', '');


DELETE FROM `creature_template_addon` WHERE `entry`=70042;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(70042, 0, 0, 0, 0, 0, '49414');


DELETE FROM `smart_scripts` WHERE `entryorguid`=70042 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(70042, 0, 0, 0, 10, 0, 100, 0, 1, 20, 1000, 8000, 80, 7004200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=7004200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(7004200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52854, 2, 150000, 0, 0, 0, 8, 0, 0, 0, 1144.93, 279.555, 16.7614, 5.66403, ''),
(7004200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52964, 2, 150000, 0, 0, 0, 8, 0, 0, 0, 1148.3, 285.745, 16.7453, 5.72424, '');

-- 53003 creature_template, spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=53003;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53003, 0, 0, 0, 0, 0, 31228, 31229, 31230, 31231, 'Hyjal Druid', '', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 2, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 786382847, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53003;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262571, 53003, 861, 5733, 5739, 1, 1, 0, 0, 1159.01, 289.786, 16.4676, 5.11381, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53003 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53003, 0, 0, 0, 1, 0, 100, 0, 3000, 8000, 20000, 30000, 11, 9739, 0, 0, 0, 0, 0, 11, 53152, 38, 0, 0, 0, 0, 0, ''),
(53003, 0, 1, 0, 1, 0, 100, 0, 10000, 20000, 30000, 50000, 11, 9739, 0, 0, 0, 0, 0, 11, 52504, 38, 0, 0, 0, 0, 0, ''),
(53003, 0, 2, 0, 0, 0, 100, 0, 10000, 20000, 30000, 50000, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(53003, 0, 3, 0, 1, 0, 100, 0, 60000, 60000, 120000, 200000, 11, 79833, 0, 0, 0, 0, 0, 21, 28, 0, 0, 0, 0, 0, 0, ''),
(53003, 0, 4, 0, 1, 0, 100, 0, 6000, 6000, 15000, 26000, 11, 97426, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, '');

-- 52935 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52935;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52935, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Marin Bladewing', '', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_molten_front_marin_bladewing', 15595);


DELETE FROM `creature` WHERE `id`=52935;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262572, 52935, 861, 5733, 5739, 1, 2, 0, 0, 1154.49, 271.6, 18.1784, 5.53048, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);

-- 52955 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52955;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52955, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Sira Moonwarden', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52955;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262292, 52955, 861, 5733, 5739, 1, 2, 0, 0, 1157.38, 275.331, 17.2124, 5.41006, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);

-- 52965 creature_template, spawm y textos

DELETE FROM `creature_template` WHERE `entry`=52965;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52965, 0, 0, 0, 0, 0, 7618, 0, 0, 0, 'Keeper Taldros', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1.11111, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 3, 3.02856, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52965;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262234, 52965, 861, 5733, 5739, 1, 2, 0, 0, 1161.8, 274.953, 18.3566, 5.47569, 120, 0, 0, 175983, 13362, 0, 0, 0, 0, 0);


DELETE FROM `creature_text` WHERE `entry`=52965;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52965, 0, 0, 'Come brothers and sisters. It is time to take this foul tower from the hands of our enemies.', 14, 0, 100, 0, 0, 0, 0, 'Keeper Taldros to Player'),
(52965, 1, 0, 'Press on!  Push towards the tower!', 14, 0, 100, 0, 0, 0, 0, 'Keeper Taldros to Captain Saynna Stormrunner'),
(52965, 2, 0, 'Their leader is here! Strike him down!', 14, 0, 100, 0, 0, 0, 0, 'Keeper Taldros to Player'),
(52965, 3, 0, 'Well done, friends! The tower is ours! Now I shall see to the destruction of this foul monument.', 12, 0, 100, 1, 0, 0, 0, 'Keeper Taldros to Player');

-- 52934 creature_template, spamw y aura

DELETE FROM `creature_template` WHERE `entry`=52934;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52934, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shadow Warden', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52934, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52934;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262175, 52934, 861, 5733, 5739, 1, 2, 0, 52934, 1165.74, 277.347, 18.6777, 5.13408, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52934;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52934, 0, 0, 0, 1, 333, '49414');

-- 52663 creature_template,aura y spamw

DELETE FROM `creature_template` WHERE `entry`=52663;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52663, 0, 0, 0, 0, 0, 36419, 0, 0, 0, 'Flamewatch Sentinel', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1, 1.14286, 1, 1, 800.8, 1200.8, 0, 232, 2, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 52663, 0, 0, 0, 0, 0, 0, 0, 0, 56858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 7, 1, 3, 1.00952, 1, 1, 0, 52506, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=52663;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52663, 0, 0, 0, 0, 0, '49414');


DELETE FROM `creature` WHERE `id`=52663;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262046, 52663, 861, 5733, 5742, 1, 1, 0, 0, 1195.86, 218.877, 52.3257, 4.78663, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262051, 52663, 861, 5733, 5742, 1, 1, 0, 0, 1190.52, 210.567, 54.696, 3.6131, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262068, 52663, 861, 5733, 5742, 1, 1, 0, 0, 1169.98, 175.764, 59.9991, 2.9147, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262099, 52663, 861, 5733, 5742, 1, 1, 0, 0, 1163.13, 166.076, 60.2347, 1.95477, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52661 creature_template y spamw

DELETE FROM `creature_template` WHERE `entry`=52661;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52661, 0, 0, 0, 54343, 0, 38015, 0, 0, 0, 'Druid of the Flame', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1.44444, 1.5873, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18543, 31279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=52661;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52661, 0, 0, 50331648, 1, 0, NULL);


DELETE FROM `creature` WHERE `id`=52661;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(260038, 52661, 861, 5733, 5742, 1, 6, 0, 0, 1206.9, 216.363, 89.5048, 0.845012, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(260040, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1323.6, 53.135, 84.3709, 0.152694, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260043, 52661, 861, 5733, 5733, 1, 1, 0, 0, 1363.56, 29.7339, 79.0719, 0.121103, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260059, 52661, 861, 5733, 5744, 1, 6, 0, 0, 1439, 48.3636, 82.6568, 2.62417, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260069, 52661, 861, 5733, 5744, 1, 6, 0, 0, 1412.4, 56.287, 98.7568, 3.10876, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260071, 52661, 861, 5733, 5733, 1, 1, 0, 0, 1381.3, 25.471, 104.176, 4.07716, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260117, 52661, 861, 5733, 5744, 1, 6, 0, 0, 1424.42, 89.7575, 95.4399, 0.427409, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260119, 52661, 861, 5733, 5744, 1, 6, 0, 0, 1460, 132.562, 76.1, 1.4877, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260123, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1442.66, 183.456, 66.8884, 1.95894, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260197, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1407.58, 229.248, 98.2341, 3.09462, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260241, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1330.1, 131.161, 97.0807, 3.9808, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(260246, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1333.29, 104.08, 87.065, 5.80284, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(261954, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1285.63, 83.9145, 109.49, 5.05217, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(261970, 52661, 861, 5733, 5743, 1, 6, 0, 0, 1314.79, 65.085, 85.3051, 6.11245, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

-- 53753 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53753;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53753, 0, 0, 0, 0, 0, 38543, 0, 0, 0, 'Cinderweb Broodling', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.11111, 1.14286, 1, 0, 1365, 1906, 0, 1707, 1, 2000, 2000, 1, 32768, 2048, 0, 3, 0, 0, 0, 0, 356, 517, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 0.1, 0.1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53753;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(258158, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1389.43, 167.842, 58.9056, 3.80023, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258183, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1360.62, 167.548, 55.4866, 0.322729, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258208, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1326.58, 177.859, 49.1316, 2.86835, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258352, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1310.82, 99.6155, 64.3811, 2.99859, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259805, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1300.61, 151.419, 60.467, 2.29403, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259809, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1297.84, 133.216, 63.2641, 1.27222, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259817, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1281.57, 179.299, 54.5603, 2.06467, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259822, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1272.26, 103.566, 66.7101, 0.637839, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259828, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1261.45, 232.33, 55.3385, 4.49968, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259848, 53753, 861, 5733, 5743, 1, 6, 0, 0, 1245.38, 113.421, 66.1408, 5.8947, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259854, 53753, 861, 5733, 5742, 1, 6, 0, 0, 1219.58, 218.299, 54.3251, 3.05174, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259882, 53753, 861, 5733, 5742, 1, 6, 0, 0, 1199.95, 149.369, 60.9596, 3.4009, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52999 creature_template, spawm y aura

DELETE FROM `creature_template` WHERE `entry`=52999;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52999, 0, 0, 0, 0, 0, 38064, 0, 0, 0, 'Flamewatch Igniter', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1.55556, 1.14286, 1, 0, 1000.8, 1153, 0, 90, 2, 2000, 2000, 1, 536903680, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 0.8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=52999;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52999, 0, 0, 0, 0, 0, '49414');


DELETE FROM `creature` WHERE `id`=52999;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(268313, 52999, 861, 5733, 5742, 1, 1, 0, 0, 1209.46, 197.82, 54.6717, 2.33757, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52751 creature_template, spawm

DELETE FROM `creature_template` WHERE `entry`=52751;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52751, 0, 0, 0, 0, 0, 22448, 38323, 0, 0, 'Cinderweb Cocoon', '', 'openhandglow', 0, 85, 85, 3, 0, 2156, 2156, 1, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 262144, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 0.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_cinderweb_cocoon', 15595);


DELETE FROM `creature` WHERE `id`=52751;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262616, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1378.64, 206.491, 58.3843, 1.79769, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262708, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1372.52, 179.837, 58.82, 5.23599, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262710, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1336.62, 165.165, 50.8454, 3.38594, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262714, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1323.56, 203.877, 55.887, 2.46091, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262726, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1273.57, 159.111, 61.5289, 1.76278, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(267967, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1255.25, 167.583, 62.2955, 1.50098, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(268302, 52751, 861, 5733, 5743, 1, 15, 0, 0, 1235.44, 226.866, 56.4728, 4.27606, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52648 creature_template, smapawn y smartAI

DELETE FROM `creature_template` WHERE `entry`=52648;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52648, 0, 0, 0, 0, 0, 38425, 0, 0, 0, 'Cinderweb Creeper', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1, 1, 0, 1000.8, 1500.8, 0, 24, 4, 2000, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 52648, 0, 52648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 69808, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);


DELETE FROM `creature` WHERE `id`=52648;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(262100, 52648, 861, 5733, 5740, 1, 6, 0, 0, 1272.93, 238.207, 54.9388, 6.14168, 30, 10, 0, 1, 0, 1, 0, 0, 0, 0),
(262176, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1266.77, 215.255, 54.4168, 6.24339, 30, 10, 0, 1, 0, 1, 0, 0, 0, 0),
(262235, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1248.13, 183.016, 54.1779, 0.289985, 30, 10, 0, 1, 0, 1, 0, 0, 0, 0),
(262293, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1291.05, 181.814, 53.5741, 5.65005, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(262573, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1306.68, 197.332, 55.7862, 1.03113, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(262595, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1363.58, 218.482, 55.2156, 6.16135, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(262599, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1394.36, 209.668, 56.1651, 5.36496, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(262617, 52648, 861, 5733, 5744, 1, 6, 0, 0, 1414.23, 158.671, 62.4484, 6.28073, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(262715, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1341.35, 187.137, 49.79, 4.39892, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(262727, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1328.14, 169.957, 49.4421, 3.43209, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(267968, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1314.28, 148.014, 60.8223, 4.77905, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(268314, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1325.33, 113.727, 62.282, 4.911, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(268346, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1289.53, 108.573, 66.0226, 3.1949, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(268448, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1277.43, 82.1857, 68.3716, 4.29525, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(268546, 52648, 861, 5733, 5743, 1, 6, 0, 0, 1246.07, 101.427, 67.3809, 2.27363, 300, 10, 0, 42, 0, 1, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52648 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52648, 0, 0, 0, 0, 0, 100, 0, 2000, 8000, 10000, 20000, 11, 98054, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ''),
(52648, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 89, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 52981 creature_template, spawms, smartAI y ensale AI

DELETE FROM `creature_template` WHERE `entry`=52981;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52981, 0, 0, 0, 52648, 0, 38463, 0, 0, 0, 'Cinderweb Spinner', '', '', 0, 85, 85, 3, 0, 2156, 2156, 0, 1, 1.14286, 1.11111, 1.14286, 1, 0, 1365, 1906, 0, 1707, 8, 2000, 2000, 1, 32772, 134219776, 0, 3, 0, 0, 0, 0, 356, 517, 0, 1, 1, 0, 52981, 0, 52981, 0, 0, 0, 0, 0, 0, 97959, 2649, 4167, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 0.75, 1, 1, 1, 0, 69809, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);



DELETE FROM `creature` WHERE `id`=52981;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(257909, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1375.04, 200.743, 83.1398, 1.46608, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(257914, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1373.56, 196.236, 88.7094, 4.90438, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(257961, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1369.7, 204.795, 75.3996, 4.86947, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258026, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1364.74, 185.984, 71.5708, 4.11898, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258031, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1356.72, 202.561, 71.5315, 4.9502, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258068, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1355.07, 187.913, 63.0368, 3.03687, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258095, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1344.18, 165.811, 66.8066, 2.30383, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258101, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1331.78, 202.83, 60.6374, 6.17755, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258103, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1328.12, 114.933, 78.2181, 0.598907, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258108, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1325.18, 158.193, 53.3472, 0.907571, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258130, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1310.92, 158.29, 63.1014, 0.872665, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258139, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1305.79, 217.743, 63.1241, 5.39261, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258147, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1300.57, 75.7222, 93.5703, 1.6057, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258159, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1300.19, 83.4063, 77.8243, 4.60767, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258184, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1299.14, 212.189, 70.7579, 5.74213, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258209, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1293.97, 219.887, 63.4705, 5.89921, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(258353, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1290.56, 77.0399, 85.8792, 0.750492, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259806, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1282.15, 136.387, 78.5109, 3.40143, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259810, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1281.98, 146.848, 82.8776, 2.08676, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259818, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1280.79, 154.837, 75.142, 3.02008, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259823, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1275.98, 141.288, 94.7473, 4.62512, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259829, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1272.2, 156.974, 91.5942, 2.54818, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259849, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1272.52, 127.608, 80.2398, 2.23228, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(259855, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1265.71, 150.487, 90.8304, 3.27336, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(259883, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1264.19, 161.086, 75.2886, 3.85303, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(260044, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1264.72, 164.696, 68.2773, 3.60214, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(260060, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1259.64, 124.779, 82.0376, 1.94125, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(260247, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1260.52, 151.295, 99.5984, 3.04831, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(261955, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1251.33, 164.78, 90.9868, 3.15556, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(261971, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1249.67, 133.111, 92.9393, 3.38594, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262052, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1243.6, 154.474, 97.4532, 5.21853, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262069, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1242.23, 230.561, 66.6984, 4.27606, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262101, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1241.77, 165.359, 72.9727, 1.56343, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262177, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1240.66, 134.911, 82.2967, 2.13694, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262236, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1236.61, 146.868, 87.54, 0.750492, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262294, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1235.31, 158.792, 81.6186, 4.49958, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262574, 52981, 861, 5733, 5742, 1, 6, 0, 0, 1227.15, 200.276, 72.0809, 3.38594, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(262600, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1258.4, 141.61, 106.044, 2.92286, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(262618, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1258.85, 146.923, 106.094, 4.78447, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(262716, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1242.32, 144.652, 110.702, 0.846092, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(262728, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1251.61, 138.563, 113.091, 2.71089, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(267969, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1252.91, 142.638, 113.141, 4.81336, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(268315, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1249.24, 144.964, 115.622, 0.623473, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(268347, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1253.82, 148.997, 115.697, 4.74311, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(268547, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1267.83, 132.285, 95.0834, 2.55446, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(271003, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1251.21, 156.179, 93.7083, 4.95433, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(295005, 52981, 861, 5733, 5743, 1, 6, 0, 0, 1332.32, 118.546, 81.5548, 0.513604, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0);



DELETE FROM `smart_scripts` WHERE `entryorguid`=52981 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52981, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 80, 5298100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52981, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52981, 0, 2, 0, 0, 0, 100, 0, 15000, 20000, 15000, 20000, 80, 5298100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=5298100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5298100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 33689, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(5298100, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 11, 97959, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, '');

-- 54324 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=54324;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54324, 0, 0, 0, 0, 0, 38779, 0, 0, 0, 'Skitterflame', '', '', 0, 85, 85, 3, 0, 16, 16, 0, 1, 1.14286, 1.11111, 1.14286, 1, 4, 0, 0, 0, 0, 1, 2000, 2000, 4, 32832, 2048, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 54324, 0, 0, 0, 0, 0, 0, 0, 0, 17253, 101512, 101357, 61684, 2649, 83381, 101395, 53517, 0, 1725, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54324;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195741, 54324, 861, 5733, 5748, 1, 1, 0, 0, 1319.83, 694.736, 87.2808, 1.8675, 28800, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53191 creature_template, condiciones, aura, spawns y smartAI

DELETE FROM `conditions` WHERE `SourceEntry`=98511;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 98511, 0, 2, 29, 0, 53192, 3, 0, 0, 0, 0, '', ''),
(17, 0, 98511, 0, 1, 29, 0, 53191, 3, 0, 0, 0, 0, '', ''),
(17, 0, 98511, 0, 0, 29, 0, 53190, 3, 0, 0, 0, 0, '', '');


DELETE FROM `creature_template` WHERE `entry`=53191;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53191, 0, 0, 0, 0, 0, 16925, 0, 0, 0, 'Northeastern Pool Credit', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=53191;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(53191, 0, 0, 0, 0, 0, '78931');


DELETE FROM `creature` WHERE `id`=53191;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195728, 53191, 861, 5733, 5748, 1, 2, 0, 0, 1450.8, 571.935, 77.4205, 2.00314, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53191 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53191, 0, 0, 0, 8, 0, 100, 0, 30012, 0, 0, 0, 33, 53191, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 54515 creature_template, aura, spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=54515;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54515, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=54515;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(54515, 0, 0, 0, 0, 0, '101851');


DELETE FROM `creature` WHERE `id`=54515;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(194397, 54515, 861, 5733, 5748, 1, 31, 0, 0, 1326.09, 508.252, 69.213, 3.97935, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=54515 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54515, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 54321 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=54321;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54321, 0, 0, 0, 53886, 0, 38780, 0, 0, 0, 'Solix', '', '', 0, 85, 85, 3, 0, 16, 16, 0, 1, 1.14286, 1.11111, 2, 1, 4, 0, 0, 0, 0, 1, 273, 2000, 4, 32832, 2048, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 54321, 0, 0, 0, 0, 0, 0, 0, 0, 17253, 61684, 2649, 83381, 53517, 4167, 0, 0, 0, 1728, 0, 0, NULL, NULL, '', 0, 3, 1, 12.9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 113, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=54321;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193977, 54321, 861, 5733, 5740, 1, 1, 0, 0, 1346.87, 278.531, 22.1981, 0.533336, 28800, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 54338 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=54338;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54338, 0, 0, 0, 0, 0, 38426, 0, 0, 0, 'Anthriss', '', '', 0, 85, 85, 3, 0, 7, 7, 0, 1, 1.14286, 1.11111, 1.14286, 0.4, 4, 1982, 2621, 0, 0, 5, 2000, 2000, 1, 0, 2048, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 54338, 0, 0, 0, 0, 0, 0, 0, 0, 2649, 101413, 4167, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54338;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193670, 54338, 861, 5733, 5740, 1, 1, 0, 0, 1395.56, 280.931, 24.0592, 2.53073, 28800, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53911 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53911;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53911, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shadow Warden', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53911;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193460, 53911, 861, 5733, 5740, 1, 6, 0, 0, 1311.99, 256.785, 23.9981, 4.43314, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0),
(193378, 53911, 861, 5733, 5740, 1, 6, 0, 0, 1302.45, 254.779, 24.3601, 4.99164, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);

-- 52892 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52892;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52892, 0, 0, 0, 0, 0, 37761, 37766, 0, 0, 'Devout Flamecaller', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 8, 537166592, 2049, 32, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1.00031, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52892;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193118, 52892, 861, 5733, 5741, 1, 6, 0, 0, 1307.93, 250.092, 25.0777, 1.0472, 120, 0, 0, 293305, 9697, 0, 0, 0, 0, 0),
(193082, 52892, 861, 5733, 5741, 1, 1, 0, 0, 1198.62, 137.156, 0.503333, 0.715585, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53056 creature_template, spawm y texto

DELETE FROM `creature_template` WHERE `entry`=53056;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53056, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shalis Darkhunter', '', '', 0, 85, 85, 3, 0, 2233, 2233, 2, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_text` WHERE `entry`=53056;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(53056, 0, 0, 'Well done, $n. It looks like we have them on the run.', 12, 0, 100, 1, 0, 0, 0, 'Shalis Darkhunter to Player');


DELETE FROM `creature` WHERE `id`=53056;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(192857, 53056, 861, 5733, 5740, 1, 6, 0, 0, 1312.76, 249.719, 25.1901, 2.25431, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);

-- 52823 creature_template, spawm y texto

DELETE FROM `creature_template` WHERE `entry`=52823;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52823, 0, 0, 0, 0, 0, 38052, 0, 0, 0, 'Theresa Barkskin', '', '', 0, 85, 85, 3, 0, 2252, 2252, 2, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2.01904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);



DELETE FROM `creature_text` WHERE `entry`=52823;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52823, 0, 0, 'The summoning runes were already drawn when we arrived. You\'ll need to destroy all of them.', 12, 0, 100, 1, 0, 0, 0, 'Theresa Barkskin on Player');


DELETE FROM `creature` WHERE `id`=52823;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(192516, 52823, 861, 5733, 5741, 1, 6, 0, 0, 1309.1, 246.477, 25.5704, 1.93731, 120, 0, 0, 293305, 8908, 0, 0, 0, 0, 0);

-- 52889 creature_template, spawm, smartAI yspell para el Npc

DELETE FROM `creature_template` WHERE `entry`=52889;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52889, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52889;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(192514, 52889, 861, 5733, 5741, 1, 2, 0, 0, 1281.87, 200.431, 3.88053, 3.78736, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52889 AND `spell_id`=97758;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(52889, 97758, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52889 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52889, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

-- 52884 creature_template, spawms, spell para el npc, smartAI y enlace AI

DELETE FROM `creature_template` WHERE `entry`=52884;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52884, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52884;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(192238, 52884, 861, 5733, 5741, 1, 2, 0, 0, 1317.43, 203.016, 14.5797, 3.66519, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52884 AND `spell_id`=97753;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (52884, 97753, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52884 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52884, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

DELETE FROM `smart_scripts` WHERE `entryorguid`=5288400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5288400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 52891, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(5288400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5288400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- 52887 creature_template,spawms y smartAI

DELETE FROM `creature_template` WHERE `entry`=52887;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52887, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52887;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(191789, 52887, 861, 5733, 5741, 1, 2, 0, 0, 1177.72, 170.061, 4.47024, 4.74729, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(191752, 52887, 861, 5733, 5741, 1, 65535, 0, 0, 1228.09, 212.874, 4.06691, 3.89129, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(191723, 52887, 861, 5733, 5741, 1, 65535, 0, 0, 1287.37, 191.455, 4.2537, 4.84656, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(191661, 52887, 861, 5733, 5741, 1, 65535, 0, 0, 1289.94, 139.07, 4.25802, 5.69243, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52887 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52887, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

-- 52893 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52893;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52893, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Molten Splash Origin Bunny', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554944, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=52893;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(191644, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1271.02, 188.085, 1.3857, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(191640, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1263.88, 227.731, 1.49285, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(191437, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1260.25, 180.797, 1.5762, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(190554, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1259.46, 221.828, 1.58194, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(189612, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1256.29, 196.201, 1.40347, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(189063, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1247.89, 181.606, 1.41324, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(179292, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1239.07, 233.181, 1.56264, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(178154, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1231.13, 231.5, 1.57887, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177982, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1216.01, 197.748, 1.49698, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177661, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1213.61, 184.226, 1.47725, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177389, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1206.27, 205.359, 1.49514, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177371, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1193.19, 199.724, 1.42358, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177216, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1180.58, 154.153, 1.57882, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177031, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1172.95, 156.549, 1.69613, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(176435, 52893, 861, 5733, 5741, 1, 1, 0, 0, 1154.9, 166.036, 1.83786, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52783 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52783;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52783, 0, 0, 0, 52751, 0, 22448, 38323, 0, 0, 'Cinderweb Cocoon', '', 'openhandglow', 0, 85, 85, 3, 0, 2156, 2156, 1, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 262144, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 0.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_cinderweb_cocoon', 15595);


DELETE FROM `creature` WHERE `id`=52783;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(201589, 52783, 861, 5733, 5743, 1, 1, 0, 0, 1384.79, 183.981, 56.8733, 3.24631, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(201582, 52783, 861, 5733, 5743, 1, 1, 0, 0, 1335.47, 111.524, 62.5799, 4.76475, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(201575, 52783, 861, 5733, 5743, 1, 1, 0, 0, 1319.05, 149.71, 60.6643, 4.79965, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(200844, 52783, 861, 5733, 5743, 1, 1, 0, 0, 1277.22, 131.335, 63.9179, 6.03884, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(200838, 52783, 861, 5733, 5743, 1, 1, 0, 0, 1254.38, 207.654, 53.5152, 2.96706, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52888 creature_template, spell para el npc, spawm, condiciones y smartAI

DELETE FROM `creature_template` WHERE `entry`=52888;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52888, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52888;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196327, 52888, 861, 5733, 5741, 1, 2, 0, 0, 1225.69, 213.175, 4.15004, 4.24115, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52888 AND `spell_id`=97757;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(52888, 97757, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52888 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52888, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=53887 AND `SourceEntry`=100339 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 53887, 100339, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52890 AND `SourceEntry`=100338 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52890, 100338, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52889 AND `SourceEntry`=97758 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52889, 97758, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52888 AND `SourceEntry`=97757 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52888, 97757, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52887 AND `SourceEntry`=97756 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52887, 97756, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52886 AND `SourceEntry`=97755 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52886, 97755, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52885 AND `SourceEntry`=97754 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52885, 97754, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=52884 AND `SourceEntry`=97753 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 52884, 97753, 0, 0, 9, 0, 29210, 0, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceGroup`=0 AND `SourceEntry`=29243 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=29210 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (19, 0, 29243, 0, 0, 8, 0, 29210, 0, 0, 0, 0, 0, '', '');

-- 52885 creature_template, spell para el npc, spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=52885;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52885, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52885;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196284, 52885, 861, 5733, 5741, 1, 2, 0, 0, 1287.79, 144.082, 4.34403, 3.35103, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52885 AND `spell_id`=97754;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(52885, 97754, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52885 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52885, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

-- 52886 creature_template, spell para el npc, spawm y smartAI

DELETE FROM `creature_template` WHERE `entry`=52886;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52886, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52886;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196259, 52886, 861, 5733, 5741, 1, 2, 0, 0, 1239.11, 114.234, 4.34248, 3.01942, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52886 AND `spell_id`=97755;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(52886, 97755, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52886 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52886, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

-- 52985 creature_template, spawm, aura y smarAI

DELETE FROM `creature_template` WHERE `entry`=52985;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52985, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Thermal Pocket Bunny', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=52985;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196178, 52985, 861, 5733, 5741, 1, 31, 0, 0, 1219.35, 114, 6.29861, 6.16101, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(195753, 52985, 861, 5733, 5741, 1, 31, 0, 0, 1170.55, 138.13, 4.37879, 4.57276, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=52985;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52985, 0, 0, 0, 0, 0, '97968');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52985 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52985, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 3000, 85, 96441, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 52890 creature_template, spawm y spell del npc

DELETE FROM `creature_template` WHERE `entry`=53887;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53887, 0, 0, 0, 0, 0, 38069, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53887;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195742, 53887, 861, 5733, 5741, 1, 2, 0, 0, 1174.27, 123.031, 4.33702, 0.610865, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53887 AND `spell_id`=100339;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(53887, 100339, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53887 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53887, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

-- 52890 creature_template, smartAI, spawm y spell del npc

DELETE FROM `creature_template` WHERE `entry`=52890;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52890, 0, 0, 0, 0, 0, 38070, 11686, 0, 0, 'Flame Protection Rune', '', 'openhandglow', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1.2, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52890;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195729, 52890, 861, 5733, 5741, 1, 2, 0, 0, 1231.35, 163.328, 10.8071, 3.82227, 20, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52890 AND `spell_id`=100338;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(52890, 100338, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52890 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52890, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5288400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Protection Rune - On Spellclick - Run Actionlist');

-- 53448 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53448;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53448, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Sira Moonwarden', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53448;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(201590, 53448, 861, 5733, 5742, 1, 4, 0, 0, 1172.69, 179.776, 59.9991, 4.72984, 120, 0, 0, 387450, 0, 0, 0, 0, 0, 0),
(201583, 53448, 861, 5733, 5742, 1, 4, 0, 0, 1200.83, 144.896, 60.403, 2.39763, 300, 0, 0, 387450, 0, 0, 0, 0, 0, 0);

-- 53005 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53005;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53005, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Flame Spout Target Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=53005;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(201576, 53005, 861, 5733, 5742, 1, 1, 0, 0, 1205.17, 152.71, 60.343, 3.82725, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(200845, 53005, 861, 5733, 5742, 1, 1, 0, 0, 1195.43, 148.141, 60.1795, 3.73856, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(200839, 53005, 861, 5733, 5742, 1, 1, 0, 0, 1192.22, 157.083, 60.0408, 1.91533, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196328, 53005, 861, 5733, 5742, 1, 1, 0, 0, 1182.87, 155.26, 60.7784, 3.3342, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52976 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52976;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52976, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Chain Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=52976;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196260, 52976, 861, 5733, 5742, 1, 1, 0, 0, 1156.12, 167.12, 62.3163, 0.698132, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(196285, 52976, 0, 40, 109, 1, 2, 0, 0, -9862.43, 1272.59, 40.7536, 1.24292, 120, 0, 0, 42, 0, 0, 0, 0, 0, 0);

-- 52994 creature_template

DELETE FROM `creature_template` WHERE `entry`=52994;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52994, 0, 0, 0, 0, 0, 37761, 37766, 0, 0, 'Druid of the Flame', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 8, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 2.5, 1.00031, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52994;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(196179, 52994, 861, 5733, 5742, 1, 1, 0, 0, 1160.25, 165.715, 60.3821, 0.733038, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52993 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52993;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52993, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shadow Warden', '', '', 0, 85, 85, 3, 0, 2369, 2369, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52993;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195754, 52993, 861, 5733, 5742, 1, 4, 0, 0, 1163.88, 167.161, 60.1223, 6.23718, 120, 0, 0, 117322, 0, 0, 0, 0, 0, 0);

-- 52494 creature_template, smartAI y spawms

DELETE FROM `creature_template` WHERE `entry`=52494;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52494, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Marin Bladewing', '', '', 12798, 85, 85, 3, 0, 2233, 2233, 3, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52494;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195743, 52494, 861, 5733, 5742, 1, 4, 0, 0, 1164.02, 164.5, 60.2658, 0.751828, 300, 0, 0, 293305, 0, 0, 0, 0, 0, 0);



DELETE FROM `smart_scripts` WHERE `entryorguid`=52494 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52494, 0, 0, 0, 19, 0, 100, 0, 29192, 0, 0, 0, 85, 97561, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 54163 creature_template y spawms

DELETE FROM `creature_template` WHERE `entry`=54163;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54163, 0, 0, 0, 0, 0, 26243, 0, 0, 0, 'Ricket', '', '', 12971, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54163;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(195730, 54163, 861, 5733, 5742, 1, 4, 0, 0, 1166.09, 160.745, 60.3559, 0.762056, 300, 0, 0, 586610, 0, 0, 0, 0, 0, 0);

-- 52477 creature_template, aura y spawms

DELETE FROM `creature_template` WHERE `entry`=52478;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52478, 0, 0, 0, 0, 0, 29213, 0, 0, 0, 'Anren Shadowseeker', '', '', 12968, 80, 80, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.38571, 1, 1, 1468, 1761, 0, 0, 4, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_template_addon` WHERE `entry`=52478;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52478, 0, 14332, 0, 0, 0, NULL);


DELETE FROM `creature` WHERE `id`=52478;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193671, 52478, 861, 5733, 5742, 1, 4, 0, 0, 1178.12, 151.134, 63.1317, 5.00188, 300, 0, 0, 36865, 7988, 0, 0, 134217728, 0, 0);

-- 52477 creature_template y spawms

DELETE FROM `creature_template` WHERE `entry`=52477;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52477, 0, 0, 0, 0, 0, 31777, 0, 0, 0, 'Tholo Whitehoof', '', '', 12966, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5.0476, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52477, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52477;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193461, 52477, 861, 5733, 5742, 1, 4, 0, 52477, 1179.46, 146.609, 63.4349, 1.80553, 300, 0, 0, 586610, 22270, 0, 0, 0, 0, 0);

-- 44403 creature_template y spawms

DELETE FROM `creature_template` WHERE `entry`=44403;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44403, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Generic Controller Bunny, Gigantic (CSA)', '', '', 0, 80, 80, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);


DELETE FROM `creature` WHERE `id`=44403;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193379, 44403, 861, 5733, 5742, 1, 1, 0, 0, 1174.09, 134.778, 101.907, 0.610865, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 54322 creature_template, textos y spawms

DELETE FROM `creature_template` WHERE `entry`=54322;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54322, 0, 0, 0, 0, 0, 38424, 0, 0, 0, 'Deth\'tilac', 'The Smouldering Darkness', '', 0, 85, 85, 3, 0, 16, 16, 0, 1, 1.14286, 1.2, 0.428571, 1, 4, 0, 0, 0, 0, 1, 500, 2000, 1, 32832, 2048, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 54322, 0, 0, 0, 0, 0, 0, 0, 0, 101497, 101227, 101261, 101226, 2649, 101255, 4167, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1000, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 76, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature_text` WHERE `entry`=54322;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(54322, 1, 0, 'Deth\'tilac asserts his Molten Will!', 41, 0, 100, 0, 0, 0, 0, 'Deth\'tilac - SAY_MOLTEN_WILL');


DELETE FROM `creature` WHERE `id`=54322;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193119, 54322, 861, 5733, 5742, 1, 1, 0, 0, 1122.64, 131.279, 74.7974, 5.44543, 28800, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 53659 creature_template, y spawms

DELETE FROM `creature_template` WHERE `entry`=53659;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53659, 0, 0, 0, 0, 0, 38425, 0, 0, 0, 'Cinderweb Creeper', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.11111, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 570688256, 2049, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53659;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(193083, 53659, 861, 5733, 5742, 1, 1, 0, 0, 1197.16, 144.859, 60.137, 0.820305, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52954 creature_template, y spawms

DELETE FROM `creature_template` WHERE `entry`=52954;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52954, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shalis Darkhunter', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52954;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(192858, 52954, 861, 5733, 5742, 1, 1, 0, 0, 1195.28, 150.328, 60.3096, 3.74738, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 52921 creature_template, smartAI y spawms

DELETE FROM `creature_template` WHERE `entry`=52921;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52921, 0, 0, 0, 0, 0, 38083, 0, 0, 0, 'Deldren Ravenelm', '', '', 12795, 85, 85, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 7, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52921;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(192239, 52921, 861, 5733, 5742, 1, 4, 0, 0, 1198.1, 147.635, 60.4953, 5.52875, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52921 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52921, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 85, 101179, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 53447 creature_template y spawms

DELETE FROM `creature_template` WHERE `entry`=53447;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53447, 0, 0, 0, 0, 0, 2106, 0, 0, 0, 'Turak Runetotem', '', '', 0, 85, 85, 3, 0, 2252, 2252, 0, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 33536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 3, 3.02856, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53447;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(191724, 53447, 861, 5733, 5742, 1, 4, 0, 0, 1190.05, 132.038, 63.639, 4.90438, 120, 0, 0, 175983, 13362, 0, 0, 0, 0, 0);

-- 53446 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=53446;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53446, 0, 0, 0, 0, 0, 7618, 0, 0, 0, 'Keeper Taldros', '', '', 0, 82, 82, 3, 0, 2252, 2252, 1, 1, 1.14286, 1.11111, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);



DELETE FROM `creature` WHERE `id`=53446;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(191662, 53446, 861, 5733, 5742, 1, 4, 0, 0, 1190.83, 127.903, 63.6655, 1.22173, 120, 0, 0, 45180, 20845, 0, 0, 0, 0, 0);

-- 53449 creature_template y spawms

DELETE FROM `creature_template` WHERE `entry`=53449;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53449, 0, 0, 0, 0, 0, 38088, 0, 0, 0, 'Shadow Warden', '', '', 12893, 85, 85, 3, 0, 2252, 2252, 1, 1, 1.14286, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53449;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(191645, 53449, 861, 5733, 5742, 1, 1, 0, 0, 1222.92, 147.668, 63.5235, 3.4383, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(191641, 53449, 861, 5733, 5742, 1, 4, 0, 0, 1207.5, 115.988, 66.3594, 0.191986, 120, 0, 0, 293305, 0, 0, 0, 0, 0, 0);

-- 53656 creature_template y spawn

DELETE FROM `creature_template` WHERE `entry`=53656;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53656, 0, 0, 0, 0, 0, 38479, 0, 0, 0, 'Cinderweb Clutchkeeper', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.11111, 1.14286, 1, 0, 1365, 1906, 0, 1707, 4, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 1, 0, 0, 53656, 0, 53656, 0, 0, 0, 0, 0, 0, 100700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 5, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53656;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(177390, 53656, 861, 5733, 5742, 1, 6, 0, 0, 1225.38, 124.94, 65.6533, 2.55846, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(177662, 53656, 861, 5733, 5743, 1, 6, 0, 0, 1257.58, 73.7304, 70.005, 1.57726, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(177983, 53656, 861, 5733, 5743, 1, 6, 0, 0, 1329, 71.951, 67.3663, 1.73251, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(189064, 53656, 861, 5733, 5743, 1, 6, 0, 0, 1318.44, 127.011, 62.8047, 1.76261, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(190555, 53656, 861, 5733, 5743, 1, 6, 0, 0, 1334.39, 216.11, 55.8917, 4.94453, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(191438, 53656, 861, 5733, 5743, 1, 6, 0, 0, 1413.06, 212.534, 57.4788, 3.81551, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);

-- 52871 creature_template, textos, spawms, smartAI y condiciones

DELETE FROM `creature_template` WHERE `entry`=52871;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52871, 0, 0, 0, 54343, 0, 38436, 38540, 38541, 38542, 'Druid of the Flame', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1, 1.14286, 1, 0, 800.8, 1200.8, 0, 232, 6, 2000, 2000, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 232.9, 665.9, 0, 7, 0, 0, 52871, 52871, 0, 0, 0, 0, 0, 0, 0, 31289, 97678, 17273, 97903, 13878, 0, 0, 0, 0, 0, 2762, 2762, NULL, NULL, 'SmartAI', 0, 3, 10, 2.5, 1.00031, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52871, 0, 0, '', 15595);


DELETE FROM `creature_text` WHERE `entry`=52871;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52871, 0, 0, 'Ashes...to ashes...', 12, 0, 100, 0, 0, 0, 52739, ''),
(52871, 0, 1, 'May you burn for eternity!', 12, 0, 100, 0, 2000, 0, 52740, ''),
(52871, 0, 2, 'My death will be avenged!', 12, 0, 100, 0, 2000, 0, 52735, '');


DELETE FROM `creature` WHERE `id`=52871;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(177032, 52871, 861, 5733, 5744, 1, 6, 0, 0, 1377.01, 64.5875, 68.1408, 6.04422, 60, 12, 0, 1, 0, 1, 0, 0, 0, 0),
(177217, 52871, 861, 5733, 5744, 1, 6, 0, 0, 1372.08, 112.199, 64.1894, 5.23562, 60, 12, 0, 1, 0, 1, 0, 0, 0, 0),
(177372, 52871, 861, 5733, 5743, 1, 6, 0, 0, 1357.19, 90.7882, 65.482, 2.15874, 60, 12, 0, 1, 0, 1, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52871 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52871, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52871, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 5000, 12000, 11, 13878, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52871, 0, 2, 0, 2, 0, 100, 1, 20, 50, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 52804, 20, 0, 0, 0, 0, 0, ''),
(52871, 0, 3, 4, 8, 0, 100, 0, 97565, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 52804, 10, 0, 0, 0, 0, 0, ''),
(52871, 0, 4, 0, 61, 0, 20, 0, 0, 0, 0, 0, 41, 14000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=97565;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 97565, 0, 0, 31, 0, 3, 52871, 0, 0, 0, 0, '', '');

-- 52872 creature_template, textos y spawms

DELETE FROM `creature_template` WHERE `entry`=52872;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52872, 0, 0, 0, 54343, 0, 38436, 38540, 38541, 38542, 'Druid of the Flame', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1, 1.14286, 1, 0, 800.8, 1200.8, 0, 232, 4, 2000, 2000, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 232.9, 665.9, 0, 7, 0, 0, 52872, 52872, 0, 0, 0, 0, 0, 0, 0, 31289, 97679, 32093, 17273, 97903, 13878, 0, 0, 0, 0, 2784, 2784, NULL, NULL, 'SmartAI', 0, 5, 10, 2.5, 1.00031, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52872, 0, 0, 'npc_druid_of_the_flame_molten_front', 15595);


DELETE FROM `creature_text` WHERE `entry`=52872;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52872, 0, 0, 'You dare challenge the avatars of flame?', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 1, 'Invader! I will kill you with my bare claws!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 2, 'Play with fire and get burned, trespasser.', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 3, 'Trespassers will be incinerated.', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 4, 'Enemies of the flame are not welcome here!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 5, 'Intruder! I will melt the flesh from your bones!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 6, 'Your world will burn, disbeliever!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 0, 7, 'You dare test us in the realm of fire?', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 1, 0, 'Ragnaros, I call upon your power to aid me!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 1, 1, 'Lord Ragnaros! Shield me!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 1, 2, 'Lord Ragnaros, grant me your everlasting fire!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 1, 3, 'Master, fill me with your glorious radiance!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 0, 'My death will be avenged!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 1, 'May you bathe in flames!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 2, 'I serve you... Fire Lord.', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 3, 'Death to you and your allies!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 4, 'This will not stop us...', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 5, 'Ashes... to ashes...', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 6, 'May you burn for eternity!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame'),
(52872, 2, 7, 'My death means nothing!', 12, 0, 100, 0, 0, 0, 0, 'Druid of the Flame');



DELETE FROM `creature` WHERE `id`=52872;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(171145, 52872, 861, 5733, 5744, 1, 1, 0, 0, 1394.58, 107.198, 67.0775, 1.60594, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(174794, 52872, 861, 5733, 5744, 1, 1, 0, 0, 1390.07, 82.1632, 68.8507, 0.820305, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(175481, 52872, 861, 5733, 5744, 1, 1, 0, 0, 1389.22, 100.495, 68.6625, 5.46288, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(175530, 52872, 861, 5733, 5744, 1, 1, 0, 0, 1376.53, 75.1539, 67.7911, 6.04807, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(175532, 52872, 861, 5733, 5744, 1, 1, 0, 0, 1367.42, 123.027, 61.5378, 1.91604, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(176018, 52872, 861, 5733, 5743, 1, 1, 0, 0, 1357.49, 45.7222, 68.7164, 4.17134, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(176116, 52872, 861, 5733, 5743, 1, 1, 0, 0, 1356.47, 143.415, 59.3013, 6.21083, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);


-- 52122 creature_template, spawm, textos, condiciones y smartAI

DELETE FROM `creature_template` WHERE `entry`=52122;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52122, 0, 0, 0, 54343, 0, 37761, 37766, 0, 0, 'Druid of the Flame', '', '', 0, 85, 85, 3, 0, 2371, 2371, 0, 1, 1.14286, 1, 1.14286, 1, 0, 800.8, 1200.8, 0, 232, 6, 2000, 2000, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 232.9, 665.9, 0, 7, 0, 0, 52122, 52122, 0, 0, 0, 0, 0, 0, 0, 97684, 17273, 97903, 13878, 0, 0, 0, 0, 0, 0, 2767, 2767, NULL, NULL, 'SmartAI', 0, 3, 1, 2.5, 1.00031, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52871, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=52122;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(169196, 52122, 861, 5733, 5744, 1, 6, 0, 52871, 1393.7, 84.7059, 68.8455, 0.827552, 300, 0, 0, 146598, 9697, 0, 0, 0, 0, 0),
(170245, 52122, 861, 5733, 5744, 1, 6, 0, 52871, 1405.09, 85.4159, 68.8455, 2.4857, 300, 0, 0, 146598, 9697, 0, 0, 0, 0, 0),
(170779, 52122, 861, 5733, 5744, 1, 6, 0, 52871, 1404.68, 96.6753, 68.9928, 3.88842, 300, 0, 0, 146598, 9697, 0, 0, 0, 0, 0),
(171040, 52122, 861, 5733, 5744, 1, 6, 0, 52871, 1393.26, 96.3906, 68.8452, 5.49412, 300, 0, 0, 146598, 9697, 0, 0, 0, 0, 0);


DELETE FROM `creature_text` WHERE `entry`=52122;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(52122, 0, 0, 'Ashes...to ashes...', 12, 0, 100, 0, 0, 0, 52739, ''),
(52122, 0, 1, 'May you burn for eternity!', 12, 0, 100, 0, 2000, 0, 52740, ''),
(52122, 0, 2, 'My death will be avenged!', 12, 0, 100, 0, 2000, 0, 52735, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52122 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52122, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 11, 45576, 0, 0, 0, 0, 0, 11, 52950, 30, 0, 0, 0, 0, 0, ''),
(52122, 0, 1, 2, 10, 0, 100, 0, 0, 1, 1000, 3000, 28, 45576, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52122, 0, 2, 0, 10, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(52122, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 28, 45576, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52122, 0, 4, 0, 4, 0, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52122, 0, 5, 0, 0, 0, 100, 0, 5000, 8000, 5000, 8000, 11, 13878, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52122, 0, 6, 0, 8, 0, 100, 0, 97820, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template_addon` WHERE `entry`=52122;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52122, 0, 0, 0, 0, 0, '101309');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=97820 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=52950 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 97820, 0, 1, 31, 0, 3, 52950, 0, 0, 0, 0, '', '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=97820 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=52122 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 97820, 0, 0, 31, 0, 3, 52122, 0, 0, 0, 0, '', '');

-- 53662 creature_template

DELETE FROM `creature_template` WHERE `entry`=53662;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53662, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Solar Core Channel Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=53662;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(168960, 53662, 861, 5733, 5744, 1, 15, 0, 0, 1398.68, 91.1684, 71.2209, 0, 120, 0, 0, 42, 0, 0, 0, 0, 0, 0);

-- 208474 gameobject_template y spawm

DELETE FROM `gameobject_template` WHERE `entry`=208474;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208474, 10, 10559, 'Solar Core', '', 'Detonating', '', 0, 4, 0.05, 0, 0, 0, 0, 0, 0, 93, 29211, 0, 3000, 0, 0, 0, 0, 0, 0, 97820, 0, 0, 0, 36598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 15595);


DELETE FROM `gameobject` WHERE `id`=208474;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293724, 208474, 861, 5733, 5744, 1, 31, 1398.7, 91.1615, 73.0645, 0.750491, 0, 0, 0.366501, 0.930418, 300, 255, 1);

-- 52991 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=52991;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52991, 0, 0, 0, 52751, 0, 22448, 38323, 0, 0, 'Cinderweb Cocoon', '', 'openhandglow', 0, 85, 85, 3, 0, 2156, 2156, 1, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 262144, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 0.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_cinderweb_cocoon', 15595);

DELETE FROM `creature` WHERE `id`=52991;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(168952, 52991, 861, 5733, 5743, 1, 1, 0, 0, 1374.48, 202.29, 74.5011, 2.67035, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(168700, 52991, 861, 5733, 5743, 1, 1, 0, 0, 1301.42, 214.097, 66.4926, 5.93412, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 54137 creature_template y spawm

DELETE FROM `creature_template` WHERE `entry`=54137;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54137, 0, 0, 0, 0, 0, 169, 22769, 0, 0, 'Fire Patch', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1049600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=54137;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(166182, 54137, 861, 5733, 5744, 1, 1, 0, 0, 1401.84, 115.992, 63.4567, 2.12546, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(166958, 54137, 861, 5733, 5744, 1, 1, 0, 0, 1390.57, 132.566, 62.3977, 2.23536, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(168309, 54137, 861, 5733, 5744, 1, 1, 0, 0, 1369.85, 141.459, 61.0865, 3.1455, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 208535 gameobject_template da misiones

DELETE FROM `gameobject_template` WHERE `entry`=208535;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208535, 2, 424, 'Dried Acorn', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '', 1);


DELETE FROM `gameobject` WHERE `id`=208535;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293728, 208535, 861, 5733, 5744, 1, 4, 1373.99, 122.384, 62.0735, 4.30289, 0, 0, -0.836108, 0.548565, 300, 255, 1);


DELETE FROM `gameobject_involvedrelation` WHERE `id`=208535;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES 
(208535, 29245);


DELETE FROM `gameobject_questrelation` WHERE `id`=208535;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(208535, 29245);

-- 208532 gameobject_template

DELETE FROM `gameobject_template` WHERE `entry`=208532;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208532, 33, 10555, 'Forlorn Spire', '', '', '', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `gameobject` WHERE `id`=208532;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293727, 208532, 861, 5733, 5742, 1, 4, 1165.92, 128.113, 56.7101, 0.680678, 0, 0, 0.33381, 0.942634, 300, 255, 1);

-- 208531 gameobject_template

DELETE FROM `gameobject_template` WHERE `entry`=208531;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208531, 33, 10550, 'Forlorn Spire', '', '', '', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `gameobject` WHERE `id`=208531;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293726, 208531, 861, 5733, 5742, 1, 1, 1165.92, 128.113, 56.7101, 0.680678, 0, 0, 0.33381, 0.942634, 300, 255, 1);

-- 208529 gameobject_template

DELETE FROM `gameobject_template` WHERE `entry`=208529;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208529, 33, 10550, 'Forlorn Spire', '', '', '', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `gameobject` WHERE `id`=208529;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293725, 208529, 861, 5733, 5742, 1, 3, 1165.92, 128.113, 56.7101, 0.680678, 0, 0, 0.33381, 0.942634, 300, 255, 1);

-- 53190 creature

DELETE FROM `creature_template` WHERE `entry`=53190;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53190, 0, 0, 0, 0, 0, 16925, 0, 0, 0, 'Northwestern Pool Credit', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 15595);


DELETE FROM `creature` WHERE `id`=53190;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(163215, 53190, 861, 5733, 5748, 1, 2, 0, 0, 1467.61, 684.314, 91.4548, 0.829794, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53190 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53190, 0, 0, 0, 8, 0, 100, 0, 30012, 0, 0, 0, 33, 53190, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


-- 53834 creature
DELETE FROM `creature_template` WHERE `entry`=53834;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53834, 0, 0, 0, 54230, 0, 38504, 0, 0, 0, 'Devout Harbinger', 'Lieutenant of Flame', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1, 1.14286, 1, 1, 1000.8, 1354.7, 0, 1000, 10, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100237, 100229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 20, 20.1904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53834;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(163173, 53834, 861, 5733, 5749, 1, 2, 0, 0, 1554.79, 333.801, 61.6476, 3.0911, 120, 0, 0, 1173222, 89080, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=53834 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53834, 0, 0, 0, 0, 0, 100, 0, 6000, 10000, 15000, 20000, 11, 100229, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, '');

-- 70040 creature

DELETE FROM `creature_template` WHERE `entry`=70040;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(70040, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'MF - King of the Spider - Trigger', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 3.8, 3.8, 0, 46, 1, 2000, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 5, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);


DELETE FROM `creature` WHERE `id`=70040;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(163012, 70040, 861, 5733, 5743, 1, 15, 0, 0, 1250.12, 150.713, 115.681, 5.50127, 300, 0, 0, 57, 0, 0, 0, 33554432, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=70040 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(70040, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 1000, 86, 115007, 0, 7, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 209038 gameobject_template

DELETE FROM `gameobject_template` WHERE `entry`=209038;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(209038, 10, 4393, 'Portal to Hyjal', '', '', '', 0, 0, 1.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100523, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `gameobject` WHERE `id`=209038;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293977, 209038, 861, 5733, 5749, 1, 1, 1485.58, 324.37, 63.0393, 0.453785, 0, 0, 0.224951, 0.97437, 300, 255, 1);

-- 208778 gameobject_template

DELETE FROM `gameobject_template` WHERE `entry`=208778;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208778, 0, 10573, 'Furnace Door', '', '', '', 114, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '', 1);


DELETE FROM `gameobject` WHERE `id`=208778;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(293927, 208778, 861, 5733, 5745, 1, 2, 1165.84, 533.719, 53.5342, 3.10665, 0, 0, 0.999847, 0.0174686, 10, 255, 1);
