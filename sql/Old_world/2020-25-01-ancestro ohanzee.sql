-- fix coordenadas del npc https://es.wowhead.com/npc=30537/ancestro-ohanzee#starts
DELETE FROM `creature` WHERE `guid`=902047;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (902047, 30537, 604, 4416, 4416, 1, 1, 0, 0, 1643.2, 972.279, 115.941, 4.72999, 300, 0, 0, 15120, 17628, 0, 0, 0, 0, 0);
