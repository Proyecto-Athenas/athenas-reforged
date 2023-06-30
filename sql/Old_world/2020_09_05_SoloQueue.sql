-- Agregando nuevamente los NPC de SoloQueue
DELETE FROM `creature` WHERE `guid` IN ('1013164' ,'1013165');

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) 
VALUES
('1013164','123456','0','1519','5148','1','1','0','32340','-8850.08','634.891','98.2109','0.378649','300','0','0','96859','4412','0','0','0','0','0'), -- alianza
('1013165','123457','1','1637','5170','1','1','0','32324','1557.84','-4415.87','18.5714','0.688324','300','0','0','96859','4412','0','0','0','0','0'); -- horda
