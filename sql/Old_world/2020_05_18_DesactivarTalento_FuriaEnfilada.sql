-- desactivar el talento Furia Enfilada del Guerrero Furia
DELETE FROM `disables`  WHERE `sourceType` = 0 AND `entry`= 81099;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
VALUES('0','81099','1','0','0','Disable Spell Furia Enfilada');