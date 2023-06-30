-- Fix https://es.wowhead.com/quest=9759/el-fin-de-su-mundo
-- A hora funcionando blizzlike
-- Estaba autocompletable
-- Se agrego un mejor script c++ probado y funcionando en un 95% 

SET @ADMETIUS := 17658;
SET @LEGOSO := 17982;
SET @SIRONAS := 17678;
SET @TESLA := 17979;


-- Sironas

-- Equips
DELETE FROM `creature_equip_template` WHERE `entry`=@SIRONAS;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(@SIRONAS, 2244, 0, 0);

-- Spells & scriptname
UPDATE `creature_template` SET `spell1`=10966, `spell2`=12742, `spell3`=8282, `spell4`=0, `ScriptName`='npc_sironas' WHERE `entry`=@SIRONAS;

-- Text
DELETE FROM `creature_text` WHERE `entry`=@SIRONAS;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `comment`) VALUES
(@SIRONAS, 0, 0, 'Petulant children, pray to your gods for you are about to meet them!', 14, 100, 'Sironas SAY_SIRONAS_1 (pre aggro)');


-- Tesla targets

-- Disable movement
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `Id`=@TESLA;

-- Position fix
UPDATE `creature` SET `position_x`=-1964.13, `position_y`=-10538.7, `position_z`=198.928 WHERE `Id`=@TESLA AND `guid`=183297;
UPDATE `creature` SET `position_x`=-1926.01, `position_y`=-10577.4, `position_z`=194.301 WHERE `Id`=@TESLA AND `guid`=183298;
UPDATE `creature` SET `position_x`=-1921.15, `position_y`=-10583.0, `position_z`=213.888 WHERE `Id`=@TESLA AND `guid`=183299;
UPDATE `creature` SET `position_x`=-1886.11, `position_y`=-10534.5, `position_z`=199.901 WHERE `Id`=@TESLA AND `guid`=183300;

-- Bloodmyst Tesla target condition
DELETE FROM `conditions` WHERE `SourceEntry`=31611;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`) VALUES
(13, 1, 31611, 0, 0, 31, 0, 3, @SIRONAS, 0);


-- Legoso

-- Scriptname
UPDATE `creature_template` SET `ScriptName`='npc_demolitionist_legoso' WHERE `entry`=@LEGOSO;

-- Respawn time (this npc respawns very quickly,  http://www.wowhead.com/npc=@LEGOSO#comments:id=752881:reply=111200)
UPDATE `creature` SET `spawntimesecs`=30 WHERE `id`=@LEGOSO;

-- Text
DELETE FROM `creature_text` WHERE `entry`=@LEGOSO;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `comment`) VALUES
(@LEGOSO, 0, 0, 'There''s no turning back now, $N. Stay close and watch my back.', 12, 100, 1, 'npc_demolitionist_legoso SAY_LEGOSO_1'),
(@LEGOSO, 1, 0, 'There it is! Do you see where the large red crystal is jutting out from the Vector Coil? That''s where I need to plant the first set of explosives.', 12, 100, 25, 'npc_demolitionist_legoso SAY_LEGOSO_2'),
(@LEGOSO, 2, 0, 'Cover me!', 12, 100, 5, 'npc_demolitionist_legoso SAY_LEGOSO_3'),
(@LEGOSO, 3, 0, 'It won''t be much longer, $N. Just keep them off me while I work.', 12, 100, 69, 'npc_demolitionist_legoso SAY_LEGOSO_4'),
(@LEGOSO, 4, 0, 'That''ll do it! Quickly, take cover!', 12, 100, 5, 'npc_demolitionist_legoso SAY_LEGOSO_5'),
(@LEGOSO, 5, 0, '3...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_6'),
(@LEGOSO, 6, 0, '2...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_7'),
(@LEGOSO, 7, 0, '1...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_8'),
(@LEGOSO, 8, 0, 'Don''t get too excited, hero, that was the easy part. The challenge lies ahead! Let''s go.', 12, 100, 1, 'npc_demolitionist_legoso SAY_LEGOSO_9'),
(@LEGOSO, 9, 0, 'What in the Nether is that?!?!', 12, 100, 5, 'npc_demolitionist_legoso SAY_LEGOSO_10'),
(@LEGOSO, 10, 0, 'Be ready for anything, $N.', 12, 100, 1, 'npc_demolitionist_legoso SAY_LEGOSO_11'),
(@LEGOSO, 11, 0, 'Blessed Light! She''s siphoning energy right out of the Vector Coil!', 12, 100, 53, 'npc_demolitionist_legoso SAY_LEGOSO_12'),
(@LEGOSO, 12, 0, 'Cover me, we have to do this quickly. Once I blow the support on this side, it will disrupt the energy beams and she''ll break out! I doubt very much that she''ll be happy to see us.', 12, 100, 1, 'npc_demolitionist_legoso SAY_LEGOSO_13'),
(@LEGOSO, 13, 0, 'I''ve almost got it! Just a little more time...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_14'),
(@LEGOSO, 14, 0, 'Take cover and be ready for the fight of your life, $N!', 12, 100, 5, 'npc_demolitionist_legoso SAY_LEGOSO_15'),
(@LEGOSO, 15, 0, '3...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_16'),
(@LEGOSO, 16, 0, '2...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_17'),
(@LEGOSO, 17, 0, '1...', 12, 100, 0, 'npc_demolitionist_legoso SAY_LEGOSO_18'),
(@LEGOSO, 18, 0, 'Holy mother of O''ros!', 12, 100, 5, 'npc_demolitionist_legoso SAY_LEGOSO_19'),
(@LEGOSO, 19, 0, 'I... I can''t believe it''s over. You did it! You''ve destoyed the blood elves and their leader!', 12, 100, 1, 'npc_demolitionist_legoso SAY_LEGOSO_20'),
(@LEGOSO, 20, 0, 'Get back to Blood Watch. I''ll see you there...', 12, 100, 1, 'npc_demolitionist_legoso SAY_LEGOSO_21');

-- Waypoints
DELETE FROM `script_waypoint` WHERE `entry`=@LEGOSO;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(@LEGOSO, 1, -1773.64, -11073.9, 76.8923, 0, ''),
(@LEGOSO, 2, -1784.13, -11051.1, 77.2078, 0, ''),
(@LEGOSO, 3, -1793.02, -11047.5, 77.1118, 0, ''),
(@LEGOSO, 4, -1792.87, -11036.8, 76.2142, 0, ''),
(@LEGOSO, 5, -1804.07, -11023.6, 69.8951, 0, ''),
(@LEGOSO, 6, -1826.2, -11003.5, 67.3465, 0, ''),
(@LEGOSO, 7, -1855, -10992.3, 64.5101, 0, ''),
(@LEGOSO, 8, -1888.95, -10966.4, 61.1596, 0, ''),
(@LEGOSO, 9, -1913.87, -10935.6, 61.4501, 0, ''),
(@LEGOSO, 10, -1927.65, -10907.8, 62.7226, 0, ''),
(@LEGOSO, 11, -1932.9, -10868.6, 66.2437, 0, ''),
(@LEGOSO, 12, -1940.75, -10853.8, 69.1475, 0, ''),
(@LEGOSO, 13, -1934.66, -10821.3, 80.0018, 0, ''),
(@LEGOSO, 14, -1940.5, -10807.7, 84.7886, 0, ''),
(@LEGOSO, 15, -1966.12, -10791.9, 88.6942, 0, ''),
(@LEGOSO, 16, -1977.82, -10778.2, 89.1746, 0, ''),
(@LEGOSO, 17, -1980.04, -10757.3, 91.1206, 0, ''),
(@LEGOSO, 18, -1959.13, -10739.6, 98.335, 0, ''),
(@LEGOSO, 19, -1947.52, -10721.8, 108.46, 0, ''),
(@LEGOSO, 20, -1947.04, -10711.1, 111.313, 0, ''),
(@LEGOSO, 21, -1953.05, -10682.2, 110.582, 0, ''),
(@LEGOSO, 22, -1955.6, -10669.8, 110.65, 0, ''),
(@LEGOSO, 23, -1967.13, -10677.3, 111.37, 0, ''),
(@LEGOSO, 24, -1987.29, -10701.7, 116.038, 0, ''),
(@LEGOSO, 25, -2008.1, -10664.8, 120.99, 0, ''),
(@LEGOSO, 26, -2021.77, -10648.8, 129.903, 0, ''),
(@LEGOSO, 27, -2022.39, -10647.7, 130.624, 0, ''),
(@LEGOSO, 28, -2039.34, -10632.7, 143, 0, ''),
(@LEGOSO, 29, -2041.41, -10624.6, 145.187, 0, ''),
(@LEGOSO, 30, -2036.49, -10617.1, 146.52, 0, ''),
(@LEGOSO, 31, -2026.12, -10606.9, 150.263, 0, ''),
(@LEGOSO, 32, -1993, -10613.7, 161.852, 0, ''),
(@LEGOSO, 33, -1970.41, -10616.8, 163.838, 0, ''),
(@LEGOSO, 34, -1953.78, -10590.9, 170.538, 0, ''),
(@LEGOSO, 35, -1942.51, -10577.7, 175.276, 0, ''),
(@LEGOSO, 36, -1915.73, -10580.2, 178.079, 0, ''),
(@LEGOSO, 37, -1951.17, -10555, 177.33, 0, ''),
(@LEGOSO, 38, -1946.9, -10557.8, 177.7, 0, '');


-- Exarch Admetius

-- Text
DELETE FROM `creature_text` WHERE `entry`=@ADMETIUS;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `probability`, `emote`, `comment`) VALUES
(@ADMETIUS, 0, 0, 'All hail $N, savior of Azuremyst and Bloodmyst. Hero of the Hand of Argus, champion of the draenei people!', 14, 100, 22, 'Exarch Admetius q9759 OnRewarded');

-- Smart actions
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ADMETIUS;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ADMETIUS AND `event_type`=20 AND `event_param1`=9759;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_flags`, `event_param1`, `action_type`, `target_type`, `comment`) VALUES
(@ADMETIUS, 0, 0, 0, 20, 1, 9759, 1, 7, 'Exarch Admetius - OnQuestRewarded (9759) - Say Hail');

DELETE FROM `quest_template` WHERE `Id`=9759;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (9759, 2, NULL, 'Untested', 20, 18, 0, 3525, 0, 2, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9761, 0, 0, 0, 7, 3500, 14100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24352, 24353, 24351, 24354, 0, 0, 1, 1, 1, 1, 0, 0, 930, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ending Their World', 'Follow and protect Demolitionist Legoso as he attempts to destroy the Vector Coil and slay Sironas. Return to Exarch Admetius at Blood Watch should you complete the mission.', 'Don\'t accept this assignment if you value your life. You see that gigantic power core jutting out of the mountain side over yonder? Whoever takes on this burden will need to fight their way through that mountain, battling an army of Sunhawks while protecting me as I rig the core up for demolition. Sironas the eredar is somewhere up there as well.$B$BI won\'t think less of you if you just walk away, $N.$B$BBut maybe you\'re the one - the one to destroy the Vector Coil and take down Sironas. Well, are you?', 'Vector Coil Destroyed and Sironas Slain', 'You have saved the whole of Bloodmyst and Azuremyst, securing the draenei way of life on Azeroth, $n! For this, there can be no amount of thanks, no reward, nothing large enough in scope to truly express our appreciation.$B$BYet, there are still so many that were left behind on Draenor who cannot be here for this historic event. You must find your way back. Find your way back to the Outland, Hero of Argus. Bring our people home. Home to the land that you saved. Home to Azeroth...', '', 'Return to Exarch Admetius in Bloodmyst Isle.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 5, 1, 0, 0, 0, 0, 0, 0, 15595);

-- delete report
DELETE FROM `report_quest` WHERE id=9759;
