-- fix quest https://www.wowhead.com/quest=29317/fish-head reporte trello
DELETE FROM `fishing_loot_template` WHERE (`entry`=1497) AND (`item`=69901);
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (1497, 69901, 5, 1, 1, 1, 1);