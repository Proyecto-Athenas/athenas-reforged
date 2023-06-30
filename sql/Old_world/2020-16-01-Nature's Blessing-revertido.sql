-- revertido el cambio
DELETE FROM `gameobject` WHERE `id`=301106;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (200078, 301106, 1, 616, 4861, 1, 2048, 4921.95, -1488.07, 1331.13, 2.23826, 0, 0, 0.899722, 0.436463, 300, 0, 1);

DELETE FROM `gameobject` WHERE `id`=208899;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (67998, 208899, 1, 616, 4861, 1, 2048, 4920.81, -1486.28, 1327.95, 5.5676, -0.0736518, 0.017909, -0.349837, 0.933739, 120, 255, 0);

DELETE FROM `gameobject` WHERE `id`=301104;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (200077, 301104, 1, 616, 4861, 1, 16383, 4616.78, -2711.22, 1146.69, 5.32369, 0, 0, 0.461555, -0.887112, 300, 0, 1);
