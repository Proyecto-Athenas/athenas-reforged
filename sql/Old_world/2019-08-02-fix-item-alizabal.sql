-- eliminado item loot de boss alizabal y agregado el item correcto
DELETE FROM `reference_loot_template` WHERE `item`=73677;

DELETE FROM `creature_loot_template` WHERE `entry`=55869 AND `item`=73521;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (55869, 73521, 4.3971, 1, 0, 1, 1);
