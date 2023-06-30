-- elminado el reporte
DELETE FROM `report_quest` WHERE `Id`=12238;

UPDATE `creature_template` SET `InhabitType`='4' WHERE `entry` IN (28492);

-- agregados los datos del item 
DELETE FROM `item_template` WHERE `entry`=35797;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (35797, 12, 0, 0, 'Drakuru\'s Elixir', 16836, 1, 64, 8192, 0.9772, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47110, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Summons the image of Drakuru for a short time.', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- quest
DELETE FROM `quest_template` WHERE `Id`=12238;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (12238, 2, NULL, 'Untested', 75, 73, 0, 4196, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12068, 12663, 0, 0, 7, 177000, 188700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40758, 40755, 40757, 40756, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cleansing Drak\'Tharon', 'Drakuru wants you to use Drakuru\'s Elixir at his brazier inside Drak\'Tharon. Using Drakuru\'s Elixir there will require 5 Enduring Mojo.', 'Drak\'Tharon soon be cleansed of them foul undead and restored to her noble purpose. In return for your help, the keep\'s most valuable treasures be yours, mon!$b$bOnce ya be reachin\' its top, ya must summon me, and I\'ll perform the ritual.$b$bAlas, my summonin\' will be comin\' at a cost. Ya must collect mojo from the survivors.', '', 'We done a great thing, mon! And dis just be da beginning....$B$BSeek me out in Zul\'Drak when da time be right.$B$BDere be a war to be won, mon!', '', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 35797, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- coordenadas de el objeto
DELETE FROM `gameobject_template` WHERE `entry`=300188;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (300188, 8, 2570, 'TEMP Drakuru\'s Brazier', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);
DELETE FROM `gameobject` WHERE `guid`=268087;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (268087, 300188, 600, 4196, 4196, 3, 1, -236.766, -614.774, 116.487, 1.5708, 0, 0, 0, 1, 300, 10, 1);

-- coordenadas de el objeto
DELETE FROM `gameobject_template` WHERE `entry`=190629;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (190629, 5, 2570, 'Drakuru\'s Brazier', '', '', '', 114, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject` WHERE `guid`=200742;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (200742, 190629, 600, 4196, 4196, 3, 1, -236.766, -614.774, 116.487, 1.5708, 0, 0, 0, 1, 180, 0, 1);

-- modificado el % de drop 
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=66 WHERE `item`=38303 AND `entry`=26620;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=67 WHERE `item`=38303 AND `entry`=26639;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=15 WHERE `item`=38303 AND `entry`=27431;

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=47110;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9615 AND `SourceEntry`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,47110,0,0,31,0,3,26498,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 01'),
(13,1,47110,0,1,31,0,3,26559,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 02'),
(13,1,47110,0,2,31,0,3,26700,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 03'),
(13,1,47110,0,3,31,0,3,26789,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 04'),
(13,1,47110,0,4,31,0,3,28015,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 05'),
(15,9615,1,0,0,8,0,11990,0,0,0,0,'','Drakuru - Show gossip option if player has rewarded quest 11990'),
(15,9615,1,0,0,8,0,12238,0,0,1,0,'','Drakuru - Show gossip option if player has not rewarded quest 12238'),
(15,9615,1,0,0,2,0,35797,1,1,1,0,'','Drakuru - Show gossip option if player has not item Drakuru''s Elixir');
DELETE FROM `smart_scripts` WHERE `entryorguid`=26423 AND `source_type`=0 AND `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26498,26559,26700,26789) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26423,0,2,3,62,0,100,0,9615,1,0,0,85,50021,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - Invoker spellcast Replace Drakuru''s Elixir'),
(26423,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - Close gossip'),
(26498,0,0,0,8,0,100,0,47110,0,0,0,11,47117,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 01 - On spellhit - Spellcast Script Cast Summon Image of Drakuru'),
(26559,0,0,0,8,0,100,0,47110,0,0,0,11,47149,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 02 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 02'),
(26700,0,0,0,8,0,100,0,47110,0,0,0,11,47316,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 03 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 03'),
(26789,0,0,0,8,0,100,0,47110,0,0,0,11,47405,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 04 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 04');

-- Creature Template update from sniff
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_walk`=2, `speed_run`=0.992062, `unit_flags`=768, `equipment_id`=2481 WHERE `entry`=28498;
UPDATE `creature_template` SET `gossip_menu_id`=9707, `faction_A`=190, `faction_H`=190, `speed_walk`=2, `npcflag`=`npcflag`|1, `unit_flags`=33024 WHERE `entry`=28016;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (28015,28016,28492,28498);
-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=9707 AND `text_id`=13265;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9707,13265);
DELETE FROM `creature_equip_template` WHERE `entry`=2481;
INSERT INTO `creature_equip_template` (`entry`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(2481,33475,0,0);

UPDATE `creature_model_info` SET `bounding_radius`=2.5, `combat_reach`=2.5 WHERE `modelid`=28122;

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=51825;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,51825,0,0,31,0,3,28016,0,0,0,'','Spell Arthas Scourge Drakuru targets Drakuru');
-- Creature text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (28016,28498);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28016,0,0,'Ahh,  Back in Drak''Tharon at last!',12,0,100,71,0,14006,'Drakuru'),
(28016,1,0,'Drakuru casts his gaze down on Drak''Tharon Keep.',16,0,100,0,0,0,'Drakuru'),
(28016,2,0,'Ya done well, mon....',12,0,100,0,0,14007,'Drakuru'),
(28016,3,0,'Ya surpassed my greatest hopes.',12,0,100,0,0,14008,'Drakuru'),
(28016,4,0,'For your efforts, you be gettin'' da greatest of rewards....',12,0,100,0,0,14009,'Drakuru'),
(28016,5,0,'Revelation!',12,0,100,5,0,14010,'Drakuru'),
(28016,6,0,'Be still, friend, and behold da truth of things!',12,0,100,0,0,14011,'Drakuru'),
(28016,7,0,'Master, my mission be complete.',12,0,100,0,0,14012,'Drakuru'),
(28016,8,0,'With da help of these mortals, dis region been cleansed of all who oppose us.',12,0,100,0,0,14013,'Drakuru'),
(28016,9,0,'As you wish, master.',12,0,100,396,0,14014,'Drakuru'),
(28016,10,0,'Forgive my deception, mon. It all been for your own good.',12,0,100,396,0,14015,'Drakuru'),
(28016,11,0,'Ya needed ta prove yer worthiness....',12,0,100,396,0,14016,'Drakuru'),
(28016,12,0,'I be needin'' worthy underlings in Zul''Drak, mon. Ones ready to wield real power.',12,0,100,396,0,14017,'Drakuru'),
(28016,13,0,'You see for yourself now. Da Lich King be generous to dem who obey.',12,0,100,396,0,14018,'Drakuru'),
(28016,14,0,'Follow dis path, mon, and soon you be tastin'' immortality!',12,0,100,396,0,14019,'Drakuru'),
(28498,0,0,'You have done well, Drakuru.',12,0,100,396,0,14749,'The Lich King'),
(28498,1,0,'Your betrayal of the Drakkari Empire has borne me a new army.',12,0,100,396,0,14750,'The Lich King'),
(28498,2,0,'Your army....',12,0,100,0,0,14751,'The Lich King'),
(28498,3,0,'Arise, and accept my gift.',12,0,100,396,0,14752,'The Lich King'),
(28498,4,0,'I charge you now with the cleansing of Zul''Drak, Drakuru.',12,0,100,397,0,14753,'The Lich King'),
(28498,5,0,'Fail me and it shall be your undoing...',12,0,100,396,0,14754,'The Lich King'),
(28498,6,0,'Succeed, and even greater power shall be yours!',12,0,100,396,0,14755,'The Lich King');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28015,28016,28498,-900234,-900233,-900232,-900230) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28492*100,28016*100,28016*100+1,28498*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(28015,0,0,0,8,0,100,0,47110,0,0,0,11,50439,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 05 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 05'),
(28016,0,0,0,54,0,100,0,0,0,0,0,80,28016*100+1,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On update - Run script'),
(28016,0,1,2,40,0,100,0,1,0,0,0,54,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 1 - Pause movement 2 seconds'),
(28016,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 1 - Say line'),
(28016,0,3,4,40,0,100,0,5,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 5 - Pause movement 8 seconds'),
(28016,0,4,5,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 5 - Say line'),
(28016,0,5,0,61,0,100,0,0,0,0,0,80,28016*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 5 - Run script'),
(28016,0,6,7,40,0,100,0,8,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 8 - Pause movement 4 seconds'),
(28016,0,7,8,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 8 - Say line'),
(28016,0,8,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 8 - Set unit_field_bytes1'),
(28016,0,9,10,40,0,100,0,9,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 9 - Pause movement 4 seconds'),
(28016,0,10,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 9 - Set unit_field_bytes1'),
(28016,0,11,12,40,0,100,0,10,0,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 10 - Pause movement 3 seconds'),
(28016,0,12,13,61,0,100,0,0,0,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 10 - Say line'),
(28016,0,13,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 10 - Set unit_field_bytes1'),
(28016,0,14,15,40,0,100,0,12,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 12 - Stop movement'),
(28016,0,15,16,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.694936,'Drakuru - On WP 12 - Set orientation'),
(28016,0,16,0,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 12 - Say line'),
(28016,0,18,0,8,0,100,0,51825,0,0,0,11,51834,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On spellhit Arthas Scourge Drakuru - Spellcast Drakuru Transform'),
(28498,0,0,0,54,0,100,0,0,0,0,0,53,0,28498,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - Just summoned - Start WP movement'),
(28498,0,1,2,40,0,100,0,2,0,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - On WP 2 - Pause movement 83 seconds'),
(28498,0,2,0,61,0,100,0,0,0,0,0,80,28498*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - On WP 2 - Run script'),
(28498,0,3,4,40,0,100,0,3,0,0,0,45,0,2,0,0,0,0,10,900232,0,0,0,0,0,0,'The Lich King - On WP 3 - Despawn'),
(28498,0,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - On WP 3 - Despawn'),
(-900234,0,0,1,38,0,100,0,0,1,0,0,11,51802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Red Lightning Bolt'),
(-900234,0,1,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Set data 0 0'),
(-900233,0,0,1,38,0,100,0,0,1,0,0,11,51802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Red Lightning Bolt'),
(-900233,0,1,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Set data 0 0'),
(-900230,0,0,1,38,0,100,0,0,1,0,0,11,51802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Red Lightning Bolt'),
(-900230,0,1,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Set data 0 0'),
(-900232,0,0,0,38,0,100,0,0,1,0,0,11,51807,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Arthas Portal'),
(-900232,0,1,2,38,0,100,0,0,2,0,0,80,28492*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 2 set - Start script'),
(-900232,0,2,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 2 set - Set data 0 0'),
(28016*100,9,0,0,0,0,100,0,6000,6000,0,0,5,21,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Play emote applaud'),
(28016*100,9,1,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,2,0,0,0,100,0,6500,6500,0,0,50,190597,22.5,0,0,0,0,8,0,0,0,-241.5434,-675.4514,132.2164,-1.029743,'Drakuru script - Summon gameobject'),
(28016*100,9,3,0,0,0,100,0,6000,6000,0,0,50,190596,15.5,0,0,0,0,8,0,0,0,-235.8484,-680.4561,131.885,-2.792518,'Drakuru script - Summon gameobject'),
(28016*100,9,4,0,0,0,100,0,5000,5000,0,0,50,190595,11,0,0,0,0,8,0,0,0,-233.977,-673.1368,132.0999,0.7853968,'Drakuru script - Summon gameobject'),
(28016*100,9,5,0,0,0,100,0,6000,6000,0,0,11,51795,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Spellcast Shadow Channelling (10 sec)'),
(28016*100,9,6,0,0,0,100,0,5000,5000,0,0,45,0,1,0,0,0,0,10,900234,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,7,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,900233,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,8,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,900230,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,9,0,0,0,100,0,4000,4000,0,0,45,0,1,0,0,0,0,10,900232,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,10,0,0,0,100,0,1000,1000,0,0,1,6,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,11,0,0,0,100,0,5000,5000,0,0,12,28498,8,0,0,0,0,8,0,0,0,-237.1671,-702.1379,128.8857,1.570796,'Drakuru script - Summon Lich King'),
(28016*100,9,12,0,0,0,100,0,4000,4000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Set unit_field_bytes1'),
(28016*100,9,13,0,0,0,100,0,2000,2000,0,0,1,7,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,14,0,0,0,100,0,6000,6000,0,0,1,8,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,15,0,0,0,100,0,33000,33000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Remove unit_field_bytes1'),
(28016*100,9,16,0,0,0,100,0,6000,6000,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Play emote roar'),
(28016*100,9,17,0,0,0,100,0,0,0,0,0,4,3326,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Play sound roar'),
(28016*100,9,18,0,0,0,100,0,12000,12000,0,0,1,9,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,19,0,0,0,100,0,27000,27000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.70526,'Drakuru script - Set orientation'),
(28016*100,9,20,0,0,0,100,0,7000,7000,0,0,1,10,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,21,0,0,0,100,0,8000,8000,0,0,1,11,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,22,0,0,0,100,0,8000,8000,0,0,1,12,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,23,0,0,0,100,0,11000,11000,0,0,1,13,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,24,0,0,0,100,0,7000,7000,0,0,1,14,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,25,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Set npcflag'),
(28016*100+1,9,0,0,0,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Remove npcflag'),
(28016*100+1,9,1,0,0,0,100,0,3000,3000,0,0,53,0,28016,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Start WP movement'),
(28492*100,9,0,0,0,0,100,0,5000,5000,0,0,28,51807,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 script - Remove aura Arthas Portal'),
(28498*100,9,0,0,0,0,100,0,15000,15000,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,1,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,2,0,0,0,100,0,10000,10000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,3,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,4,0,0,0,100,0,5000,5000,0,0,11,51825,0,0,0,0,0,9,28016,0,10,0,0,0,0,'The Lich King script - Spellcast Arthas Scourge Drakuru'),
(28498*100,9,5,0,0,0,100,0,8000,8000,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,6,0,0,0,100,0,16000,16000,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,7,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line');

-- creature_template_addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (28016,28498);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28016,0,0,0,1,0,''),
(28498,0,0,0,1,0,'');

-- spell_scripts
DELETE FROM `spell_scripts` WHERE `id`=50439;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(50439,0,0,15,50440,2,0,0,0,0,0); -- Script Cast Summon Image of Drakuru - Spellcast Envision Drakuru

-- spell_linked_spell 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=50440;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(50440,50446,1,'On Envision Drakuru - Spellcast Summon Drakuru');

-- agregado el waypoint
DELETE FROM `waypoints` WHERE `entry` IN (28016,28498);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(28016, 1,-240.1569,-630.3474,116.4973,'pause and text'),
(28016, 2,-237.9522,-652.9613,131.131,''),
(28016, 3,-252.4211,-663.5404,131.2025,''),
(28016, 4,-261.2747,-667.5787,131.1916,''),
(28016, 5,-264.9144,-667.5964,131.1769,'pause and text'),
(28016, 6,-258.2646,-669.388,131.1983,''),
(28016, 7,-248.6646,-674.2229,132.1737,''),
(28016, 8,-243.7752,-674.9374,131.8365,'pause'),
(28016, 9,-236.3793,-678.6719,131.8578,'pause'),
(28016,10,-235.4743,-674.3039,131.8569,'pause'),
(28016,11,-234.869,-674.1355,131.8544,''),
(28016,12,-237.0977,-676.1853,131.8683,''),
(28498,1,-237.4704,-689.8357,129.5296,''),
(28498,2,-237.2737,-686.5334,132.1735,'pause'),
(28498,3,-237.0624,-700.3822,130.4357,'');
