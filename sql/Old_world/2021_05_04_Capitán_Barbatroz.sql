-- Capitán Barbatroz Mision
SET @CaptainQuest:=24950;
SET @CaptainDreadbeard:=38749;
SET @Tidecrusher:=38750;

-- Reporte de mision
DELETE FROM `report_quest` WHERE id=@CaptainQuest;
UPDATE `creature_template` SET `AIName`='SmartAI ' WHERE (`entry`=@CaptainDreadbeard);
UPDATE `creature_template` SET `AIName`='SmartAI ' WHERE (`entry`=@Tidecrusher);
DELETE FROM `creature_template_addon` WHERE `entry`=38749;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@CaptainDreadbeard, 0, 0, 0, 1, 0, NULL);

DELETE FROM `creature_template_addon` WHERE `entry`=@Tidecrusher;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@Tidecrusher, 0, 0, 0, 1, 0, NULL);

-- Textos
DELETE FROM `creature_text` WHERE `entry`=@CaptainDreadbeard;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(@CaptainDreadbeard, 0, 0, 'I\'ve a surprise for ye, dogs!', 12, 0, 100, 0, 0, 0, 0, 'Captain Dreadbeard'),
(@CaptainDreadbeard, 1, 0, 'Seems I\'ll be cuttin\' yer throat by me self!', 12, 0, 100, 0, 0, 0, 0, 'Captain Dreadbeard');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CaptainDreadbeard AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@CaptainDreadbeard, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captain Dreadbeard - On Aggro - Say Line 0'),
(@CaptainDreadbeard, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 72707, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Captain Dreadbeard - Link - Cast \'Summon Tidecrusher\''),
(@CaptainDreadbeard, 0, 2, 0, 0, 0, 100, 0, 5000, 6500, 18500, 21000, 11, 75361, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Captain Dreadbeard - IC - Cast Swashbuckling Slice'),
(@CaptainDreadbeard, 0, 3, 0, 0, 0, 100, 0, 7000, 10000, 14000, 17500, 11, 83639, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Captain Dreadbeard - IC - Cast Bloodbath');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Tidecrusher AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@Tidecrusher, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 72709, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Tidecrusher - On Just Summoned - Cast \'Tidecrusher Jumpcharge\''),
(@Tidecrusher, 0, 1, 2, 60, 0, 100, 1, 3000, 3000, 0, 0, 86, 43671, 0, 23, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidecrusher - Update - CrossCast \'Ride Vehicle\''),
(@Tidecrusher, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidecrusher - Link - Set Home Pos'),
(@Tidecrusher, 0, 3, 0, 60, 0, 100, 0, 5000, 5000, 1500, 2000, 11, 87081, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'Tidecrusher - Link - Attack Closest Enemy'),
(@Tidecrusher, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Tidecrusher - On Death - Say Line 1'),
(@Tidecrusher, 0, 5, 6, 1, 0, 100, 1, 10000, 10000, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidecrusher - OOC - Remove Aura'),
(@Tidecrusher, 0, 6, 0, 61, 0, 100, 0, 43671, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidecrusher - Link - Despawn');
