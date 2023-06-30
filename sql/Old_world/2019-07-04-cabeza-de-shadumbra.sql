-- fix loot para la mision https://es.wowhead.com/item=16304/cabeza-de-shadumbra reporte trello
DELETE FROM `creature_loot_template` WHERE `entry`=12677 AND `item`=16304;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (12677, 16304, 100, 1, 0, 1, 1);
