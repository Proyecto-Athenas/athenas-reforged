-- quest Cuestión de lealtad
DELETE FROM `creature_template` WHERE `entry`=48969;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48969, 0, 0, 0, 0, 0, 11894, 0, 0, 0, 'Drek\'Thar', 'Frostwolf General', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 27.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 536870914, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=48969;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(48969, 0, 36356, 0, 0, 0, NULL);


DELETE FROM `creature_text` WHERE `entry`=48969;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(48969, 0, 0, 'So you have come seeking our aid?', 12, 0, 100, 6, 0, 0, 49089, ''),
(48969, 1, 0, 'I... *cough* I have been alive for a very long time. In that time I have seem and done terrible things.', 12, 0, 100, 1, 0, 0, 0, ''),
(48969, 2, 0, 'Things that still keep me awake at night.', 12, 0, 100, 1, 0, 0, 49092, ''),
(48969, 3, 0, 'But these terrible things that I have done and the people that I harmed - I know them... I face them... and I feel remorse for them.', 12, 0, 100, 1, 0, 0, 0, ''),
(48969, 4, 0, 'But the Forsaken. *cough* What do they feel?', 12, 0, 100, 6, 0, 0, 49094, ''),
(48969, 5, 0, 'They ravage the land and destroy everything that they touch. How many lives have been lost to their vile poisons?', 12, 0, 100, 6, 0, 0, 49095, ''),
(48969, 6, 0, 'How many innocents have fallen before the Forsaken war machine?', 12, 0, 100, 6, 0, 0, 49096, ''),
(48969, 7, 0, 'Countless... countless lives... *cough*', 12, 0, 100, 1, 0, 0, 49097, ''),
(48969, 8, 0, 'Yes... I have done terrible things, but nothing could ever be as terrible as lending aid to the Forsaken.', 12, 0, 100, 0, 0, 0, 49098, ''),
(48969, 9, 0, 'You go back to that spineless orc who would not come see me and you tell him that the Frostwolf clan will not aid the Forsaken. Not now, not ever!', 12, 0, 100, 25, 0, 0, 49099, ''),
(48969, 10, 0, 'BEGONE!', 12, 0, 100, 15, 0, 0, 34125, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=48969 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48969, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template` WHERE `entry`=48971;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48971, 0, 0, 0, 0, 0, 36356, 0, 0, 0, 'Drek\'thar\'s Wheelchair', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1363, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 536870912, '', 13623);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=48971 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(48971, 46598, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=48971 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48971, 0, 0, 0, 38, 0, 100, 513, 1, 1, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `vehicle_template_accessory` WHERE `entry`=48971;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(48971, 48969, 0, 1, '', 8, 0),
(48971, 48970, 1, 1, '', 8, 0),
(48971, 48970, 2, 1, '', 8, 0);


DELETE FROM `creature_template` WHERE `entry`=48980;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48980, 0, 0, 0, 0, 0, 11895, 0, 0, 0, 'Captain Galvangar', 'Frostwolf Captain', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1367, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 48980, 0, 536870912, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=48980;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(48980, 0, 0, 0, 0, 0, NULL);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=48980;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(48980, 46598, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=48980 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48980, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4898000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4898000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4898000, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 382.723, -997.288, 110.101, 2.68165, ''),
(4898000, 9, 1, 0, 0, 0, 100, 1, 8500, 8500, 8500, 8500, 1, 0, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 2, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 1, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 3, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 2, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 4, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 3, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 5, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 4, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 6, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 5, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 7, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 6, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 8, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 7, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 9, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 8, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 10, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 9, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 11, 0, 0, 0, 100, 1, 4500, 4500, 4500, 4500, 1, 10, 1, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(4898000, 9, 12, 0, 0, 0, 100, 1, 0, 0, 0, 0, 15, 28600, 0, 0, 0, 0, 0, 18, 1, 40, 0, 0, 0, 0, 0, ''),
(4898000, 9, 13, 0, 0, 0, 100, 1, 2000, 2000, 2000, 2000, 45, 1, 1, 0, 0, 0, 0, 11, 0, 40, 0, 0, 0, 0, 0, ''),
(4898000, 9, 14, 0, 0, 0, 100, 1, 0, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `vehicle_template_accessory` WHERE `entry`=48980;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(48980, 48971, 0, 1, '', 8, 0);


DELETE FROM `creature_template` WHERE `entry`=48970;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(48970, 0, 0, 0, 0, 0, 36355, 0, 0, 0, 'Drek\'thar\'s Wheelchair Wheel', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 536870912, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid`=48970 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(48970, 0, 0, 0, 1, 0, 100, 1, 100, 200, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 48969, 10, 0, 0, 0, 0, 0, ''),
(48970, 0, 1, 0, 38, 0, 100, 1, 1, 1, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template` WHERE `entry`=13817;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(13817, 22638, 32137, 37465, 0, 0, 13852, 0, 0, 0, 'Voggah Deathgrip', '', '', 0, 61, 61, 0, 0, 1214, 1214, 3, 1, 1.14286, 1, 1.14286, 1, 0, 159, 221, 0, 258, 1, 1500, 1500, 1, 4096, 2048, 8, 0, 0, 0, 0, 0, 127, 188, 28, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 1550, NULL, NULL, 'SmartAI', 0, 3, 0, 1.05, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 13817, 0, 536870914, '', 12340);


DELETE FROM `creature_template_addon` WHERE `entry`=13817;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(13817, 0, 0, 0, 257, 0, NULL);


DELETE FROM `smart_scripts` WHERE `entryorguid`=13817 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(13817, 0, 0, 2, 19, 0, 100, 1, 28600, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(13817, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 15, 28600, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, ''),
(13817, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 91332, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `spell_target_position` WHERE `id`=91332;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(91332, 0, 406.18, -1010.25, 111.402, 2.6306);

DELETE FROM `report_quest` WHERE id=28600;

DELETE FROM `quest_template` WHERE `Id`=28600;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(28600, 2, NULL, 'Untested', 24, 21, 0, 267, 0, 0, 0, 0, 946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28587, 0, 0, 28506, 5, 1700, 11700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 76, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Matters of Loyalty', 'Speak to Drek\'Thar.', 'I have no authority over such matters. You must speak to our leader, Drek\'Thar. I have already sent word of your arrival to Frostwolf Keep. Drek\'Thar will be out to speak with you personally.', 'Learn of Matters of Loyalty.', '<High Warlord Cromush\'s face turns white.>$B$BTHEY HAVE FORSAKEN US? THEY HAVE FORSAKEN THE HORDE? This cannot be!$B$BI...$B$B<Cromush falls to one knee.>$B$BI... I WILL BE FINE. We will do this without their aid. To hell with the Frostwolf!', '', 'Return to High Warlord Cromush at Tarren Mill in Hillsbrad Foothills.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 274, 1, 1, 0, 0, 0, 0, 0, 0, 0, 5, 274, 16, 15, 0, 0, 0, 0, 0, 0, 15595);

