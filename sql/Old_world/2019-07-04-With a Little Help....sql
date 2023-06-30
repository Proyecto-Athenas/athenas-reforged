-- fix QUEST : With a Little Help... ID: 25661
DELETE FROM `spell_target_position` WHERE `id`=76756;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (76756, 1, -6227.1, -4323.72, 13.5456, 1.85442);

DELETE FROM `spell_target_position` WHERE `id`=76752;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (76752, 1, -6133.23, -4308.03, 9.71239, 0.579891);
