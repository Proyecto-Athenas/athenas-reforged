-- Quest Piratear el Wibson

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=46715;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 46715, 46598, 0, 0, 9, 0, 27778, 0, 0, 0, 0, 0, '', '');

-- SmartAI Update
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (46715,46750);

-- spell ID 46598
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=46715 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(46715, 46598, 1, 0);

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=46715 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46715, 0, 0, 0, 27, 0, 100, 512, 0, 0, 0, 0, 80, 4671500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46715, 0, 1, 2, 28, 0, 100, 512, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(46715, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- enlace SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=4671500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4671500, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 233, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4671500, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 11, 88974, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4671500, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 47028, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4671500, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4671500, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4671500, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- spawm Creature ID 46750
DELETE FROM `creature` WHERE `id`=46750;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(76327, 46750, 1, 5034, 5697, 1, 1, 0, 0, -10640, -2341.84, 144.756, 0.920861, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0);

-- aura
DELETE FROM `creature_template_addon` WHERE `entry`=46750;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(46750, 0, 0, 50331648, 1, 0, '82733');

DELETE FROM `smart_scripts` WHERE `entryorguid`=46750 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46750, 0, 0, 1, 62, 0, 100, 0, 12578, 1, 0, 0, 33, 47028, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Fusion Core - On Gossip Option 1 Selected - Quest Credit \'Hacking the Wibson\''),
(46750, 0, 1, 0, 61, 0, 100, 0, 12578, 1, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fusion Core - On Gossip Option 1 Selected - Close Gossip');

-- Entrega la mision
DELETE FROM `creature_questrelation` WHERE `id`=46750 AND `quest`=27779;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (46750, 27779);


-- finalización de misiones
DELETE FROM `creature_involvedrelation` WHERE `id`=46750;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(46750, 27778),
(46750, 27779);
