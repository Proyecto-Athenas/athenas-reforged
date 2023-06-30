-- fix loot https://es.wowhead.com/item=35648/fragmento-centelleante
DELETE FROM `creature_loot_template` WHERE `entry`=25719 AND `item`=35648;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (25719, 35648, 100, 1, 0, 1, 1);
