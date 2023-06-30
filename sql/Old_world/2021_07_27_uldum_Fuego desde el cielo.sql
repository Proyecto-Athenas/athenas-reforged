-- Fuego desde el cielo

DELETE FROM `report_quest` WHERE id=28497;
DELETE FROM `report_quest` WHERE id=28613;

DELETE FROM `quest_template` WHERE `Id`=28613;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(28613, 2, NULL, 'Untested', 83, 83, 0, 989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28497, 0, 0, 27748, 1, 0, 26400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'See You on the Other Side!', 'Speak to Harrison Jones at the top of Maker\'s Ascent in Uldum.', 'Alright, $n. We\'ve bought ourselves a little breathing room, but there\'s no time to lose.$b$bFollow me!', '', 'So far, so good...', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

   
DELETE FROM `creature_questrelation` WHERE `id`=48698 AND `quest`=28497;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(48698, 28497);


DELETE FROM `creature_involvedrelation` WHERE `id`=48698 AND `quest`=28497;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(48698, 28497);


DELETE FROM `quest_template` WHERE `Id`=28497;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(28497, 2, NULL, 'Untested', 83, 83, 0, 5034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28482, 0, 0, 28613, 5, 86000, 263400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65870, 65869, 65868, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire From the Sky', 'Kill 100 Schnottz Troopers while mounted on the Confiscated Artillery.', 'Sullah wasn\'t kidding. That hill is crawling with troopers!$b$bJump on and paint our targets for me.$b$bMake every shot count, $n! We need to be able to get up there.', '', 'Good work, $N.$B$BNow let\'s see if we can make our way up there before they\'re able to recover.', 'Don\'t think twice, $N.\r\n\r\nThese guys are rotten to the core.', 'Speak to Harrison Jones in Pilgrim\'s Precipice.', 48859, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Schnottz Infantrymen Slain', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `spell_area` WHERE `spell`=91639 AND `area`=5671 AND `quest_start`=28497 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (91639, 5671, 28497, 0, 28612, 0, 0, 2, 1, 64, 11);
DELETE FROM `spell_area` WHERE `spell`=91764 AND `area`=5669 AND `quest_start`=28497 AND `quest_start_active`=0 AND `aura_spell`=28612 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES (91764, 5669, 28497, 0, 0, 28612, 0, 2, 1, 1, 11);

DELETE FROM `creature_template` WHERE `entry`=48698;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48698, 0, 0, 0, 0, 0, 22354, 0, 0, 0, 'Harrison Jones', '', '', 12450, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 0.857143, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 13623);


DELETE FROM `vehicle_template_accessory` WHERE `entry`=48644 AND `seat_id`=0;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(48644, 48698, 0, 0, 'jones', 7, 0);



DELETE FROM `creature` WHERE `guid`=125376;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(125376, 48644, 1, 5034, 5685, 1, 1, 0, 0, -8268.28, -84.5208, 320.412, 2.86234, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=48644;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48644, 0, 0, 0, 0, 0, 27658, 0, 0, 0, 'Confiscated Artillery', '', '', 0, 84, 84, 3, 0, 35, 35, 0, 1, 1.14286, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 9, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1344, 0, 0, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=48644;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(48644, 0, 0, 0, 1, 0, NULL);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=48644 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(48644, 46598, 1, 0);


DELETE FROM `creature` WHERE id=48699;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(88314, 48699, 1, 5034, 5685, 1, 1, 0, 0, -8244.57, -216.191, 321.462, 2.58341, 120, 0, 0, 2, 0, 0, 16777216, 0, 0, 0),
(92343, 48699, 1, 5034, 5685, 1, 1, 0, 0, -8277.41, -48.2365, 317.127, 2.97506, 120, 0, 0, 2, 0, 0, 16777216, 0, 0, 0),
(504922, 48699, 1, 5034, 5685, 1, 1, 0, 0, -8264.49, -118.432, 320.005, 3.02022, 120, 0, 0, 2, 0, 0, 16777216, 0, 0, 0),
(504923, 48699, 1, 5034, 5685, 1, 1, 0, 0, -8236.98, -168.527, 321.397, 3.06054, 120, 0, 0, 2, 0, 0, 16777216, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=48699;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48699, 0, 0, 0, 0, 0, 27658, 0, 0, 0, 'Confiscated Artillery', '', 'vehichleCursor', 0, 84, 84, 3, 0, 35, 35, 0, 1, 1.14286, 1.2, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 9, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1345, 0, 0, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE entry=48699;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=48699 AND `spell_id`=56685;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(48699, 56685, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=48699 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48699, 0, 0, 0, 73, 0, 100, 512, 0, 0, 0, 0, 80, 4869900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4869900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4869900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 90800, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4869900, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4869900, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 81, 16777216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `phase_definitions` WHERE zoneId=5034;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `worldMapAreaSwap`, `flags`, `comment`) VALUES 
(5034, 0, 0, 0, 0, 746, 0, 0, 'Uldum Oasis');


DELETE FROM `spell_target_position` WHERE `id`=90800;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(90800, 1, -8541.17, -24.9669, 273.454, 4.45009);


DELETE FROM `creature_template` WHERE `entry`=48728;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48728, 0, 0, 0, 0, 0, 16480, 37162, 0, 0, 'Artillery Spotter Seat', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91055, 0, 0, 0, 0, 0, 0, 0, 0, 1346, 0, 0, 'SmartAI', 0, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=48728;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(48728, 0, 0, 0, 1, 0, '42716 ');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=48728 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (48728, 46598, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=48728 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48728, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 85, 46598, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(48728, 0, 1, 0, 38, 0, 100, 512, 1, 1, 0, 0, 11, 91122, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(48728, 0, 2, 0, 28, 0, 100, 512, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=48668;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48668, 0, 0, 0, 48204, 0, 36073, 36143, 36144, 36145, 'Schnottz Elite Trooper', '', '', 0, 84, 85, 3, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 1, 530, 713, 0, 827, 4.6, 2000, 2000, 1, 0, 33554432, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 0, 0, 48668, 48668, 0, 0, 0, 0, 0, 0, 0, 6660, 88844, 0, 0, 0, 0, 0, 0, 0, 0, 7595, 8245, 'SmartAI', 0, 1, 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 48668, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=48668 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(48668, 0, 0, '%s attempts to run away in fear!', 16, 0, 100, 0, 0, 0, 1150, 'combat Flee');

DELETE FROM `creature` WHERE id=48698;
DELETE FROM `creature` WHERE id=48713;
DELETE FROM `creature` WHERE id=48720;
DELETE FROM `creature` WHERE id=48668;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(144435, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8519.49, -44.1277, 236.976, 0.168493, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144437, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8523.09, -37.5762, 236.976, 4.767, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144443, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8522.81, -35.3308, 236.98, 4.49604, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144469, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8517.81, -33.7447, 236.991, 2.992, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144475, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8508.84, -34.6421, 236.976, 3.18443, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144477, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8507.1, -28.6112, 236.976, 5.68199, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144478, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8512.13, -26.165, 236.99, 5.70555, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144485, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8512.13, -21.7298, 237.03, 3.67923, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144511, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8546.07, 23.9639, 260.443, 4.97906, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144516, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8549.8, 26.4314, 260.443, 5.85871, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144521, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8551.97, 28.7623, 260.627, 5.14007, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(144535, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8548.86, 28.896, 260.444, 2.78388, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106185, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8544.93, 28.6336, 260.444, 3.369, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106199, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8543.35, 32.1515, 260.321, 4.8102, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106203, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8590.54, -9.46533, 283.504, 1.33874, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106216, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8589.96, -14.5875, 283.467, 1.43299, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106218, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8586.74, -15.0505, 283.467, 1.37801, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106226, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8594.23, 27.9519, 289.136, 0.647592, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106227, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8599.43, 26.2477, 289.227, 5.07724, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106228, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8604.93, 31.2993, 289.448, 0.372702, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106229, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8608.94, 34.407, 289.784, 4.71596, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106238, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8607.55, 40.6329, 290.31, 5.57989, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106242, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8626.92, 77.3561, 300.072, 5.08902, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106245, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8627.6, 82.4783, 301.204, 4.6492, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106257, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8619.68, 94.6442, 303.763, 4.14262, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106260, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8611.84, 145.907, 310.834, 4.88089, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106263, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8616.27, 147.296, 311.126, 4.84555, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106279, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8613.8, 147.893, 311.035, 4.94922, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106282, 48668, 1, 5034, 5674, 1, 1, 0, 0, -8610.61, 148.662, 310.984, 4.94922, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106302, 48668, 1, 5034, 5671, 1, 1, 0, 0, -8680.8, 141.015, 325.03, 5.44009, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106305, 48668, 1, 5034, 5671, 1, 1, 0, 0, -8675.28, 143.137, 324.659, 5.34978, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106317, 48668, 1, 5034, 5671, 1, 1, 0, 0, -8677.85, 146.72, 325.027, 5.48722, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106327, 48668, 1, 5034, 5671, 1, 1, 0, 0, -8682.44, 141.974, 325.128, 5.78174, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106329, 48668, 1, 5034, 5668, 1, 1, 0, 0, -8895.21, 157.855, 148.979, 4.1811, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106330, 48668, 1, 5034, 5668, 1, 1, 0, 0, -8898.24, 158.896, 148.916, 4.58165, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106335, 48668, 1, 5034, 5668, 1, 1, 0, 0, -8890.75, 154.928, 148.981, 2.43752, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106336, 48668, 1, 5034, 5668, 1, 1, 0, 0, -8884.85, 154.229, 148.841, 3.80018, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106344, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8881.46, 176.936, 149.028, 3.63525, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106354, 48668, 1, 5034, 5668, 1, 1, 0, 0, -8874.83, 179.763, 149.043, 3.7884, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106355, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8910.69, 199.202, -21.7144, 2.17856, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106359, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8846.86, 159.965, -21.7592, 5.95812, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106379, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8856.81, 222.374, -21.7705, 1.14118, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106388, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8825.87, 259.309, 143.017, 4.24393, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(106402, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8762.56, 285.669, 140.847, 4.03973, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107587, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8760.84, 326.181, 140.883, 3.8316, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107590, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8709.91, 394.945, 140.88, 4.91152, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107591, 48668, 1, 5034, 5668, 1, 1, 0, 0, -8663.04, 528.415, 154.375, 0.658594, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107594, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8840.97, 246.096, -21.7782, 2.19934, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107612, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8829.74, 307.933, -21.7786, 0.249807, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107634, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8776.42, 316.048, -21.7784, 3.08963, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107656, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8711.91, 465.755, 148.928, 0.69786, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107659, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8723.34, 422.964, 140.881, 1.11412, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107660, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8746.34, 422.613, 140.881, 5.44559, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107661, 48668, 1, 5034, 5672, 1, 1, 0, 0, -8800.12, 257.286, -22.2135, 1.86053, 90, 0, 0, 126, 0, 0, 0, 0, 0, 0),
(107670, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8500.43, -58.7743, 237.426, 0.888974, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107674, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8502.88, -61.5082, 237.609, 0.82876, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107689, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8506.33, -65.2696, 237.549, 0.82876, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(107703, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8502.17, -57.5634, 237.367, 0.7836, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107712, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8504.4, -59.7868, 237.525, 0.7836, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107717, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8508.12, -63.4934, 237.453, 0.7836, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107726, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8503.9, -55.6912, 237.429, 0.763529, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107730, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8506.39, -58.0748, 237.413, 0.763529, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(107733, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8509.64, -61.1895, 237.288, 0.763529, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107737, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8541.94, -58.1132, 237.085, 3.77924, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(107744, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8538.56, -55.6138, 237.337, 3.77924, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475586, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8535.07, -53.0234, 237.402, 3.77924, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475584, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8531.57, -50.4356, 237.61, 3.77924, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475580, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8540.08, -61.4274, 236.975, 3.81938, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475578, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8536.87, -58.8426, 236.975, 3.81938, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475575, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8532.6, -55.4084, 237.158, 3.81938, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475570, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8529.98, -53.292, 237.212, 3.81938, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475562, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8537.53, -64.1509, 236.978, 3.75746, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475557, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8534.41, -61.9338, 236.975, 3.83757, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475547, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8531.76, -59.7209, 236.975, 3.83757, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475534, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8528.76, -57.2195, 236.999, 3.83757, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475519, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8535.82, -68.1732, 237.714, 3.87506, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475487, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8532.37, -65.2915, 236.981, 3.82086, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475439, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8528.92, -62.5068, 236.976, 3.82086, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475386, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8525.77, -59.9597, 236.976, 3.82086, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475297, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8541.17, 72.9571, 277.223, 1.47916, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(475294, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8541.59, 69.1802, 275.448, 1.36449, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(475239, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8542.09, 66.6792, 274.258, 1.52235, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(474281, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8542.26, 63.6836, 272.86, 1.36449, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(434357, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8536.96, 72.7958, 277.429, 1.38993, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(432451, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8537.53, 69.4716, 275.854, 1.58549, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(412351, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8537.71, 65.9643, 274.219, 1.41427, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(401407, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8538.24, 62.6261, 272.637, 1.41427, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(401095, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8503.86, -11.4583, 237.102, 2.3722, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(401055, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8502.24, -13.0236, 237.108, 2.3722, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400982, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8499.01, -16.1543, 237.146, 2.3722, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(400818, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8506.18, -13.0776, 237.063, 2.37298, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400759, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8503.67, -15.762, 236.986, 2.29287, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400752, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8501.64, -18.0685, 236.999, 2.29287, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(400750, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8508.28, -15.0329, 237.098, 2.26695, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400629, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8506.31, -17.3947, 237.012, 2.26695, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400263, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8503.9, -20.271, 236.979, 2.26695, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400123, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8510.66, -16.3201, 237.172, 2.25439, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400090, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8509, -18.3541, 237.01, 2.25439, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400057, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8506.73, -21.1452, 236.98, 2.25439, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(400050, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8563.06, -86.2858, 223.411, 3.73312, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(400041, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8559.01, -83.1796, 225.797, 3.79817, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400039, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8555.94, -80.7216, 227.633, 3.76807, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(400012, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8553.1, -78.2328, 229.394, 3.81323, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(400009, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8564.99, -83.7996, 223.414, 3.82998, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(365022, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8561.23, -80.267, 225.81, 3.83234, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(362077, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8558.05, -77.6408, 227.732, 3.83234, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(362063, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8555.37, -75.4208, 229.357, 3.80223, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(362043, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8567.23, -80.6864, 223.478, 3.80275, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(360009, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8563.5, -77.7824, 225.685, 3.80275, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(355615, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8560.77, -75.663, 227.296, 3.80275, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(355291, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8557.28, -72.9441, 229.361, 3.80275, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(351602, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8591.35, -108.736, 214.92, 5.42853, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(351586, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8593.82, -105.905, 214.872, 5.42853, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(350923, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8596.67, -102.622, 214.826, 5.42853, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(350780, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8588.63, -107.211, 214.823, 5.40846, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(350130, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8591.51, -103.757, 214.822, 5.40846, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(350110, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8593.88, -100.933, 214.843, 5.40846, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(350094, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8585.54, -104.963, 214.837, 5.43857, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(350055, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8588.41, -101.412, 214.826, 5.32076, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(349979, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8590.65, -98.207, 214.889, 5.32076, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(349186, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8582.09, -102.707, 214.892, 5.32451, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(349165, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8584.42, -99.3883, 214.824, 5.32451, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(349146, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8587.36, -95.2118, 215.068, 5.32451, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(349144, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8593.57, -14.8569, 283.468, 1.56529, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(349066, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8597.07, -14.8376, 283.609, 1.56529, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(348890, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8597.1, -19.189, 283.468, 1.56529, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(348880, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8597.13, -24.5124, 283.468, 1.56529, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(348876, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8593.14, -18.7514, 283.468, 1.46995, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(348869, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8592.55, -24.4251, 284.152, 1.58776, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(346652, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8588.2, -16.6327, 283.468, 1.49587, 300, 0, 0, 244760, 0, 0, 0, 0, 0, 0),
(346638, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8588.46, -24.4129, 283.468, 1.53592, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0),
(346624, 48668, 1, 5034, 5674, 1, 1, 0, 48668, -8583.68, -22.3302, 283.468, 1.57362, 300, 0, 0, 203717, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=48668 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48668, 0, 0, 1, 4, 0, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving on Aggro'),
(48668, 0, 1, 2, 61, 0, 100, 1, 0, 0, 0, 0, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Shoot on Aggro'),
(48668, 0, 2, 3, 61, 0, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Melee Attack on Aggro'),
(48668, 0, 3, 0, 61, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(48668, 0, 4, 5, 9, 1, 100, 0, 5, 30, 2300, 3900, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Shoot'),
(48668, 0, 5, 0, 61, 1, 100, 0, 0, 0, 0, 0, 40, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Ranged Weapon Model'),
(48668, 0, 6, 7, 9, 1, 100, 0, 30, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in Shoot Range'),
(48668, 0, 7, 0, 61, 1, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Melee Attack when not in Shoot Range'),
(48668, 0, 8, 9, 9, 1, 100, 0, 0, 10, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in Shoot Range'),
(48668, 0, 9, 10, 61, 1, 100, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Melee Weapon Model when not in Shoot Range'),
(48668, 0, 10, 0, 61, 1, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Melee Attack when not in Shoot Range'),
(48668, 0, 11, 12, 9, 1, 100, 0, 11, 25, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 25 Yards'),
(48668, 0, 12, 13, 61, 1, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Melee Attack at 25 Yards'),
(48668, 0, 13, 0, 61, 1, 100, 0, 0, 0, 0, 0, 40, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Ranged Weapon Model at 25 Yards'),
(48668, 0, 14, 15, 7, 1, 100, 1, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Melee Weapon Model on Evade'),
(48668, 0, 15, 0, 61, 1, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Reset on Evade'),
(48668, 0, 16, 0, 2, 1, 100, 1, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'At 15% HP - Set Phase 2'),
(48668, 0, 17, 0, 2, 2, 100, 1, 0, 15, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flee at 15% HP'),
(48668, 0, 18, 19, 7, 2, 100, 1, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Melee Weapon Model on Evade'),
(48668, 0, 19, 0, 61, 2, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Reset on Evade'),
(48668, 0, 20, 0, 2, 2, 100, 1, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Text at 15% HP'),
(48668, 0, 21, 0, 0, 1, 100, 0, 5000, 5000, 12000, 13000, 11, 88844, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Cauterizing Strike'),
(48668, 0, 22, 0, 60, 0, 100, 0, 0, 2000, 2000, 2000, 49, 0, 0, 0, 0, 0, 0, 19, 48518, 15, 0, 0, 0, 0, 0, ''),
(48668, 0, 23, 0, 8, 0, 100, 1, 91108, 0, 0, 0, 80, 4866800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4866800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4866800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 89640, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4866800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4866800, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- ¡Nos vemos al otro lado!

DELETE FROM `creature_template` WHERE `entry`=47158;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(47158, 0, 0, 0, 0, 0, 22354, 0, 0, 0, 'Harrison Jones', '', '', 12231, 85, 85, 3, 0, 2263, 2263, 3, 1, 1.14286, 1, 0.857143, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `guid`=99730;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(99730, 47158, 1, 5034, 5671, 1, 1, 0, 0, -8678.48, 191.304, 336.713, 1.00686, 90, 0, 0, 420, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=47158;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(47158, 0, 0, 0, 1, 0, '84753');

DELETE FROM `creature_text` WHERE `entry`=47158;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(47158, 0, 0, 'Let\'s move!', 12, 0, 100, 0, 2000, 0, 44099, ''),
(47158, 1, 0, 'I\'ve got a bad feeling about this..', 12, 0, 100, 0, 2000, 0, 0, ''),
(47158, 2, 0, 'I figured I might see you again, Schnottz.', 12, 0, 100, 6, 2000, 0, 47263, ''),
(47158, 3, 0, 'I know what you\'re up to, Schnottz! Deathwing will never have the coffer, not if I can help it!', 12, 0, 100, 5, 2000, 0, 47236, ''),
(47158, 4, 0, 'Not so fast, Schnottz!', 12, 0, 100, 0, 2000, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=47158;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47158, 0, 0, 0, 19, 0, 100, 0, 27748, 0, 0, 0, 80, 4715800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47158, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4715801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47158, 0, 2, 0, 40, 0, 100, 0, 4, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47158, 0, 3, 0, 40, 0, 100, 0, 6, 0, 0, 0, 80, 4715802, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=4715800;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4715800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 47158, 3, 100000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715800, 9, 2, 0, 0, 0, 100, 0, 14000, 14000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=4715801;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4715801, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715801, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 53, 1, 47158, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715801, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 206544, 30, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=4715802;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4715802, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715802, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 47160, 10, 0, 0, 0, 0, 0, ''),
(4715802, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 11, 47160, 15, 0, 0, 0, 0, 0, ''),
(4715802, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715802, 9, 5, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 11, 47160, 10, 0, 0, 0, 0, 0, ''),
(4715802, 9, 6, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 11, 47160, 10, 0, 0, 0, 0, 0, ''),
(4715802, 9, 7, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 11, 47160, 10, 0, 0, 0, 0, 0, ''),
(4715802, 9, 8, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4715802, 9, 9, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 11, 47160, 10, 0, 0, 0, 0, 0, ''),
(4715802, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 47160, 25, 0, 0, 0, 0, 0, ''),
(4715802, 9, 11, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `gameobject_template` WHERE `entry`=206544;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(206544, 0, 2230, 'Temple of Uldum Landslide', '', '', '', 114, 33, 1.5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE `id`=206544;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(121800, 206544, 1, 5034, 5671, 1, 1, -8686.21, 212.443, 336.896, 5.51524, 0, 0, 0, 1, 120, 255, 1);

DELETE FROM `waypoints` WHERE `entry`=47158;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(47158, 1, -8672.26, 201.032, 336.603, ''),
(47158, 2, -8682.13, 209.851, 339.845, ''),
(47158, 3, -8699.66, 226.304, 329.218, ''),
(47158, 4, -8715.02, 270.47, 329.217, ''),
(47158, 5, -8735.27, 297.738, 329.217, ''),
(47158, 6, -8764.46, 298.669, 329.216, '');


DELETE FROM `creature_template` WHERE `entry`=60497;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(60497, 0, 0, 0, 0, 0, 328, 0, 0, 0, 'Ruins of Khintaset Digsite', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 5, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `guid`=475284;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(475284, 60497, 1, 5034, 5671, 1, 1, 0, 0, -8727.82, 245.33, 329.216, 1.43804, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=42098;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(117427, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -242.097, -805.613, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(117476, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -189.415, -732.878, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(117702, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -239.958, -782.721, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(117731, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -256.325, -787.965, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(117773, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -208.443, -739.306, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(117881, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -260.908, -765.717, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(117940, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -279.719, -773.378, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(118031, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -209.033, -715.948, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(118125, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -230.665, -718.797, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(118183, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -231.026, -701.149, 812.349, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(118370, 42098, 748, 0, 0, 15, 1, 0, 0, 34.12, 0.00436599, 8.38004, 3.14159, 300, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(118427, 42098, 748, 0, 0, 15, 1, 0, 0, -16.9927, -29.0132, -29.0132, 0.977384, 300, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(118626, 42098, 748, 0, 0, 15, 1, 0, 0, -16.8569, 28.8511, 8.32932, 5.25344, 300, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(5329126, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -414.988, -499.075, 894.67, 5.393, 604800, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(141606, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -414.884, -565.012, 894.67, 0.785, 604800, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(141601, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -446.358, -499.215, 894.67, 3.526, 604800, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(141590, 42098, 671, 5334, 5334, 15, 1, 11686, 0, -446.252, -564.891, 894.67, 3.648, 604800, 0, 0, 1, 0, 0, 0, 33587204, 0, 0),
(141585, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8750.44, 270.453, 335.221, 0, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141580, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8719.86, 275.219, 329.299, 0, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141576, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8751, 286, 341.083, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141565, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8750.15, 275.62, 370.426, 0, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141549, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8761.08, 284.84, 331.472, 0, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141532, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8752.08, 277.599, 380.053, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141524, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8742.07, 268.286, 343.539, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141522, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8761.08, 284.84, 336.705, 0, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141510, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8740.22, 252.736, 355.083, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141491, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8741.28, 271.339, 335.198, 0, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141489, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8730, 278, 372.083, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(31511, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8753, 273, 370.083, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141474, 42098, 1, 5034, 5671, 1, 1, 11686, 0, -8749.66, 273.505, 343.562, 5.5676, 90, 0, 0, 85892, 0, 0, 0, 0, 0, 0),
(141469, 42098, 720, 0, 0, 15, 1, 0, 0, 250.753, -64.0087, 66.0648, 0, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=42098 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(42098, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 84568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stalker - cast Visual');

DELETE FROM `creature` WHERE id=47048;

DELETE FROM `creature_template` WHERE `entry`=46646;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46646, 0, 0, 0, 0, 0, 35207, 0, 0, 0, 'Obsidian Colossus', '', '', 0, 85, 85, 3, 0, 1692, 1692, 0, 1, 1.14286, 1.6, 0.571429, 1, 1, 530, 713, 0, 827, 3.5, 2000, 2000, 1, 33849408, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 33554504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, 'SmartAI', 0, 1, 0, 20, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 870, 1, 46646, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `guid`=118174;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(118174, 46646, 1, 5034, 5671, 1, 1, 35207, 46646, -8738.64, 263.365, 329.41, 5.49779, 90, 10, 0, 1549800, 0, 1, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=46646;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(46646, 0, 0, 0, 1, 0, '86985');


DELETE FROM `creature_text` WHERE `entry`=46646;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(46646, 0, 0, 'Avoid the shadow runes!', 41, 0, 100, 11, 0, 0, 0, 'Obsidian Colossus'),
(46646, 1, 0, 'Get behind the Colossus!', 41, 0, 100, 11, 0, 0, 0, 'Obsidian Colossus');


DELETE FROM `smart_scripts` WHERE `entryorguid`=46646 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46646, 0, 7, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4664600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(46646, 0, 8, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4664601, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4664600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4664600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4664600, 9, 2, 0, 0, 0, 100, 0, 60000, 60000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4664601 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4664601, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 86985, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4664601, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 33849408, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4664601, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 60, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template` WHERE `entry`=47160;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(47160, 0, 0, 0, 0, 0, 35436, 0, 0, 0, 'Commander Schnottz', '', '', 0, 85, 85, 3, 0, 2102, 2102, 0, 1, 1.14286, 1, 1.14286, 1, 0, 530, 713, 0, 827, 1, 2000, 2000, 2, 770, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1, 8992.8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `guid`=144370;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(144370, 47160, 1, 5034, 5671, 1, 65535, 0, 0, -8771.22, 295.94, 329.216, 5.47875, 30, 0, 0, 70278, 39676232, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=47160;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(47160, 0, 0, 0, 1, 0, '84753');

DELETE FROM `creature_text` WHERE `entry`=47160;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(47160, 0, 0, 'Ve meet again, Doctor Jones! Zhanks to your vork in zhis region, my mission has become much easier.', 12, 0, 100, 1, 2000, 0, 47219, ''),
(47160, 1, 0, 'Vell in zhat case, ve must ensure zhat you and your friend are out of zhe picture.', 12, 0, 100, 11, 2000, 0, 47245, ''),
(47160, 2, 0, 'Permanently!', 12, 0, 100, 0, 2000, 0, 47265, ''),
(47160, 3, 0, 'You von\'t live to see your precious coffer, Jones!', 12, 0, 100, 0, 2000, 0, 47266, ''),
(47160, 4, 0, 'Destroy the Obsidian Colossus!', 41, 0, 100, 0, 2000, 0, 47270, ''),
(47160, 5, 0, 'Zhat vhich you seek vill soon be mine, Doctor Jones!', 14, 0, 100, 0, 2000, 0, 47360, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=47160 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47160, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4716000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(47160, 0, 1, 0, 60, 0, 100, 0, 0, 0, 0, 0, 11, 87967, 0, 0, 0, 0, 0, 15, 206561, 30, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4716000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4716000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 10, 602245, 46646, 0, 0, 0, 0, 0, ''),
(4716000, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 46646, 3, 350000, 0, 0, 0, 8, 0, 0, 0, -8742.54, 269.438, 329.287, 2.34845, ''),
(4716000, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


-- Harrison Jones y el Templo de Uldum
-- Faltan mecanicas para hacer esta mision.

DELETE FROM `creature` WHERE id=47067;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(106149, 47067, 1, 5034, 5671, 1, 1, 0, 0, -8831.64, 365.189, 352.433, 2.45029, 90, 10, 0, 21, 0, 1, 0, 0, 0, 0),
(130361, 47067, 1, 5034, 5669, 1, 1, 0, 0, -9220.59, 320.344, 261.661, 3.52237, 90, 10, 0, 21, 0, 1, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=49151;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(49151, 0, 0, 0, 0, 0, 22354, 0, 0, 0, 'Harrison Jones', '', '', 0, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 0.857143, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 256, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=49151;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(49151, 0, 0, 0, 1, 0, '84753');


DELETE FROM `creature` WHERE `id`=49151;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(127429, 49151, 1, 5034, 5671, 1, 1, 0, 0, -8833.59, 373.715, 353.967, 3.77626, 90, 0, 0, 420, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=49151 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(49151, 0, 0, 0, 19, 0, 100, 0, 28612, 0, 0, 0, 80, 4915100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4915100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4915100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 89147, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4915100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -9302.35, 493.337, 242.811, 1.64313, '');

DELETE FROM `creature_template` WHERE `entry`=47223;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (47223, 0, 0, 0, 0, 0, 32237, 0, 0, 0, 'Schnottz\'s Hot Air Balloon', '', '', 0, 80, 80, 3, 0, 1818, 1818, 0, 1, 1.14286, 1, 1.14286, 1, 0, 488, 642, 0, 782, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 363, 521, 121, 9, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1253, 1500, 2800, 'SmartAI', 0, 5, 0, 30, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `quest_template` WHERE `Id`=28612;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (28612, 2, NULL, 'Untested', 83, 83, 0, 989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27748, 0, 0, 28621, 6, 0, 329400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65833, 65832, 65831, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Harrison Jones and the Temple of Uldum', 'Recover the Coffer of Promise.', 'After all we\'ve been through, it looks like everything\'s actually coming together!$b$bWe\'re just steps away from the coffer... I\'ve researched the codes to reveal it... Schnottz thinks we\'re dead....$b$bYou know, we might just pull this off after all!', '', 'Lucky fer you, this ol\' dwarf\'s still got a few tricks up his sleeve!$B$BHeehee! ...shoulda seen tha look on yer faces!', '', 'Speak with Brann Bronzebeard at the Temple of Uldum.', 49204, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Coffer of Promise Discovered', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 890, 878, 396, 5, 0, 0, 0, 500, 0, 0, 0, 0, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `report_quest` WHERE id=28612;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=70032 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=28612 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 70032, 0, 0, 9, 0, 28612, 0, 0, 0, 0, 0, '', '');


DELETE FROM `spell_area` WHERE `spell`=91765 AND `area`=5669 AND `quest_start`=28612 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(91765, 5669, 28612, 0, 0, 0, 0, 2, 1, 64, 1);

DELETE FROM `spell_area` WHERE `spell`=91639 AND `area`=5671 AND `quest_start`=28497 AND `quest_start_active`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(91639, 5671, 28497, 0, 28612, 0, 0, 2, 1, 64, 11);


