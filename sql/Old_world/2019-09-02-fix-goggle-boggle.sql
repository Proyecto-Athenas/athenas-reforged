-- Se corrigio la mision https://ptr.wowhead.com/quest=26050/goggle-boggle reporte trello
DELETE FROM `quest_template` WHERE `Id`=26050;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (26050, 2, NULL, 'Untested', 28, 26, 0, 45, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26051, 0, 26051, 7, 2500, 20400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 87, 0, 0, 0, 5, -5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Goggle Boggle', 'Escort Professor Phizzlethorpe to the cave and back.', 'Now that we are full-fledged Blackwater Raiders it is our job to help Mr. O\'Breen locate the lost elven treasure.$b$bIt is next to impossible to find the gems in the dark sea without aid. The doctor has constructed some goggles that will help. He needs the goggles charged with the energy derived from the enchanted stone in the cave just up the hill.$b$bBut the cave is cursed! When we get close, we get ambushed. Defend me and I can harness the energy from the stone into the goggles.', 'Defend Professor Phizzlethorpe', 'The goggles work perfectly now! Well done, $n.', '', 'Return to Doctor Draxlegauge at Faldir\'s Cove in Arathi Highlands.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `report_quest` WHERE `id`=26050;

-- Se agregaron los textos al npc https://www.wow-freakz.com/npc_finder.php?npc=2768&name=professor-phizzlethorpe
DELETE FROM `creature_text` WHERE `entry`=2768;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(2768,0,0,'Ok, $N. Follow me to the cave where I''ll attempt to harness the power of the rune stone into these goggles.',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_1'),
(2768,1,0,'I discovered this cave on our first day here. I believe the energy in the stone can be used to our advantage.',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_2'),
(2768,2,0,'I''ll begin drawing energy from the stone. Your job, $N, is to defend me. This place is cursed... trust me.',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_3'),
(2768,3,0,'%s begins tinkering with the goggles before the stone.',16,0,100,0,0,0,'Professor Phizzlethorpe - EMOTE_PROGRESS_4'),
(2768,4,0,'Help!!! Get these things off me so I can get my work done!',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_AGGRO'),
(2768,5,0,'Almost done! Just a little longer!',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_5'),
(2768,6,0,'I''ve done it! I have harnessed the power of the stone into the goggles! Let''s get out of here!',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_6'),
(2768,7,0,'Phew! Glad to be back from that creepy cave.',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_7'),
(2768,8,0,'%s hands one glowing goggles over to Doctor Draxlegauge.',16,0,100,0,0,0,'Professor Phizzlethorpe - EMOTE_PROGRESS_8'),
(2768,9,0,'Doctor Draxlegauge will give you further instructions, $N. Many thanks for your help!',12,0,100,0,0,0,'Professor Phizzlethorpe - SAY_PROGRESS_9');

-- Se agregaron los púntos de script_waypoint https://www.wow-freakz.com/npc_finder.php?npc=2768&name=professor-phizzlethorpe
DELETE FROM `script_waypoint` WHERE `entry`=2768;    
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(2768,1,-2072.32,-2089.59,9.14603,0,''),
(2768,2,-2078.18,-2096.31,10.8916,0,''),
(2768,3,-2079.21,-2105.22,13.3174,0,''),
(2768,4,-2074.81,-2108.72,14.1485,0,''),
(2768,5,-2076,-2116.21,16.3934,0,''),
(2768,6,-2073.31,-2123.92,18.6202,4000,''),
(2768,7,-2064.41,-2133.33,21.5776,0,''),
(2768,8,-2044.08,-2153.12,20.121,18000,''),
(2768,9,-2044.08,-2153.12,20.121,3000,''),
(2768,10,-2044.08,-2153.12,20.121,0,''),
(2768,11,-2044.08,-2153.12,20.121,14000,''),
(2768,12,-2063.89,-2133.33,21.5648,0,''),
(2768,13,-2075,-2121.98,17.8443,0,''),
(2768,14,-2074.83,-2108.53,14.1036,0,''),
(2768,15,-2079.59,-2091.61,9.80862,0,''),
(2768,16,-2071.29,-2086.44,8.5181,0,''),
(2768,17,-2066.46,-2085.97,8.9241,7000,'');



