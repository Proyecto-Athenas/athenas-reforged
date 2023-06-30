-- agregando transgigurador global al mundo
DELETE FROM `creature` WHERE `guid` IN ('9662360','9662361');

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) 
VALUES
('9662360','999999','0','1519','5704','1','65535','0','1273','-8703.06','840.967','98.6859','0.977122','300','0','0','1','0','0','0','0','0','0'),
('9662361','999999','1','1637','5167','1','65535','0','1273','1731.52','-4516.56','30.6801','2.37331','300','0','0','1','0','0','0','0','0','0');
