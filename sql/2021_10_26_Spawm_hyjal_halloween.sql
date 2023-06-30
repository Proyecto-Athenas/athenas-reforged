DELETE FROM `creature` WHERE guid IN (143061,143053,143063,143076,143048,159071);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143061, 53757, 0, 85, 85, 1, 1, 0, 0, 1836.18, 223.477, 60.1658, 3.05396, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143053, 15309, 0, 85, 85, 1, 1, 0, 0, 1835.76, 225.974, 60.3281, 2.84489, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143063, 53763, 0, 85, 85, 1, 1, 0, 0, 1827.68, 212.524, 60.4459, 4.72984, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143076, 15197, 0, 85, 85, 1, 1, 0, 0, 1794.07, 226.333, 59.7381, 1.01229, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(143048, 53760, 0, 85, 85, 1, 1, 0, 0, 1834.6, 216.325, 60.1882, 2.67511, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159071, 53756, 0, 85, 85, 1, 1, 0, 0, 1836.8, 219.76, 60.1193, 2.61986, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- spawm Ruinas de lordaeron
DELETE FROM `gameobject_template` WHERE `entry`=190217;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (190217, 5, 7873, 'Tent Renounced', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);
DELETE FROM `gameobject_template` WHERE `entry`=208198;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (208198, 10, 6411, 'Bonfire', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '', 1);
DELETE FROM `gameobject_template` WHERE `entry`=208963;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (208963, 5, 10680, 'Forsaken Tent 03', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 14545);

DELETE FROM `gameobject` WHERE id IN (208963,190217,208198,180434);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(233192, 208963, 0, 85, 85, 1, 1, 1827.84, 210.422, 60.2453, 5.07891, 0, 0, -0.566406, 0.824126, 120, 255, 1),
(233187, 190217, 0, 85, 85, 1, 1, 1840.41, 223.056, 60.1979, 6.12611, 0, 0, -0.0784588, 0.996917, 120, 255, 1),
(233188, 190217, 0, 85, 85, 1, 1, 1842.06, 216.226, 60.181, 5.89921, 0, 0, -0.190808, 0.981627, 120, 255, 1),
(233182, 208198, 0, 85, 85, 1, 1, 1788.39, 220.658, 59.738, 3.3685, 0, 0, -0.993571, 0.113208, 120, 255, 1),
(32584, 180434, 0, 85, 153, 1, 1, 1758.89, 513.276, 35.8655, 1.28897, 0, 0, 0.600788, 0.799409, 120, 0, 1),
(32588, 180434, 0, 85, 153, 1, 1, 1704.48, 518.689, 35.4045, 1.30704, 0, 0, 0.607984, 0.793949, 120, 0, 1),
(32597, 180434, 0, 85, 153, 1, 1, 1739.78, 473.238, 61.6565, 1.59371, 0, 0, 0.71516, 0.698961, 120, 0, 1),
(32600, 180434, 0, 85, 153, 1, 1, 1717.32, 472.723, 61.6566, 1.59371, 0, 0, 0.71516, 0.698961, 120, 0, 1),
(32601, 180434, 0, 85, 85, 1, 1, 1827.46, 254.259, 59.7987, 5.65487, 0, 0, -0.309016, 0.951057, 120, 255, 1),
(32604, 180434, 0, 85, 85, 1, 1, 1785.26, 257.182, 59.5057, 0.191985, 0, 0, 0.0958452, 0.995396, 120, 255, 1),
(32606, 180434, 0, 85, 153, 1, 1, 1759.49, 515.949, 35.3091, 5.25344, 0, 0, -0.492423, 0.870356, 120, 255, 1);
DELETE FROM `gameobject` WHERE `guid`=229498;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(229498, 180433, 0, 85, 85, 1, 1, 1782.66, 214.127, 59.7941, 0.942477, 0, 0, 0.45399, 0.891007, 300, 255, 0);

DELETE FROM `game_event_gameobject` WHERE guid IN (233192,233187,233188,233182,32584,32588,32597,32600,32601,32604,32606,229498);
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(12, 233192),
(12, 233187),
(12, 233188),
(12, 233182),
(12, 229498),

(12, 32584),
(12, 32588),
(12, 32597),
(12, 32600),
(12, 32601),
(12, 32604),
(12, 32606);

-- spawm monte Hyjal
DELETE FROM `gameobject` WHERE `guid`=2305490;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2305490, 208162, 1, 616, 5730, 1, 1, 5511.49, -3602.78, 1570.05, 3.96105, 0, 0, 0.917228, -0.398362, 300, 0, 1);

DELETE FROM `gameobject` WHERE `guid`=2305491;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2305491, 208164, 1, 616, 4990, 1, 1, 4907.48, -2738.3, 1437.61, 2.69655, 0, 0, 0.975345, 0.220687, 300, 0, 1);

DELETE FROM `gameobject` WHERE `guid`=2300360;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(2300360, 208163, 1, 616, 4989, 1, 1, 5147.1, -1726.12, 1336.43, 0.949056, 0, 0, 0.456919, 0.889509, 300, 0, 1);
