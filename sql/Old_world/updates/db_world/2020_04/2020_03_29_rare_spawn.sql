-- en la db de athenas avian 19 spawns de estos NPC y solo deberia aver 1
DELETE FROM `creature` WHERE `id`=14448;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(510, 14448, 0, 0, 0, 1, 1, 0, 0, -10205.9, -3336.7, 24.2697, 3.28874, 7200, 30, 0, 1, 0, 1, 0, 0, 0, 0);
