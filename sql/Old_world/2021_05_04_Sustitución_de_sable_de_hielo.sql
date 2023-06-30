-- Mision Sustitución de sable de hielo deshabilitada
DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=7671;
INSERT INTO `disables`(`sourceType`,`entry`,`flags`) VALUE
(1,7671,0);
