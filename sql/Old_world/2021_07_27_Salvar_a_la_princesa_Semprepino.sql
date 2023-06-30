-- Salvar a la princesa Semprepino

DELETE FROM `creature_template` WHERE `entry`=17702;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (17702, 0, 0, 0, 0, 0, 5851, 0, 0, 0, 'High Chief Bristlelimb', '', NULL, 0, 13, 13, 0, 0, 82, 82, 0, 1, 1.14286, 1.125, 1.14286, 1, 0, 18, 24, 0, 48, 1, 1400, 1900, 1, 0, 2048, 8, 0, 0, 0, 0, 0, 12, 18, 1, 7, 0, 0, 17702, 0, 0, 0, 0, 0, 0, 0, 0, 20753, 15793, 0, 0, 0, 0, 0, 0, 0, 0, 4, 33, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 24099, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_ai_scripts` WHERE `id`=30000277;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
(30000277, 17702, 0, 0, 100, 1, 0, 0, 18500, 24500, 11, 20753, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Chief Bristlelimb - Casts Roar');
DELETE FROM `creature_ai_scripts` WHERE `id`=30000278;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
(30000278, 17702, 0, 0, 100, 1, 12000, 12000, 21000, 21000, 11, 15793, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'High Chief Bristlelimb - Casts Maul');

DELETE FROM `gameobject` WHERE `id`=181928;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(86061, 181928, 530, 3525, 3600, 1, 1, -2519.77, -12301.9, 14.2378, 3.19395, 0, 0, 0.999657, -0.0261757, 120, 0, 1);

DELETE FROM `creature` WHERE `guid`=163649;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(163649, 17702, 530, 3525, 3600, 1, 1, 0, 0, -2426.15, -12169.1, 32.5905, 5.55192, 90, 0, 0, 273, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `entry`=17702 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(17702, 0, 0, 'Face the wrath of Bristlelimb!', 14, 0, 100, 0, 0, 0, 14322, 'High Chief Bristlelimb');

DELETE FROM `smart_scripts` WHERE `entryorguid`=17702 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(17702, 0, 0, 0, 9, 0, 100, 0, 0, 5, 5000, 8000, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Maul on Close'),
(17702, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 11000, 15000, 11, 20753, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Demoralizing Roar');

DELETE FROM `creature_template` WHERE `entry`=17682;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(17682, 0, 0, 0, 0, 0, 9491, 0, 0, 0, 'Princess Stillpine', NULL, NULL, 0, 16, 16, 0, 0, 1685, 1685, 3, 1, 1.14286, 1.125, 1.14286, 1, 0, 22, 29, 0, 52, 1, 2000, 2000, 2, 37632, 2048, 8, 0, 0, 0, 0, 0, 15, 22, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 54, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 17682, 0, 2, 'npc_princess_stillpine', 12340);

DELETE FROM `creature_text` WHERE `entry`=17682 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(17682, 0, 0, 'Thank you for saving me, $N! My father will be delighted!', 12, 0, 100, 0, 0, 0, 14323, 'princess stillpine SAY_DIRECTION');

DELETE FROM `smart_scripts` WHERE `entryorguid`=17682 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(17682, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 1768200, 0, 0, 0, 0, 0, 1, 20, 0, 0, 0, 0, 0, 0, 'On data set do action');

DELETE FROM `smart_scripts` WHERE `entryorguid`=1768200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(1768200, 9, 0, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'talk to player'),
(1768200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, -2543.97, -12346.9, 11.64, 0, 'Move forward'),
(1768200, 9, 2, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Die self');


DELETE FROM `smart_scripts` WHERE `entryorguid`=181928 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(181928, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 80, 18192800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip Hello');


DELETE FROM `smart_scripts` WHERE `entryorguid`=18192800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18192800, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 17682, 10, 0, 0, 0, 0, 0, 'Send data 1 to Princess'),
(18192800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 17682, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 0, 'give credit to player');

-- Gameobject eliminado texturas
DELETE FROM `gameobject` WHERE id IN (207102,207095);