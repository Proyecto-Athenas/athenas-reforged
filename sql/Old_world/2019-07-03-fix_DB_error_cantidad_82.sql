-- InhabitType no valido 58046, 58039
UPDATE `creature_template` SET `InhabitType`='1' WHERE entry IN (58046, 58039);

-- faction_A, faction_H incorrectas 203226
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE entry IN (203226);

-- InhabitType no valido 58045, 58047, 58048, 58148
UPDATE `creature_template` SET `InhabitType`='1' WHERE entry IN (58045, 58047, 58048, 58148);

-- aura incorrecta creature_template_addon 45267
DELETE FROM `creature_template_addon` WHERE `entry`=45267;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (45267, 0, 0, 0, 1, 0, NULL);

-- aura incorrecta creature_template_addon 32863
DELETE FROM `creature_template_addon` WHERE `entry`=32863;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (32863, 0, 0, 0, 1, 0, NULL);

-- aura y emote incorrectos creature_template_addon 36693
DELETE FROM `creature_template_addon` WHERE `entry`=36693;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36693, 0, 0, 7, 1, 0, NULL);

-- no se conocen los datos de creature_template_addon 8582
DELETE FROM `creature_template_addon` WHERE `entry`=8582;

-- aura incorrecta creature_template_addon 32959
DELETE FROM `creature_template_addon` WHERE `entry`=32959;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (32959, 0, 0, 65536, 1, 0, NULL);

-- aura incorrecta creature_template_addon 33837
DELETE FROM `creature_template_addon` WHERE `entry`=33837;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33837, 0, 0, 65536, 1, 0, NULL);

-- aura incorrecta creature_template_addon 38237
DELETE FROM `creature_template_addon` WHERE `entry`=38237;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38237, 0, 0, 65536, 1, 0, NULL);

-- aura incorrecta creature_template_addon 38373
DELETE FROM `creature_template_addon` WHERE `entry`=38373;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38373, 0, 0, 65536, 1, 0, NULL);

-- aura incorrecta creature_template_addon 38504
DELETE FROM `creature_template_addon` WHERE `entry`=38504;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (38504, 0, 0, 50397184, 1, 0, NULL);

-- aura incorrecta creature_template_addon 47745
DELETE FROM `creature_template_addon` WHERE `entry`=47745;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (47745, 0, 0, 65536, 1, 0, NULL);

-- aura incorrecta creature_template_addon 17591
DELETE FROM `creature_template_addon` WHERE `entry`=17591;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (17591, 0, 0, 0, 1, 0, NULL);

-- aura incorrecta creature_template_addon 1006312
DELETE FROM `creature_template_addon` WHERE `entry`=1006312;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1006312, 0, 0, 0, 0, 30, NULL);

-- aura incorrecta creature_template_addon 45270
DELETE FROM `creature_template_addon` WHERE `entry`=45270;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (45270, 0, 0, 0, 0, 437, NULL);

-- 58049 tiene datos en creature_template_addon pero no en creature_template 58049
DELETE FROM `creature_template_addon` WHERE `entry`=58049;

-- aura y emote no validos  creature_template_addon 36653
DELETE FROM `creature_template_addon` WHERE `entry`=36653;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36653, 0, 0, 8, 1, 0, NULL);

-- emote no valido creature_template_addon 36440
DELETE FROM `creature_template_addon` WHERE `entry`=36440;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36440, 0, 0, 0, 1, 0, '68730');

-- aura incorrecta creature_template_addon 1006011
DELETE FROM `creature_template_addon` WHERE `entry`=1006011;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (1006011, 0, 0, 1, 0, 0, NULL);

-- La plantilla de Creature 1006334 no existe pero tiene un registro en creature_template_addon
DELETE FROM `creature_template_addon` WHERE `entry`=1006334;

-- La tabla `creature` tiene criatura GUID 5029703 con entrada de criatura no existente en creature_template 98686
DELETE FROM `creature` WHERE `guid`=5029703;

-- npc en phaseMask invalida 920001
UPDATE `creature` SET `phaseMask`='1' WHERE id IN (920001);

-- Table `creature` have creature GUID Entry: 42334, 47486, 47481 with `MovementType`=1 (random movement) but with `spawndist`=0, replace by idle movement type (0).
UPDATE `creature` SET `MovementType`='0' WHERE id IN (42334, 47486, 47481);

-- creature phaseMask invalido 
UPDATE `creature` SET `phaseMask`='1' WHERE id IN (42844);

-- creature phaseMask y curhealth invalidos
UPDATE `creature` SET `spawnMask`='1', `curhealth`='3052' WHERE id IN (34424);

-- creatures con coordenadas y spawnMask incorrectas 37547
DELETE FROM `creature` WHERE `guid`=7268288;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268288, 37547, 631, 0, 0, 15, 1, 11686, 0, -500.596, 1886.94, 225.343, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268290;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268290, 37547, 631, 0, 0, 15, 1, 11686, 0, -343.577, 2511.8, 472.01, 0.405673, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268291;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268291, 37547, 631, 0, 0, 15, 1, 11686, 0, -420.354, 1888.66, 214.976, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268292;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268292, 37547, 631, 0, 0, 15, 1, 11686, 0, -389.51, 1916.15, 222.489, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268276;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268276, 37547, 631, 0, 0, 15, 1, 11686, 0, -471.204, 1923.79, 216.429, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268277;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268277, 37547, 631, 0, 0, 15, 1, 11686, 0, -452.675, 1945.46, 215.709, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268280;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268280, 37547, 631, 0, 0, 15, 1, 11686, 0, -475.084, 1889.12, 217.413, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268281;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268281, 37547, 631, 0, 0, 15, 1, 11686, 0, -397.036, 2482.27, 472.696, 0.282292, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268282;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268282, 37547, 631, 0, 0, 15, 1, 11686, 0, -351.093, 2461.68, 477.555, 0.282292, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268283;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268283, 37547, 631, 0, 0, 15, 1, 11686, 0, -314.802, 2485.09, 469.797, 0.405673, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268284;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268284, 37547, 631, 0, 0, 15, 1, 11686, 0, -457.004, 1900.22, 215.722, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268298;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268298, 37547, 631, 0, 0, 15, 1, 11686, 0, -425.907, 2492.65, 469.906, 0.089627, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268297;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268297, 37547, 631, 0, 0, 15, 1, 11686, 0, -408.044, 1900.06, 215.007, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268296;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268296, 37547, 631, 0, 0, 15, 1, 11686, 0, -403.566, 2460.99, 473.043, 0.282292, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268289;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268289, 37547, 631, 0, 0, 15, 1, 11686, 0, -442.111, 1922.84, 214.616, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268287;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268287, 37547, 631, 0, 0, 15, 1, 11686, 0, -416.014, 2474.91, 482.434, 0.089627, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268286;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268286, 37547, 631, 0, 0, 15, 1, 11686, 0, -415.175, 2471.45, 472.733, 0.282292, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268274;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268274, 37547, 631, 0, 0, 15, 1, 11686, 0, -432.543, 1904.54, 214.476, 3.14939, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268273;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268273, 37547, 631, 0, 0, 15, 1, 11686, 0, -381.698, 2458.27, 476.958, 0.282292, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=7268272;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (7268272, 37547, 631, 0, 0, 15, 1, 11686, 0, -328.713, 2499.29, 468.92, 0.405673, 86400, 0, 0, 5492, 0, 0, 0, 0, 0, 0);

-- equipment_id invalido 40213
UPDATE `creature` SET `equipment_id`='0' WHERE id IN (40213);















