DELETE FROM `creature_template` WHERE `entry`=36459;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36459, 0, 0, 0, 0, 0, 5554, 0, 0, 0, 'Chance', '', 'Pickup', 0, 1, 1, 0, 0, 35, 35, 16777216, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 16384, 2048, 8, 0, 0, 0, 0, 0, 1, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 13623);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=36459;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 36459, 68743, 0, 0, 9, 0, 14401, 0, 0, 0, 0, 0, '', 'Spellclick Requires Quests'),
(18, 36459, 68743, 0, 0, 29, 1, 36461, 20, 0, 1, 0, 0, '', 'Spellclick Not Be Near Lucius');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14401;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(1, 14401, 44956, 0, 0, 7, 0, 186, 1, 0, 0, 0, 0, '', NULL);


DELETE FROM `creature` WHERE `id`=36459;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(255759, 36459, 654, 4714, 4714, 1, 4, 5554, 0, -2102.93, 2333.44, 8.62334, 2.1293, 25, 0, 0, 8, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=36459;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(36459, 0, 0, 0, 1, 0, NULL);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36459;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(36459, 68743, 1, 0);


DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=36459;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36459, 0, 0, 0, 73, 0, 100, 1, 0, 0, 0, 0, 18, 33554688, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chance The Cat - On Spellclick - Set Unit Flags'),
(36459, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 19, 33554688, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Chance The Cat - On Respawn - Set Unit flags');



DELETE FROM `quest_template` WHERE `Id`=14401;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(14401, 2, NULL, 'Untested', 7, 4, 0, 4714, 0, 0, 0, 0, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14400, 14402, 0, 14402, 4, 125, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55016, 55017, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grandma\'s Cat', 'Retrieve Chance the cat.', 'Right!  About the evacuation, dear.$B$BI just cannot leave without my cat.  He\'s an adorable orange tabby.$B$BChance\'s favorite spot to play is a broken down cart near an arbor northeast of here.$B$BBring him here and we\'ll be on our way.', '', 'There he is!  Grandma\'s special boy!$B$BThank you so much for finding him.  I hope it wasn\'t too much trouble.$B$BMy... what manner of dirt found its way underneath my fingernails!', 'You\'re such a charming young $gman:lady;, $N.', 'Return to Grandma Wahl at the Wahl Cottage in Gilneas.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `report_quest` WHERE `Id`=14401;

-- quest

DELETE FROM `creature_template` WHERE `entry`=36461;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36461, 0, 0, 0, 0, 0, 30056, 0, 0, 0, 'Lucius the Cruel', '', '', 0, 7, 7, 0, 0, 2201, 2201, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 2, 2, 24, 7, 0, 0, 36461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 2.5, 1, 1, 1, 0, 49281, 0, 0, 0, 0, 0, 0, 1, 36461, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=36461;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(36461, 0, 0, 0, 1, 0, NULL);


DELETE FROM `creature_text` WHERE `entry`=36461;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(36461, 0, 0, 'I\'ll be taking this cat.  It seems to work as the perfect bait.  Prepare to die now, fool!', 12, 0, 100, 16, 0, 0, 36420, 'Lucius the Cruel to Player');


DELETE FROM `event_scripts` WHERE `id`=22401;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(22401, 0, 10, 36461, 180000, 0, -2111.36, 2329.99, 7.3853, 0.220381);


DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=36461;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36461, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, -2106.37, 2331.11, 7.238, 0, 'Lucius the Cruel - On Just Summoned - Move to Position'),
(36461, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Link - Add Unit Flags'),
(36461, 0, 2, 0, 34, 0, 100, 0, 8, 1, 0, 0, 80, 3646100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Movement Inform - Run Script'),
(36461, 0, 3, 0, 9, 0, 100, 0, 2, 30, 2000, 3000, 11, 41440, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Range - Cast Spell'),
(36461, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 36462, 100, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Death Set Data 1 1'),
(36461, 0, 5, 0, 9, 0, 100, 0, 2, 30, 1000, 1000, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Range - Stop Combat Move'),
(36461, 0, 6, 0, 9, 0, 100, 0, 0, 2, 1000, 1000, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Range - Allow Combat Move'),
(36461, 0, 7, 0, 11, 0, 100, 1, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Spawn - Set Run Off'),
(36461, 0, 8, 0, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lucius the Cruel - On Spawn - Say Line');


DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=3646100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3646100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Stop Combat Move'),
(3646100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 19, 36459, 50, 0, 0, 0, 0, 0, 'Script - Despawn Nearby Creature'),
(3646100, 9, 2, 0, 0, 0, 100, 0, 500, 500, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Say Line 1'),
(3646100, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Unit flags'),
(3646100, 9, 4, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 12, 36462, 8, 0, 0, 0, 0, 8, 0, 0, 0, -2102.271, 2350.755, 7.095522, 4.330693, 'Script - Summon Grandma');


DELETE FROM `creature_template` WHERE `entry`=36462;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36462, 0, 0, 0, 0, 0, 36852, 0, 0, 0, 'Grandma Wahl', '', '', 0, 5, 5, 0, 0, 2173, 2173, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36462, 0, 0, '', 13623);


DELETE FROM `creature_text` WHERE `entry`=36462 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(36462, 0, 0, 'You do not mess with my kitty you son of a mongrel!', 14, 0, 100, 0, 0, 0, 36421, 'Grandma Wahl');

DELETE FROM `broadcast_text` WHERE `ID`=36421;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES 
(36421, 0, 'You do not mess with my kitty you son of a mongrel!', 'You do not mess with my kitty you son of a mongrel!', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `locales_broadcast_text` WHERE `ID`=36421;
INSERT INTO `locales_broadcast_text` (`ID`, `MaleText_loc1`, `MaleText_loc2`, `MaleText_loc3`, `MaleText_loc4`, `MaleText_loc5`, `MaleText_loc6`, `MaleText_loc7`, `MaleText_loc8`, `FemaleText_loc1`, `FemaleText_loc2`, `FemaleText_loc3`, `FemaleText_loc4`, `FemaleText_loc5`, `FemaleText_loc6`, `FemaleText_loc7`, `FemaleText_loc8`) VALUES 
(36421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'í•¨ë¶€ë¡œ ë‚´ ê³ ì–‘ì´ ë§Œì§€ìž‘ê±°ë¦¬ì§€ ë§ˆ! ì´ ì§€ì €ë¶„í•œ ë†ˆì•„!', 'Tu ne touches pas à  mon chat-chat, fils de corniaud, !', 'Mit meinem KÃ¤tzchen stellt Ihr keine Schweinereien an - Ihr Sohn einer Promenadenmischung!', 'åˆ«å¼„è„æˆ‘çš„çŒ«ï¼Œä½ è¿™ä¸ªæ··è›‹ï¼', 'ä¸è¦æ‰¾æˆ‘è²“å’ªçš„éº»ç…©ï¼Œä½ é€™ç‹—å¨˜é¤Šçš„!', '¡No le hagas daño a mi gatito, hijo de un chacal!', '¡No le hagas daño a mi gatito, hijo de un chacal!', 'Ð”ÐµÑ€Ð¶Ð¸ Ð»Ð°Ð¿Ñ‹ Ð¿Ð¾Ð´Ð°Ð»ÑŒÑˆÐµ Ð¾Ñ‚ Ð¼Ð¾ÐµÐ³Ð¾ ÐºÐ¾Ñ‚ÐµÐ½ÐºÐ°, Ð³Ñ€ÑÐ·Ð½Ñ‹Ð¹ Ð¼Ð¾Ð½ÑÑ‚Ñ€!');


DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=36462;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36462, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, -2106.13, 2336.45, 7.452, 0, 'On Just Summoned - Move to Position'),
(36462, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 3, 36458, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Link - Set Model'),
(36462, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Link - Set Unit Flags'),
(36462, 0, 3, 4, 34, 0, 100, 0, 8, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Movement Inform - Say Line 0'),
(36462, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 3, 36462, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Link - Set Model'),
(36462, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 36461, 30, 0, 0, 0, 0, 0, 'Grandma Whal - On Link - Attack Nearby NPC'),
(36462, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Link - Remove Unit flags'),
(36462, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Link - Set Home Position'),
(36462, 0, 8, 0, 7, 0, 100, 1, 0, 0, 0, 0, 80, 3646200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Evade - Run Script'),
(36462, 0, 9, 0, 25, 0, 100, 1, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grandma Whal - On Evade - Run Script');



DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=3646200;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3646200, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 'Script - Move to Position'),
(3646200, 9, 1, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, -2114.54, 2389.76, 9.47238, 0, 'Script - Move to Position'),
(3646200, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Despawn');


DELETE FROM `creature_template` WHERE `entry`=36458;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36458, 0, 0, 0, 0, 0, 30288, 0, 0, 0, 'Grandma Wahl', '', '', 0, 5, 5, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 0, 5, 7, 0, 32, 1, 2000, 2000, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 3, 4, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 13, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36458, 0, 0, 'npc_wahl', 13623);



DELETE FROM `creature` WHERE `id`=36458;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(254118, 36458, 654, 4714, 4806, 1, 4, 0, 0, -2116.89, 2416.67, 12.26, 3.31613, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=36458;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(36458, 0, 0, 0, 1, 0, NULL);
