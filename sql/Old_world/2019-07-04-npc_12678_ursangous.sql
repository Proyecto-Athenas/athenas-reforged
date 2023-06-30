-- fix https://trello.com/c/XfedjwPO/84-npc-ursangous reporte trello
DELETE FROM `creature_loot_template` WHERE `entry`=12678 AND `item`=16303;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (12678, 16303, 100, 1, 0, 1, 1);

