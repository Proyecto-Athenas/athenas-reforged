-- fix loor de la mision https://es.wowhead.com/quest=29535/haz-que-sangren reporte trello
DELETE FROM `creature_loot_template` WHERE `entry`=18621 AND `item`=73200;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (18621, 73200, -100, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE `entry`=17381 AND `item`=73200;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (17381, 73200, -100, 1, 0, 1, 1);
