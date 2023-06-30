-- ALTER DATABASE `world_athenas_old` CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci; -- para la DB_World en un futuro próximo
ALTER TABLE `arena_log` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; 	-- Para cada una de las tablas
ALTER TABLE `arena_log` CHANGE `winpl1` `winpl1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  -- para cada columna xD
ALTER TABLE `arena_log` CHANGE `winpl2` `winpl2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `winpl3` `winpl3` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `winpl4` `winpl4` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `winpl5` `winpl5` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `loosepl1` `loosepl1` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `loosepl2` `loosepl2` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `loosepl3` `loosepl3` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `loosepl4` `loosepl4` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  
ALTER TABLE `arena_log` CHANGE `loosepl5` `loosepl5` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  