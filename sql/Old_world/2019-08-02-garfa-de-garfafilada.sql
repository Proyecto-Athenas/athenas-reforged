-- fix items de la mision https://es.wowhead.com/item=16305/garfa-de-garfafilada reporte trello
DELETE FROM `creature_loot_template` WHERE `entry`=12676 AND `item`=16305;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (12676, 16305, 100, 1, 0, 1, 1);
