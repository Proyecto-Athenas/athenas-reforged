DELETE FROM `item_template` WHERE `entry`=42769;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (42769, 12, 0, 0, 'Spear of Hodir', 44246, 1, 64, 8192, 1.026, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56671, 0, 0, 20000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- Quest: Thrusting Hodir's Spear - 13003
SET @entry := 30275;

UPDATE `creature_template` SET `unit_flags` = '32896', `ScriptName` = 'npc_wild_wyrm' WHERE `entry` =@entry;
UPDATE `creature_template` SET  `npcflag`='16777216' WHERE entry IN (30275);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN(13,17) AND `SourceEntry` IN(56673,56671);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '1', '56673', '0', '0', '31', '0', '3', @entry, '0', '0', '0', '0', '', 'Fight Wyrm can be casted on Wild Wyrm'),
('17', '0', '56671', '0', '0', '31', '1', '3', @entry, '0', '0', '0', '0', '', 'Spear of Hodir can only casted on Wild Wyrm');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (56689, 60533, 56690, 60586, 60864, 60776, 56705, 60881);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('56689', 'spell_grip'),
('60533', 'spell_grab_on'),
('56690', 'spell_thrust_spear'),
('60586', 'spell_mighty_spear_thrust'),
('60864', 'spell_jaws_of_death_and_spell_claw_swipe_damage'),
('60776', 'spell_jaws_of_death_and_spell_claw_swipe_damage'),
('56705', 'spell_claw_swipe_check'),
('60881', 'spell_fatal_strike');

DELETE FROM `creature_text` WHERE `entry` =@entry;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(@entry, '0', '0', '%s swipes at you with his claws!', '42', '0', '100', '0', '0', '0', '', '32763'),
(@entry, '1', '0', 'DODGED!', '42', '0', '100', '0', '0', '0', '', '32794'),
(@entry, '2', '0', '%s shrieks in pain and twists around, grabbing you with his mouth!', '42', '0', '100', '0', '0', '0', '', '32813'),
(@entry, '3', '0', 'Your Grip is Failing!', '42', '0', '100', '0', '0', '0', '', '32784'),
(@entry, '4', '0', 'FATAL STRIKE MISSED! KEEP PRYING!', '42', '0', '100', '0', '0', '0', '', '32795');

DELETE FROM `waypoint_data` WHERE `id`=@entry;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES
(@entry, '1', '7318.73', '-2526.11', '1017.82', '0', '0', '0', '0', '100', '0'),
(@entry, '2', '7232.49', '-2807.07', '1152.16', '0', '0', '0', '0', '100', '0'),
(@entry, '3', '6875.99', '-3078.42', '1092.29', '0', '0', '0', '0', '100', '0'),
(@entry, '4', '7126.63', '-3304.31', '1002.14', '0', '0', '0', '0', '100', '0'),
(@entry, '5', '7303.03', '-3031.33', '1006.74', '0', '0', '0', '0', '100', '0'),
(@entry, '6', '7297.66', '-2765.56', '886.85', '0', '0', '0', '0', '100', '0');