-- 2020-10-23_00:35:10 ERROR [misc] TSCR ERROR: EscortAI reached waypoint out of order 0, expected 1, creature entry 17906

UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (17906);

DELETE FROM `smart_scripts` WHERE `entryorguid`=17906 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(17906, 0, 0, 0, 9, 0, 85, 2, 0, 35, 5000, 9000, 11, 31664, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Gargoyle Strike on Close');
