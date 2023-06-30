-- fix https://www.wowhead.com/quest=24438/exodus reporte trello.
DELETE FROM `creature` WHERE `id`=36743;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (62972, 36743, 654, 4714, 4817, 1, 65535, 0, 36743, -1517.78, 2607.16, 203.679, 4.40846, 300, 0, 0, 186, 191, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=36743;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (36743, 0, 0, 0, 0, 0, 29613, 0, 0, 0, 'King Genn Greymane', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 0, 2, 11, 0, 24, 1, 2000, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 17, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36743, 0, 0, '', 13623);


DELETE FROM `creature_involvedrelation` WHERE `id`=36743;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (36743, 14466);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (36743, 14467);


DELETE FROM `creature_questrelation` WHERE `id`=36743;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (36743, 14467);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (36743, 24438);


DELETE FROM `smart_scripts` WHERE `entryorguid`=36743;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (36743, 0, 0, 0, 20, 0, 100, 0, 14467, 0, 0, 0, 85, 69257, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


