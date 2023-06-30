-- Mision La llave maestra
UPDATE `creature_template` SET `npcflag`=16777216 WHERE (`entry`=43003);
UPDATE `creature_template` SET `AIName`='SmartAI ' WHERE (`entry`=43003);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceGroup`=0 AND `SourceEntry`=26400;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 26400, 0, 0, 8, 0, 26399, 0, 0, 0, 0, 0, '', 'Quest Accept 26400 If Quest Rewarded 26399');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4300300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4300300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4300300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 80277, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=43003 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(43003, 0, 0, 0, 8, 0, 100, 512, 56685, 0, 0, 0, 80, 4300300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_text` WHERE `entry`=43003;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(43003, 0, 0, 'The blade cuts into the Mosh\'Ogg Bounty, forcing it open!', 41, 0, 100, 0, 0, 0, 42897, '');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=43003 AND `spell_id`=56685;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(43003, 56685, 1, 0);
