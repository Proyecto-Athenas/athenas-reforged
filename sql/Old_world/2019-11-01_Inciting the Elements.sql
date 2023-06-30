-- Fix Quest: Incitar a los elementos 25370
SET @FAERIE_DRAGON = 39921;
SET @TWILIGHT_INCITER := 39926;


-- fix npc
DELETE FROM `creature_template_addon` WHERE `entry`=40278;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (40278,0,0,1,375, '');

-- eliminadas las criaturas ya que no es necesario su spawn
DELETE FROM `creature` WHERE `id`=39926;
-- fix distancia de movimiento
UPDATE `creature` SET `spawndist`="5" WHERE `id`=39921;

-- fix velocidad de vuelo
UPDATE `creature_template` SET `speed_fly`="0.5" WHERE `entry`=39921;

-- Faerie Dragon 39921
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @FAERIE_DRAGON;

DELETE FROM `creature_text` WHERE entry=@FAERIE_DRAGON;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 0, 0, 'We find evil ones now!  Follow!', 12, 7, 100, 0, 0, 0, 'Faerie Dragon', 40300);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 0, 1, 'They hide this way!  Quick!', 12, 7, 100, 0, 0, 0, 'Faerie Dragon', 40301);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 0, 2, 'We look for the evil ones now, yes?', 12, 7, 100, 0, 0, 0, 'Faerie Dragon', 40302);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 0, 3, 'Meep!  $R is good friend.  Follow now!  We find intruder!', 12, 7, 100, 0, 0, 0, 'Faerie Dragon', 39943);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 1, 0, 'Over here!  You must stop them!', 14, 7, 100, 0, 0, 0, 'Faerie Dragon', 40303);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 1, 1, 'You must fight now, $n!', 14, 7, 100, 0, 0, 0, 'Faerie Dragon', 40304);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@FAERIE_DRAGON, 1, 2, 'Over here, $n!', 14, 7, 100, 0, 0, 0, 'Faerie Dragon', 40305);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@FAERIE_DRAGON, @FAERIE_DRAGON*100) AND `source_type` IN (0, 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@FAERIE_DRAGON, 0, 0, 0, 8, 0, 100, 512, 74513, 0, 0, 0, 80, @FAERIE_DRAGON*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - Run Script (No Repeat)'),
(@FAERIE_DRAGON*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Say Line 0'),
(@FAERIE_DRAGON*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 20, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Random move'),
(@FAERIE_DRAGON*100, 9, 2, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Say Line 1'),
(@FAERIE_DRAGON*100, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - set root 0'),
(@FAERIE_DRAGON*100, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 74514, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Summon Twilight Inciter'),
(@FAERIE_DRAGON*100, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Faerie Dragon - On Script - Despawn');

-- Twilight Inciter 39926
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @TWILIGHT_INCITER;

UPDATE `creature_template` SET `lootid`=0 WHERE `entry`=39926;
DELETE FROM `creature_template_addon` WHERE `entry` = @TWILIGHT_INCITER;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@TWILIGHT_INCITER, 0, 0, 0, 1, 0, '');

DELETE FROM `creature_text` WHERE `entry` = @TWILIGHT_INCITER;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@TWILIGHT_INCITER, 0, 0, 'How did you find me?  It matters little... you will die!', 12, 0, 100, 0, 0, 0, 'Twilight Inciter', 39945);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@TWILIGHT_INCITER, 0, 1, 'I\'ve been spotted?  Time to die!', 12, 0, 100, 0, 0, 0, 'Twilight Inciter', 39946);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@TWILIGHT_INCITER, 0, 2, 'You will not give away my position, $c!', 12, 0, 100, 0, 0, 0, 'Twilight Inciter', 39947);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (@TWILIGHT_INCITER, 0, 3, 'You might have found me, but you won\'t bring word back to the others!', 12, 0, 100, 0, 0, 0, 'Twilight Inciter', 39948);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@TWILIGHT_INCITER, @TWILIGHT_INCITER*100) AND `source_type` IN (0, 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@TWILIGHT_INCITER, 0, 0, 1, 25, 0, 100, 512, 0, 0, 0, 0, 11, 30991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Out of Combat - Cast \'Stealth\' (No Repeat)'),
(@TWILIGHT_INCITER, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 18, 33280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Set Unit Flags 33280'),
(@TWILIGHT_INCITER, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, @TWILIGHT_INCITER*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Run Script (No Repeat)'),
(@TWILIGHT_INCITER, 0, 3, 0, 67, 0, 100, 512, 3900, 6900, 0, 0, 11, 37685, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - On Behind Target - Cast \'Backstab\''),
(@TWILIGHT_INCITER, 0, 4, 0, 67, 0, 100, 512, 8000, 9000, 0, 0, 11, 80576, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - On Behind Target - Cast \'Shadowstep\''),
(@TWILIGHT_INCITER*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - set orientation - target_type 21'),
(@TWILIGHT_INCITER*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 71, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - Run Script (No Repeat)'),
(@TWILIGHT_INCITER*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - On Script - Say Line 0'),
(@TWILIGHT_INCITER*100, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 19, 33280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Twilight Inciter - remove Unit Flags 33280');


-- Tiala Whitemane SAI
SET @ENTRY := 40833;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,2000,2000,11,13236,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tiala Whitemane - OOC - Cast 'Nature Channeling'"),
(@ENTRY,0,1,0,1,0,100,0,2000,2000,2000,2000,92,0,13236,1,0,0,0,1,0,0,0,0,0,0,0,"Tiala Whitemane - OOC - Interupt cast");