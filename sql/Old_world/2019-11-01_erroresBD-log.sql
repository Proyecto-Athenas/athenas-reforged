-- delete contenido custom quest 
DELETE FROM `creature_involvedrelation` WHERE `id` IN (29326, 29327, 29328, 29330, 29331, 29335, 29336, 29337, 29338, 29439, 29440, 1003015, 1006002, 1005021);

DELETE FROM `game_event_gameobject` WHERE `eventEntry` IN (127);

DELETE FROM `creature_loot_template` WHERE `entry` IN (1003054);

-- corrige la flag para la creatura 40331
UPDATE `creature_template` SET  `npcflag`='3' WHERE entry IN (40331);

  
-- Es necesario para corregir un error de spawn en errorDB.log 
-- Esto sera mientras corrigen las misiones del npc 49687
-- INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (49696, 0, 2, 0, 1, 0, 100, 0, 900, 1000, 900, 1000, 11, 91646, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Sunflower');
DELETE FROM `smart_scripts` WHERE `entryorguid`=49696 AND `source_type`=0 AND `id`=2 AND `link`=0;

-- elminando npc custom entrada 57013
DELETE FROM `creature_template` WHERE entry =57013;
DELETE FROM `creature` WHERE id =57013;