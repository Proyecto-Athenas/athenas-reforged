-- Primera mision tanto para la hora como la alianza
-- menus y smartAi para el teleport
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (52382,52408) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52382, 0, 0, 0, 64, 0, 100, 0, 12760, 0, 0, 0, 33, 52382, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Parte avale Queste Staff lagendery'),
(52382, 0, 1, 0, 62, 0, 100, 0, 12760, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8449.81, -4249.18, -208.44, 3.216, 'Ziradormi teleport'),
(52408, 0, 0, 0, 64, 0, 100, 0, 12763, 0, 0, 0, 33, 52408, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Parte avale Queste Staff lagendery'),
(52408, 0, 1, 0, 62, 0, 100, 0, 12763, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -8449.81, -4249.18, -208.44, 3.216, 'Coridormi teleport');

DELETE FROM `gameobject_template` WHERE `entry`=208430;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208430, 3, 10731, 'Timeless Eye', '', '', '', 0, 0, 3, 2007, 0, 0, 0, 0, 0, 43, 208430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `creature_template` WHERE `entry`=52382;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52382, 0, 0, 0, 0, 0, 37864, 0, 0, 0, 'Ziradormi', '', '', 12760, 80, 80, 3, 0, 1779, 1779, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 768, 34816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4500, 8400, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature_template` WHERE `entry`=52408;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52408, 0, 0, 0, 0, 0, 37874, 0, 0, 0, 'Coridormi', '', '', 12763, 80, 80, 3, 0, 1779, 1779, 3, 1, 1.14286, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 768, 34816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4500, 8400, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `gossip_menu` WHERE `entry`=12760 AND `text_id`=17946;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (12760, 17946);

DELETE FROM `gossip_menu` WHERE `entry`=12763 AND `text_id`=17946;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (12763, 17946);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=12760 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(12760, 0, 0, 'I am ready to meet with Anachronos, Ziradormi. ', 1, 1, 0, 0, 0, 0, '', 51259, NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=12763 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(12763, 0, 0, 'I am ready to meet with Anachronos, Coridormi', 1, 1, 0, 0, 0, 0, NULL, NULL, NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 12763, 0, 0, 0, 28, 0, 29132, 0, 0, 0, 0, 0, '', 'Coridormi Condition');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 12760, 0, 0, 0, 28, 0, 29129, 0, 0, 0, 0, 0, '', 'Ziradormi Condition');

-- El Ojo que todo lo ve quest ID 29135

DELETE FROM `reference_loot_template` WHERE `entry`=12188 AND `item`=71141;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(12188, 71141, -100, 1, 0, 1, 1);

DELETE FROM `reference_loot_template` WHERE `entry`=71141 AND `item`=71141;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(71141, 71141, -25, 1, 0, 1, 1);

DELETE FROM `quest_template` WHERE `Id`=29135;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(29135, 2, NULL, 'Untested', 85, 85, 0, 2300, 62, 0, 0, 1424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29134, 0, 0, 0, 7, 282000, 624600, 0, 99577, 0, 0, 0, 0, 0, 0, 0, 2097224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'All-Seeing Eye', 'Collect 25 Eternal Embers from The Firelands and 3 Sands of Time.', 'I perceive the questions that burn within your mind and I must confess that I share in your uncertainty... a rare position for one such as I, and a most unsettling one.$b$bAs I scour time to find traces of this obscured event, you must aid me in the creation of an Eye, both to test your worthiness, and to provide an essential tool in the unraveling of this mystery.$b$bVenture into the Plane of Fire, $c, and gather Eternal Embers. Bring them to me with Sands of Time and I will create the Eye.', '', 'You have done well, friend.$b$bBe still as I weave ancient magics to create the Timeless Eye.', 'Well, $c?$b$bHave you acquired the necessary materials?', 'Speak to Anachronos in the Caverns of Time.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71141, 65893, 0, 0, 0, 0, 25, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- Molten Lord SAI
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=53115;
DELETE FROM `smart_scripts` WHERE `entryorguid`=53115 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(53115,0,0,7,0,0,100,0,5000,5000,5000,5000,11,99530,0,0,0,0,0,2,0,0,0,0,0,0,0,"flame stomp-molten lord"),
(53115,0,1,0,0,0,100,20,100,100,6000,6000,11,100767,0,0,0,0,0,2,0,0,0,0,0,0,0,"melt armor-molten lord"),
(53115,0,2,0,0,0,100,10,100,100,6000,6000,11,99532,0,0,0,0,0,2,0,0,0,0,0,0,0,"melt armor-molten lord"),
(53115,0,3,4,0,0,100,0,4000,4000,7000,7000,11,99555,0,0,0,0,0,1,0,0,0,0,0,0,0,"summon lava jets-molten lord"),
(53115,0,4,0,0,0,100,0,4000,4000,7000,7000,11,99538,0,0,0,0,0,5,0,0,0,0,0,0,0,"summon lava jets-molten lord"),
(53115,0,5,0,6,0,100,1,0,0,0,0,12,53115,2,60000,0,0,0,1,0,0,0,0,0,0,0,"summon-molten lord"),
(53115,0,6,7,54,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"set faction-molten lord"),
(53115,0,7,0,54,0,100,0,0,0,0,0,94,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"play dead-molten lord");


-- Insert Queststart "Your Time Has Come" Horde
UPDATE `creature_template` SET `npcflag`=2, `type_flags`=200 WHERE  `entry`=53115;
DELETE FROM `creature_questrelation` WHERE `id`=53115 AND `quest`=29452;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (53115, 29452);


-- Insert Queststart "Your Time Has Come" Alliance
DELETE FROM `creature_questrelation` WHERE `id`=53115 AND `quest`=29453;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (53115, 29453);

-- Update quest "Your Time Has Come" requirements
UPDATE `quest_template` SET `RequiredClasses`=1488, `RequiredRaces`=690 WHERE  `Id`=29452; 
UPDATE `quest_template` SET `RequiredClasses`=1488, `RequiredRaces`=1101 WHERE  `Id`=29453; 

-- Spawn Ziradormi
DELETE FROM `creature` WHERE id=52382;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(139028, 52382, 1, 1, 1, 0, 0, 1654.84, -4335.68, 26.6042, 5.01194, 300, 0, 0, 5342, 0, 0, 0, 0, 0);

-- Spawn Coridormi
DELETE FROM `creature` WHERE id=52408;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(21826, 52408, 0, 1, 1, 0, 0, -8996.86, 846.475, 29.6219, 1.23849, 300, 0, 0, 5342, 0, 0, 0, 0, 0);


-- Insert Anachronos gossip
UPDATE `creature_template` SET `gossip_menu_id`=6539 WHERE  `entry`=15192;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=6539;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (6539, 0, 0, 'Yes, Anachronos. I am ready to witness your vision of the future.', 1, 3, 0, 0, 0, 0, '');
DELETE FROM `conditions` WHERE `ConditionValue1`=29134 AND `SourceGroup`=6539;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 6539, 0, 0, 0, 9, 0, 29134, 0, 0, 0, 0, 0, '', 'Show Gossip Menu Options On quest taken');

-- Add Eternal Ember Loot to Majordomo Staghelm , Beth'tilac , Shannox , Baleroc , Lord Rhyolith , Alysrazor
DELETE FROM `creature_loot_template` WHERE `entry` IN (52571,53857,53856,53858) AND `item`=71141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52571, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53857, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53856, 71141, -29135, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53858, 71141, -29135, 3);

DELETE FROM `creature_loot_template` WHERE `entry` IN (52498,53577,53576,53578) AND `item`=71141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52498, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53577, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53576, 71141, -29135, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53578, 71141, -29135, 3);

DELETE FROM `creature_loot_template` WHERE `entry` IN (53691,54079,54979,54080) AND `item`=71141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53691, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54079, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54979, 71141, -29135, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54080, 71141, -29135, 3);

DELETE FROM `creature_loot_template` WHERE `entry` IN (53494,53588,53587,53589) AND `item`=71141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53494, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53588, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53587, 71141, -29135, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53589, 71141, -29135, 3);

DELETE FROM `creature_loot_template` WHERE `entry` IN (52558,52560,52559,52561) AND `item`=71141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52558, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52560, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52559, 71141, -29135, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52561, 71141, -29135, 3);

DELETE FROM `creature_loot_template` WHERE `entry` IN (52530,54045,54044,54046) AND `item`=71141;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52530, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54045, 71141, -29135, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54044, 71141, -29135, 3);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54046, 71141, -29135, 3);

-- Create Loot Template Timeless Eye
DELETE FROM `gameobject_loot_template` WHERE `entry`=208430;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (208430, 69238, 100, 1, 0, 1, 1);

-- Spawn Timeless Eye on Anachronos Breath

-- Anachronos SAI
SET @ENTRY := 15192;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `ScriptName`="" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,29193,0,0,0,11,29388,0,0,0,0,0,11,28960,100,0,0,0,0,0,"Anachronos - On Quest 'On a Wing and a Prayer' Taken - Cast 'Breath of Fire'"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,50,208430,120000,0,0,0,0,11,28960,100,0,0,0,0,0,"Anachronos - On Quest 'On a Wing and a Prayer' Taken - Summon Gameobject 'Timeless Eye'"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,33,52832,0,0,0,0,0,17,0,50,0,0,0,0,0,"Anachronos - On Quest 'On a Wing and a Prayer' Taken - Quest Credit 'On a Wing and a Prayer'"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,15,29193,0,0,0,0,0,17,0,50,0,0,0,0,0,"Anachronos - On Quest 'On a Wing and a Prayer' Taken - Quest Credit 'On a Wing and a Prayer'");

-- On a Wing and a prayer quest correction
UPDATE  `quest_template` SET  `MaxLevel` =  '85', `RequiredNpcOrGo1` =  '0', `RequiredNpcOrGoCount1` =  '0' WHERE  `quest_template`.`Id` =29193;

-- Spawn Tarecgosa 
DELETE FROM `creature` WHERE `guid`=9648470;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(9648470, 52835, 571, 1, 1, 0, 0, 3946.84, 6571.34, 175.497, 2.16738, 300, 0, 0, 273, 0, 0, 0, 0, 0);

-- Add quest to Tarecgosa
DELETE FROM `creature_involvedrelation` WHERE `id`=52835;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (52835, 29193);
DELETE FROM `creature_questrelation` WHERE `id`=52835;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (52835, 29194);


-- Spawn Kalecgosa
DELETE FROM `creature` WHERE `guid`=9648471;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(9648471, 52995, 1, 1, 1, 0, 0, 5544.3, -3569.72, 1570.07, 2.96731, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `Health_mod`=90.3 WHERE  `entry`=52995;

-- Spawn Kalecgosa
DELETE FROM `creature` WHERE `guid`=9648472;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(9648472, 53009, 571, 1, 1, 0, 0, 3531, 5883.51, 144.315, 1.2742, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `Health_mod`=90.3 WHERE  `entry`=53009;

-- Update Creature Templates
DELETE FROM `creature_equip_template` WHERE `entry`=54233;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`) VALUES (54233, 71084);
UPDATE `creature_template` SET `scale`=2 WHERE  `entry`=54233;

-- Quest template
UPDATE `quest_template` SET `Method`=0 WHERE  `Id`=29269;
UPDATE `quest_template` SET `Method`=0 WHERE  `Id`=29134;

-- Kalecgos SAI
SET @ENTRY := 53009;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,29239,0,0,0,12,54233,2,180000,0,0,0,8,0,0,0,3538.5,5915.32,137.6,4.38,"Kalecgos - On Quest 'Nordrassil's Bough' Taken - Summon Creature 'Branch of Nordrassil'"),
(@ENTRY,0,1,0,19,0,100,0,29240,0,0,0,33,53047,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kalecgos - On Quest 'Emergency Extraction' Taken - Quest Credit 'Emergency Extraction'");

-- Spawn Tarecgosa and Kalecgos
DELETE FROM `creature` WHERE `guid` IN (28321, 28325);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(28321, 53149, 571, 1, 1, 0, 0, 3951.26, 6747.81, 152.396, 3.76258, 300, 0, 0, 42, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(28325, 53766, 571, 1, 1, 0, 0, 3945.38, 6740.61, 152.531, 0.978011, 300, 0, 0, 273, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=53766;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (53766, '99561');

-- Kalecgos SAI
SET @ENTRY := 53149;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,29269,0,0,0,12,53210,2,120000,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Quest 'At One' Taken - Summon Creature 'Kalecgos'");

-- Add Seeting Cinder Loot to Majordomo Staghelm , Beth'tilac , Shannox , Baleroc , Lord Rhyolith , Alysrazor
DELETE FROM `creature_loot_template` WHERE `entry` IN (52571,53857,53856,53858) AND `item`=69815;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52571, 69815, -29270, 25);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53857, 69815, -29270, 30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53856, 69815, -29270, 55);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53858, 69815, -29270, 65);

DELETE FROM `creature_loot_template` WHERE `entry` IN (52498,53577,53576,53578) AND `item`=69815;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52498, 69815, -29270, 25);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53577, 69815, -29270, 30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53576, 69815, -29270, 55);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53578, 69815, -29270, 65);

DELETE FROM `creature_loot_template` WHERE `entry` IN (53691,54079,54979,54080) AND `item`=69815;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53691, 69815, -29270, 25);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54079, 69815, -29270, 30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54979, 69815, -29270, 55);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54080, 69815, -29270, 65);

DELETE FROM `creature_loot_template` WHERE `entry` IN (53494,53588,53587,53589) AND `item`=69815;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53494, 69815, -29270, 25);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53588, 69815, -29270, 30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53587, 69815, -29270, 55);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (53589, 69815, -29270, 65);

DELETE FROM `creature_loot_template` WHERE `entry` IN (52558,52560,52559,52561) AND `item`=69815;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52558, 69815, -29270, 25);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52560, 69815, -29270, 30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52559, 69815, -29270, 55);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52561, 69815, -29270, 65);

DELETE FROM `creature_loot_template` WHERE `entry` IN (52530,54045,54044,54046) AND `item`=69815;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (52530, 69815, -29270, 25);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54045, 69815, -29270, 30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54044, 69815, -29270, 55);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (54046, 69815, -29270, 65);

-- Kalecgos SAI
SET @ENTRY := 53215;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,29285,0,0,0,33,53227,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kalecgos - On Quest 'Alignment' Taken - Quest Credit 'Alignment'");


-- Spawn Kalecgos
DELETE FROM `creature` WHERE `guid`=28327;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(28327, 53215, 571, 1, 1, 0, 0, 3648.88, 7155.45, 230.254, 5.61817, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Spawn Kalecgos
DELETE FROM `creature` WHERE `guid`=28329;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(28329, 53349, 571, 1, 1, 0, 0, 4009.14, 7239.89, 340.564, 0.446324, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- HORDE
DELETE FROM `creature` WHERE `guid`=139055;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (139055, 53371, 1, 0, 0, 1, 1, 0, 0, 1646.23, -4337.94, 26.7699, 5.01333, 300, 0, 0, 6141, 0, 0, 0, 0, 0, 0);

DELETE FROM `waypoints` WHERE `entry`=53371;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53371, 1, 1645.56, -4355.6, 26.4497, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53371, 2, 1626.39, -4365.62, 24.5846, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53371, 3, 1622.81, -4374.64, 24.62, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53371, 4, 1611.85, -4373.41, 24.6309, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53371, 5, 1578.34, -4391.77, 16.2938, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53371, 6, 1568.97, -4388.16, 16.3615, '');

DELETE FROM `creature_text` WHERE `entry`=53371;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `comment`) VALUES (53371, 0, "Follow me, $n .A ceremony has been prepared in your honor.", 12, 100, 10000, 'Hallegosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `comment`) VALUES (53371, 1, "Stand upon this disc, $n .Kalecgos approaches", 12, 100, 10000, 'Hallegosa');

-- Hallegosa SAI
SET @ENTRY := 53371;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,29309,0,0,0,53,0,53371,0,0,0,0,1,0,0,0,0,0,0,0,"Hallegosa - On Quest 'The Stuff of Legends' Taken - Start Waypoint"),
(@ENTRY,0,1,0,61,0,100,0,29309,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Hallegosa - On Quest 'The Stuff of Legends' Taken - Say Line 0"),
(@ENTRY,0,2,0,40,0,100,0,6,53371,0,0,12,53390,2,300000,0,0,0,8,0,0,0,1556.08,-4391.93,17.02,0.94,"Hallegosa - On Waypoint 6 Reached - Summon Creature 'Dragon Disc'"),
(@ENTRY,0,4,0,40,0,100,0,6,53371,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Hallegosa - On Waypoint 6 Reached - Say Line 1");

UPDATE `creature_template` SET `npcflag`=16777216, `faction_A`=35, `faction_H`=35, `InhabitType`=4, `unit_flags`=16777216, `VehicleId`=145, `modelid1`=38309, `modelid2`=0 WHERE  `entry`=53390;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53390;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (53390, 47761, 1);

DELETE FROM `waypoints` WHERE `entry`=53390;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53390, 1, 1576.46, -4396.41, 50.6332, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53390, 2, 1616.31, -4398.07, 73.3048, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53390, 3, 1651.63, -4395.67, 89.6499, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53390, 4, 1668.01, -4384.63, 101.996, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53390, 5, 1657.74, -4353.76, 111.908, '');


-- Dragon Disc SAI
SET @ENTRY := 53390;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,53390,0,0,0,0,1,0,0,0,0,0,0,0,"Dragon Disc - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,5,53390,0,0,12,53394,2,120000,0,0,0,8,0,0,0,1673.23,-4350.09,108.76,3.3,"Dragon Disc - On Waypoint 5 Reached - Summon Creature 'Blue Dragon'"),
(@ENTRY,0,3,0,40,0,100,0,5,53390,0,0,12,53394,2,120000,0,0,0,8,0,0,0,1645.37,-4366.27,112.13,0.69,"Dragon Disc - On Waypoint 5 Reached - Summon Creature 'Blue Dragon'"),
(@ENTRY,0,4,0,40,0,100,0,5,53390,0,0,12,53047,2,120000,0,0,0,8,0,0,0,1651.09,-4335.09,103.14,5.02,"Dragon Disc - On Waypoint 5 Reached - Summon Creature 'Hallegosa'");

DELETE FROM `creature_text` WHERE `entry`=53047;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 0, "Welcome, friend .We've been expecting you.", 12, 100, 7000, 24874, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 1, "You are to be congratulated for your succes in the Firelands.", 12, 100, 8000, 24875, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 2, "But praise alone will not suffice.", 12, 100, 8000, 24876, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 3, "We owe you a great deal for the part you have played in the destiny of our flight.", 12, 100, 9000, 24877, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 4, "Present me your staff, that we may endow it with great power.", 12, 100, 8000, 24878, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 5, "Finally, Tarecgosa, our beloved sister whose essence you have generously borne, has chosen this staff as her permanent home.", 12, 100, 15000, 24879, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 6, "May her presence be a source of comfort and companionship to you.", 12, 100, 9000, 24880, 'Tarecgosa');
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `sound`, `comment`) VALUES (53047, 7, "We thank you, friend of the blue dragonflight.", 12, 100, 7000, 24881, 'Tarecgosa');

-- Kalecgos SAI
SET @ENTRY := 53047;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,1,0,7000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Just Summoned - Say Line 0"),
(@ENTRY,0,1,0,52,0,100,0,0,53047,0,0,1,1,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 0 Over - Say Line 1"),
(@ENTRY,0,2,0,52,0,100,0,1,53047,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 1 Over - Say Line 2"),
(@ENTRY,0,3,0,52,0,100,0,2,53047,0,0,1,3,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 2 Over - Say Line 3"),
(@ENTRY,0,4,0,52,0,100,0,3,53047,0,0,1,4,8000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 3 Over - Say Line 4"),
(@ENTRY,0,5,0,52,0,100,0,4,53047,0,0,1,5,15000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 4 Over - Say Line 5"),
(@ENTRY,0,6,0,52,0,100,0,5,53047,0,0,1,6,9000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 5 Over - Say Line 6"),
(@ENTRY,0,7,0,52,0,100,0,6,53047,0,0,1,7,7000,0,0,0,0,1,0,0,0,0,0,0,0,"Kalecgos - On Text 6 Over - Say Line 7"),
(@ENTRY,0,8,0,52,0,100,0,4,53047,0,0,12,53422,2,300000,0,0,0,9,53390,0,40,0,0,0,0,"Kalecgos - On Text 4 Over - Summon Creature 'Dragonwrath, Tarecgosa's Rest'"),
(@ENTRY,0,9,0,52,0,100,0,7,53047,0,0,33,53715,0,0,0,0,0,17,0,50,0,0,0,0,0,"Kalecgos - On Text 7 Over - Quest Credit 'The Stuff of Legends'"),
(@ENTRY,0,10,0,52,0,100,0,4,53047,0,0,12,53422,2,300000,0,0,0,9,53468,0,40,0,0,0,0,"Kalecgos - On Text 4 Over - Summon Creature 'Dragonwrath, Tarecgosa's Rest'");

-- Update Creature Templates
DELETE FROM `creature_equip_template` WHERE `entry`=53422;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`) VALUES (53422, 71086);
UPDATE `creature_template` SET `scale`=2 WHERE  `entry`=53422;

-- ALLIANCE
DELETE FROM `creature` WHERE `guid`=28337;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(28337, 53466, 0, 1, 1, 0, 0, -8641.83, 770.598, 97.2418, 2.27262, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `entry`=53466;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `probability`, `duration`, `comment`) VALUES (53466, 0, "This way, $n. The ceremony is about to begin.", 12, 100, 10000, 'Hallegosa');

-- Hallegosa SAI
SET @ENTRY := 53466;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,29312,0,0,0,53,0,53466,0,0,0,0,1,0,0,0,0,0,0,0,"Hallegosa - On Quest 'The Stuff of Legends' Taken - Start Waypoint"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Hallegosa - On Quest 'The Stuff of Legends' Taken - Say Line 0"),
(@ENTRY,0,2,0,40,0,100,0,1,53466,0,0,12,53468,2,300000,0,0,0,8,0,0,0,-8635.2,803.07,96.85,4.76,"Hallegosa - On Waypoint 1 Reached - Summon Creature 'Dragon Disc'");

DELETE FROM `waypoints` WHERE `entry`=53466;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53466, 1, -8635.69, 792.09, 96.90, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53466, 2, -8635.70, 792.09, 96.90, '');

UPDATE `creature_template` SET `npcflag`=16777216, `faction_A`=35, `faction_H`=35, `InhabitType`=4, `unit_flags`=0, `VehicleId`=145, `modelid1`=38309, `modelid2`=0 WHERE  `entry`=53468;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53468;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (53468, 47761, 1);

DELETE FROM `waypoints` WHERE `entry`=53468;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53468, 1, -8621.04, 765.74, 120.39, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53468, 2, -8629.69, 739.55, 131.84, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53468, 3, -8654.09, 741.50, 139.98, '');
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (53468, 4, -8677.93, 733.26, 122.84, '');

-- Dragon Disc SAI
SET @ENTRY := 53468;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,53468,0,0,0,0,1,0,0,0,0,0,0,0,"Dragon Disc - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,4,53468,0,0,12,53394,2,120000,0,0,0,8,0,0,0,-8660.49,729.35,126.67,3.27,"Dragon Disc - On Waypoint 4 Reached - Summon Creature 'Blue Dragon'"),
(@ENTRY,0,3,0,40,0,100,0,4,53468,0,0,12,53394,2,120000,0,0,0,8,0,0,0,-8676.36,749.15,128.93,4.78,"Dragon Disc - On Waypoint 4 Reached - Summon Creature 'Blue Dragon'"),
(@ENTRY,0,4,0,40,0,100,0,4,53468,0,0,12,53047,2,120000,0,0,0,8,0,0,0,-8688.69,722.94,122.33,0.64,"Dragon Disc - On Waypoint 4 Reached - Summon Creature 'Kalecgos'");


-- Chain sequence
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE  `Id`=29452;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE  `Id`=29453;
UPDATE `quest_template` SET `PrevQuestId`=29452 WHERE  `Id`=29129;
UPDATE `quest_template` SET `PrevQuestId`=29453 WHERE  `Id`=29132;
UPDATE `quest_template` SET `PrevQuestId`=29134 WHERE  `Id`=29135;
UPDATE `quest_template` SET `PrevQuestId`=29135 WHERE  `Id`=29193;
UPDATE `quest_template` SET `PrevQuestId`=29193 WHERE  `Id`=29194;
UPDATE `quest_template` SET `PrevQuestId`=29194 WHERE  `Id`=29225;
UPDATE `quest_template` SET `PrevQuestId`=29225 WHERE  `Id`=29234;
UPDATE `quest_template` SET `PrevQuestId`=29234 WHERE  `Id`=29239;
UPDATE `quest_template` SET `PrevQuestId`=29239 WHERE  `Id`=29240;
UPDATE `quest_template` SET `PrevQuestId`=29240 WHERE  `Id`=29269;
UPDATE `quest_template` SET `PrevQuestId`=29269 WHERE  `Id`=29270;
UPDATE `quest_template` SET `PrevQuestId`=29270 WHERE  `Id`=29285;
UPDATE `quest_template` SET `PrevQuestId`=29285 WHERE  `Id`=29307;
UPDATE `quest_template` SET `PrevQuestId`=29285 WHERE  `Id`=29308;
UPDATE `quest_template` SET `PrevQuestId`=29307 WHERE  `Id`=29312;
UPDATE `quest_template` SET `PrevQuestId`=29308 WHERE  `Id`=29309;
UPDATE `quest_template` SET `Flags`=0, `SpecialFlags`=0 WHERE  `Id` IN (29452,29453,29129,29132,29134,29135,29193,29194,29225,29234,29239,29240,29269,29270,29285,29307,29312,29309);
UPDATE `quest_template` SET `Method`=2 WHERE  `Id` IN (29452,29453,29129,29132,29285,29307,29193,29135,29194,29225,29234,29239,29240,29270,29312,29309);
UPDATE `quest_template` SET `RequiredClasses`=1488, `RequiredRaces`=690 WHERE  `Id`=29308; 
UPDATE `quest_template` SET `RequiredClasses`=1488, `RequiredRaces`=1101 WHERE  `Id`=29307;

DELETE FROM `report_quest` WHERE id IN (29135, 29193);

DELETE FROM `spell_area` WHERE quest_start=29135;

DELETE FROM `conditions` WHERE ConditionValue1=29193;

DELETE FROM `creature` WHERE id=54237;

DELETE FROM `smart_scripts` WHERE entryorguid=6700;

DELETE FROM `creature_template` WHERE `entry`=54237;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(54237, 0, 0, 0, 0, 0, 38699, 0, 0, 0, 'Timeless Orb', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 3.8, 3.8, 0, 46, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 10, 1074790400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `guid`=28338;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(28338, 28960, 1, 1, 1, 0, 0, -8465.94, -4237.32, -206.094, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, 1);


DELETE FROM `creature` WHERE `guid`=103001;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(103001, 15192, 1, 440, 2300, 1, 1, 0, 0, -8467.88, -4243.7, -208.358, 1.25664, 86400, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_questrelation` WHERE `id`=6700;
DELETE FROM `creature_questrelation` WHERE `id`=15192;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(15192, 8747),
(15192, 8748),
(15192, 8749),
(15192, 8750),
(15192, 8751),
(15192, 8752),
(15192, 8753),
(15192, 8754),
(15192, 8755),
(15192, 8756),
(15192, 8757),
(15192, 8758),
(15192, 8759),
(15192, 8760),
(15192, 8761),
(15192, 8764),
(15192, 9251),
(15192, 9257),
(15192, 9269),
(15192, 9270),
(15192, 9271),
(15192, 29134),
(15192, 29135),
(15192, 29193);


DELETE FROM `creature_involvedrelation` WHERE `id`=15192;
DELETE FROM `creature_involvedrelation` WHERE `id`=6700;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(15192, 8747),
(15192, 8748),
(15192, 8749),
(15192, 8750),
(15192, 8751),
(15192, 8752),
(15192, 8753),
(15192, 8754),
(15192, 8755),
(15192, 8756),
(15192, 8757),
(15192, 8758),
(15192, 8759),
(15192, 8760),
(15192, 8761),
(15192, 8764),
(15192, 8802),
(15192, 9250),
(15192, 9251),
(15192, 9257),
(15192, 9269),
(15192, 9270),
(15192, 9271),
(15192, 29129),
(15192, 29132),
(15192, 29134),
(15192, 29135);



DELETE FROM `quest_poi` WHERE `questId`=29193 AND `id`=0;
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES (29193, 0, -1, 571, 486, 0, 0, 1);
DELETE FROM `quest_poi` WHERE `questId`=29193 AND `id`=1;
INSERT INTO `quest_poi` (`questId`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES (29193, 1, 0, 571, 486, 0, 0, 7);


DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=0 AND `idx`=0;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 0, 0, 3930, 6589);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=0;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 0, 3972, 6119);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=1;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 1, 4203, 6235);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=2;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 2, 4519, 6666);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=3;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 3, 4540, 7340);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=4;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 4, 4340, 7613);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=5;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 5, 4098, 7750);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=6;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 6, 3751, 7845);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=7;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 7, 3351, 7655);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=8;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 8, 3151, 7392);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=9;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 9, 3140, 7003);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=10;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 10, 3330, 6530);
DELETE FROM `quest_poi_points` WHERE `questId`=29193 AND `id`=1 AND `idx`=11;
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES (29193, 1, 11, 3624, 6298);


