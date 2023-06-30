
/*
	https://www.wowhead.com/npc=29646/banshee-soulclaimer
	https://www.wowhead.com/item=41504/banshee-essence
	https://cata-twinhead.twinstar.cz/?item=41504
*/

DELETE FROM `creature_loot_template` WHERE `entry`=29646 AND `item`=41504;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(29646, 41504, -75, 1, 0, 1, 1);

/*
	https://www.wowhead.com/npc=29436/icetouched-earthrager
	https://www.wowhead.com/item=41503/diatomaceous-earth
	https://cata-twinhead.twinstar.cz/?item=41503
*/

DELETE FROM `creature_loot_template` WHERE `entry`=29436 AND `item`=41503;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(29436, 41503, -75, 1, 0, 1, 1);
