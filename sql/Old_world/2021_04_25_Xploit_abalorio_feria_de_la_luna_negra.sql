-- Xploit con la crematoria
DELETE FROM `smart_scripts` WHERE `entryorguid`=55402 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(55402, 0, 0, 0, 60, 0, 100, 0, 0, 0, 10800000, 10800000, 1, 0, 6500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Talk'),
(55402, 0, 1, 2, 52, 0, 100, 0, 0, 55402, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Talk'),
(55402, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set eventphase for winner'),
(55402, 0, 3, 6, 8, 1, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Announce winner'),
(55402, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set eventphase after announce');
