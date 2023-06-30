-- elimina el reporte de la mision 26414
DELETE FROM  `report_quest`WHERE `id`=26414;

-- agregado el loot para la mision.
DELETE FROM `fishing_loot_template` WHERE `entry`=5314 AND `item`=58503;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (5314, 58503, -50, 1, 0, 1, 1);
