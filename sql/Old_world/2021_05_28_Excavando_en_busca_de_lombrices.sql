SET @WORMMOUND     := 204281;
SET @LOOT          := 30786;
SET @CRYSTALBASS   := 58787;

DELETE FROM `gameobject_template` WHERE `entry`=@WORMMOUND ;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(@WORMMOUND , 3, 20, 'Worm Mound', '', 'Digging', '', 94, 4, 1, 58788, 0, 0, 0, 0, 0, 259, 30786, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE id=@WORMMOUND ;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(16036, @WORMMOUND , 0, 1519, 5316, 1, 1, -8188.04, 610.705, 74.3691, 0, 0, 0, 0, 1, 120, 255, 1),
(16284, @WORMMOUND , 0, 1519, 5316, 1, 1, -8075.21, 671.642, 70.3323, 2.23402, 0, 0, 0, 1, 120, 255, 1),
(16323, @WORMMOUND , 0, 1519, 5398, 1, 1, -8062.16, 621.564, 73.4981, 4.25861, 0, 0, 0, 1, 120, 255, 1),
(16340, @WORMMOUND , 0, 1519, 5316, 1, 1, -8094, 594.809, 69.5074, 3.83973, 0, 0, 0, 1, 120, 255, 1),
(16341, @WORMMOUND , 0, 1519, 1519, 1, 1, -8204.73, 867.288, 71.0869, 5.34071, 0, 0, 0, 1, 120, 255, 1),
(16343, @WORMMOUND , 0, 1519, 5397, 1, 1, -8117.18, 714.309, 68.3818, 2.68781, 0, 0, 0, 1, 120, 255, 1),
(16346, @WORMMOUND , 0, 1519, 5397, 1, 1, -8167.92, 810.203, 67.5973, 4.01426, 0, 0, 0, 1, 120, 255, 1),
(16347, @WORMMOUND , 0, 1519, 5316, 1, 1, -8187.11, 754.599, 69.1876, 4.25861, 0, 0, 0, 1, 120, 255, 1),
(16348, @WORMMOUND , 0, 1519, 5316, 1, 1, -8156.45, 719.075, 68.6385, 5.2709, 0, 0, 0, 1, 120, 255, 1),
(16349, @WORMMOUND , 0, 1519, 1519, 1, 1, -8222.36, 789.281, 74.3298, 0, 0, 0, 0, 1, 120, 255, 1),
(50978, @WORMMOUND , 0, 1519, 5316, 1, 1, -8257.42, 742.142, 70.8661, 4.45059, 0, 0, 0, 1, 120, 255, 1),
(50857, @WORMMOUND , 0, 1519, 5316, 1, 1, -8199.96, 644.168, 67.7058, 3.12412, 0, 0, 0, 1, 120, 255, 1),
(50844, @WORMMOUND , 0, 1519, 5316, 1, 1, -8235.52, 696.712, 67.2035, 4.97419, 0, 0, 0, 1, 120, 255, 1);


DELETE FROM `gameobject_loot_template` WHERE `entry`=@LOOT AND `item` IN (58788,@WORMMOUND );
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(@LOOT, 58788, -100, 1, 0, 1, 1);


DELETE FROM `fishing_loot_template` WHERE `entry`=5316 AND `item`=@CRYSTALBASS;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(5316, @CRYSTALBASS, -50, 1, 0, 1, 1);
