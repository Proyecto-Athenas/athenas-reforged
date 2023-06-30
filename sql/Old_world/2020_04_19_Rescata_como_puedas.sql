-- 24771
DELETE FROM `creature_template` WHERE `entry`=24771;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(24771, 0, 0, 0, 0, 0, 16480, 19595, 0, 0, 'Coldarra Invisman', '', '', 0, 60, 60, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 104, 138, 0, 252, 1, 2000, 0, 1, 33554688, 2048, 8, 0, 0, 0, 0, 0, 72, 106, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);

-- spawn 24771
DELETE FROM `creature` WHERE `id`=24771;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(345375, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2200.57, 5345.46, 49.417, 3.54302, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345336, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2177.74, 5360.45, 9.31609, 1.0472, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345335, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2190.7, 5354.83, 27.4536, 0.296706, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345333, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2173.69, 5367.4, 1.54144, 4.20624, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345329, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2192.27, 5354.3, 45.8996, 0.139626, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345319, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2177.06, 5344.92, 39.3679, 4.18879, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345318, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2159.49, 5352.53, 30.4751, 1.27409, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345317, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2163.27, 5359.34, 25.7703, 5.48033, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345316, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2169.72, 5367.75, 9.27426, 3.64774, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345315, 24771, 571, 3537, 4105, 1, 1, 19595, 0, 3393, 6239.83, 75.7206, 4.67748, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345314, 24771, 571, 3537, 4032, 1, 1, 19595, 0, 2168.99, 5363.41, 26.1033, 5.46288, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345313, 24771, 571, 3537, 4105, 1, 1, 19595, 0, 3485.12, 6115.74, 71.0778, 2.58309, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345312, 24771, 571, 3537, 4105, 1, 1, 19595, 0, 3262.45, 6161.92, 73.0009, 0.10472, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(345311, 24771, 571, 3537, 3537, 1, 1, 19595, 0, 3211.72, 6091.62, 138.111, 4.93928, 90, 0, 0, 4979, 0, 0, 0, 0, 0, 0),
(434356, 24771, 571, 3537, 3537, 1, 1, 0, 0, 3211.9, 6091.56, 145.812, 1.7573, 120, 0, 0, 3052, 0, 0, 0, 0, 0, 0);

-- amartAI 24771
DELETE FROM `smart_scripts` WHERE `entryorguid`=24771 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(24771, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 80, 2477100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Coldarra Invisman - On Data Set 1 1 - Run Script (No Repeat)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=2477100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2477100, 9, 0, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 9, 0, 0, 0, 0, 0, 0, 20, 187884, 20, 0, 0, 0, 0, 0, 'Coldarra Invisman - On Script - activate Game Object'),
(2477100, 9, 1, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 46013, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Coldarra Invisman - On Script - Cast \'Summon Lady Evanor\'');
