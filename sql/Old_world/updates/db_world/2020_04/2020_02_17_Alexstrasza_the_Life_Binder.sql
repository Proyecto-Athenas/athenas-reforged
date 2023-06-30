-- se respawneo el Npc en las coordenadas correctas para poder continuar con la cadena de misiones.
DELETE FROM `creature` WHERE `guid`=5656;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (5656, 47603, 0, 4922, 1037, 1, 1, 0, 0, -4169.35, -3582.79, 215.999, 5.70943, 86400, 0, 0, 0, 0, 0, 0, 0, 0, 0);
