-- Protodraco Tiempo Perdido
DELETE FROM `creature_loot_template` WHERE entry=32491;
INSERT INTO `creature_loot_template` (`entry`, `Item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(32491, 44168, 99, 1, 0, 1, 1),
(32491, 44663, 99, 1, 0, 1, 1),
(32491, 44682, 98, 1, 0, 1, 1);

