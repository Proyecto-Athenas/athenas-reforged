-- add angel en los baldido del norte
DELETE FROM `creature` WHERE `guid`=46619;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (46619, 6491, 1, 17, 17, 1, 65535, 0, 0, 160.216, -1699.59, 94.1991, 1.35595, 300, 0, 0, 4120, 0, 0, 0, 0, 0, 0);
