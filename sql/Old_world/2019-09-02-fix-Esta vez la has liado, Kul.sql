-- fix quest https://es.wowhead.com/quest=14096/esta-vez-la-has-liado-kul reporte trello
-- SAI for Captive Aspirant
SET @ENTRY=34716;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,66531,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - On spellhit - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - Script - Say random text'),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,2000,2000,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Captive Aspirant - Script - Kill credit'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - Script - move 10 yards'),
(@ENTRY*100,9,3,0,0,0,100,0,4000,4000,4000,4000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - Script - despawn');

-- Target conditions for spell 66531
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=66531;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,2,66531,0,0,31,3,34716,0,0,0,'','Spell 66531 targets npc 34716 or npc 34956'),
(13,2,66531,0,1,31,3,34956,0,0,0,'','Spell 66531 targets npc 34716 or npc 34956');