-- Se corrigio el smartAI ya que no se podia despojar el npc ya que al morir el Npc se despawneaba.
DELETE FROM `smart_scripts` WHERE `entryorguid`=689 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(689, 0, 0, 0, 0, 0, 75, 0, 5000, 5000, 16000, 16000, 11, 3635, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Crystal Spine Basilisk - In Combat - Cast \'Crystal Gaze\' (No Repeat) (Normal Dungeon)'),
(689, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 82233, 3, 0, 0, 0, 0, 11, 42736, 30, 0, 0, 0, 0, 0, '');
