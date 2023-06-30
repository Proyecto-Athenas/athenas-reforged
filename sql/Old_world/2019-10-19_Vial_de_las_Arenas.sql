-- Debido a los reclamos de lagunos jugadores se procede a aumentar la probabilidad de item 64657(receta del vial de las arenas)
-- Para obtener la receta se necesita tener la profesión de Arqueología y la Alquimia, caso contrario no se podrá obtener la receta
-- Se aumento la probabilidad del 03% al 20%
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` = '64657' AND `item` = '67538';  -- receta del vial de las arenas
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '80' WHERE `entry` = '64657' AND `item` = '67540';  -- Órgano momificado
