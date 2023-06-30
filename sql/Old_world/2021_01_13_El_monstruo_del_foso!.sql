-- Moat Monster! quest

-- script C++
DELETE FROM `spell_script_names` WHERE `spell_id` IN (99511, 99508);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(99508, 'spell_throw_frog'),
(99511, 'spell_simulate_alliance_presence');

-- condicion para el uso del spell
DELETE FROM `conditions` WHERE `SourceEntry` IN (99511, 99508) AND `SourceTypeOrReferenceId`=13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 99511, 0, 0, 31, 0, 3, 53591, 0, 0, 0, 0, '', 'Targeting -> Moat Monster Spawn Loc'),
(13, 1, 99508, 0, 0, 31, 1, 3, 53590, 0, 0, 0, 0, '', 'Targeting -> Moat Monster');

DELETE FROM `smart_scripts` WHERE `entryorguid`=53590 AND `source_type`=0;
