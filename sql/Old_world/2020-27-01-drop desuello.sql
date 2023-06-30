-- Aumento de drop de los items de desuello.
DELETE FROM `skinning_loot_template` WHERE entry=26605;
INSERT INTO `skinning_loot_template` VALUES (26605, 33567, 80.53, 1, 0, 1, 10);
INSERT INTO `skinning_loot_template` VALUES (26605, 33568, 40.44, 1, 0, 1, 10);
INSERT INTO `skinning_loot_template` VALUES (26605, 44128, 2.03, 1, 0, 1, 10);