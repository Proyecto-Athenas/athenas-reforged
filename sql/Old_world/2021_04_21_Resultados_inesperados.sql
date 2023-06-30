DELETE FROM `report_quest` WHERE id=8488;

UPDATE creature_template SET AIName="" WHERE entry=15402;
DELETE FROM `smart_scripts` WHERE `entryorguid`=15402 AND `source_type`=0;

UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry`=15402;

DELETE FROM `creature_text` WHERE `entry`=15402;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15402,0,0,'I need your help please! Protect me as much as you can!',12,0,100,0,0,0,'Comment');

-- Angershade
SET @ENTRY := 15656;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,1,2,0,100,0,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Angershade - At 30% HP - Cast Enrage"),
(@ENTRY,@SOURCETYPE,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Angershade - At 30% HP - Say Line 0"),
(@ENTRY,@SOURCETYPE,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,18,80,0,0,0.0,0.0,0.0,0.0,"Just Summoned - Attack Player");

-- Gharsul the Remorseless
SET @ENTRY := 15958;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,18,80,0,0,0.0,0.0,0.0,0.0,"Just Summoned - Attack Player");