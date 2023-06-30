-- Fix Quest 12244 horda y alianza

SET @OBJECTID   := 300202;
SET @BROKEN     := 27354;
SET @PACERBUNNY := 26591;

-- Missing Broken-down Shredder spawns
DELETE FROM `creature` WHERE `id` IN (27354);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(347693, @BROKEN, 571, 0, 0, 1, 1, 0, 0, 4085.38, -2916.55, 278.035, 5.02655, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(347692, @BROKEN, 571, 0, 0, 1, 1, 0, 0, 4156.48, -2964, 283.862, 6.0912, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- Spawn Basecamp objects
DELETE FROM `gameobject` WHERE `id` = @OBJECTID;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(96465, @OBJECTID, 571, 0, 0, 1, 1, 3991.77, -3186.28, 281.448, 0.069813, 0, 0, 0.94445, -0.328654, 300, 0, 1),
(96470, @OBJECTID, 571, 0, 0, 1, 1, 4379.31, -2921.89, 309.674, 2.54818, 0, 0, 0.439743, 0.898124, 300, 0, 1);

-- Broken-down Shredder
UPDATE `creature_template` SET `speed_run`=0.57142857, `spell1`=48558, `spell2`=48604, `spell3`=48548, `spell4`=0, `spell5`=48610 WHERE `entry`=27354;
DELETE FROM `creature_template_addon` WHERE `entry`=27354;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(27354,0,0,1,0, '48456 48458');

-- Add Spellclick
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=27354;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(27354,43671,1,0);

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=27354 AND `SourceEntry` = 43671;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 27354, 43671, 1, 9, 0, 12244, 0, 0, 0, '', 'Required quest active for spellclick'),
(18, 27354, 43671, 2, 9, 0, 12270, 0, 0, 0, '', 'Required quest active for spellclick');

DELETE FROM `conditions` WHERE SourceEntry=48610;
-- Add Spellscript name
DELETE FROM `spell_script_names` WHERE `spell_id`=48610;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48610, 'spell_shredder_delivery');

-- speed
UPDATE `creature_template` SET `speed_run`='1.14286', `speed_walk`='1' WHERE `entry`=27354;

DELETE FROM `creature_template` WHERE `entry`=@PACERBUNNY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(@PACERBUNNY, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Pacer Bunny - Drak Theron Exterior', '', '', 0, 60, 60, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 104, 138, 0, 252, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 72, 106, 26, 10, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);
