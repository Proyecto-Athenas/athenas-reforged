
SET @ENTRY := 46717;
DELETE FROM `creature_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 35324, 35324, 0, 0, 'The Hammer of Twilight', '', '', 0, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 34816, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 1, 19, 0, 100, 0, 27787, 0, 0, 0, 12, 46900, 2, 30000, 0, 0, 0, 8, 0, 0, 0, -5258.4, -4819.22, 444.549, 5.33489, ''),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46899, 2, 35000, 0, 0, 0, 8, 0, 0, 0, -5255.79, -4840.86, 444.429, 0.989664, ''),
(@ENTRY, 0, 2, 3, 19, 0, 100, 0, 27788, 0, 0, 0, 12, 46900, 2, 30000, 0, 0, 0, 8, 0, 0, 0, -5258.4, -4819.22, 444.549, 5.33489, ''),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46899, 2, 35000, 0, 0, 0, 8, 0, 0, 0, -5255.79, -4840.86, 444.429, 0.989664, ''),
(@ENTRY, 0, 4, 0, 19, 0, 100, 0, 27787, 0, 0, 0, 28, 81010, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(@ENTRY, 0, 5, 0, 19, 0, 100, 0, 27788, 0, 0, 0, 28, 81010, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@ENTRY, 0, 0, 0, 1, 0, '87266 89476');

DELETE FROM `creature` WHERE `id`=@ENTRY;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(23087, @ENTRY, 0, 4922, 5584, 1, 2, 0, 0, -5248.16, -4830.15, 444.389, 0.965349, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(507585, @ENTRY, 0, 4922, 5584, 1, 4, 0, 0, -5248.16, -4830.15, 444.389, 0.965349, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=46732;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46732, 0, 0, 0, 0, 0, 18698, 0, 0, 0, 'Skullcrusher the Mountain', 'Chosen of Cho\'gall', '', 0, 85, 85, 3, 0, 2326, 2326, 0, 1, 1.14286, 1, 1.14286, 1, 1, 530, 713, 0, 827, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 150, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=46732 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(46732, 0, 0, 'I am the favored of the master Cho\'gall. I WILL NOT FALL TO YOU.', 14, 0, 100, 5, 2000, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=46732 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46732, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 22000, 25000, 11, 93760, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Massive Shockwave'),
(46732, 0, 2, 0, 9, 0, 100, 0, 0, 5, 15000, 45000, 11, 93767, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Ground Pound on Close'),
(46732, 0, 3, 4, 2, 0, 100, 1, 0, 85, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 47038, 30, 0, 0, 0, 0, 0, ''),
(46732, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 47039, 30, 0, 0, 0, 0, 0, ''),
(46732, 0, 5, 0, 2, 0, 100, 1, 0, 85, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 6, 0, 2, 0, 100, 1, 0, 75, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 7, 0, 2, 0, 100, 1, 0, 65, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 8, 0, 2, 0, 100, 1, 0, 55, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 9, 0, 2, 0, 100, 1, 0, 45, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 10, 0, 2, 0, 100, 1, 0, 35, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 11, 0, 2, 0, 100, 1, 0, 25, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 12, 0, 2, 0, 100, 1, 0, 15, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 13, 0, 2, 0, 100, 1, 0, 10, 0, 0, 80, 4673201, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 14, 0, 2, 0, 100, 1, 0, 5, 0, 0, 80, 4673200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46732, 0, 15, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 46732, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4673200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4673200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 50643, 2, 60000, 0, 0, 0, 8, 0, 0, 0, -5248.49, -4806.89, 445.333, 4.89524, ''),
(4673200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 50638, 2, 60000, 0, 0, 0, 8, 0, 0, 0, -5226.56, -4820.43, 445.365, 3.60064, ''),
(4673200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 50635, 2, 60000, 0, 0, 0, 8, 0, 0, 0, -5232.34, -4847.09, 445.273, 2.37127, ''),
(4673200, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 50636, 2, 60000, 0, 0, 0, 8, 0, 0, 0, -5269.44, -4824.48, 445.353, 6.16561, ''),
(4673200, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 50643, 2, 60000, 0, 0, 0, 8, 0, 0, 0, -5258.94, -4849.03, 445.297, 6.16561, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4673201 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4673201, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (50635,50636,50638,50643) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(50635, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 94299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50635, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50635, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50636, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 94296, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50636, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50636, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50638, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 94300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50638, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50638, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50643, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 94298, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50643, 0, 1, 2, 73, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(50643, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id IN (50612,50599,50600,50603,46732);
DELETE FROM `report_quest` WHERE id=27786;

DELETE FROM `conditions` WHERE SourceEntry=46717;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 46717, 0, 0, 29, 0, 46900, 50, 0, 1, 0, 0, '', ''),
(22, 1, 46717, 0, 0, 29, 0, 46899, 50, 0, 1, 0, 0, '', ''),
(22, 3, 46717, 0, 0, 29, 0, 46899, 50, 0, 1, 0, 0, '', ''),
(22, 3, 46717, 0, 0, 29, 0, 46900, 50, 0, 1, 0, 0, '', '');


DELETE FROM `creature` WHERE `guid`=20528;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(20528, 46897, 0, 4922, 5584, 1, 4, 0, 0, -5231.52, -4810.82, 444.433, 4.11076, 30, 0, 0, 840, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=5771;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5771, 50638, 0, 4922, 5584, 1, 1, 0, 0, -5255.76, -4824.74, 444.428, 3.43494, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=5770;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5770, 50635, 0, 4922, 5584, 1, 1, 0, 0, -5249.06, -4839.26, 444.43, 5.35524, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=61005;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(61005, 50636, 0, 4922, 5584, 1, 1, 0, 0, -5238.25, -4832, 444.448, 1.97998, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=46104;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(46104, 50640, 0, 4922, 5584, 1, 1, 0, 0, -5245.16, -4819.3, 444.554, 2.0762, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=23089;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(23089, 46892, 0, 4922, 5584, 1, 4, 0, 0, -5238.55, -4805.33, 444.436, 4.16803, 30, 0, 0, 879914, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=23090;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(23090, 46895, 0, 4922, 5584, 1, 4, 0, 46895, -5235.87, -4809.77, 444.431, 4.16624, 30, 0, 0, 1173222, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=63721;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(63721, 47038, 0, 4922, 5584, 1, 4, 0, 47038, -5230.46, -4810.45, 444.437, 4.22711, 30, 0, 0, 351389, 222700, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `guid`=20527;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(20527, 47039, 0, 4922, 5584, 1, 4, 0, 0, -5237.96, -4806.37, 444.431, 4.11578, 30, 0, 0, 210, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=20526;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(20526, 46893, 0, 4922, 5584, 1, 4, 0, 0, -5236.44, -4810.62, 444.431, 4.15574, 30, 0, 0, 630, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_area` WHERE `area`=5584;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115011, 5584, 0, 0, 0, 0, 946, 2, 1, 10, 11),
(115010, 5584, 0, 0, 0, 0, 2098253, 2, 1, 10, 11),
(81010, 5584, 0, 0, 27787, 0, 2098253, 2, 1, 1, 1),
(81010, 5584, 0, 0, 27788, 0, 946, 2, 1, 1, 1);

DELETE FROM `creature_template` WHERE `entry`=46899;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46899, 0, 0, 0, 0, 0, 18698, 0, 0, 0, 'Skullcrusher the Mountain', 'Chosen of Cho\'gall', '', 0, 88, 88, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 1, 722, 811, 0, 824, 1.5, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 722, 811, 824, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 20, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid`=46899 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46899, 0, 0, 0, 38, 0, 100, 1, 0, 1, 0, 0, 80, 4689900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=46900;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46900, 0, 0, 0, 0, 0, 34576, 0, 0, 0, 'Cho\'gall', '', '', 0, 88, 88, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 3, 5000, 5000, 0, 5000, 10, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 7, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 20000, NULL, NULL, 'SmartAI', 0, 3, 1, 1050, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299839, 0, '', 1);

DELETE FROM `smart_scripts` WHERE `entryorguid`=46900 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46900, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4690000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4689900,4690000) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4689900, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4689900, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 86, 89147, 0, 18, 50, 0, 0, 18, 50, 0, 0, 0, 0, 0, 0, ''),
(4689900, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4689900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 46967, 0, 0, 0, 0, 0, 18, 60, 0, 0, 0, 0, 0, 0, ''),
(4689900, 9, 4, 0, 0, 0, 100, 0, 500, 500, 0, 0, 62, 0, 0, 0, 0, 0, 0, 18, 50, 0, 0, -4929.46, -4917.89, 243.432, 2.96363, ''),
(4689900, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46732, 6, 20000, 0, 0, 0, 8, 0, 0, 0, -5251.18, -4835.59, 444.464, 1.00166, ''),
(4689900, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 11, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 71, 469000, 1, 65090, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 5, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 87685, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 7, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 34815, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4690000, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 46899, 20, 0, 0, 0, 0, 0, ''),
(4690000, 9, 10, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE entry=46900;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(46900, 0, 0, 'Back, vermin! (Insects! Weak and small!)', 14, 0, 100, 5, 2000, 0, 46984, ''),
(46900, 1, 0, 'Look, mortal, upon the instrument of your undoing. (The Hammer, hand of the Gods Below.) Forged of molten blood... (...gift of the master. His gift!) Shaped upon the Last Altar of Storm.', 14, 0, 100, 0, 2000, 35, 46985, ''),
(46900, 2, 0, 'The Hammer of Twilight. (The Hammer of Twilight!) Commissioned by the Aspect of Death. It is the breaker of worlds. It is not yours to wield. (Kill the intruders!) Kill them all!', 14, 0, 100, 5, 2000, 0, 46986, ''),
(46900, 3, 0, 'What Deathwing has set in motion... (...no man can stop.) No man! Least of all you wretches! (Show them. Show them their end!)', 14, 0, 100, 5, 2000, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=46899;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(46899, 0, 0, 'Get back up there and get into the fight!', 41, 0, 100, 0, 0, 0, 47078, '');

DELETE FROM `creature_template` WHERE `entry`=46900;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46900, 0, 0, 0, 0, 0, 34576, 0, 0, 0, 'Cho\'gall', '', '', 0, 88, 88, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 3, 5000, 5000, 0, 5000, 10, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 7, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 20000, NULL, NULL, 'SmartAI', 0, 3, 1, 1050, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299839, 0, '', 1);

DELETE FROM `report_quest` WHERE `id`=27787;

DELETE FROM `quest_template` WHERE `Id`=27787;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27787, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 65535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27784, 0, 0, 0, 5, 282000, 624600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63708, 63707, 63706, 63705, 0, 0, 1, 1, 1, 1, 0, 0, 1174, 72, 0, 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skullcrusher the Mountain', 'Survive and then slay Skullcrusher the Mountain.', 'It was a trap! Cho\'gall lured you in with the Hammer of Twilight so that his gronn could finish you off.$B$BSurvive and slay Skullcrusher the Mountain!', '', 'You did it, lad! You beat that damned gronn and sent Cho\'gall packing into the Twilight Bastion.$B$BDon\'t you worry. With your help and that of your friends, we\'ll get in there and we\'ll kill Cho\'gall once and for all!', '', 'Speak with Kurdran Wildhammer at Victor\'s Point in the Twilight Highlands.', 46732, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Survive Skullcrusher\'s backhand', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `smart_scripts` WHERE `entryorguid`=47038 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47038, 0, 0, 0, 38, 0, 100, 1, 0, 1, 0, 0, 80, 4703800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47038, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 12000, 26000, 11, 15493, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4703800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4703800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4703800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 65983, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4703800, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `quest_template` WHERE `Id`=27786;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27786, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 65535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27783, 0, 0, 27788, 5, 0, 416400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Hammer of Twilight', 'Get to the Hammer of Twilight.', 'While you were in the mine, I was able to figure out where the Hammer of Twilight is being kept. They created it at the Altar of Twilight to the south.$B$BMore important than that, the cultists have made a critical error: Cho\'gall is personally overseeing its final construction.$B$B<Garona begins sharpening her blades.>$B$BMany Kor\'kron died to bring us this information.', '', 'The Hammer of Twilight floats in the middle of the altar, unprotected....', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `report_quest` WHERE `Id`=27788;
DELETE FROM `quest_template` WHERE `Id`=27788;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27788, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27786, 0, 0, 0, 5, 282000, 624600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63704, 63703, 63702, 63701, 0, 0, 1, 1, 1, 1, 0, 0, 1172, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Skullcrusher the Mountain', 'Survive and then slay Skullcrusher the Mountain.', 'It was a trap! Cho\'gall lured you in with the Hammer of Twilight so that his gronn could finish you off.$B$BSurvive and slay Skullcrusher the Mountain!', '', 'You did it, $N! You beat that damned gronn and sent Cho\'gall packing into the Twilight Bastion.$B$BDon\'t you worry. With your help and that of your friends, we\'ll get in there and we\'ll kill Cho\'gall once and for all!', '', 'Speak with Warlord Zaela at Crushblow in the Twilight Highlands.', 46732, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Survive Skullcrusher\'s backhand', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature_equip_template` WHERE `entry`=469000;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(469000, 65090, 0, 0);


-- Golpe de gracia

DELETE FROM `report_quest` WHERE `Id` IN (27703,27702);
DELETE FROM `quest_template` WHERE `Id` IN (27703,27702);
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27703, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27701, 0, 0, 0, 5, 94000, 416400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63722, 63721, 63723, 0, 0, 0, 1, 1, 1, 0, 0, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coup de Grace', 'Deliver a Coup de Grace on 5 Twilight Skyterrors.', 'Look at that. Lirastrasza\'s destroying them!$B$BThere are still drakes that she\'s downing that need finishing off, $N. We don\'t want the stinking Twilight healers to get them back up into the air.$B$BTime for a little Coup de Grace.', '', 'Good thing that you and Warlord Krogg made friends with the red dragons.', '', 'Return to Garona Halforcen at the Twilight Citadel in the Twilight Highlands.', 46416, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coup de Grace delivered', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(27702, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27700, 0, 0, 0, 5, 94000, 416400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63725, 63724, 63726, 0, 0, 0, 1, 1, 1, 0, 0, 0, 72, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coup de Grace', 'Deliver a Coup de Grace on 5 Twilight Skyterrors.', 'Look at that. Lirastrasza\'s destroying them!$B$BThere are drakes that she\'s downing that need finishing off, $N. Wouldn\'t want the Twilight\'s healers to get them back up into the air.$B$BTime for a little Coup de Grace.', '', 'Our efforts to improve relations with the red dragons has really paid off, $N.', '', 'Return to Master Mathias Shaw at the Twilight Citadel in the Twilight Highlands.', 46416, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coup de Grace delivered', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 396, 273, 0, 0, 0, 0, 0, 0, 0, 0, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Y el cielo se volvió rojo

DELETE FROM `creature_template` WHERE `entry`=47711;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(47711, 0, 0, 0, 0, 0, 31463, 0, 0, 0, 'Vermillion Skyscreamer', '', '', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1280, 0, 0, NULL, NULL, 'SmartAI', 0, 7, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 189, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=47711;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(47711, 0, 0, 0, 1, 0, '88830');


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=47711 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(47711, 46598, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=47711 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47711, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 85, 46598, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47711, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 44, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47711, 0, 2, 0, 27, 0, 100, 512, 0, 0, 0, 0, 53, 1, 47711, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47711, 0, 3, 4, 40, 0, 100, 512, 16, 47711, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47711, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47711, 0, 5, 0, 27, 0, 100, 512, 0, 0, 0, 0, 33, 47605, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `waypoints` WHERE `entry`=47711;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(47711, 1, -4152.37, -3620.39, 228.115, ''),
(47711, 2, -4150.74, -3705.8, 254.599, ''),
(47711, 3, -4105.75, -3829.67, 247.666, ''),
(47711, 4, -4059.46, -3995.47, 255.406, ''),
(47711, 5, -3975.53, -4133.4, 238.071, ''),
(47711, 6, -3928.38, -4208.98, 215.358, ''),
(47711, 7, -3919.09, -4358.26, 216.751, ''),
(47711, 8, -3989.97, -4456.76, 206.379, ''),
(47711, 9, -4142.41, -4607.44, 167.953, ''),
(47711, 10, -4312.35, -4709.77, 159.985, ''),
(47711, 11, -4431.59, -4783.42, 169.776, ''),
(47711, 12, -4578.3, -4904.69, 184.025, ''),
(47711, 13, -4590.63, -5021.38, 171.374, ''),
(47711, 14, -4600.25, -5230.78, 149.844, ''),
(47711, 15, -4694.8, -5502.34, 118.095, ''),
(47711, 16, -4616.3, -5554.24, 78.437, '');


DELETE FROM `report_quest` WHERE `Id`=28171;
DELETE FROM `quest_template` WHERE `Id`=28171;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(28171, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28758, 0, 0, 0, 5, 47000, 208200, 0, 0, 0, 0, 0, 0, 0, 0, 88829, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'And the Sky Streaked Red', 'Join the assault on the black dragonflight.', 'With Deathwing otherwise occupied, we have a grim and daunting task ahead of us, under charge of the queen herself. The black dragonflight is to be wiped out.$B$BI would welcome your aid in this, if it is offered. As soon as you are ready, I will send you with the next flight joining the attack.', '', 'It seems you are still with us. I\'m somewhat appreciative of that.$B$BThank you.', '', 'Speak to Lirastrasza just northwest of the Obsidian Forest in Twilight Highlands.', 47605, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Red dragonflight assault joined', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);


DELETE FROM `creature` WHERE id=46088;


-- Si la llave encaja 


DELETE FROM `report_quest` WHERE `Id`=28092;
DELETE FROM `quest_template` WHERE `Id`=28092;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(28092, 2, NULL, 'Untested', 85, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28097, 0, 0, 28093, 5, 94000, 416400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1133, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'If The Key Fits', 'Lead the Gob Squad to the closed Dragonmaw Gate.$B$BIf you lose the Gob Squad, return to Warlord Krogg for reassignment.', 'The wyrms have already taken the battle to the sky above Grim Batol. It\'s up to us to move our men in by ground and secure the gates.$B$BI want you to know what is at stake here, $c. Grim Batol is the source of Twilight\'s Hammer reinforcements to all of the highlands. If we do not cut them off here, we will not win the battles ahead.$B$BI\'m sending the Gob Squad with you. Get to the gate to the southeast and get it open. Patch should have any further instructions you\'ll need from there.', '', 'Works like a charm, every time.', '', 'Speak to Patch at Wyrms\' Bend in the Twilight Highlands.$B$BSpeak to Warlord Krogg at Wyrms\' Bend in the Twilight Highlands if you are no longer with Patch.', 47539, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Gate opened', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature_template` WHERE `entry` IN (47374,47493);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(47374, 0, 0, 0, 0, 0, 30315, 0, 0, 0, 'Patch', 'Gob Squad', '', 0, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 2, 2.14286, 1, 0, 234, 645, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 3.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623),
(47493, 0, 0, 0, 0, 0, 32985, 0, 0, 0, 'Warlord Krogg', '', '', 12299, 85, 85, 3, 0, 29, 29, 3, 1, 1.14286, 1, 1.35714, 1, 0, 530, 713, 0, 827, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (47374,47493) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47374, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 33, 47539, 0, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, ''),
(47374, 0, 1, 2, 38, 0, 100, 0, 0, 2, 0, 0, 33, 47566, 0, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, ''),
(47374, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47374, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, -4129.41, -3551.35, 230.412, 1.64417, ''),
(47374, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47374, 0, 5, 0, 54, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47493, 0, 0, 0, 19, 0, 100, 0, 28092, 0, 0, 0, 85, 88382, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(47493, 0, 1, 2, 62, 0, 100, 0, 12299, 0, 0, 0, 85, 88382, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(47493, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=12299;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 12299, 0, 0, 0, 29, 0, 47374, 8, 0, 1, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken'),
(15, 12299, 0, 0, 0, 9, 0, 28092, 0, 0, 0, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken');


DELETE FROM `creature_text` WHERE `entry`=47374;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(47374, 0, 0, 'Good working with you.', 12, 0, 100, 0, 0, 0, 47951, ''),
(47374, 1, 0, 'Awaiting your orders.', 12, 0, 100, 0, 0, 0, 36693, '');

DELETE FROM `creature_template` WHERE `entry`=47539;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(47539, 0, 0, 0, 0, 0, 169, 11686, 0, 0, 'Dragonmaw Gate Controller', '', '', 0, 80, 80, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `creature` WHERE `id`=47539;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(22585, 47539, 0, 4922, 5462, 1, 7, 0, 0, -3974.56, -3990.66, 175.28, 2.28976, 90, 0, 0, 5342, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=47539;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47539, 0, 0, 0, 10, 0, 100, 0, 1, 10, 2000, 10000, 45, 0, 1, 0, 0, 0, 0, 11, 47374, 10, 0, 0, 0, 0, 0, ''),
(47539, 0, 1, 0, 10, 0, 100, 0, 1, 10, 2000, 10000, 45, 0, 1, 0, 0, 0, 0, 11, 47611, 10, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject` WHERE id IN (206703,206702,206657);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(29151, 206657, 0, 4922, 5462, 1, 7, -3970.16, -3970.2, 176.872, 0, 0, 0, -0.34202, 0.939693, 60, 255, 1),
(29152, 206657, 0, 4922, 5462, 1, 7, -3987.38, -4002.61, 174.962, 0, 0, 0, 0.951056, 0.309017, 60, 255, 1);

-- Las fauces de Iso'rath

DELETE FROM `report_quest` WHERE id=27376;
DELETE FROM `quest_template` WHERE `Id`=27376;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27376, 2, NULL, 'Untested', 84, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27300, 0, 0, 27377, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1135, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Maw of Iso\'rath', 'Mount a gryphon to join the attack on Iso\'rath.', 'We are ready to attack the beast. First, we need to destroy it\'s tentacles, then Yevaa will perform a ritual to summon a powerful fire elemental that we will drop into its maw.$B$BI want you to fly out with our first group attack. Hold steady until an opportunity presents itself, then join the battle with the rest of the shaman in cutting the tentacles down.$B$BTake any one of the gryphons when you\'re ready to join the assault.', '', 'The tentacles swept us off of our gryphons as well! They were far more nimble than we anticipated.$B$BNo matter. We were prepared for this possibility. I can summon the elemental from here if you can keep me safe.', 'You were to meet at the gryphons. Please stick to the plan.', 'Speak to Earthcaller Yevaa within the stomach of Iso\'rath in the Twilight Highlands.', 48281, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Join the assault on Iso\'rath', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);


DELETE FROM `creature_template` WHERE entry IN (47994,47992,47993,45426,47999,48000,48739,45435,47973,47960);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(45426, 0, 0, 0, 0, 0, 33192, 33193, 33194, 0, 'Earthen Ring Channeler', 'The Earthen Ring', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.35714, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623),
(45435, 0, 0, 0, 0, 0, 17703, 0, 0, 0, 'Earthen Ring Gryphon', '', 'vehichleCursor', 0, 85, 85, 3, 0, 1727, 1727, 16777216, 1, 1.14286, 1.2, 1.71429, 1, 0, 530, 713, 0, 827, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 165, 1, 0, 0, 0, '', 13623),
(47960, 0, 0, 0, 0, 0, 28951, 0, 0, 0, 'Brain of Iso\'rath', '', '', 0, 88, 88, 3, 0, 16, 16, 0, 1, 1.14286, 1, 1.14286, 1, 0, 530, 713, 0, 827, 2, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 0, '', 13623),
(47973, 0, 0, 0, 0, 0, 17703, 0, 0, 0, 'Earthen Ring Gryphon', '', '', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1.64286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1106, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 165, 1, 0, 0, 0, '', 13623),
(47992, 0, 0, 0, 0, 0, 1204, 0, 0, 0, 'Greater Fire Elemental', '', '', 0, 85, 85, 3, 0, 2323, 2323, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 2, 0, 33556480, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 6, 6.05712, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623),
(47993, 0, 0, 0, 0, 0, 2533, 0, 0, 0, 'Greater Earth Elemental', '', '', 0, 85, 85, 3, 0, 2323, 2323, 0, 1, 1.14286, 1.55556, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 2, 0, 33556480, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 6, 6.05712, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623),
(47994, 0, 0, 0, 0, 0, 35936, 0, 0, 0, 'Blood of Iso\'rath', '', '', 0, 84, 84, 3, 0, 2324, 2324, 0, 1, 1.14286, 0.6, 0.214286, 1, 0, 350, 440, 0, 224, 1.2, 2000, 2000, 1, 32768, 33556480, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 66, 1, 0, 0, 0, '', 13623),
(47999, 0, 0, 0, 0, 0, 32963, 0, 0, 0, 'Initiate Goldmine', 'The Earthen Ring', '', 0, 85, 85, 3, 0, 2168, 2168, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 2, 33536, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 6, 6.05712, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623),
(48000, 0, 0, 0, 0, 0, 35942, 0, 0, 0, 'Fireborn Destroyer', '', '', 0, 85, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1.55556, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 2, 768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 50, 10.0952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623),
(48739, 0, 0, 0, 0, 0, 36451, 0, 0, 0, 'Tentacle of Iso\'rath', '', '', 0, 84, 84, 3, 0, 14, 14, 16777216, 1, 1.14286, 1, 1, 1, 1, 380, 500, 0, 324, 2, 2000, 2000, 1, 0, 67584, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1347, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 4, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE id IN (47992,47993,47994,45426,47999,47991,47960,48000,45435);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(21941, 45426, 0, 4922, 5437, 1, 1, 0, 0, -2545.28, -4756.32, 180.473, 2.54673, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(21942, 45426, 0, 4922, 5437, 1, 1, 0, 0, -2545.66, -4751.19, 180.74, 3.78111, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(21943, 45426, 0, 4922, 5437, 1, 1, 0, 0, -2550.53, -4748.42, 180.741, 4.72446, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(21944, 45426, 0, 4922, 5437, 1, 1, 0, 0, -2555.32, -4750.77, 180.561, 5.68287, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(21945, 45426, 0, 4922, 5437, 1, 1, 0, 0, -2555.32, -4755.99, 180.334, 0.448406, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22251, 45426, 0, 4922, 5664, 1, 2, 0, 0, -2676.71, -4980.03, -128.808, 5.43053, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22252, 45426, 0, 4922, 5664, 1, 2, 0, 0, -2682.45, -4992.05, -128.806, 0.26107, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22253, 45426, 0, 4922, 5664, 1, 2, 0, 0, -2675.69, -4999.74, -128.808, 1.27194, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22270, 45426, 0, 4922, 5664, 1, 2, 0, 0, -2664.68, -4998.62, -128.94, 2.10991, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22369, 45426, 0, 4922, 5664, 1, 5, 0, 0, -2595.83, -4971.08, -126.084, 3.2704, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22374, 45426, 0, 4922, 5664, 1, 5, 0, 0, -2668.82, -4899.45, -127.939, 4.98649, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22375, 45426, 0, 4922, 5664, 1, 5, 0, 0, -2650.33, -5057.79, -126.982, 1.84691, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22379, 45426, 0, 4922, 5664, 1, 5, 0, 0, -2745.34, -4998.47, -126.925, 0.269789, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(22317, 45435, 0, 4922, 5437, 1, 1, 0, 0, -2544.12, -4783.74, 179.539, 4.60051, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(22316, 45435, 0, 4922, 5437, 1, 1, 0, 0, -2537.06, -4781.75, 179.925, 4.65392, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(21937, 45435, 0, 4922, 5437, 1, 1, 0, 0, -2531.48, -4784.87, 179.924, 4.64903, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(21938, 45435, 0, 4922, 5437, 1, 1, 0, 0, -2525.7, -4786.19, 180.149, 4.43828, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(63628, 47960, 0, 4922, 5664, 1, 1, 0, 0, -2678.5, -4988.93, -128.806, 0.570874, 30, 0, 0, 180373, 0, 0, 0, 0, 4, 0),
(22255, 47991, 0, 4922, 5664, 1, 2, 0, 0, -2664.87, -4982.21, -128.808, 4.17262, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22274, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2659.7, -5048.9, -128.535, 6.10892, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22275, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2652.48, -5061.06, -127.078, 0.29614, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22288, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2667.14, -5059.49, -129.377, 0.115498, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22289, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2721.16, -4957.2, -128.289, 3.15269, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22291, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2710.75, -4943.04, -128.702, 2.24456, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22292, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2728.46, -4938.74, -126.852, 2.39985, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22293, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2606.38, -5017.67, -127.235, 4.71502, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22256, 47992, 0, 4922, 5664, 1, 2, 0, 0, -2601.51, -5044.03, -129.955, 3.75762, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22257, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2682.21, -5018.09, -126.721, 4.23735, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22258, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2695.72, -5002.42, -127.499, 3.70045, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22271, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2700.75, -4981.42, -127.036, 2.88756, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22273, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2689.28, -4956.95, -126.267, 2.39581, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22250, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2663.91, -4942.69, -126.704, 1.95424, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22259, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2641.8, -4951.45, -125.53, 0.98157, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22260, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2627.27, -4971.23, -127.042, 0.248968, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22261, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2631.6, -4997.57, -125.392, 5.94005, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22262, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2643.59, -5017.87, -127.032, 5.24266, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22263, 47993, 0, 4922, 5664, 1, 2, 0, 0, -2661.42, -5022.13, -127.162, 4.6907, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22264, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2633.29, -5027.78, -129.544, 4.1299, 90, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22265, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2632.07, -4941.76, -129.539, 6.03659, 90, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22266, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2714.08, -4949.81, -128.401, 1.122, 90, 15, 0, 64496, 0, 1, 0, 557056, 0, 0),
(22267, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2724.99, -5034.24, -131.026, 2.64524, 90, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22268, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2652.76, -5039.38, -127.661, 1.89231, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22269, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2678.23, -5037.62, -128.971, 1.45074, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22276, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2717.82, -5019.07, -130.205, 0.696187, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22277, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2742.12, -4996.44, -127.337, 0.139209, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22278, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2723.25, -4963.86, -128.811, 5.81895, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22279, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2732.9, -4930.97, -126.486, 5.75686, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22280, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2700.13, -4942.25, -129.868, 5.61736, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22281, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2668.31, -4929.09, -128.411, 4.81006, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22282, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2637.81, -4942.77, -129.28, 4.27821, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22283, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2622.25, -4960.87, -128.686, 3.93918, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22284, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2616.95, -4994.83, -127.769, 3.24672, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22285, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2640.21, -5031.24, -128.014, 2.16466, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22286, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2689.92, -5026.61, -129.758, 0.707662, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22294, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2623.25, -5028.7, -130.105, 0.326786, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22295, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2610.9, -5028.45, -128.45, 4.05664, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22296, 47994, 0, 4922, 5664, 1, 2, 0, 0, -2593.93, -5011.52, -128.743, 2.84028, 90, 15, 0, 1, 0, 1, 0, 0, 0, 0),
(22297, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2744.35, -4954.36, -129.833, 1.73969, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22298, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2735.08, -5026.94, -131.08, 3.46565, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22299, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2573, -4996.41, -130.6, 2.92207, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22300, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2574.84, -4948.38, -126.292, 5.89088, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22301, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2618.74, -4944.35, -130.237, 4.12216, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22302, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2612.81, -4913.54, -127.391, 0.366385, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22303, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2637.91, -4923.17, -129.22, 0.784217, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22304, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2673.54, -4944.09, -126.505, 1.2531, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22305, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2701.03, -4979.25, -126.693, 2.77049, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22306, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2667.92, -4969.25, -128.807, 2.03536, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22307, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2667.04, -4990.91, -128.807, 0.242292, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22308, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2692.95, -5000.65, -128.812, 1.65601, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22309, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2677.8, -5034.15, -128.625, 2.96605, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22310, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2608.4, -5060.21, -131.601, 4.39281, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22311, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2609.91, -5012.96, -127.959, 5.1314, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22312, 47994, 0, 4922, 5664, 1, 4, 0, 0, -2631.2, -4985.35, -128.198, 0.706466, 300, 15, 0, 64496, 0, 1, 0, 0, 0, 0),
(22313, 47999, 0, 4922, 5664, 1, 2, 0, 0, -2659.95, -4987.98, -128.916, 3.28949, 90, 0, 0, 351966, 26724, 0, 0, 0, 0, 0),
(22314, 48000, 0, 4922, 5664, 1, 2, 0, 0, -2672.09, -4989.54, -128.805, 0.689775, 90, 0, 0, 2933051, 44540, 0, 0, 0, 0, 0);




DELETE FROM `smart_scripts` WHERE `entryorguid` IN (47994,47999,47991,47960,47973) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4797300) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47994, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 15000, 11, 9459, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Corrosive Ooze'),
(47994, 0, 1, 0, 2, 0, 100, 0, 0, 40, 22000, 25000, 11, 54580, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Coagulate at 40% HP'),
(47994, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4799400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47999, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 22000, 25000, 11, 78222, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Stoneskin Totem'),
(47999, 0, 1, 0, 1, 0, 100, 0, 500, 1000, 600000, 600000, 11, 79892, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Water Shield on Spawn'),
(47999, 0, 2, 0, 16, 0, 100, 0, 79892, 1, 15000, 30000, 11, 79892, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Water Shield on Repeat'),
(47991, 0, 0, 0, 19, 0, 100, 0, 27377, 0, 0, 0, 80, 4799100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47960, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 15000, 11, 91134, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Mind Flay'),
(47960, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 123000, 123000, 11, 91100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Churning Stomach Acid'),
(47960, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 28, 91100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'unaura Churning Stomach Acid'),
(47960, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47960, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 86, 89823, 0, 18, 80, 0, 0, 18, 80, 0, 0, 0, 0, 0, 0, ''),

(47973, 0, 0, 1, 27, 0, 100, 512, 0, 0, 0, 0, 33, 48281, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(47973, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 53, 1, 47973, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47973, 0, 2, 0, 40, 0, 100, 512, 12, 0, 0, 0, 80, 4797300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47973, 0, 3, 0, 40, 0, 100, 512, 9, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 47996, 5, 0, 0, 0, 0, 0, ''),
(47973, 0, 4, 0, 40, 0, 100, 512, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 47996, 5, 0, 0, 0, 0, 0, ''),
(47973, 0, 5, 0, 40, 0, 100, 512, 13, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 11, 47996, 10, 0, 0, 0, 0, 0, ''),
(4797300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4797300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 86, 89210, 0, 18, 10, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, ''),
(4797300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 86, 6869, 0, 18, 10, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, ''),
(4797300, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=45435 AND `SourceEntry`=91271 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=27376 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 45435, 91271, 0, 0, 9, 0, 27376, 0, 0, 0, 0, 0, '', '');


DELETE FROM `creature_template_addon` WHERE entry IN (47994,47992,47993,45426,47999,47991,48000);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=45435;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(45435, 91271, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=47973;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(47973, 46598, 1, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=47973;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(47973, 47996, 1, 1, 'mylra', 3, 300000);

DELETE FROM `waypoints` WHERE `entry`=47973;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(47973, 1, -2533.49, -4794.77, 184.964, ''),
(47973, 2, -2558.49, -4838.44, 172.562, ''),
(47973, 3, -2563.83, -4884.99, 165.707, ''),
(47973, 4, -2554.9, -4957.62, 151.305, ''),
(47973, 5, -2561.92, -5020, 140.455, ''),
(47973, 6, -2579.94, -5054.43, 146.343, ''),
(47973, 7, -2651.1, -5094.8, 146.298, ''),
(47973, 8, -2715.69, -5093.42, 167.154, ''),
(47973, 9, -2752.08, -5033.09, 171.014, ''),
(47973, 10, -2762.64, -4985.36, 176.326, ''),
(47973, 11, -2710.16, -4976.51, 159.422, ''),
(47973, 12, -2665.7, -4980.71, 122.836, ''),
(47973, 13, -2665.7, -4980.71, 128.716, '');

DELETE FROM `conditions` WHERE SourceEntry=27376;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(20, 0, 27376, 0, 0, 8, 0, 27303, 0, 0, 0, 0, 0, '', ''),
(20, 0, 27376, 0, 0, 8, 0, 27302, 0, 0, 0, 0, 0, '', ''),
(20, 0, 27376, 0, 0, 8, 0, 27300, 0, 0, 0, 0, 0, '', '');

DELETE FROM `creature_text` WHERE entry=47996;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(47996, 0, 0, 'Here we go. Hold on tight!', 12, 0, 100, 0, 2000, 0, 50243, ''),
(47996, 1, 0, 'Watch those tentacles! Their reach is frightening.', 12, 0, 100, 0, 2000, 0, 50244, '');


DELETE FROM `spell_area` WHERE `area`=5664;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115011, 5664, 27377, 0, 27379, 0, 0, 2, 1, 64, 11),
(115010, 5664, 0, 0, 27377, 0, 0, 2, 1, 64, 11);

-- Mi trituradora mejorada

DELETE FROM `quest_template` WHERE `Id`=27622;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27622, 2, NULL, 'Untested', 84, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27611, 0, -27622, 28583, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63902, 63901, 63900, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1133, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mo\' Better Shredder', 'Locate a Salvageable Shredder on the Twilight Shores, and use it to summon a Bilgewater Salvage Expert. Defend the shredder until it is operational again.', '$N, I\'ve got plans for a better shredder. But my engineers can\'t wade into a combat zone alone.$B$BGo locate a salvageable shredder in the Twilight Shores, and use it to signal one of my salvage experts to join you. Defend the shredder while we make some "upgrades."$B$BThe Alliance won\'t know what hit them! At least, not until my marketing campaign kicks in!', '', 'That\'s right baby! That\'s right! Cold steel and hot death!$B$BWhat should we name our new creation? The Gnugatron? No - better - the $N-o-matic. That\'s got a ring to it.', 'Is my salvage expert still alive? More importantly... is my shredder?', 'Return to Juice Gnugat at the Twilight Shores in Twilight Highlands.', 46108, 46109, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Salvageable Shredder Located', 'Salvageable Shredder Defended', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature_template` WHERE `entry`=46100;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46100, 0, 0, 0, 0, 0, 1269, 0, 0, 0, 'Salvageable Shredder', '', '', 0, 84, 84, 3, 0, 2159, 2159, 16777216, 1, 1.14286, 1, 1.35714, 1, 0, 519, 693, 0, 815, 1, 2000, 2000, 1, 537133824, 1, 0, 0, 0, 0, 0, 0, 384, 546, 157, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=46100;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(46100, 0, 0, 0, 1, 0, '29266');

DELETE FROM `creature_text` WHERE `entry`=46100 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(46100, 0, 0, 'This shredder looks like it can be repaired. You fire off a signal...', 16, 0, 100, 0, 0, 0, 0, '');


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=46100;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(46100, 85897, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (46100,46112) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4611200) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46100, 0, 0, 1, 8, 0, 100, 0, 85897, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46100, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 50000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46112, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4611200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 11, 46100, 10, 0, 0, 0, 0, 0, ''),
(4611200, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 5, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 12, 45189, 3, 54000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 6, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 12, 45189, 3, 54000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 7, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 12, 45189, 3, 54000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 8, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 46109, 0, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, ''),
(4611200, 9, 10, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry` =46112;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(46112, 0, 0, 'This Shredder looks like it can be repaired. You fire off a signal..', 16, 0, 100, 0, 2000, 0, 0, ''),
(46112, 1, 0, 'Wochoo, sweet-thing! Step aside and watch the magic.', 12, 0, 100, 0, 2000, 0, 0, ''),
(46112, 2, 0, 'Cover my butt in case we\'re ambushed.', 12, 0, 100, 0, 2000, 0, 46177, ''),
(46112, 3, 0, 'We did it! Let\'s fire this masterpiece up!', 12, 0, 100, 0, 2000, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=46100;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46100, 0, 0, 0, 0, 0, 1269, 0, 0, 0, 'Salvageable Shredder', '', '', 0, 84, 84, 3, 0, 2159, 2159, 16777216, 1, 1.14286, 1, 1.35714, 1, 0, 519, 693, 0, 815, 1, 2000, 2000, 1, 537133824, 1, 0, 0, 0, 0, 0, 0, 384, 546, 157, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);

DELETE FROM `conditions` WHERE `SourceEntry`=28583;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(20, 0, 28583, 0, 0, 8, 0, 27606, 0, 0, 0, 0, 0, '', NULL),
(19, 0, 28583, 0, 0, 8, 0, 27622, 0, 0, 0, 0, 0, '', 'Quest Krazzworks will be available after completion of Quest Mo\' Better Shredder');

DELETE FROM `creature_template` WHERE `entry`=46112;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46112, 0, 0, 0, 0, 0, 34876, 34877, 0, 0, 'Bilgewater Salvage Expert', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);


-- Corrige las coordenadas del Npc 
DELETE FROM `creature` WHERE `guid`=51849;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(51849, 44042, 0, 4922, 5136, 1, 1, 0, 0, -4063.99, -6341.02, 37.1323, 0.000330925, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- Respawn de objectos tierras altas y crepusculares
DELETE FROM `gameobject` WHERE AREA=5136;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(9346, 180431, 0, 4922, 5136, 1, 1, -4058.86, -6395.17, 60.1508, 2.44346, 0, 0, 0.939692, 0.342021, 120, 255, 1),
(9347, 206676, 0, 4922, 5136, 1, 8, -4050.29, -6395.77, 37.899, 1.96696, 0, 0, 0.83243, 0.554129, 300, 0, 1),
(9348, 208069, 0, 4922, 5136, 1, 1, -3911.88, -6278.49, 31.3028, 2.32129, 0, 0, 0.91706, 0.39875, 120, 255, 1),
(9349, 187234, 0, 4922, 5136, 1, 1, -4062.67, -6385.84, 50.1768, 0.488691, 0, 0, 0.241921, 0.970296, 300, 255, 1),
(9350, 187234, 0, 4922, 5136, 1, 1, -4048.38, -6372.8, 40.344, 0.453785, 0, 0, 0.224951, 0.97437, 300, 255, 1),
(9351, 187234, 0, 4922, 5136, 1, 1, -4033.15, -6332.56, 44.0964, 4.83456, 0, 0, -0.66262, 0.748956, 300, 255, 1),
(9352, 187234, 0, 4922, 5136, 1, 1, -4054.75, -6403.01, 50.3442, 0.471238, 0, 0, 0.233445, 0.97237, 300, 255, 1),
(9353, 187234, 0, 4922, 5136, 1, 1, -4035.45, -6400.53, 40.3259, 0.383971, 0, 0, 0.190808, 0.981627, 300, 255, 1),
(9354, 202781, 0, 4922, 5136, 1, 1, -4158.36, -6344.67, 0, 0, 0, 0, -1, 0, 300, 255, 1),
(9355, 202781, 0, 4922, 5136, 1, 1, -4068.16, -6212.28, 0, 0, 0, 0, -1, 0, 300, 255, 1),
(9390, 202781, 0, 4922, 5136, 1, 1, -4165.39, -6318.65, 0, 0, 0, 0, -1, 0, 300, 255, 1),
(9391, 202781, 0, 4922, 5136, 1, 1, -3777.68, -6654.33, 0, 0, 0, 0, -1, 0, 300, 255, 1),
(9392, 202781, 0, 4922, 5136, 1, 1, -3888.79, -6539.31, 0, 0, 0, 0, -1, 0, 300, 255, 1),
(9393, 202781, 0, 4922, 5136, 1, 1, -4035.77, -6237.7, 0, 3.14159, 0, 0, -1, 0, 300, 255, 1),
(9394, 202781, 0, 4922, 5136, 1, 1, -3876.46, -6527.42, 0, 3.14159, 0, 0, -1, 0, 300, 255, 1),
(9395, 202781, 0, 4922, 5136, 1, 1, -4090.11, -6610.68, 0, 3.14159, 0, 0, -1, 0, 300, 255, 1),
(9396, 180471, 0, 4922, 5136, 1, 1, -3952.56, -6282.6, 33.0473, 5.3058, 0, 0, -0.469471, 0.882948, 120, 255, 1),
(9397, 208078, 0, 4922, 5136, 1, 1, -3911.89, -6292.38, 31.4473, 1.43117, 0, 0, 0.656058, 0.75471, 120, 255, 1),
(9398, 207941, 0, 4922, 5136, 1, 1, -3879.75, -6355.95, 60.1088, 2.70526, 0, 0, 0.976295, 0.216442, 120, 255, 1),
(9399, 207941, 0, 4922, 5136, 1, 1, -4096.25, -6498.06, 61.0384, 5.53269, 0, 0, -0.366501, 0.930418, 120, 255, 1),
(9415, 207941, 0, 4922, 5136, 1, 1, -4042.18, -6470.5, 61.1984, 0.541051, 0, 0, 0.267238, 0.963631, 120, 255, 1),
(9416, 180407, 0, 4922, 5136, 1, 1, -3953.22, -6299.32, 34.9243, 6.00393, 0, 0, -0.139173, 0.990268, 120, 255, 1),
(9417, 208069, 0, 4922, 5136, 1, 1, -3945.82, -6300.55, 36.882, 5.61996, 0, 0, -0.325567, 0.945519, 120, 255, 1),
(9418, 180408, 0, 4922, 5136, 1, 1, -3916.64, -6277.49, 57.4957, 1.44862, 0, 0, 0.66262, 0.748956, 120, 255, 1),
(9419, 180471, 0, 4922, 5136, 1, 1, -3951.85, -6283.63, 32.4883, 5.14872, 0, 0, -0.537299, 0.843392, 120, 255, 1),
(9420, 208072, 0, 4922, 5136, 1, 1, -3926.89, -6266.84, 31.4331, 3.38594, 0, 0, -0.992546, 0.12187, 120, 255, 1),
(20714, 180471, 0, 4922, 5136, 1, 1, -3953.25, -6281.47, 32.4471, 5.21854, 0, 0, -0.507538, 0.861629, 120, 255, 1),
(20715, 206676, 0, 4922, 5136, 1, 8, -4045.36, -6374.06, 37.9343, 5.64197, 0, 0, 0.315145, -0.949043, 300, 0, 1),
(20716, 206676, 0, 4922, 5136, 1, 8, -4041.16, -6365.2, 37.6699, 5.95726, 0, 0, 0.162243, -0.986751, 300, 0, 1),
(20717, 206676, 0, 4922, 5136, 1, 8, -4027.87, -6400.79, 38.6375, 1.58674, 0, 0, 0.71272, 0.701449, 300, 0, 1),
(20718, 206676, 0, 4922, 5136, 1, 8, -4058.2, -6398.3, 38.049, 1.98816, 0, 0, 0.838258, 0.545273, 300, 0, 1),
(20719, 206676, 0, 4922, 5136, 1, 8, -4062.62, -6388.17, 37.8801, 5.07412, 0, 0, 0.568378, -0.822768, 300, 0, 1),
(20720, 206676, 0, 4922, 5136, 1, 8, -4037.69, -6397.52, 38.4133, 1.38066, 0, 0, 0.63679, 0.771037, 300, 0, 1),
(20721, 206676, 0, 4922, 5136, 1, 8, -4044.2, -6396.06, 38.252, 1.46103, 0, 0, 0.667253, 0.744831, 300, 0, 1),
(20722, 206676, 0, 4922, 5136, 1, 8, -4050.2, -6380.28, 37.8831, 5.52547, 0, 0, 0.369862, -0.929087, 300, 0, 1),
(20723, 206676, 0, 4922, 5136, 1, 8, -4056.26, -6384.6, 37.8809, 5.23945, 0, 0, 0.498498, -0.866891, 300, 0, 1),
(902106, 207941, 0, 4922, 5136, 1, 1, -3931.28, -6238.61, 49.6798, 1.83259, 0, 0, 0.793353, 0.608762, 120, 255, 1),
(902105, 204917, 0, 4922, 5136, 1, 8, -4050.49, -6323.4, 38.1734, 5.22231, 0, 0, 0.505911, -0.862586, 300, 0, 1),
(27151, 180406, 0, 4922, 5136, 1, 1, -3943.74, -6312.92, 29.6664, 5.5676, 0, 0, -0.350207, 0.936672, 120, 255, 1),
(27271, 180405, 0, 4922, 5136, 1, 1, -3943.66, -6306.17, 32.7715, 0, 0, 0, 0, 1, 120, 255, 1),
(27272, 208078, 0, 4922, 5136, 1, 1, -3992.01, -6297.8, 34.6045, 1.91986, 0, 0, 0.819152, 0.573577, 120, 255, 1),
(27275, 208078, 0, 4922, 5136, 1, 1, -3954.77, -6304.92, 31.914, 5.74214, 0, 0, -0.267238, 0.963631, 120, 255, 1),
(27356, 180405, 0, 4922, 5136, 1, 1, -4085.48, -6246.51, 7.38324, 4.17134, 0, 0, -0.870356, 0.492424, 120, 255, 1),
(27684, 180406, 0, 4922, 5136, 1, 1, -4093.94, -6238.72, 7.33125, 1.16937, 0, 0, 0.551936, 0.833886, 120, 255, 1),
(27685, 180407, 0, 4922, 5136, 1, 1, -4099.02, -6261.3, 7.38114, 4.2237, 0, 0, -0.857167, 0.515038, 120, 255, 1),
(28698, 180405, 0, 4922, 5136, 1, 1, -3910.51, -6317.81, 31.302, 2.07694, 0, 0, 0.861628, 0.507539, 120, 255, 1),
(28699, 180407, 0, 4922, 5136, 1, 1, -3911.27, -6312, 31.3343, 1.98967, 0, 0, 0.83867, 0.54464, 120, 255, 1),
(28700, 208072, 0, 4922, 5136, 1, 1, -3941.28, -6317.02, 32.7041, 5.46288, 0, 0, -0.398748, 0.91706, 120, 255, 1),
(28701, 180427, 0, 4922, 5136, 1, 1, -3975.01, -6343.85, 57.5636, 3.01941, 0, 0, 0.998135, 0.0610518, 120, 255, 1),
(28702, 208069, 0, 4922, 5136, 1, 1, -3986.98, -6310.21, 34.6864, 1.72787, 0, 0, 0.760405, 0.649449, 120, 255, 1),
(28703, 180406, 0, 4922, 5136, 1, 1, -3902.61, -6332.71, 31.3298, 2.84488, 0, 0, 0.989016, 0.147811, 120, 255, 1),
(28704, 208072, 0, 4922, 5136, 1, 1, -3891.7, -6347.52, 31.3739, 2.70526, 0, 0, 0.976295, 0.216442, 120, 255, 1),
(28705, 180405, 0, 4922, 5136, 1, 1, -3897.89, -6336.13, 31.3337, 2.80997, 0, 0, 0.986285, 0.16505, 120, 255, 1),
(28706, 180427, 0, 4922, 5136, 1, 1, -3993.37, -6340, 68.5742, 3.76991, 0, 0, -0.951056, 0.309017, 120, 255, 1),
(28707, 180471, 0, 4922, 5136, 1, 1, -3895.99, -6386.07, 32.428, 5.09636, 0, 0, -0.559193, 0.829038, 120, 255, 1),
(28708, 180471, 0, 4922, 5136, 1, 1, -3895.63, -6387.32, 33.0353, 4.97419, 0, 0, -0.608761, 0.793354, 120, 255, 1),
(28709, 208078, 0, 4922, 5136, 1, 1, -3870.43, -6371.42, 30.8404, 1.76278, 0, 0, 0.771625, 0.636078, 120, 255, 1),
(28710, 180426, 0, 4922, 5136, 1, 1, -3976.03, -6357.11, 62.9583, 4.93928, 0, 0, -0.622514, 0.782609, 120, 255, 1),
(1242710, 180427, 0, 4922, 5136, 1, 1, -3990.73, -6364.93, 69.9647, 0.174532, 0, 0, 0.0871553, 0.996195, 120, 255, 1),
(28712, 180426, 0, 4922, 5136, 1, 1, -3979, -6371.54, 53.5699, 2.16421, 0, 0, 0.882947, 0.469473, 120, 255, 1),
(28713, 180427, 0, 4922, 5136, 1, 1, -3997.77, -6362.27, 68.6887, 5.13127, 0, 0, -0.544639, 0.838671, 120, 255, 1),
(28714, 180426, 0, 4922, 5136, 1, 1, -4008.91, -6351.46, 64.59, 0.59341, 0, 0, 0.292371, 0.956305, 120, 255, 1),
(28715, 180426, 0, 4922, 5136, 1, 1, -4005.93, -6342.33, 67.0859, 4.92183, 0, 0, -0.62932, 0.777146, 120, 255, 1),
(28716, 180426, 0, 4922, 5136, 1, 1, -3995.44, -6357.5, 63.6491, 4.85202, 0, 0, -0.656058, 0.75471, 120, 255, 1),
(28717, 180426, 0, 4922, 5136, 1, 1, -3993.29, -6348.63, 56.5331, 5.25344, 0, 0, -0.492423, 0.870356, 120, 255, 1),
(28718, 180427, 0, 4922, 5136, 1, 1, -3957.71, -6365.1, 58.0072, 2.86233, 0, 0, 0.990268, 0.139175, 120, 255, 1),
(28719, 180471, 0, 4922, 5136, 1, 1, -3921.42, -6389.54, 33.2425, 4.17134, 0, 0, -0.870356, 0.492424, 120, 255, 1),
(28720, 208069, 0, 4922, 5136, 1, 1, -3870.46, -6356.46, 31.285, 2.56563, 0, 0, 0.958819, 0.284016, 120, 255, 1),
(28721, 180471, 0, 4922, 5136, 1, 1, -4032.85, -6331.14, 43.3136, 0, 0, 0, 0, 1, 120, 255, 1),
(28727, 180426, 0, 4922, 5136, 1, 1, -4004.48, -6375.14, 64.125, 0.610863, 0, 0, 0.300705, 0.953717, 120, 255, 1),
(28744, 180406, 0, 4922, 5136, 1, 1, -4028.19, -6330.8, 38.2321, 0.157079, 0, 0, 0.0784588, 0.996917, 120, 255, 1),
(28763, 180471, 0, 4922, 5136, 1, 1, -4031.96, -6331.09, 42.9454, 0, 0, 0, 0, 1, 120, 255, 1),
(29184, 208062, 0, 4922, 5136, 1, 1, -4049.41, -6373.27, 43.7714, 2.51327, 0, 0, 0.951056, 0.309017, 120, 255, 1),
(29212, 180471, 0, 4922, 5136, 1, 1, -4034.57, -6331.21, 42.9472, 0.122173, 0, 0, 0.0610485, 0.998135, 120, 255, 1),
(29235, 208078, 0, 4922, 5136, 1, 1, -4057.98, -6358.04, 44.2866, 2.09439, 0, 0, 0.866025, 0.500001, 120, 255, 1),
(29253, 180426, 0, 4922, 5136, 1, 1, -3996.56, -6375.63, 64.608, 0.680677, 0, 0, 0.333806, 0.942642, 120, 255, 1),
(29317, 180426, 0, 4922, 5136, 1, 1, -4013.78, -6365.5, 64.2966, 5.70723, 0, 0, -0.284015, 0.95882, 120, 255, 1),
(29321, 180471, 0, 4922, 5136, 1, 1, -4033.72, -6331.17, 43.3145, 0, 0, 0, 0, 1, 120, 255, 1),
(29325, 180427, 0, 4922, 5136, 1, 1, -4017.47, -6375.54, 57.2838, 3.56047, 0, 0, -0.978148, 0.207912, 120, 255, 1),
(32231, 208069, 0, 4922, 5136, 1, 1, -4054.07, -6368.17, 44.1261, 2.18166, 0, 0, 0.887011, 0.461749, 120, 255, 1),
(32371, 180405, 0, 4922, 5136, 1, 1, -4037.78, -6331.45, 38.6034, 0.785397, 0, 0, 0.382683, 0.92388, 120, 255, 1),
(32372, 180427, 0, 4922, 5136, 1, 1, -3994.5, -6382.88, 65.388, 5.02655, 0, 0, -0.587785, 0.809017, 120, 255, 1),
(32373, 208072, 0, 4922, 5136, 1, 1, -4033.06, -6410.47, 44.4149, 2.04204, 0, 0, 0.85264, 0.522499, 120, 255, 1),
(32374, 180427, 0, 4922, 5136, 1, 1, -3976.49, -6384.86, 56.7749, 6.12611, 0, 0, -0.0784588, 0.996917, 120, 255, 1),
(32375, 180523, 0, 4922, 5136, 1, 1, -4091.79, -6395.14, 40.3452, 0, 0, 0, 0, 1, 120, 255, 1),
(32376, 180411, 0, 4922, 5136, 1, 1, -4075.06, -6402.35, 50.1092, 3.6652, 0, 0, -0.965925, 0.258821, 120, 255, 1),
(32377, 180406, 0, 4922, 5136, 1, 1, -3928.96, -6403.13, 27.9272, 4.43314, 0, 0, -0.798635, 0.601815, 120, 255, 1),
(32378, 208072, 0, 4922, 5136, 1, 1, -3939.85, -6403.67, 32.4417, 3.35105, 0, 0, -0.994521, 0.104535, 120, 255, 1),
(32379, 180471, 0, 4922, 5136, 1, 1, -3928.88, -6408.66, 33.209, 4.67748, 0, 0, -0.719339, 0.694659, 120, 255, 1),
(32380, 180471, 0, 4922, 5136, 1, 1, -3895.25, -6388.5, 32.4472, 4.95674, 0, 0, -0.615661, 0.788011, 120, 255, 1),
(32381, 208078, 0, 4922, 5136, 1, 1, -3933.7, -6443.15, 18.5714, 4.71239, 0, 0, -0.707107, 0.707107, 120, 255, 1),
(32382, 180405, 0, 4922, 5136, 1, 1, -3885.49, -6475.33, 19.945, 5.09636, 0, 0, -0.559193, 0.829038, 120, 255, 1),
(32383, 180411, 0, 4922, 5136, 1, 1, -3890.52, -6477.82, 31.3993, 5.95157, 0, 0, -0.165047, 0.986286, 120, 255, 1),
(32384, 180406, 0, 4922, 5136, 1, 1, -3885.22, -6479.5, 19.9033, 5.25344, 0, 0, -0.492423, 0.870356, 120, 255, 1),
(32385, 180407, 0, 4922, 5136, 1, 1, -3885.42, -6471.35, 19.8887, 4.88692, 0, 0, -0.642787, 0.766045, 120, 255, 1),
(32386, 180471, 0, 4922, 5136, 1, 1, -3916.28, -6480.99, 25.9916, 4.79966, 0, 0, -0.67559, 0.737278, 120, 255, 1),
(32387, 180471, 0, 4922, 5136, 1, 1, -3916.47, -6479.12, 26.7239, 4.7822, 0, 0, -0.681998, 0.731354, 120, 255, 1),
(36688, 180471, 0, 4922, 5136, 1, 1, -3916.53, -6477.01, 25.7465, 4.83456, 0, 0, -0.66262, 0.748956, 120, 255, 1),
(36689, 180471, 0, 4922, 5136, 1, 1, -3916.5, -6478.05, 26.3696, 4.86947, 0, 0, -0.649447, 0.760406, 120, 255, 1),
(36690, 180471, 0, 4922, 5136, 1, 1, -3916.39, -6480.04, 26.3424, 4.81711, 0, 0, -0.66913, 0.743145, 120, 255, 1),
(36691, 180407, 0, 4922, 5136, 1, 1, -3884.58, -6483.25, 19.8887, 5.72468, 0, 0, -0.275637, 0.961262, 120, 255, 1),
(36692, 180471, 0, 4922, 5136, 1, 1, -3916.58, -6475.96, 25.2735, 4.83456, 0, 0, -0.66262, 0.748956, 120, 255, 1),
(36693, 180471, 0, 4922, 5136, 1, 1, -3916.22, -6481.97, 25.368, 4.79966, 0, 0, -0.67559, 0.737278, 120, 255, 1),
(36711, 180471, 0, 4922, 5136, 1, 1, -3909.69, -6493.58, 19.653, 5.58505, 0, 0, -0.34202, 0.939693, 120, 255, 1),
(36712, 180471, 0, 4922, 5136, 1, 1, -3913.32, -6490.35, 19.2814, 5.14872, 0, 0, -0.537299, 0.843392, 120, 255, 1),
(36713, 180415, 0, 4922, 5136, 1, 1, -4001.61, -6447.36, 41.968, 0.750491, 0, 0, 0.366501, 0.930418, 120, 255, 1),
(36714, 180415, 0, 4922, 5136, 1, 1, -4001.23, -6453.47, 47.3729, 5.37562, 0, 0, -0.438371, 0.898794, 120, 255, 1),
(36715, 180471, 0, 4922, 5136, 1, 1, -4003.38, -6459.81, 46.6383, 4.2237, 0, 0, -0.857167, 0.515038, 120, 255, 1),
(36716, 180415, 0, 4922, 5136, 1, 1, -4006.38, -6433.71, 42.3835, 0.59341, 0, 0, 0.292371, 0.956305, 120, 255, 1),
(36717, 180415, 0, 4922, 5136, 1, 1, -4002.63, -6451.59, 44.6244, 0.331611, 0, 0, 0.165047, 0.986286, 120, 255, 1),
(36718, 208069, 0, 4922, 5136, 1, 1, -3930.42, -6523.05, 16.2986, 4.38078, 0, 0, -0.814116, 0.580703, 120, 255, 1),
(36719, 180415, 0, 4922, 5136, 1, 1, -4000.02, -6449.5, 44.5159, 4.20625, 0, 0, -0.861628, 0.507539, 120, 255, 1),
(36745, 180415, 0, 4922, 5136, 1, 1, -4001.91, -6452.54, 46.0084, 1.5708, 0, 0, 0.707107, 0.707107, 120, 255, 1),
(36746, 180425, 0, 4922, 5136, 1, 1, -4006.73, -6433.72, 42.5203, 2.21656, 0, 0, 0.894934, 0.446199, 120, 255, 1),
(36747, 180471, 0, 4922, 5136, 1, 1, -4004.84, -6431.21, 50.2639, 2.82743, 0, 0, 0.987688, 0.156436, 120, 255, 1),
(36748, 180415, 0, 4922, 5136, 1, 1, -3999.28, -6450.46, 45.9098, 2.19912, 0, 0, 0.891007, 0.453991, 120, 255, 1),
(36749, 208072, 0, 4922, 5136, 1, 1, -4004.21, -6461.85, 48.4513, 4.03171, 0, 0, -0.902585, 0.430512, 120, 255, 1),
(36750, 180415, 0, 4922, 5136, 1, 1, -3998.53, -6451.4, 47.3286, 5.18363, 0, 0, -0.522498, 0.852641, 120, 255, 1),
(36751, 180415, 0, 4922, 5136, 1, 1, -4000.77, -6448.44, 43.2234, 0.733038, 0, 0, 0.358368, 0.933581, 120, 255, 1),
(36752, 208078, 0, 4922, 5136, 1, 1, -4001.54, -6455.94, 48.4515, 4.53786, 0, 0, -0.766044, 0.642789, 120, 255, 1),
(36753, 180415, 0, 4922, 5136, 1, 1, -4003.44, -6450.49, 43.2583, 4.29351, 0, 0, -0.83867, 0.54464, 120, 255, 1),
(36754, 180415, 0, 4922, 5136, 1, 1, -4004.22, -6449.47, 42.081, 4.60767, 0, 0, -0.743144, 0.669132, 120, 255, 1),
(36800, 180472, 0, 4922, 5136, 1, 1, -4005.09, -6460.57, 47.4356, 2.33874, 0, 0, 0.920505, 0.390732, 120, 255, 1),
(36801, 180471, 0, 4922, 5136, 1, 1, -4008.61, -6462.25, 46.6382, 3.7001, 0, 0, -0.961261, 0.27564, 120, 255, 1),
(36802, 208072, 0, 4922, 5136, 1, 1, -3998.5, -6489.03, 18.0704, 2.04204, 0, 0, 0.85264, 0.522499, 120, 255, 1),
(36803, 208063, 0, 4922, 5136, 1, 1, -4005.2, -6465.36, 44.1816, 1.64061, 0, 0, 0.731353, 0.681999, 120, 255, 1),
(36804, 180471, 0, 4922, 5136, 1, 1, -4012.89, -6430.39, 50.2383, 3.7001, 0, 0, -0.961261, 0.27564, 120, 255, 1),
(36805, 180472, 0, 4922, 5136, 1, 1, -4010.21, -6461.34, 47.4356, 1.53589, 0, 0, 0.694658, 0.71934, 120, 255, 1),
(36806, 180471, 0, 4922, 5136, 1, 1, -4010.93, -6429.49, 50.3928, 3.26377, 0, 0, -0.998135, 0.0610518, 120, 255, 1),
(36807, 180415, 0, 4922, 5136, 1, 1, -4013.26, -6450.42, 42.0449, 6.03884, 0, 0, -0.121869, 0.992546, 120, 255, 1),
(36808, 180471, 0, 4922, 5136, 1, 1, -4006.29, -6462.01, 46.6382, 3.56047, 0, 0, -0.978148, 0.207912, 120, 255, 1),
(36809, 180471, 0, 4922, 5136, 1, 1, -4008.99, -6429.92, 50.253, 2.93214, 0, 0, 0.994521, 0.104535, 120, 255, 1),
(11242711, 208069, 0, 4922, 5136, 1, 1, -4010.87, -6462.56, 48.4513, 3.14159, 0, 0, -1, 0, 120, 255, 1),
(1679, 180472, 0, 4922, 5136, 1, 1, -4007, -6427.31, 48.7367, 1.309, 0, 0, 0.608761, 0.793354, 120, 255, 1),
(1792, 180471, 0, 4922, 5136, 1, 1, -4012.05, -6460.83, 46.6382, 2.21656, 0, 0, 0.894934, 0.446199, 120, 255, 1),
(1798, 180415, 0, 4922, 5136, 1, 1, -4007.24, -6463.92, 42.2135, 0.0523589, 0, 0, 0.0261765, 0.999657, 120, 255, 1),
(2102, 180425, 0, 4922, 5136, 1, 1, -4007.53, -6463.68, 42.4998, 1.90241, 0, 0, 0.814116, 0.580703, 120, 255, 1),
(2105, 180471, 0, 4922, 5136, 1, 1, -4006.7, -6430.64, 50.2561, 2.82743, 0, 0, 0.987688, 0.156436, 120, 255, 1),
(2129, 180415, 0, 4922, 5136, 1, 1, -4014.34, -6452.7, 44.5381, 5.41052, 0, 0, -0.422618, 0.906308, 120, 255, 1),
(2203, 180415, 0, 4922, 5136, 1, 1, -4013.81, -6451.58, 43.2369, 2.68781, 0, 0, 0.97437, 0.224951, 120, 255, 1),
(2261, 208078, 0, 4922, 5136, 1, 1, -4014.6, -6457.18, 48.4515, 2.37364, 0, 0, 0.927183, 0.374608, 120, 255, 1),
(2281, 180471, 0, 4922, 5136, 1, 1, -4014.72, -6431.43, 50.2445, 3.6652, 0, 0, -0.965925, 0.258821, 120, 255, 1),
(2420, 180415, 0, 4922, 5136, 1, 1, -4016.29, -6448.97, 42.0085, 2.32129, 0, 0, 0.91706, 0.39875, 120, 255, 1),
(2537, 180405, 0, 4922, 5136, 1, 1, -4014.25, -6432.05, 41.3369, 3.26377, 0, 0, -0.998135, 0.0610518, 120, 255, 1),
(2543, 180472, 0, 4922, 5136, 1, 1, -4015.38, -6428.07, 48.7385, 1.79769, 0, 0, 0.782608, 0.622515, 120, 255, 1),
(2884, 180415, 0, 4922, 5136, 1, 1, -4014.86, -6453.88, 45.9937, 3.17653, 0, 0, -0.999847, 0.0174693, 120, 255, 1),
(2934, 180415, 0, 4922, 5136, 1, 1, -4015.31, -6454.88, 47.2525, 5.28835, 0, 0, -0.477158, 0.878817, 120, 255, 1),
(2948, 180405, 0, 4922, 5136, 1, 1, -3990.07, -6543.33, 16.2257, 3.50812, 0, 0, -0.983254, 0.182238, 120, 255, 1),
(3055, 180471, 0, 4922, 5136, 1, 1, -3975.92, -6535.18, 18.4603, 3.35105, 0, 0, -0.994521, 0.104535, 120, 255, 1),
(3432, 180471, 0, 4922, 5136, 1, 1, -3969.07, -6540.5, 18.2832, 2.18166, 0, 0, 0.887011, 0.461749, 120, 255, 1),
(3443, 180405, 0, 4922, 5136, 1, 1, -3921.43, -6549.36, 18.4353, 5.48033, 0, 0, -0.390731, 0.920505, 120, 255, 1),
(3578, 180471, 0, 4922, 5136, 1, 1, -3979.92, -6536.76, 18.6908, 3.52557, 0, 0, -0.981627, 0.190812, 120, 255, 1),
(3612, 180415, 0, 4922, 5136, 1, 1, -4017.34, -6451.26, 44.4916, 0.610863, 0, 0, 0.300705, 0.953717, 120, 255, 1),
(3624, 180471, 0, 4922, 5136, 1, 1, -4016.54, -6432.47, 50.279, 3.6652, 0, 0, -0.965925, 0.258821, 120, 255, 1),
(3635, 180415, 0, 4922, 5136, 1, 1, -4016.81, -6450.08, 43.1328, 3.10665, 0, 0, 0.999847, 0.0174693, 120, 255, 1),
(3673, 180415, 0, 4922, 5136, 1, 1, -4017.87, -6452.38, 45.858, 2.80997, 0, 0, 0.986285, 0.16505, 120, 255, 1),
(4298, 180406, 0, 4922, 5136, 1, 1, -3930.96, -6555.81, 18.3847, 2.67035, 0, 0, 0.972369, 0.233448, 120, 255, 1),
(4379, 180415, 0, 4922, 5136, 1, 1, -4018.36, -6453.41, 47.1795, 0.645772, 0, 0, 0.317305, 0.948324, 120, 255, 1),
(4393, 180405, 0, 4922, 5136, 1, 1, -3919.98, -6572.68, 18.3807, 2.63544, 0, 0, 0.968147, 0.250381, 120, 255, 1),
(4552, 180471, 0, 4922, 5136, 1, 1, -4001.56, -6549.91, 19.1635, 4.7473, 0, 0, -0.694658, 0.71934, 120, 255, 1),
(4558, 180407, 0, 4922, 5136, 1, 1, -3910.33, -6566.33, 18.4113, 5.61996, 0, 0, -0.325567, 0.945519, 120, 255, 1),
(4588, 180471, 0, 4922, 5136, 1, 1, -4030.98, -6520.81, 19.706, 1.69297, 0, 0, 0.748956, 0.66262, 120, 255, 1),
(4618, 180471, 0, 4922, 5136, 1, 1, -4030.85, -6522.41, 19.9613, 1.58825, 0, 0, 0.71325, 0.70091, 120, 255, 1),
(4649, 180471, 0, 4922, 5136, 1, 1, -4031.13, -6519.22, 19.322, 1.85005, 0, 0, 0.798635, 0.601815, 120, 255, 1),
(4688, 180471, 0, 4922, 5136, 1, 1, -4030.7, -6525.51, 19.3211, 4.67748, 0, 0, -0.719339, 0.694659, 120, 255, 1),
(4729, 180405, 0, 4922, 5136, 1, 1, -4028.45, -6526.08, 14.4188, 2.37364, 0, 0, 0.927183, 0.374608, 120, 255, 1),
(4751, 180406, 0, 4922, 5136, 1, 1, -4029.52, -6518.47, 14.4205, 1.76278, 0, 0, 0.771625, 0.636078, 120, 255, 1),
(4767, 180471, 0, 4922, 5136, 1, 1, -4001.9, -6557.5, 20.3436, 4.85202, 0, 0, -0.656058, 0.75471, 120, 255, 1),
(4849, 180471, 0, 4922, 5136, 1, 1, -4001.29, -6563.26, 19.9809, 4.72984, 0, 0, -0.700909, 0.713251, 120, 255, 1),
(4881, 180471, 0, 4922, 5136, 1, 1, -4030.7, -6524.08, 19.7102, 1.62316, 0, 0, 0.725374, 0.688355, 120, 255, 1),
(4885, 180406, 0, 4922, 5136, 1, 1, -3894.44, -6591.57, 18.0884, 6.00393, 0, 0, -0.139173, 0.990268, 120, 255, 1),
(5007, 180407, 0, 4922, 5136, 1, 1, -3902.78, -6597.27, 18.1653, 2.63544, 0, 0, 0.968147, 0.250381, 120, 255, 1),
(5012, 180405, 0, 4922, 5136, 1, 1, -4028.61, -6576.05, 18.4964, 4.90438, 0, 0, -0.636078, 0.771625, 120, 255, 1),
(5315, 180411, 0, 4922, 5136, 1, 1, -4052.31, -6524.38, 36.3575, 3.17653, 0, 0, -0.999847, 0.0174693, 120, 255, 1),
(5320, 180406, 0, 4922, 5136, 1, 1, -4039.88, -6573.82, 18.4409, 1.88495, 0, 0, 0.809016, 0.587786, 120, 255, 1),
(5325, 180405, 0, 4922, 5136, 1, 1, -3886.26, -6603.49, 18.4316, 5.65487, 0, 0, -0.309016, 0.951057, 120, 255, 1),
(5480, 180407, 0, 4922, 5136, 1, 1, -3866.61, -6633.6, 18.196, 5.67232, 0, 0, -0.300706, 0.953717, 120, 255, 1),
(5488, 180406, 0, 4922, 5136, 1, 1, -3888.66, -6620.25, 18.1136, 2.61799, 0, 0, 0.965925, 0.258821, 120, 255, 1),
(5679, 180405, 0, 4922, 5136, 1, 1, -3855.28, -6651.37, 18.1932, 5.65487, 0, 0, -0.309016, 0.951057, 120, 255, 1),
(5699, 180406, 0, 4922, 5136, 1, 1, -3864.93, -6657.6, 18.1353, 2.61799, 0, 0, 0.965925, 0.258821, 120, 255, 1),
(5704, 180407, 0, 4922, 5136, 1, 1, -3854.11, -6674.64, 18.1465, 2.58308, 0, 0, 0.961261, 0.27564, 120, 255, 1),
(5713, 180406, 0, 4922, 5136, 1, 1, -3844.29, -6668.33, 18.1358, 5.58505, 0, 0, -0.34202, 0.939693, 120, 255, 1),
(5716, 180407, 0, 4922, 5136, 1, 1, -4032.69, -6595.78, 18.5217, 4.93928, 0, 0, -0.622514, 0.782609, 120, 255, 1),
(5720, 180405, 0, 4922, 5136, 1, 1, -4043.81, -6593.66, 18.4033, 1.8675, 0, 0, 0.803857, 0.594823, 120, 255, 1),
(5741, 180406, 0, 4922, 5136, 1, 1, -4048.02, -6614.28, 18.4091, 1.74533, 0, 0, 0.766044, 0.642789, 120, 255, 1),
(5761, 180407, 0, 4922, 5136, 1, 1, -4041.43, -6639.15, 18.4924, 4.95674, 0, 0, -0.615661, 0.788011, 120, 255, 1),
(5769, 180406, 0, 4922, 5136, 1, 1, -4047.29, -6665.16, 18.509, 3.85718, 0, 0, -0.936671, 0.35021, 120, 255, 1),
(5776, 180405, 0, 4922, 5136, 1, 1, -4052.75, -6636.96, 18.4523, 1.8675, 0, 0, 0.803857, 0.594823, 120, 255, 1),
(5863, 180407, 0, 4922, 5136, 1, 1, -4057.54, -6662.94, 18.5033, 2.56563, 0, 0, 0.958819, 0.284016, 120, 255, 1),
(5877, 208152, 0, 4922, 5136, 1, 1, -4086.5, -6409.46, 39.998, 1.79769, 0, 0, 0.782608, 0.622515, 120, 255, 1),
(5895, 180407, 0, 4922, 5136, 1, 1, -4128.98, -6294.01, 7.37482, 4.2237, 0, 0, -0.857167, 0.515038, 120, 255, 1),
(5899, 180406, 0, 4922, 5136, 1, 1, -4147.47, -6312.92, 7.41311, 4.24115, 0, 0, -0.85264, 0.522499, 120, 255, 1),
(5970, 180405, 0, 4922, 5136, 1, 1, -4107.69, -6253.56, 7.37391, 1.25664, 0, 0, 0.587785, 0.809017, 120, 255, 1),
(5989, 180405, 0, 4922, 5136, 1, 1, -4137.58, -6286.03, 7.41142, 1.25664, 0, 0, 0.587785, 0.809017, 120, 255, 1),
(6001, 180407, 0, 4922, 5136, 1, 1, -4155.27, -6305.92, 7.42142, 1.41372, 0, 0, 0.649447, 0.760406, 120, 255, 1),
(6006, 180406, 0, 4922, 5136, 1, 1, -4121.88, -6269.04, 7.37577, 1.32645, 0, 0, 0.615661, 0.788011, 120, 255, 1),
(6011, 185582, 0, 4922, 5136, 1, 1, -4011.06, -6428.35, 50.1274, 1.62316, 0, 0, 0.725374, 0.688355, 300, 255, 1),
(6017, 187194, 0, 4922, 5136, 1, 1, -3997.85, -6442.6, 50.5437, 0.994837, 0, 0, 0.477158, 0.878817, 300, 255, 1),
(6047, 187194, 0, 4922, 5136, 1, 1, -4000.95, -6472.11, 50.4748, 5.23599, 0, 0, -0.5, 0.866025, 300, 255, 1),
(6054, 185582, 0, 4922, 5136, 1, 1, -3985.15, -6415.71, 34.8005, 0.314158, 0, 0, 0.156434, 0.987688, 300, 255, 1),
(6065, 187194, 0, 4922, 5136, 1, 1, -4011.85, -6473.17, 50.4407, 4.39823, 0, 0, -0.809016, 0.587786, 300, 255, 1),
(6147, 187194, 0, 4922, 5136, 1, 1, -3992.93, -6463.25, 50.3326, 5.86431, 0, 0, -0.207912, 0.978148, 300, 255, 1),
(6151, 187194, 0, 4922, 5136, 1, 1, -4028.71, -6522.29, 20.7574, 0.087266, 0, 0, 0.0436192, 0.999048, 300, 255, 1),
(6162, 187194, 0, 4922, 5136, 1, 1, -3991.74, -6451.29, 50.4577, 0.226893, 0, 0, 0.113203, 0.993572, 300, 255, 1),
(6174, 187235, 0, 4922, 5136, 1, 1, -4053.81, -6402.47, 40.3209, 0.85521, 0, 0, 0.414693, 0.909962, 300, 255, 1),
(6184, 187235, 0, 4922, 5136, 1, 1, -4061.89, -6384.83, 40.3697, 6.07375, 0, 0, -0.104528, 0.994522, 300, 255, 1),
(6193, 187194, 0, 4922, 5136, 1, 1, -4049.16, -6412.55, 60.1471, 0.453785, 0, 0, 0.224951, 0.97437, 300, 255, 1),
(6199, 187235, 0, 4922, 5136, 1, 1, -4018.48, -6329.37, 39.3364, 5.63741, 0, 0, -0.317305, 0.948324, 300, 255, 1),
(6202, 187194, 0, 4922, 5136, 1, 1, -4021.58, -6466.61, 50.3061, 3.78737, 0, 0, -0.948323, 0.317306, 300, 255, 1),
(6232, 187194, 0, 4922, 5136, 1, 1, -3925.61, -6398.35, 33.967, 2.74016, 0, 0, 0.979924, 0.19937, 300, 255, 1),
(6234, 185582, 0, 4922, 5136, 1, 1, -4054.36, -6393.1, 55.9776, 0.453785, 0, 0, 0.224951, 0.97437, 300, 255, 1),
(6236, 187194, 0, 4922, 5136, 1, 1, -4021.23, -6445.31, 50.477, 2.35619, 0, 0, 0.923879, 0.382686, 300, 255, 1),
(6426, 187194, 0, 4922, 5136, 1, 1, -4064.71, -6374.64, 66.391, 0.401425, 0, 0, 0.199367, 0.979925, 300, 255, 1),
(7204, 187194, 0, 4922, 5136, 1, 1, -4066.52, -6375.31, 60.278, 0.401425, 0, 0, 0.199367, 0.979925, 300, 255, 1),
(7221, 185582, 0, 4922, 5136, 1, 1, -3989.13, -6328.79, 35.535, 0.0698117, 0, 0, 0.0348988, 0.999391, 300, 255, 1),
(7231, 187194, 0, 4922, 5136, 1, 1, -4047.52, -6411.95, 66.4616, 0.471238, 0, 0, 0.233445, 0.97237, 300, 255, 1),
(7273, 187194, 0, 4922, 5136, 1, 1, -4025.14, -6454.91, 50.4326, 3.10665, 0, 0, 0.999847, 0.0174686, 300, 255, 1),
(7307, 202751, 0, 4922, 5136, 1, 1, -3879.28, -6212.06, 26.921, 2.13195, 0, 0, 0.87526, 0.483653, 120, 0, 1);


-- Respawn de creature tierras altas y crepusculares

DELETE FROM `creature` WHERE `id` IN (6491,22252,42978,43186,43187,43188,43189,43190,43191,43192,43193,43243,43386,43387,43389,43390,43394,43398,43421,43482,43575,43576,43577,43578,43579,43580,43581,43626,43678,43941,43943,43962,43963,44002,44024,44026,44042,44169,45987,48391,48535,49498,49506,49519,49547,49549,49551,49554,49562,49567,49569,49571,49572,50146,50165,50172,50248,50375,50433,50456,50457,50459,50460,50462,70043);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(714714, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1212.95, 622.632, 59.233, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714713, 6491, 0, 25, 25, 1, 65535, 0, 0, -7536.35, -1209.68, 286.858, 5.18363, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714712, 6491, 0, 5339, 33, 1, 65535, 0, 0, -11944.8, -988.062, 67.3035, 1.9703, 300, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714711, 6491, 0, 4815, 5051, 1, 65535, 0, 0, -4626.23, 3804.14, -119.731, 4.27143, 300, 0, 0, 574, 0, 0, 0, 0, 0, 0),
(714710, 6491, 609, 4298, 4356, 1, 65535, 0, 0, 2364.42, -5771.32, 151.367, 0.127121, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714709, 6491, 609, 4298, 4361, 1, 65535, 0, 0, 2116.19, -5286.94, 81.2151, 4.52535, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714708, 6491, 609, 4298, 4355, 1, 65535, 0, 0, 1887.16, -5775.03, 103.752, 4.78655, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714707, 6491, 654, 4755, 4757, 1, 65535, 0, 0, -1765.03, 1410.88, 20.8906, 5.74213, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714706, 6491, 648, 4737, 4765, 1, 65535, 0, 0, -8394.45, 1292.15, 92.8141, 5.79557, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714705, 6491, 654, 4755, 4756, 1, 65535, 0, 0, -1387.38, 1370.46, 36.1462, 3.12414, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714704, 6491, 654, 4755, 4758, 1, 65535, 0, 0, -1766.48, 1656.99, 21.4169, 0, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714703, 6491, 861, 5733, 5748, 1, 65535, 0, 0, 1233.81, 603.144, 59.518, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714702, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1222.59, 52.807, 69.884, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714701, 6491, 861, 5733, 5740, 1, 65535, 0, 0, 1403.96, 446.227, 26.912, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714700, 6491, 861, 5733, 5740, 1, 65535, 0, 0, 1400.97, 276.057, 24.988, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714699, 6491, 861, 5733, 5740, 1, 65535, 0, 0, 1389.44, 476.632, 21.625, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714698, 6491, 861, 5733, 5748, 1, 65535, 0, 0, 1388.15, 556.987, 79.911, 1.658, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714697, 6491, 861, 5733, 5744, 1, 65535, 0, 0, 1386.52, 48.222, 68.554, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714696, 6491, 861, 5733, 5740, 1, 65535, 0, 0, 1356.73, 473.026, 23.316, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714695, 6491, 861, 5733, 5743, 1, 65535, 0, 0, 1355.43, 46.786, 68.691, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714694, 6491, 861, 5733, 5743, 1, 65535, 0, 0, 1331.22, 61.977, 68.205, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714693, 6491, 861, 5733, 5740, 1, 65535, 0, 0, 1324.13, 472.611, 24.831, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714692, 6491, 861, 5733, 5743, 1, 65535, 0, 0, 1305.94, 54.535, 72.427, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714691, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1294.58, 475.59, 24.031, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714690, 6491, 861, 5733, 5743, 1, 65535, 0, 0, 1281.24, 61.064, 68.999, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714689, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1265.14, 501.813, 60.68, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714688, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1264.59, 529.25, 57.51, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714687, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1257.92, 556.872, 62.276, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714686, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1252.09, 585.057, 61.015, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714685, 6491, 861, 5733, 5743, 1, 65535, 0, 0, 1252.03, 55.871, 72.113, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714684, 6491, 732, 5389, 5389, 1, 65535, 0, 0, -225.857, 1693.53, 5.88862, 3.73339, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714683, 6491, 732, 5095, 5399, 1, 65535, 0, 0, -1243.75, 989.836, 155.793, 5.65879, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714682, 6491, 732, 5389, 5389, 1, 65535, 0, 0, -453.985, 1179.35, 15.1382, 4.38245, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714681, 6491, 732, 5095, 5095, 1, 65535, 0, 0, -1057.95, 1496.98, 191.149, 5.83938, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714680, 6491, 732, 5095, 5095, 1, 65535, 0, 0, -1610.46, 875.712, 193.538, 6.09048, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714679, 6491, 571, 4197, 4575, 1, 65535, 0, 0, 5444.61, 2840.79, 420.429, 0.00626393, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714678, 6491, 571, 67, 4432, 1, 65535, 0, 0, 7088.56, -1432.65, 923.502, 5.49297, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714677, 6491, 571, 210, 4496, 1, 65535, 0, 0, 7150.89, 3691.73, 818.486, 3.02682, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714676, 6491, 571, 3711, 3711, 1, 65535, 0, 0, 5032.08, 4498.36, -91.554, 5.45997, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714675, 6491, 571, 67, 4419, 1, 65535, 0, 0, 6431.54, -1186.62, 448.172, 2.38906, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714674, 6491, 571, 67, 4452, 1, 65535, 0, 0, 6942.82, -552.441, 916.375, 1.17168, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714673, 6491, 571, 67, 4436, 1, 65535, 0, 0, 8383.32, -222.323, 842.126, 1.01853, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714672, 6491, 571, 67, 4446, 1, 65535, 0, 0, 7832.92, -2019.02, 1226.67, 3.63783, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714671, 6491, 571, 394, 394, 1, 65535, 0, 0, 4415.82, -1980.7, 158.165, 6.07256, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714670, 6491, 571, 210, 4591, 1, 65535, 0, 0, 7889.04, 726.715, 519.2, 4.27008, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714669, 6491, 571, 210, 4513, 1, 65535, 0, 0, 7229.77, 2165.42, 566.506, 5.4521, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714668, 6491, 571, 210, 4477, 1, 65535, 0, 0, 8191.89, 2864.67, 604.545, 3.50824, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714667, 6491, 571, 65, 4233, 1, 65535, 0, 0, 3417.93, -1280.81, 126.479, 6.08827, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714666, 6491, 571, 2817, 4558, 1, 65535, 0, 0, 5590.8, -588.952, 190.773, 5.54634, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714665, 6491, 571, 2817, 4553, 1, 65535, 0, 0, 5882.39, 660.024, 169.925, 1.69397, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714664, 6491, 571, 67, 67, 1, 65535, 0, 0, 7463.12, -3326.36, 899.719, 1.72146, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714663, 6491, 571, 67, 4446, 1, 65535, 0, 0, 8094.67, -995.262, 938.172, 0.0501271, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714662, 6491, 571, 67, 4446, 1, 65535, 0, 0, 7917.5, -2461.01, 1139.45, 1.86518, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714661, 6491, 571, 67, 4445, 1, 65535, 0, 0, 9025.66, -1178.57, 1060.08, 1.89189, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714660, 6491, 571, 67, 4452, 1, 65535, 0, 0, 7078.75, -136.491, 784.697, 5.3555, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714659, 6491, 571, 210, 4501, 1, 65535, 0, 0, 6068.46, 94.7759, 370.063, 5.43011, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714658, 6491, 571, 2817, 4559, 1, 65535, 0, 0, 5047.8, -641.567, 225.005, 3.39593, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714657, 6491, 571, 3711, 4392, 1, 65535, 0, 0, 6358.47, 5642.39, 70.1393, 3.38415, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714656, 6491, 571, 394, 394, 1, 65535, 0, 0, 4323.39, -3606.85, 248, 0.233154, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714655, 6491, 571, 394, 394, 1, 65535, 0, 0, 2933.64, -2836.78, 73.6939, 2.69302, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714654, 6491, 571, 394, 394, 1, 65535, 0, 0, 3967.28, -2316.64, 213.873, 4.20098, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714653, 6491, 571, 394, 4159, 1, 65535, 0, 0, 4352.78, -4247.99, 162.318, 0.0163839, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714652, 6491, 571, 394, 394, 1, 65535, 0, 0, 3534.13, -2882.06, 204.625, 1.06253, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714651, 6491, 571, 394, 394, 1, 65535, 0, 0, 3100.18, -1983.4, 83.3072, 5.01701, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714650, 6491, 571, 4395, 4395, 1, 65535, 0, 0, 5850.33, 764.161, 641.12, 3.79493, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714649, 6491, 571, 3537, 3537, 1, 65535, 0, 0, 3041.42, 4319.21, 29.4391, 4.33529, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714648, 6491, 571, 3537, 4111, 1, 65535, 0, 0, 2479.42, 5289.27, 32.4917, 2.96241, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714647, 6491, 571, 3537, 3537, 1, 65535, 0, 0, 2843.05, 6655.58, 36.3798, 4.68086, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714646, 6491, 571, 3537, 4043, 1, 65535, 0, 0, 3575.78, 4087.29, 22.3345, 1.53298, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714645, 6491, 571, 3537, 4114, 1, 65535, 0, 0, 3041.14, 3843.49, 3.75779, 4.52221, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714644, 6491, 571, 3537, 4122, 1, 65535, 0, 0, 4512.78, 5658.14, 82.2635, 1.46544, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714643, 6491, 571, 3537, 4108, 1, 65535, 0, 0, 4222.44, 5337.23, 30.3802, 5.07199, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714642, 6491, 571, 3537, 4024, 1, 65535, 0, 0, 3618.7, 6805.59, 172.177, 0.00774095, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714641, 6491, 571, 495, 495, 1, 65535, 0, 0, 57.9178, -4649.08, 283.569, 6.17704, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714640, 6491, 571, 495, 3996, 1, 65535, 0, 0, 210.014, -5945.17, 7.17955, 3.23965, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714639, 6491, 571, 495, 4060, 1, 65535, 0, 0, 1923.72, -5986.35, 9.05279, 4.62589, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714638, 6491, 571, 495, 4069, 1, 65535, 0, 0, 2242.66, -4650.53, 218.904, 3.07158, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714637, 6491, 571, 495, 495, 1, 65535, 0, 0, 1191.72, -4115.8, 149.496, 0.0359173, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714636, 6491, 571, 495, 3989, 1, 65535, 0, 0, 109.589, -3701.8, 1.06501, 0.145873, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714635, 6491, 571, 495, 3988, 1, 65535, 0, 0, 731.997, -2987.05, 24.9835, 3.86473, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714634, 6491, 571, 495, 495, 1, 65535, 0, 0, 1957.22, -3682.37, 171.882, 0.0359171, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714633, 6491, 571, 495, 495, 1, 65535, 0, 0, 1359.41, -4769.29, 193.188, 4.9478, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714632, 6491, 571, 495, 3981, 1, 65535, 0, 0, 671.581, -4927.85, 3.74385, 3.732, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714631, 6491, 571, 495, 3982, 1, 65535, 0, 0, 1101.91, -4970.7, 32.3032, 4.65249, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714630, 6491, 1, 5034, 5732, 1, 1, 0, 0, -10248.5, -2140.2, 37.5838, 4.70595, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714629, 6491, 1, 5034, 5668, 1, 1, 0, 0, -8832.53, 61.3386, 141.049, 4.14439, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714628, 6491, 1, 5034, 5717, 1, 1, 0, 0, -10744.2, -1550.55, 11.5516, 3.11551, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714627, 6491, 1, 5034, 5034, 1, 1, 0, 0, -11480.3, -2139.11, 493.675, 4.84731, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714626, 6491, 1, 5034, 5663, 1, 1, 0, 0, -11170.2, -593.662, 45.3799, 6.23354, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714625, 6491, 1, 440, 440, 1, 1, 0, 0, -9048.19, -2724.85, 37.3529, 1.06333, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714624, 6491, 1, 440, 440, 1, 1, 0, 0, -9049.05, -2726.08, 37.3299, 0.556007, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714623, 6491, 1, 5034, 5455, 1, 1, 0, 0, -8917.68, -1611.37, 95.6918, 4.6236, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714622, 6491, 530, 3523, 3738, 1, 65535, 0, 0, 4363.88, 3093.74, 132.97, 0.0194635, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714621, 6491, 530, 3523, 3724, 1, 65535, 0, 0, 2980.19, 1869.82, 143.607, 5.37981, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714620, 6491, 1, 5034, 5715, 1, 1, 0, 0, -9372.39, -1066.86, 120.092, 3.02688, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714619, 6491, 1, 5034, 5717, 1, 1, 0, 0, -10846.2, -1591.67, 9.78209, 4.81675, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714618, 6491, 1, 5034, 5583, 1, 1, 0, 0, -11546.3, -2338.79, 625.699, 1.01699, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714617, 6491, 1, 5034, 5034, 1, 1, 0, 0, -10025.4, 417.321, 38.551, 3.21767, 600, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714616, 6491, 1, 361, 2478, 1, 65535, 0, 0, 3796.96, -1622, 219.894, 1.45, 600, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714615, 6491, 1, 616, 5013, 1, 65535, 5233, 0, 4949.68, -1875.75, 1326.2, 0.802851, 300, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(46619, 6491, 530, 3483, 3547, 1, 65535, 0, 0, 696.403, 2220.58, 288.533, 5.08528, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714614, 6491, 530, 3483, 3483, 1, 65535, 0, 0, 546.862, 1992.06, 103.653, 3.92525, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714613, 6491, 530, 3483, 3538, 1, 65535, 0, 0, -815.933, 2724.58, 111.381, 5.36959, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714612, 6491, 530, 3483, 3554, 1, 65535, 0, 0, -697.533, 4111.14, 63.3053, 1.73634, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714611, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1070.54, 463.967, 45.806, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714610, 6491, 861, 5733, 5739, 1, 65535, 0, 0, 1069.48, 274.84, 18.094, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714609, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 957.278, 334.663, 41.708, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714608, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 958.116, 358.37, 41.694, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714607, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 961.094, 309.344, 40.932, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714606, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 961.377, 375.804, 43.136, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714605, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 966.382, 391.002, 48.385, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714604, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 983.51, 407.868, 41.426, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714603, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 972.191, 292.45, 45.213, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714602, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 994.497, 422.283, 42.876, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714601, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 1001, 291.87, 45.757, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714600, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 1011.92, 431.146, 42.972, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714599, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 1020.23, 295.177, 41.511, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714598, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 1032.68, 437.16, 40.762, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714597, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 1043.55, 295.925, 40.924, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714596, 6491, 861, 5733, 5738, 1, 65535, 0, 0, 1052.43, 451.047, 43.773, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714595, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1089.31, 476.97, 51.683, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714594, 6491, 861, 5733, 5739, 1, 65535, 0, 0, 1091.77, 255.113, 15.98, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714593, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1101.52, 495.641, 57.653, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714592, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1104.26, 546.882, 61.908, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714591, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1107.37, 516.25, 61.443, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714590, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1107.83, 126.549, 72.717, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714589, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1109.79, 576.661, 60.847, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714588, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1110.99, 152.458, 70.52, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714587, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1113.05, 105.597, 74.587, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714586, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1117.67, 600.958, 60.426, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714585, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1118.31, 178.467, 65.695, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714584, 6491, 861, 5733, 5739, 1, 65535, 0, 0, 1120.21, 244.569, 19.324, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714583, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1127.4, 87.193, 72.169, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714582, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1131.17, 629.372, 59.471, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714581, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1135.81, 232.856, 34.701, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714580, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1149.73, 83.474, 69.535, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714579, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1150.6, 632.813, 61.353, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714578, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1171.8, 69.693, 71.481, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714577, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1176.68, 636.182, 59.593, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714576, 6491, 861, 5733, 5742, 1, 65535, 0, 0, 1197.39, 63.814, 70.985, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714575, 6491, 861, 5733, 5745, 1, 65535, 0, 0, 1207.35, 641.991, 56.353, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714574, 6491, 1, 440, 2300, 1, 65535, 0, 0, -8545.73, -4460.81, -212.723, 4.00608, 300, 0, 0, 4121, 0, 0, 0, 0, 0, 0),
(714573, 6491, 974, 5861, 5870, 0, 65535, 0, 0, -4246.83, 6387.35, 13.2001, 4.67748, 7200, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714572, 6491, 1, 618, 2250, 1, 65535, 0, 0, 5633.3, -4767.9, 778.051, 1.47212, 600, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714571, 6491, 1, 618, 2249, 1, 65535, 0, 0, 5094.36, -4740.24, 847, 2.36353, 600, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714570, 6491, 1, 616, 5022, 1, 65535, 0, 0, 4932.27, -2641.73, 1427.55, 0.0488653, 600, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714569, 6491, 1, 616, 5622, 1, 65535, 0, 0, 5410.16, -3196.55, 1579.72, 0.63474, 600, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714568, 6491, 1, 616, 4990, 1, 65535, 5233, 0, 4950.52, -2668.52, 1429.16, 5.55015, 300, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714567, 6491, 1, 616, 5045, 1, 65535, 5233, 0, 3733.21, -3327.12, 1013.73, 0.314159, 300, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(714566, 6491, 530, 4080, 4086, 1, 65535, 0, 0, 12843.1, -6850.85, 12.8124, 5.87178, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714565, 6491, 530, 3433, 3433, 1, 65535, 0, 0, 7700.74, -6731.16, 48.408, 2.82743, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714564, 6491, 530, 3433, 3433, 1, 65535, 0, 0, 7013.18, -7311.28, 46.7389, 1.0821, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714563, 6491, 530, 3522, 3865, 1, 65535, 0, 0, 3876.32, 5492.65, 272.483, 1.45779, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714562, 6491, 571, 65, 4169, 1, 65535, 5233, 0, 4465.89, 1263.18, 141.627, 4.7822, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714561, 6491, 571, 65, 4188, 1, 65535, 0, 0, 3664.94, -1043.01, 130.771, 5.26869, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714560, 6491, 571, 495, 495, 1, 65535, 5233, 0, 720.288, -5866.59, 286.538, 4.4855, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714559, 6491, 571, 495, 4061, 1, 65535, 5233, 0, 1800.3, -5599.65, 218.872, 5.42797, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714558, 6491, 571, 65, 4165, 1, 65535, 5233, 0, 3842.49, 1431.58, 90.7244, 4.66003, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714557, 6491, 571, 3537, 4023, 1, 65535, 5233, 0, 3555.28, 5822.82, 128.996, 5.53269, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714556, 6491, 571, 65, 4186, 1, 65535, 5233, 0, 3214.61, -701.304, 167.723, 0.069813, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714555, 6491, 571, 65, 65, 1, 65535, 5233, 0, 3806.42, 2066.28, 93.5632, 3.28122, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714554, 6491, 530, 3521, 3521, 1, 65535, 0, 0, 873.334, 7284.83, 22.9778, 6.28005, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714553, 6491, 530, 3518, 3627, 1, 65535, 0, 0, -1069.48, 8096.37, -35.9058, 5.18834, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714552, 6491, 530, 3521, 3521, 1, 65535, 0, 0, 321.729, 8622.32, 23.3595, 5.72871, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714551, 6491, 530, 3521, 3521, 1, 65535, 0, 0, 227.538, 6200.29, 22.2206, 3.14788, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714550, 6491, 530, 3521, 3565, 1, 65535, 0, 0, -213.516, 5593.56, 20.7121, 4.97236, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714549, 6491, 530, 3519, 3688, 1, 65535, 0, 0, -3561.65, 4674.39, -21.9614, 4.57731, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714548, 6491, 530, 3524, 3524, 1, 65535, 0, 0, -3485.5, -11652, 7.80012, 6.2, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714547, 6491, 530, 3522, 3918, 1, 65535, 0, 0, 2013.51, 5570.5, 262.92, 1.60077, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714546, 6491, 530, 3522, 3769, 1, 65535, 0, 0, 2218.65, 6017.26, 135.922, 2.56696, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714545, 6491, 530, 3523, 3523, 1, 65535, 0, 0, 2368.63, 2325.31, 106.184, 2.29208, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714544, 6491, 530, 3525, 3608, 1, 65535, 0, 0, -1757.48, -11056.5, 77.13, 4.35191, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714543, 6491, 530, 3525, 3525, 1, 65535, 0, 0, -2014.24, -11969.3, 33.3328, 4.29537, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714542, 6491, 530, 3524, 3524, 1, 65535, 0, 0, -3329.27, -12097.1, 28.5829, 1.22054, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714541, 6491, 530, 3524, 3524, 1, 65535, 0, 0, -4304.85, -12422.9, 17.5658, 4.30872, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714540, 6491, 530, 3524, 3526, 1, 65535, 0, 0, -4119.32, -13663.5, 74.4887, 2.46696, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714539, 6491, 530, 3483, 3539, 1, 65535, 0, 0, -280.767, 1055.99, 54.3232, 5.92818, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714538, 6491, 530, 3430, 3462, 1, 65535, 0, 0, 8704.09, -6670.87, 70.3361, 6.03635, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714537, 6491, 530, 3430, 3464, 1, 65535, 0, 0, 8939.88, -7443.37, 82.7631, 2.16768, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714536, 6491, 530, 3430, 3431, 1, 65535, 0, 0, 10463.3, -6369.74, 39.7908, 2.29649, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714535, 6491, 530, 3430, 3430, 1, 65535, 0, 0, 9417.63, -6853.48, 14.9356, 2.64128, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714534, 6491, 530, 3518, 3518, 1, 65535, 0, 0, -2023.67, 8485.88, -0.436384, 3.64818, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714533, 6491, 530, 3520, 3744, 1, 65535, 0, 0, -2996.17, 2454.73, 62.4357, 4.70139, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714532, 6491, 530, 3520, 3938, 1, 65535, 0, 0, -4122.94, 1062.18, 31.5531, 5.80802, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714531, 6491, 530, 3520, 3754, 1, 65535, 0, 0, -3127.85, 727.413, -20.3158, 4.22387, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714530, 6491, 530, 3519, 3679, 1, 65535, 0, 0, -3922.27, 3689.32, 286.767, 3.27669, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714529, 6491, 530, 3518, 3764, 1, 65535, 0, 0, -1295.76, 9170.33, 217.797, 0.295307, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714528, 6491, 530, 3519, 3696, 1, 65535, 0, 0, -1137.83, 5896.99, 189.158, 3.05307, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714527, 6491, 571, 65, 65, 1, 65535, 0, 0, 4607.77, -973.058, 170.076, 3.90994, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714526, 6491, 571, 65, 4254, 1, 65535, 0, 0, 3546.86, 272.988, 45.5817, 3.22276, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714525, 6491, 571, 4197, 4589, 1, 65535, 0, 0, 5031.83, 3711.34, 372.43, 3.84281, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714524, 6491, 571, 3711, 4290, 1, 65535, 0, 0, 5540.36, 4852.61, -196.562, 3.60877, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714523, 6491, 571, 4197, 4538, 1, 65535, 0, 0, 5097.25, 2299.2, 368.485, 0.259043, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714522, 6491, 571, 4197, 4575, 1, 65535, 0, 0, 5538, 2895.81, 517.055, 1.58009, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714521, 6491, 571, 3711, 3711, 1, 65535, 0, 0, 6246.57, 5171.06, -83.3611, 4.78686, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714520, 6491, 571, 3711, 3711, 1, 65535, 0, 0, 5518.39, 3589.14, -13.5173, 1.3429, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714519, 6491, 571, 3711, 3711, 1, 65535, 0, 0, 4821.72, 5467.69, -52.8696, 6.08275, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714518, 6491, 571, 66, 4294, 1, 65535, 0, 0, 5705.4, -2468.62, 287.551, 3.18859, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714517, 6491, 571, 3711, 3711, 1, 65535, 0, 0, 6271.65, 4408.18, -70.1607, 0.745985, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714516, 6491, 571, 66, 4313, 1, 65535, 0, 0, 5557.87, -1609.36, 242.247, 4.7162, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714515, 6491, 571, 4197, 4589, 1, 65535, 0, 0, 5099.03, 3469.67, 368.485, 5.09316, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714514, 6491, 571, 4197, 4611, 1, 65535, 0, 0, 4331.75, 3235.64, 390.251, 5.96887, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714513, 6491, 571, 3711, 4284, 1, 65535, 0, 0, 5624.51, 5845.25, -62.6812, 3.97005, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714512, 6491, 571, 4197, 4612, 1, 65535, 0, 0, 4315.11, 2409.94, 392.64, 5.59188, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714511, 6491, 571, 4197, 4197, 1, 65535, 0, 0, 5141.29, 2178.63, 390.938, 1.89266, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714510, 6491, 571, 3537, 4020, 1, 65535, 0, 0, 2828.72, 5969.69, 114.196, 0.162131, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714509, 6491, 571, 66, 66, 1, 65535, 0, 0, 4941.26, -2959.29, 289.535, 3.78471, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714508, 6491, 571, 66, 66, 1, 65535, 0, 0, 5239.77, -2132.53, 244.569, 6.26577, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714507, 6491, 571, 66, 66, 1, 65535, 0, 0, 5792.54, -3288.83, 363.565, 0.0697586, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714506, 6491, 571, 66, 66, 1, 65535, 0, 0, 5515.57, -4101.57, 364.358, 0.00299454, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714505, 6491, 571, 65, 4170, 1, 65535, 0, 0, 4819.88, 1020.05, 146.434, 2.7743, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714504, 6491, 571, 66, 66, 1, 65535, 0, 0, 6615.95, -4797.55, 450.522, 0.823739, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714503, 6491, 571, 65, 65, 1, 65535, 0, 0, 3594.74, 2851.98, 70.2233, 5.50746, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714502, 6491, 571, 65, 4158, 1, 65535, 0, 0, 3504.05, 2101.44, 69.5588, 3.45915, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714501, 6491, 530, 3520, 3520, 1, 65535, 0, 0, -3624.02, 609.218, 10.5068, 4.86712, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714500, 6491, 571, 65, 4152, 1, 65535, 0, 0, 2764.22, 1043.91, 23.9775, 6.0808, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714499, 6491, 530, 3483, 3552, 1, 65535, 0, 0, 173.753, 4364.58, 120.238, 6.0418, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714498, 6491, 530, 3519, 3860, 1, 65535, 0, 0, -2533.26, 3867.87, 10.3359, 3.19395, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714497, 6491, 530, 3522, 3951, 1, 65535, 0, 0, 3054.01, 5438.67, 149.32, 5.46288, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714496, 6491, 530, 3520, 3520, 1, 65535, 0, 0, -3523.04, 622.905, 4.6654, 3.13532, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714495, 6491, 0, 28, 28, 1, 65535, 0, 0, 1840.76, -2149.67, 67.4929, 2.38151, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714494, 6491, 0, 3, 3, 1, 65535, 0, 0, -7105.79, -3488.52, 242.318, 0.00187445, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714493, 6491, 0, 267, 286, 1, 65535, 0, 0, -561.995, 122.37, 54.1326, 2.72939, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714492, 6491, 0, 85, 159, 1, 65535, 0, 0, 2383.21, 469.474, 35.5246, 3.84555, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714491, 6491, 530, 3522, 3832, 1, 65535, 0, 0, 2296.35, 7023.23, 364.117, 1.99239, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714490, 6491, 0, 267, 271, 1, 65535, 0, 0, -754.7, -587.971, 17.7663, 0.0763123, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714489, 6491, 0, 267, 272, 1, 65535, 0, 0, -14.5479, -992.412, 55.9217, 1.41542, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714488, 6491, 0, 45, 45, 1, 65535, 0, 0, -1315.55, -3184.51, 37.3032, 5.66597, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714487, 6491, 0, 4922, 5155, 1, 65535, 0, 0, -3058.89, -4097.95, 266.496, 2.63275, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714486, 6491, 0, 4922, 5682, 1, 65535, 0, 0, -2783.43, -5748.71, 342.392, 2.90136, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714485, 6491, 0, 4922, 4922, 1, 65535, 0, 0, -2722.78, -5939.84, 88.0705, 2.74272, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714484, 6491, 0, 4922, 5136, 1, 65535, 0, 0, -3902.52, -6225.56, 26.824, 5.42094, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714483, 6491, 0, 4922, 5425, 1, 65535, 0, 0, -4669.46, -6367.3, 12.4303, 3.87527, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714482, 6491, 0, 4922, 5611, 1, 65535, 0, 0, -4197.24, -5462.79, 20.3741, 3.26652, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714481, 6491, 0, 4922, 4922, 1, 65535, 0, 0, -3713.28, -5184.28, 41.3112, 3.90584, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714480, 6491, 0, 4922, 5470, 1, 65535, 0, 0, -4147.41, -4774.48, 119.263, 5.68791, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714479, 6491, 0, 4922, 5471, 1, 65535, 0, 0, -4799.71, -4871.82, 192.111, 0.197201, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714478, 6491, 0, 4922, 5473, 1, 65535, 0, 0, -4639.03, -4038.56, 340.172, 5.54419, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714477, 6491, 0, 4922, 1037, 1, 65535, 0, 0, -4153.45, -3699.96, 207.616, 1.47739, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714476, 6491, 0, 11, 11, 1, 65535, 0, 0, -3948.03, -2877.8, 12.9097, 2.55814, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714475, 6491, 0, 11, 298, 1, 65535, 0, 0, -3351.19, -845.896, 1.05955, 4.81562, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714474, 6491, 0, 1, 5495, 1, 65535, 0, 0, -5119.52, 896.673, 283.769, 5.45257, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714473, 6491, 0, 1, 801, 1, 65535, 0, 0, -5278.01, 320.19, 396.817, 3.98232, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714472, 6491, 0, 1, 131, 1, 65535, 0, 0, -5680.04, -518.92, 396.274, 2.42801, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714471, 6491, 0, 1, 1, 1, 65535, 0, 0, -5210.32, -444.178, 386.333, 3.94619, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714470, 6491, 0, 1, 809, 1, 65535, 0, 0, -5165.52, -874.664, 507.177, 0.888639, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714469, 6491, 0, 38, 38, 1, 65535, 0, 0, -5329.98, -3779.33, 310.214, 3.27938, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714468, 6491, 0, 8, 75, 1, 65535, 0, 0, -10567.8, -3377.2, 22.2532, 0.463718, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714467, 6491, 0, 8, 8, 1, 65535, 0, 0, -10637.4, -4010.93, 24.0957, 4.64965, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714466, 6491, 0, 8, 8, 1, 65535, 0, 0, -9955.71, -3917.06, 23.3458, 1.49706, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714465, 6491, 0, 3, 1879, 1, 65535, 0, 0, -6981.6, -2327.72, 241.915, 4.77908, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714464, 6491, 0, 51, 1446, 1, 65535, 0, 0, -6432.8, -1129.57, 316.414, 2.08438, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714463, 6491, 0, 51, 5615, 1, 65535, 0, 0, -6865.55, -1085.4, 240.014, 1.72237, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714462, 6491, 0, 51, 246, 1, 65535, 0, 0, -6867.31, -1539.84, 241.815, 3.78946, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714461, 6491, 0, 51, 1444, 1, 65535, 0, 0, -7317.94, -1648.82, 282.024, 5.49298, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714460, 6491, 0, 46, 5677, 1, 65535, 0, 0, -7987.14, -2368.41, 124.046, 4.86309, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714459, 6491, 0, 41, 2563, 1, 65535, 0, 0, -11110.4, -1833.24, 71.8642, 3.04726, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714458, 6491, 0, 4, 1437, 1, 65535, 0, 0, -10853.4, -2947.42, 13.2267, 2.66637, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714457, 6491, 0, 4, 4, 1, 65535, 0, 0, -12188.7, -3279.94, 58.2791, 3.38058, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714456, 6491, 0, 4, 72, 1, 65535, 0, 0, -11812.2, -2954.8, 7.53578, 4.64272, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714455, 6491, 0, 4, 5044, 1, 65535, 0, 0, -12186.6, -2565.22, 3.99378, 5.56243, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714454, 6491, 530, 3523, 3712, 1, 65535, 0, 0, 3015.3, 3597.04, 145.753, 6.13693, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714453, 6491, 1, 618, 618, 1, 65535, 0, 0, 6499.08, -2378.94, 589.681, 4.80547, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714452, 6491, 530, 3522, 3867, 1, 65535, 0, 0, 3441.09, 4798.39, 260.086, 0.713674, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714451, 6491, 530, 3518, 3636, 1, 65535, 0, 0, -867.469, 6614.36, 175.242, 5.39023, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714450, 6491, 530, 3522, 3781, 1, 65535, 0, 0, 3519.15, 6828.53, 141.155, 5.32396, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714449, 6491, 530, 3483, 3483, 1, 65535, 0, 0, -1266.03, 2441.78, 61.8107, 3.54849, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714448, 6491, 530, 3483, 3536, 1, 65535, 0, 0, 167.747, 2570.89, 79.6642, 3.45817, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714447, 6491, 530, 3519, 3519, 1, 65535, 0, 0, -1786.04, 4928.11, -21.9232, 2.83528, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714446, 6491, 530, 3520, 3745, 1, 65535, 0, 0, -4010.09, 2053.24, 97.8815, 3.21184, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714445, 6491, 530, 3518, 3518, 1, 65535, 0, 0, -2509.5, 6809.17, 23.4067, 5.81802, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714444, 6491, 530, 3518, 3628, 1, 65535, 0, 0, -1667.32, 7948.42, -48.7145, 5.89896, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714443, 6491, 530, 3521, 3521, 1, 65535, 0, 0, 335.75, 7626.48, 22.9002, 0.400393, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714442, 6491, 530, 3521, 3720, 1, 65535, 0, 0, 248.339, 7084.93, 36.4931, 3.04797, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714441, 6491, 530, 3522, 3772, 1, 65535, 0, 0, 1955.9, 6768.81, 164.061, 1.02871, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714440, 6491, 530, 3522, 3953, 1, 65535, 0, 0, 2312.27, 5083.93, 272.449, 2.18403, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714439, 6491, 1, 4709, 4857, 1, 65535, 0, 0, -3973.19, -2017.75, 96.0305, 0.966001, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714438, 6491, 0, 5339, 33, 1, 65535, 0, 0, -12544.4, -585.417, 39.9823, 3.61003, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714437, 6491, 0, 33, 301, 1, 65535, 0, 0, -11993.1, 430.405, 2.06373, 3.50951, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714436, 6491, 0, 5339, 33, 1, 65535, 0, 0, -11551.4, -227.303, 28.2452, 5.52171, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714435, 6491, 0, 44, 44, 1, 65535, 0, 0, -9188.79, -2306.29, 90.1269, 3.77418, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714434, 6491, 0, 44, 44, 1, 65535, 0, 0, -9392.39, -2019.38, 58.4465, 4.27841, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714433, 6491, 0, 10, 42, 1, 65535, 0, 0, -10780.8, -1195.55, 35.7693, 0.632591, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714432, 6491, 0, 10, 492, 1, 65535, 0, 0, -10581.4, 294.679, 30.7886, 3.11682, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714431, 6491, 0, 10, 10, 1, 65535, 0, 0, -10837.5, -486.576, 42.8429, 1.76123, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714430, 6491, 0, 1581, 1581, 1, 65535, 0, 0, -11224.9, 1615.64, 32.6436, 4.64323, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714429, 6491, 0, 40, 20, 1, 65535, 0, 0, -10985.9, 1625.19, 45.4717, 5.1675, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714428, 6491, 0, 40, 108, 1, 65535, 0, 0, -10513.3, 1180.91, 31.7867, 3.96346, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714427, 6491, 0, 85, 5692, 1, 65535, 0, 0, 1753.08, 1585.8, 112.278, 1.52353, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714426, 6491, 0, 12, 12, 1, 65535, 0, 0, -9340.94, 164.66, 61.5587, 1.07398, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714425, 6491, 0, 1, 801, 1, 65535, 0, 0, -5386.74, 36.9827, 395.53, 6.15592, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714424, 6491, 0, 8, 1780, 1, 65535, 0, 0, -10342.1, -2583.62, 24.9394, 3.16748, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714423, 6491, 0, 8, 74, 1, 65535, 0, 0, -10320.2, -4122.43, 22.5164, 1.18828, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714422, 6491, 0, 5287, 1741, 1, 65535, 0, 0, -13316.9, 155.748, 17.3469, 3.39916, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714421, 6491, 0, 4, 72, 1, 65535, 0, 0, -11808, -2961.49, 7.68175, 5.90851, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714420, 6491, 0, 11, 1017, 1, 65535, 0, 0, -3345.39, -3421.12, 64.4016, 5.17416, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714419, 6491, 0, 11, 11, 1, 65535, 0, 0, -3983.23, -2844.7, 12.9895, 5.62183, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714418, 6491, 0, 47, 353, 1, 65535, 0, 0, -198.557, -3043.34, 119.727, 6.11662, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714417, 6491, 0, 47, 356, 1, 65535, 0, 0, 577.536, -3826.78, 120.064, 6.07148, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714416, 6491, 0, 267, 286, 1, 65535, 0, 0, -573.443, 116.159, 54.2246, 2.29408, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714415, 6491, 0, 28, 192, 1, 65535, 0, 0, 2658.78, -1723.77, 124.43, 6.17394, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714414, 6491, 0, 139, 4281, 1, 65535, 0, 0, 2356.65, -5663.06, 382.257, 0.586577, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714413, 6491, 0, 139, 4544, 1, 65535, 0, 0, 2364.37, -5778.2, 151.368, 0.890498, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714412, 6491, 0, 85, 4921, 1, 65535, 0, 0, 1773.33, 768.808, 55.6853, 0.0250183, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714411, 6491, 0, 12, 88, 1, 65535, 0, 0, -9554.16, -1367.13, 51.202, 4.91271, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714410, 6491, 0, 12, 9, 1, 65535, 0, 0, -8924, -189, 80.555, 2.77, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714409, 6491, 0, 10, 94, 1, 65535, 0, 0, -10602.4, 293.623, 31.7491, 3.09761, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714408, 6491, 0, 41, 2563, 1, 65535, 0, 0, -11103, -1833.2, 71.8642, 3.04545, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714407, 6491, 0, 3, 3, 1, 65535, 0, 0, -6282.51, -3488.48, 252.189, 3.6477, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714406, 6491, 0, 130, 236, 1, 65535, 0, 0, -251.024, 1521.84, 77.0363, 0.536741, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714405, 6491, 0, 130, 228, 1, 65535, 0, 0, 449.071, 1575.26, 128.425, 0.199803, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714404, 6491, 0, 85, 152, 1, 65535, 0, 0, 1766.7, -671.916, 43.7461, 3.6852, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714403, 6491, 0, 85, 173, 1, 65535, 0, 0, 2612.32, -532.802, 88.9998, 4.1319, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714402, 6491, 0, 796, 796, 1, 65535, 0, 0, 2841.17, -688.047, 139.329, 5.17475, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714401, 6491, 0, 28, 28, 1, 65535, 0, 0, 1883.72, -1685.39, 59.8284, 1.64676, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714400, 6491, 0, 28, 2298, 1, 65535, 0, 0, 1111.22, -2614.71, 61.236, 0.898298, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714399, 6491, 0, 47, 348, 1, 65535, 0, 0, 333.738, -2228.58, 137.088, 3.17986, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714398, 6491, 0, 47, 307, 1, 65535, 0, 0, -187.111, -4346.77, 113.289, 2.22323, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714397, 6491, 0, 139, 2262, 1, 65535, 0, 0, 1382.98, -3700.87, 76.8748, 6.20442, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714396, 6491, 0, 139, 139, 1, 65535, 0, 0, 1986.98, -3651.75, 120.201, 3.85135, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714395, 6491, 0, 139, 2622, 1, 65535, 0, 0, 2048.81, -5026.21, 75.4181, 0.448974, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714394, 6491, 1, 1377, 3425, 1, 65535, 0, 0, -6823.67, 892.906, 33.9618, 3.05934, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714393, 6491, 1, 1377, 2741, 1, 65535, 0, 0, -8026.65, 1602.06, 13.8791, 3.52035, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714392, 6491, 1, 490, 537, 1, 65535, 0, 0, -7341.45, -1324.5, -258.669, 2.26662, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714391, 6491, 1, 490, 4381, 1, 65535, 0, 0, -6107.59, -1344.02, -179.34, 2.63419, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714390, 6491, 1, 490, 1942, 1, 65535, 0, 0, -7077.26, -2391.64, -165.643, 4.28744, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714389, 6491, 1, 440, 440, 1, 65535, 0, 0, -9605.43, -3639.58, 13.3005, 1.91866, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714388, 6491, 1, 440, 5062, 1, 65535, 0, 0, -8643.99, -4028.61, 44.6902, 5.00294, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714387, 6491, 1, 440, 988, 1, 65535, 0, 0, -7755.32, -4978.22, 4.05656, 1.36417, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714386, 6491, 1, 440, 976, 1, 65535, 0, 0, -7142.07, -3876.89, 10.4365, 4.54505, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714385, 6491, 1, 440, 978, 1, 65535, 0, 0, -6831, -2885.87, 8.89237, 0.0926504, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714384, 6491, 1, 1377, 2737, 1, 65535, 0, 0, -7981.09, 1556.57, 3.64432, 3.17291, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714383, 6491, 1, 490, 1942, 1, 65535, 0, 0, -7207, -2439, -218, 1.084, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714382, 6491, 1, 400, 5025, 1, 65535, 0, 0, -5530, -3455, -44, 4.603, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714381, 6491, 1, 400, 485, 1, 65535, 0, 0, -4642, -1778, -41, 2.489, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714380, 6491, 1, 357, 2577, 1, 65535, 0, 0, -4593, 1631.68, 93.968, 6.225, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714379, 6491, 1, 357, 1116, 1, 65535, 0, 0, -4600, 3229.67, 9.006, 0.093, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714378, 6491, 1, 4709, 4850, 1, 65535, 0, 0, -2506, -1968, 91.784, 2.796, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714377, 6491, 1, 405, 596, 1, 65535, 0, 0, -1434, 1967.04, 86.041, 1.71, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714376, 6491, 1, 215, 222, 1, 65535, 0, 0, -2173, -342, -5, 3.594, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714375, 6491, 1, 17, 392, 1, 65535, 0, 0, -1073, -3479, 63.044, 3.446, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714374, 6491, 1, 1638, 5345, 1, 65535, 0, 0, -983, -75, 20.431, 0.033, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714373, 6491, 1, 17, 17, 1, 65535, 0, 0, -590, -2515, 91.761, 4.549, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714372, 6491, 1, 406, 1076, 1, 65535, 0, 0, 919.297, 436.482, 65.128, 3.009, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714371, 6491, 1, 14, 14, 1, 65535, 0, 0, 1178.15, -4467, 21.323, 1.176, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714370, 6491, 1, 331, 2457, 1, 65535, 0, 0, 2428.47, -2953, 123.513, 0.062, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714369, 6491, 1, 331, 415, 1, 65535, 0, 0, 2644.78, -635, 107.674, 3.347, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714368, 6491, 1, 16, 3137, 1, 65535, 0, 0, 2683.48, -3988, 108.41, 4.673, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714367, 6491, 1, 16, 1231, 1, 65535, 0, 0, 2924.51, -6031, 4.946, 6.02, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714366, 6491, 1, 16, 4814, 1, 65535, 0, 0, 4798.35, -6846, 89.817, 3.236, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714365, 6491, 1, 361, 1767, 1, 65535, 0, 0, 5943.01, -1205, 382.952, 5.47, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714364, 6491, 1, 148, 148, 1, 65535, 0, 0, 6736.36, 202.91, 23.255, 4.121, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714363, 6491, 1, 618, 2255, 1, 65535, 0, 0, 6857.31, -4680, 700.936, 1.527, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714362, 6491, 1, 876, 876, 1, 65535, 0, 0, 16320.2, 16243.6, 24.4, 2.253, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714361, 6491, 1, 1657, 1657, 1, 65535, 0, 0, 10055.4, 2116.32, 1329.71, 2.54, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714360, 6491, 1, 141, 186, 1, 65535, 0, 0, 9683.39, 952.225, 1291.87, 5.752, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714359, 6491, 1, 141, 256, 1, 65535, 0, 0, 10394.7, 825.111, 1317.52, 3.753, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714358, 6491, 1, 357, 1101, 1, 65535, 0, 0, -5287.04, 138.274, -977.902, 0, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714357, 6491, 1, 490, 541, 1, 65535, 0, 0, -6154.23, -1142.67, -216.588, 2.99628, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714356, 6491, 1, 490, 4381, 1, 65535, 0, 0, -6113.67, -1337.97, -179.625, 4.02662, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714355, 6491, 1, 618, 2241, 1, 65535, 0, 0, 7763.65, -4102.77, 697.988, 0.266153, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714354, 6491, 1, 16, 16, 1, 65535, 0, 0, 4321.05, -5569.39, 119.787, 4.73114, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714353, 6491, 1, 16, 1233, 1, 65535, 0, 0, 3205.34, -4941.65, 159.706, 4.28347, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714352, 6491, 1, 331, 416, 1, 65535, 0, 0, 2932.28, 380.747, 91.8989, 3.08966, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714351, 6491, 1, 331, 4705, 1, 65535, 0, 0, 2297.99, -1731.66, 119.435, 3.52163, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714350, 6491, 1, 406, 464, 1, 65535, 0, 0, 1696.09, 1045.9, 149.448, 4.65259, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714349, 6491, 1, 17, 17, 1, 65535, 0, 0, 277.085, -3314.55, 56.5686, 3.14071, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714348, 6491, 1, 215, 225, 1, 65535, 0, 0, -1172.44, -1147.65, 37.0763, 1.39399, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714347, 6491, 1, 400, 2097, 1, 65535, 0, 0, -5363.6, -2365.49, -37.3275, 0.690257, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714346, 6491, 1, 400, 5048, 1, 65535, 0, 0, -6116.2, -3853.91, -58.7501, 1.27538, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714345, 6491, 1, 440, 1939, 1, 65535, 0, 0, -7746.9, -3012.54, 40.731, 2.30426, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714344, 6491, 1, 357, 2522, 1, 65535, 0, 0, -5529.01, 1452.51, 24.0477, 5.33197, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714343, 6491, 1, 141, 141, 1, 65535, 0, 0, 8709.78, 963.966, 12.6548, 2.63728, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714342, 6491, 1, 16, 16, 1, 65535, 0, 0, 4023.6, -5443.89, 115.798, 0.348319, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714341, 6491, 1, 357, 2522, 1, 65535, 0, 0, -5535.99, 1459.13, 24.8974, 5.78369, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714340, 6491, 1, 357, 2577, 1, 65535, 0, 0, -4610.46, 1635.57, 93.9249, 6.09783, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714339, 6491, 1, 357, 2577, 1, 65535, 0, 0, -3790.81, 1255.52, 160.254, 4.65736, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714338, 6491, 1, 357, 5072, 1, 65535, 0, 0, -4466.8, 2138.55, 7.55253, 2.77712, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714337, 6491, 1, 357, 1116, 1, 65535, 0, 0, -4588.21, 3250.42, 8.96212, 4.01177, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714336, 6491, 1, 405, 602, 1, 65535, 0, 0, -1969.62, 1729.49, 63.2016, 5.12546, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714335, 6491, 1, 405, 2405, 1, 65535, 0, 0, -453.048, 2513.65, 92.8398, 6.09937, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714334, 6491, 1, 215, 220, 1, 65535, 0, 0, -2944.82, -153.509, 69.9713, 5.3108, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714333, 6491, 1, 4709, 4851, 1, 65535, 0, 0, -2379.65, -1974.58, 96.3395, 2.59096, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714332, 6491, 1, 4709, 4709, 1, 65535, 0, 0, -1172.15, -1713.33, 91.6644, 5.60066, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714331, 6491, 1, 15, 15, 1, 65535, 0, 0, -3516.2, -4316.06, 7.19682, 3.09995, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714330, 6491, 1, 15, 496, 1, 65535, 0, 0, -3104.38, -2987.84, -977.221, 0, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714329, 6491, 1, 15, 4010, 1, 65535, 0, 0, -4637.87, -3138.56, 34.9496, 1.01787, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714328, 6491, 1, 15, 15, 1, 65535, 0, 0, -3101.22, -3064.28, 33.8844, 2.33186, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714327, 6491, 1, 400, 5048, 1, 65535, 0, 0, -6180.54, -3992.85, 1.72375, 1.71488, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714326, 6491, 1, 400, 5028, 1, 65535, 0, 0, -6212.39, -4581.53, 93.6144, 1.22372, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714325, 6491, 1, 400, 5027, 1, 65535, 0, 0, -5347.12, -3941.22, 85.8656, 2.37274, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714324, 6491, 1, 400, 484, 1, 65535, 0, 0, -5440.54, -2289.9, 89.439, 0.4226, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714323, 6491, 1, 400, 485, 1, 65535, 0, 0, -4603.65, -1904.34, 88.1406, 1.94784, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714322, 6491, 1, 400, 5092, 1, 65535, 0, 0, -4874.51, -2162.13, 0.870021, 2.15594, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714321, 6491, 1, 17, 387, 1, 65535, 0, 0, -839.54, -1982.03, 91.8002, 2.96045, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714320, 6491, 1, 17, 1699, 1, 65535, 0, 0, -229.931, -3013.62, 91.6679, 0.434656, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714319, 6491, 1, 406, 469, 1, 65535, 0, 0, -104.777, -700.162, 4.12326, 2.17824, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714318, 6491, 1, 406, 1076, 1, 65535, 0, 0, 781.532, 382.121, 71.5983, 3.29978, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714317, 6491, 1, 406, 464, 1, 65535, 0, 0, 1689.14, 1051.56, 149.411, 5.50126, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714316, 6491, 1, 331, 416, 1, 65535, 0, 0, 2912.99, 380.541, 91.6667, 6.19552, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714315, 6491, 1, 331, 331, 1, 65535, 0, 0, 3812.46, 758.439, 8.32688, 0.870489, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714314, 6491, 1, 14, 4982, 1, 65535, 0, 0, 1345.6, -4504.94, 27.3019, 3.21796, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714313, 6491, 1, 14, 362, 1, 65535, 0, 0, 245.36, -4792.69, 10.3145, 3.30043, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714312, 6491, 1, 14, 367, 1, 65535, 0, 0, -764.178, -4985.67, 20.812, 3.42371, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714311, 6491, 1, 16, 4745, 1, 65535, 0, 0, 2595.58, -4773.03, 152.234, 2.75063, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714310, 6491, 1, 16, 4824, 1, 65535, 0, 0, 3349.98, -4453.01, 266.236, 4.53898, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714309, 6491, 1, 16, 1237, 1, 65535, 0, 0, 3050.27, -4122.38, 103.599, 2.98702, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714308, 6491, 1, 16, 16, 1, 65535, 0, 0, 2711.57, -6096.74, 106.824, 3.17317, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714307, 6491, 1, 16, 16, 1, 65535, 0, 0, 4721.42, -5955.83, 105.055, 5.42805, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714306, 6491, 1, 16, 4814, 1, 65535, 0, 0, 4796.62, -6826.11, 89.9901, 4.75262, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714305, 6491, 1, 16, 4821, 1, 65535, 0, 0, 3529.05, -6574.06, 52.0014, 4.64895, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714304, 6491, 1, 361, 1767, 1, 65535, 0, 0, 5939.53, -1213.33, 383.185, 6.28175, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714303, 6491, 1, 361, 361, 1, 65535, 0, 0, 5404.59, -579.932, 355.886, 5.14215, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714302, 6491, 1, 361, 361, 1, 65535, 0, 0, 4441.73, -853.516, -5438.97, 0, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714301, 6491, 1, 148, 2077, 1, 65535, 0, 0, 5251.71, 188.508, 16.9118, 3.8232, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714300, 6491, 1, 148, 4648, 1, 65535, 0, 0, 6248.43, 238.149, 21.5925, 0.870112, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714299, 6491, 1, 148, 148, 1, 65535, 0, 0, 6672.73, 277.876, 9.56811, 2.69381, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714298, 6491, 1, 148, 148, 1, 65535, 0, 0, 7173.91, -497.945, 32.192, 2.4904, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714297, 6491, 1, 440, 988, 1, 65535, 0, 0, -7748.02, -4978.67, 6.00826, 2.27058, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714296, 6491, 1, 14, 4982, 1, 65535, 0, 0, 1351.72, -4453.53, 27.1667, 2.66343, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714295, 6491, 1, 1638, 5345, 1, 65535, 0, 0, -972.736, -74.5938, 17.9305, 3.15905, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714294, 6491, 1, 215, 821, 1, 65535, 0, 0, -2733.59, -1115.71, 23.7431, 0.0349066, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(714293, 6491, 646, 5042, 5042, 1, 65535, 0, 0, 917.946, -373.76, 62.1076, 0.450823, 300, 0, 0, 4121, 0, 0, 0, 0, 0, 0),
(714292, 6491, 1, 618, 2255, 1, 65535, 0, 0, 6855.81, -4664.11, 701.468, 0.146364, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714291, 6491, 1, 493, 493, 1, 65535, 0, 0, 7407.04, -2824.32, 464.228, 0.89404, 90, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714290, 6491, 1, 440, 440, 1, 65535, 0, 0, -8591.09, -3623.91, 13.478, 4.54902, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714289, 6491, 1, 440, 2300, 1, 65535, 0, 0, -8146.14, -4608.99, -125.103, 4.16259, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714288, 6491, 1, 15, 4049, 1, 65535, 0, 0, -4031.16, -3422.71, 38.8247, 1.69815, 60, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
(714287, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4041.08, -6549.11, 15.9531, 1.89119, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(714286, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4087.17, -6293.64, 11.8282, 1.03511, 90, 0, 0, 279440, 0, 0, 0, 0, 0, 0),
(365020, 22252, 0, 4922, 5136, 1, 1, 0, 0, -3966.01, -6276.86, 29.7855, 2.02078, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(58, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4092.27, -6309.82, 27.9254, 4.83643, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(59, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4093.67, -6283.05, 7.03574, 0.512807, 90, 0, 0, 279440, 0, 0, 0, 0, 0, 0),
(60, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4064.57, -6327.23, 39.5052, 1.01154, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(61, 22252, 0, 4922, 5136, 1, 1, 0, 0, -3928.13, -6455.76, 16.1472, 1.0351, 90, 0, 0, 279440, 0, 0, 0, 0, 0, 0),
(80, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4096.1, -6269.38, 22.4505, 5.41763, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(81, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4051.07, -6366.11, 39.465, 3.25386, 90, 0, 0, 279440, 0, 0, 0, 0, 0, 0),
(137, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4067.49, -6252.6, 28.7702, 3.81934, 90, 0, 0, 279440, 0, 0, 0, 0, 0, 0),
(142, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4080.88, -6281.44, 4.97392, 2.7944, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(159, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4029.18, -6410.24, 40.1039, 3.03395, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(165, 22252, 0, 4922, 5136, 1, 1, 0, 0, -3935.01, -6515.8, 14.4203, 4.85999, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(166, 22252, 0, 4922, 5136, 1, 1, 0, 0, -3942.91, -6401.2, 27.5092, 4.87962, 90, 0, 0, 279440, 0, 0, 0, 0, 0, 0),
(178, 22252, 0, 4922, 5136, 1, 1, 0, 0, -4019.96, -6506.86, 15.7471, 3.54052, 90, 0, 0, 244510, 0, 0, 0, 0, 0, 0),
(9678 , 22252, 530, 3520, 3759, 1, 1, 0, 0, -5033.42, 447.824, 86.3458, 5.28835, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176584, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4971.12, 444.943, 85.8984, 1.76278, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176585, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4892.73, 543.887, 44.9395, 6.05629, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176586, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4982.84, 565.476, 81.7786, 1.44862, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176587, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4978.49, 571.893, 79.844, 2.74017, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176588, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4883.68, 553.572, 57.8876, 5.18363, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176589, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4966.11, 519.752, 80.1368, 3.9968, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176590, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4945.57, 521.877, 77.4061, 5.93412, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176591, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4891.3, 500.731, 65.6119, 3.10669, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176592, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4895.07, 508.363, 64.6452, 4.01426, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176593, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4885.55, 494.402, 65.9104, 3.28122, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176594, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4927.73, 400.331, 82.4032, 2.56563, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176595, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4917.05, 406.565, 81.0098, 3.54302, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176596, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4910.13, 409.445, 80.2382, 0.767945, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176597, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4919.1, 362.26, 78.6972, 4.67748, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176598, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4909.71, 359.261, 78.3011, 3.92699, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176599, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4873.82, 284.827, 58.7817, 2.40855, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176600, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4884.65, 282.668, 62.8824, 1.29154, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176601, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4932.51, 211.388, 67.9862, 4.55531, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176602, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4925.73, 190.343, 64.2966, 2.30383, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176603, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5007.79, 141.677, 78.1744, 4.04916, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176604, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4937.17, 135.552, 58.8648, 2.28638, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176605, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4896.19, 9.41753, 45.8292, 5.09636, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176606, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4903.82, 4.06782, 47.4531, 5.21853, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176607, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4981.89, 86.1118, 72.5252, 6.24828, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176608, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4987, 80.5654, 74.754, 5.44543, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176609, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4944.55, -8.14334, 61.3484, 5.07891, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176610, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4982.4, -53.8619, 64.1409, 5.81195, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176611, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4975.52, -43.6748, 65.3105, 5.07891, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176612, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5123.87, -95.4256, 70.4362, 5.81195, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176613, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5135.72, -90.493, 72.455, 1.97222, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176614, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5142.74, -87.0043, 73.1662, 0.05236, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176615, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5161.98, 12.1751, 77.4035, 4.43314, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176616, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5258.51, 138.844, 54.2017, 0.942478, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176617, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5245.06, 129.028, 59.8252, 0.488692, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176618, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5252.51, 132.543, 56.275, 1.27409, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176619, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5333.77, 166.815, 43.5898, 2.23402, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176620, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5343.41, 173.447, 44.4003, 0.296706, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176621, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5221.65, 235.964, 74.9179, 3.33358, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176622, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5284.42, 234.689, 68.2582, 0.261799, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176623, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5246.1, 282.549, 72.3055, 1.37881, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176624, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5252, 288.327, 71.0116, 6.00393, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176625, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5229.26, 377.357, 74.0601, 4.99164, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176626, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5299.51, 372.631, 51.8185, 3.24631, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176627, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5290.22, 524.766, 36.1293, 2.25148, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176628, 22252, 530, 3520, 3966, 1, 1, 0, 0, -5158.79, 583.372, 81.0523, 5.97352, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176629, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5288.37, 539.563, 38.458, 4.11898, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176630, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5297.42, 646.378, 17.7336, 1.39626, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176631, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5284.85, 530.289, 38.64, 3.08923, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176632, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5291.48, 659.045, 25.7202, 4.15388, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176633, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5201.28, 603.825, 62.2221, 0.680678, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176634, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5289.17, 668.534, 25.4119, 3.35103, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176635, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5196.15, 613.094, 63.1971, 5.68977, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176636, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5225.55, 697.259, 53.4612, 1.5708, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176637, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5144.02, 788.289, 54.8045, 2.44346, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176638, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5142.46, 779.092, 52.7009, 1.93731, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176639, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5109.82, 717.647, 82.2025, 1.44862, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176640, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5117.74, 727.441, 78.1368, 0.488692, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176641, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5121.3, 738.126, 72.2984, 1.13446, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176642, 22252, 530, 3520, 3966, 1, 1, 0, 0, -5114.63, 663.123, 86.3679, 3.71755, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176643, 22252, 530, 3520, 3966, 1, 1, 0, 0, -5113.42, 651.332, 86.6668, 1.76278, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176644, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5078.14, 688.94, 86.6434, 0.139626, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176645, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4908.04, 696.783, 68.8598, 3.26377, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176646, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4920.51, 689.121, 66.4705, 1.50098, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176647, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5043.79, 691.119, 83.6567, 0.837758, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176648, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5000.48, 717.883, 81.6968, 2.53073, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176649, 22252, 530, 3520, 3759, 1, 1, 0, 0, -5039.71, 806.418, 54.0831, 3.92699, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176650, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4961.68, 773.47, 68.0888, 3.22886, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176651, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4991.5, 731.23, 82.3694, 1.55334, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176652, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4960.01, 789.078, 66.1966, 3.75246, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176653, 22252, 530, 3520, 3759, 1, 1, 0, 0, -4952.83, 782.694, 67.0416, 2.82743, 90, 0, 0, 3271, 0, 0, 0, 0, 0, 0),
(176654, 42978, 0, 4922, 5136, 1, 6, 0, 0, -3907.52, -6785, 9.99329, 3.41209, 90, 0, 0, 77306, 0, 0, 0, 0, 0, 0),
(176655, 43186, 0, 4922, 5136, 1, 6, 0, 0, -3930.88, -6790.49, 7.47716, 1.68731, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(176656, 43187, 0, 4922, 5136, 1, 2, 0, 0, -3981.14, -6576.58, 7.65103, 4.9171, 120, 0, 0, 148291, 0, 0, 0, 0, 0, 0),
(176657, 43188, 0, 4922, 5136, 1, 6, 0, 0, -3932.74, -6785.83, 6.77246, 0.387217, 300, 0, 0, 5647, 0, 0, 0, 0, 0, 0),
(176658, 43189, 0, 4922, 5136, 1, 4, 0, 0, -4088.04, -6417.57, 85.1695, 1.94307, 90, 0, 0, 322480, 1, 0, 0, 0, 0, 0),
(176659, 43189, 0, 4922, 5136, 1, 4, 0, 0, -4114, -6413.48, 37.7032, 0.016897, 90, 0, 0, 282594, 0, 0, 16777216, 0, 0, 0),
(176660, 43190, 0, 4922, 5136, 1, 2, 0, 0, -4072.64, -6385.99, 39.9989, 5.0727, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(176661, 43190, 0, 4922, 5136, 1, 2, 0, 43190, -3893.89, -6473.25, 15.3839, 2.59962, 300, 0, 0, 77306, 0, 0, 0, 0, 0, 0),
(176662, 43191, 0, 4922, 5136, 1, 2, 0, 0, -3894.66, -6470.96, 15.3839, 3.49781, 90, 0, 0, 43192, 0, 0, 0, 0, 0, 0),
(176663, 43192, 0, 4922, 5136, 1, 6, 0, 0, -3913.62, -6781.48, 9.67621, 3.66385, 300, 0, 0, 5808, 0, 0, 0, 0, 0, 0),
(176664, 43192, 0, 4922, 5136, 1, 6, 0, 0, -3943.87, -6793.67, 7.15983, 0.412304, 300, 0, 0, 5808, 0, 0, 0, 0, 0, 0),
(176665, 43192, 0, 4922, 5136, 1, 6, 0, 0, -3915.36, -6797.23, 8.94802, 1.67178, 300, 0, 0, 5808, 0, 0, 0, 0, 0, 0),
(176666, 43192, 0, 4922, 5136, 1, 6, 0, 0, -3922.21, -6789.96, 6.19283, 3.11189, 300, 0, 0, 5808, 0, 0, 0, 0, 0, 0),
(176667, 43193, 0, 4922, 5136, 1, 6, 0, 0, -3912.22, -6791.6, 9.34121, 1.68683, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(176668, 43243, 0, 4922, 5136, 1, 2, 0, 0, -4067.21, -6395.82, 38.6495, 3.60554, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(176669, 43386, 0, 4922, 5136, 1, 2, 0, 0, -4032.51, -6327.73, 37.8598, 5.06768, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176670, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3923.45, -6402.81, 28.004, 2.53939, 90, 0, 0, 306790, 0, 0, 0, 0, 0, 0),
(176671, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3930.05, -6483.43, 14.4149, 3.65289, 90, 0, 0, 306790, 0, 0, 0, 0, 0, 0),
(176672, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3963.42, -6545.32, 13.0729, 1.58297, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176673, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3952.61, -6541.47, 13.9216, 2.56978, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176674, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3904.45, -6488.75, 16.3641, 4.18398, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176675, 43386, 0, 4922, 5136, 1, 2, 0, 0, -4061.85, -6478.5, 39.3651, 2.26374, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176676, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3886.85, -6364.62, 28.9791, 3.87015, 90, 0, 0, 306790, 0, 0, 0, 0, 0, 0),
(176677, 43386, 0, 4922, 5136, 1, 2, 0, 0, -3878.8, -6377.28, 28.9791, 3.17769, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176678, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4035.07, -6329.47, 37.6772, 2.62135, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176679, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3969.47, -6454.13, 20.2139, 6.25279, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(176680, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4011.11, -6557.19, 11.4353, 3.77178, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176681, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3955.44, -6297.13, 29.6661, 0.058956, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176682, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3939.69, -6321.23, 29.6667, 1.5159, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176683, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3992.46, -6303.48, 29.785, 3.43774, 90, 0, 0, 69606, 0, 0, 0, 524288, 0, 0),
(176684, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4085.88, -6298.16, 4.97449, 4.31193, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176685, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4119.38, -6295.96, 4.71369, 5.55347, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176686, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3930.93, -6410.81, 27.9093, 6.00548, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176687, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3984.91, -6487.89, 15.858, 1.81742, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176688, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3919.26, -6457.77, 16.1413, 1.26765, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176689, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4017.17, -6396.12, 37.2619, 5.86006, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176690, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3930.48, -6408.85, 27.8845, 4.56407, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176691, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3995.15, -6507.12, 14.4075, 2.54735, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176692, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4062.92, -6514.2, 14.6583, 3.47564, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176693, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3975.8, -6480.36, 15.7959, 3.26991, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176694, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3939.35, -6446.13, 17.0715, 0.0743014, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176695, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3888.72, -6381.03, 28.0056, 4.83709, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176696, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3946.96, -6534.42, 14.2352, 5.83224, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176697, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4055.08, -6511.01, 14.33, 1.9234, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176698, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4079.81, -6479.47, 39.4616, 3.97983, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176699, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4123.99, -6473.18, 39.3377, 2.92107, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176700, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4105.85, -6445.89, 38.059, 2.16356, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176701, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3899.34, -6360.51, 28.979, 0.68296, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176702, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3926.25, -6272.16, 28.9795, 2.51447, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176703, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3926.57, -6287.89, 28.9784, 4.87938, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176704, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3866.02, -6361.51, 28.9794, 4.83423, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176705, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3951, -6531.35, 14.0761, 3.32866, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176706, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4054.31, -6396.47, 39.4551, 2.00987, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176707, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4047.22, -6394.26, 38.778, 1.92457, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176708, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4041.46, -6396.31, 38.3075, 1.21705, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176709, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4059.32, -6387.13, 37.8799, 5.23131, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176710, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4052.08, -6383.24, 38.8225, 5.16608, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176711, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4033.48, -6398.42, 38.3805, 1.49216, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176712, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3995.86, -6382.73, 37.9936, 2.84948, 90, 0, 0, 65146, 0, 0, 0, 524288, 0, 0),
(176713, 43387, 0, 4922, 5136, 1, 4, 0, 0, -3996.92, -6380.75, 37.9749, 2.84971, 90, 0, 0, 67218, 0, 0, 0, 0, 0, 0),
(176714, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4011.37, -6362.74, 37.4955, 4.11334, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176715, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4033.61, -6354.53, 37.3276, 0.657199, 90, 0, 0, 74675, 0, 0, 0, 524288, 0, 0),
(176716, 43387, 0, 4922, 5136, 1, 4, 0, 0, -4032.06, -6353.13, 37.3667, 0.444634, 90, 0, 0, 49925, 0, 0, 0, 524288, 0, 0),
(176717, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4024.66, -6401, 38.2983, 3.09907, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176718, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4042.76, -6375.73, 37.8923, 0.392838, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176719, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4039.74, -6368.57, 37.8043, 5.95151, 90, 0, 0, 72191, 0, 0, 0, 0, 0, 0),
(176720, 43387, 0, 4922, 5136, 1, 8, 0, 0, -4018.75, -6362.85, 37.7547, 1.70211, 90, 0, 0, 74675, 0, 0, 0, 0, 0, 0),
(176721, 43389, 0, 4922, 5136, 1, 2, 0, 0, -4015.77, -6317.8, 39.3008, 4.91715, 300, 0, 0, 5808, 0, 0, 0, 0, 0, 0),
(176722, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4020.46, -6346.32, 37.8698, 5.11786, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176723, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4063.89, -6388.8, 37.8814, 0.310525, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176724, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4060.27, -6398.87, 38.0405, 0.586699, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176725, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4028.12, -6409.32, 40.1109, 0.435293, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176726, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -3893.42, -6508.64, 9.8719, 5.78886, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176727, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -3900.44, -6518.06, 9.24077, 5.62829, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176728, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -3975.22, -6554.75, 10.8564, 4.87885, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176729, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4041.06, -6514.47, 14.7169, 5.79715, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176730, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -3997.23, -6511.74, 14.2959, 5.31632, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176731, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4012.24, -6268.85, 21.0994, 5.94839, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176732, 43390, 0, 4922, 5136, 1, 2, 0, 43390, -4090.88, -6267.12, 26.8229, 1.55191, 90, 0, 0, 3, 0, 0, 0, 0, 0, 0),
(176733, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3973.24, -6450.37, 21.3358, 0.14066, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176734, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3958.62, -6505.58, 16.6247, 2.89427, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176735, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3996.53, -6262.3, 29.3757, 3.67782, 90, 0, 0, 34586, 3701, 0, 0, 557056, 0, 0),
(176736, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3985.39, -6320.76, 29.7844, 0.754053, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176737, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3956.44, -6285.38, 51.767, 3.86268, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176738, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3988.8, -6383.19, 36.8969, 0.0267768, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176739, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3976.3, -6483.5, 15.9188, 5.72484, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176740, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3924.01, -6522.52, 31.3074, 6.05111, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176741, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3952.89, -6408.02, 28.6399, 3.59248, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176742, 43394, 0, 4922, 5136, 1, 4, 0, 0, -3985.08, -6332.5, 31.7838, 4.8261, 90, 0, 0, 70946, 8726, 0, 0, 0, 0, 0),
(176743, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -4101.28, -6276.87, 20.32, 3.24067, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176744, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -4107.04, -6366.22, 37.9731, 0.638173, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176745, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3994.76, -6418.88, 40.1236, 6.18374, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176746, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -4022.9, -6479.98, 38.6491, 5.01459, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176747, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3943.89, -6511.68, 37.833, 2.29405, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176748, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -4096.02, -6498.51, 62.7032, 6.23392, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176749, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3912.47, -6418.78, 28.1042, 2.45048, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176750, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3956.03, -6506.15, 16.789, 3.96674, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176751, 43394, 0, 4922, 5136, 1, 4, 0, 43394, -3934.33, -6374.57, 27.2931, 4.52648, 90, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(176752, 43398, 0, 4922, 5136, 1, 1, 0, 0, -4011.54, -6327.58, 39.3097, 4.23221, 300, 0, 0, 5808, 0, 0, 0, 0, 0, 0),
(176753, 43421, 0, 4922, 5136, 1, 1, 0, 0, -4025.34, -6512.47, 15.7471, 6.16092, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(176754, 43421, 0, 4922, 5136, 1, 2, 0, 0, -4008.22, -6319.74, 39.3696, 4.54081, 300, 0, 0, 306790, 0, 0, 0, 0, 0, 0),
(176755, 43421, 0, 4922, 5136, 1, 2, 0, 0, -4050.62, -6531.25, 15.4337, 3.13683, 300, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(176756, 43421, 0, 4922, 5136, 1, 2, 0, 0, -4043.18, -6530.04, 15.2588, 0.482407, 300, 0, 0, 306790, 0, 0, 0, 0, 0, 0),
(176757, 43482, 0, 4922, 5136, 1, 1, 0, 0, -3947.37, -6502.85, 15.9417, 5.00773, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(176758, 43482, 0, 4922, 5136, 1, 2, 0, 43482, -3978.82, -6574.34, 8.64207, 1.62983, 300, 0, 0, 139450, 0, 0, 0, 0, 0, 0),
(176759, 43482, 0, 4922, 5136, 1, 2, 0, 43482, -3984.69, -6574.45, 7.97798, 4.8672, 300, 0, 0, 139450, 0, 0, 0, 0, 0, 0),
(176760, 43482, 0, 4922, 5136, 1, 6, 0, 43482, -3947.65, -6788.51, 7.4385, 0.245848, 90, 0, 0, 139450, 0, 0, 0, 0, 0, 0),
(176761, 43482, 0, 4922, 5136, 1, 6, 0, 43482, -3945.44, -6802.06, 7.07881, 0.516806, 90, 0, 0, 139450, 0, 0, 0, 0, 0, 0),
(176762, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3942.14, -6452.95, 16.9087, 5.14506, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(176763, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3949.66, -6438.09, 16.5962, 5.1804, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(176764, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3953.89, -6418.94, 25.5224, 1.07277, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(176765, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3972.2, -6435.65, 20.7774, 4.67225, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(176766, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3971.23, -6411.3, 23.1304, 4.67225, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(176767, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3961.12, -6389.13, 27.7654, 3.97482, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(176768, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3911.18, -6333.21, 27.5244, 0.451979, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(36803, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3956.43, -6369.57, 28.3944, 0.865952, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20137, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3916.12, -6323.44, 27.7787, 0.492125, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(65091, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3956.04, -6326.03, 27.652, 5.23616, 90, 0, 0, 62171, 0, 0, 0, 557056, 0, 0),
(20136, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3965.43, -6309.78, 28.0149, 5.23616, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(1474 , 43575, 0, 4922, 5136, 1, 4, 0, 0, -3973.62, -6293.41, 27.2328, 5.07516, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(29729, 43575, 0, 4922, 5136, 1, 4, 0, 0, -4011.24, -6280.6, 21.9785, 1.11282, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(63965, 43575, 0, 4922, 5136, 1, 4, 0, 0, -4000.65, -6270.62, 24.905, 4.1641, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(20132, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3987.75, -6277.87, 27.4684, 4.19944, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(20134, 43575, 0, 4922, 5136, 1, 4, 0, 0, -3939.03, -6467.81, 14.4505, 4.67775, 90, 0, 0, 70946, 1, 0, 0, 0, 0, 0),
(20138, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4025.85, -6402.61, 38.5002, 2.82728, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20188, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4032.83, -6389.06, 37.8823, 4.6939, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20189, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4041.49, -6375.34, 37.8802, 2.62499, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20190, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4049.19, -6361.28, 38.5562, 4.55031, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20192, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4014.43, -6381.24, 37.3269, 6.11587, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(9690, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3963.35, -6352.56, 27.9447, 1.55022, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(33, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3958.33, -6339.06, 27.3141, 3.93084, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(38695, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3999.81, -6270.01, 25.304, 1.84522, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(38699, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4061.25, -6262.46, 4.35274, 0.701898, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20218, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4048.57, -6267.09, 5.72936, 5.97506, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20139, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4034.54, -6454.8, 38.5609, 4.27624, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20140, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4045.95, -6459.6, 38.4203, 5.73141, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20141, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4097.27, -6471.59, 38.0801, 3.39813, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20142, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4107.94, -6461.66, 38.6592, 4.36656, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20143, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4109.63, -6471.61, 39.0616, 0.983678, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20144, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3908.35, -6322.19, 27.5485, 2.69859, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20145, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3909.04, -6311.54, 28.0022, 4.60284, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20146, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3899.69, -6327.71, 27.7601, 3.7749, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20147, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3905.31, -6338.44, 28.4315, 1.833, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20193, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3962.53, -6373.84, 30.0779, 0.196318, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20194, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4022.36, -6519.23, 14.394, 2.88709, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20195, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4033.82, -6523.2, 15.2155, 1.50457, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20196, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3987.91, -6493.78, 15.9963, 1.7326, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20197, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4019.49, -6378.69, 37.0979, 3.09056, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20198, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4082.66, -6372.75, 38.6931, 5.5732, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20199, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4077.15, -6369.73, 38.9816, 4.37311, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20200, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4115.03, -6364.11, 40.311, 4.1923, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20201, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4110.78, -6377.76, 39.5537, 1.5202, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20229, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3934.29, -6358.31, 29.9868, 3.12651, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20230, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3968.08, -6517.05, 13.969, 0.528323, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20231, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3903.4, -6508.53, 11.3518, 3.12775, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20232, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4087.37, -6416.59, 38.6489, 1.51092, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20233, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -4013.85, -6529.75, 13.8007, 1.32987, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20234, 43575, 0, 4922, 5136, 1, 4, 0, 43575, -3990.24, -6526.47, 13.9609, 0.944057, 90, 0, 0, 62171, 0, 0, 0, 0, 0, 0),
(20235, 43576, 0, 4922, 5136, 1, 4, 0, 0, -3896.49, -6471.4, 15.3826, 5.87466, 90, 0, 0, 124036, 0, 0, 0, 0, 0, 0),
(20246, 43577, 0, 4922, 5136, 1, 2, 0, 43577, -4032.8, -6405.42, 39.9394, 4.19803, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(124, 43578, 0, 4922, 5136, 1, 4, 0, 0, -3941.98, -6445.14, 17.2104, 3.28222, 90, 0, 0, 2904, 0, 0, 0, 0, 0, 0),
(126, 43578, 0, 4922, 5136, 1, 4, 0, 0, -3974.43, -6482.63, 16.024, 5.81621, 90, 0, 0, 2824, 0, 0, 0, 0, 0, 0),
(64364, 43578, 0, 4922, 5136, 1, 4, 0, 0, -3951.74, -6536.13, 14, 2.48567, 90, 0, 0, 2824, 0, 0, 0, 0, 0, 0),
(64365, 43578, 0, 4922, 5136, 1, 4, 0, 0, -4055.22, -6512.99, 14.3165, 2.63993, 90, 0, 0, 2824, 0, 0, 0, 0, 0, 0),
(134, 43578, 0, 4922, 5136, 1, 4, 0, 0, -4020.16, -6510.85, 15.7129, 1.38386, 90, 0, 0, 2824, 0, 0, 0, 0, 0, 0),
(29666, 43578, 0, 4922, 5136, 1, 4, 0, 0, -3903.47, -6496.55, 16.7457, 4.11565, 90, 0, 0, 2824, 0, 0, 0, 0, 0, 0),
(29667, 43578, 0, 4922, 5136, 1, 4, 0, 0, -4019.94, -6330.01, 39.4285, 5.21613, 90, 0, 0, 2904, 0, 0, 0, 0, 0, 0),
(153, 43578, 0, 4922, 5136, 1, 8, 0, 0, -4014.36, -6392.37, 37.5034, 4.38883, 90, 0, 0, 2904, 0, 0, 0, 0, 0, 0),
(155, 43578, 0, 4922, 5136, 1, 8, 0, 0, -4008, -6369.79, 37.1358, 3.60981, 90, 0, 0, 2824, 0, 0, 0, 0, 0, 0),
(179, 43579, 0, 4922, 5136, 1, 1, 0, 0, -3953.81, -6538.87, 14.9775, 3.21113, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(229, 43579, 0, 4922, 5136, 1, 1, 0, 0, -3935.63, -6529.74, 14.4214, 1.65408, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(64330, 43579, 0, 4922, 5136, 1, 1, 0, 0, -3915.45, -6568.92, 14.4912, 5.26495, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(38607, 43580, 0, 4922, 5136, 1, 4, 0, 0, -3896.16, -6474.43, 15.3826, 0.84593, 90, 0, 0, 13403700, 0, 0, 0, 0, 0, 0),
(102, 43581, 0, 4922, 5136, 1, 4, 0, 0, -3894.3, -6472.36, 15.3824, 3.09226, 90, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(122, 43626, 0, 4922, 5136, 1, 1, 0, 0, -4075.27, -6402.37, 39.6542, 3.59943, 90, 0, 0, 488075, 0, 0, 0, 0, 0, 0),
(123, 43678, 0, 4922, 5136, 1, 1, 0, 0, -3912.27, -6329.26, 27.2911, 0.5403, 120, 0, 0, 2773328, 0, 0, 0, 0, 0, 0),
(156, 43678, 0, 4922, 5136, 1, 4, 0, 43678, -4082.47, -6409.82, 39.998, 1.43502, 300, 0, 0, 117893, 0, 0, 0, 557056, 0, 0),
(20256, 43941, 0, 4922, 5136, 1, 1, 0, 0, -4056.13, -6361.97, 39.5757, 2.76471, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(20257, 43941, 0, 4922, 5136, 1, 2, 0, 0, -4050.98, -6363.92, 39.4117, 3.35763, 90, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(20258, 43941, 0, 4922, 5136, 1, 1, 0, 0, -4102.84, -6483.82, 39.5001, 5.20337, 90, 0, 0, 306790, 0, 0, 0, 0, 0, 0),
(20259, 43943, 0, 4922, 5136, 1, 8, 0, 0, -4024.05, -6379.94, 37.2431, 3.49907, 300, 0, 0, 740172, 0, 0, 0, 0, 0, 0),
(20260, 43962, 0, 4922, 5136, 1, 8, 0, 43962, -4028.55, -6381.37, 37.3407, 0.328161, 300, 0, 0, 387450, 0, 0, 0, 0, 0, 0),
(20261, 43963, 0, 4922, 5136, 1, 8, 0, 0, -4023.97, -6376.42, 37.3798, 3.72108, 300, 0, 0, 64527, 0, 0, 0, 0, 0, 0),
(20262, 44002, 0, 4922, 5136, 1, 1, 0, 0, -4076.33, -6399.89, 39.6542, 3.59158, 90, 0, 0, 88984, 0, 0, 0, 0, 0, 0),
(20263, 44024, 0, 4922, 5136, 1, 1, 0, 0, -4063.83, -6342.88, 36.7018, 6.27417, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20264, 44024, 0, 4922, 5136, 1, 8, 0, 0, -4051.1, -6328.21, 38.1725, 1.48538, 300, 0, 0, 36843, 4363, 0, 0, 0, 0, 0),
(20265, 44026, 0, 4922, 5136, 1, 8, 0, 0, -4042.32, -6328.78, 44.5099, 3.2726, 300, 0, 0, 1, 4322, 0, 0, 0, 0, 0),
(20298, 44026, 0, 4922, 5136, 1, 8, 0, 0, -4046.14, -6320.2, 44.8526, 4.21094, 300, 0, 0, 1, 4322, 0, 0, 0, 0, 0),
(20299, 44026, 0, 4922, 5136, 1, 8, 0, 0, -4055.53, -6320.09, 44.883, 5.5808, 300, 0, 0, 1, 4322, 0, 0, 0, 0, 0),
(20306, 44026, 0, 4922, 5136, 1, 8, 0, 0, -4058.66, -6328.85, 44.8311, 6.25821, 300, 0, 0, 1, 4322, 0, 0, 0, 0, 0),
(20307, 44042, 0, 4922, 5136, 1, 8, 0, 0, -4029.48, -6351.94, 37.5785, 4.72179, 300, 0, 0, 296582, 0, 0, 0, 0, 0, 0),
(20308, 44169, 0, 4922, 5136, 1, 1, 0, 44169, -4083.03, -6406.03, 39.9976, 0.475182, 90, 0, 0, 77306, 0, 0, 0, 0, 0, 0),
(20309, 45987, 0, 4922, 5136, 1, 1, 0, 0, -3885.41, -6205.63, 25.4881, 1.99982, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20310, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3858.36, -6178.43, 23.593, 2.28649, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20311, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3840.12, -6163.52, 22.8489, 1.74614, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20312, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3777.03, -6195.35, 23.4314, 6.14594, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20313, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3807.9, -6206.19, 27.3093, 0.256241, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20314, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3835.2, -6212.18, 27.3221, 1.5066, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20315, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3835.65, -6228.31, 27.8368, 0.418034, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20316, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3852.35, -6243.35, 28.6186, 1.25213, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20317, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3847.32, -6263.45, 27.949, 0.930114, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20318, 45987, 0, 4922, 5479, 1, 1, 0, 0, -3859.66, -6269.32, 28.3162, 1.18537, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20319, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4212.94, -5083.61, 32.1803, 1.48936, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20320, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4204.99, -5073.18, 34.0794, 1.69591, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20321, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4220.31, -5060.99, 43.1826, 1.50585, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20322, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4216.66, -5040.11, 44.5745, 2.50016, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20323, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4207.05, -5029.14, 47.8041, 0.506821, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20324, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4242.85, -5051.22, 38.9913, 2.07919, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20325, 48391, 0, 4922, 5489, 1, 1, 0, 48391, -4255.98, -5073.71, 41.1326, 2.7829, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(20326, 48391, 0, 4922, 5136, 1, 1, 0, 48391, -4074.09, -6404.51, 39.6542, 3.55042, 90, 0, 0, 41922, 0, 0, 0, 0, 0, 0),
(20327, 48535, 0, 4922, 5479, 1, 2, 0, 0, -3730.65, -6162.89, 21.2174, 0.633668, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(20329, 48535, 0, 4922, 5479, 1, 2, 0, 0, -3751.41, -6178.15, 21.9241, 0.633668, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(29668, 48535, 0, 4922, 5479, 1, 2, 0, 0, -3784.37, -6202.11, 23.3208, 0.692573, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(29682, 48535, 0, 4922, 5479, 1, 2, 0, 0, -3811.47, -6225.22, 26.2316, 0.865361, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(29683, 48535, 0, 4922, 5479, 1, 2, 0, 0, -3839.89, -6268.85, 27.6093, 1.046, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(29684, 48535, 0, 4922, 5136, 1, 2, 0, 0, -3875.7, -6307.65, 27.7067, 0.594398, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(64884, 48535, 0, 4922, 5136, 1, 1, 0, 0, -3915.7, -6508.29, 14.3619, 0.00927687, 90, 0, 0, 74675, 4258, 0, 0, 0, 0, 0),
(16111, 49498, 0, 4922, 5136, 1, 1, 0, 0, -4048.24, -6380.54, 38.3076, 0.321874, 90, 0, 0, 73791, 0, 0, 0, 0, 0, 0),
(233, 49506, 0, 4922, 5136, 1, 1, 0, 0, -4013.01, -6464.52, 41.3327, 1.23613, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(9493 , 49519, 0, 4922, 5136, 1, 1, 0, 49519, -4005.63, -6456.09, 40.9427, 1.77803, 90, 0, 0, 77306, 0, 0, 0, 0, 0, 0),
(29891, 49547, 0, 4922, 5136, 1, 1, 0, 49547, -3949.14, -6318.3, 29.648, 0.842206, 90, 0, 0, 58405, 0, 0, 0, 557056, 0, 0),
(63727, 49549, 0, 4922, 5136, 1, 1, 0, 0, -4011.51, -6502.09, 15.7468, 5.7529, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(64883, 49551, 0, 4922, 5136, 1, 1, 0, 0, -4048.17, -6527.24, 14.6944, 0.392613, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(104, 49554, 0, 4922, 5136, 1, 1, 0, 0, -4036.89, -6393.56, 38.0214, 0.807245, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(65420, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3957.53, -6371.24, 28.3259, 0.660704, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20158, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4077.09, -6396.84, 38.6499, 0.169375, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20159, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4034.3, -6398.82, 38.3508, 0.465501, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20160, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3924.7, -6324.05, 27.9797, 5.23972, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20161, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3914.37, -6341.96, 27.9812, 2.02052, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20162, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4057.11, -6261.86, 4.6935, 5.64912, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20163, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4104.24, -6469.02, 38.3233, 0.448501, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20164, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4057.93, -6398.11, 38.0501, 0.512105, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20212, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4057.31, -6329.71, 37.8005, 5.16538, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20213, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4038.25, -6460.16, 38.3791, 2.0193, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20214, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4002.06, -6265.59, 25.0543, 4.60528, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20215, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4087.4, -6421.63, 85.17, 2.08081, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20216, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4077.73, -6372.95, 58.6928, 4.52528, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(20217, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4095.58, -6404.16, 85.1687, 5.14142, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(40509, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3979.09, -6573.62, 8.84911, 1.59028, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(19664, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4027.54, -6517.93, 14.4095, 6.26966, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(51849, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4046.84, -6373.16, 37.9696, 0.494304, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(114, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3962.18, -6344.41, 28.5791, 6.05288, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(1461, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4080.56, -6390.53, 39.6547, 5.16961, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(1463, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3903.44, -6331.2, 27.7531, 0.503219, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(1464, 49562, 0, 4922, 5136, 1, 4, 0, 0, -3909.69, -6319.63, 27.7807, 0.420752, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(1482, 49562, 0, 4922, 5136, 1, 4, 0, 0, -4117.15, -6371.98, 38.2517, 0.538071, 90, 0, 0, 185671, 0, 0, 0, 0, 0, 0),
(1485, 49562, 0, 4922, 5136, 1, 4, 0, 49562, -3952.01, -6460.1, 14.4131, 4.60835, 90, 0, 0, 140556, 0, 0, 0, 0, 0, 0),
(9072, 49562, 0, 4922, 5136, 1, 4, 0, 49562, -3910.39, -6507.56, 12.1573, 5.66711, 90, 0, 0, 140556, 0, 0, 0, 0, 0, 0),
(9073, 49567, 0, 4922, 5136, 1, 2, 0, 49567, -4069.42, -6368.84, 39.0292, 2.22862, 90, 0, 0, 13067, 0, 0, 0, 0, 0, 0),
(9074, 49567, 0, 4922, 5136, 1, 2, 0, 49567, -3923.6, -6366.35, 29.4979, 0.364168, 90, 0, 0, 12632, 0, 0, 0, 0, 0, 0),
(10139, 49567, 0, 4922, 5136, 1, 2, 0, 49567, -3922.15, -6510.25, 14.4203, 4.33854, 90, 0, 0, 12632, 0, 0, 0, 0, 0, 0),
(16142, 49567, 0, 4922, 5136, 1, 1, 0, 0, -4004.64, -6496.51, 15.7312, 3.32538, 90, 0, 0, 13067, 0, 0, 0, 0, 0, 0),
(16143, 49569, 0, 4922, 5136, 1, 1, 0, 0, -4035.99, -6584.42, 14.2106, 4.5673, 90, 0, 0, 21, 0, 0, 0, 0, 0, 0),
(16144, 49569, 0, 4922, 5136, 1, 1, 0, 0, -3906.15, -6583.22, 14.1491, 5.22704, 90, 0, 0, 21, 0, 0, 0, 0, 0, 0),
(16145, 49571, 0, 4922, 5136, 1, 4, 0, 0, -3997.28, -6558.08, 11.1019, 2.24661, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(16146, 49571, 0, 4922, 5136, 1, 4, 0, 49571, -4009.52, -6381.82, 37.7617, 4.99047, 90, 0, 0, 1396991, 4322, 0, 0, 557056, 0, 0),
(16147, 49572, 0, 4922, 5136, 1, 1, 0, 0, -4021.51, -6363.64, 37.8463, 5.56144, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(16148, 50146, 0, 4922, 5136, 1, 1, 0, 0, -3893.14, -6486.7, 18.5146, 1.56699, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(16149, 50165, 0, 4922, 5136, 1, 1, 0, 0, -3890.83, -6484.8, 18.4753, 1.59097, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(16150, 50172, 0, 4922, 5136, 1, 2, 0, 0, -3916.8, -6406.28, 28.0047, 2.4332, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(16151, 50248, 0, 4922, 5136, 1, 1, 0, 0, -3890.34, -6473.32, 18.4459, 3.23954, 120, 0, 0, 73685, 0, 0, 0, 0, 0, 0),
(29248, 50375, 0, 4922, 5136, 1, 1, 0, 0, -4026.8, -6505.72, 15.7479, 5.92406, 120, 0, 0, 32379, 0, 0, 0, 0, 0, 0),
(64389, 50433, 0, 4922, 5136, 1, 1, 0, 0, -3914.65, -6402.63, 28.0041, 2.65349, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(64912, 50456, 0, 4922, 5136, 1, 1, 0, 0, -3917.34, -6397.73, 28.005, 4.37685, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(64915, 50457, 0, 4922, 5136, 0, 2, 0, 0, -3904, -6380, 27, 3, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1477, 50459, 0, 4922, 5136, 1, 1, 0, 0, -3912.93, -6464.97, 16.1409, 2.41955, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(1480, 50460, 0, 4922, 5136, 1, 1, 0, 50460, -3909.6, -6489.88, 16.4492, 3.76032, 90, 0, 0, 36843, 0, 0, 0, 0, 0, 0),
(38415, 50462, 0, 4922, 5136, 1, 1, 0, 0, -3895.91, -6472.49, 18.4616, 5.13365, 90, 0, 0, 46, 0, 0, 0, 0, 0, 0),
(38693, 70043, 0, 4922, 5136, 1, 8, 0, 0, -4041.56, -6387.14, 37.9046, 0.435299, 300, 0, 0, 1, 0, 0, 0, 33554432, 0, 0);


-- spell_area de las misiones ID 26622 26608 26549
DELETE FROM `spell_area` WHERE `spell`=115012 AND `area`=5136 AND `quest_start`=26622 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (115012, 5136, 26622, 0, 26830, 0, 0, 2, 1, 66, 11);
DELETE FROM `spell_area` WHERE `spell`=115011 AND `area`=5136 AND `quest_start`=26608 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (115011, 5136, 26608, 0, 26622, 0, 0, 2, 1, 64, 11);
DELETE FROM `spell_area` WHERE `spell`=49416 AND `area`=5136 AND `quest_start`=26549 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (49416, 5136, 26549, 0, 26622, 0, 0, 2, 1, 74, 11);
DELETE FROM `spell_area` WHERE `spell`=115010 AND `area`=5136 AND `quest_start`=0 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (115010, 5136, 0, 0, 26608, 0, 0, 2, 1, 1, 11);

-- corregidas las misiones locura y Negociaciones terminadas

DELETE FROM `creature_template` WHERE `entry`=43187;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (43187, 0, 0, 0, 0, 0, 33259, 0, 0, 0, 'Ornak', '', '', 11704, 82, 82, 3, 0, 29, 29, 3, 1, 1.14286, 1, 1.14286, 1, 0, 488, 642, 0, 782, 2, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 7.912, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=43238;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (43238, 0, 0, 0, 0, 0, 33283, 0, 0, 0, 'Horde Negotiator', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.94286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 536870912, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=43238;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43238, 0, 0, 0, 1, 0, '49414');

-- Textos para las creaturas
DELETE FROM `creature_text` WHERE `entry`=43238;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43238, 0, 0, 'I am ready, $N. Soon the Dragonmaw will join the Horde!', 12, 0, 100, 0, 2000, 0, 43275, ''),
(43238, 1, 0, 'I hear a great Dragonmaw medicine man lives here, in the large hut to our right.', 12, 0, 100, 0, 2000, 0, 43276, ''),
(43238, 2, 0, 'After these negotiations, I am looking forward to a long and prosperous life.', 12, 0, 100, 0, 2000, 0, 43279, ''),
(43238, 3, 0, 'The Dragonmaw Warchief is in the largest building up on the hilltop here. I\'m sure he\'ll be reasonable.', 12, 0, 100, 0, 2000, 0, 43280, ''),
(43238, 4, 0, 'This is it! Stay close and let me do the talking. I\'m an expert.', 12, 0, 100, 5, 2000, 0, 43281, ''),
(43238, 5, 0, 'Most esteemed Warchief -', 12, 0, 100, 1, 2000, 0, 43298, ''),
(43238, 6, 0, 'Warchief, you misunderstand. Garrosh Hellscream will have a beach head on these shores, with or without your help. What we ask -', 12, 0, 100, 1, 2000, 0, 43299, ''),
(43238, 7, 0, 'But the Horde has assembled an enormous host! A vast fleet of war machines and hardened veterans. Hellscream would as soon crush you as-', 12, 0, 100, 6, 2000, 0, 43301, ''),
(43238, 8, 0, 'This is madness!', 12, 0, 100, 5, 2000, 0, 21954, '');


DELETE FROM `creature_text` WHERE `entry`=43187;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43187, 0, 0, 'Ornak orders a boat to push off for the fleet.', 16, 0, 100, 0, 0, 0, 0, '');

-- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=43187 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43187, 0, 0, 0, 62, 0, 100, 0, 11704, 0, 0, 0, 80, 4318700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=4318700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4318700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4318700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 89147, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4318700, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3931.16, -6783.06, 6.75008, 5.01134, '');

-- Script AI

DELETE FROM `smart_scripts` WHERE `entryorguid`=43238 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43238, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4323800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43238, 0, 1, 0, 38, 0, 100, 1, 0, 1, 0, 0, 80, 4323801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43238, 0, 2, 0, 40, 0, 100, 0, 7, 0, 0, 0, 80, 4323802, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43238, 0, 3, 0, 8, 0, 100, 0, 80930, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (4323800,4323801,4323802) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4323800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 80788, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(4323800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(4323800, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(4323800, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323800, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323800, 9, 5, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323801, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 80842, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(4323801, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 80858, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323801, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 80859, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323801, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323801, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 43238, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323802, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 3.19615, ''),
(4323802, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323802, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 43260, 30, 0, 0, 0, 0, 0, ''),
(4323802, 9, 3, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323802, 9, 4, 0, 0, 0, 100, 0, 13000, 13000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323802, 9, 5, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323802, 9, 6, 0, 0, 0, 100, 0, 4500, 4500, 0, 0, 11, 59216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4323802, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Movimientos de la creatura

DELETE FROM `waypoints` WHERE `entry` =43238;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(43238, 1, -4068.45, -6396.07, 38.6506, ''),
(43238, 2, -4083.11, -6402.9, 38.649, ''),
(43238, 3, -4087.03, -6409.12, 38.6453, ''),
(43238, 4, -4088.02, -6420.9, 38.64, ''),
(43238, 5, -4093.38, -6424.95, 38.6468, ''),
(43238, 6, -4098.69, -6420.7, 38.5657, ''),
(43238, 7, -4104.86, -6413.62, 37.7039, '');


-- Datos de la creatura
DELETE FROM `creature_template` WHERE `entry`=43260;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (43260, 0, 0, 0, 0, 0, 33262, 0, 0, 0, 'Warchief Mor\'ghor', 'Leader of the Dragonmaw', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

-- Aura para la creatura
DELETE FROM `creature_template_addon` WHERE `entry`=43260;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43260, 0, 0, 0, 1, 0, '49414');

-- Textos de la creatura
DELETE FROM `creature_text` WHERE `entry`=43260;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43260, 0, 0, 'Quit wasting words, worm. If you want the aid of the Dragonmaw, you should\'ve come on bent knee and with offerings of gold.', 12, 0, 100, 25, 2000, 0, 43306, ''),
(43260, 1, 0, 'Was that a THREAT? I knew Hellscream in Outland. A whimpering whelp. He is no Warchief.', 12, 0, 100, 0, 2000, 0, 43307, ''),
(43260, 2, 0, 'Bring him on!', 12, 0, 100, 0, 2000, 0, 43308, ''),
(43260, 3, 0, 'This is...', 12, 0, 100, 0, 2000, 0, 43309, ''),
(43260, 4, 0, 'DRAGONMAW!!', 14, 0, 100, 0, 2000, 0, 43310, ''),
(43260, 5, 0, 'Keep the $c alive. He will be our bargaining chip.', 12, 0, 100, 25, 2000, 0, 0, ''),
(43260, 6, 0, 'Call for the others. We will crush Hellscream\'s Horde and hurl their bodies to the sea...', 12, 0, 100, 0, 2000, 0, 43312, '');

-- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=43260 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43260, 0, 0, 0, 38, 0, 100, 1, 0, 1, 0, 0, 80, 4326000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=4326000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4326000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 1, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 2, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, -4106.54, -6413.84, 37.7037, 0.174346, ''),
(4326000, 9, 4, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 80920, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 6, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 60, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 9, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 10, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 5, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 80959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 12, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 13, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 115009, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4326000, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 11, 43271, 20, 0, 0, 0, 0, 0, ''),
(4326000, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Datos de la creatura
DELETE FROM `creature_template` WHERE `entry`=43243;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(43243, 0, 0, 0, 0, 0, 33283, 0, 0, 0, 'Horde Negotiator Quest Tracker', '', '', 0, 85, 85, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

-- Aura para la creatura
DELETE FROM `creature_template_addon` WHERE `entry`=43243;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43243, 0, 0, 0, 1, 0, '49414');

-- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=43243 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43243, 0, 0, 0, 10, 0, 100, 0, 1, 10, 1000, 2000, 45, 0, 1, 0, 0, 0, 0, 19, 43238, 9, 0, 0, 0, 0, 0, '');

-- Datos de la creatura
DELETE FROM `creature_template` WHERE `entry`=43189;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(43189, 0, 0, 0, 0, 0, 33262, 0, 0, 0, 'Warchief Mor\'ghor', 'Leader of the Dragonmaw', '', 0, 84, 84, 3, 0, 2315, 2315, 0, 1, 1.14286, 1, 1.14286, 1, 1, 519, 693, 0, 815, 4.6, 2000, 2000, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 384, 546, 157, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 536870912, '', 13623);

-- Textos para la creatura
DELETE FROM `creature_text` WHERE `entry`=43189;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43189, 0, 0, 'This pathetic revolution ends here!', 12, 0, 100, 0, 0, 0, 43761, ''),
(43189, 1, 0, 'Rghaaaa! Face the fury of Mor\'ghor!', 14, 0, 100, 0, 0, 0, 44121, ''),
(43189, 2, 0, 'Zaela ... treacherous fool ... have you sold your soul to the Horde? Are you and I so different? Cast your lot with Hellscream, then. See where he takes you.', 12, 0, 100, 0, 0, 0, 0, '');

-- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=43189 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43189, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 80, 4318900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43189, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 12000, 15000, 11, 82032, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43189, 0, 2, 0, 0, 0, 100, 0, 20000, 25000, 30000, 45000, 11, 82033, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43189, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 43627, 20, 0, 0, 0, 0, 0, ''),
(43189, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 43629, 20, 0, 0, 0, 0, 0, ''),
(43189, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 43962, 60, 0, 0, 0, 0, 0, ''),
(43189, 0, 6, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43189, 0, 7, 0, 7, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 43962, 40, 0, 0, 0, 0, 0, '');

-- Script AI 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=4318900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4318900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4318900, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 82273, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Datos de la creatura 
DELETE FROM `creature_template` WHERE `entry`=42978;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(42978, 0, 0, 0, 0, 0, 33260, 0, 0, 0, 'Admiral Stonefist', '', '', 0, 85, 85, 3, 0, 29, 29, 7, 1, 1.14286, 1, 1.35714, 1, 0, 530, 713, 0, 827, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);

-- -- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=42978 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(42978, 0, 0, 0, 20, 0, 100, 0, 26608, 0, 0, 0, 80, 4297800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=4297800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4297800, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4297800, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 43193, 20, 0, 0, 0, 0, 0, '');

-- Textos de la creatura
DELETE FROM `creature_text` WHERE `entry`=42978;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(42978, 0, 0, 'What do we do now? Surely the Warchief would want us to storm the port in force!', 12, 0, 100, 5, 2000, 0, 43542, '');

-- Elimina el reporte de las mision
DELETE FROM `report_quest` WHERE id IN (26608,26608,26549);

-- Datos de la mision ID 26608
DELETE FROM `quest_template` WHERE `Id`=26608;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(26608, 2, NULL, 'Untested', 84, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26549, 0, 0, 0, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Negotiations Terminated', 'Return to Admiral Stonefist off the shore of Dragonmaw Hold in Twilight Highlands.', 'Go now, go back to your fleet. Tell them what kind of a monster claims authority over the Dragonmaw.$B$BOur "Warchief" is a traitor to his blood. Since his return from Outland he reeks of demon and leads what remains of our clan to ruin.$B$BHelp rid the Dragonmaw of Mor\'ghor, and those of us with pure blood will be your allies forever. This I can promise.', '', 'The Fel Orcs from Outland have laid claim to the Dragonmaw? Obscene!$B$BIf Hellscream knew what was happening here, he\'d raze their city to the ground...', '', 'Return to Admiral Stonefist off the shore of Dragonmaw Hold in Twilight Highlands.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Condiciones para el uso
DELETE FROM `conditions` WHERE `SourceEntry`=26608;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(20, 0, 26608, 0, 0, 8, 0, 26540, 0, 0, 0, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceGroup`=0 AND `SourceEntry`=26619;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 26619, 0, 0, 106, 0, 26540, 64, 0, 0, 0, 0, '', ''),
(19, 0, 26619, 0, 0, 106, 0, 26608, 64, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=43190;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 43190, 0, 0, 28, 0, 26549, 0, 0, 0, 0, 0, '', '');

-- Textos de la creatura
DELETE FROM `creature_text` WHERE entry=43190;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43190, 0, 0, 'Gregor, you coward! Orcs of pure blood are dying off our shores. If you doom them, you doom us all.', 12, 0, 100, 5, 2000, 0, 43239, ''),
(43190, 1, 0, 'Hurry, Gorthul. Undo his bonds.', 12, 0, 100, 1, 2000, 0, 0, ''),
(43190, 2, 0, '$N, I\'ve rescued your equipment for you. I think you\'ve seen all you need to see.', 12, 0, 100, 5, 2000, 0, 43464, ''),
(43190, 3, 0, 'Remember, $N. Not all Dragonmaw are your enemies!', 12, 0, 100, 1, 2000, 0, 43467, '');

-- Datos de la creatura
DELETE FROM `creature_template` WHERE `entry`=43191;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(43191, 0, 0, 0, 0, 0, 33264, 0, 0, 0, 'Gregor', 'Dragonmaw Medicine Man', '', 11707, 82, 82, 3, 0, 2305, 2305, 3, 1, 1.14286, 1, 1.14286, 1, 0, 488, 642, 0, 782, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

-- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=43191 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43191, 0, 0, 0, 62, 0, 100, 0, 11707, 0, 0, 0, 80, 4319100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=4319100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4319100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4319100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4319100, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 43190, 20, 0, 0, 0, 0, 0, ''),
(4319100, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4319100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 43212, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4319100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Datos de la creatura
DELETE FROM `creature_template` WHERE `entry`=43190;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(43190, 0, 0, 0, 0, 0, 33263, 0, 0, 0, 'Zaela', '', '', 0, 85, 85, 3, 0, 2305, 2305, 3, 1, 1.14286, 1, 1.35714, 1, 0, 530, 713, 0, 827, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 43190, 0, 0, '', 13623);

-- Script AI
DELETE FROM `smart_scripts` WHERE `entryorguid`=43190 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43190, 0, 0, 0, 10, 0, 100, 0, 1, 7, 2000, 20000, 80, 4319000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(43190, 0, 1, 0, 19, 0, 100, 0, 26608, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2
DELETE FROM `smart_scripts` WHERE `entryorguid`=4319000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4319000, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4319000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4319000, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4319000, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.42062, '');


DELETE FROM `quest_template` WHERE `Id`=26549;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(26549, 2, NULL, 'Untested', 84, 84, 0, 4922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26539, 0, 0, 26608, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 80786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Madness', 'Escort the Horde Negotiator to the main hall in Dragonmaw Port to meet with Warchief Mor\'ghor of the Dragonmaw. Speak with Ornak on the coast if you lose your Negotiator.', 'Our last two negotiators haven\'t returned from speaking with the Dragonmaw Warchief. I think we might need to flex a little bit of muscle.$B$BThis time, I want YOU to accompany the negotiator. Their Warchief might think twice once he realizes the Horde is full of battle-hardened heroes like yourself.$B$BSimply escort our negotiator into the main hold in the center of Dragonmaw Port and look menacing. ', '', 'Wake up, $N! We don\'t have much time.$B$BI rescued your gear for you.$B$BAt least now you\'ve seen the foolishness of our leader first-hand. His blood is contaminated, his rage is unquenchable -- and he\'ll destroy us all trying to defeat the Horde!', '$N, I understand you\'re going to speak with our "Warchief" about joining your Horde.$B$BBe careful, $c.$B$BSee me afterwards... ', 'Speak with Zaela at Dragonmaw Port in Twilight Highlands.', 43243, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Negotiations Concluded', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `phase_definitions` WHERE `zoneId`=4922 AND `entry`=0 AND `phasemask`=0 AND `phaseId`=0 AND `originmap`=0 AND `terrainswapmap`=736 AND `worldMapAreaSwap`=0 AND `flags`=0 AND `comment`='Dragonmaw Port default';
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `worldMapAreaSwap`, `flags`, `comment`) VALUES (4922, 0, 0, 0, 0, 736, 0, 0, 'Dragonmaw Port default');


DELETE FROM `spell_dbc` WHERE `Id`=115009;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(115009, 2147483647, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spelleffect_dbc` WHERE `Id`=155966;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155966, 140, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 40334, 0, 0, 0, 0, 0, 0, 0, 0, 81153, 92, 0, 115009, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=43271;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43271, 0, 0, 0, 1, 0, '49414');


DELETE FROM `creature_template` WHERE `entry`=43271;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(43271, 0, 0, 0, 0, 0, 33296, 0, 0, 0, 'Dragonmaw Felblade', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 43271, 0, 0, '', 13623);

-- elmimina los scripts AI basura
DELETE FROM `smart_scripts` WHERE `entryorguid`=4358100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=43581 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=43271 AND `source_type`=0;

DELETE FROM `spell_target_position` WHERE `id`=81153;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(81153, 0, -3888.62, -6476.96, 15.3843, 2.40019);

DELETE FROM `spell_dbc` WHERE `Id`=75193;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(75193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spelleffect_dbc` WHERE `Id`=155995;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155995, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40334, 0, 0, 10, 0, 0, 0, 0, 0, 0, 22, 8, 75193, 0);


DELETE FROM `spell_target_position` WHERE `id`=80842;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (80842, 0, -4113.7, -6416.2, 37.7056, 0.325957);
DELETE FROM `spell_target_position` WHERE `id`=80858;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (80858, 0, -4114.46, -6413.51, 37.7041, 0.270761);
DELETE FROM `spell_target_position` WHERE `id`=80859;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (80859, 0, -4113.07, -6418.98, 37.7041, 0.401225);
DELETE FROM `spell_target_position` WHERE `id`=80914;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (80914, 0, -11984, -1622, 34.18, 4.45);
DELETE FROM `spell_target_position` WHERE `id`=81153;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (81153, 0, -3888.62, -6476.96, 15.3843, 2.40019);

DELETE FROM `creature_text` WHERE `entry`=43193;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43193, 0, 0, 'Perhaps. And perhaps we would win, but at what cost? Maybe $N has a better plan...', 12, 0, 100, 1, 2000, 0, 43543, '');

DELETE FROM `creature_template` WHERE `entry`=43193;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(43193, 0, 0, 0, 0, 0, 32985, 0, 0, 0, 'Warlord Krogg', '', '', 0, 85, 85, 3, 0, 29, 29, 7, 1, 1.14286, 1, 1.35714, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);

-- Script AI

DELETE FROM `smart_scripts` WHERE `entryorguid`=43193 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43193, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, '');

-- Corregida la mision Colmillosauro estará complacido

DELETE FROM `creature_template` WHERE `entry`=44024;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44024, 0, 0, 0, 0, 0, 33628, 0, 0, 0, 'Artesh', '', '', 0, 84, 84, 3, 0, 2305, 2305, 3, 1, 1.14286, 1, 1.35714, 1, 0, 519, 693, 0, 815, 1, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 384, 546, 157, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.1, 1.00949, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=44024;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(44024, 0, 0, 'Step on through, $N.', 12, 0, 100, 0, 0, 0, 0, '');

-- Script AI

DELETE FROM `smart_scripts` WHERE `entryorguid`=44024 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44024, 0, 0, 1, 19, 0, 100, 0, 26798, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(44024, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 85322, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(44024, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 44050, 2, 15000, 0, 0, 0, 8, 0, 0, 0, -4050.48, -6323.49, 38.1725, 5.22366, '');

DELETE FROM `gameobject` WHERE guid=996856;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(996856, 204917, 0, 4922, 5136, 1, 8, -4050.49, -6323.4, 38.1734, 5.22231, 0, 0, 0.505911, -0.862586, 300, 0, 1);


DELETE FROM `gameobject_template` WHERE `entry`=204917;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(204917, 5, 4713, 'Dragonmaw Portal', '', '', '', 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `conditions` WHERE `SourceEntry`=44024;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 44024, 0, 0, 29, 0, 44050, 10, 0, 1, 0, 0, '', '');

DELETE FROM `creature_template` WHERE `entry`=44050;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44050, 0, 0, 0, 0, 0, 328, 21072, 0, 0, 'Dragonmaw Portal to Orgrimmar', '', '', 0, 1, 1, 0, 0, 190, 190, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=44050;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(44050, 0, 0, 0, 0, 0, '82454');

-- Script AI

DELETE FROM `smart_scripts` WHERE `entryorguid`=44050 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44050, 0, 0, 0, 10, 0, 100, 0, 1, 2, 1000, 8000, 85, 82450, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Condicion de uso

DELETE FROM `conditions` WHERE `SourceEntry`=82450;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 82450, 0, 0, 28, 0, 26798, 0, 0, 0, 0, 0, '', '');

-- spell target posicion
DELETE FROM `spell_target_position` WHERE `id`=82450;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(82450, 1, 2058.67, -4378.97, 98.9348, 2.96781);


DELETE FROM `creature_template` WHERE `entry`=44026;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44026, 0, 0, 0, 0, 0, 33436, 33437, 0, 0, 'Dragonmaw Shaman', '', '', 0, 84, 84, 3, 0, 2305, 2305, 0, 1, 1.14286, 1, 1.35714, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 875, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=44026;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(44026, 0, 0, 0, 0, 474, NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid`=44026 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44026, 0, 0, 0, 1, 0, 100, 0, 3000, 10000, 8000, 15000, 11, 25046, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Condicion de uso

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=44160 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=26830 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 44160, 0, 0, 0, 9, 0, 26830, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceGroup`=4922 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=26830 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(25, 4922, 0, 0, 0, 8, 0, 26830, 0, 0, 1, 0, 0, '', 'if 26830 not rewarded');

-- Corrige la mision Cebo para traidores

DELETE FROM `quest_template` WHERE `Id`=26830;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(26830, 2, NULL, 'Untested', 84, 84, 0, 1637, 0, 0, 0, 0, 946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26798, 0, 0, 26840, 5, 90000, 331200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 2, 0, 0, 0, 0, 0, 0, 0, 32981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63916, 63915, 63914, 63913, 63912, 0, 1, 1, 1, 1, 1, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Traitor\'s Bait', 'Question Orgrimmar Skyway Peons around the Zeppelin Towers. Look for any Suspicious Peons. Try to flush out Sauranok the Mystic and kill him.', 'I haven\'t given up my search for the Twilight\'s Hammer agents that lurk here in Orgrimmar. I need someone I can trust to collect the final evidence of treachery.$B$B<Hellscream pulls you aside.>$B$BSauranok the Mystic - my own most trusted advisor! - is under suspicion. Uncover the truth, $N, and you\'ll be rewarded.$B$BI understand Twilight\'s Hammer has infiltrated workers at the airship docks, to spread their lies all over the continent. Question them. If you discover Sauranok\'s guilt... Kill him.', '', 'Sauranok, Sauranok. His own visions worked against him. Twilight\'s Hammer probably corrupted him from afar. Bah! Weak! We\'ll speak his name no more.$B$BI told him you were investigating the airship docks, $N. To flush him out. Yes, I used you as bait. You served your Horde well, and deserve a reward for outing this viper from our midst.', 'It is good to see you, $c. How goes the search?', 'Return to Garrosh Hellscream in Orgrimmar.', 44132, 44120, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sauranok\'s Guilt Revealed', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk to the Skyway Peons and find evidence of Sauranok\'s treachery. Then kill him.', 'Sauranok the Mystic', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `spell_area` WHERE `spell`=49416 AND `area`=1637 AND `quest_start`=26798 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(49416, 1637, 26798, 0, 26830, 0, 0, 2, 1, 64, 11);
DELETE FROM `spell_area` WHERE `spell`=115012 AND `area`=5136 AND `quest_start`=26622 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115012, 5136, 26622, 0, 26830, 0, 0, 2, 1, 66, 11);

DELETE FROM `creature_template` WHERE `entry`=44160;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44160, 0, 0, 0, 0, 0, 33698, 33699, 33700, 33701, 'Suspicious Peon', '', '', 11804, 8, 9, 0, 0, 29, 29, 1, 1, 1.14286, 1, 1.14286, 1, 0, 11, 15, 0, 40, 1, 2000, 2000, 1, 0, 2048, 2048, 0, 0, 0, 0, 0, 8, 11, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 13, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=44160;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(44160, 0, 0, 0, 0, 0, '49414');

DELETE FROM `creature_text` WHERE `entry`=44160 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(44160, 0, 0, 'Wait, uh - you put words in my mouth! Not fair!', 12, 0, 100, 5, 0, 0, 44454, '');

-- Menus de la creatura
DELETE FROM `gossip_menu_option` WHERE `menu_id`=44160 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(44160, 0, 0, 'Has a secret cult infiltrated the Orgrimmar skyway?', 1, 1, 0, 0, 0, 0, NULL, 44455, NULL);


DELETE FROM `smart_scripts` WHERE `entryorguid`=44160 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44160, 0, 0, 0, 62, 0, 100, 0, 11807, 0, 0, 0, 80, 4416000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4416000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4416000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4416000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4416000, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 44132, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, ''),
(4416000, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 12, 44120, 3, 300000, 0, 0, 0, 8, 0, 0, 0, 1744.51, -4274.95, 101.817, 0.81764, ''),
(4416000, 9, 4, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 37, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Menus de la creatura
DELETE FROM `gossip_menu_option` WHERE `menu_id`=11804 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(11804, 0, 0, 'Has a secret cult infiltrated the Orgrimmar skyway?', 1, 1, 11805, 0, 0, 0, '', 44455, NULL);

DELETE FROM `gossip_menu` WHERE `entry`=11805 AND `text_id`=16555;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(11805, 16555);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11805 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(11805, 0, 0, 'I didn\'t say Twilight\'s hammer. YOU said Twilight\'s Hammer.', 1, 1, 11806, 0, 0, 0, '', NULL, NULL);

-- Texto del Npc
DELETE FROM `npc_text` WHERE `ID`=16555;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES 
(16555, 'Why ask me? I know nothing of the Twilight\'s Hammer.', '', 0, 0, 1, 6, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- Menus de las creatura
DELETE FROM `gossip_menu_option` WHERE `menu_id`=11806 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(11806, 0, 0, 'I know all about your cult master.', 1, 1, 11807, 0, 0, 0, '', 44457, NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11807 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(11807, 0, 0, 'So it\'s true? Sauranok IS guilty of treason!', 1, 1, 0, 0, 0, 0, '', 44458, NULL);


DELETE FROM `creature_template` WHERE `entry`=44120;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(44120, 0, 0, 0, 0, 0, 32981, 0, 0, 0, 'Sauranok the Mystic', '', '', 0, 84, 84, 3, 0, 2147, 2147, 0, 1, 1.14286, 1, 1.14286, 1, 0, 498, 684, 0, 797, 1, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 377, 539, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 44120, 0, 0, '', 14480);

-- elimina la creatura ID 44120

DELETE FROM `creature` WHERE id=44120;

-- Agrega el aura de cratura
DELETE FROM `creature_template_addon` WHERE `entry`=44120;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(44120, 0, 0, 0, 0, 0, '49414');

-- Textos de la creatura

DELETE FROM `creature_text` WHERE `entry`=44120;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(44120, 0, 0, 'Silence, idiot.', 12, 0, 100, 0, 0, 0, 44459, ''),
(44120, 1, 0, 'Hear anything interesting, $N? Your little revelation about me is about to cost you your life.', 12, 0, 100, 0, 0, 0, 44407, ''),
(44120, 2, 0, 'The Twilight\'s Hammer has agents everywhere! Kill me and a dozen take my place!', 12, 0, 100, 0, 0, 0, 44409, ''),
(44120, 3, 0, 'My powers of sight... I beheld the future... I have seen what is to come...', 12, 0, 100, 0, 0, 0, 44410, ''),
(44120, 4, 0, 'This world unravels. If you could see the horrors I have seen...', 12, 0, 100, 0, 0, 0, 0, ''),
(44120, 5, 0, 'To serve is madness, but defiance ... impossible!', 12, 0, 100, 0, 0, 0, 44412, '');

-- Script AI

DELETE FROM `smart_scripts` WHERE `entryorguid`=44120 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44120, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4412000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 2, 0, 2, 0, 100, 1, 80, 97, 0, 0, 1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 3, 0, 2, 0, 100, 1, 50, 77, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 4, 0, 2, 0, 100, 1, 30, 47, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 5, 0, 2, 0, 100, 1, 11, 29, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 6, 0, 2, 0, 100, 1, 2, 10, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 7, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 44120, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, ''),
(44120, 0, 8, 0, 0, 0, 100, 0, 15000, 20000, 20000, 25000, 11, 82531, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Script AI 2

DELETE FROM `smart_scripts` WHERE `entryorguid`=4412000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4412000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4412000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 82611, 0, 0, 0, 0, 0, 19, 44160, 50, 0, 0, 0, 0, 0, ''),
(4412000, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1747.28, -4272.07, 101.821, 0.875055, '');

-- Condicion de uso 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=3 AND `SourceEntry`=82611;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 3, 82611, 0, 0, 31, 0, 3, 44160, 0, 0, 0, 0, '', '');

-- Se agregaron nuevos guid para el evento de hallowen
DELETE FROM `game_event_gameobject` WHERE guid IN (2537,2261,11242711,28702,27272,27684,27356,27685,28744,32371,28763,28721,29212,29321,27151,27271,27275,9416,28700,32377,32378,32381,4729,4751,2948,4298,4558,4393,4885,32384,32382,32385);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(12, 2537),
(12, 2948),
(12, 4298),
(12, 4393),
(12, 4558),
(12, 4751),
(12, 4885),
(12, 9416),
(12, 27151),
(12, 27271),
(12, 27272),
(12, 27275),
(12, 27356),
(12, 27684),
(12, 27685),
(12, 28700),
(12, 28702),
(12, 28721),
(12, 28744),
(12, 28763),
(12, 29212),
(12, 29321),
(12, 32371),
(12, 32377),
(12, 32378),
(12, 32381),
(12, 32382),
(12, 32384),
(12, 32385);

