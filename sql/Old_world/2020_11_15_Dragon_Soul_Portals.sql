-- Deathwing no debe ser atacado por npcs.
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|512 WHERE `entry`=55971;
-- Removemos la flag de trigger al portal de deck
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=57378;

-- Los portales del inicio de la raid cambian a medida que se avanza. Nunca habrá más de un portal a la vez de estos con la misma posición.
UPDATE `creature` SET `phaseMask` = 1, `position_x` = -2262.52, `position_y` = -2412.27, `position_z` = 86.5111, `orientation` = 2.96843 WHERE `guid` IN (9648535, 9649275, 9649166, 9649274);
-- Fix a la posición de uno de los portales, se overlapea en tierra.
UPDATE `creature` SET `position_z` = 344.6071 WHERE `guid` = 9648564;
-- Asignamos flags correctas, script, modelo e inhabitType para evitar errores (actualmente hay portales que ni siquiera tenian asignado el script)
UPDATE `creature_template` SET `npcflag` = 16777216, `modelid1` = 24719, `InhabitType` = 4, `ScriptName` = 'npc_dragon_soul_teleport' WHERE `entry` IN (57328,57882,57379,57377,57378,57443);

-- Efectos de los portales para que sean usables - 108227 efecto visual trasero, 108203 portal click
DELETE FROM `creature_template_addon` WHERE `entry` IN (57328,57882,57379,57377,57378,57443);
INSERT INTO `creature_template_addon` VALUES
(57328, 0, 0, 0, 0, 0, '108203 108227'),
(57882, 0, 0, 0, 0, 0, '108203 108227'),
(57379, 0, 0, 0, 0, 0, '108203 108227'),
(57377, 0, 0, 0, 0, 0, '108203 108227'),
(57378, 0, 0, 0, 0, 0, '108203 108227'),
(57443, 0, 0, 0, 0, 0, '108203 108227');

-- Spell target position del portal a deck
DELETE FROM `spell_target_position` WHERE `id` = 108263;
INSERT INTO `spell_target_position` VALUES (108263, 967, 13444.9, -12133.3, 151.21, 0);

DELETE FROM `creature` WHERE `guid` IN (9649441, 9649442);
INSERT INTO `creature` VALUES
(9649441, 57443, 967, 5892, 5922, 15, 1, 0, 0, 13496.4, -12141.003, 158.573, 3.03687, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(9649442, 57378, 967, 5892, 5923, 15, 1, 0, 0, -1761.303, -2372.3806, 49.543, 3.6686, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- 96181 Faerie Circle Base es la spell de Valeera  al no tener Zon'ozz completado, de las otras no encontré. Lo dejo en el sql como dato - 
