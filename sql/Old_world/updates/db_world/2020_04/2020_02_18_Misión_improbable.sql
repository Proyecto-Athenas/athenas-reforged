-- Misión improbable ID: 13808
-- elimina el reporte
DELETE FROM `report_quest` WHERE `id`=13808;
-- agregado SmartAI 
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE entry IN (33859,33889);

-- cambiado el nombre y los data0, data1
UPDATE `gameobject_template` SET `data0`='1604', `data1`='20', `name`='Smoldering Brazier' WHERE entry IN (301006);

-- respawn object 301006
DELETE FROM `gameobject` WHERE `id`=301006;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (27660, 301006, 1, 331, 430, 1, 3, 2610.64, -3061.02, 156.34, 0, 0, 0, 0, 1, 120, 255, 1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=33859 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=1 AND `ConditionValue1`=33889 AND `ConditionValue2`=10 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33859, 0, 1, 29, 1, 33889, 10, 0, 1, 0, 0, '', NULL);

-- spell condicion 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=63829 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=33859 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 63829, 0, 0, 31, 0, 3, 33859, 0, 0, 0, 0, '', NULL);

-- texto del Npc
DELETE FROM `creature_text` WHERE `entry`=33889 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (33889, 0, 0, 'When this is over, you may want to brush up on your secrecy skills....', 12, 0, 100, 1, 0, 0, '', 34398);

-- agregados datos del item
DELETE FROM `item_template` WHERE `entry`=45710;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (45710, 12, 0, 0, 'Secret Signal Powder', 1168, 1, 131136, 8192, 0.9633, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63829, 0, 0, 15000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- SmartAI 
DELETE FROM `smart_scripts` WHERE `entryorguid`=33859 AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(33859, 0, 0, 0, 8, 0, 100, 0, 63829, 0, 0, 0, 12, 33889, 8, 60000, 0, 0, 0, 8, 0, 0, 0, 2590.79, -3061.49, 151.782, 0.609639, 'Smoldering Brazier Bunny - On Spellhit - Summon Krokk');

-- SmartAI 
DELETE FROM `smart_scripts` WHERE `entryorguid`=33889 AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(33889, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 75, 102921, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krokk - On Just Summoned - Add Stealth'),
(33889, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 83, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krokk - On Just Summoned - Remove NPC Flag'),
(33889, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 3388900, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krokk - On Just Summoned - Walk WP'),
(33889, 0, 3, 4, 40, 0, 100, 0, 3, 3388900, 0, 0, 28, 102921, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krokk - On WP Reached - Remove Aura'),
(33889, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krokk - On WP Reached - Say'),
(33889, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 81, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krokk - On WP Reached - Add NPC Flag');

-- agregados los waypoints de la creatura ID 33889
DELETE FROM `waypoints` WHERE `entry`=3388900 AND `pointid` IN (1,2,3);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (3388900, 1, 2597.26, -3060.83, 152.917, 'Durak WP');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (3388900, 2, 2602.96, -3060.79, 155.693, 'Durak WP');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (3388900, 3, 2605.51, -3059.49, 156.124, 'Durak WP');
