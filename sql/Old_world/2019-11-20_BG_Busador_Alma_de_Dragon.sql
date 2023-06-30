-- Se agrego los Id y el requisito de nivel para poder usar el buscador de bandas
DELETE FROM `lfg_entrances` WHERE `dungeonId` IN ('416', '417');
INSERT INTO `lfg_entrances` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `neededILevel`) 
VALUES('416','The Siege of Wyrmrest Temple','-2305.51','-2389.55','84.434','6.141','472'),
('417','Fall of Deathwing','-2305.51','-2389.55','84.434','6.141','472'); -- falta corregir las coordenadas de ingreso para la caida de alamuerte