-- fix 32638 npc 
DELETE FROM `creature_template` WHERE `entry`=32638;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (32638, 0, 0, 0, 0, 0, 28111, 0, 0, 0, 'Hakmud of Argus', 'Traveling Trader', '', 0, 80, 80, 2, 0, 1732, 1732, 641, 1, 1.14286, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 33536, 2048, 2048, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);

-- fix 32639 npc 
DELETE FROM `creature_template` WHERE `entry`=32639;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (32639, 0, 0, 0, 0, 0, 28282, 0, 0, 0, 'Gnimo', 'Adventurous Tinker', '', 0, 80, 80, 2, 0, 1732, 1732, 7297, 1, 1.14286, 1, 1, 1, 0, 422, 586, 0, 642, 1, 2000, 2000, 1, 33536, 2048, 2048, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);

-- delete spawm creature 32639
DELETE FROM `creature` WHERE `id`=32639;  
DELETE FROM `creature` WHERE `id`=32638;

-- MovementType incorrecto 47503
UPDATE `creature` SET `MovementType`='0' WHERE id IN (47503);

-- no tenia MovementType  52687
UPDATE `creature` SET `MovementType`='1' WHERE id IN (52687);

-- no tenian MovementType  20635
UPDATE `creature` SET `MovementType`='1' WHERE id IN (20635);

-- spawndist no valido  325066 
UPDATE `creature` SET `spawndist`='0' WHERE guid IN (325066); 

-- MovementType no valido 28213
UPDATE `creature` SET `MovementType`='0' WHERE id IN (28213);

-- spawndist no valido  323338 
UPDATE `creature` SET `spawndist`='0' WHERE guid IN (323338); 

-- spawndist no valido  904254 
UPDATE `creature` SET `spawndist`='0' WHERE guid IN (904254); 

-- spawndist incorrecto  30537 
UPDATE `creature` SET `spawnMask`='2' WHERE id IN (30537); 

-- delete guids con entry no existente 58049, 69999
DELETE FROM `creature` WHERE `guid`=209468;
DELETE FROM `creature` WHERE `id`=58049;

-- se le agrego el phaseMask 3 ya que tenia uno invalido 
UPDATE `creature` SET `phaseMask`='3' WHERE id IN (41379); 
UPDATE `creature` SET `phaseMask`='3' WHERE id IN (320000); 

-- se removio phaseMask ya que no tenia spawndist
UPDATE `creature` SET `MovementType`='0' WHERE guid IN (898228);
UPDATE `creature` SET `MovementType`='0' WHERE guid IN (898229);

-- update aura a null guids 53530, 53846, 54187, 56331
DELETE FROM `creature_addon` WHERE `guid`=53530;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (53530, 0, 0, 65537, 1, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid`=53846;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (53846, 0, 0, 65537, 1, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid`=54187;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (54187, 0, 0, 65537, 1, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid`=56331;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (56331, 0, 0, 65536, 1, 0, NULL);

-- se eliminaron los guid 11010758, 2300323 por que no tenian registro en gameobject_template
DELETE FROM `gameobject` WHERE `guid`=11010758;
DELETE FROM `gameobject` WHERE `guid`=2300323;

-- se actualizo gameobject_template en displayId por que no era la correcta 
UPDATE `gameobject_template` SET `displayId`='336' WHERE entry IN (185879);

-- errordb en el puente de firelands
UPDATE `gameobject` SET `phaseMask`='1', `state`='1', `spawnMask`='1', `rotation0`='1.653532E-43' WHERE guid IN (150342, 1500342);

-- esta quest no deberia dar un item entry incorrecto fix 7061
UPDATE `quest_template` SET `RewardItemId1`='0' WHERE id IN (7061); 

-- quest_template 29162 no tenia SpecialFlags se le asigno una
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE id IN (29162);

-- quest custom tiene registro de un logro como recompensa el cual no existe se actualizo a 0
UPDATE `quest_template` SET `RewardTitleId`='0' WHERE id IN (300013);

-- add SpecialFlags a quest 11926, 11921
UPDATE `quest_template` SET `SpecialFlags`='3' WHERE id IN (11926, 11921);

-- add SpecialFlags a quest 29240, 29122
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE id IN (29240, 29122);

-- quest custom event sin SpecialFlags
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE id IN (1006004, 1006002, 1006001, 1006000, 1006003);

-- quest custom event sin SpecialFlags
UPDATE `quest_template` SET `SpecialFlags`='2' WHERE id IN (11731);

-- quest 3628 Blizzard marcó esta búsqueda como obsoleta y no se puede obtener ni completar. pero tiene registro en disables
DELETE FROM `disables` WHERE `entry`=3628;

-- quest que tiene registro en creature_questrelation pero no existen
DELETE FROM `creature_questrelation` WHERE quest IN (54313, 53524, 53652, 53738, 53925, 54312, 53519, 45226, 45244);

-- fix npcflag UNIT_NPC_FLAG_QUESTGIVER 2952
UPDATE `creature_template` SET `npcflag`='2' WHERE entry IN (2952);

-- la creature no existe pero tiene registro en creature_questrelation 4141
DELETE FROM `creature_questrelation` WHERE id IN (4141);

-- la mision se toma en el tablero mas no en un npc creature_questrelation 206109, 206116, 207323, 207324
DELETE FROM `creature_questrelation` WHERE id IN (206109, 206116, 207323, 207324);

-- quest no deberia esta en creature_involvedrelation de la id 4141
DELETE FROM `creature_involvedrelation` WHERE id IN (4141);

-- 29021 deberia esta en creature_questrelation ya que oertenece a una criatura
DELETE FROM `creature_questrelation` WHERE `id`=3442 AND `quest`=29021;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (3442, 29021);

-- creature_involvedrelation npc no exitente por lo tanto se elimina 
DELETE FROM `creature_involvedrelation` WHERE id IN (42544);

-- misiones custom que no tienen una criatura por lo tanto se eliminan
DELETE FROM `creature_involvedrelation` WHERE id IN (1003002, 1003037);

-- para el spamw de estos npcs 
DELETE FROM `pool_creature` WHERE pool_entry IN (1093, 1103, 1101, 1100, 1099, 1098, 1096, 1094);
DELETE FROM `pool_creature` WHERE pool_entry IN (1092, 1091, 1090, 1089, 1088, 1087, 1086, 1106, 1105, 32781, 60016);

-- esto corrige 6 errores de spawm
DELETE FROM `creature` WHERE id IN (32481);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350120, 32481, 571, 3711, 4285, 1, 1, 0, 0, 5591.07, 5194.1, -133.229, 0.203224, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350121, 32481, 571, 3711, 4293, 1, 1, 0, 0, 5286.53, 4998.04, -134.7, 5.11746, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350122, 32481, 571, 3711, 4293, 1, 1, 0, 0, 5803.02, 4564.18, -135.413, 5.11746, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350123, 32481, 571, 3711, 4293, 1, 65535, 0, 0, 5368.74, 4427.76, -133.397, 5.47515, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350124, 32481, 571, 3711, 4293, 1, 1, 0, 0, 5777.08, 5070.89, -136.107, 5.12924, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350125, 32481, 571, 3711, 4293, 1, 1, 0, 0, 5744.65, 5022.23, -133.206, 2.72592, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);

-- esto corrige 7 errores spawm 32471
DELETE FROM `creature` WHERE id IN (32471);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350111, 32471, 571, 66, 4313, 1, 1, 0, 0, 5791.11, -1302.72, 234.538, 2.42427, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350112, 32471, 571, 66, 66, 1, 1, 0, 0, 5304.87, -1948.35, 237.345, 4.06732, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350113, 32471, 571, 66, 4468, 1, 1, 0, 0, 5596.75, -1742.88, 239.19, 2.81618, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350114, 32471, 571, 66, 66, 1, 1, 0, 0, 5326.75, -1479.26, 238.009, 2.81618, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350115, 32471, 571, 66, 4311, 1, 1, 0, 0, 5115.49, -1652.65, 234.728, 3.59536, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350116, 32471, 571, 66, 66, 1, 1, 0, 0, 5327.54, -1702.84, 238.882, 2.42427, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350117, 32471, 571, 66, 66, 1, 1, 0, 0, 5133.37, -1853.51, 245.385, 2.42427, 28800, 5, 0, 15953, 0, 1, 0, 0, 0, 0);

-- esto corrige 4 errores de spawm 32475
DELETE FROM `creature` WHERE id IN (32475); 
DELETE FROM `pool_creature` WHERE guid IN (350110); 
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350107, 32475, 571, 66, 66, 1, 1, 0, 0, 6199.76, -4483.01, 450.673, 1.27366, 28800, 5, 0, 16502, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350108, 32475, 571, 66, 66, 1, 1, 0, 0, 6711.42, -4186.12, 456.852, 2.50674, 28800, 5, 0, 16502, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350109, 32475, 571, 66, 4373, 1, 1, 0, 0, 6554.22, -4523.84, 450.781, 1.27366, 28800, 5, 0, 16502, 0, 1, 0, 0, 0, 0);

-- esto corrige 4 errores de spawm 32501
DELETE FROM `creature` WHERE id IN (32501); 
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350104, 32501, 571, 210, 4533, 1, 1, 0, 1029, 7706.06, 1032.95, 446.569, 2.2717, 28800, 5, 0, 18900, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350105, 32501, 571, 210, 4519, 1, 1, 0, 1029, 6205.59, 2077.64, 520.759, 0.899403, 28800, 5, 0, 18900, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350106, 32501, 571, 210, 4531, 1, 1, 0, 1029, 6525.8, 3309.78, 665.388, 0.383602, 28800, 5, 0, 18900, 0, 1, 0, 0, 0, 0);

-- esto corrige 5 errores de spawm 32495
DELETE FROM `creature` WHERE id IN (32495);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350100, 32495, 571, 210, 4497, 1, 1, 0, 1036, 8450.71, 3156.41, 589.063, 4.00975, 28800, 0, 0, 18900, 5991, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350101, 32495, 571, 210, 4524, 1, 1, 0, 1036, 8352.83, 3511.8, 655.962, 3.00055, 28800, 0, 0, 18900, 5991, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350102, 32495, 571, 210, 4513, 1, 1, 0, 1036, 6806.26, 1734.33, 559.378, 5.49886, 28800, 0, 0, 18900, 5991, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350103, 32495, 571, 210, 4513, 1, 1, 0, 1036, 7126.05, 1614.19, 449.002, 1.059, 28800, 0, 0, 18900, 5991, 0, 0, 0, 0, 0);

-- esto corrige 5 errores de spawm 32429
DELETE FROM `creature` WHERE id IN (32429);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350093, 32429, 571, 394, 394, 1, 1, 0, 0, 3601.19, -3275.54, 222.069, 1.15323, 28800, 0, 0, 14910, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350092, 32429, 571, 394, 394, 1, 1, 0, 0, 3972.31, -2710.12, 165.749, 6.24654, 28800, 0, 0, 14910, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350091, 32429, 571, 394, 394, 1, 1, 0, 0, 3913.18, -2804.43, 175.768, 1.64411, 28800, 0, 0, 14910, 0, 0, 0, 0, 0, 0);

-- esto corrige 5 errores de spawm 32400
DELETE FROM `creature` WHERE id IN (32400);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350084, 32400, 571, 65, 4254, 1, 1, 0, 0, 4460.67, -180.693, 87.4622, 2.20007, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350083, 32400, 571, 65, 4175, 1, 1, 0, 0, 4247.21, -202.981, 69.6688, 1.69742, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350082, 32400, 571, 65, 4254, 1, 1, 0, 0, 3814.48, -130.936, 62.2821, 2.75456, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350081, 32400, 571, 65, 4254, 1, 1, 0, 0, 4123.57, 341.104, 58.3237, 3.95622, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350080, 32400, 571, 65, 4254, 1, 1, 0, 0, 3757.18, -256.696, 76.8022, 3.68919, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350079, 32400, 571, 65, 4254, 1, 1, 0, 0, 3821.45, 374.604, 35.6203, 3.18339, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350078, 32400, 571, 65, 4254, 1, 1, 0, 0, 3341.64, 637.275, 82.1119, 0.104629, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350077, 32400, 571, 65, 4254, 1, 1, 0, 0, 3423.79, -252.766, 78.6485, 0.701528, 28800, 5, 0, 39760, 0, 1, 0, 0, 0, 0);

-- esto corrige 5 errores de spawm 32398
DELETE FROM `creature` WHERE id IN (32398);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350076, 32398, 571, 495, 3987, 1, 1, 0, 0, 531.488, -2935.94, 1.025, 0.454912, 28800, 8, 0, 13937, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350075, 32398, 571, 495, 3987, 1, 1, 0, 0, 303.722, -3074.11, 35.3232, 3.24935, 28800, 8, 0, 13937, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350074, 32398, 571, 495, 3987, 1, 1, 0, 0, 986.699, -2999.92, 59.1949, 1.74924, 28800, 8, 0, 13937, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350073, 32398, 571, 495, 3989, 1, 1, 0, 0, -80.7795, -3384.55, 51.3597, 0.310386, 28800, 8, 0, 13937, 0, 1, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (350072, 32398, 571, 495, 3989, 1, 1, 0, 0, 15.133, -3334.68, 5.9129, 2.30766, 28800, 8, 0, 13937, 0, 1, 0, 0, 0, 0);

-- el npc 1003059 no existe pero tiene registro en npc_spellclick_spells 1003059
DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (1003059);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=46301 AND `spell_id`=74812;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (46301, 74812, 3, 1);

-- corrige 8 errores 
UPDATE `creature_template` SET `npcflag`='0' WHERE entry IN (48913, 34072, 14864, 34122, 34123, 48803, 48804, 55549);
























