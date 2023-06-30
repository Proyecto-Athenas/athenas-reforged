-- deshabilitar raid Trono de los 4 vientos
DELETE FROM `disables` WHERE `sourceType` = '2' AND `entry` = '754';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('2','754','15','0','0','Disabled Throne of the four Winds');

-- deshabilitar BG Playa de los Ancestros
DELETE FROM `disables` WHERE `sourceType` = '3' AND `entry` = '9';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('3','9','0','','','Strand of the Ancients (SOTA) - Battleground');