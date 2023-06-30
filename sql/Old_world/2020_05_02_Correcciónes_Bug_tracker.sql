
-- https://db.wowlatinoamerica.com/?item=44113#contains

DELETE FROM `item_loot_template` WHERE `entry`=44113 AND `item`=43016;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(44113, 43016, 75, 1, 0, 1, 1);

-- 44113,33871,33925,34834,43007,43016,44114,44228 item_template

DELETE FROM `item_template` WHERE `entry` IN (44113,33871,33925,34834,43007,43016,44114,44228);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES 
(33871, 9, 5, -1, 'Recipe: Stormchops', 6270, 3, 64, 8192, 1.0325, 1, 1, 20000, 5000, 0, -1, -1, 60, 0, 185, 300, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, 0, -1, 43758, 6, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Teaches you how to cook Stormchops.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(33925, 9, 5, -1, 'Recipe: Delicious Chocolate Cake', 6270, 3, 64, 8192, 1.01, 1, 1, 20000, 5000, 0, -1, -1, 5, 0, 185, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, 0, -1, 43779, 6, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Teaches you how to bake a Delicious Chocolate Cake.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(34834, 9, 5, -1, 'Recipe: Captain Rumsey\'s Lager', 15274, 2, 64, 8192, 0.9548, 1, 1, 20000, 5000, 0, -1, -1, 20, 0, 185, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, -1, -1, 0, -1, 45695, 6, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Teaches you how to brew Captain Rumsey\'s Lager.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(43007, 7, 11, -1, 'Northern Spices', 56115, 1, 0, 8192, 0.9964, 1, 10, 0, 0, 0, -1, -1, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(43016, 10, 0, -1, 'Dalaran Cooking Award', 32746, 2, 0, 8192, 0.9559, 1, 1, 0, 0, 0, 262143, -1, 70, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Redeem at the Dalaran Cooking Supplier.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(44113, 0, 0, 0, 'Small Spice Bag', 55689, 1, 65540, 8192, 0.9819, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(44114, 0, 5, -1, 'Old Spices', 56112, 1, 0, 8192, 0.9855, 1, 1, 20, 5, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60106, 0, -1, 10000, 11, 1000, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595),
(44228, 0, 5, -1, 'Baby Spice', 56118, 1, 0, 8192, 0.9892, 1, 1, 20, 5, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60122, 0, -1, 10000, 11, 1000, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


-- https://es.wowhead.com/item=45724/monedero-de-campe%C3%B3n

DELETE FROM `item_loot_template` WHERE `entry`=45724 AND `item`=44990;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45724, 44990, 90, 1, 0, 1, 1);

-- SmartAI , Waypoints , creature_template_addon
DELETE FROM `creature_template` WHERE `entry`=34578;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(34578, 0, 0, 0, 0, 0, 29273, 0, 0, 0, 'Rocco Whipshank', 'Caravan Master', '', 10528, 12, 12, 0, 0, 1619, 1619, 3, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 770, 2048, 2048, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=34578;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(34578, 0, 0, 0, 0, 0, NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34578 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34578, 0, 0, 1, 62, 0, 100, 0, 10528, 0, 0, 0, 33, 52445, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Select - Call Killed Credit'),
(34578, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 12, 52209, 1, 500000, 0, 0, 0, 8, 0, 0, 0, -378.813, -2680.23, 95.8237, 6.26315, 'On Link - Summon Creature'),
(34578, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, 52212, 1, 500000, 0, 0, 0, 8, 0, 0, 0, -393.543, -2679.55, 95.6778, 6.22802, 'On Link - Summon Creature'),
(34578, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 12, 52211, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -401.186, -2679.21, 95.6134, 6.22802, 'On Link - Summon Creature'),
(34578, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Link - Close Gossip'),
(34578, 0, 5, 0, 62, 0, 100, 0, 10528, 1, 0, 0, 80, 3457800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Select 1 - Call Action List');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3457800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3457800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Update - Set Npc Flag 0'),
(3457800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Update - Close Gossip'),
(3457800, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 65662, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Update - Invoker Cast - Summon Kodo Pt 2'),
(3457800, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Update - Say 0'),
(3457800, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Update - Say 1'),
(3457800, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Update - Set Npc Flag 3');

-- menus
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10528;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(10528, 0, 0, 'I\'m ready. Let\'s go!', 1, 1, 0, 0, 0, 0, '', 45852, NULL),
(10528, 1, 0, 'Bring it on, Rocco.', 1, 1, 0, 0, 0, 0, '', 34817, NULL);

-- condiciones de los gossip menu
DELETE FROM `conditions` WHERE `SourceGroup`=10528;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 10528, 0, 0, 0, 29, 0, 52209, 20, 0, 1, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken'),
(15, 10528, 0, 0, 0, 9, 0, 29109, 0, 0, 0, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken'),
(15, 10528, 1, 0, 0, 9, 0, 13975, 0, 0, 0, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken');

-- SmartAI y Waypoints
DELETE FROM `creature_template` WHERE `entry`=52209;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52209, 0, 0, 0, 0, 0, 29282, 0, 0, 0, 'Chief Caravan Kodo', '', 'vehichleCursor', 0, 1, 1, 0, 0, 35, 35, 16777216, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 127, 1, 0, 0, 0, '', 15595);


DELETE FROM `waypoints` WHERE `entry`=52209;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(52209, 1, -378.494, -2679.86, 95.8237, ''),
(52209, 2, -369.863, -2680.89, 95.8237, ''),
(52209, 3, -346.82, -2676.88, 95.8577, ''),
(52209, 4, -328.425, -2679.06, 94.8315, ''),
(52209, 5, -288.97, -2683.76, 93.0631, ''),
(52209, 6, -268.009, -2685.28, 94.6106, ''),
(52209, 7, -246.05, -2686.24, 95.8782, ''),
(52209, 8, -214.317, -2684.74, 95.7422, ''),
(52209, 9, -165.289, -2679.73, 92.8106, ''),
(52209, 10, -116.177, -2684.68, 95.8288, ''),
(52209, 11, -64.8775, -2688.12, 95.8316, ''),
(52209, 12, -30.0543, -2715.16, 93.4883, ''),
(52209, 13, -10.0416, -2719.44, 91.815, ''),
(52209, 14, 45.3845, -2715.48, 91.667, ''),
(52209, 15, 104.435, -2709.46, 91.7273, ''),
(52209, 16, 171.505, -2699.85, 91.667, ''),
(52209, 17, 289.263, -2678.02, 91.667, ''),
(52209, 18, 333.125, -2665.22, 91.667, ''),
(52209, 19, 334.626, -2613.04, 91.6677, ''),
(52209, 20, 326.183, -2546.32, 92.0737, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52209 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52209, 0, 0, 1, 8, 0, 100, 512, 46598, 0, 0, 0, 53, 1, 52209, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52209, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 52212, 15, 0, 0, 0, 0, 0, ''),
(52209, 0, 2, 3, 40, 0, 100, 512, 20, 0, 0, 0, 33, 52303, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, ''),
(52209, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- npc_spellclick_spells para el Npc ID 52209
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=52209 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(52209, 46598, 1, 0);

-- condiciones 
DELETE FROM `conditions` WHERE `SourceGroup`=52209;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 52209, 46598, 0, 0, 9, 0, 29109, 0, 0, 0, 0, 0, '', '');

-- SmartAI y Waypoints
DELETE FROM `waypoints` WHERE `entry`=52212;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(52212, 1, -378.494, -2679.86, 95.8237, ''),
(52212, 2, -369.863, -2680.89, 95.8237, ''),
(52212, 3, -346.82, -2676.88, 95.8577, ''),
(52212, 4, -328.425, -2679.06, 94.8315, ''),
(52212, 5, -288.97, -2683.76, 93.0631, ''),
(52212, 6, -268.009, -2685.28, 94.6106, ''),
(52212, 7, -246.05, -2686.24, 95.8782, ''),
(52212, 8, -214.317, -2684.74, 95.7422, ''),
(52212, 9, -165.289, -2679.73, 92.8106, ''),
(52212, 10, -116.177, -2684.68, 95.8288, ''),
(52212, 11, -64.8775, -2688.12, 95.8316, ''),
(52212, 12, -30.0543, -2715.16, 93.4883, ''),
(52212, 13, -10.0416, -2719.44, 91.815, ''),
(52212, 14, 45.3845, -2715.48, 91.667, ''),
(52212, 15, 104.435, -2709.46, 91.7273, ''),
(52212, 16, 171.505, -2699.85, 91.667, ''),
(52212, 17, 289.263, -2678.02, 91.667, ''),
(52212, 18, 333.125, -2665.22, 91.667, ''),
(52212, 19, 334.626, -2613.04, 91.6677, ''),
(52212, 20, 333.861, -2557.79, 91.6857, ''),
(52212, 21, 356.919, -2551.28, 92.2896, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=52212 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52212, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 1, 52212, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52212, 0, 1, 2, 40, 0, 100, 0, 21, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52212, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 52211, 10, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=52212;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52212, 0, 0, 0, 0, 0, 29225, 0, 0, 0, 'Mor\'shan Caravan Kodo', '', '', 7945, 16, 16, 0, 0, 106, 106, 0, 1, 1.14286, 2, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 127, 1, 0, 0, 0, '', 15595);

-- SmartAI
DELETE FROM `creature_template` WHERE `entry`=52211;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52211, 0, 0, 0, 0, 0, 36555, 0, 0, 0, 'Crossroads Caravan Cart', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 127, 1, 0, 0, 0, '', 15595);


DELETE FROM `smart_scripts` WHERE `entryorguid`=52211 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52211, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 19, 52212, 10, 0, 0, 0, 0, 0, ''),
(52211, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- eliminado ya que no es necesario su spawn
DELETE FROM `creature` WHERE `guid` IN (77269,77338);

-- eliminado ya que no es necesario su spawn ID 52314 52316 52220 y ID 34578 coordenadas corregidas.
DELETE FROM `creature` WHERE `id` IN (34578,52220,52314,52316);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(117377, 34578, 1, 17, 380, 1, 1, 0, 0, -382.716, -2691, 95.9074, 1.74485, 300, 0, 0, 247, 0, 0, 0, 0, 0, 0),
(140102, 34578, 1, 17, 1704, 1, 1, 0, 0, 221.503, -2936.21, 92.0161, 3.33358, 90, 0, 0, 247, 0, 0, 0, 0, 0, 0);

-- eliminado ya que no es necesario su spawn
DELETE FROM `creature` WHERE `id`=34718;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140983, 34718, 647, 0, 0, 1, 1, 0, 0, 13.7451, -5.12846, -24.0452, 0.139626, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- eliminado ya que no es necesario su spawn
DELETE FROM `creature` WHERE `id`=34719;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140985, 34719, 647, 0, 0, 1, 1, 0, 0, 7.62309, -5.02532, -17.6702, 4.92183, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- eliminado ya que no es necesario su spawn
DELETE FROM `creature` WHERE `id`=34721;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140986, 34721, 647, 0, 0, 1, 1, 0, 0, -0.919197, -6.16422, -23.6729, 3.57792, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- eliminado ya que no es necesario su spawn
DELETE FROM `creature` WHERE `id`=34715;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(140984, 34715, 647, 0, 0, 1, 1, 0, 0, -9.18316, -7.77573, -17.217, 3.28122, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- reducido a 25, cantidad anterior 59 
DELETE FROM `creature` WHERE `id`=3379;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(897039, 3379, 1, 17, 17, 1, 65535, 0, 3379, 654.568, -2207.64, 94.4773, 0.397854, 90, 0, 0, 386, 0, 0, 0, 0, 0, 0),
(897038, 3379, 1, 17, 17, 1, 1, 0, 3379, 600.593, -2238, 91.6668, 1.2864, 90, 0, 0, 356, 0, 0, 0, 0, 0, 0),
(897037, 3379, 1, 17, 17, 1, 1, 0, 3379, 570.449, -2229.2, 92.7363, 1.0363, 90, 0, 0, 356, 0, 0, 0, 0, 0, 0),
(897036, 3379, 1, 0, 0, 1, 1, 0, 0, 645.281, -2278.9, 91.7917, 4.68753, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897035, 3379, 1, 0, 0, 1, 1, 0, 0, 597.604, -2273.72, 92.0856, 1.03288, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897034, 3379, 1, 0, 0, 1, 1, 0, 0, 545.685, -2152.29, 92.4504, 3.8191, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897033, 3379, 1, 0, 0, 1, 1, 0, 0, 347.432, -2185.26, 211.129, 3.98026, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897032, 3379, 1, 0, 0, 1, 1, 0, 0, 297.921, -2178.13, 213.073, 2.65367, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897031, 3379, 1, 0, 0, 1, 1, 0, 0, 427.57, -2187.28, 170.652, 2.65431, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897030, 3379, 1, 0, 0, 1, 1, 0, 0, 346.159, -2276.73, 243.183, 0.828355, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897029, 3379, 1, 0, 0, 1, 1, 0, 0, 263.754, -2216.96, 213.179, 1.40941, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897028, 3379, 1, 0, 0, 1, 1, 0, 0, 228.853, -2224, 211.551, 0.689711, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897027, 3379, 1, 0, 0, 1, 1, 0, 0, 260.942, -2271.98, 212.674, 1.14016, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897026, 3379, 1, 0, 0, 1, 1, 0, 0, 276.582, -2319.52, 213.075, 0.379061, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897025, 3379, 1, 0, 0, 1, 1, 0, 0, 391.214, -2312.97, 206.436, 3.86327, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897024, 3379, 1, 0, 0, 1, 1, 0, 0, 388.076, -2359.72, 188.048, 0.929746, 90, 20, 0, 1, 0, 1, 0, 0, 0, 0),
(897023, 3379, 1, 0, 0, 1, 1, 4198, 0, 331.511, -2289.28, 241.433, 5.40277, 90, 20, 0, 198, 0, 1, 0, 0, 0, 0),
(897022, 3379, 1, 0, 0, 1, 1, 4199, 0, 403.354, -2218.13, 183.511, 3.62098, 90, 20, 0, 198, 0, 1, 0, 0, 0, 0),
(897021, 3379, 1, 0, 0, 1, 1, 4199, 0, 337.812, -2247.4, 239.492, 2.79446, 90, 20, 0, 198, 0, 1, 0, 0, 0, 0),
(897020, 3379, 1, 0, 0, 1, 1, 4199, 0, 400.409, -2062.35, 133.163, 0.366145, 90, 20, 0, 222, 0, 1, 0, 0, 0, 0),
(897019, 3379, 1, 0, 0, 1, 1, 4199, 0, 454.071, -2085.9, 138.776, 1.93902, 90, 20, 0, 222, 0, 1, 0, 0, 0, 0),
(897018, 3379, 1, 0, 0, 1, 1, 4198, 0, 325.183, -2177.55, 213.798, 5.09302, 90, 20, 0, 222, 0, 1, 0, 0, 0, 0),
(897017, 3379, 1, 0, 0, 1, 1, 4198, 0, 317.756, -2212.12, 213.197, 5.17714, 90, 20, 0, 198, 0, 1, 0, 0, 0, 0),
(897016, 3379, 1, 0, 0, 1, 1, 4199, 0, 389.754, -2218.13, 184.113, 5.29816, 90, 20, 0, 198, 0, 1, 0, 0, 0, 0),
(897015, 3379, 1, 0, 0, 1, 1, 4198, 0, 602.158, -2194.04, 91.7917, 2.05048, 90, 20, 0, 222, 0, 1, 0, 0, 0, 0);
