-- el npc castea un spell incorrecto reporte trello https://trello.com/c/fIZZvENo/100-quest-keep-the-scavengers-at-bay-id-24525-gm-aquiles
DELETE FROM `smart_scripts` WHERE `entryorguid`=37086 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (37086, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 15000, 16500, 11, 82797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Leaping Bite');


