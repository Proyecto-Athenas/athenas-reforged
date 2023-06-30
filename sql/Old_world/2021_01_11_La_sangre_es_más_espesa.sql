-- Aumenta la probabilidad de que caiga el item
UPDATE `fishing_loot_template` SET  `ChanceOrQuestChance`='-20' WHERE item IN (45905);
