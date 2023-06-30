-- Quest Temporada de patadas 

SET @ENTRY := 52177;
SET @ENTRYORGUID := 5217700;
SET @QUEST := 29101;
SET @TERROR := 52219;
SET @SPELLSCRIPTS := 93593;
SET @SPELLFURIA := 97605;

-- updates 
UPDATE `quest_template` SET  `RequiredNpcOrGo1`='52177' WHERE Id IN (@QUEST);
DELETE FROM `creature_template` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(@ENTRY, 0, 0, 0, 0, 0, 27883, 0, 0, 0, 'Child of Tortolla', '', 'LootAll', 0, 85, 85, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


-- SmartAI Scripts
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 73, 0, 100, 0, 0, 0, 0, 0, 80, 5217700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRYORGUID AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRYORGUID, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 97984, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(@ENTRYORGUID, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Condicion 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=@ENTRY;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, @ENTRY, 96504, 0, 0, 9, 0, 29101, 0, 0, 0, 0, 0, '', '');

-- Spell cast
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@ENTRY, 96504, 1, 0);

-- elimina el reporte
DELETE FROM `report_quest` WHERE id=@QUEST;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@TERROR AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@TERROR, 0, 0, 0, 1, 0, 100, 0, 2000, 8000, 5000, 12000, 11, 77508, 0, 0, 0, 0, 0, 11, 52177, 20, 0, 0, 0, 0, 0, ''),
(@TERROR, 0, 1, 2, 8, 0, 100, 0, 97605, 0, 0, 0, 33, 52819, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, ''),
(@TERROR, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `spell_scripts` WHERE `id`=@SPELLSCRIPTS;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(@SPELLSCRIPTS, 0, 1, 18, 0, 0, 0, 0, 0, 0, 0),
(@SPELLSCRIPTS, 0, 0, 10, 52177, 60000, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELLFURIA;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, @SPELLFURIA, 0, 2, 31, 0, 3, 52794, 0, 0, 0, 0, '', 'Can only hit brimstone destroyer'),
(13, 1, @SPELLFURIA, 0, 1, 36, 0, 0, 0, 0, 1, 0, 0, '', 'Can only hit dead targets'),
(13, 1, @SPELLFURIA, 0, 1, 31, 0, 3, 52219, 0, 0, 0, 0, '', 'Can only hit Flame Terror'),
(13, 1, @SPELLFURIA, 0, 0, 36, 0, 0, 0, 0, 1, 0, 0, '', 'Can only hit dead targets'),
(13, 1, @SPELLFURIA, 0, 0, 31, 0, 3, 52791, 0, 0, 0, 0, '', 'Can only hit Charred Flamewaker'),
(13, 1, @SPELLFURIA, 0, 2, 36, 0, 0, 0, 0, 1, 0, 0, '', 'Can only hit dead targets');

