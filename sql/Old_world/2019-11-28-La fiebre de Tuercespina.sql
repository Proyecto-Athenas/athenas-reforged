-- Stranglethorn Fever
-- delete report
DELETE FROM `report_quest` WHERE id=26597;

-- Actionlist SAI
SET @ENTRY := 144900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,12,1511,3,300000,0,0,0,8,0,0,0,-13834.451172,10.406610,18.501738,5.986651,"Witch Doctor Unbagwa - On Script - Summon Creature 'Enraged Silverback Gorilla'"),
(@ENTRY,9,1,0,0,0,100,0,28000,28000,0,0,12,1516,3,300000,0,0,0,8,0,0,0,-13834.451172,10.406610,18.501738,5.986651,"Witch Doctor Unbagwa - On Script - Summon Creature 'Konda'"),
(@ENTRY,9,2,0,0,0,100,0,20000,20000,0,0,12,1514,3,300000,0,0,0,8,0,0,0,-13834.451172,10.406610,18.501738,5.986651,"Witch Doctor Unbagwa - On Script - Summon Creature 'Mokk the Savage'");

-- Enraged Silverback Gorilla SAI
SET @ENTRY := 1511;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Enraged Silverback Gorilla - On Just Summoned - Set Active On"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,1,151100,0,0,0,2,0,0,0,0,0,0,0,0,"Enraged Silverback Gorilla - On Just Summoned - Start Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,12,@ENTRY*100+00,0,0,101,0,0,0,0,0,0,1,10,0,0,0,0,0,0,"Mokk the Savage - On Waypoint 12 Reached - Set Home Position");

-- Konda SAI
SET @ENTRY := 1516;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Konda - On Just Summoned - Set Active On"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,1,151100,0,0,0,2,0,0,0,0,0,0,0,0,"Konda - On Just Summoned - Start Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,12,@ENTRY*100+00,0,0,101,0,0,0,0,0,0,1,10,0,0,0,0,0,0,"Mokk the Savage - On Waypoint 12 Reached - Set Home Position");

-- Mokk the Savage SAI
SET @ENTRY := 1514;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mokk the Savage - On Just Summoned - Set Active On"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,1,151100,0,0,0,2,0,0,0,0,0,0,0,0,"Mokk the Savage - On Just Summoned - Start Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,12,@ENTRY*100+00,0,0,101,0,0,0,0,0,0,1,10,0,0,0,0,0,0,"Mokk the Savage - On Waypoint 12 Reached - Set Home Position");

DELETE FROM `waypoints` WHERE `entry`=151100;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES 
(151100, 1, -13827.2, 8.52635, 20.5824),
(151100, 2, -13813.6, 5.66898, 26.1583),
(151100, 3, -13802.9, 6.12354, 30.2606),
(151100, 4, -13793.4, 5.90325, 32.4506),
(151100, 5, -13784.7, 3.8825, 36.0005),
(151100, 6, -13777.5, -0.0832987, 39.5015),
(151100, 7, -13769, -6.19992, 43.0507),
(151100, 8, -13764, -11.6944, 44.8876),
(151100, 9, -13757.9, -15.1257, 45.1735),
(151100, 10, -13751.8, -18.5569, 44.0262),
(151100, 11, -13745.9, -22.2345, 44.7542),
(151100, 12, -13738.1, -27.4341, 44.5899);
UPDATE `creature_template` SET `speed_walk`=1.16 WHERE  `entry`=1511;

-- aumento de drop del item 
UPDATE `creature_loot_template` SET ChanceOrQuestChance=50 WHERE item=2799;

