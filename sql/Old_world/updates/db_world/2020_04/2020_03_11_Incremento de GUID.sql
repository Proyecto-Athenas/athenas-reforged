-- reasignando 2 GUID de la tabla world.creature
UPDATE `creature` SET `guid` = 365020 WHERE `guid`= 16465714;
UPDATE `creature` SET `guid` = 365021 WHERE `guid`= 15029756;


-- reasignando los inicios de los GUID autoincrementados de las tablas world.creature y world.gameobject
ALTER TABLE `creature` AUTO_INCREMENT = 9720687;
ALTER TABLE `gameobject` AUTO_INCREMENT = 11243127;