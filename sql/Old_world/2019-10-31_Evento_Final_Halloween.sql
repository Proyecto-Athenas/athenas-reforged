/*
-- creature 500890
-- model 20751
DELETE FROM `creature_template` WHERE `entry`=500890;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
VALUES('500890','0','0','0','0','0','20751','0','0','0','Athenas WoW Demon','Eventos Athenas Wow','','0','87','87','3','0','16','16','0','1','1.14286','1','1.14286','1','2','3225.5','3544.7','0','1651','45','1500','0','1','0','2048','0','0','0','0','0','0','5160.9','6328.1','225','5','524364','0','500890','0','0','0','0','0','0','0','0','93611','93610','52721','40932','40904','41032','40683','0','0','0','100000','1300000',NULL,NULL,'SmartAI','2','3','1','900','1','1','1','0','0','0','0','0','0','0','124','1','0','650854271','1','','13623');
-- spells 93611 93610 52721 40932 40904 41032 40683

DELETE FROM `smart_scripts` WHERE `entryorguid`=500890;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(500890,0,0,0,4,0,100,0,0,0,5000,5000,11,93611,0,0,0,0,0,17,20,40,0,0,0,0,0,'Cast spell 1'),
(500890,0,1,0,0,0,100,0,0,0,20000,20000,11,93610,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 2'),
(500890,0,2,0,0,0,100,0,0,0,30000,30000,11,52721,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 3'),
(500890,0,3,0,0,0,100,0,0,0,40000,40000,11,40932,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 4'),
(500890,0,4,0,0,0,100,0,0,0,50000,50000,11,40904,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 5'),
(500890,0,5,0,0,0,100,0,0,0,60000,60000,11,41032,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 6'),
(500890,0,6,0,0,0,100,0,0,0,100000,100000,11,40683,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 7');


-- creature 500891
-- model 32229
DELETE FROM `creature_template` WHERE `entry`=500891;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
VALUES (500891, 0, 0, 0, 0, 0, 32229, 0, 0, 0, 'Athenas WoW Dragon', 'Eventos Athenas-WoW', '', 0, 87, 87, 3, 0, 16, 16, 0, 1, 1.14286, 1, 1.14286, 1, 2, 3225.5, 3544.7, 0, 1651, 45, 1500, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 5160.9, 6328.1, 225, 5, 524364, 0, 50089, 0, 0, 0, 0, 0, 0, 0, 0, 75002, 93506, 40932, 40932, 40904, 41032, 93521, 0, 0, 0, 100000, 1300000, NULL, NULL, 'SmartAI', 2, 3, 1, 450, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 124, 1, 0, 650854271, 1, '', 13623);

-- spells 75002 93506 40932 40932 40904 41032 93521

DELETE FROM `smart_scripts` WHERE `entryorguid`=500891;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(500891,0,0,0,4,0,100,0,0,0,5000,5000,11,75002,0,0,0,0,0,17,20,40,0,0,0,0,0,'Cast spell 1'),
(500891,0,1,0,0,0,100,0,0,0,20000,20000,11,51857,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 2'),
(500891,0,2,0,0,0,100,0,0,0,30000,30000,11,93506,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 3'),
(500891,0,3,0,0,0,100,0,0,0,40000,40000,11,40932,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 4'),
(500891,0,4,0,0,0,100,0,0,0,50000,50000,11,40904,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 5'),
(500891,0,5,0,0,0,100,0,0,0,60000,60000,11,41032,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 6'),
(500891,0,6,0,0,0,100,0,0,0,70000,70000,11,93521,0,0,0,0,0,2,0,0,0,0, 0, 0, 0,'Cast spell 7');

-- NPC que transporta a los jugadores a la banda
DELETE FROM `creature_template` WHERE `entry`=10;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`)
VALUES('10','0','0','0','0','0','22351','0','0','0','Halloween','Eventos Athenas-WoW','','10','85','85','3','0','35','35','1','1','1.42857','1','1.42857','1','2','1007','1354.7','0','1571','1','2000','2000','1','32768','2048','0','0','0','0','0','0','758.1','1062.1','220','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','15','33',NULL,NULL,'SmartAI','0','3','1','1.5','1','1','1','0','0','0','0','0','0','0','144','1','0','0','0','','12340');

-- NPC que transporta a los jugadores a la banda mientras los jugadores están muertos
DELETE FROM `creature_template` WHERE `entry`=11;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
VALUES('11','0','0','0','0','0','22351','0','0','0','Halloween','Eventos Athenas-WoW','','10','60','60','0','0','35','35','16385','1','1','1','1','1','0','128','192','0','48','1','2000','2000','1','768','2048','0','0','0','0','0','0','102','154','38','7','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'SmartAI','0','1','1','1.35','1','1','1','0','0','0','0','0','0','0','0','1','0','0','2','','12340');

-- Jefe del Evento
DELETE FROM `creature` WHERE `guid` = 208860;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) 
VALUES('208860','500890','169','0','0','1','65535','0','0','-4351.78','4028.88','92.0074','5.18871','604800','200','0','87347300','0','1','0','0','0','0');

-- Menu del NPC de teletransporte
DELETE FROM `npc_text` WHERE `ID` = 9;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) 
VALUES('9','','Tu muerte te espera $n, no la hagas esperar...','0','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','15595');

DELETE FROM `gossip_menu` WHERE `entry` = 10 AND  `text_id` = 9;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES('10','9');

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10 AND `id` = 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) 
VALUES('10','0','0','Deseo conocer mi muerte.','0','1','1','0','0','0','0','','0');


-- Script de teletransporte
DELETE FROM `smart_scripts` WHERE `entryorguid`=10 AND `source_type`= 0 AND `id`= 0 AND `link`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('10','0','0','0','62','0','100','0','10','0','0','0','62','169','0','0','0','0','0','7','0','0','0','-4325.93','3981.51','102.57','2','Teleport player - Evento Halloween');

DELETE FROM `smart_scripts` WHERE `entryorguid`=11 AND `source_type`= 0 AND `id`= 0 AND `link`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('11','0','0','0','62','0','100','0','10','0','0','0','62','169','0','0','0','0','0','7','0','0','0','-4325.93','3981.51','102.57','2','Teleport player - Evento Halloween');

-- NPC que teletransportan a los jugadores cuando están muertos
DELETE FROM `creature` WHERE `guid` IN (208861, 208862);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) 
VALUES('208861','11','1','17','17','1','1','0','0','-584.716','-2520.6','91.7687','2.77169','300','0','0','4120','0','0','0','0','0','0'),
('208862','11','0','40','108','1','1','0','0','-10513.1','1172.4','31.7528','3.42582','300','0','0','4120','0','0','0','0','0','0');

-- botin del jefe Demonio
DELETE FROM `creature_loot_template` WHERE `entry` = 500890;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) 
VALUES('500890','37012','100','1','0','1','1'),
('500890','33154','100','1','1','1','3'),
('500890','71325','100','1','2','1','2'),
('500890','54516','100','1','3','1','3');
*/

-- se debe agregar los NPC con el ID = 10 para dar acceso a los jugadores al jefe del evento
