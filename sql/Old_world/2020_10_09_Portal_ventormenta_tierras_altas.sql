-- portal de tierras altas y crepusculares a Ventormenta
DELETE FROM `creature` WHERE `guid` = 9649304; 
DELETE FROM `gameobject` WHERE `guid` = 56505;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(56505, 209080, 0, 4922, 5140, 1, 65535, -4892.22, -6624.06, 10.8379, 5.40647, 0, 0, 0.424453, -0.90545, 300, 0, 1);

