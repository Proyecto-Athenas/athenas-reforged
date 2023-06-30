-- Mision ¡No vayas hacia la Luz! 
DELETE FROM `quest_template` WHERE `Id`=14239;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (14239, 0, NULL, 'Untested', 6, 1, 0, 4720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 30, 0, 69013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1133, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Don\'t Go Into the Light!', '', '', '', 'It\'s up to you now. Are you going to come back to life and be the $g hero : heroine; that your fellow survivors need you to be, or are you going to rest for eternity here?$B$BOnly you can decide.$B$BDon\'t go into the Light, $n!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- elimina el reporte de la mision
DELETE FROM `report_quest` WHERE id=14239;

-- creatures template
DELETE FROM `creature_template` WHERE `entry`=36600;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (36600, 0, 0, 0, 0, 0, 30219, 0, 0, 0, 'Geargrinder Gizmo', '', '', 11260, 5, 5, 0, 0, 2160, 2160, 3, 1, 1.14286, 1, 1.14286, 1, 0, 9.5, 13.3, 0, 61, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 5.7, 7.6, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 13, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36600, 0, 0, '', 1);
DELETE FROM `creature_template` WHERE `entry`=36608;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (36608, 0, 0, 0, 0, 0, 30227, 0, 0, 0, 'Doc Zapnozzle', '', '', 0, 5, 1, 0, 0, 2204, 2204, 3, 1, 1.14286, 1, 1.14286, 1, 0, 3.8, 3.8, 0, 46, 1, 2000, 2000, 1, 33544, 2048, 0, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 'SmartAI', 0, 7, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);
DELETE FROM `creature_template` WHERE `entry`=366000;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (366000, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Life Savings Trigger Bunny', '', '', 0, 60, 60, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 104, 138, 0, 252, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 72, 106, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 5, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=366000 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(366000, 0, 0, 1, 10, 0, 100, 1, 1, 15, 0, 0, 12, 36608, 8, 0, 0, 0, 0, 8, 0, 0, 0, 549.191, 3260.56, -0.974903, 2.38596, 'Bunny - On Player With Aura Near - Summon Doc Zapnozzle'),
(366000, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 68481, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bunny - On Player With Aura Near - Remove Phase Aura'),
(366000, 0, 2, 0, 38, 0, 100, 0, 2, 2, 0, 0, 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bunny - On Data Set 2 2 - Reset Script');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=36608 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36608, 0, 0, 1, 20, 0, 100, 0, 14239, 0, 0, 0, 28, 89196, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On Quest Complete - Unaura players from Near Death Aura'),
(36608, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 28, 42716, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On Quest Complete -  Unaura Root'),
(36608, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3660801, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On Quest Complete -  Run Script'),
(36608, 0, 3, 4, 1, 0, 100, 1, 1, 2, 0, 0, 83, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On Just Summoned - Remove Flag'),
(36608, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 36608, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On Just Summoned - Run WP'),
(36608, 0, 5, 6, 40, 0, 100, 0, 2, 36608, 0, 0, 80, 3660800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On WP Reached - Run Script'),
(36608, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 648, 0, 0, 0, 0, 0, 8, 0, 0, 0, 537.604, 3272.21, 0.179382, 0, 'Doc Zapnozzle - On WP Reached - Teleport to Floating Barrel'),
(36608, 0, 7, 0, 64, 0, 100, 0, 0, 0, 0, 0, 28, 69010, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Doc Zapnozzle - On Gossip Hello Remove Near Death Aura');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=3660800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3660800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 537.354, 3272.11, 0.186408, 3.15022, 'Script - Move to Position'),
(3660800, 9, 1, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 64, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Script - Store Target'),
(3660800, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 1, 2, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660800, 9, 3, 0, 0, 0, 100, 0, 2500, 2500, 2500, 2500, 1, 3, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660800, 9, 4, 0, 0, 0, 100, 0, 2500, 2500, 2500, 2500, 45, 1, 3, 0, 0, 0, 0, 9, 36600, 0, 10, 0, 0, 0, 0, 'Script - Gizmo Say'),
(3660800, 9, 5, 0, 0, 0, 100, 0, 2500, 2500, 2500, 2500, 1, 4, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660800, 9, 6, 0, 0, 0, 100, 0, 2500, 2500, 2500, 2500, 1, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660800, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 75, 89196, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast Death Anim Kit'),
(3660800, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 75, 42716, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast Root'),
(3660800, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 34332, 4, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Cast Defribilate'),
(3660800, 9, 10, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 28, 69010, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Near Death Spell'),
(3660800, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660800, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set NPC Flag');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=3660801 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3660801, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 83, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove NPC Flag'),
(3660801, 9, 1, 0, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 1, 1, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660801, 9, 2, 0, 0, 0, 100, 0, 2500, 2500, 2500, 2500, 1, 6, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Script - Say'),
(3660801, 9, 3, 0, 0, 0, 100, 0, 2500, 2500, 2500, 2500, 53, 1, 366080, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Run WP'),
(3660801, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 36600, 15, 0, 0, 0, 0, 0, 'Script - Set data 2 2 on Gizzmo'),
(3660801, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 366000, 80, 0, 0, 0, 0, 0, 'Script - Set data 2 2 on Bunny'),
(3660801, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 4000, 4000, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Despawn');

-- Movimientos de la creatura
DELETE FROM `waypoints` WHERE `entry`=366080;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(366080, 1, 537.604, 3272.21, 0.179382, 'Doc Zapnozzle WP'),
(366080, 2, 549.191, 3260.56, -0.974903, 'Doc Zapnozzle WP');

-- Movimientos de la creatura
DELETE FROM `waypoints` WHERE `entry`=36608;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(36608, 1, 549.191, 3260.56, -0.974903, 'Doc Zapnozzle WP'),
(36608, 2, 537.604, 3272.21, 0.179382, 'Doc Zapnozzle WP');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=36600 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36600, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 10, 1, 3, 5, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip Hello - Play Random Emote'),
(36600, 0, 1, 0, 19, 0, 100, 0, 14474, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Quest 14474 Accept - Say'),
(36600, 0, 2, 0, 19, 0, 100, 0, 14001, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Quest 14001 Accept - Say'),
(36600, 0, 3, 0, 19, 0, 100, 0, 14001, 0, 0, 0, 11, 59073, 4, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'On Quest Accept 14001 - Cast 59073 On Player'),
(36600, 0, 4, 0, 19, 0, 100, 0, 14474, 0, 0, 0, 11, 59073, 4, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'On Quest Accept 14474 - Cast 59073 On Player');

-- Textos
DELETE FROM `creature_text` WHERE entry IN (36600,36608);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(36600, 0, 0, 'Yeah, there\'s tons of people still trapped in the escape pods, boss. Oh wait. I guess you\'re not the boss anymore. Anyways, they\'re all probably going to drown if you don\'t get them out', 12, 0, 100, 1, 0, 0, 0, 'Geargrinder Gizmo'),
(36600, 1, 0, 'That\'s $N?! Sorry, Doc, I thought $g he:she; was dead!', 12, 0, 100, 1, 0, 0, 0, 'Geargrinder Gizmo'),
(36608, 0, 0, 'Come on! Clear!', 12, 0, 100, 0, 0, 0, 36546, 'say'),
(36608, 1, 0, 'You made the right choice! We all owe you a great deal. Try to not get yourself killed out there.', 12, 0, 100, 0, 0, 0, 0, 'say'),
(36608, 2, 0, 'Gizmo, what are you doing just sitting there? Don\'t you recognize who that is laying next to you?!', 12, 0, 100, 0, 0, 0, 36543, 'say'),
(36608, 3, 0, 'That\'s $N! $g He:She; is the only reason we\'re still breathing and not crispy fried critters back on Kezan.', 12, 0, 100, 0, 0, 0, 0, 'say'),
(36608, 4, 0, 'Stay back, I\'m going to resuscitate $g him:her;! I hope these wet jumper cables don\'t kill us all!', 12, 0, 100, 0, 0, 0, 0, 'say'),
(36608, 5, 0, 'That\'s all I\'ve got. It\'s up to $g him:her; now. You hear me, $N? Come on, snap out of it! Don\'t go into the Light!', 12, 0, 100, 0, 0, 0, 0, 'say'),
(36608, 6, 0, 'There are more survivors to tend to. I\'ll see you on the shore.', 12, 0, 100, 0, 0, 0, 36549, 'say');

-- respawm 
DELETE FROM `creature` WHERE id IN (36600,36608,366000);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(246806, 36600, 648, 4720, 4954, 1, 2, 0, 0, 2392.35, 2453.58, 11.3643, 2.05949, 90, 0, 0, 102, 0, 0, 0, 0, 0, 0),
(247501, 36600, 648, 4720, 4721, 1, 6147, 0, 0, 534.729, 3270.74, 0.246752, 1.65561, 120, 0, 0, 102, 0, 0, 0, 0, 0, 0),
(248279, 366000, 648, 4720, 4721, 1, 65535, 0, 0, 534.612, 3272.89, 5.60222, 4.71176, 120, 3, 0, 3052, 0, 1, 0, 0, 0, 0);

-- bytes
DELETE FROM `creature_template_addon` WHERE `entry` IN (36600,36608);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(36600, 0, 0, 1, 0, 0, NULL),
(36608, 0, 0, 0, 1, 0, NULL);

-- Condiciones
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=366000 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=69010 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 366000, 0, 1, 1, 0, 69010, 0, 0, 0, 0, 0, '', 'Script only runs if player has Aura');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=366000 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=89196 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 366000, 0, 0, 1, 0, 89196, 0, 0, 0, 0, 0, '', 'Script only runs if player has Aura');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=366000 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=1 AND `ConditionValue1`=36608 AND `ConditionValue2`=20 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 366000, 0, 0, 29, 1, 36608, 20, 0, 1, 0, 0, '', 'Script only runs if Doc it\'s not Near');

