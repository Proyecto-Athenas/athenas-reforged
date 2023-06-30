/* 
El npc que inicia la batalla con Cuerno Negro estaba duplicado, se elimino al NPC extra
.go xyz 13468.2 -12139.1 150.899 967

insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) 
values
('9649100','55891','967','5892','5922','15','1','0','0','13468.2','-12142.1','150.897','3.08923','604800','0','0','1','0','0','0','0','0','0'),
('9649129','55870','967','5892','5922','15','1','0','0','13468.2','-12139.1','150.899','3.05433','604800','0','0','1','0','0','0','0','0','0');

*/
DELETE FROM `creature` WHERE `guid` IN (9649129, 9649100);