-- smartAI https://es.wowhead.com/npc=21319/gor-tripuriosa
DELETE FROM `smart_scripts` WHERE entryorguid=21319;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21319, 0, 0, 1, 63, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'Gor Grimgut- Just Summoned - Talk');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21319, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'Gor Grimgut- Just Summoned - Attack');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21319, 0, 2, 0, 0, 0, 100, 0, 3000, 5000, 7000, 10000, 75, 35492, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Gor Grimgut - In Combat - Cast Exhaustion');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21319, 0, 3, 0, 0, 0, 100, 0, 10000, 12000, 12000, 15000, 11, 35491, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Gor Grimgut - In Combat - Cast Furious Rage');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21319, 0, 4, 0, 54, 0, 100, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Npc - Event - Action (phase) (dungeon difficulty)');

-- smartAI https://es.wowhead.com/npc=21319/gor-tripuriosa
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (21319);

-- smartAI https://es.wowhead.com/npc=21321/vision-guide-kill-credit-trigger
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (21321);

-- spawn https://es.wowhead.com/npc=21321/vision-guide-kill-credit-trigger
DELETE FROM `creature` WHERE id=21321;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (6663, 21321, 530, 3522, 3778, 1, 1, 0, 0, 1316.63, 6689.88, -18.6724, 0.160565, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- smartAI https://es.wowhead.com/npc=21321/vision-guide-kill-credit-trigger
DELETE FROM `smart_scripts` WHERE entryorguid=21321;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21321, 0, 0, 1, 10, 0, 100, 0, 1, 10, 5000, 5000, 15, 10525, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Triggger - LOS - AREAEXPLOREDOREVENTHAPPENS');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21321, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 36573, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Triggger - LOS - remove aura');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (21321, 0, 2, 0, 63, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Triggger - Just created - Set invisible');

-- gameobject_template 184729
DELETE FROM `gameobject_template` WHERE entry=184729;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (184729, 10, 5994, 'The Thunderspike', '', 'Collecting', '', 0, 4, 1.5, 0, 0, 0, 0, 0, 0, 1691, 10526, 13685, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 184737, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

-- creature_ai_scripts https://es.wowhead.com/npc=21319/gor-tripuriosa
DELETE FROM `creature_ai_scripts` WHERE creature_id=21319;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (60002424, 21319, 2, 0, 100, 0, 30, 0, 0, 0, 11, 35491, 0, 0, 1, -106, 0, 0, 0, 0, 0, 0, 'Gor Grimgut - Casts Enrage at 30% HP');

-- texos para el Npc creature_ai_scripts https://es.wowhead.com/npc=21319/gor-tripuriosa
DELETE FROM `creature_text` WHERE entry=21319;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (21319, 0, 0, 'Puny $r cannot lift spear.  Gor lift spear!', 12, 0, 100, 0, 0, 0, 'Gor Grimgut', 18980);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (21319, 0, 1, 'Hah!  The Thunderspike is mine.  Die!', 12, 0, 100, 0, 0, 0, 'Gor Grimgut', 18979);

-- event_scripts para sumonear la creatura 
DELETE FROM `event_scripts` WHERE `datalong`=21319;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (13685, 1, 10, 21319, 90000, 0, 1316.47, 6686.67, -18.5903, 1.07264);

-- elimina el reporte de la mision 
DELETE FROM`report_quest` WHERE id=10526;
