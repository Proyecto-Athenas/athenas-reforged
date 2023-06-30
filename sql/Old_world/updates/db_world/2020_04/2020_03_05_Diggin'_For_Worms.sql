-- elimina el report de la mision 
DELETE FROM `report_quest` WHERE id=26420;

-- item 58788
DELETE FROM `item_template` WHERE `entry`=58788;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (58788, 12, 0, -1, 'Overgrown Earthworm', 69858, 1, 0, 8192, 1.0061, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80534, 0, -1, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- data1 30786
UPDATE `gameobject_template` SET `data1`='30786' WHERE  `entry`=204281;

-- loot 
DELETE FROM `gameobject_loot_template` WHERE `entry`=30786 AND `item`=58788;
DELETE FROM `gameobject_loot_template` WHERE `entry`=204281 AND `item`=58788;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (30786, 58788, -100, 1, 0, 1, 1);

-- spawn de objetos
DELETE FROM `gameobject` WHERE id=204281;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(16036, 204281, 0, 1519, 5316, 1, 1, -8188.04, 610.705, 74.3691, 0, 0, 0, 0, 1, 120, 255, 1),
(16284, 204281, 0, 1519, 5316, 1, 1, -8075.21, 671.642, 70.3323, 2.23402, 0, 0, 0, 1, 120, 255, 1),
(16323, 204281, 0, 1519, 5398, 1, 1, -8062.16, 621.564, 73.4981, 4.25861, 0, 0, 0, 1, 120, 255, 1),
(16340, 204281, 0, 1519, 5316, 1, 1, -8094, 594.809, 69.5074, 3.83973, 0, 0, 0, 1, 120, 255, 1),
(16341, 204281, 0, 1519, 1519, 1, 1, -8204.73, 867.288, 71.0869, 5.34071, 0, 0, 0, 1, 120, 255, 1),
(16343, 204281, 0, 1519, 5397, 1, 1, -8117.18, 714.309, 68.3818, 2.68781, 0, 0, 0, 1, 120, 255, 1),
(16346, 204281, 0, 1519, 5397, 1, 1, -8167.92, 810.203, 67.5973, 4.01426, 0, 0, 0, 1, 120, 255, 1),
(16347, 204281, 0, 1519, 5316, 1, 1, -8187.11, 754.599, 69.1876, 4.25861, 0, 0, 0, 1, 120, 255, 1),
(16348, 204281, 0, 1519, 5316, 1, 1, -8156.45, 719.075, 68.6385, 5.2709, 0, 0, 0, 1, 120, 255, 1),
(16349, 204281, 0, 1519, 1519, 1, 1, -8222.36, 789.281, 74.3298, 0, 0, 0, 0, 1, 120, 255, 1),
(19003, 204281, 0, 1519, 5316, 1, 1, -8257.42, 742.142, 70.8661, 4.45059, 0, 0, 0, 1, 120, 255, 1),
(18998, 204281, 0, 1519, 5316, 1, 1, -8199.96, 644.168, 67.7058, 3.12412, 0, 0, 0, 1, 120, 255, 1),
(18988, 204281, 0, 1519, 5316, 1, 1, -8235.52, 696.712, 67.2035, 4.97419, 0, 0, 0, 1, 120, 255, 1);
