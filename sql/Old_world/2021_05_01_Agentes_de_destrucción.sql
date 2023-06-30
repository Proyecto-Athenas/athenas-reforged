-- deshabilita la mision Agentes de destrucción
DELETE FROM `disables` WHERE `sourceType` = '1' AND `entry` = '9518';
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('1','9518','15','0','0','Disabled Throne of the four Winds');
