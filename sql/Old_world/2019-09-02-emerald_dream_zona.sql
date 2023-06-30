-- mapa de eventos athenas wow
DELETE FROM `instance_template` WHERE `map`=169;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES ('169', '0', 'emerald_dream', '0');

DELETE FROM `game_tele` WHERE `id`=16006;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (16006, 3206.22, 3075.9, 25.691, 3.02947, 169, 'EmeraldDream');
