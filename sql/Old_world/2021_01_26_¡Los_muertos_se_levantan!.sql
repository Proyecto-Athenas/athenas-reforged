-- ¡Los muertos se levantan!

-- objectos de la mkision
DELETE FROM `gameobject_template` WHERE `entry` IN (187022, 187023, 187026, 187027);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(187022, 3, 20, 'Mound of Debris', '', 'Searching', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1691, 22971, 1, 0, 0, 0, 16440, 0, 0, 0, 0, 0, 0, 0, 19680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340),
(187023, 3, 5743, 'Unlocked Chest', '', 'Searching', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1691, 22972, 1, 0, 0, 0, 16441, 0, 0, 0, 0, 0, 0, 0, 19680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340),
(187026, 3, 3651, 'Long Tail Feather', '', 'Searching', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1691, 22973, 1, 0, 0, 0, 16442, 0, 0, 0, 0, 0, 0, 0, 19680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340),
(187027, 3, 153, 'Cannonball', '', 'Searching', '', 0, 0, 0.75, 0, 0, 0, 0, 0, 0, 1691, 22974, 1, 0, 0, 0, 16443, 0, 0, 0, 0, 0, 0, 0, 19680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340);

-- cambio de aura
UPDATE `creature_addon` SET `auras`="44792" WHERE `guid`=323232;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (24883, 24876, 24877, 24875);
UPDATE `creature` SET `MovementType`=0, `spawndist`=0, `position_z`=329.648 WHERE `id`=24883;

-- smartAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (24883);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24883) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24883,0,0,0,1,0,70,0,0,5000,6000,10000,11,44788,0,0,0,0,0,19,24876,20,0,0,0,0,0,"Rodin Lightning Enabler - Ooc - Cast Rodin's Lightning Bolt"),
(24883,0,1,0,1,0,70,0,0,5000,6000,10000,11,44787,0,0,0,0,0,19,24876,20,0,0,0,0,0,"Rodin Lightning Enabler - Ooc - Cast Rodin's Lightning Bolt"),
(24883,0,2,0,1,0,70,0,0,5000,6000,10000,11,44789,0,0,0,0,0,19,24876,20,0,0,0,0,0,"Rodin Lightning Enabler - Ooc - Cast Rodin's Lightning Bolt"),
(24883,0,3,0,1,0,70,0,0,5000,6000,10000,11,44791,0,0,0,0,0,19,24876,20,0,0,0,0,0,"Rodin Lightning Enabler - Ooc - Cast Rodin's Lightning Bolt"),
(24883,0,4,0,1,0,70,0,0,5000,6000,10000,11,44790,0,0,0,0,0,19,24876,20,0,0,0,0,0,"Rodin Lightning Enabler - Ooc - Cast Rodin's Lightning Bolt");

-- textos de las creaturas
DELETE FROM `creature_text` WHERE `entry` IN (24876, 24875, 24877, 24874) AND `groupid`=1;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES
(24874, 1, 0, 'From sundered ground the sacrament was stolen. The Shield of Aesirites is lost. Unrest will be eternal.', 12, 0, 100, 0, 0, 0, 'Fengir the Disgraced', 23970),
(24876, 1, 0, 'The Staff of Storm''s Fury pilfered. A curse upon this land! The storms will never cease!', 12, 0, 100, 0, 0, 0, 'Rodin the Reckless', 23971),
(24877, 1, 0, 'The Frozen Heart of Isuldof will consume this land until it is returned. Woe unto those that hold the heart as the curse of frozen blood besets them...', 12, 0, 100, 0, 0, 0, 'Isuldof Iceheart', 23972),
(24875, 1, 0, 'The anguish of ten-thousand years awaits any foolish enough to don the Ancient Armor of the Kvaldir. Beware the mist and fog, mortals; for with them comes your end.', 12, 0, 100, 0, 0, 0, 'Windan of the Kvaldir', 23973);

-- smartAI para los objetos
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (187023, 187026, 187022, 187027) AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (24876, 24875, 24877, 24874) AND `source_type`=0 AND id=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(187023, 1, 0, 0, 70, 0, 100, 0, 1, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 24876, 30, 0, 0, 0, 0, 0, 'Relic - On State 1 - Set data'),
(187026, 1, 0, 0, 70, 0, 100, 0, 1, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 24877, 30, 0, 0, 0, 0, 0, 'Relic - On State 1 - Set data'), 
(187022, 1, 0, 0, 70, 0, 100, 0, 1, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 24874, 30, 0, 0, 0, 0, 0, 'Relic - On State 1 - Set data'), 
(187027, 1, 0, 0, 70, 0, 100, 0, 1, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 24875, 30, 0, 0, 0, 0, 0, 'Relic - On State 1 - Set data'),
(24876, 0, 2, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rodin the Reckless - On data set - Say line 2'),
(24877, 0, 2, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Isuldof Iceheart - On data set - Say line 2'),
(24874, 0, 2, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Fengir the Disgraced - On data set - Say line 2'),
(24875, 0, 2, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Windan of the Kvaldir - On data set - Say line 2');

UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=30331; -- fix a DB error not related to the quest

-- mision 
DELETE FROM `quest_template` WHERE `Id`=11504;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(11504, 2, NULL, 'Untested', 71, 68, 0, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11573, 0, 0, 11507, 5, 0, 120600, 0, 0, 0, 0, 0, 0, 0, 0, 44017, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1073, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Dead Rise!', 'Orfus of Kamagua at the Ancient Lift in the Howling Fjord wants you to find Fengir\'s Clue, Rodin\'s Clue, Isuldof\'s Clue and Windan\'s Clue.', 'The path east of us is a primary hunting trail of the tuskarr. At least that\'s what it used to be...$B$BMore recently our hunters have been returning to Kamagua claiming that the dead have risen and are out for blood! That is what has brought my son and me here. Elder Atuik asks that we find resolution in the bluffs.$B$BWill you assist us in our time of need? I seek heroes willing to brave the perils of Shield Hill, southeast of here. Search the desecrated graves for clues and return your findings to me.', '', '<Orfus\'s whiskers bristle.>$B$BPirates... Is there no end to the depths of their depravity?$B$BWe must recover the stolen artifacts and return them to this cursed place so that my people may once more know peace.', 'The tuskarr need your help!', 'Return to Orfus of Kamagua at the Ancient Lift in Howling Fjord.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34222, 34223, 34224, 34225, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- loot para los objetos
DELETE FROM `gameobject_loot_template` WHERE `item` IN (34222, 34223, 34224, 34225);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(22971, 34222, 100, 1, 0, 1, 1),
(22972, 34223, 100, 1, 0, 1, 1),
(22973, 34224, 100, 1, 0, 1, 1),
(22974, 34225, 100, 1, 0, 1, 1);
