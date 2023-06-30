
-- The Nexus Phase on quest
DELETE FROM `phase_definitions` WHERE `zoneId`=4265 AND `phasemask`=2;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceGroup`=4265;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `comment`) VALUES (4265, 1, 2, 'The nexus');

-- Nexus Spell Area
DELETE FROM `spell_area` WHERE `spell`=99197 AND `area`=4265;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (99197, 4265, 29194, 0, 29225, 0, 2, 1, 10, 0);


-- Add Tarecgosa into The nexus (Phase2)
DELETE FROM `creature` WHERE `guid`=2002051;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (2002051, 53439, 576, 1, 2, 0, 0, 200.855, -5.53591, -16.6367, 3.14512, 300, 0, 0, 273, 0, 0, 0, 0, 0);



-- Add Tarecgosa's gossip menu
DELETE FROM `gossip_menu_option` WHERE `menu_id`=53439;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES (53439, 'Which way should we go?', 1, 1);
UPDATE `creature_template` SET `gossip_menu_id`=53439, `npcflag`=1 WHERE  `entry`=53439;



-- The Nexus creature text 
DELETE FROM `creature_text` WHERE `entry`=53439;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 0, "The rift can be reached through this hall.Follow me.", 12, 100, 10000, 24982, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 1, "Stay close, $n.If we are caught,it will be the end of both of us.", 12, 100, 4000, 24983, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 2, "A Sentry approaches! Hide yourself,quickly", 12, 100, 10000, 24985, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 3, "Security here is much stronger than I recall... What is Arygos protecting?", 12, 100, 10000, 24984, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 4, "More sentries approach! There's no other way...", 12, 100, 10000, 24987, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 5, "I'll handle this one. See if you can find any others.", 12, 100, 10000, 24988, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 6, "Aaugh! We cannot afford this delay!", 12, 100, 10000, 24994, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 7, "Follow me, mortal. The rift is near.", 12, 100, 10000, 24989, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 8, "Protect me while I break the barrier.", 12, 100, 10000, 25000, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53439, 9, "Quickly! Make your way across the chasm.", 12, 100, 10000, 25002, 'Tarecgosa');

DELETE FROM `creature_text` WHERE `entry`=53615;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53615, 1, "At last, whe have arrived.", 12, 100, 10000, 24990, 'Tarecgosa');

DELETE FROM `creature_text` WHERE `entry`=53383;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53383, 0, "Well done my lady. I will have the intruder disposed of at once.", 12, 100, 10000, 24887, 'Nexus Warden ');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53383, 1, "As you wish.", 12, 100, 10000, 24888, 'Nexus Warden ');

DELETE FROM `creature_text` WHERE `entry`=53484;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `comment`) VALUES (53484, 0, "Hostile behaviour detected. Activating security protocol 11-b.", 14, 100, 10000, 'Icebound Sentinel');




-- Spawn creature into the nexus (phasemask 2)



-- Creature template correction into the nexus (phasemask 2)
UPDATE `creature_template` SET `minlevel`=85 ,`maxlevel`=85 ,`faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=12, `Health_mod`=195.4, `unit_flags`=0 WHERE  `entry`=53383;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=2111, `faction_H`=2111, `mindmg`=104, `maxdmg`=200, `dmg_multiplier`=4, `Health_mod`=701810 WHERE  `entry`=53484;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=204, `maxdmg`=302, `dmg_multiplier`=7, `Health_mod`=18.889 WHERE  `entry`=53414;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=4, `Health_mod`=0.63, `unit_flags`=0 WHERE  `entry`=53513;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=12, `Health_mod`=10.16, `unit_flags`=0, `unit_class`=8 WHERE  `entry`=53614;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=8, `unit_class`=8, `Health_mod`=6.04, `unit_flags`=0 WHERE  `entry`=53532;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=256, `maxdmg`=320, `dmg_multiplier`=8, `unit_class`=8, `Health_mod`=4.03, `unit_flags`=0 WHERE  `entry`=53423;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=8, `unit_class`=8, `Health_mod`=4.03, `unit_flags`=0 WHERE  `entry`=54463;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=8, `unit_class`=8, `Health_mod`=4.03, `unit_flags`=0 WHERE  `entry`=53486;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=2141, `faction_H`=2141, `mindmg`=304, `maxdmg`=406, `dmg_multiplier`=12, `unit_class`=8, `Health_mod`=32.11, `InhabitType`=4 WHERE  `entry`=53615;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=114, `faction_H`=114, `mindmg`=304, `maxdmg`=306, `dmg_multiplier`=12, `unit_class`=8, `Health_mod`=210.15, `unit_flags`=4, `InhabitType`=4, `mechanic_immune_mask`=8591993  WHERE  `entry`=53472;
UPDATE `creature_template` SET `flags_extra`=128, `speed_walk`=0.8, `speed_run`=0.8 WHERE  `entry`=53586;



-- Creatures Waypoints
DELETE FROM `waypoints` WHERE `entry`=53439;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 1, 234.925, 28.9905, -16.6371, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 2, 290.605, 84.5002, -16.6362, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 3, 302.068, 123.145, -16.6367, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 4, 303.384, 140.493, -18.0528, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 5, 315.313, 157.015, -23.007, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 6, 336.203, 158.934, -28.2659, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 7, 366.431, 152.173, -34.6225, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 8, 379.709, 153.743, -35.0195, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 9, 397.702, 173.096, -35.0195, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 10, 423.965, 184.96, -35.0195, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 11, 444.026, 177.45, -35.0195, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 12, 455.687, 169.901, -35.0195, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 13, 469.572, 154.056, -34.9715, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 14, 500.541, 155.661, -29.4873, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 15, 504.95, 88.9888, -16.1236, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 16, 542.112, 88.5464, -16.37, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 17, 578.426, 88.817, -16.6384, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 18, 594.425, 108.275, -17.6716, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 19, 612.078, 100.663, -18.1942, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 20, 626.683, 76.1293, -20.4107, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 21, 636.986, 51.9271, -20.7979, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 22, 639.932, 16.4193, 24.0986, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53439, 23, 657.112, -58.3912, 42.5034, '');


DELETE FROM `waypoints` WHERE `entry`=53615;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53615, 1, 701.039, -114.847, -23.4939, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53615, 2, 682.473, -163.138, 23.3481, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53615, 3, 641.103, -316.284, -9.52742, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53615, 4, 641.18, -316.909, -9.53445, '');

DELETE FROM `waypoints` WHERE `entry`=53383;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 1, 460.794, 161.66, -35.0203, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 2, 445.097, 176.79, -35.0203, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 3, 425.346, 185.208, -35.0203, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 4, 407.088, 180.884, -35.0203, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 5, 392.169, 164.386, -35.0203, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 6, 370.45, 152.462, -34.6217, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53383, 7, 353.835, 154.512, -31.8324, '');

-- Spawn Objects into The NEXUS
SET @OGUID := 2305612;
DELETE FROM `gameobject` WHERE id=210048;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID AND @OGUID+6;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+0, 210097, 576, 1, 2, 478.947, 150.205, -34.6228, 4.57101, 0, 0, 0.755286, -0.655396, 1800, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+1, 210097, 576, 1, 2, 342.331, 158.068, -29.3631, 4.65776, 0, 0, 0.726154, -0.687532, 1800, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+2, 210097, 576, 1, 2, 320.391, 158.935, -23.5597, 4.97584, 0, 0, 0.608106, -0.793856, 1800, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+3, 210097, 576, 1, 2, 304.794, 144.736, -18.4027, 5.91439, 0, 0, 0.183352, -0.983047, 1800, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+4, 210097, 576, 1, 2, 301.701, 130.542, -15.769, 6.15392, 0, 0, 0.0645873, -0.997912, 1800, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+5, 210048, 576, 1, 2, 584.961, -14.2062, -11.5625, 6.0922, 0, 0, 0.095346, -0.995444, 1800, 0, 1);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (@OGUID+6, 210048, 576, 1, 2, 636.802, 54.9799, -21.4156, 1.96618, 0, 0, 0.832215, 0.554453, 1800, 0, 1);

-- Update Gameobject template
UPDATE `gameobject_template` SET `data6`=0 WHERE  `entry`=210097;

-- Tarecgosa SAI

SET @ENTRY := 53439;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=53439;
DELETE FROM `smart_scripts` WHERE `entryorguid`=53439 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53439, 0, 0, 0, 62, 0, 100, 0, 53439, 0, 0, 0, 3, 0, 38397, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on gossip select - morph self'),
(53439, 0, 1, 3, 62, 0, 100, 0, 53439, 0, 0, 0, 1, 0, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on gossip select - talk 0'),
(53439, 0, 2, 0, 52, 0, 100, 0, 0, 53439, 0, 0, 53, 1, 53439, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'on text over0 - start wp'),
(53439, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link - set npc flag self'),
(53439, 0, 4, 0, 40, 0, 100, 0, 1, 53439, 0, 0, 11, 99277, 0, 0, 0, 0, 0, 17, 0, 20, 0, 0, 0, 0, 0, 'on wp reached 1 - cast invisibility'),
(53439, 0, 5, 0, 40, 0, 100, 0, 1, 53439, 0, 0, 54, 18000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp reached 1 - pause'),
(53439, 0, 6, 7, 40, 0, 100, 0, 2, 53439, 0, 0, 54, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 2 - pause wp'),
(53439, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 58531, 0, 0, 0, 0, 0, 9, 53484, 0, 100, 0, 0, 0, 0, 'on wp2 - cast arcane missiles'),
(53439, 0, 8, 0, 0, 0, 100, 0, 0, 0, 4000, 4000, 11, 29954, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast frost bolt'),
(53439, 0, 9, 0, 0, 0, 100, 0, 7000, 7000, 7000, 7000, 11, 41382, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast blizzard'),
(53439, 0, 10, 0, 40, 0, 100, 0, 3, 53439, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 210097, 0, 8, 0, 0, 0, 0, 'on wp 3 - activate gob'),
(53439, 0, 11, 0, 40, 0, 100, 0, 3, 53439, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 3 - pause wp'),
(53439, 0, 12, 0, 40, 0, 100, 0, 4, 53439, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 210097, 0, 10, 0, 0, 0, 0, 'on wp 4 - activate gob'),
(53439, 0, 13, 0, 40, 0, 100, 0, 4, 53439, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 4 - pause wp'),
(53439, 0, 14, 0, 40, 0, 100, 0, 5, 53439, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 210097, 0, 10, 0, 0, 0, 0, 'on wp 5  - activate gob'),
(53439, 0, 15, 0, 40, 0, 100, 0, 5, 53439, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 5 - pause wp'),
(53439, 0, 16, 0, 40, 0, 100, 0, 6, 53439, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 210097, 0, 10, 0, 0, 0, 0, 'on wp 6  - activate gob'),
(53439, 0, 17, 0, 40, 0, 100, 0, 6, 53439, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 6 - pause wp'),
(53439, 0, 18, 19, 40, 0, 100, 0, 9, 53439, 0, 0, 54, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 9 - pause wp'),
(53439, 0, 19, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 58531, 0, 0, 0, 0, 0, 9, 53484, 0, 100, 0, 0, 0, 0, 'on wp9 - cast arcane missiles'),
(53439, 0, 20, 0, 40, 0, 100, 0, 10, 53439, 0, 0, 75, 99277, 0, 0, 0, 0, 0, 17, 0, 100, 0, 0, 0, 0, 0, 'on wp10 - cast ice breath'),
(53439, 0, 21, 19, 40, 0, 100, 0, 10, 53439, 0, 0, 54, 50000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 11 - pause wp'),
(53439, 0, 22, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 5, 25000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on data set - talk 5'),
(53439, 0, 23, 0, 52, 0, 100, 0, 5, 53439, 0, 0, 28, 99277, 0, 0, 0, 0, 0, 17, 0, 100, 0, 0, 0, 0, 0, 'on text over 5 - remove ice block'),
(53439, 0, 24, 19, 40, 0, 100, 0, 12, 53439, 0, 0, 54, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 12 - pause wp'),
(53439, 0, 25, 0, 40, 0, 100, 0, 13, 53439, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 13 - pause wp'),
(53439, 0, 26, 0, 40, 0, 100, 0, 13, 53439, 0, 0, 9, 0, 0, 0, 0, 0, 0, 13, 210097, 0, 20, 0, 0, 0, 0, 'on wp 13  - activate gob'),
(53439, 0, 27, 0, 40, 0, 100, 0, 14, 53439, 0, 0, 2, 114, 0, 0, 0, 0, 0, 9, 53484, 0, 500, 0, 0, 0, 0, 'on wp 14 - set faction'),
(53439, 0, 28, 0, 40, 0, 100, 0, 15, 53439, 0, 0, 54, 210000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 15 - pause wp'),
(53439, 0, 29, 0, 40, 0, 100, 0, 15, 53439, 0, 0, 3, 0, 38398, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 15 - morph'),
(53439, 0, 30, 0, 40, 0, 100, 0, 15, 53439, 0, 0, 45, 0, 1, 0, 0, 0, 0, 9, 53484, 0, 100, 0, 0, 0, 0, 'on wp 15 - set data'),
(53439, 0, 31, 0, 52, 0, 100, 0, 0, 53439, 0, 0, 1, 1, 8000, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'on text over0 - talk 1'),
(53439, 0, 32, 0, 40, 0, 100, 0, 1, 53439, 0, 0, 1, 2, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp reached 1 - talk 2'),
(53439, 0, 33, 7, 40, 0, 100, 0, 2, 53439, 0, 0, 1, 3, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 2 - talk 3'),
(53439, 0, 34, 0, 40, 0, 100, 0, 10, 53439, 0, 0, 1, 4, 5000, 0, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0, 'on wp10 - talk 4'),
(53439, 0, 35, 19, 40, 0, 100, 0, 12, 53439, 0, 0, 1, 6, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 12 - talk6'),
(53439, 0, 36, 19, 40, 0, 100, 0, 16, 53439, 0, 0, 1, 7, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 16 - talk 7'),
(53439, 0, 37, 19, 40, 0, 100, 0, 20, 53439, 0, 0, 54, 100000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 20 - pause wp'),
(53439, 0, 38, 19, 40, 0, 100, 0, 20, 53439, 0, 0, 1, 8, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 20 - talk 8'),
(53439, 0, 39, 19, 40, 0, 100, 0, 20, 53439, 0, 0, 11, 99302, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 20 - cast breath'),
(53439, 0, 40, 19, 40, 0, 100, 0, 20, 53439, 0, 0, 12, 53614, 2, 360000, 0, 0, 0, 8, 0, 0, 0, 585.48, 72.12, -16.63, 0, 'on wp 20 - summon Ceredos'),
(53439, 0, 41, 19, 40, 0, 100, 0, 20, 53439, 0, 0, 12, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 23 - despawn self'),
(53439, 0, 42, 0, 38, 0, 100, 0, 0, 3, 0, 0, 65, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on data set - resume wp'),
(53439, 0, 43, 19, 40, 0, 100, 0, 22, 53439, 0, 0, 12, 53615, 2, 1800000, 0, 0, 0, 8, 0, 0, 0, 721.8, -125.58, -28.97, 0, 'on wp 22 - summon'),
(53439, 0, 44, 19, 40, 0, 100, 0, 21, 53439, 0, 0, 1, 9, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on wp 20 - talk 9'),
(53439, 0, 45, 0, 40, 0, 100, 0, 1, 53439, 0, 0, 11, 99277, 0, 0, 0, 0, 0, 9, 0, 0, 20, 0, 0, 0, 0, 'on wp reached 1 - cast invisibility');

-- Nexus Warden SAI

SET @ENTRY := 53383;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,53,1,53383,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Warden - On Data Set 0 1 - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,2,53383,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Warden - On Waypoint 2 Reached - Pause Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,2,53383,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Warden - On Waypoint 2 Reached - Say Line 0"),
(@ENTRY,0,3,4,52,0,100,0,0,53383,0,0,45,0,1,0,0,0,0,9,53439,0,50,0,0,0,0,"Nexus Warden - On Text 0 Over - Set Data 0 1"),
(@ENTRY,0,4,0,61,0,100,0,0,53383,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Warden - On Text 0 Over - Set Run Off"),
(@ENTRY,0,5,0,52,0,100,0,0,53383,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Warden - On Text 0 Over - Say Line 1"),
(@ENTRY,0,6,0,40,0,100,0,7,53383,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Warden - On Waypoint 7 Reached - Despawn Instant");

-- Ceredos SAI

SET @ENTRY := 53614;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,45,0,1,0,0,0,0,13,210048,0,350,0,0,0,0,"on death - set data"),
(@ENTRY,0,2,0,0,0,100,0,5000,5000,15000,15000,11,99809,0,0,0,0,0,9,53586,0,200,0,0,0,0,"on combat  - cast spellflame"),
(@ENTRY,0,3,0,0,0,100,0,7500,7500,17500,17500,11,99807,0,0,0,0,0,9,53586,0,200,0,0,0,0,"on combat  - cast spellflame"),
(@ENTRY,0,4,0,0,0,100,0,0,0,60000,60000,12,53586,2,59000,0,0,0,17,0,200,0,0,0,0,0,"summon flame tracker"),
(@ENTRY,0,5,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,17,0,1000,0,0,0,0,0,"on summon - attack start");

-- Icewall SAI

SET @ENTRY := 210048;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,0,0,1,0,0,9,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"on data set - activate self");

-- Twilight Riftweaver SAI

SET @ENTRY := 53532;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,10000,10000,11,100015,0,0,0,0,0,2,0,0,0,0,0,0,0,"on combat - cast"),
(@ENTRY,0,1,0,0,0,100,0,15000,15000,15000,15000,11,100016,0,0,0,0,0,2,0,0,0,0,0,0,0,"on combat - cast"),
(@ENTRY,0,2,0,2,0,100,0,5,5,1,1,11,99715,0,0,0,0,0,2,0,0,0,0,0,0,0,"on 5% health - cast shadow nova");

-- Twilight Spellbinder SAI

SET @ENTRY := 53423;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,10000,10000,11,79564,0,0,0,0,0,2,0,0,0,0,0,0,0,"on combat - cast");

-- Imprisoned Wraith SAI

SET @ENTRY := 53513;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,0,0,0,0,75,99803,0,0,0,0,0,17,0,50,0,0,0,0,0,"on spellhit - cast chilled");

-- Tarecgosa SAI
SET @ENTRY := 53615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,53,1,53615,0,0,0,0,1,0,0,0,0,0,0,0,"Tarecgosa - On Data Set 0 1 - Start Waypoint"),
(@ENTRY,0,1,0,38,0,100,0,0,1,0,0,51,0,0,0,0,0,0,9,0,0,500,0,0,0,0,"Tarecgosa - On Data Set 0 1 - Kill Target"),
(@ENTRY,0,3,0,40,0,100,0,4,53615,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Tarecgosa - On Waypoint 4 Reached - Say Line 1"),
(@ENTRY,0,5,0,40,0,100,0,4,53615,0,0,12,53472,2,3600000,0,0,0,8,0,0,0,631.64,-323.39,8.46,0,"Tarecgosa - On Waypoint 4 Reached - Summon Creature 'Thyrinar'"),
(@ENTRY,0,6,0,40,0,100,0,1,53615,0,0,54,8000,0,0,0,0,0,1,0,0,300,0,0,0,0,"Tarecgosa - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY,0,7,0,40,0,100,0,2,53615,0,0,11,99744,0,0,0,0,0,9,0,0,300,0,0,0,0,"Tarecgosa - On Waypoint 2 Reached - Cast '<Spell not found!>'"),
(@ENTRY,0,8,0,38,0,100,0,0,4,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tarecgosa - On Data Set 0 4 - Despawn Instant");

-- Twilight Invader SAI

SET @ENTRY := 54463;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,53615,0,500,0,0,0,0,"on combat - set data");

-- Thyrinar SAI
SET @ENTRY := 53472;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,6000,10000,10000,11,99148,0,0,0,0,0,2,0,0,0,0,0,0,0,"Twilight Blast"),
(@ENTRY,0,1,0,0,0,100,0,19000,19000,20000,20000,11,99392,0,0,0,0,0,1,0,0,0,0,0,0,0,"Twilight Restoration"),
(@ENTRY,0,2,0,0,0,100,0,18000,18000,20000,20000,11,99502,0,0,0,0,0,9,53586,0,200,0,0,0,0,"Twisting"),
(@ENTRY,0,3,0,0,0,100,0,0,0,60000,60000,12,53586,2,59000,0,0,0,17,0,200,0,0,0,0,0,"summon flame tracker"),
(@ENTRY,0,4,0,0,0,100,0,30000,30000,40000,40000,12,53486,2,60000,0,0,0,8,0,0,0,636.64,-250.01,-7.84,0,"summon - twilight invader"),
(@ENTRY,0,5,0,0,0,100,0,0,0,3600000,3600000,75,99561,0,0,0,0,0,9,53615,0,100,0,0,0,0,"Twilight prison"),
(@ENTRY,0,7,0,6,0,100,0,0,0,0,0,45,0,4,0,0,0,0,9,53615,0,500,0,0,0,0,"on death - set data"),
(@ENTRY,0,8,0,6,0,100,0,0,0,0,0,12,53567,2,180000,0,0,0,8,0,0,0,640.61,-315.36,-9.51,1.73,"on death - summon tarecgosa");


-- Tracking Flames SAI

SET @ENTRY := 53586;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,29,0,0,0,0,0,0,17,0,100,0,0,0,0,0,"follow");

-- Magic Hunter SAI

SET @ENTRY := 53414;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,17,0,500,0,0,0,0,0,"on summon - attack start");

-- Twilight Invader SAI

SET @ENTRY := 53486;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,17,0,500,0,0,0,0,0,"on summon - attack start"),
(@ENTRY,0,1,0,0,0,100,0,0,0,10000,15000,11,6268,0,0,0,0,0,2,0,0,0,0,0,0,0,"on combat - cast charge"),
(@ENTRY,0,2,0,0,0,100,0,5000,5000,5000,10000,11,90255,0,0,0,0,0,2,0,0,0,0,0,0,0,"on combat - cast nova");

-- Tarecgosa SAI

SET @ENTRY := 53567;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,29194,0,0,0,57,69238,0,0,0,0,0,17,0,200,0,0,0,0,0,"Tarecgosa - On Quest 'Through a Glass, Darkly' Finished - Remove Item '' 1 Time"),
(@ENTRY,0,1,0,54,0,100,0,0,0,0,0,33,52867,0,0,0,0,0,17,0,500,0,0,0,0,0,"Tarecgosa - On Just Summoned - Quest Credit 'Through a Glass, Darkly'"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,15,29194,0,0,0,0,0,17,0,500,0,0,0,0,0,"Tarecgosa - On Just Summoned - Quest Credit 'Through a Glass, Darkly'");

-- Add quest to Tarecgosa
DELETE FROM `creature_involvedrelation` WHERE `id`=53567;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (53567, 29194);
DELETE FROM `creature_questrelation` WHERE `id`=53567;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (53567, 29225);


DELETE FROM `creature_template` WHERE `entry`=52835;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (52835, 0, 0, 0, 0, 0, 38398, 0, 0, 0, 'Tarecgosa', '', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 1, 1470, 2106, 0, 0, 3.9, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1470, 2106, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 5, 1, 6.5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 250, 1, 0, 0, 0, '', 15595);

DELETE FROM `smart_scripts` WHERE `entryorguid`=52835 AND `source_type`=0;

DELETE FROM `report_quest` WHERE id=29194;

DELETE FROM `quest_template` WHERE `Id`=29194;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (29194, 2, NULL, 'Untested', 85, 85, 0, 4024, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29193, 0, 0, 29225, 6, 188000, 520500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Through a Glass, Darkly', 'Look into the Eye of Eternity at the Nether Vortex in the Nexus.$b$bMeet Tarecgosa inside the Nexus where she will escort you to the rift.', '<Tarecgosa listens as you explain your presence in Coldarra.>$b$bYour tale rings true, $c. Much has changed since the death of Malygos - little of it for the better.$b$bI know of the device you carry, and I recognize Anachronos\' magic in its creation. There is but one place in all of Coldarra that would allow this Timeless Eye to be used discreetly.$b$bYou will require my assistance if you hope to succeed. Speak with me again inside the Nexus and you shall have it.', '', NULL, NULL, 'Speak to Tarecgosa at the Rift in the Nexus.', 52867, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Obscured Event Witnessed', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE id IN (53532,53383,53484,53414,53513,53423,54463);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(2002053, 53383, 576, 1, 2, 0, 0, 260.68, 54.9798, -16.6367, 3.93187, 1800, 0, 0, 630, 0, 0, 0, 0, 0, 1),
(2002094, 53383, 576, 1, 2, 0, 0, 474.497, 155.031, -34.6228, 2.71708, 1800, 0, 0, 630, 0, 0, 0, 0, 0, 1),
(2002056, 53414, 576, 1, 2, 0, 0, 426.057, 180.549, -35.0195, 3.09587, 1800, 0, 0, 63, 0, 0, 0, 0, 0, 1),
(2002057, 53414, 576, 1, 2, 0, 0, 426.563, 191.597, -35.0195, 3.09587, 1800, 0, 0, 63, 0, 0, 0, 0, 0, 1),
(2002078, 53423, 576, 1, 2, 0, 0, 640.319, -33.9813, -5.96331, 1.71679, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002081, 53423, 576, 1, 2, 0, 0, 640.326, -121.024, -15.2363, 1.82495, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002082, 53423, 576, 1, 2, 0, 0, 627.175, -116.523, -15.2363, 1.59326, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002083, 53423, 576, 1, 2, 0, 0, 650.292, -111.534, -15.2355, 1.83853, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002084, 53423, 576, 1, 2, 0, 0, 627.652, -29.2212, -5.96331, 1.09239, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002085, 53423, 576, 1, 2, 0, 0, 650.51, -25.2654, -5.96331, 2.08876, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002055, 53484, 576, 1, 2, 0, 0, 426.294, 185.723, -35.0195, 3.09587, 1800, 0, 0, 420, 0, 0, 0, 0, 0, 1),
(2002054, 53484, 576, 1, 2, 0, 0, 319.653, 113.451, -16.6367, 3.88463, 1800, 0, 0, 420, 0, 0, 0, 0, 0, 1),
(2002058, 53484, 576, 1, 2, 0, 0, 460.635, 147.585, -35.0202, 1.95396, 1800, 0, 0, 420, 0, 0, 0, 0, 0, 1),
(2002075, 53484, 576, 1, 2, 0, 0, 515.995, 89.0522, -16.1246, 3.12984, 1800, 0, 0, 420, 0, 0, 0, 0, 0, 1),
(2002076, 53484, 576, 1, 2, 0, 0, 493.353, 89.108, -16.1246, 6.27534, 1800, 0, 0, 420, 0, 0, 0, 0, 0, 1),
(2002059, 53513, 576, 1, 2, 0, 0, 489.543, 147.117, -32.5047, 2.8946, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002060, 53513, 576, 1, 2, 0, 0, 491.409, 157.034, -32.3907, 3.30693, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002061, 53513, 576, 1, 2, 0, 0, 495.377, 152.903, -30.935, 3.04933, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002062, 53513, 576, 1, 2, 0, 0, 498.443, 149.35, -29.879, 2.82549, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002063, 53513, 576, 1, 2, 0, 0, 499.108, 158.278, -30.115, 3.4362, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002064, 53513, 576, 1, 2, 0, 0, 504.931, 161.098, -29.2034, 3.35767, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002065, 53513, 576, 1, 2, 0, 0, 508.681, 156.939, -28.9074, 3.28305, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002066, 53513, 576, 1, 2, 0, 0, 513.608, 152.608, -26.4346, 3.21237, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002067, 53513, 576, 1, 2, 0, 0, 515.231, 156.482, -26.0272, 3.19273, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002068, 53513, 576, 1, 2, 0, 0, 518.995, 162.629, -25.1944, 3.36945, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002069, 53513, 576, 1, 2, 0, 0, 523.425, 156.34, -23.2978, 2.85896, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002070, 53513, 576, 1, 2, 0, 0, 526.948, 161.545, -23.313, 2.9964, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002071, 53513, 576, 1, 2, 0, 0, 546.965, 129.269, -16.6384, 1.7869, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002072, 53513, 576, 1, 2, 0, 0, 552.4, 125.441, -16.6384, 1.99111, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002073, 53513, 576, 1, 2, 0, 0, 548.178, 123.132, -16.6384, 1.89686, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002074, 53513, 576, 1, 2, 0, 0, 544.213, 120.508, -16.6384, 1.63375, 1800, 0, 0, 3, 0, 0, 0, 0, 0, 1),
(2002052, 53532, 576, 1, 2, 0, 0, 649.182, -11.5299, -5.96243, 1.92317, 1800, 0, 0, 147, 0, 0, 0, 0, 0, 1),
(2002077, 53532, 576, 1, 2, 0, 0, 625.718, -15.7466, -5.96243, 1.48727, 1800, 0, 0, 147, 0, 0, 0, 0, 0, 1),
(2002079, 53532, 576, 1, 2, 0, 0, 625.799, -102.593, -15.2364, 1.09062, 1800, 0, 0, 147, 0, 0, 0, 0, 0, 1),
(2002080, 53532, 576, 1, 2, 0, 0, 648.559, -98.0621, -15.2364, 2.87741, 1800, 0, 0, 147, 0, 0, 0, 0, 0, 1),
(2002086, 54463, 576, 1, 2, 0, 0, 681.036, -168.968, -28.9786, 2.98411, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002087, 54463, 576, 1, 2, 0, 0, 678.594, -176.261, -28.9997, 2.81064, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002088, 54463, 576, 1, 2, 0, 0, 690.125, -185.149, -29.0014, 1.97811, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002089, 54463, 576, 1, 2, 0, 0, 683.269, -183.239, -29.0189, 1.55624, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002090, 54463, 576, 1, 2, 0, 0, 669.696, -149.758, -28.9796, 3.57764, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002091, 54463, 576, 1, 2, 0, 0, 663.488, -167.172, -28.9796, 3.05928, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002092, 54463, 576, 1, 2, 0, 0, 702.479, -156.48, -28.9786, 3.50187, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1),
(2002093, 54463, 576, 1, 2, 0, 0, 705.506, -173.154, -28.9786, 2.97987, 1800, 0, 0, 42, 0, 0, 0, 0, 0, 1);



DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002076 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002076, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 99407, 0, 0, 0, 0, 0, 17, 0, 100, 0, 0, 0, 0, 0, 'on combat - cast erupting ice');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002076 AND `source_type`=0 AND `id`=1 AND `link`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002076, 0, 1, 4, 38, 0, 100, 0, 0, 1, 0, 0, 11, 99295, 0, 0, 0, 0, 0, 9, 53439, 0, 100, 0, 0, 0, 0, 'on data set - cast binding');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002076 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002076, 0, 2, 0, 0, 0, 100, 0, 0, 0, 20000, 20000, 11, 99813, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002076 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002076, 0, 3, 0, 0, 0, 100, 0, 0, 0, 20000, 20000, 2, 38, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002076 AND `source_type`=0 AND `id`=4 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002076, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link 1 - regenerate health 0');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002076 AND `source_type`=0 AND `id`=5 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002076, 0, 5, 0, 5, 0, 100, 0, 0, 0, 0, 0, 102, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on kill - regenerate health 1');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002075 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002075, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 99407, 0, 0, 0, 0, 0, 17, 0, 100, 0, 0, 0, 0, 0, 'on combat - cast erupting ice');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002075 AND `source_type`=0 AND `id`=1 AND `link`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002075, 0, 1, 4, 38, 0, 100, 0, 0, 1, 0, 0, 11, 99295, 0, 0, 0, 0, 0, 9, 53439, 0, 100, 0, 0, 0, 0, 'on data set - cast binding');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002075 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002075, 0, 2, 0, 0, 0, 100, 0, 0, 0, 20000, 20000, 11, 99813, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002075 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002075, 0, 3, 0, 0, 0, 100, 0, 0, 0, 20000, 20000, 2, 38, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002075 AND `source_type`=0 AND `id`=4 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002075, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on link 1 - regenerate health 0');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002075 AND `source_type`=0 AND `id`=5 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002075, 0, 5, 0, 5, 0, 100, 0, 0, 0, 0, 0, 102, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on kill - regenerate health 1');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002058 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002058, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 500000, 500000, 1, 0, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Icebound Sentinel - In Combat - Say Line 0');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002058 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002058, 0, 1, 0, 52, 0, 100, 0, 0, 53484, 0, 0, 12, 53414, 2, 360000, 0, 0, 0, 8, 0, 0, 0, 432.88, 117.61, -35.02, 0, 'Icebound Sentinel - On Text 0 Over - Summon Creature \'Magic Hunter\'');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002058 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002058, 0, 2, 0, 52, 0, 100, 0, 0, 53484, 0, 0, 12, 53414, 2, 360000, 0, 0, 0, 8, 0, 0, 0, 437.01, 182.53, -35.02, 0, 'Icebound Sentinel - On Text 0 Over - Summon Creature \'Magic Hunter\'');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002058 AND `source_type`=0 AND `id`=3 AND `link`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002058, 0, 3, 4, 52, 0, 100, 0, 0, 53484, 0, 0, 12, 53414, 2, 360000, 0, 0, 0, 8, 0, 0, 0, 441.23, 188.1, -35.02, 0, 'Icebound Sentinel - On Text 0 Over - Summon Creature \'Magic Hunter\'');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002058 AND `source_type`=0 AND `id`=4 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002058, 0, 4, 0, 61, 0, 100, 0, 0, 53484, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Icebound Sentinel - On Text 0 Over - Despawn Instant');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002055 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002055, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 99407, 0, 0, 0, 0, 0, 17, 0, 100, 0, 0, 0, 0, 0, 'on combat - cast erupting ice');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002055 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002055, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 9, 53383, 0, 150, 0, 0, 0, 0, 'on death - set data ');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002055 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002055, 0, 2, 0, 0, 0, 100, 0, 0, 0, 20000, 20000, 11, 99813, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002055 AND `source_type`=0 AND `id`=5 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002055, 0, 5, 0, 0, 0, 100, 0, 0, 0, 20000, 20000, 11, 99813, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'on combat - cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002054 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002054, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 99407, 0, 0, 0, 0, 0, 17, 0, 100, 0, 0, 0, 0, 0, 'on combat - cast erupting ice');
DELETE FROM `smart_scripts` WHERE `entryorguid`=-2002054 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (-2002054, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 15000, 15000, 12, 53414, 2, 120000, 0, 0, 0, 8, 0, 0, 0, 302.068, 123.145, -16.6367, 0, 'on combat - spawn magic hunter');

DELETE FROM `creature_template` WHERE `entry`=53383;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (53383, 0, 0, 0, 0, 0, 27033, 0, 0, 0, 'Nexus Warden', 'Servant of Arygos', '', 0, 85, 85, 0, 0, 114, 114, 0, 1, 1.14286, 1, 1, 304, 406, 0, 46, 12, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 2, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 118120, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE `entry`=53414;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (53414, 0, 0, 0, 0, 0, 24906, 0, 0, 0, 'Magic Hunter', '', '', 0, 85, 85, 0, 0, 114, 114, 0, 1, 1.14286, 1, 0, 204, 302, 0, 46, 7, 0, 0, 1, 0, 2048, 0, 52, 0, 0, 0, 1.9, 1.9, 0, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 18.889, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE `entry`=53439;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (53439, 0, 0, 0, 0, 0, 38398, 0, 0, 0, 'Tarecgosa', '', '', 53439, 85, 85, 0, 0, 2141, 2141, 1, 1, 1.14286, 1, 1, 304, 406, 0, 46, 12, 0, 0, 8, 0, 2048, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 2, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 4, 1, 1181820, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE `entry`=53484;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (53484, 0, 0, 0, 0, 0, 20764, 0, 0, 0, 'Icebound Sentinel', '', '', 0, 85, 85, 0, 0, 2111, 2111, 0, 1, 1.14286, 1, 1, 304, 406, 0, 46, 12, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 9, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 418180, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE `entry`=53513;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (53513, 0, 0, 0, 0, 0, 38412, 0, 0, 0, 'Imprisoned Wraith', '', '', 0, 85, 85, 0, 0, 114, 114, 0, 1, 1.14286, 1, 0, 304, 406, 0, 46, 4, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 0.63, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);



