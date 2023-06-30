DELETE FROM `game_event_creature` WHERE guid IN (5029661,5029658,143063,5029673,5029713,5029657);
DELETE FROM `creature` WHERE guid IN (5029661,5029658,143063,5029673,5029713,5029657);

DELETE FROM `creature` WHERE `guid`=5029662;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5029662, 53764, 0, 85, 153, 1, 65535, 0, 0, 1816.78, 227.381, 60.2725, 5.70664, 300, 0, 0, 770, 0, 0, 0, 0, 0, 0);
 
DELETE FROM `creature` WHERE `guid`=143063;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143063, 53763, 0, 85, 85, 1, 1, 0, 0, 1827.72, 212.39, 60.3591, 2.15271, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `game_event_gameobject` WHERE guid IN (2300368,2300367);
DELETE FROM `gameobject` WHERE `guid`IN (229498,2300368,2300367);
DELETE FROM `game_event_gameobject` WHERE `guid`=2300368 AND `eventEntry`=12;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(12, 2300368);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2300368, 180433, 0, 85, 85, 1, 65535, 1782.66, 214.127, 59.7941, 0.942477, 0, 0, 0.639511, 0.768782, 300, 0, 1);


-- guid obj 2301546,2300369,2300377 

DELETE FROM `game_event_gameobject` WHERE `guid`=2300378 AND `eventEntry`=12;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(12, 2300378);

DELETE FROM `gameobject` WHERE guid IN (2301546,2300369,2300377,2300378);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2301546, 180432, 0, 85, 85, 1, 1, 1818.25, 205.507, 60.1901, 1.52692, 0, 0, 0.691426, 0.722448, 300, 0, 1),
(2300369, 180432, 0, 85, 85, 1, 1, 1792.54, 205.29, 59.9743, 1.59209, 0, 0, 0.714595, 0.699539, 300, 0, 1),
(2300377, 180432, 0, 85, 85, 1, 1, 1800.58, 187.5, 70.401, 1.54653, 0, 0, 0.698476, 0.715633, 300, 0, 1),
(2300378, 180432, 0, 85, 85, 1, 1, 1808.8, 187.661, 70.3999, 1.56224, 0, 0, 0.704075, 0.710125, 300, 0, 1);



-- guid calabas 2300376,2300371,2300370 id 180407 180406 180405
DELETE FROM `game_event_gameobject` WHERE `guid` IN (900150,785485,328947,326130);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(12, 900150),
(12, 785485),
(12, 328947),
(12, 326130);

DELETE FROM `gameobject` WHERE guid IN (2300376,2300371,2300370,900150,785485,328947,326130);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2300376, 180405, 0, 85, 85, 1, 1, 1835.88, 211.791, 60.5469, 3.99343, 0, 0, 0.910659, -0.41316, 300, 0, 1),
(2300371, 180406, 0, 85, 85, 1, 1, 1834.18, 209.844, 60.4141, 3.99343, 0, 0, 0.910659, -0.41316, 300, 0, 1),
(2300370, 180407, 0, 85, 85, 1, 1, 1834.93, 210.896, 62.0321, 3.99343, 0, 0, 0.910659, -0.41316, 300, 0, 1),
(900150, 180405, 0, 85, 85, 1, 1, 1844.64, 220.166, 60.3578, 4.69501, 0, 0, 0.713226, -0.700934, 300, 0, 1),
(785485, 180406, 0, 85, 85, 1, 1, 1844.6, 217.821, 60.2439, 4.69501, 0, 0, 0.713226, -0.700934, 300, 0, 1),
(328947, 180407, 0, 85, 85, 1, 1, 1844.56, 218.934, 61.7644, 4.68964, 0, 0, 0.715102, -0.69902, 300, 0, 1),
(326130, 180406, 0, 85, 85, 1, 1, 1824.08, 227.741, 60.0593, 0.884883, 0, 0, 0.428147, 0.903709, 300, 0, 1);

-- guid tierras 2300374,2300373,2300372 id 180437

DELETE FROM `gameobject` WHERE guid IN (2300374,2300373,2300372);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2300374, 180437, 0, 85, 85, 1, 1, 1789.11, 216.286, 59.9143, 5.99389, 0, 0, 0.144145, -0.989557, 300, 0, 1),
(2300373, 180437, 0, 85, 85, 1, 1, 1783.93, 227.337, 59.3571, 5.44254, 0, 0, 0.408056, -0.912957, 300, 0, 1),
(2300372, 180437, 0, 85, 85, 1, 1, 1781.53, 222.153, 59.6252, 4.50948, 0, 0, 0.775086, -0.631856, 300, 0, 1);


-- 5029680 5029674 5029679

DELETE FROM `creature` WHERE guid IN (5029680,5029674,5029679);
DELETE FROM `game_event_creature` WHERE guid=5029679;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5029680, 15195, 0, 85, 85, 1, 1, 0, 0, 1817.95, 238.72, 60.9763, 0.123831, 300, 0, 0, 45780, 0, 0, 0, 0, 0, 0),
(5029674, 15195, 0, 85, 85, 1, 1, 0, 0, 1806.3, 251.023, 61.0565, 1.59174, 300, 0, 0, 45780, 0, 0, 0, 0, 0, 0);


DELETE FROM `game_event_gameobject` WHERE `guid` IN (32600,32584,32606,32588,32597,2260,2259,2300379,2300380,2300362,2300365,2300375);
DELETE FROM `gameobject` WHERE guid IN (32600,32584,32606,32588,32597,2260,2300379,2259,2300380,2300362,2300365,2300375);
DELETE FROM `gameobject` WHERE `guid`=233182;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(233182, 180434, 0, 85, 85, 1, 1, 1788.39, 220.658, 59.738, 3.3685, 0, 0, -0.993571, 0.113208, 120, 255, 1);


DELETE FROM `creature` WHERE `guid`=5029665;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5029665, 51684, 0, 85, 85, 1, 1, 0, 0, 1782.66, 214.127, 69.7271, 0.735289, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);
