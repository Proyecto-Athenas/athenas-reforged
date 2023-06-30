-- respawn los ladrones de orgrimmar ya que sus guid eran demaciado altos
DELETE FROM `creature` WHERE id=42594;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(69264, 42594, 1, 1637, 1637, 1, 1, 0, 42594, 2316.91, -4762.73, 123.542, 1.63228, 300, 0, 0, 222, 0, 0, 0, 0, 0, 0),
(69268, 42594, 1, 1637, 1637, 1, 1, 0, 42594, 2347.83, -4794.53, 123.572, 1.63228, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(127628, 42594, 1, 1637, 1637, 1, 1, 0, 42594, 2262, -4622.97, 92.1194, 1.63228, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(99915, 42594, 1, 1637, 5168, 1, 1, 0, 42594, 2083.45, -4787.74, 27.838, 1.63228, 300, 0, 0, 222, 0, 0, 0, 0, 0, 0),
(69272, 42594, 1, 1637, 5168, 1, 1, 0, 42594, 2047.27, -4643.82, 27.8614, 1.63228, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(69266, 42594, 1, 1637, 5171, 1, 1, 0, 42594, 1951.7, -4208.95, 37.2078, 1.63228, 300, 0, 0, 222, 0, 0, 0, 0, 0, 0),
(99911, 42594, 1, 1637, 5167, 1, 1, 0, 42594, 1967.44, -4390.15, 29.0366, 1.63228, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(99919, 42594, 1, 1637, 5167, 1, 1, 0, 42594, 1745.27, -4529.09, 30.5657, 1.63228, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(320132, 42594, 1, 1637, 5170, 1, 1, 0, 42594, 1501.5, -4378.17, 23.8505, 2.98316, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(99918, 42594, 1, 1637, 5170, 1, 1, 0, 42594, 1494.36, -4373.72, 25.2322, 0.75263, 300, 0, 0, 222, 0, 0, 0, 0, 0, 0),
(99910, 42594, 1, 1637, 5170, 1, 1, 0, 42594, 1692.78, -4350.69, 21.1209, 0.75263, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(76753, 42594, 1, 1637, 1637, 1, 1, 0, 42594, 2316.91, -4762.73, 123.542, 1.63228, 300, 0, 0, 222, 0, 0, 0, 0, 0, 0),
(99917, 42594, 1, 1637, 1637, 1, 1, 0, 42594, 2347.83, -4794.53, 123.572, 1.63228, 300, 0, 0, 198, 0, 0, 0, 0, 0, 0),
(99909, 42594, 1, 1637, 1637, 1, 1, 0, 42594, 2262, -4622.97, 92.1194, 1.63228, 300, 3, 0, 198, 0, 1, 0, 0, 0, 0),
(161944, 42594, 1, 1637, 5168, 1, 1, 0, 42594, 2083.45, -4787.74, 27.838, 1.63228, 300, 3, 0, 222, 0, 1, 0, 0, 0, 0),
(161939, 42594, 1, 1637, 5168, 1, 1, 0, 42594, 2047.27, -4643.82, 27.8614, 1.63228, 300, 3, 0, 198, 0, 1, 0, 0, 0, 0),
(138024, 42594, 1, 1637, 5171, 1, 1, 0, 42594, 1951.7, -4208.95, 37.2078, 1.63228, 300, 3, 0, 222, 0, 1, 0, 0, 0, 0),
(127483, 42594, 1, 1637, 5167, 1, 1, 0, 42594, 1967.44, -4390.15, 29.0366, 1.63228, 300, 3, 0, 198, 0, 1, 0, 0, 0, 0),
(127484, 42594, 1, 1637, 5167, 1, 1, 0, 42594, 1745.27, -4529.09, 30.5657, 1.63228, 300, 3, 0, 198, 0, 1, 0, 0, 0, 0),
(127485, 42594, 1, 1637, 5170, 1, 1, 0, 42594, 1501.5, -4378.17, 23.8505, 2.98316, 300, 3, 0, 198, 0, 1, 0, 0, 0, 0),
(127481, 42594, 1, 1637, 5170, 1, 1, 0, 42594, 1494.36, -4373.72, 25.2322, 0.75263, 300, 3, 0, 222, 0, 1, 0, 0, 0, 0),
(127482, 42594, 1, 1637, 5170, 1, 1, 0, 42594, 1692.78, -4350.69, 21.1209, 0.75263, 300, 3, 0, 198, 0, 1, 0, 0, 0, 0);

-- elimina el reporte de la mision https://es.wowhead.com/quest=26235/hasta-los-ladrones-tienen-hambre
DELETE FROM `report_quest` WHERE id=26235;
-- aumente el % del drop para el item 42594
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-99.999 WHERE `entry`=42594 AND `item`=57879;

-- ingrese los datos en la tabla ya que no habia nada
DELETE FROM `item_template` WHERE `entry`=57879;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (57879, 12, 0, -1, 'Horde Infantry Rations', 13110, 1, 0, 8192, 0.9878, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- agregue la condicion para que puedas lotear el iten cuando tengas la mision
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup`=42594 AND `SourceEntry`=57879;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(1, 42594, 57879, 0, 0, 2, 0, 57879, 1, 1, 1, 0, 0, '', '');
