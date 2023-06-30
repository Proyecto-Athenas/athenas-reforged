-- add spell_target_position para el portal 201606
DELETE FROM `spell_target_position` WHERE `id`=69953;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (69953, 1, 3779.29, -4612.09, 227.252, 5.463);
