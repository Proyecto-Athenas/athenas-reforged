-- Corregidos los portales a Península del Fuego Infernal reporte trello
DELETE FROM `creature` WHERE `guid` IN (21849);
DELETE FROM `spell_target_position` WHERE `id` IN (93726, 93733);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(93726, 0, -10928.653320, -3396.175293, 80.659599, 6.059871), -- Península del Fuego Infernal, Alianza
(93733, 0, -10871.198242 , -2682.365234, 9.789583, 0.662614); -- Península del Fuego Infernal, Horda

