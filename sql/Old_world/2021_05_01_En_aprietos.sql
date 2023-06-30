UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (3698);

DELETE FROM smart_scripts WHERE entryorguid IN (3698) AND source_type = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3698, 0, 80, 0, 19, 0, 100, 0, 13982, 0, 0, 0, 12, 34602, 7, 8000000, 0, 0, 0, 8, 0, 0, 0, 2383.63,639.579,148.897,2.11285, 'Summon mob');

DELETE FROM `smart_scripts` WHERE `entryorguid`=34602 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34602, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 3698, 100, 0, 0, 0, 0, 0, 'Kaliva - On Summoned - Set Data 0 1'),
(34602, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Kaliva - Linked To Id 0 - Say Line 0'),
(34602, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Kaliva - Linked To Id 1 - Attack Start');


DELETE FROM `creature_text` WHERE `entry`=34602 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES 
(34602, 0, 0, 'Ahahahaha, you\\\'ve fallen into my trap, $n!', 14, 0, 100, 0, 1, 0, 'kaliva', 34837);
