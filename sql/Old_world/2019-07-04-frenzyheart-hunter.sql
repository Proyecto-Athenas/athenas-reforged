-- fix https://www.wowhead.com/npc=28079/frenzyheart-hunter#objective-of
DELETE FROM `creature_loot_template` WHERE `entry`=48533 AND `item`=64404;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (48533, 64404, -100, 1, 0, 1, 1);
