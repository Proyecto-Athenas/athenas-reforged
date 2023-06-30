-- Quest 28869 Pebble fix
UPDATE `quest_template` SET `NextQuestIdChain`='26440' WHERE (`Id`='28869');
UPDATE `quest_template` SET `NextQuestIdChain`='26441' WHERE (`Id`='26440');
UPDATE `quest_template` SET `PrevQuestId`='28869' WHERE (`Id`='26440');
UPDATE `quest_template` SET `PrevQuestId`='26440' WHERE (`Id`='26441');

-- Quest 26440 Clingy
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43116');
DELETE FROM smart_scripts WHERE entryorguid IN (43116);
DELETE FROM `smart_scripts` WHERE `entryorguid`=43116 AND `source_type`=0 AND `id`=1 AND `link`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43116, 0, 1, 2, 19, 0, 100, 0, 26440, 0, 0, 0, 86, 80608, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'summon pebble');

-- npc para completar la mision Pebble 43116
DELETE FROM `creature` WHERE `guid`=244170;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (244170, 43116, 646, 5042, 5294, 1, 1, 0, 0, 1207.02, 1497.87, 35.4939, 5.83817, 300, 0, 0, 53681, 0, 0, 0, 0, 0, 0);

