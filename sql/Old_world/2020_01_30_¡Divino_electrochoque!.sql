-- Fix ¡Divino electrochoque!

-- SAI
SET @ENTRY := 20501;
SET @SEEPING := 20806;
UPDATE `creature_template` SET `flags_extra`="64" WHERE `entry`=@SEEPING ;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,0,0,50,30000,45000,11,36465,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge - Cast Seeping Split at 50% HP"),
(@ENTRY,0,1,0,8,0,100,0,35686,0,0,0,36,20806,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge - Change Entry after (proc) Spell 35686"),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,11,35242,0,0,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge - Darkstalker Birth"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,12,20806,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge- On death - Summons Seeping Sludge Globule "),
(@ENTRY,0,4,0,6,0,100,0,0,0,0,0,12,20806,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge- On death - Summons Seeping Sludge Globule "),
(@ENTRY,0,5,0,6,0,100,0,0,0,0,0,12,20806,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge- On death - Summons Seeping Sludge Globule "),
(@ENTRY,0,6,0,6,0,100,0,0,0,0,0,12,20806,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge- On death - Summons Seeping Sludge Globule "),
(@ENTRY,0,7,0,6,0,100,0,0,0,0,0,12,20806,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Seeping Sludge- On death - Summons Seeping Sludge Globule ");


-- SAI
SET @ENTRY := 18869;
SET @VOID := 20805;
UPDATE `creature_template` SET `flags_extra`="64" WHERE `entry`=@VOID;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,12,20805,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Unstable Voidwraith - On death - Summon Void Waste Globule"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,12,20805,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Unstable Voidwraith - On death - Summon Void Waste Globule"),
(@ENTRY,0,2,0,6,0,100,0,0,0,0,0,12,20805,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Unstable Voidwraith - On death - Summon Void Waste Globule"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,12,20805,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Unstable Voidwraith - On death - Summon Void Waste Globule"),
(@ENTRY,0,4,0,6,0,100,0,0,0,0,0,12,20805,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Unstable Voidwraith - On death - Summon Void Waste Globule");

