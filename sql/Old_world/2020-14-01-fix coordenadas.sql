-- fix coordenadas del npc
DELETE FROM `creature` WHERE `guid`=63788;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (63788, 46341, 0, 4922, 5473, 1, 1, 0, 46341, -5264.71, -4720.69, 369.291, 0.801967, 80, 0, 0, 351389, 4454, 0, 0, 0, 0, 0);
