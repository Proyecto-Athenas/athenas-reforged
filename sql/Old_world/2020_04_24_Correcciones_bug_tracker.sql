-- quest autocompletable
DELETE FROM `report_quest` WHERE id=24504;

-- item ID 62795
DELETE FROM `item_template` WHERE `entry`=62795;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES 
(62795, 0, 0, -1, 'Silversnap Swim Tonic', 23739, 1, 65536, 8192, 1.0028, 1, 5, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88026, 0, -1, 1500, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- respirar bajo el agua
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=88026 AND `spell_effect`=88416 AND `type`=2;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(88026, 88416, 2, 'For Quest: Maliciously Delicious in Swamp of Sorrows.');


-- quest Una distracción que desarma
DELETE FROM `item_template` WHERE `entry`=62398;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES 
(62398, 12, 0, -1, 'Holographic Projector', 49586, 1, 65600, 8192, 1.0106, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87020, 0, 0, 8000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, 'This projector is loaded with adolescent gnome fantasies.  This should be interesting.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `spell_scripts` WHERE `id`=87020;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(87020, 0, 0, 15, 84349, 1, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceEntry`=87020;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 87020, 0, 0, 23, 0, 5034, 0, 0, 0, 0, 0, '', ''),
(17, 0, 87020, 0, 1, 23, 0, 5698, 0, 0, 0, 0, 0, '', '');

DELETE FROM `creature_template` WHERE `entry`=45176;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(45176, 0, 0, 0, 0, 0, 34312, 0, 0, 0, 'Holographic Image', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=45176 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(45176, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 87316, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(45176, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject_template` WHERE `entry`=206397;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206397, 10, 9277, 'Third Bomb Cluster', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 43, 27761, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 46935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE `guid`=67605;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67605, 206397, 1, 0, 0, 1, 1, -10708.7, -2454.67, 123.371, 4.83456, 0, 0, 0, 1, 120, 255, 1);

DELETE FROM `gameobject_template` WHERE `entry`=206396;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206396, 10, 9277, 'Second Bomb Cluster', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 43, 27761, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 46935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);


DELETE FROM `gameobject` WHERE `guid`=67658;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67658, 206396, 1, 0, 0, 1, 1, -10682.9, -2451.73, 102.183, 4.83456, 0, 0, 0, 1, 120, 255, 1);

DELETE FROM `gameobject_template` WHERE `entry`=206395;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206395, 10, 9277, 'First Bomb Cluster', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 43, 27761, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 46935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE `guid`=67659;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67659, 206395, 1, 0, 0, 1, 1, -10593.6, -2439.11, 96.171, 0.0349062, 0, 0, 0, 1, 120, 255, 1);

DELETE FROM `creature_template` WHERE `entry`=46888;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46888, 0, 0, 0, 0, 0, 6977, 0, 0, 0, 'Unstable Bomb Bot', '', 'Interact', 0, 83, 83, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 0.357143, 1, 0, 509, 683, 0, 805, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 371, 535, 146, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=46888;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(46888, 56685, 1, 0);

DELETE FROM `creature` WHERE `id`=46888;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(106273, 46888, 1, 5034, 5698, 1, 1, 0, 0, -10682.5, -2434.02, 100.357, 2.28342, 90, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(106286, 46888, 1, 5034, 5034, 1, 1, 0, 0, -10649.4, -2460.81, 100.358, 3.92883, 90, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(106331, 46888, 1, 5034, 5698, 1, 1, 0, 0, -10628.3, -2440.76, 100.357, 2.03602, 90, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(106333, 46888, 1, 5034, 5698, 1, 1, 0, 0, -10617, -2468.14, 100.359, 3.55184, 90, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(106404, 46888, 1, 5034, 5698, 1, 1, 0, 0, -10577.7, -2454.86, 93.6031, 4.69852, 90, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(107741, 46888, 1, 5034, 5698, 1, 1, 0, 0, -10585.1, -2422.31, 93.794, 4.35688, 90, 10, 0, 42, 0, 1, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=46888 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46888, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 33, 46888, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(46888, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry`=46888;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(46888, 0, 0, 0, 1, 0, NULL);

DELETE FROM `creature` WHERE id IN (46692,46686,46689,46691,46688,46683,46684,46681);

-- Respawnea todos los Npcs y se cambio el eventAI por SmartAI ya que algunos no se podian atacar
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (18136);

DELETE FROM `smart_scripts` WHERE `entryorguid`=18136 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18136, 0, 0, 0, 2, 0, 100, 1, 0, 75, 0, 0, 11, 9616, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marsh Lurker - Between 0-75% Health - Cast \'Wild Regeneration\' (Phase 1) (No Repeat)');

DELETE FROM `creature` WHERE `id`=18136;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(182079, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1103.34, 5593.21, 57.3115, 3.6225, 90, 5, 0, 4126, 2486, 1, 0, 0, 0, 0),
(182080, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1106.63, 5743.61, 67.6155, 5.73537, 90, 5, 0, 4126, 2486, 1, 0, 0, 0, 0),
(182081, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1086.66, 5756.33, 58.0633, 4.81415, 90, 5, 0, 4126, 2486, 1, 0, 0, 0, 0),
(182082, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1158.75, 5736.32, 56.0117, 5.7992, 90, 5, 0, 4126, 2486, 1, 0, 0, 0, 0),
(182083, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1226.34, 5750.65, 41.7263, 2.82249, 90, 5, 0, 4126, 2486, 1, 0, 0, 0, 0),
(182084, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1215.01, 5794.07, 53.8263, 3.4954, 90, 5, 0, 4126, 2486, 1, 0, 0, 0, 0),
(182085, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1185.46, 5826.79, 41.9253, 1.08088, 90, 0, 0, 4126, 2486, 0, 0, 0, 0, 0),
(182086, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1285.89, 5840.23, 40.329, 1.88494, 90, 0, 0, 4126, 2486, 0, 0, 0, 0, 0),
(182087, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1338.08, 5896.28, 11.7771, 4.58199, 90, 0, 0, 4126, 2486, 0, 0, 0, 0, 0),
(182088, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1351.65, 5833.88, 18.4214, 4.05656, 90, 0, 0, 4126, 2486, 0, 0, 0, 0, 0),
(182089, 18136, 530, 3521, 3652, 1, 1, 0, 0, -1216.02, 5814.02, 3.78204, 3.34229, 90, 0, 0, 4126, 2486, 0, 0, 0, 0, 0);


-- elimina el aura ya que el Npc no se podia ver
DELETE FROM `creature_template_addon` WHERE entry=52294;

-- creature_questrelation entrega la mision , creature_involvedrelation la termina
DELETE FROM `creature_questrelation` WHERE `id`=24125 AND `quest`=11411;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(24125, 11411);

DELETE FROM `creature_involvedrelation` WHERE `id`=24129 AND `quest`=11411;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(24129, 11411);

-- elimina el registro de la mision 
DELETE FROM `report_quest` WHERE id=11411;


-- Viaje en alfombra mágica ID 11634
SET @YANNI := 25459;
SET @CARPET := 25460;
SET @Q_CarpetRide := 11636;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@YANNI,@CARPET) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@CARPET*100,@CARPET*101,@CARPET*100+1) AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)VALUES
(@YANNI,0,0,0,62,0,100,0,9162,0,0,0,11,45600,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yanni - Cast Call of the Carpet on player'),
(@YANNI,0,1,0,62,0,100,0,9162,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yanni - On Gossip option - Close gossip'),

(@CARPET,0,0,0,25,0,100,0,0,0,0,0,80,@CARPET*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Call actionlist 2546000 on spawn'),
(@CARPET,0,1,0,40,0,100,0,14,0,0,0,80,@CARPET*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - On WP reach - Call actionlist 2546001'),

(@CARPET*100,9,0,0,0,0,100,512,100,100,0,0,53,1,25460,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Flying Carpet - On Script - Start Waypoint'),

(@CARPET*100+1,9,0,0,0,0,100,0,0,0,0,0,15,@Q_CarpetRide,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Give quest credit'),
(@CARPET*100+1,9,1,0,0,0,100,0,500,500,0,0,28,45602,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Remove aura 45602'),
(@CARPET*100+1,9,2,0,0,0,100,0,100,100,0,0,28,46598,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Remove aura 46598'),
(@CARPET*100+1,9,3,0,0,0,100,0,200,200,0,0,41,200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Despawn');

DELETE FROM `waypoints` WHERE `entry`=@CARPET;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@CARPET,1,2751.96,6133.514,214.3789, 'Start WP'),
(@CARPET,2,2728.81,6146.472,213.5733, ''),
(@CARPET,3,2634.248,6188.829,185.9068, ''),
(@CARPET,4,2597.958,6255.91,159.7123, ''),
(@CARPET,5,2538.717,6307.643,138.9901, ''),
(@CARPET,6,2393.912,6321.946,85.79566, ''),
(@CARPET,7,2420.326,6461.604,89.3512, ''),
(@CARPET,8,2439.194,6494.39,84.93455, ''),
(@CARPET,9,2496.371,6496.766,78.76788, ''),
(@CARPET,10,2567.008,6550.509,79.90676, ''),
(@CARPET,11,2652.553,6572.071,58.54562, ''),
(@CARPET,12,2725.122,6642.299,41.57339, ''),
(@CARPET,13,2773.236,6694.341,25.49007, ''),
(@CARPET,14,2797.658,6718.523,9.212306, 'Run SmartAI script 2546001');

DELETE FROM `creature_template_addon` WHERE `entry` IN (@CARPET,@YANNI);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES
(@CARPET,257, '61307'),
(@YANNI,257,NULL);

-- Update gossip_menu to proper entry from sniff (delete wrong one 21233)
UPDATE `creature_template` SET `gossip_menu_id`=9162,`AiName`= 'SmartAI' WHERE `entry`=@YANNI;
UPDATE `creature_template` SET `exp`=2,`minlevel`=72,`maxlevel`=72,`unit_flags`=`unit_flags`|520,`speed_run`=1.42857,`VehicleId`=126,`AiName`='SmartAI',`InhabitType`=5 WHERE `entry`=@CARPET;

UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1,`gender`=2 WHERE `modelid`=28082; -- Amazing Flying Carpet

DELETE FROM `gossip_menu` WHERE `entry` IN (21233,9162);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9162,12417);

UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `Id`=@Q_CarpetRide;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9162;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9162;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,9162,0,0,9,@Q_CarpetRide,0,0,0,'Show gossip option 9162 if player has quest Carpet Ride');

DELETE FROM `spell_target_position` WHERE `id`=45601;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(45601,571,2753.64,6131.41,210.4463,2.892622);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=45602;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,45602,0,0,31,0,3,@CARPET,0,0,0, '', 'Ride Carpet - Target Amazing Flying Carpet');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@CARPET;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@CARPET,46598,1,0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=2546000 AND `source_type`=9 AND `id`=0 AND `action_type`=11;

DELETE FROM `report_quest` WHERE id=11634;



-- Maestro del viento To'bor -- http://wotlk.openwow.com/npc=25289
-- Warsong Wind Rider SAI
SET @ENTRY := 25286;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Reset - Set Fly Off");
UPDATE `creature_template` SET `InhabitType`=4 WHERE  `entry`=25286;

-- Warsong Wind Rider SAI
SET @GUID := -355272;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=25286;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,25,0,100,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Reset - Set Fly Off"),
(@GUID,0,1,0,38,0,100,0,1,1,0,0,80,35527200,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Data Set 1 1 - Run Script"),
(@GUID,0,2,3,40,0,100,0,9,355272,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Waypoint 9 Reached - Set Fly On"),
(@GUID,0,3,0,61,0,100,0,9,355272,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Waypoint 9 Reached - Set Run On"),
(@GUID,0,4,0,40,0,100,0,1,355272,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Waypoint 1 Reached - Pause Waypoint"),
(@GUID,0,5,6,40,0,100,0,42,355272,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Waypoint 42 Reached - Set Run Off"),
(@GUID,0,6,0,61,0,100,0,42,355272,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Waypoint 42 Reached - Set Fly Off"),
(@GUID,0,7,8,40,0,100,0,46,355272,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.19912,"Warsong Wind Rider - On Waypoint 46 Reached - Set Orientation 2,19912"),
(@GUID,0,8,0,61,0,100,0,46,355272,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Waypoint 46 Reached - Set Active Off");

-- Actionlist SAI
SET @ENTRY := 35527200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Script - Set Active On"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Script - Say Line 0"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,53,0,355272,0,0,0,1,1,0,0,0,0,0,0,0,"Warsong Wind Rider - On Script - Start Waypoint");

UPDATE `creature` SET `MovementType`=0 WHERE  `guid`=355278;
UPDATE `creature_addon` SET `path_id`=0 WHERE  `guid`=355278;

-- Wind Master To'bor SAI
SET @ENTRY := 25289;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,25289,1,0,0,1,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Reset - Start Waypoint"),
(@ENTRY,0,1,0,64,0,100,0,0,0,0,0,54,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Gossip Hello - Pause Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,9,25289,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Waypoint 9 Reached - Run Script");

-- Actionlist SAI
SET @ENTRY := 2528900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,12000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.14906,"Wind Master To'bor - On Script - Set Orientation 5,14906"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Script - Set Active On"),
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Script - Say Line 0"),
(@ENTRY,9,4,0,0,0,100,0,3000,3000,0,0,45,1,1,0,0,0,0,10,355272,25286,0,0,0,0,0,"Wind Master To'bor - On Script - Set Data 1 1"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wind Master To'bor - On Script - Set Active Off");

DELETE FROM `creature_text` WHERE `entry` IN (25289, 25286);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(25286, 0, 0, 'Yes sir!', 12, 1, 100, 0, 0, 0, 'Warsong Wind Rider', 24522),
(25289, 0, 0, 'Aye, solja! Lift off time!', 12, 1, 100, 1, 0, 0, 'Wind Master To\'bor', 24521);

DELETE FROM `waypoints` WHERE `entry`=25289;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(25289, 1, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 2, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 3, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 4, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 5, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 6, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 7, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 8, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 9, 2767.55, 6112.47, 208.234, 'Wind Master To''bor'),
(25289, 10, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 11, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 12, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 13, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 14, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 15, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 16, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 17, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 18, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 19, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 20, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 21, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 22, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 23, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 24, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 25, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 26, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 27, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 28, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 29, 2760.18, 6107.54, 208.576, 'Wind Master To''bor'),
(25289, 30, 2802.31, 6147.69, 208.197, 'Wind Master To''bor'),
(25289, 31, 2760.18, 6107.54, 208.576, 'Wind Master To''bor');

DELETE FROM `waypoints` WHERE `entry`=355272;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(355272, 1, 2772.24, 6103.7, 209.008, 'Warsong Wind Rider'),
(355272, 2, 2766.12, 6109.4, 208.372, 'Warsong Wind Rider'),
(355272, 3, 2763.93, 6113.74, 208.298, 'Warsong Wind Rider'),
(355272, 4, 2769.51, 6121.43, 208.123, 'Warsong Wind Rider'),
(355272, 5, 2793.61, 6143.72, 208.129, 'Warsong Wind Rider'),
(355272, 6, 2801.04, 6151.28, 208.13, 'Warsong Wind Rider'),
(355272, 7, 2801.21, 6154.14, 208.287, 'Warsong Wind Rider'),
(355272, 8, 2797.93, 6153.58, 208.192, 'Warsong Wind Rider'),
(355272, 9, 2785.39, 6137.84, 208.123, 'Warsong Wind Rider'),
(355272, 10, 2775.29, 6128.2, 208.123, 'Warsong Wind Rider'),
(355272, 11, 2765.01, 6118.83, 216.447, 'Warsong Wind Rider'),
(355272, 12, 2746.45, 6098.37, 238.299, 'Warsong Wind Rider'),
(355272, 13, 2724.52, 6069.8, 238.299, 'Warsong Wind Rider'),
(355272, 14, 2707, 6047.38, 238.299, 'Warsong Wind Rider'),
(355272, 15, 2680.77, 6017.05, 238.299, 'Warsong Wind Rider'),
(355272, 16, 2643.17, 5992.25, 216.577, 'Warsong Wind Rider'),
(355272, 17, 2617.43, 5969.46, 190.605, 'Warsong Wind Rider'),
(355272, 18, 2594.97, 5950.58, 168.994, 'Warsong Wind Rider'),
(355272, 19, 2577.94, 5924.14, 149.911, 'Warsong Wind Rider'),
(355272, 20, 2550.24, 5897.53, 149.911, 'Warsong Wind Rider'),
(355272, 21, 2562.29, 5866.69, 149.911, 'Warsong Wind Rider'),
(355272, 22, 2596.48, 5847.32, 149.911, 'Warsong Wind Rider'),
(355272, 23, 2626.64, 5851.95, 149.911, 'Warsong Wind Rider'),
(355272, 24, 2647.13, 5873.16, 149.911, 'Warsong Wind Rider'),
(355272, 25, 2645.8, 5899.81, 149.911, 'Warsong Wind Rider'),
(355272, 26, 2640.92, 5934.65, 149.911, 'Warsong Wind Rider'),
(355272, 27, 2627.54, 5981.53, 138.022, 'Warsong Wind Rider'),
(355272, 28, 2646.58, 6020.77, 125.022, 'Warsong Wind Rider'),
(355272, 29, 2650.72, 6063.53, 100.244, 'Warsong Wind Rider'),
(355272, 30, 2658.58, 6107.69, 80.8551, 'Warsong Wind Rider'),
(355272, 31, 2650.11, 6144.21, 80.8551, 'Warsong Wind Rider'),
(355272, 32, 2644.45, 6182.45, 80.8551, 'Warsong Wind Rider'),
(355272, 33, 2657.69, 6217.98, 91.7996, 'Warsong Wind Rider'),
(355272, 34, 2675, 6225.02, 121.827, 'Warsong Wind Rider'),
(355272, 35, 2699.94, 6246.2, 121.827, 'Warsong Wind Rider'),
(355272, 36, 2721.17, 6228.85, 152.188, 'Warsong Wind Rider'),
(355272, 37, 2731.05, 6205.52, 168.188, 'Warsong Wind Rider'),
(355272, 38, 2752.55, 6184.18, 181.438, 'Warsong Wind Rider'),
(355272, 39, 2764.62, 6189.2, 199.411, 'Warsong Wind Rider'),
(355272, 40, 2779.31, 6168.48, 221.641, 'Warsong Wind Rider'),
(355272, 41, 2792.78, 6160.51, 219.669, 'Warsong Wind Rider'),
(355272, 42, 2797.35, 6154.19, 209.197, 'Warsong Wind Rider'),
(355272, 43, 2790.22, 6145.23, 208.123, 'Warsong Wind Rider'),
(355272, 44, 2778.24, 6132.59, 208.123, 'Warsong Wind Rider'),
(355272, 45, 2764.71, 6113.99, 208.27, 'Warsong Wind Rider'),
(355272, 46, 2772.627197, 6102.89990, 209.02432, 'Warsong Wind Rider');

-- Adiós, pezqueñín
DELETE FROM `creature` WHERE `guid`=434355;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(434355, 36210, 1, 16, 4821, 1, 1, 30087, 0, 3544.24, -6310.01, 0.837, 1.466, 90, 0, 0, 307, 856, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=36210;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(36210, 0, 0, 65537, 1, 0, '');
