-- mision Blastranaar! ID: 13947
DELETE FROM `report_quest` WHERE `id`=13947;

DELETE FROM `smart_scripts` WHERE `entryorguid`=34429 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34429, 0, 0, 1, 62, 0, 100, 0, 10510, 1, 0, 0, 85, 65478, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Thraka - On Gossip 1 - Invoker Cast \'Summon Wind Rider\'');
DELETE FROM `smart_scripts` WHERE `entryorguid`=34429 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34429, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Thraka - On Script - Close gossip');

DELETE FROM `gossip_menu_option` WHERE `menu_id`=10510 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(10510, 0, 2, 'Show me where I can fly.', 12271, 4, 8192, 0, 0, 0, 0, '', NULL);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10510 AND `id`=1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(10510, 1, 0, 'I am to bomb Astranaar! Captain Goggath\'s orders.', 34604, 1, 1, 0, 0, 0, 0, '', NULL);

UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (34429,34433,34132);
UPDATE `creature_template` SET  `AIName`='SmartAI', `ScriptName`='' WHERE entry IN (34123);

DELETE FROM `creature_template_addon` WHERE `entry`=34123;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(34123, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature_template` WHERE `entry`=34123;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34123, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Astranaar\'s Burning! Fire Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34123 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34123, 0, 0, 0, 8, 0, 100, 0, 64558, 0, 0, 0, 80, 3412300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3412300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3412300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 34123, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(3412300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (34429,34433,34132);
DELETE FROM `creature` WHERE `id`=34163;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(138913, 34163, 1, 331, 4691, 1, 1, 0, 1, 3032.78, -501.147, 214.932, 3.39577, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138914, 34163, 1, 331, 4691, 1, 1, 0, 1, 3022.31, -403.314, 192.008, 1.16072, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138915, 34163, 1, 331, 4691, 1, 1, 0, 1, 3004.59, -308.642, 182.018, 2.14304, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138916, 34163, 1, 331, 415, 1, 1, 0, 1, 2933.5, -378.995, 133.643, 1.15862, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138917, 34163, 1, 331, 415, 1, 1, 0, 1, 2910.16, -318.602, 132.494, 5.17668, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138918, 34163, 1, 331, 415, 1, 1, 0, 1, 2868.98, -227.275, 135.765, 3.64534, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138919, 34163, 1, 331, 415, 1, 1, 0, 1, 2842.5, -309.922, 130.192, 3.40682, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138920, 34163, 1, 331, 415, 1, 1, 0, 1, 2826.1, -382.078, 134.792, 2.62125, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138921, 34163, 1, 331, 415, 1, 1, 0, 1, 2818.45, -291.09, 132.494, 0.440124, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138922, 34163, 1, 331, 415, 1, 1, 0, 1, 2813.07, -250.375, 126.9, 5.60474, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138923, 34163, 1, 331, 415, 1, 1, 0, 1, 2809.72, -268.741, 141.227, 3.69189, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138924, 34163, 1, 331, 415, 1, 1, 0, 1, 2804.39, -413.165, 137.915, 2.42484, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138925, 34163, 1, 331, 415, 1, 1, 0, 1, 2764.96, -452.19, 202.006, 2.20647, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138926, 34163, 1, 331, 415, 1, 1, 0, 1, 2764.88, -288.696, 156.109, 5.02856, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(138927, 34163, 1, 331, 415, 1, 1, 0, 1, 2754.33, -306.881, 169.468, 3.65222, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET  `spell1`='65489', `spell3`='65481', `InhabitType`='7', `VehicleId`='156' WHERE entry IN (34433);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34433 AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34433, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 85, 46598, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Just Summoned - Invoker Cast \'Ride Vehicle Hardcoded\''),
(34433, 0, 1, 0, 27, 0, 100, 512, 0, 0, 0, 0, 53, 1, 3443300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Passenger Boarded - Start Start WP Path'),
(34433, 0, 2, 0, 28, 0, 100, 512, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Passenger Removed - Despawn'),
(34433, 0, 3, 0, 40, 0, 100, 512, 9, 3443300, 0, 0, 53, 1, 3443301, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Start WP 9 Reached - Start Loop WP Path'),
(34433, 0, 4, 0, 40, 0, 100, 512, 12, 3443301, 0, 0, 53, 1, 3443301, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Loop WP 12 Reached - Start Loop WP Path'),
(34433, 0, 5, 6, 8, 0, 100, 512, 65481, 0, 45000, 45000, 55, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Spellhit \'Return to Base!\' - Stop WP Path'),
(34433, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 1, 3443302, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Spellhit \'Return to Base!\' - Start End WP Path'),
(34433, 0, 7, 8, 40, 0, 100, 512, 4, 3443302, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On End WP 4 Reached - Cast \'Eject All Passengers\''),
(34433, 0, 8, 0, 61, 0, 100, 512, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On End WP 4 Reached - Despawn'),
(34433, 0, 9, 0, 8, 0, 100, 512, 65537, 0, 0, 0, 33, 34492, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Spellhit \'Thrower Kill Credit\' - Kill Credit to player'),
(34433, 0, 10, 0, 8, 0, 100, 512, 65530, 0, 0, 0, 33, 34494, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Furious Wind Rider - On Spellhit \'Sentinel Kill Credit!\' - Kill Credit to player');

DELETE FROM `smart_scripts` WHERE `entryorguid`=34132 AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34132, 0, 0, 1, 8, 0, 100, 512, 28888, 0, 0, 0, 11, 65537, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(34132, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(34132, 0, 2, 0, 28, 0, 100, 512, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE entry=3443300;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(3443300, 1, 3047, -497, 207, 'Furious Wind Rider - Start Path WP 1'),
(3443300, 2, 3047, -497, 208, 'Furious Wind Rider - Start Path WP 2'),
(3443300, 3, 3047, -497, 209, 'Furious Wind Rider - Start Path WP 3'),
(3443300, 4, 3033, -489, 215, 'Furious Wind Rider - Start Path WP 4'),
(3443300, 5, 2970, -433, 208, 'Furious Wind Rider - Start Path WP 5'),
(3443300, 6, 2925, -406, 208, 'Furious Wind Rider - Start Path WP 6'),
(3443300, 7, 2920, -251, 209, 'Furious Wind Rider - Start Path WP 7'),
(3443300, 8, 2851, -235, 164, 'Furious Wind Rider - Start Path WP 8'),
(3443300, 9, 2812, -265, 150, 'Furious Wind Rider - Start Path WP 9');

DELETE FROM `waypoints` WHERE entry=3443301;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(3443301, 1, 2800, -283, 132, 'Furious Wind Rider - Loop Path WP 1'),
(3443301, 2, 2782, -311, 130, 'Furious Wind Rider - Loop Path WP 2'),
(3443301, 3, 2713, -395, 130, 'Furious Wind Rider - Loop Path WP 3'),
(3443301, 4, 2735, -483, 135, 'Furious Wind Rider - Loop Path WP 4'),
(3443301, 5, 2711, -530, 140, 'Furious Wind Rider - Loop Path WP 5'),
(3443301, 6, 2670, -516, 145, 'Furious Wind Rider - Loop Path WP 6'),
(3443301, 7, 2648, -468, 140, 'Furious Wind Rider - Loop Path WP 7'),
(3443301, 8, 2797, -295, 130, 'Furious Wind Rider - Loop Path WP 8'),
(3443301, 9, 2878, -287, 150, 'Furious Wind Rider - Loop Path WP 9'),
(3443301, 10, 2882, -243, 160, 'Furious Wind Rider - Loop Path WP 10'),
(3443301, 11, 2851, -235, 158, 'Furious Wind Rider - Loop Path WP 11'),
(3443301, 12, 2812, -265, 150, 'Furious Wind Rider - Loop Path WP 12');

DELETE FROM `waypoints` WHERE entry=3443302;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(3443302, 1, 2934, -462, 214, 'Furious Wind Rider - End Path WP 1'),
(3443302, 2, 2990, -503, 215, 'Furious Wind Rider - End Path WP 2'),
(3443302, 3, 3033, -514, 210, 'Furious Wind Rider - End Path WP 3'),
(3443302, 4, 3047, -499, 206, 'Furious Wind Rider - End Path WP 4');

DELETE FROM `creature` WHERE id=34494; 
DELETE FROM `creature` WHERE id=34492;

DELETE FROM `creature` WHERE id=6087;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(70654, 6087, 1, 331, 415, 1, 1, 4843, 0, 2742.51, -456.26, 109.251, 4.15286, 60, 0, 0, 955, 0, 0, 0, 0, 0, 0),
(70997, 6087, 1, 331, 415, 1, 1, 4844, 0, 2825.86, -299.968, 107.815, 0.366518, 60, 0, 0, 955, 0, 0, 0, 0, 0, 0),
(71709, 6087, 1, 331, 415, 1, 1, 0, 0, 2814.51, -272.127, 107.156, 1.71042, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(72062, 6087, 1, 331, 415, 1, 1, 0, 0, 2798.53, -286.392, 107.212, 1.03551, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(72210, 6087, 1, 331, 415, 1, 1, 0, 0, 2768.35, -334.522, 107.214, 3.91332, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(72704, 6087, 1, 331, 415, 1, 1, 0, 0, 2764.46, -322.396, 107.818, 4.64258, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(72712, 6087, 1, 331, 415, 1, 1, 0, 0, 2756.44, -322.464, 107.823, 4.64258, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(98774, 6087, 1, 331, 415, 1, 1, 0, 0, 2729.2, -357.361, 108.542, 5.5676, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(98775, 6087, 1, 331, 415, 1, 1, 0, 0, 2720.34, -370.882, 107.789, 5.84685, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(98776, 6087, 1, 331, 415, 1, 1, 0, 0, 2652.8, -381.443, 107.532, 4.95674, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(98777, 6087, 1, 331, 415, 1, 1, 0, 0, 2637.42, -451.803, 107.003, 2.9147, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(98778, 6087, 1, 331, 415, 1, 1, 0, 0, 2633.37, -443.655, 107.227, 4.04916, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(33134, 6087, 1, 331, 415, 1, 1, 0, 6087, 2637.22, -415.148, 109.072, 2.83232, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33130, 6087, 1, 331, 415, 1, 1, 0, 6087, 2632.1, -431.8, 109.191, 2.98788, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33128, 6087, 1, 331, 415, 1, 1, 0, 6087, 2727.62, -444.366, 109.939, 3.41526, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33119, 6087, 1, 331, 415, 1, 1, 0, 6087, 2724.02, -445.443, 109.432, 0.356314, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33116, 6087, 1, 331, 415, 1, 1, 0, 6087, 2689.1, -375.41, 110.03, 1.50539, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33112, 6087, 1, 331, 415, 1, 1, 0, 6087, 2690.2, -370.214, 109.62, 4.49602, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33109, 6087, 1, 331, 415, 1, 1, 0, 6087, 2806.82, -372.194, 106.723, 6.0223, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33107, 6087, 1, 331, 415, 1, 1, 0, 6087, 2799.15, -395.622, 106.806, 5.89184, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33100, 6087, 1, 331, 415, 1, 1, 0, 6087, 2765.3, -473.904, 108.176, 5.23267, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33098, 6087, 1, 331, 415, 1, 1, 0, 6087, 2785.36, -257.23, 111.722, 0.768996, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33093, 6087, 1, 331, 415, 1, 1, 0, 6087, 2744.96, -395.837, 109.181, 2.64261, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33090, 6087, 1, 331, 415, 1, 1, 0, 6087, 2684.44, -425.618, 108.053, 3.37521, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33087, 6087, 1, 331, 415, 1, 1, 0, 6087, 2674.56, -413.938, 107.333, 4.08774, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(33085, 6087, 1, 331, 415, 1, 1, 0, 6087, 2834.41, -250.331, 106.947, 0.803988, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32999, 6087, 1, 331, 415, 1, 1, 0, 6087, 2824.53, -241.083, 106.609, 0.758829, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32958, 6087, 1, 331, 415, 1, 1, 0, 6087, 2820.08, -347.006, 104.776, 5.94127, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32956, 6087, 1, 331, 415, 1, 1, 0, 6087, 2811.81, -361.204, 105.366, 5.9764, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32948, 6087, 1, 331, 415, 1, 1, 0, 6087, 2827.56, -335.386, 104.383, 5.87076, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32867, 6087, 1, 331, 415, 1, 1, 0, 6087, 2827.8, -322.426, 104.904, 6.28222, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32850, 6087, 1, 331, 415, 1, 1, 0, 6087, 2830.87, -308.694, 104.951, 6.1402, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32848, 6087, 1, 331, 415, 1, 1, 0, 6087, 2840.51, -296.972, 104.687, 0.0828135, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32843, 6087, 1, 331, 415, 1, 1, 0, 6087, 2624.61, -377.406, 104.862, 2.63274, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32838, 6087, 1, 331, 415, 1, 1, 0, 6087, 2675.48, -490.828, 105.661, 4.44178, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32824, 6087, 1, 331, 415, 1, 1, 0, 6087, 2734.38, -485.52, 106.93, 5.19681, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0),
(32817, 6087, 1, 331, 415, 1, 1, 0, 6087, 2747.4, -480.701, 106.829, 5.51502, 60, 0, 0, 1098, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=34132;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(70756, 34132, 1, 331, 415, 1, 1, 0, 0, 2736.35, -330.572, 108.215, 4.90438, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(70778, 34132, 1, 331, 415, 1, 1, 0, 0, 2790.42, -390.596, 107.103, 5.58505, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(71721, 34132, 1, 331, 415, 1, 1, 0, 0, 2796.57, -365.733, 107.777, 0.122173, 30, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(72344, 34132, 1, 331, 415, 1, 1, 29642, 0, 2799.8, -342.605, 108.152, 5.68977, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(72364, 34132, 1, 331, 415, 1, 1, 29642, 0, 2821.52, -303.593, 108.39, 5.86431, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(72468, 34132, 1, 331, 415, 1, 1, 29642, 0, 2684.36, -393.486, 108.491, 3.05433, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(72589, 34132, 1, 331, 415, 1, 1, 29642, 0, 2706.94, -439.468, 108.662, 5.16617, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(72709, 34132, 1, 331, 415, 1, 1, 29642, 0, 2639.64, -425.944, 109.584, 2.9147, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(72858, 34132, 1, 331, 415, 1, 1, 29642, 0, 2753.29, -373.978, 108.191, 6.00393, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(73040, 34132, 1, 331, 415, 1, 1, 29642, 0, 2728.08, -465.237, 108.255, 5.53269, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(73329, 34132, 1, 331, 415, 1, 1, 29642, 0, 2656.2, -457.353, 108.743, 4.38078, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0),
(73399, 34132, 1, 331, 415, 1, 1, 0, 0, 2755.75, -471.413, 108.432, 5.13869, 30, 0, 0, 562, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=6087;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (6087, 0, 0, 0, 0, 0, 4841, 4842, 4843, 4844, 'Astranaar Sentinel', NULL, NULL, 0, 30, 30, 0, 0, 79, 79, 0, 1, 1.14286, 1, 1.14286, 1, 0, 42, 56, 0, 102, 1, 2000, 2000, 1, 0, 2048, 2049, 0, 0, 0, 0, 0, 29, 42, 9, 7, 0, 0, 6087, 6087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 174, NULL, NULL, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6087, 0, 0, '', 12340);

DELETE FROM `creature_template_addon` WHERE `entry`=6087;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (6087, 0, 0, 0, 257, 0, '18950');

UPDATE `creature_template` SET  `speed_fly`='2' WHERE entry IN (34433); 

DELETE FROM `smart_scripts` WHERE `entryorguid`=6087 AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(6087, 0, 0, 1, 4, 0, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving on Aggro'),
(6087, 0, 1, 2, 61, 0, 100, 1, 0, 0, 0, 0, 11, 95826, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Shoot on Aggro'),
(6087, 0, 2, 3, 61, 0, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Melee Attack on Aggro'),
(6087, 0, 3, 0, 61, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(6087, 0, 4, 5, 9, 1, 100, 0, 5, 30, 2300, 3900, 11, 95826, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Shoot'),
(6087, 0, 5, 0, 61, 1, 100, 0, 0, 0, 0, 0, 40, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Ranged Weapon Model'),
(6087, 0, 6, 7, 9, 1, 100, 0, 30, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in Shoot Range'),
(6087, 0, 7, 0, 61, 1, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Melee Attack when not in Shoot Range'),
(6087, 0, 8, 9, 9, 1, 100, 0, 0, 10, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in Shoot Range'),
(6087, 0, 9, 10, 61, 1, 100, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Melee Weapon Model when not in Shoot Range'),
(6087, 0, 10, 0, 61, 1, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Melee Attack when not in Shoot Range'),
(6087, 0, 11, 12, 9, 1, 100, 0, 11, 25, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 25 Yards'),
(6087, 0, 12, 13, 61, 1, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Melee Attack at 25 Yards'),
(6087, 0, 13, 0, 61, 1, 100, 0, 0, 0, 0, 0, 40, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Ranged Weapon Model at 25 Yards'),
(6087, 0, 14, 15, 7, 1, 100, 1, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Melee Weapon Model on Evade'),
(6087, 0, 15, 0, 61, 1, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Reset on Evade'),
(6087, 0, 16, 17, 8, 0, 100, 0, 28888, 0, 0, 0, 11, 65530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Astranaar Sentinel - On Spellhit \'Blastranaar Explosive Impact\' - Kill Credit'),
(6087, 0, 17, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Astranaar Sentinel - On Script - Die');

