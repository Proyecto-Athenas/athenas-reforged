
-- Botín de pesca (Área: 5440) Northern Headlands

DELETE FROM `fishing_loot_template` WHERE `entry`=5440;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(5440, 6351, .47, 1, 1, 1, 1),
(5440, 6307, .53, 1, 1, 1, 1),
(5440, 6358, 18, 1, 1, 1, 1),
(5440, 6361, 40, 1, 1, 1, 1),
(5440, 6303, 20, 1, 1, 1, 1),
(5440, 6299, .02, 1, 1, 1, 1),
(5440, 6353, .59, 1, 1, 1, 1);
