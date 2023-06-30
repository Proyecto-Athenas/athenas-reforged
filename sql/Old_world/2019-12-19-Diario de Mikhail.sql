-- aumento el drop al 100% del item https://www.wowhead.com/item=37830/mikhails-journal
DELETE FROM `creature_loot_template` WHERE item=37830;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (27546, 37830, 100, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (27547, 37830, 100, 1, 0, 1, 1);
