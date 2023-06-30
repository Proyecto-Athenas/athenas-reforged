-- Npc que continua la cadena de misiones de monte hyjal.

-- te entrega la mision 
DELETE FROM `creature_questrelation` WHERE `id`=39865;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39865, 25316);

-- finaliza la mision 
DELETE FROM `creature_involvedrelation` WHERE `id`=39865;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39865, 27721),
(39865, 27726);


-- El Npc https://es.wowhead.com/npc=40289/ysera deberia de iniciarte 6 misiones 

-- te entrega 6 misiones
DELETE FROM `creature_questrelation` WHERE `id`=40289;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40289, 25317),
(40289, 25584),
(40289, 25597),
(40289, 25830),
(40289, 27874),
(40289, 29437);

-- te finaliza 
DELETE FROM `creature_involvedrelation` WHERE `id`=40289;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40289, 25316),
(40289, 25578),
(40289, 25653),
(40289, 29437);


-- https://es.wowhead.com/npc=39925/anren-buscasombras
-- te entrega 1 mision segun wow head
DELETE FROM `creature_questrelation` WHERE `id`=39925;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39925, 25460);

-- te finaliza 1 mision segun wow head
DELETE FROM `creature_involvedrelation` WHERE `id`=39925;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39925, 25460);

-- spawn coordenadas correctas 
DELETE FROM `creature` WHERE `guid`=112468;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112468, 39925, 1, 616, 5038, 1, 16383, 29213, 0, 5554.5, -3646.61, 1567.49, 5.20108, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

-- https://es.wowhead.com/npc=40278/tholo-pezu%C3%B1a-blanca

-- Te entrega 2 misiones segun wow head 
DELETE FROM `creature_questrelation` WHERE `id`=40278;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40278, 25370),
(40278, 25574);

-- te finaliza 2 misiones segun wow head
DELETE FROM `creature_involvedrelation` WHERE `id`=40278;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40278, 25370),
(40278, 25574);

-- quest Flames from Above
DELETE FROM `gameobject` WHERE id=203065;

DELETE FROM `report_quest` WHERE id=25574;

DELETE FROM `gameobject` WHERE `id`=301051;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(127894, 301051, 1, 616, 616, 1, 1, 5757.51, -3301.11, 1604.6, 0.466167, 0, 0, 0.230979, 0.972959, 300, 0, 1);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40856 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40856, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4085600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4085600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4085600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5738.95, -3305.88, 1615.96, 0, ''),
(4085600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 40856, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4085600, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 78954, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4085600, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5754.51, -3290.83, 1606.2, 0.780234, ''),
(4085600, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5761.41, -3286.05, 1604.92, 0.454076, ''),
(4085600, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5763.88, -3285.27, 1606.1, 0.634718, ''),
(4085600, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 78954, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4085600, 9, 7, 0, 0, 0, 100, 0, 500, 500, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5771.62, -3281.85, 1606.77, 5.39249, ''),
(4085600, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 40856, 0, 0, 0, 0, 0, 18, 60, 0, 0, 0, 0, 0, 0, ''),
(4085600, 9, 9, 0, 0, 0, 100, 0, 500, 500, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5776.47, -3287.81, 1608.85, 5.21953, ''),
(4085600, 9, 10, 0, 0, 0, 100, 0, 500, 500, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5779.93, -3301.46, 1609.49, 4.64418, ''),
(4085600, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 78954, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4085600, 9, 12, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5781.03, -3292.44, 1608.4, 5.52797, ''),
(4085600, 9, 13, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 50, 203065, 15, 0, 0, 0, 0, 8, 0, 0, 0, 5771.99, -3307.87, 1604.6, 5.98372, ''),
(4085600, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 78954, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4085600, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE entry=40856;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(40856, 1, 5738.95, -3305.88, 1615.96, ''),
(40856, 2, 5755.72, -3289.93, 1616.52, ''),
(40856, 3, 5772.02, -3286, 1616.59, ''),
(40856, 4, 5778.31, -3296.25, 1616.87, ''),
(40856, 5, 5769.38, -3313.07, 1625.96, ''),
(40856, 6, 5728.34, -3350.11, 1648.42, '');

-- respawn en coordenadas correctas
DELETE FROM `creature` WHERE `guid`=112596;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (112596, 39869, 1, 616, 5624, 1, 16383, 31230, 0, 5191.12, -2952.62, 1560.82, 5.9565, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

-- https://es.wowhead.com/npc=39857/malfurion-tempestira
-- Te entrega 3 misiones
DELETE FROM `creature_questrelation` WHERE id=39857;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39857, 25319),
(39857, 25323),
(39857, 25464);


-- Te finaliza 3 misiones
DELETE FROM `creature_involvedrelation` WHERE id=39857;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39857, 25317),
(39857, 25319),
(39857, 25323),
(39857, 25464),
(39857, 25472);


-- https://es.wowhead.com/npc=39869/hablavientos-tamila
-- te inicia 2 misiones
DELETE FROM `creature_questrelation` WHERE id=39869;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39869, 25430),
(39869, 25472);

-- https://es.wowhead.com/npc=38917/alysra
-- te finaliza 2 misiones
DELETE FROM `creature_involvedrelation` WHERE id=38917;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(38917, 25424),
(38917, 25430);


-- te inicia 2 misiones
DELETE FROM `creature_questrelation` WHERE id=38917;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(38917, 25320),
(38917, 25324);

-- te finaliza la mision ID 25320
DELETE FROM `creature_involvedrelation` WHERE id=40096;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40096, 25320),
(40096, 25321);

-- te inicia 2 misiones
DELETE FROM `creature_questrelation` WHERE id=40096;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40096, 25321),
(40096, 25424);

-- Te inicia la mision ID 25325
DELETE FROM `creature_questrelation` WHERE id=40139;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40139, 25325);

-- Te finaliza la mision
DELETE FROM `creature_involvedrelation` WHERE `id`=40139;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40139, 25324);

UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry`=39431;

-- https://es.wowhead.com/npc=40178/alysra
-- Te finaliza la mision
DELETE FROM `creature_involvedrelation` WHERE id=40178;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40178, 25325);

-- Te inicia la mision ID 25578
DELETE FROM `creature_questrelation` WHERE id=40178;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40178, 25578);

-- te finaliza la mision 
DELETE FROM `creature_involvedrelation` WHERE id=39429;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39429, 25584),
(39429, 25255);

-- https://es.wowhead.com/quest=25255/hostigar-a-los-cazadores
-- Te inicia 2 misiones 
DELETE FROM `creature_questrelation` WHERE id=39429;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39429, 25255),
(39429, 25269);

-- https://es.wowhead.com/npc=39427/jadi-falaryn
-- Te inicia las misiones 
DELETE FROM `creature_questrelation` WHERE id=39427;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39427, 25233),
(39427, 25234),
(39427, 25268);

-- finaliza 2 misiones
DELETE FROM `creature_involvedrelation` WHERE id=39427;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39427, 25233),
(39427, 25234);

-- finaliza las misiones
DELETE FROM `creature_involvedrelation` WHERE id=39432;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39432, 25269),
(39432, 25270),
(39432, 25277),
(39432, 25279),
(39432, 25354),
(39432, 25612);

-- inicia las misiones 
DELETE FROM `creature_questrelation` WHERE id=39432;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39432, 25270),
(39432, 25272),
(39432, 25277),
(39432, 25354),
(39432, 25355),
(39432, 25624);

-- https://es.wowhead.com/npc=39622/esp%C3%ADritu-de-logosh
-- finaliza las misiones
DELETE FROM `creature_involvedrelation` WHERE id=39622;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39622, 25272),
(39622, 25355);

-- inicia las misiones 
DELETE FROM `creature_questrelation` WHERE id=39622;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39622, 25279),
(39622, 25617);

-- inicia las misiones 
DELETE FROM `creature_questrelation` WHERE `id`=39434;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39434, 25297),
(39434, 25630),
(39434, 27874);

-- finaliza las misiones
DELETE FROM `creature_involvedrelation` WHERE `id`=39434;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39434, 25298);


-- inicia las misiones 
DELETE FROM `creature_questrelation` WHERE `id`=39640;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39640, 25328),
(39640, 25332);

-- finaliza las misiones
DELETE FROM `creature_involvedrelation` WHERE `id`=39640;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39640, 25328);

-- inicia la mision
DELETE FROM `creature_questrelation` WHERE `id`=40837;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40837, 25576);

-- finaliza la mision
DELETE FROM `creature_involvedrelation` WHERE `id`=40837;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40837, 25576);

-- finaliza la mision las misiones 
DELETE FROM `creature_questrelation` WHERE `id`=39627;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39627, 25280),
(39627, 25618);

DELETE FROM `creature_involvedrelation` WHERE `id`=39627;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39627, 25273),
(39627, 25353);

-- elimina el reporte de la mision 25599
DELETE FROM  `report_quest` WHERE id=25599;


DELETE FROM `smart_scripts` WHERE `entryorguid`=40844 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40844, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 15500, 17800, 11, 76312, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Earthsmash'),
(40844, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 80, 4084400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40844, 0, 2, 0, 2, 0, 100, 1, 0, 75, 0, 0, 80, 4084401, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40844, 0, 3, 0, 2, 0, 100, 1, 0, 50, 0, 0, 80, 4084402, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40844, 0, 4, 0, 2, 0, 100, 1, 0, 25, 0, 0, 80, 4084403, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40844, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4084400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4084400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 76295, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084400, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084400, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 42, 0, 74, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4084401 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4084401, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 76295, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084401, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084401, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5008.79, -2244.59, 1128.83, 0.860989, ''),
(4084401, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5008.79, -2244.59, 1128.83, 0.860989, ''),
(4084401, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5008.79, -2244.59, 1128.83, 0.860989, ''),
(4084401, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084401, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 76312, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084401, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 42, 0, 49, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4084402 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4084402, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 76295, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084402, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084402, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5018.25, -2249.67, 1128.83, 1.70398, ''),
(4084402, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5018.25, -2249.67, 1128.83, 1.70398, ''),
(4084402, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5018.25, -2249.67, 1128.83, 1.70398, ''),
(4084402, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084402, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 76312, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084402, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 42, 0, 24, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4084403 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4084403, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 76295, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084403, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084403, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5027.63, -2243.85, 1128.83, 2.31114, ''),
(4084403, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5027.63, -2243.85, 1128.83, 2.31114, ''),
(4084403, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40880, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 5027.63, -2243.85, 1128.83, 2.31114, ''),
(4084403, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084403, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 76312, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4084403, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject` WHERE id=203089;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(289338, 203089, 1, 616, 5064, 1, 16383, 5015.04, -2236.81, 1128.82, 0, 0, 0, -0.733077, 0.680146, 300, 100, 1);

DELETE FROM `creature_text` WHERE entry=40844;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(40844, 0, 0, 'Wants to kill us does it? Wants to know our secrets...', 12, 0, 100, 0, 2000, 0, '', 0),
(40844, 1, 0, 'We must destroys it.', 12, 0, 100, 0, 2000, 0, '', 40762),
(40844, 2, 0, 'We burns it, we burns! Bring fire, yes!', 12, 0, 100, 0, 2000, 0, '75', 40763),
(40844, 3, 0, 'Cindermaul calls forth creatures from elsewhere in the Firelands.', 16, 0, 100, 0, 2000, 0, '75', 0),
(40844, 4, 0, 'Come winds, whisper whisper... Blows it, blows it, blows it away!', 12, 0, 100, 0, 2000, 0, '50', 40764),
(40844, 5, 0, 'Cindermaul calls forth creatures from Skywall.', 16, 0, 100, 0, 2000, 0, '50', 0),
(40844, 6, 0, 'We ... crushes it! Must ... make crush. Hurry friends!', 12, 0, 100, 0, 2000, 0, '25', 40765),
(40844, 7, 0, 'Cindermaul calls forth creatures from the heart of Deepholm.', 16, 0, 100, 0, 2000, 0, '25', 0),
(40844, 8, 0, 'It mustn\'t know... it mustn\'t learn... what\'s ours...', 12, 0, 100, 0, 2000, 0, 'death', 40766);


DELETE FROM `report_quest` WHERE id=25303;

DELETE FROM `smart_scripts` WHERE `entryorguid`=39640 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39640, 0, 0, 0, 19, 0, 100, 0, 25332, 0, 0, 0, 85, 74351, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry`=39640;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39640, 0, 0, 0, 1, 0, NULL);

DELETE FROM `creature` WHERE id=39640;

UPDATE `creature_template` SET  `gossip_menu_id`='0' WHERE entry IN (39640);

DELETE FROM `creature_involvedrelation` WHERE `id`=39435;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39435, 25312),
(39435, 25332);

DELETE FROM `creature_questrelation` WHERE `id`=39435;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39435, 25300);



-- finaliza las misiones
DELETE FROM `creature_involvedrelation` WHERE `id`=39432;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39432, 25269),
(39432, 25270),
(39432, 25277),
(39432, 25279),
(39432, 25354),
(39432, 25612);

-- inicia las misiones
DELETE FROM `creature_questrelation` WHERE `id`=39432;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39432, 25270),
(39432, 25272),
(39432, 25277),
(39432, 25354),
(39432, 25355),
(39432, 25624);


-- inicia las misiones
DELETE FROM `creature_questrelation` WHERE `id`=40837;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40837, 25576);

DELETE FROM `creature_involvedrelation` WHERE `id`=40837;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40837, 25576);

DELETE FROM `creature_template_addon` WHERE `entry`=39927;
DELETE FROM `creature_template_addon` WHERE `entry`=39974;
DELETE FROM `creature_addon` WHERE `guid`=112699;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(112699, 0, 14332, 0, 0, 0, NULL);

DELETE FROM `creature_questrelation` WHERE `id`=39927;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39927, 25381),
(39927, 25382),
(39927, 25940);

DELETE FROM `creature_involvedrelation` WHERE `id`=39927;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39927, 25381),
(39927, 25382),
(39927, 25630);

DELETE FROM `creature` WHERE id=54362;
UPDATE `creature` SET  `spawndist`='0', `MovementType`='0' WHERE id IN (39974);
UPDATE `creature_template` SET  `InhabitType`='4' WHERE entry IN (39939,52595,52596,52594);
UPDATE `creature_template` SET  `speed_fly`='1' WHERE entry IN (39939,52595,52596,52594);


DELETE FROM `creature_questrelation` WHERE `id`=39928;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39928, 25404),
(39928, 25412),
(39928, 25940);

DELETE FROM `creature_involvedrelation` WHERE `id`=39928;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39928, 29066);


-- Si no estás contra nosotros... ID 25404 

DELETE FROM `report_quest` WHERE id=25404;

DELETE FROM `creature_template` WHERE `entry`=35845;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(35845, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Dave\'s Industrial Light and Magic Bunny (Small)(Sessile)', '', '', 0, 1, 1, 0, 0, 190, 190, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=40169;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40169, 0, 0, 0, 0, 0, '49414 74676 74862');

DELETE FROM `creature_template` WHERE `entry`=40169;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40169, 0, 0, 0, 0, 0, 328, 21072, 0, 0, 'Tyrus Blackhorn\'s Bindings', '', '', 0, 85, 85, 3, 0, 190, 190, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=39933;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39933, 0, 0, 0, 0, 0, 11333, 0, 0, 0, 'Tyrus Blackhorn', '', '', 11316, 81, 81, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 0, 464, 604, 0, 708, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 353, 512, 112, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=39933;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES (39933, 0, 0, 'Madness. Chaos. Much as I thrill to see the titans\' work undone, I do wish to remain alive when the master returns. I will help you.', 12, 0, 100, 0, 0, 0, '', 47054);

DELETE FROM `creature` WHERE `id`=39933;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113409, 39933, 1, 616, 5013, 1, 1, 11333, 0, 4923.96, -1874.59, 1334.29, 1.6057, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `entry`=11316;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(11316, 15772),
(11316, 15784);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11316;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(11316, 0, 0, 'Yes, Blackhorn. I\'ve been sent to request your aid, if you are willing.', 40010, 1, 1, 11322, 0, 0, 0, '', NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11324;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (11324, 0, 0, 'Matoclaw believes that you may yet be redeemed. This is your chance to atone for siding with demons.', 40017, 1, 1, 11323, 0, 0, 0, '', NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11323;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (11323, 0, 0, 'You\'ll be destroyed if the Twilight\'s Hammer brings this mountain down!', 40015, 1, 1, 11325, 0, 0, 0, '', NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11322;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(11322, 0, 0, 'You were a mortal once, Blackhorn. One of us.', 40013, 1, 1, 11324, 0, 0, 0, '', NULL);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=11325;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES (11325, 0, 0, 'Will you help us to defeat them?', 40020, 1, 1, 0, 0, 0, 0, '', NULL);

DELETE FROM `gossip_menu` WHERE `entry`=11322;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (11322, 15778);

DELETE FROM `broadcast_text` WHERE `ID`=15778;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (15778, 0, 'Left? How can you choose to leave?', 'Left? How can you choose to leave?', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=15772;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (15772, 0, 'You raised all of the orcs here, Greatmother?', 'You raised all of the orcs here, Greatmother?', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=15784;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (15784, 0, 'I need a pack of incendiary bombs.', 'I need a pack of incendiary bombs.', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=39933;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 39933, 0, 0, 0, 9, 0, 25404, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');


DELETE FROM `smart_scripts` WHERE `entryorguid`=-142772 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-142772, 0, 0, 0, 60, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 74677, 0, 0, 0, 0, 0, 19, 39933, 10, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=-142773 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-142773, 0, 0, 0, 60, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 74678, 0, 0, 0, 0, 0, 19, 39933, 10, 0, 0, 0, 0, 0, '');


DELETE FROM `creature` WHERE guid=131794;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(131794, 35845, 1, 616, 5013, 1, 1, 27823, 0, 4923.84, -1872.22, 1334.64, 1.65806, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=35845;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(35845, 0, 0, 0, 1, 0, NULL);

DELETE FROM `creature_involvedrelation` WHERE id=39933;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39933, 25404),
(39933, 25408),
(39933, 25412),
(39933, 25428);

DELETE FROM `creature_questrelation` WHERE id=39933;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39933, 25408),
(39933, 25411),
(39933, 25428);

DELETE FROM `creature_template_addon` WHERE `entry`=39933;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39933, 0, 0, 0, 0, 0, '49414 74862');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=39933;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39933, 0, 0, 1, 62, 0, 100, 0, 11325, 0, 0, 0, 33, 40056, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(39933, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(39933, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39933, 0, 3, 0, 20, 0, 100, 0, 25428, 0, 0, 0, 85, 74882, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=40056;

DELETE FROM `creature_involvedrelation` WHERE `id`=40093;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40093, 25411);

DELETE FROM `creature_questrelation` WHERE `id`=40093;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40093, 25412);


DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=39974;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39974, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(39974, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 32707, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt on Aggro'),
(39974, 0, 3, 0, 9, 1, 100, 0, 0, 40, 3400, 4700, 11, 32707, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt'),
(39974, 0, 4, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in bolt Range'),
(39974, 0, 5, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 15 Yards'),
(39974, 0, 6, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving when in bolt Range'),
(39974, 0, 7, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 2 at 15% Mana'),
(39974, 0, 8, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving at 15% Mana'),
(39974, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 When Mana is above 30%'),
(39974, 0, 10, 0, 2, 2, 100, 1, 0, 15, 0, 0, 22, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 3 at 15% HP'),
(39974, 0, 11, 0, 2, 3, 100, 1, 0, 15, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flee at 15% HP'),
(39974, 0, 12, 0, 7, 3, 100, 1, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Reset on Evade'),
(39974, 0, 13, 0, 2, 3, 100, 1, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Say Text at 15% HP'),
(39974, 0, 14, 0, 0, 1, 100, 0, 4000, 7000, 17000, 17000, 11, 11962, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Immolate'),
(39974, 0, 15, 0, 0, 1, 100, 0, 9000, 9000, 11000, 13000, 11, 13339, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Fire Blast'),
(39974, 0, 16, 17, 8, 0, 100, 0, 74763, 0, 0, 0, 11, 74760, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39974, 0, 17, 0, 61, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39974, 0, 18, 0, 1, 0, 100, 0, 1000, 2000, 20000, 35000, 11, 74369, 0, 0, 0, 0, 0, 19, 35845, 10, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceEntry`=39974;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 39974, 0, 0, 31, 0, 5, 300127, 0, 0, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceEntry`=74763;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 74763, 0, 0, 31, 1, 39974, 0, 0, 0, 0, 0, '', ''),
(17, 0, 74763, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', '');

UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE  `id`=35845;

DELETE FROM `creature_questrelation` WHERE `id`=39932;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39932, 25462),
(39932, 25490);

DELETE FROM `creature_involvedrelation` WHERE `id`=39932;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39932, 25462),
(39932, 25940);


DELETE FROM `creature_questrelation` WHERE `id`=39858;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(39858, 25491),
(39858, 25493),
(39858, 25507),
(39858, 25510),
(39858, 25843);

DELETE FROM `creature_involvedrelation` WHERE `id`=39858;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(39858, 25372),
(39858, 25490),
(39858, 25491),
(39858, 25493),
(39858, 25507),
(39858, 25520);

DELETE FROM `creature_involvedrelation` WHERE `id`=40331;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40331, 25492),
(40331, 25502);

DELETE FROM `creature_questrelation` WHERE `id`=40331;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40331, 25492),
(40331, 25502);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40340 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40340, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4034000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Data Set 0 1 -  Run Action List'),
(40340, 0, 1, 0, 73, 0, 100, 0, 0, 0, 0, 0, 85, 75570, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Spellclick - Invoker Cast 75570');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4034000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4034000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Say 0'),
(4034000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Set Faction 35'),
(4034000, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Say 1'),
(4034000, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 34999, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Cast 34999'),
(4034000, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Say 2'),
(4034000, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 101569, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Cast 101569'),
(4034000, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 2, 2147, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Set Faction 2147');


DELETE FROM `creature` WHERE id IN (41006,50071,50081,50079,43487,40997,50083,41003,43493,41005,41300,41308,40838,40834,40837,40841,40844,40845,39846,50068,43495,50070);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113408, 41006, 1, 616, 4990, 1, 1, 32254, 0, 4908.93, -2719.85, 1438.6, 0.346529, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(136695, 41006, 1, 616, 5087, 1, 1, 0, 0, 4191.83, -2321.18, 1147.7, 3.75481, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141320, 50071, 1, 616, 4990, 1, 1, 33388, 0, 4924.59, -2740.14, 1437.72, 2.07694, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141321, 50081, 1, 616, 4990, 1, 1, 32251, 0, 4919.17, -2748.72, 1437.72, 2.18166, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137402, 50079, 1, 616, 4990, 1, 1, 32252, 0, 4914.41, -2749.24, 1437.71, 0.558505, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112665, 43487, 1, 616, 4990, 1, 1, 33384, 0, 4900.89, -2739.06, 1437.68, 5.63741, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112975, 40997, 1, 616, 4990, 1, 1, 32245, 0, 4896.81, -2777.96, 1460.66, 0.331613, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(92232, 50083, 1, 616, 4990, 1, 1, 32257, 0, 4866.32, -2790.09, 1510.48, 1.90241, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112241, 50083, 1, 616, 4990, 1, 1, 32256, 0, 4889.2, -2785.07, 1505.22, 1.39626, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112232, 50083, 1, 616, 4990, 1, 1, 32257, 0, 4875.72, -2786.22, 1508.31, 1.76278, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112226, 50083, 1, 616, 4990, 1, 1, 32258, 0, 4856.13, -2802.07, 1512.08, 4.35105, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112222, 50083, 1, 616, 4990, 1, 1, 32257, 0, 4820.8, -2844.51, 1497.92, 5.34627, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112132, 50083, 1, 616, 4990, 1, 1, 32256, 0, 4850.64, -2815.92, 1512.25, 0.802851, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112089, 50083, 1, 616, 4990, 1, 1, 32258, 0, 4901.62, -2791.19, 1461.77, 1.41372, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112067, 50083, 1, 616, 4990, 1, 1, 32258, 0, 4905.32, -2786.7, 1501.07, 1.32645, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112051, 50083, 1, 616, 4990, 1, 1, 32258, 0, 4958.59, -2763.16, 1435.6, 1.55615, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(111959, 50083, 1, 616, 4990, 1, 1, 32258, 0, 4916.23, -2790.01, 1498.4, 0.977384, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(111928, 50083, 1, 616, 4990, 1, 1, 32257, 0, 4858.42, -2840.02, 1469.72, 4.85202, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113516, 41003, 1, 616, 4990, 1, 1, 32251, 0, 4895.39, -2803.11, 1437.76, 2.61799, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141148, 43493, 1, 616, 4990, 1, 1, 33386, 0, 4881.49, -2804.94, 1437.75, 5.51524, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112740, 41005, 1, 616, 4990, 1, 1, 32253, 0, 4886.78, -2815.94, 1437.76, 1.37881, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142853, 41300, 1, 0, 0, 1, 1, 0, 0, 4838.5, -2811.19, 1444.53, 6.19749, 120, 0, 0, 8290, 0, 0, 0, 0, 0, 0),
(111906, 41300, 1, 616, 4990, 1, 1, 0, 0, 4834.29, -2810.53, 1445.59, 6.25, 120, 0, 0, 79192, 0, 0, 0, 0, 0, 0);


INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112472, 41308, 1, 616, 4990, 1, 1, 0, 0, 4834.29, -2810.53, 1445.59, 6.25, 120, 0, 0, 8290, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137328, 40838, 1, 616, 5022, 1, 1, 0, 40838, 4904.32, -2255.07, 1118.19, 1.16989, 300, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(137327, 40838, 1, 616, 5064, 1, 1, 0, 40838, 5073.04, -2133.23, 1136.6, 0.737376, 300, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(137326, 40838, 1, 616, 5064, 1, 1, 0, 40838, 5075.73, -2195.16, 1136.61, 5.67831, 300, 5, 0, 30951, 0, 1, 0, 0, 0, 0),
(137325, 40838, 1, 616, 5064, 1, 1, 0, 40838, 4966.94, -2196.91, 1118.54, 0.348365, 300, 25, 0, 30951, 0, 1, 0, 0, 0, 0),
(137324, 40838, 1, 616, 5064, 1, 1, 32098, 0, 5028.83, -2152.6, 1136.51, 5.60251, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(137323, 40838, 1, 616, 5064, 1, 1, 32101, 0, 5089.77, -2201.35, 1136.6, 5.82047, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137318, 40838, 1, 616, 5064, 1, 1, 32103, 0, 5076.55, -2209.45, 1136.61, 1.46544, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137317, 40838, 1, 616, 5064, 1, 1, 32098, 0, 4974.18, -2170.64, 1117.22, 6.22, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137316, 40838, 1, 616, 5064, 1, 1, 32101, 0, 5080.77, -2143.51, 1136.61, 3.65564, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137315, 40838, 1, 616, 5064, 1, 1, 32098, 0, 4930.65, -2180.8, 1124.81, 5.63741, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137314, 40838, 1, 616, 5064, 1, 1, 0, 40838, 4912.1, -2215.75, 1115.8, 0.294173, 300, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(137313, 40838, 1, 616, 5064, 1, 1, 32101, 0, 4993.47, -2171.21, 1133.31, 5.95157, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137312, 40838, 1, 616, 5064, 1, 1, 32103, 0, 5031.06, -2118.03, 1140.48, 5.0123, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137311, 40838, 1, 616, 5064, 1, 1, 32098, 0, 4989.45, -2104.62, 1144.76, 3.08886, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137310, 40838, 1, 616, 5064, 1, 1, 32103, 0, 4979.68, -2104.43, 1144.76, 0.198598, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137309, 40838, 1, 616, 5064, 1, 1, 32103, 0, 4984.87, -2220.6, 1139.71, 2.93962, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137083, 40834, 1, 616, 5064, 1, 1, 32091, 0, 5011.96, -2037.55, 1148.98, 4.89642, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137084, 40837, 1, 616, 5064, 1, 1, 32092, 0, 5010.17, -2039.46, 1148.98, 5.10717, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137305, 40841, 1, 616, 5064, 1, 1, 35681, 0, 5060.82, -2204.15, 1137.82, 2.32859, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137304, 40841, 1, 616, 5064, 1, 1, 35681, 0, 4970.6, -2175.87, 1117.59, 1.92388, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137303, 40841, 1, 616, 5064, 1, 1, 35681, 0, 5018.77, -2175.65, 1133.74, -2.13641, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137302, 40841, 1, 616, 5064, 1, 1, 35681, 0, 4945.68, -2181.24, 1123.15, 6.00393, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137301, 40841, 1, 616, 5064, 1, 1, 35681, 0, 5044.34, -2190.91, 1137.86, 5.17935, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137300, 40841, 1, 616, 5064, 1, 1, 35681, 0, 5084.56, -2152.55, 1136.69, 3.03687, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137299, 40841, 1, 616, 5064, 1, 1, 35681, 0, 5038.86, -2141.09, 1136.71, 1.81102, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137298, 40841, 1, 616, 5064, 1, 1, 35681, 0, 5059.79, -2179.05, 1139.48, 4.3989, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0);


INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137077, 40844, 1, 616, 5064, 1, 1, 35201, 0, 5015.21, -2234.49, 1128.9, 1.51844, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137078, 40845, 1, 616, 5064, 1, 1, 13030, 0, 4885.48, -2283.97, 1117.4, 1.16937, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112697, 39846, 1, 616, 4999, 1, 1, 31586, 0, 5042.85, -2172.88, 1386.98, 4.86488, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE id IN (43427);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112588, 43427, 1, 616, 5038, 1, 65535, 0, 43427, 5536.08, -3678.36, 1569.96, 5.4642, 300, 0, 0, 421667, 0, 0, 0, 0, 0, 0),
(112589, 43427, 1, 616, 5038, 1, 65535, 0, 43427, 5516.85, -3692.81, 1574.54, 5.40529, 300, 5, 0, 421667, 0, 1, 0, 0, 0, 0),
(112590, 43427, 1, 616, 5038, 1, 1, 31213, 0, 5575.61, -3564.12, 1570.95, 4.59022, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112591, 43427, 1, 616, 5038, 1, 1, 31213, 0, 5523.39, -3626.66, 1567.18, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112592, 43427, 1, 616, 5038, 1, 1, 31213, 0, 5521.39, -3612.39, 1569.65, 5.39307, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112593, 43427, 1, 616, 5730, 1, 1, 31213, 0, 5502.78, -3599.64, 1570.14, 2.18166, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112594, 43427, 1, 616, 5038, 1, 1, 31212, 0, 5538.77, -3616.06, 1567.99, 5.16617, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112595, 43427, 1, 616, 5038, 1, 1, 31212, 0, 5591.62, -3573.22, 1571.04, 4.11898, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(111770, 43427, 1, 616, 5038, 1, 1, 31212, 0, 5527.45, -3608.7, 1569.62, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(111699, 43427, 1, 616, 5730, 1, 1, 31212, 0, 5521.13, -3586.86, 1570.14, 2.25148, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(111652, 43427, 1, 616, 5038, 1, 1, 0, 43427, 5563.56, -3664.17, 1567.93, 5.14768, 300, 0, 0, 421667, 0, 0, 0, 0, 0, 0),
(111409, 43427, 1, 616, 5038, 1, 65535, 0, 43427, 5546.37, -3666.1, 1567.83, 5.1469, 300, 0, 0, 421667, 0, 0, 0, 0, 0, 0),
(111396, 43427, 1, 616, 5038, 1, 65535, 0, 43427, 5523.93, -3685.99, 1573.46, 5.43671, 300, 5, 0, 421667, 0, 1, 0, 0, 0, 0),
(111386, 43427, 1, 616, 5038, 1, 65535, 0, 43427, 5501.27, -3659.29, 1574.23, 4.14547, 300, 5, 0, 421667, 0, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (43408);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113515, 43408, 1, 616, 5038, 1, 1, 33357, 0, 5540.5, -3613.99, 1568.28, 5.95157, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40843);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113001, 40843, 1, 616, 5730, 1, 1, 32107, 0, 5513.63, -3608.03, 1570.13, 1.11701, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (43411);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112698, 43411, 1, 616, 5730, 1, 1, 33359, 0, 5523.79, -3597.42, 1570.13, 3.35103, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (50314);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112982, 50314, 1, 616, 5730, 1, 1, 36763, 0, 5521.81, -3593.19, 1570.14, 3.87463, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40289);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112666, 40289, 1, 616, 5730, 1, 1, 35253, 0, 5490.67, -3563.56, 1569.33, 2.11185, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (39925);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112468, 39925, 1, 616, 5038, 1, 1, 29213, 0, 5554.5, -3646.61, 1567.49, 5.20108, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40278);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113412, 40278, 1, 616, 5038, 1, 1, 31777, 0, 5559.22, -3648.86, 1567.67, 4.5204, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40229);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112984, 40229, 1, 616, 5038, 1, 1, 0, 0, 5496.44, -3731.25, 1580.19, 2.30907, 300, 7, 0, 46427, 0, 1, 0, 0, 0, 0),
(112985, 40229, 1, 616, 5038, 1, 1, 0, 0, 5524.74, -3694.93, 1573.4, 2.18341, 300, 7, 0, 46427, 0, 1, 0, 0, 0, 0),
(112986, 40229, 1, 616, 5038, 1, 1, 0, 0, 5522.15, -3691.25, 1574.14, 2.18341, 300, 7, 0, 46427, 0, 1, 0, 0, 0, 0),
(112987, 40229, 1, 616, 5038, 1, 1, 0, 0, 5520.73, -3689.22, 1574.26, 2.18341, 300, 7, 0, 46427, 0, 1, 0, 0, 0, 0),
(112988, 40229, 1, 616, 616, 1, 1, 0, 0, 5546.03, -3816.67, 1596.65, 4.20581, 300, 7, 0, 46427, 0, 1, 0, 0, 0, 0),
(112989, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5531.53, -3696.91, 1571.41, 2.46318, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112990, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5590.31, -3507.35, 1580.44, 1.25664, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112991, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5553.17, -3417.15, 1578.54, 1.07538, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112992, 40229, 1, 616, 616, 1, 1, 2075, 0, 5548.19, -3737.31, 1580.02, 0.714626, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112993, 40229, 1, 616, 616, 1, 1, 2075, 0, 5580.91, -3781.9, 1590.14, 2.63977, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112994, 40229, 1, 616, 616, 1, 1, 2075, 0, 5434.6, -3838.71, 1617.16, 2.74319, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112995, 40229, 1, 616, 616, 1, 1, 2075, 0, 5480.93, -3815.75, 1602.99, 5.65312, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112996, 40229, 1, 616, 616, 1, 1, 2075, 0, 5511.72, -3845.97, 1601.7, 0.528763, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112997, 40229, 1, 616, 616, 1, 1, 2075, 0, 5547.24, -3817.92, 1597.08, 3.908, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112998, 40229, 1, 616, 616, 1, 1, 2075, 0, 5511.14, -3790.28, 1587.66, 5.82095, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(112999, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5566.99, -3687.02, 1568.19, 0.802853, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(113000, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5543.22, -3694.74, 1570.3, 1.57254, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111374, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5493.6, -3672.92, 1575.81, 1.00781, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111321, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5585.92, -3705.73, 1576.09, 2.90547, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111247, 40229, 1, 616, 616, 1, 1, 2075, 0, 5641.44, -3661.89, 1580.85, 0.580292, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111177, 40229, 1, 616, 616, 1, 1, 2075, 0, 5662.54, -3741.73, 1594.11, 0.383492, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111172, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5456.14, -3672.82, 1586.26, 5.61634, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111166, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5344.56, -3589.42, 1564.85, 4.84409, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111152, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5627.32, -3554.55, 1577.87, 0.569123, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111084, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5626.94, -3422.02, 1587.78, 4.61347, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111071, 40229, 1, 616, 616, 1, 1, 2075, 0, 5637.05, -3453.54, 1583.55, 3.83232, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(111054, 40229, 1, 616, 616, 1, 1, 2075, 0, 5688.83, -3413.39, 1590.64, 2.93368, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(110819, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5555.35, -3478.86, 1572.93, 0.991885, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(110801, 40229, 1, 616, 616, 1, 1, 2075, 0, 5224.43, -3535.61, 1599.27, 5.45473, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(110771, 40229, 1, 616, 616, 1, 1, 2075, 0, 5196.69, -3512.15, 1597.54, 2.76475, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(131311, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5307.42, -3460.96, 1573.37, 1.95258, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(131309, 40229, 1, 616, 616, 1, 1, 2075, 0, 5378.2, -3752.61, 1610.96, 1.42983, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(130793, 40229, 1, 616, 5038, 1, 1, 2075, 0, 5282.83, -3535.6, 1595.17, 2.07203, 120, 7, 0, 1, 1, 1, 0, 0, 0, 0),
(130756, 40229, 1, 616, 5038, 1, 65535, 0, 0, 5568.15, -3685.97, 1568.08, 0.736094, 300, 7, 0, 30951, 0, 1, 0, 0, 0, 0),
(130753, 40229, 1, 616, 5038, 1, 65535, 0, 0, 5609.41, -3714.91, 1582.05, 5.70845, 300, 7, 0, 30951, 0, 1, 0, 0, 0, 0),
(130751, 40229, 1, 616, 5038, 1, 65535, 0, 0, 5555.38, -3690.3, 1568.94, 1.09264, 300, 7, 0, 30951, 0, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (39921);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(99455, 39921, 1, 616, 616, 1, 1, 1267, 0, 5478.36, -3785.65, 1595.28, 3.91663, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99456, 39921, 1, 616, 616, 1, 1, 1267, 0, 5514.64, -3816.13, 1596.31, 0.557668, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99457, 39921, 1, 616, 616, 1, 1, 1267, 0, 5457.29, -3812.32, 1610.55, 5.62895, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99458, 39921, 1, 616, 616, 1, 1, 1267, 0, 5612.98, -3755.93, 1593.69, 4.38316, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99459, 39921, 1, 616, 616, 1, 1, 1267, 0, 5536.53, -3865.93, 1605.18, 1.32329, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99460, 39921, 1, 616, 616, 1, 1, 1267, 0, 5639.63, -3709.87, 1587.23, 3.21394, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99461, 39921, 1, 616, 616, 1, 1, 1267, 0, 5655.21, -3711.44, 1590.18, 4.0589, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99462, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5628.02, -3687.26, 1581.01, 4.02021, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99463, 39921, 1, 616, 616, 1, 1, 1267, 0, 5553.27, -3788.77, 1587.36, 5.15525, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99464, 39921, 1, 616, 616, 1, 1, 1267, 0, 5582.84, -3812.37, 1599.25, 5.9516, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99465, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5589.6, -3719.84, 1578.72, 4.85861, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99466, 39921, 1, 616, 616, 1, 1, 1267, 0, 5650.49, -3656.82, 1581.73, 1.32865, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99467, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5472.38, -3644.42, 1573.13, 5.19227, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99468, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5628.63, -3587.4, 1575.21, 4.93363, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99469, 39921, 1, 616, 616, 1, 1, 1267, 0, 5637.26, -3614.06, 1573.26, 3.2214, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(99470, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5405.91, -3623.32, 1560.94, 6.26531, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137275, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5370.01, -3608.34, 1560.83, 2.50622, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137276, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5343.93, -3625.46, 1565.52, 3.28565, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137329, 39921, 1, 616, 616, 1, 1, 1267, 0, 5705.85, -3421.53, 1590.32, 5.63941, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137330, 39921, 1, 616, 616, 1, 1, 1267, 0, 5684.78, -3391.38, 1590.89, 2.96099, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137331, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5577.96, -3486.51, 1578.77, 0.806409, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137332, 39921, 1, 616, 616, 1, 1, 1267, 0, 5675.54, -3444.72, 1586.89, 2.86862, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137333, 39921, 1, 616, 616, 1, 1, 1267, 0, 5184.32, -3483.13, 1599.89, 4.63806, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137334, 39921, 1, 616, 616, 1, 1, 1267, 0, 5152.59, -3413.01, 1620.07, 2.6878, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137335, 39921, 1, 616, 616, 1, 1, 1267, 0, 5521.6, -3748.22, 1582.18, 1.44193, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137336, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5574.78, -3409.86, 1580.56, 2.23009, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137337, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5407.29, -3686.46, 1594.83, 1.07579, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137338, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5545.99, -3375.3, 1580.44, 3.29945, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137339, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5545.94, -3444.14, 1573.58, 3.80689, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137340, 39921, 1, 616, 5038, 1, 1, 1267, 0, 5314.23, -3594.35, 1586.38, 6.06257, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137341, 39921, 1, 616, 616, 1, 1, 1267, 0, 5650.22, -3386.32, 1587.09, 2.47251, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137342, 39921, 1, 616, 616, 1, 1, 1267, 0, 5712.2, -3373.72, 1595.31, 0.169665, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137343, 39921, 1, 616, 616, 1, 1, 1267, 0, 5226.57, -3554.68, 1603.86, 3.07961, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (41861);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113414, 41861, 1, 616, 5038, 1, 1, 32612, 0, 5584.66, -3567.31, 1570.69, 4.4855, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (43410);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113413, 43410, 1, 616, 5038, 1, 1, 33358, 0, 5572.68, -3600.8, 1570.6, 2.99734, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40833);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113406, 40833, 1, 616, 5038, 1, 1, 32086, 0, 5586.84, -3614.69, 1570.68, 2.63545, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_questrelation` WHERE `id`=40833;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40833, 25985);

DELETE FROM `creature` WHERE id IN (40882);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113365, 40882, 1, 616, 616, 1, 16383, 31216, 0, 5752.75, -3308.22, 1604.12, 3.75672, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113366, 40882, 1, 616, 616, 1, 16383, 31216, 0, 5772.95, -3289.33, 1604.6, 3.76378, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113364, 40882, 1, 616, 616, 1, 16383, 31216, 0, 5773.28, -3302.24, 1604.68, 3.36848, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113363, 40882, 1, 616, 616, 1, 16383, 31216, 0, 5747.15, -3300.35, 1604.18, 3.70959, 300, 0, 0, 30951, 17628, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40178);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112480, 40178, 1, 616, 5032, 1, 32769, 29162, 0, 5702.51, -3142.2, 1593.84, 4.79965, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (38934);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(136967, 38934, 1, 616, 5622, 1, 32768, 0, 38934, 5699.71, -3154.14, 1594.87, 1.64061, 120, 0, 0, 260309, 0, 0, 0, 0, 0, 0),
(136968, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5690.35, -3262.13, 1582.72, 3.19148, 120, 0, 0, 256118, 0, 0, 0, 557056, 0, 0),
(136969, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5710.05, -3186.32, 1596.65, 5.18869, 120, 0, 0, 216657, 0, 0, 0, 0, 0, 0),
(136970, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5710.84, -3240.64, 1582.45, 3.87858, 120, 0, 0, 255754, 0, 0, 0, 557056, 0, 0),
(130748, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5709.8, -3153.11, 1595.09, 1.64061, 120, 0, 0, 260309, 0, 0, 0, 0, 0, 0),
(130188, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5609.08, -3227.62, 1568.07, 1.12162, 120, 0, 0, 216047, 0, 0, 0, 557056, 0, 0),
(130111, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5594.52, -3249.81, 1567.9, 2.91378, 120, 0, 0, 216657, 0, 0, 0, 0, 0, 0),
(129956, 38934, 1, 616, 5032, 1, 32768, 0, 38934, 5657.89, -3227.7, 1573.58, 6.2174, 120, 0, 0, 259404, 0, 0, 0, 557056, 0, 0);

DELETE FROM `creature` WHERE id IN (40134);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112829, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5709.32, -3242.02, 1582.41, 0.736984, 120, 3, 0, 11351, 3994, 1, 0, 524288, 0, 0),
(112830, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5710.62, -3189.5, 1596.42, 1.55205, 120, 3, 0, 0, 0, 1, 0, 0, 1, 0),
(112831, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5686.38, -3247.12, 1582.87, 1.36462, 120, 3, 0, 30951, 3994, 1, 0, 0, 0, 0),
(112832, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5680.92, -3282.61, 1583.03, 5.38475, 120, 3, 0, 30951, 3994, 1, 0, 0, 0, 0),
(112833, 40134, 1, 616, 5032, 1, 32769, 30779, 0, 5595.85, -3250.43, 1567.98, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112834, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5629.98, -3214.22, 1568.07, 1.49786, 120, 3, 0, 0, 0, 1, 0, 0, 1, 0),
(129786, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5651.21, -3282.46, 1568.15, 0, 120, 3, 0, 0, 0, 1, 0, 0, 1, 0),
(129772, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5661.27, -3227.92, 1573.47, 3.07581, 120, 3, 0, 28601, 3994, 1, 0, 524288, 0, 0),
(129658, 40134, 1, 616, 5032, 1, 32768, 0, 0, 5658.18, -3313.26, 1556.36, 0, 120, 3, 0, 0, 0, 1, 0, 0, 1, 0),
(129656, 40134, 1, 616, 5032, 1, 1, 0, 0, 5711.15, -3216.36, 1587.02, 1.69588, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129654, 40134, 1, 616, 5032, 1, 1, 0, 0, 5677.8, -3282.33, 1582.76, 0.713866, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129652, 40134, 1, 616, 5032, 1, 1, 0, 0, 5684.71, -3250.25, 1582.66, 5.25046, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129639, 40134, 1, 616, 5032, 1, 1, 0, 0, 5665.84, -3225.37, 1573.39, 3.15358, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129637, 40134, 1, 616, 5032, 1, 1, 0, 0, 5633.38, -3215.25, 1567.8, 3.28906, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129563, 40134, 1, 616, 5032, 1, 1, 0, 0, 5603.83, -3245.95, 1568.13, 0.80589, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129545, 40134, 1, 616, 5032, 1, 1, 0, 0, 5630.03, -3260.12, 1567.87, 0.0802807, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(111355, 40134, 1, 616, 5032, 1, 1, 0, 0, 5646.81, -3279.7, 1568.07, 0.228895, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0),
(129382, 40134, 1, 616, 5032, 1, 1, 0, 0, 5614.52, -3277.16, 1567.99, 3.30569, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (38951);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113198, 38951, 1, 616, 5032, 1, 32768, 0, 38951, 5646.28, -3282.47, 1568.07, 0.757851, 120, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(113199, 38951, 1, 616, 5032, 1, 32769, 2869, 0, 5591.27, -3249.06, 1567.99, -0.227792, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113200, 38951, 1, 616, 5032, 1, 32768, 0, 38951, 5692.35, -3262.03, 1582.58, 3.19148, 120, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(113201, 38951, 1, 616, 5032, 1, 32769, 2869, 0, 5606.4, -3227.96, 1568.07, 4.71239, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113202, 38951, 1, 616, 5032, 1, 32768, 0, 38951, 5711.58, -3189.28, 1596.56, 2.0471, 120, 0, 0, 0, 0, 0, 0, 0, 1, 0);

DELETE FROM `creature` WHERE id IN (39857);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112724, 39857, 1, 616, 5624, 1, 1, 35095, 0, 5190.42, -2955.79, 1560.9, 6.0912, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (40140);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112525, 40140, 1, 616, 5032, 1, 32769, 1542, 0, 5665.23, -3341.42, 1555.67, 1.8326, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE id IN (40139,54314,38917,38926,38913,38915,40123,40096,38902,40775,38896,40150,40149,40147,40148,49444,49445,39869);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112674, 40139, 1, 616, 5032, 1, 32769, 20628, 0, 5662.62, -3339.16, 1555.67, 3.40237, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141829, 54314, 1, 616, 5625, 1, 2, 0, 0, 5644.48, -3012.8, 1560.79, 3.19395, 120, 0, 0, 232468, 17816, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112481, 38917, 1, 616, 5625, 1, 1, 29162, 0, 5658.77, -2986.45, 1569.27, 4.31096, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113205, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5418.48, -2901.05, 1533.58, -1.12531, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113206, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5473.64, -2768.45, 1517.64, 2.81588, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113207, 38926, 1, 616, 5625, 1, 1, 31216, 0, 5610.58, -2947.46, 1545.25, -0.189223, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113208, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5591.27, -2911.21, 1530.64, 2.30018, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113209, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5585.18, -2973.81, 1546.7, 1.72788, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113210, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5349.29, -3019.24, 1555.98, 1.39626, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113211, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5559.07, -2942.11, 1537.64, 0.279253, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113212, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5268.96, -2813.28, 1525, 4.18879, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113213, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5326.02, -2995.68, 1549.29, -1.90694, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113214, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5389.01, -2955.64, 1546.8, 2.1293, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113215, 38926, 1, 616, 616, 1, 1, 31216, 0, 5232.71, -2820.85, 1541.66, 0.15708, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113216, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5359.46, -2933.34, 1541.34, 1.43117, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113217, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5292.75, -2931.33, 1538.22, 5.22232, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113218, 38926, 1, 616, 616, 1, 1, 31216, 0, 5256, -2848.05, 1536.68, 1.83402, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113219, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5415.04, -3000.72, 1555.33, 5.7005, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113220, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5424.28, -3006.92, 1555.11, -0.578679, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113221, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5486.6, -2882.94, 1528.47, 1.81514, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113222, 38926, 1, 616, 5623, 1, 1, 31216, 0, 5384.39, -2832.01, 1519.96, 5.79449, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113223, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5505.78, -2852.13, 1518.11, 1.14767, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(113224, 38926, 1, 616, 5622, 1, 1, 31216, 0, 5586.09, -2906.22, 1529.28, 4.88692, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113225, 38926, 1, 616, 5033, 1, 1, 31216, 0, 5569.12, -2798.02, 1515.67, 1.48753, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(113226, 38926, 1, 616, 5033, 1, 1, 31216, 0, 5549.23, -2748.07, 1497.19, 0.969051, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113227, 38926, 1, 616, 5033, 1, 1, 31216, 0, 5551, -2713.97, 1492.96, 2.25148, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113228, 38926, 1, 616, 5625, 1, 1, 31216, 0, 5603.13, -3056.4, 1559.17, -0.865797, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113229, 38926, 1, 616, 5033, 1, 1, 31216, 0, 5612.66, -2754.52, 1505.73, 2.44103, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113265, 38913, 1, 616, 5033, 1, 65535, 0, 38913, 5571.37, -2863.08, 1516.69, 4.84125, 300, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113266, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5334.65, -2932.9, 1538.13, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113267, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5391.14, -2881.67, 1530.12, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113268, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5360.24, -2926.56, 1540.8, 2.44346, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113269, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5446.99, -2909.77, 1537.95, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113270, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5500.05, -2955.92, 1542.78, -1.83824, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113271, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5395.22, -2979.95, 1550.36, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113272, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5425.3, -2901.3, 1533.08, 3.65599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113273, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5369.32, -2996.85, 1551.52, 5.20108, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113274, 38913, 1, 616, 5625, 1, 1, 31208, 0, 5612.55, -2948.63, 1546.18, 0.837758, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113275, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5459.66, -2935.58, 1542.59, 0.837758, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129380, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5553.35, -2918.2, 1531.78, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129345, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5497.29, -2964.42, 1544.88, 1.6704, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129343, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5351.5, -3010.08, 1553.22, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129292, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5599.29, -2918.95, 1533.55, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129240, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5312.3, -2945.53, 1540.63, 1.91986, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129238, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5383.75, -2948.41, 1544.69, -0.917376, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129236, 38913, 1, 616, 616, 1, 1, 31210, 0, 5296.94, -2935.74, 1539.11, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110726, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5327.49, -3002.33, 1551.07, 2.32925, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(129171, 38913, 1, 616, 616, 1, 1, 31208, 0, 5242.27, -2981.29, 1554.87, 0.137551, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(129168, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5311.45, -2778.43, 1509.83, 3.47321, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(129165, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5510.42, -2832.92, 1513.52, 0.837758, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(129125, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5468.37, -2764.94, 1517.51, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110699, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5356.79, -2845.34, 1523.5, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110695, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5390.65, -2835.78, 1519.75, 2.6702, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110660, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5351.08, -2806.86, 1517.38, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110611, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5363.6, -2774.09, 1516.67, 0.837758, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110592, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5307.18, -2761.8, 1506.85, 5.11381, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(110567, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5300.97, -2798.63, 1515.53, 5.11381, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(110532, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5445.78, -2999.46, 1552.1, 0.353295, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110436, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5485.51, -2874, 1526.57, -1.41291, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110368, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5426.78, -2974.59, 1550.62, -2.60531, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128924, 38913, 1, 616, 5622, 1, 1, 31208, 0, 5432.11, -3032.12, 1557.33, 3.94796, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128920, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5465.78, -2887.89, 1530.71, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128905, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5501.61, -2850.93, 1517.9, 0.837758, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(128900, 38913, 1, 616, 5033, 1, 1, 31208, 0, 5605.78, -2848.67, 1515.15, 2.28725, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128898, 38913, 1, 616, 5033, 1, 1, 31209, 0, 5574.62, -2835.96, 1515.41, 1.44833, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128865, 38913, 1, 616, 5033, 1, 1, 31208, 0, 5550.63, -2743.7, 1496.87, 5.11381, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128862, 38913, 1, 616, 5622, 1, 1, 31211, 0, 5377.23, -3077.21, 1573.97, 5.11381, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128859, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5431.54, -3011.67, 1555.21, -0.57094, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128856, 38913, 1, 616, 5622, 1, 1, 31210, 0, 5591.5, -3024.97, 1556.24, 0.837758, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128768, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5599.83, -3061.32, 1559.7, 0.359411, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128761, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5409.27, -3108.64, 1578.1, 5.11381, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128734, 38913, 1, 616, 5622, 1, 1, 31209, 0, 5440.72, -3125.91, 1576.67, 5.11381, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128723, 38913, 1, 616, 5033, 1, 1, 31211, 0, 5609.26, -2750.87, 1504.2, 4.5204, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128718, 38913, 1, 616, 5033, 1, 1, 31208, 0, 5627.16, -2791.72, 1514.68, 5.11381, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113060, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5387.02, -2952.69, 1545.94, -0.9778, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113061, 38915, 1, 616, 616, 1, 2, 31212, 0, 5242.77, -2939.4, 1550.5, 4.17929, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(113062, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5592.91, -3024.44, 1556.07, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113063, 38915, 1, 616, 5624, 1, 2, 31213, 0, 5211.06, -2988.67, 1562.54, -0.067173, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(113064, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5387.47, -2692.46, 1488.34, 0.520067, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113065, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5588.88, -2908.53, 1529.9, 2.45093, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113066, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5461.06, -2935.06, 1542.19, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113067, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5553.88, -2916.79, 1531.48, 3.19395, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113068, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5420.02, -2904.28, 1534.27, 6.17846, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113069, 38915, 1, 616, 5625, 1, 2, 31213, 0, 5613.96, -2948.11, 1546.46, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113070, 38915, 1, 616, 5625, 1, 2, 31212, 0, 5605.5, -3059.19, 1558.94, 3.50112, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113071, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5470.17, -2767.28, 1517.74, 2.83419, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113072, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5349.78, -2807.61, 1517.25, 6.17846, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113073, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5440.64, -3127.94, 1576.66, 1.41372, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113074, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5307.86, -2763.14, 1507.07, 2.28638, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113075, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5447.19, -2998.94, 1551.66, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113076, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5431.54, -2971.85, 1549.82, -2.61943, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113077, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5434.56, -3029.59, 1556.31, -2.33947, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113078, 38915, 1, 616, 5624, 1, 2, 31212, 0, 5217.94, -2937.66, 1557.26, 4.55531, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113079, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5389.83, -2882.41, 1530.28, 6.17846, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128690, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5357.03, -2712.09, 1494.59, 2.28638, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128680, 38915, 1, 616, 5033, 1, 2, 31213, 0, 5551.31, -2745.05, 1497.11, 2.28638, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128651, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5365.01, -2773.56, 1516.86, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110714, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5584.7, -2902.93, 1528.46, -1.17185, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110281, 38915, 1, 616, 5033, 1, 2, 31213, 0, 5609.94, -2752.22, 1504.65, 3.24631, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110192, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5430.33, -2903.56, 1533.83, 2.71878, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110106, 38915, 1, 616, 5033, 1, 2, 31213, 0, 5609.99, -2837.82, 1515.35, 3.19395, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110046, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5409.12, -3111.22, 1577.87, 1.51276, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(110037, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5387.39, -2834.12, 1519.87, 2.52852, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128565, 38915, 1, 616, 5622, 1, 2, 31213, 0, 5355.48, -2846.09, 1523.78, 6.17846, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128525, 38915, 1, 616, 5622, 1, 2, 31212, 0, 5377.81, -3079.57, 1573.79, 1.8118, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(128513, 38915, 1, 616, 5624, 1, 1, 0, 38915, 5208.5, -2948.65, 1560.53, 0.316031, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(128508, 38915, 1, 616, 5624, 1, 1, 0, 38915, 5208.17, -2965.15, 1561.49, 0.135389, 90, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(128499, 38915, 1, 616, 616, 1, 1, 0, 38915, 5288.33, -2940.42, 1539.14, 0.0509607, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(127927, 38915, 1, 616, 5622, 1, 1, 0, 38915, 5341.26, -3002.14, 1550.14, 5.28586, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(127921, 38915, 1, 616, 5622, 1, 1, 0, 38915, 5384.89, -3017.73, 1556.43, 5.93713, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(127665, 38915, 1, 616, 5622, 1, 1, 0, 38915, 5431.71, -2906.49, 1534.59, 1.55461, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(127643, 38915, 1, 616, 5622, 1, 1, 0, 38915, 5392.77, -2866.16, 1528.45, 3.28248, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0),
(127638, 38915, 1, 616, 5622, 1, 1, 0, 38915, 5318.11, -2884.76, 1530.75, 4.47725, 300, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113234, 40123, 1, 616, 5622, 1, 1, 31769, 0, 5362.53, -2770.9, 1517.54, -0.82005, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113235, 40123, 1, 616, 5033, 1, 1, 31769, 0, 5593.46, -2761.94, 1505.26, 5.48056, 120, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(113236, 40123, 1, 616, 5033, 1, 1, 31769, 0, 5546.23, -2786.32, 1509.16, 3.82565, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113237, 40123, 1, 616, 5033, 1, 1, 31769, 0, 5583.77, -2793.54, 1515.15, 5.40045, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113238, 40123, 1, 616, 5033, 1, 1, 31769, 0, 5568.42, -2829.72, 1515.26, 0.260796, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113530, 40096, 1, 616, 5033, 1, 1, 15561, 0, 5662.06, -2818.45, 1524.38, 2.16421, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112625, 38902, 1, 616, 5622, 1, 65535, 0, 0, 5373.62, -2976.82, 1550.16, 1.52369, 300, 0, 0, 83897, 0, 0, 0, 0, 0, 0),
(112626, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5469.41, -2767.7, 1517.72, -0.176557, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112627, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5355.06, -2806.86, 1517.81, -3.14116, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112628, 38902, 1, 616, 616, 1, 1, 28506, 0, 5262.22, -2786.6, 1523.47, 5.90612, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112629, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5427.88, -3009.27, 1555.05, -0.580243, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112630, 38902, 1, 616, 616, 1, 1, 28506, 0, 5231.72, -2798.52, 1535.99, 4.73758, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112631, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5355.52, -2841.3, 1522.41, -1.26685, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112632, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5469.38, -2821.62, 1517.38, 3.03252, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112633, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5324.64, -2999.63, 1550.31, -0.758834, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112634, 38902, 1, 616, 5622, 1, 1, 28506, 0, 5369.8, -3024.76, 1558.69, -2.34184, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(112635, 38902, 1, 616, 616, 1, 65535, 0, 0, 5170.6, -3004.11, 1577.59, 1.70668, 300, 5, 0, 83897, 0, 1, 0, 0, 0, 0),
(112636, 38902, 1, 616, 616, 1, 65535, 0, 0, 5243.45, -2825.08, 1537.35, 4.56142, 120, 0, 0, 83897, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(127636, 40775, 1, 493, 2361, 1, 1, 31228, 0, 7787.97, -2424.58, 488.152, 6.07375, 90, 0, 0, 30951, 15976, 0, 0, 0, 0, 0),
(127630, 40775, 1, 493, 2361, 1, 1, 31229, 0, 7804.39, -2447.11, 487.474, 1.13446, 90, 0, 0, 30951, 15976, 0, 0, 0, 0, 0),
(110712, 40775, 1, 616, 5622, 1, 1, 31230, 0, 5428.6, -3035.79, 1558.72, 0.806369, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(127615, 40775, 1, 616, 5622, 1, 1, 31230, 0, 5435.95, -3014.5, 1555.4, 2.57065, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(127595, 40775, 1, 616, 5622, 1, 1, 31228, 0, 5495.98, -2967.83, 1545.87, 1.20385, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(127592, 40775, 1, 616, 5622, 1, 1, 31231, 0, 5419.84, -2978.71, 1551.19, 3.6773, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112898, 38896, 1, 616, 5624, 1, 1, 35505, 0, 5170.04, -2989.56, 1576.07, 4.61265, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112899, 38896, 1, 616, 616, 1, 1, 35505, 0, 5260.26, -2792.72, 1524.97, 0.977384, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112900, 38896, 1, 616, 5622, 1, 1, 35505, 0, 5267, -2829.16, 1529.09, -1.6658, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112901, 38896, 1, 616, 616, 1, 1, 35505, 0, 5260.01, -2835.28, 1533.44, -0.079772, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112902, 38896, 1, 616, 5622, 1, 1, 35505, 0, 5368.79, -3018.48, 1556.09, -1.4118, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112903, 38896, 1, 616, 5622, 1, 1, 35505, 0, 5387.08, -2958.36, 1547.69, 1.58132, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112904, 38896, 1, 616, 5623, 1, 1, 35505, 0, 5464.57, -2765.5, 1517, 6.07375, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112905, 38896, 1, 616, 5622, 1, 1, 35505, 0, 5331.21, -2997.64, 1549.95, -2.84787, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112906, 38896, 1, 616, 616, 1, 1, 35505, 0, 5237.96, -2799.46, 1534.13, 2.47837, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(127588, 38896, 1, 616, 5622, 1, 1, 35505, 0, 5361.9, -2807.34, 1518.73, 3.07089, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(127584, 38896, 1, 616, 5622, 1, 1, 35505, 0, 5494.96, -3007.28, 1547.31, 0.342433, 30, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112529, 40150, 1, 616, 5623, 1, 1, 31231, 0, 5401.77, -2811.14, 1516.58, 1.00061, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112530, 40150, 1, 616, 5623, 1, 1, 31231, 0, 5440.25, -2827.65, 1516.57, 2.1293, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112531, 40150, 1, 616, 5623, 1, 1, 31228, 0, 5452.47, -2778.3, 1516.57, 4.03171, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113407, 40149, 1, 616, 5623, 1, 1, 29408, 0, 5426.73, -2802.66, 1516.38, 1.46949, 30, 3, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112467, 40147, 1, 616, 5623, 1, 1, 12129, 0, 5425.43, -2790.46, 1515.73, 5.53943, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112584, 40148, 1, 616, 5623, 1, 1, 29414, 0, 5442.46, -2796.56, 1515.56, -2.72532, 30, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(73589, 49444, 1, 616, 5623, 1, 1, 10089, 0, 5399.15, -2740.19, 1520.31, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112983, 49445, 1, 616, 5623, 1, 1, 36489, 0, 5397.19, -2741.49, 1520.31, 5.72468, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112596, 39869, 1, 616, 5624, 1, 1, 31230, 0, 5191.12, -2952.62, 1560.82, 5.9565, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (39436,39431,39437,39588,39427,39429,39600,39843,39844,39445,39644,39643,39642,39737,39736,39730,39738,39646);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(127577, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5483.24, -2351.26, 1462.17, 5.04375, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(127529, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5545.04, -2560.83, 1479.94, 4.50396, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(127506, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5517.73, -2408.7, 1467.47, 5.30463, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(127498, 39436, 1, 616, 4978, 1, 65535, 0, 0, 5126.27, -2350.27, 1413.82, 5.36566, 40, 0, 0, 30951, 0, 2, 0, 0, 0, 0),
(110014, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5190.34, -2384.48, 1427.76, 6.16113, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(109910, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5551.24, -2469.3, 1475.1, 4.95282, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(109827, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5437.11, -2290.15, 1456.92, 5.716, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(109764, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5359.12, -2288.91, 1440.17, 0.17528, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(127445, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5238.89, -2373.41, 1432.72, 0.350904, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0),
(127427, 39436, 1, 616, 4978, 1, 1, 11553, 0, 5293.29, -2315.83, 1433.29, 0.436206, 40, 0, 0, 1, 1, 2, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(127415, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5125.6, -2343.92, 1412.91, 5.22014, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(127407, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5185.84, -2381.46, 1426.7, 5.85631, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(127397, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5122.63, -2345.51, 1412.84, 5.34057, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(127387, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5120.83, -2347.1, 1412.86, 5.46099, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(127380, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5185.09, -2384.08, 1426.89, 6.14635, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(127373, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5184.33, -2387.07, 1427.12, 0.304737, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(127243, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5234.4, -2372.89, 1432.63, 0.0934434, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126886, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5234.33, -2375.63, 1432.63, 0.640386, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126878, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5236.32, -2377.38, 1432.67, 0.807589, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126872, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5288.67, -2316.49, 1432.97, 0.403928, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126820, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5289.67, -2319.26, 1433.05, 0.810372, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126796, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5289.97, -2322.67, 1433.13, 0.915746, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126751, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5354.06, -2287.93, 1439.44, 0.158055, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126642, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5354.6, -2290.83, 1439.58, 0.609659, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126381, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5354.33, -2294, 1439.62, 0.574621, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(126370, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5434.85, -2285.77, 1456.02, 5.54314, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125521, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5431.56, -2286.16, 1455.11, 5.64851, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125112, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5431.88, -2288.87, 1455.56, 5.88186, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125103, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5484.08, -2345.44, 1461.98, 5.00876, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125094, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5480.97, -2345.17, 1461.86, 5.28976, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125080, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5477.63, -2345.48, 1461.85, 5.40015, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125075, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5516.64, -2402.81, 1467.4, 5.25463, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125071, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5512.73, -2404.19, 1467.02, 5.68114, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125069, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5511.05, -2405.93, 1466.71, 5.73634, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(125054, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5551.2, -2462.78, 1474.6, 4.92847, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(124575, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5548.66, -2463.4, 1474.39, 5.12416, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(123750, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5547.43, -2466.11, 1474.57, 5.54566, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(123747, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5547.01, -2554.62, 1479.88, 4.53708, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(123744, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5545.2, -2554.68, 1479.77, 4.86664, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0),
(123742, 39431, 1, 616, 4978, 1, 65535, 0, 0, 5542.49, -2555, 1479.7, 5.49653, 30, 0, 0, 9940, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113239, 39437, 1, 616, 5033, 1, 1, 2898, 0, 5606.79, -2653.1, 1493.99, 2.5655, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113240, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5568.82, -2431.59, 1478.81, 1.75537, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113241, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5519.83, -2370.32, 1467.39, 5.07893, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113242, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5529.3, -2454.26, 1473.35, 0.809856, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113243, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5545.83, -2330.35, 1491.42, 6.07257, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113244, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5487.22, -2436.53, 1469.49, 4.70823, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113245, 39437, 1, 616, 5033, 1, 1, 2898, 0, 5483.13, -2643.24, 1483.39, 2.2057, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113246, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5491.81, -2305.73, 1464.94, 4.58029, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113247, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5461.42, -2361.91, 1464.78, 3.35814, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113248, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5587.72, -2520.93, 1492.97, 0.052737, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113249, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5595.09, -2468.34, 1487.07, 5.72552, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113250, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5619.22, -2498.93, 1506.09, 1.98723, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123727, 39437, 1, 616, 5622, 1, 1, 2898, 0, 5517.65, -2692.51, 1489.93, 2.23662, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123722, 39437, 1, 616, 5033, 1, 1, 2898, 0, 5561.46, -2648.96, 1491.1, 4.54734, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123719, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5590.62, -2584.83, 1490.05, 0.445024, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123706, 39437, 1, 616, 4978, 1, 1, 2898, 0, 5521.63, -2538.3, 1480.51, 6.2148, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113423, 39588, 1, 616, 5033, 1, 1, 10957, 0, 5508.46, -2643.63, 1485.34, 2.33134, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113424, 39588, 1, 616, 5622, 1, 1, 10957, 0, 5323.57, -2672.61, 1484.69, 6.07375, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113425, 39588, 1, 616, 5033, 1, 1, 10957, 0, 5541.72, -2697.59, 1490.75, 3.21141, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113426, 39588, 1, 616, 4978, 1, 1, 10957, 0, 5531.23, -2506.69, 1479.81, 3.64621, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113427, 39588, 1, 616, 5033, 1, 1, 10957, 0, 5596.02, -2618.96, 1490.62, 1.3439, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113428, 39588, 1, 616, 4978, 1, 1, 10957, 0, 5580.34, -2459.7, 1479.39, 2.94961, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113429, 39588, 1, 616, 4978, 1, 1, 10957, 0, 5427.82, -2416.3, 1468.63, 0.777111, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113430, 39588, 1, 616, 4978, 1, 1, 10957, 0, 5588.93, -2508.59, 1489.25, 4.57229, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113431, 39588, 1, 616, 5622, 1, 1, 10957, 0, 5500.21, -2685.33, 1486.33, 3.3169, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113432, 39588, 1, 616, 4978, 1, 1, 10957, 0, 5543.12, -2397, 1472.75, 2.99058, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113433, 39588, 1, 616, 5622, 1, 1, 10957, 0, 5444.89, -2658.96, 1482.76, 3.01338, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113434, 39588, 1, 616, 5037, 1, 1, 10957, 0, 5358.38, -2656.9, 1480.57, 1.01799, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113435, 39588, 1, 616, 5622, 1, 1, 10957, 0, 5362.09, -2697.08, 1490.3, 0.437379, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113436, 39588, 1, 616, 5033, 1, 1, 10957, 0, 5480.85, -2592.94, 1484.91, 0.27079, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113437, 39588, 1, 616, 4979, 1, 1, 10957, 0, 5315.79, -2122.11, 1269.94, 3.39439, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113438, 39588, 1, 616, 4979, 1, 1, 10957, 0, 5289.92, -2087.03, 1273.14, 4.13495, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0),
(113439, 39588, 1, 616, 4979, 1, 1, 10957, 0, 5339.74, -2072.36, 1284.12, 2.46396, 120, 25, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112621, 39427, 1, 616, 4978, 1, 1, 31449, 0, 5638.74, -2446.97, 1527.12, 2.33874, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113415, 39429, 1, 616, 4978, 1, 1, 31451, 0, 5646.04, -2444.71, 1527.24, 3.26377, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142909, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5551.23, -2469.55, 1475.19, 5.02655, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123649, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5296.32, -2313.46, 1433.64, 0.174533, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123485, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5359.49, -2288.76, 1440.3, 0.174533, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123475, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5518.04, -2408.13, 1467.56, 5.48033, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123440, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5437.49, -2290.5, 1457.1, 5.65487, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123434, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5483.77, -2353.55, 1462.39, 5.06145, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123412, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5239.36, -2372.2, 1432.82, 0.925025, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123406, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5191.04, -2384.33, 1427.94, 0.366519, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123391, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5076.17, -2335.17, 1410.12, 5.58505, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(123385, 39600, 1, 616, 4978, 1, 1, 27823, 0, 5140.46, -2369.94, 1418.57, 5.75959, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113085, 39843, 1, 616, 4978, 1, 1, 31585, 0, 5147.35, -2397.74, 1426.13, -2.28633, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113086, 39843, 1, 616, 4978, 1, 1, 31584, 0, 5155.39, -2397.02, 1425.82, -3.02582, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113087, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5080.46, -2332, 1409.09, 0.245385, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113088, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5067.1, -2130.66, 1376.35, 1.74533, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113089, 39843, 1, 616, 4978, 1, 1, 31585, 0, 5122.31, -2391.51, 1424.52, 5.84204, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113090, 39843, 1, 616, 616, 1, 1, 31584, 0, 5143.75, -2413.39, 1429.33, 3.94463, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113091, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5093.51, -2176.32, 1381.98, 4.4103, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113092, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5046.82, -2064.08, 1368.01, 0.147067, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113093, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5034.38, -2129.98, 1377.46, 4.11898, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113094, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5064.63, -2113.35, 1373.26, 4.15202, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113095, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5056.22, -2246.01, 1399.25, 6.24335, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123383, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5054.42, -2271.6, 1403.29, 3.12304, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123379, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5060.02, -2053.51, 1368.47, -0.287956, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123374, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5083.15, -2069, 1368.87, 1.11701, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123367, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5124.84, -2002.25, 1369.29, 5.11381, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123362, 39843, 1, 616, 616, 1, 1, 31584, 0, 5192.81, -1994.3, 1365.65, 0.854209, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123356, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5098.79, -2279.06, 1396.82, 5.55799, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123354, 39843, 1, 616, 4978, 1, 1, 31584, 0, 5071.86, -2333.88, 1410.77, 3.42903, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123351, 39843, 1, 616, 4999, 1, 1, 31585, 0, 5104.27, -2263.1, 1393.15, 4.60767, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123347, 39843, 1, 616, 4978, 1, 1, 31584, 0, 5100.08, -2321.7, 1406.75, 5.5676, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123345, 39843, 1, 616, 4999, 1, 1, 31584, 0, 5043.09, -2286.27, 1403.29, 3.19063, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123343, 39843, 1, 616, 616, 1, 1, 31584, 0, 5213.4, -1968.07, 1365.57, 1.11919, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(123339, 39843, 1, 616, 616, 1, 1, 31585, 0, 5270.55, -1901.39, 1351.12, 1.0472, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112552, 39844, 1, 616, 616, 1, 1, 35172, 0, 5129.76, -2418.44, 1430.41, 6.21149, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112553, 39844, 1, 616, 616, 1, 1, 35172, 0, 5135.95, -2425.67, 1433, 5.38713, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112554, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5082.36, -2199.45, 1386.31, 1.27466, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112555, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5058.95, -2090.42, 1371.01, 2.36811, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112556, 39844, 1, 616, 4978, 1, 1, 35172, 0, 5089.93, -2388.81, 1425.64, 2.66939, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112557, 39844, 1, 616, 4978, 1, 1, 35172, 0, 5093.47, -2374.54, 1419.44, 1.74881, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112558, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5032.39, -2159.31, 1387.06, 5.75959, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112559, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5047.15, -2120.81, 1376.19, 6.24332, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112560, 39844, 1, 616, 4999, 1, 1, 35172, 0, 4961.2, -1998.56, 1392.5, 3.40541, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112561, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5070.22, -2087.93, 1370.4, 3.08664, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112562, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5099.89, -2053.5, 1367.4, 5.92407, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112563, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5004.72, -2277.17, 1421.58, 4.16513, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112564, 39844, 1, 616, 616, 1, 1, 35172, 0, 5128.08, -2427.91, 1432.99, 3.75565, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112565, 39844, 1, 616, 4999, 1, 1, 35172, 0, 5070.17, -2302.66, 1403.48, 2.98636, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112566, 39844, 1, 616, 616, 1, 1, 35172, 0, 5289.13, -1883.1, 1351.77, 4.29351, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112567, 39844, 1, 616, 616, 1, 1, 35172, 0, 5121.88, -1929.7, 1368.91, 6.02644, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112503, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5316.44, -2049.64, 1284.75, 4.42512, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112504, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5320.71, -1972.14, 1315.54, 2.88051, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112505, 39445, 1, 616, 4979, 1, 2, 31462, 0, 5354.31, -2182.73, 1282.93, 2.93949, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112506, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5346.68, -2195.84, 1279.8, 1.18168, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112507, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5235.41, -2228.05, 1264.35, 4.65595, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112508, 39445, 1, 616, 4979, 1, 2, 31462, 0, 5362.95, -2204.01, 1292.76, 3.76762, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112509, 39445, 1, 616, 4979, 1, 2, 31462, 0, 5371.86, -2155.88, 1289.15, 4.17203, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112510, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5316.14, -2142.08, 1267.82, 1.89081, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112511, 39445, 1, 616, 4979, 1, 2, 31462, 0, 5294.19, -2190.19, 1257.52, 3.82622, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112512, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5256.1, -2219.25, 1261.98, 3.51892, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112513, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5275.5, -2120.82, 1269.47, 2.73389, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112514, 39445, 1, 616, 4979, 1, 2, 31462, 0, 5266.4, -2169.04, 1260.77, 4.59849, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112515, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5291.79, -2102.04, 1268.47, 3.20023, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112516, 39445, 1, 616, 4979, 1, 2, 31461, 0, 5276.45, -2077.73, 1269.82, 2.32787, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112517, 39445, 1, 616, 4979, 1, 2, 31462, 0, 5388.48, -2140.07, 1309.9, 5.68477, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(502744, 39644, 1, 616, 4988, 1, 3, 0, 0, 5157.43, -2072.13, 1278.98, 4.75787, 120, 0, 0, 10635, 0, 0, 0, 0, 0, 0),
(502743, 39644, 1, 616, 4988, 1, 3, 0, 0, 5120.78, -2089.35, 1277.78, 3.53696, 120, 0, 0, 10282, 0, 0, 0, 0, 0, 0),
(502742, 39644, 1, 616, 4988, 1, 3, 0, 0, 5125.21, -2103.47, 1278.47, 6.21517, 120, 0, 0, 10635, 0, 0, 0, 0, 0, 0),
(502741, 39644, 1, 616, 4988, 1, 3, 0, 0, 5104.37, -2115.37, 1276.98, 4.35378, 120, 0, 0, 10282, 0, 0, 0, 0, 0, 0),
(502740, 39644, 1, 616, 4988, 1, 3, 0, 0, 5101.23, -2090.77, 1276.15, 1.22396, 120, 0, 0, 10282, 0, 0, 0, 0, 0, 0),
(502739, 39644, 1, 616, 4988, 1, 3, 0, 0, 5081.03, -2077.37, 1276.13, 5.01352, 120, 0, 0, 10635, 0, 0, 0, 0, 0, 0),
(502738, 39644, 1, 616, 4988, 1, 3, 0, 0, 5069.77, -2064.66, 1273.45, 3.66656, 120, 0, 0, 10282, 0, 0, 0, 0, 0, 0),
(502747, 39644, 1, 616, 4988, 1, 3, 0, 0, 5034.37, -2038.83, 1269.61, 2.92042, 120, 0, 0, 10282, 0, 0, 0, 0, 0, 0),
(502746, 39644, 1, 616, 4988, 1, 3, 0, 0, 5061.32, -2052.79, 1271.21, 3.83148, 120, 0, 0, 10635, 0, 0, 0, 0, 0, 0),
(502745, 39644, 1, 616, 4988, 1, 3, 0, 0, 5080.12, -2051.82, 1271.86, 4.11212, 120, 0, 0, 10282, 0, 0, 0, 0, 0, 0),
(502748, 39644, 1, 616, 4988, 1, 3, 0, 0, 5170.65, -2117.14, 1277.88, 2.88848, 600, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(502749, 39644, 1, 616, 4988, 1, 3, 0, 0, 5159.73, -2140.82, 1277.84, 3.0754, 600, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(502750, 39644, 1, 616, 4988, 1, 3, 0, 0, 5165.69, -2153.13, 1277.84, 4.33989, 600, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(502751, 39644, 1, 616, 4988, 1, 3, 0, 0, 5206.48, -2075.23, 1281.33, 2.05438, 600, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(502752, 39644, 1, 616, 4988, 1, 3, 0, 0, 5218.32, -2071.91, 1270.6, 3.12488, 600, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(502753, 39644, 1, 616, 4979, 1, 3, 0, 0, 5244.81, -2067.43, 1266.97, 0.466305, 600, 0, 0, 42, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112918, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5125.1, -2055.39, 1272.95, 3.735, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112919, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5110.73, -2022.68, 1271.72, 0.517321, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112920, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5073.44, -2047.63, 1272.28, 0.476529, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112921, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5102.97, -2108.59, 1276.69, 0.541052, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112922, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5059.31, -2095.39, 1278.72, 4.26762, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112923, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5145.27, -2071.1, 1276.8, 0.356347, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112924, 39643, 1, 616, 4988, 1, 1, 31524, 0, 5198.78, -2073.68, 1281.33, 0.51029, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112907, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5037.36, -2030.11, 1268.34, 5.70723, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112908, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5090.95, -2086.65, 1276, 5.37165, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112909, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5125.32, -2083.8, 1277.09, -2.56957, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112910, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5174.53, -2098.95, 1280.44, 1.62084, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112911, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5165.5, -2122.06, 1277.84, 2.35283, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112912, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5219.84, -2108.35, 1268.13, 5.59987, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112913, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5177.65, -2153.81, 1277.95, 4.96368, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112914, 39642, 1, 616, 4979, 1, 3, 31523, 0, 5201, -2149.15, 1267.48, 2.32582, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112915, 39642, 1, 616, 4988, 1, 3, 31523, 0, 5162.73, -2183.27, 1279.79, 5.14872, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112916, 39642, 1, 616, 4980, 1, 3, 31523, 0, 5184.25, -2207.97, 1268.64, 5.22224, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(486846, 39737, 1, 616, 4988, 1, 1, 31559, 0, 5016.44, -2019.88, 1271.36, 1.02974, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(486847, 39736, 1, 616, 4988, 1, 1, 31558, 0, 5011.44, -2024.57, 1271.8, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(486845, 39730, 1, 616, 4988, 1, 1, 31556, 0, 5012.01, -2031.46, 1270.97, 1.02974, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(486848, 39738, 1, 616, 4988, 1, 1, 31560, 0, 5017.85, -2031.23, 1270.7, 1.64061, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112585, 39646, 1, 616, 4988, 1, 1, 25192, 0, 5102.31, -2051.74, 1275.32, 2.15648, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (39434,43547,39637,39433,43548,40066,39931,39929,52838,39930,53779,39928,41860,53780,43381,43380,39927,39941);


INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113003, 39434, 1, 616, 4979, 1, 2, 0, 0, 5302.76, -2213.68, 1263.7, 1.36136, 120, 0, 0, 75600, 0, 0, 0, 0, 0, 0),
(123335, 39434, 1, 616, 4979, 1, 1, 0, 0, 5352.19, -2125.77, 1280.52, 4.67365, 120, 0, 0, 75600, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112732, 43547, 1, 616, 4979, 1, 2, 0, 43547, 5302.53, -2215.02, 1263.59, 6.12611, 120, 0, 0, 27966, 31904072, 0, 0, 0, 0, 0),
(123331, 43547, 1, 616, 4979, 1, 1, 33405, 0, 5351.92, -2108.88, 1280.6, 3.05433, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112654, 39637, 1, 616, 4979, 1, 1, 0, 0, 5353.49, -2151.32, 1280.3, 4.6908, 120, 0, 0, 223395, 0, 0, 0, 0, 0, 0),
(112655, 39637, 1, 616, 4979, 1, 1, 31517, 0, 5306.76, -2206.84, 1263.78, 3.14159, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112656, 39637, 1, 616, 4979, 1, 1, 31516, 0, 5338.96, -2116.51, 1280.63, 2.18842, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112657, 39637, 1, 616, 4979, 1, 1, 31516, 0, 5339.74, -2103.36, 1280.61, 1.79769, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112658, 39637, 1, 616, 4979, 1, 1, 31518, 0, 5350.69, -2098.4, 1280.66, 1.90241, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112659, 39637, 1, 616, 5064, 1, 1, 31519, 0, 5023.47, -2059.54, 1148.98, 4.50338, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(123315, 39637, 1, 616, 4979, 1, 1, 0, 0, 5343.63, -2149.67, 1280.34, 4.52726, 120, 0, 0, 223395, 0, 0, 0, 0, 0, 0),
(123307, 39637, 1, 616, 4979, 1, 1, 0, 0, 5344.45, -2101.84, 1280.52, 1.6671, 120, 0, 0, 223395, 0, 0, 0, 0, 0, 0),
(123293, 39637, 1, 616, 5064, 1, 1, 0, 39637, 5009.77, -2060.17, 1148.98, 4.98177, 300, 0, 0, 223395, 0, 0, 0, 0, 0, 0),
(121383, 39637, 1, 616, 5064, 1, 1, 0, 39637, 5027.83, -2022.76, 1148.98, 4.44818, 300, 0, 0, 223395, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5222291, 39433, 1, 616, 4979, 1, 1, 0, 0, 5353.76, -2127.87, 1280.52, 3.48354, 300, 0, 0, 75600, 0, 0, 0, 0, 0, 0),
(5222290, 39433, 1, 616, 4979, 1, 2, 0, 0, 5309.59, -2207.87, 1263.78, 2.28638, 120, 0, 0, 75600, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112471, 43548, 1, 616, 4979, 1, 1, 33406, 0, 5355.78, -2133.64, 1280.6, 2.98451, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113005, 40066, 1, 616, 5013, 1, 1, 0, 0, 4964.13, -1836.58, 1321.95, 0.0692485, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(113006, 40066, 1, 616, 5013, 1, 1, 0, 0, 4964.68, -1844.49, 1321.79, 0.969248, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(113007, 40066, 1, 616, 5022, 1, 1, 0, 0, 5011.55, -1820.55, 1323.34, 3.25685, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113008, 40066, 1, 616, 5022, 1, 1, 0, 0, 5017.58, -1819.86, 1323.82, 3.25685, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113009, 40066, 1, 616, 5022, 1, 1, 0, 0, 5023.28, -1815.82, 1324.22, 3.77522, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113010, 40066, 1, 616, 5022, 1, 1, 0, 0, 5028.92, -1811.68, 1324.39, 3.77522, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113011, 40066, 1, 616, 5022, 1, 1, 0, 0, 5035.37, -1803.17, 1323.45, 4.37212, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113012, 40066, 1, 616, 5022, 1, 1, 0, 0, 5030.9, -1796.13, 1322.34, 0.327315, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113013, 40066, 1, 616, 5022, 1, 1, 0, 0, 5035.45, -1817.04, 1324.8, 2.4636, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113014, 40066, 1, 616, 5022, 1, 1, 0, 0, 5042.88, -1818.83, 1324.39, 3.02909, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113015, 40066, 1, 616, 5022, 1, 1, 0, 0, 5030.77, -1824.42, 1324.28, 5.73085, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113016, 40066, 1, 616, 5022, 1, 1, 0, 0, 5027.98, -1822.7, 1324.39, 5.73085, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113017, 40066, 1, 616, 5022, 1, 1, 0, 0, 5016.07, -1815.33, 1323.44, 5.69551, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113018, 40066, 1, 616, 5022, 1, 1, 0, 0, 5012.4, -1807.87, 1322.7, 5.00044, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113019, 40066, 1, 616, 5022, 1, 1, 0, 0, 5002.03, -1819.87, 1322.58, 0.896728, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113020, 40066, 1, 616, 5022, 1, 1, 0, 0, 5004, -1825.39, 1323.27, 2.51072, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113021, 40066, 1, 616, 5022, 1, 1, 0, 0, 5017.7, -1822.79, 1323.94, 3.31183, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113022, 40066, 1, 616, 5022, 1, 1, 0, 0, 5016.87, -1830.2, 1323.82, 5.46775, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113023, 40066, 1, 616, 5022, 1, 1, 0, 0, 5005.03, -1835.01, 1323.55, 1.90204, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113024, 40066, 1, 616, 5022, 1, 1, 0, 0, 5001.53, -1836.67, 1323.65, 6.22565, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113025, 40066, 1, 616, 5013, 1, 1, 0, 0, 4994.46, -1832.1, 1323.58, 5.16929, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113026, 40066, 1, 616, 5013, 1, 1, 0, 0, 4987.75, -1832.83, 1322.53, 1.27765, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113027, 40066, 1, 616, 5013, 1, 1, 0, 0, 4983.35, -1840.66, 1322.73, 0.119184, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113028, 40066, 1, 616, 5013, 1, 1, 0, 0, 4971.56, -1838.44, 1322.22, 5.53058, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113029, 40066, 1, 616, 5013, 1, 1, 0, 0, 4974.35, -1829.73, 1321.95, 3.51603, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113030, 40066, 1, 616, 5013, 1, 1, 0, 0, 4980.36, -1826.88, 1321.55, 4.4271, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113031, 40066, 1, 616, 5013, 1, 1, 0, 0, 4982.42, -1813.48, 1320.96, 3.71631, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113032, 40066, 1, 616, 5013, 1, 1, 0, 0, 4991.23, -1807.77, 1321.45, 3.71631, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113034, 40066, 1, 616, 5022, 1, 1, 0, 0, 5000.2, -1783.92, 1324.65, 6.0725, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(113033, 40066, 1, 616, 5022, 1, 1, 0, 0, 4990.48, -1790.5, 1321.66, 2.27903, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(121207, 40066, 1, 616, 5022, 1, 1, 0, 0, 4997.63, -1798.46, 1321.61, 3.0605, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(121162, 40066, 1, 616, 5022, 1, 1, 0, 0, 5002.68, -1793.58, 1322.18, 3.26863, 600, 10, 0, 8, 0, 1, 0, 0, 0, 0),
(121160, 40066, 1, 616, 5013, 1, 1, 0, 0, 4954.37, -1870.63, 1325, 2.14375, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(121156, 40066, 1, 616, 5013, 1, 1, 0, 0, 4953.84, -1861.03, 1324.62, 0.118748, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(121138, 40066, 1, 616, 5013, 1, 1, 0, 0, 4962.41, -1859.72, 1324.12, 0.847748, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119819, 40066, 1, 616, 5013, 1, 1, 0, 0, 4960.17, -1869.07, 1325, 0.847748, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119769, 40066, 1, 616, 5013, 1, 1, 0, 0, 4960.87, -1878.28, 1325.01, 2.14375, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119761, 40066, 1, 616, 5013, 1, 1, 0, 0, 4947.47, -1848.66, 1321, 5.79781, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119743, 40066, 1, 616, 5013, 1, 1, 0, 0, 4952.44, -1845.59, 1321.76, 1.98512, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119685, 40066, 1, 616, 5013, 1, 1, 0, 0, 4953.22, -1854.98, 1322.89, 5.79781, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119561, 40066, 1, 616, 5013, 1, 1, 0, 0, 4969.99, -1860.64, 1324.62, 2.14375, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119542, 40066, 1, 616, 5013, 1, 1, 0, 0, 4958.48, -1840.91, 1321.79, 5.58743, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119526, 40066, 1, 616, 5013, 1, 1, 0, 0, 4967.3, -1876.61, 1325.11, 2.14375, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119483, 40066, 1, 616, 5013, 1, 1, 0, 0, 4970.17, -1869.33, 1325.39, 2.14375, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119469, 40066, 1, 616, 5013, 1, 1, 0, 0, 4960.42, -1849, 1322.33, 1.98512, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0),
(119450, 40066, 1, 616, 5013, 1, 1, 0, 0, 4965.35, -1851.07, 1322.74, 0.847748, 300, 0, 0, 10080, 22008, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(131799, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5072.05, -1729.49, 1328.8, 2.9962, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(131804, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5123.82, -1768.52, 1334.45, 6.22398, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(131809, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5162.27, -1711.75, 1343.36, 3.24232, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(131811, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5071.73, -1742.61, 1327.25, 4.83862, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(131815, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5107.42, -1770.83, 1333.57, 6.02645, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113422, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5141.94, -1792.21, 1337.74, 1.44862, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113421, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5089.71, -1759.66, 1332.76, 3.33358, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113420, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5092.98, -1777.64, 1333.08, 3.14159, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113419, 39931, 1, 616, 4989, 1, 3, 13672, 0, 5204.4, -1742.75, 1341.97, 3.70573, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112473, 39929, 1, 616, 4989, 1, 3, 25082, 0, 5136.56, -1772.68, 1336.42, 2.87979, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141279, 52838, 1, 616, 5019, 1, 4, 0, 0, 4423.49, -2081.86, 1210.66, 5.63277, 120, 0, 0, 17178348, 473500, 0, 0, 0, 0, 0),
(141252, 52838, 1, 616, 4989, 1, 6, 31605, 0, 5125.25, -1758.53, 1334.55, 3.42085, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141239, 52838, 1, 616, 5781, 1, 6, 31605, 0, 4653, -2078.98, 1231.42, 3.44762, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(119422, 52838, 1, 616, 5019, 1, 2, 0, 0, 4417.22, -2080.25, 1210.32, 5.68977, 120, 0, 0, 17178348, 473500, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112733, 39930, 1, 616, 4989, 1, 3, 25082, 0, 5123.13, -1745.4, 1334.41, 5.5676, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141277, 53779, 1, 616, 4989, 1, 1, 33335, 0, 5140.66, -1721.69, 1336.1, 4.66003, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112734, 39928, 1, 616, 4989, 1, 3, 31626, 0, 5148, -1737.05, 1337.01, 4.11898, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113528, 41860, 1, 616, 4989, 1, 3, 32611, 0, 5165.92, -1761.19, 1338.95, 2.94961, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141278, 53780, 1, 616, 4989, 1, 1, 33336, 0, 5170.25, -1752.89, 1338.66, 2.77507, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113411, 43381, 1, 616, 4989, 1, 3, 33338, 0, 5184, -1717.68, 1340.04, 2.6529, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112622, 43380, 1, 616, 4989, 1, 1, 33337, 0, 5180.91, -1716.01, 1340.04, 5.75959, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112699, 39927, 1, 616, 5022, 1, 3, 31625, 0, 5036.9, -1735.09, 1322.75, 1.62316, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(136976, 39941, 1, 616, 5022, 1, 1, 1923, 0, 5029.48, -1676.57, 1325.17, 1.60496, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(136975, 39941, 1, 616, 4861, 1, 1, 1923, 0, 5078.63, -1597.55, 1338.93, 3.9521, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(136974, 39941, 1, 616, 4861, 1, 1, 1923, 0, 4947.78, -1622.94, 1327.48, 3.92537, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(136973, 39941, 1, 616, 5022, 1, 1, 1923, 0, 5068.04, -1619.79, 1336.44, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(136972, 39941, 1, 616, 5022, 1, 1, 1923, 0, 5030.33, -1664.05, 1326.32, 1.63186, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(136971, 39941, 1, 616, 5022, 1, 1, 1923, 0, 4969.04, -1605.11, 1327.87, 0.90794, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112624, 39941, 1, 616, 4861, 1, 1, 1923, 0, 5009.15, -1598.08, 1328.47, -2.03225, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (39974,39432,39435,39939,52795,53014,40819,39932,52688,52219,40336,52557,40333,52899,52547,52906,53493,52898,52897);


-- inicio ---------------------------
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(119396, 52557, 1, 616, 5019, 1, 4, 0, 0, 4466.57, -2102.93, 1199.84, 0.753097, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(119384, 52557, 1, 616, 5019, 1, 4, 0, 0, 4443.89, -2098.08, 1205.17, 4.52065, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(119329, 52557, 1, 616, 5019, 1, 4, 0, 0, 4450.11, -2066.06, 1207.21, 1.79689, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(119250, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4502.73, -2025.7, 1203.83, 4.39533, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119203, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4469.83, -2041.48, 1207.47, 2.32129, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119198, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4475.78, -2102.63, 1198.25, 2.87979, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119182, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4448.06, -2034.27, 1211.24, 4.62512, 90, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119174, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4458.08, -2123.72, 1196.27, 2.47837, 90, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119103, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4437.75, -2025.37, 1212.08, 4.90438, 90, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119065, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4465.94, -2114.9, 1199.41, 2.51327, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119036, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4466.38, -2074.34, 1206.47, 2.28638, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119028, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4418.2, -2110.63, 1204.59, 2.94961, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119022, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4427.38, -2083.88, 1209.94, 2.77093, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(119012, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4487.1, -2065.95, 1205.81, 2.94961, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(118983, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4404.57, -2034.52, 1214.04, 4.90438, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(118933, 52557, 1, 616, 5019, 1, 4, 35371, 0, 4476.6, -2077.82, 1205.94, 4.78525, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(118904, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4530.6, -2392.62, 1132.7, 0.506145, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(118885, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4631.85, -2714.91, 1147.52, 2.79253, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(118866, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4580.3, -2721.58, 1155.44, 0.942478, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(118848, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4616.75, -2725.18, 1151.7, 2.09439, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(117396, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4635.48, -2696.44, 1144.47, 3.19395, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(117340, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4560.58, -2385.03, 1135.13, 1.17449, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(117326, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4575.23, -2667.91, 1133.07, 5.3058, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(117200, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4551.96, -2698.25, 1133.22, 0.0698132, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(117168, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4594.15, -2660.77, 1132.94, 4.74729, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(117128, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4559.63, -2713.56, 1146.1, 0.590303, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(117080, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4596.16, -2728.38, 1149.7, 1.50098, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(116992, 52557, 1, 616, 4861, 1, 4, 35371, 0, 4613.12, -2697.36, 1141.37, 3.18263, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(116929, 52557, 1, 616, 5019, 1, 4, 0, 0, 4422.49, -2074.74, 1210.32, 1.22928, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(116883, 52557, 1, 616, 5019, 1, 4, 0, 0, 4420.71, -2084.41, 1210.66, 1.86938, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(116815, 52557, 1, 616, 5019, 1, 4, 0, 0, 4415.18, -2111.64, 1204.18, 2.93101, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(116797, 52557, 1, 616, 5019, 1, 4, 0, 0, 4407.17, -2109.93, 1204.37, 2.93101, 90, 0, 0, 77490, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry=52557;

DELETE FROM `creature_template` WHERE `entry`=52557;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (52557, 0, 0, 0, 0, 0, 35371, 0, 0, 0, 'Raging Invader', '', '', 0, 85, 85, 3, 0, 16, 16, 0, 1, 1.14286, 1, 1, 1, 0, 392, 421, 0, 544, 5, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 392, 421, 544, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `smart_scripts` WHERE `entryorguid`=52557 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52557, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 52907, 20, 0, 0, 0, 0, 0, ''),
(52557, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 52906, 20, 0, 0, 0, 0, 0, ''),
(52557, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 52903, 20, 0, 0, 0, 0, 0, ''),
(52557, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 52907, 40, 0, 0, 0, 0, 0, ''),
(52557, 0, 4, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 52906, 40, 0, 0, 0, 0, 0, ''),
(52557, 0, 5, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 52903, 40, 0, 0, 0, 0, 0, ''),
(52557, 0, 6, 0, 0, 0, 100, 0, 1000, 5000, 15000, 30000, 11, 55745, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52557, 0, 7, 0, 1, 0, 100, 0, 1000, 5000, 15000, 30000, 49, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, '');

-- Fin ------------------------------

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113097, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5023.79, -1527.11, 1335.32, 2.68682, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113098, 39974, 1, 616, 4861, 1, 1, 31675, 0, 4892.78, -1618.95, 1319.33, 0.471586, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113099, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5107.79, -1441.2, 1345.31, 3.54309, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113100, 39974, 1, 616, 4861, 1, 1, 31675, 0, 4976.2, -1527.4, 1329.23, 5.59323, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113101, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5179.62, -1340.09, 1360.03, 3.65837, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113102, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5025.69, -1433.73, 1334.86, 2.19543, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113103, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5013.98, -1419.97, 1334.83, 5.898, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131778, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5162.44, -1341.05, 1358.75, 5.83637, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113096, 39974, 1, 616, 4861, 1, 1, 31675, 0, 4910.98, -1545.9, 1334.24, 1.60993, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131781, 39974, 1, 616, 4861, 1, 1, 31675, 0, 4871.1, -1635.49, 1314.67, 1.50645, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131783, 39974, 1, 616, 4861, 1, 1, 31675, 0, 4921.31, -1534.49, 1334.07, 3.28087, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131786, 39974, 1, 616, 4861, 1, 1, 31675, 0, 4904.5, -1529.8, 1334.86, 5.53474, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131789, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5110, -1370.24, 1349.86, 2.54655, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113105, 39974, 1, 616, 4861, 1, 1, 31675, 0, 5103.55, -1451.26, 1344.76, 5.76331, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131792, 39974, 1, 616, 4861, 1, 65535, 0, 39974, 5018.96, -1418.64, 1335.1, 5.12807, 120, 0, 0, 24761, 17628, 0, 0, 0, 0, 0),
(113104, 39974, 1, 616, 4861, 1, 65535, 0, 39974, 5013.21, -1425.28, 1334.61, 6.0664, 120, 0, 0, 24761, 17628, 0, 0, 0, 0, 0),
(131576, 39974, 1, 616, 4861, 1, 65535, 0, 39974, 5174.14, -1355.59, 1359.06, 1.84131, 120, 0, 0, 24761, 17628, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5222292, 39432, 1, 616, 4979, 1, 2, 0, 0, 5297.53, -2209.84, 1263.78, 1.32645, 120, 0, 0, 91231, 0, 0, 0, 0, 0, 0),
(5222293, 39432, 1, 616, 4979, 1, 1, 0, 0, 5350.14, -2137.1, 1280.52, 1.67713, 120, 0, 0, 91231, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113002, 39435, 1, 616, 4979, 1, 2, 0, 0, 5301.19, -2215.24, 1263.79, 3.42085, 120, 0, 0, 75600, 0, 0, 0, 0, 0, 0),
(119417, 39435, 1, 616, 4979, 1, 1, 0, 0, 5341.89, -2144.04, 1280.52, 0.768907, 120, 0, 0, 75600, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(69698, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5006.45, -1547.23, 1331.64, 2.06248, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(69704, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5056.25, -1502.08, 1338.13, 4.45866, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112502, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4962.47, -1611.47, 1326.99, 3.03601, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112501, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5139.24, -1472.04, 1345.51, 4.51203, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112500, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5040.92, -1524.87, 1337.44, 4.60539, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112499, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5031.09, -1565.56, 1332.5, 2.09216, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112498, 39939, 1, 616, 5018, 1, 1, 25680, 0, 4815.1, -1601.47, 1304.19, 4.03989, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112497, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5043.59, -1405.88, 1338.63, 0.8382, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112496, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5172.85, -1461.65, 1348.55, 6.22918, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112495, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5144.29, -1377.98, 1353.57, 1.61573, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112494, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5176.83, -1433.35, 1353.3, 1.51059, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112493, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5208.59, -1403.24, 1358.89, 4.27727, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112492, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5090.66, -1432.24, 1341.7, 4.18202, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112491, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5010.21, -1497.49, 1329.87, 6.15341, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112490, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4944.44, -1470.41, 1329.55, 1.56732, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112489, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4941.79, -1542.19, 1333.33, 4.18195, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112488, 39939, 1, 616, 5022, 1, 1, 25680, 0, 4971.5, -1601.96, 1328.12, 5.73922, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112487, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4970.02, -1566.69, 1328.2, 1.84703, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112486, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5037.38, -1463.72, 1335.61, 0.866784, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112485, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5110.92, -1300.37, 1360.91, 1.25522, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112484, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4973.36, -1425.99, 1351.16, 0.33626, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112483, 39939, 1, 616, 4861, 1, 1, 25680, 0, 5197.78, -1300.67, 1368.27, 6.11836, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112482, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4879.98, -1536.88, 1339.91, 0.517613, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(83423, 39939, 1, 616, 4861, 1, 1, 25680, 0, 4912.85, -1510.02, 1334.21, 2.32691, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141437, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5113.35, -1440.47, 1343.99, 5.63773, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141438, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5183.19, -1322.42, 1361.57, 4.30557, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141454, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5017.1, -1398.84, 1336.44, 5.74213, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141455, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5010.86, -1414.49, 1335.05, 2.25148, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141456, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5006.12, -1408.67, 1335.56, 5.34071, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141457, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5033.25, -1402.43, 1337.37, 3.85963, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141490, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5027.65, -1407.2, 1336.9, 3.7063, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141542, 52795, 1, 616, 5016, 1, 6, 12168, 0, 5272.9, -1492.06, 1366.35, 3.55907, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141545, 52795, 1, 616, 4861, 1, 6, 12168, 0, 4967.97, -1596.9, 1326.72, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141547, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5022.37, -1536.9, 1334.08, 5.74213, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141571, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5111.75, -1469.59, 1344.39, 3.33358, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141572, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5104.4, -1471.06, 1344.58, 0.139626, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141573, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5126.17, -1450.12, 1345.94, 1.55941, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141574, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5105.82, -1485.92, 1345.07, 5.74213, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141575, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5183.74, -1401.79, 1356.01, 4.99088, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141578, 52795, 1, 616, 5016, 1, 6, 12168, 0, 5231.29, -1487.79, 1356.41, 2.70005, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141704, 52795, 1, 616, 5016, 1, 6, 12168, 0, 5284.1, -1474.06, 1365.41, 0.314159, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141729, 52795, 1, 616, 5016, 1, 6, 12168, 0, 5275.86, -1536.73, 1366.26, 5.74213, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141738, 52795, 1, 616, 5016, 1, 6, 12168, 0, 5223.11, -1495.45, 1354.34, 1.37881, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141747, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5077.11, -1590.54, 1338.58, 3.90954, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141748, 52795, 1, 616, 5022, 1, 6, 12168, 0, 5057.37, -1600.41, 1336.03, 2.25148, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141755, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5052.63, -1594.59, 1335.39, 5.34071, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141756, 52795, 1, 616, 4861, 1, 6, 12168, 0, 5068.28, -1589.04, 1337.55, 2.37365, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141763, 52795, 1, 616, 5022, 1, 6, 12168, 0, 4962.27, -1647.61, 1341.28, 3.71755, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141781, 52795, 1, 616, 5022, 1, 6, 12168, 0, 4956, -1651.73, 1341.6, 0.523599, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5222295, 53014, 1, 616, 5015, 1, 2, 0, 0, 5238.62, -1211.6, 1376.94, 4.18704, 60, 0, 0, 774900, 89080, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137012, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5299.55, -1509.39, 1381.9, 2.87064, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137013, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5313.29, -1438.47, 1382.39, 4.84375, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137014, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5287.65, -1511.62, 1371.8, 1.63306, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137015, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5293.94, -1472.31, 1368.02, 3.44258, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137016, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5240.84, -1547.06, 1369.55, 1.50338, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137017, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5277.09, -1548.33, 1370.02, 2.41349, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137018, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5261.84, -1429.58, 1365.59, 1.04244, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137019, 40819, 1, 616, 5016, 1, 1, 1990, 0, 5208.33, -1524.25, 1365.28, 2.85042, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113418, 39932, 1, 616, 5016, 1, 1, 7618, 0, 5267.79, -1508.81, 1366.29, 2.98451, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141401, 52688, 1, 616, 5016, 1, 1, 36863, 0, 5298.54, -1482.75, 1377, 2.67035, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141345, 52219, 1, 616, 5019, 1, 6, 38494, 0, 4485.96, -1977.69, 1215.33, 3.29867, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141361, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4487.03, -1960.73, 1219.3, 1.46608, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141362, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4511.22, -1939.83, 1223.69, 3.34416, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141363, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4497.03, -1908.18, 1229.63, 2.49582, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141364, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4458.08, -1923.72, 1235.92, 6.16101, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141365, 52219, 1, 616, 5019, 1, 6, 38494, 0, 4482.65, -1985.37, 1213.85, 5.46998, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141366, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4481.6, -1908.97, 1232.79, 0.575959, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141467, 52219, 1, 616, 4861, 1, 6, 38494, 0, 4895.15, -1636.01, 1319.48, 4.13643, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141501, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4815.12, -1587.16, 1308.44, 1.20428, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141504, 52219, 1, 616, 4861, 1, 6, 38494, 0, 4847.87, -1588.12, 1313.56, 2.21657, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141505, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4714.84, -1615.66, 1294.66, 2.14675, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141508, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4642.04, -1680.69, 1279.9, 2.21657, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141515, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4698.73, -1634.39, 1289.07, 2.30383, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141516, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4698.92, -1621.44, 1291.44, 4.01426, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141518, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4749.9, -1628.41, 1295.64, 3.12414, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141520, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4689.83, -1657.88, 1283.85, 0.621199, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141531, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4590.78, -1728.84, 1273.07, 1.98968, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141537, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4510.94, -1768.33, 1266.61, 3.9619, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141538, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4621.88, -1716.92, 1276.16, 3.22297, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141539, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4578.85, -1721.11, 1273.13, 0.226893, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141541, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4526.54, -1853.59, 1242.92, 1.36136, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141579, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4542.24, -1735.6, 1272.38, 0.279253, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141581, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4494.13, -1863.97, 1242.19, 4.71239, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141594, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4545.48, -1759.96, 1265.56, 4.55531, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141595, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4536.63, -1774.25, 1262.99, 0.802851, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141597, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4495.89, -1852.74, 1245.66, 1.6057, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141598, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4510.24, -1855.17, 1242.65, 1.47987, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141599, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4526.54, -1907.67, 1230.1, 4.64258, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141605, 52219, 1, 616, 5019, 1, 6, 38494, 0, 4472.43, -1971.97, 1219.37, 5.32325, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141617, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4454.57, -1957.21, 1226.33, 0.872665, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141620, 52219, 1, 616, 4861, 1, 6, 38494, 0, 4895.37, -1648.6, 1319.13, 2.3911, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141621, 52219, 1, 616, 4861, 1, 6, 38494, 0, 4882.62, -1640.67, 1316.98, 5.88176, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141623, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4612.08, -1694.46, 1293.17, 2.35619, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141626, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4503.76, -1955.55, 1219.23, 4.03567, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141628, 52219, 1, 616, 5019, 1, 6, 38494, 0, 4486.2, -1995.47, 1210.52, 4.72809, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141633, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4657.22, -1653.28, 1283.81, 1.41372, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141640, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4480.54, -1941.86, 1225.15, 5.78852, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141642, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4745.87, -1584.9, 1300.48, 3.57792, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141643, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4542.89, -1826.33, 1258.48, 2.16421, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141647, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4790.48, -1561.6, 1313.44, 1.01229, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141648, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4732.76, -1593.19, 1299.66, 0.610865, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141653, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4590.88, -1837.82, 1258.68, 2.67035, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141657, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4484.29, -1747.04, 1294.95, 1.93731, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141659, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4505.74, -1786.91, 1262.4, 4.97727, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141663, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4513.61, -1838.26, 1246.96, 4.54949, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141666, 52219, 1, 616, 5018, 1, 6, 38494, 0, 4537.73, -1904.3, 1231.64, 0.321577, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141668, 52219, 1, 616, 5019, 1, 6, 38494, 0, 4490.06, -1985.37, 1212.67, 4.96211, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112767, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4688.11, -1659.45, 1284.23, 0.928197, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112766, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4776.11, -1614.36, 1300.95, 3.87835, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112765, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4457.06, -1946.09, 1228.91, 2.19912, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112764, 40336, 1, 616, 5019, 1, 1, 29538, 0, 4428.41, -1969.99, 1225.35, 6.24667, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112763, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4496.96, -1875.29, 1241.94, 5.06249, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112762, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4667.37, -1655.63, 1283.84, 0.586267, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112761, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4509.84, -1763.04, 1271.08, 0.456507, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112760, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4763.78, -1621.9, 1298.15, 2.77751, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112759, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4690.1, -1618.03, 1291.79, -0.151184, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112758, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4744.69, -1577.23, 1301.83, 4.44158, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112757, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4734.79, -1593.11, 1299.5, 0.663225, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112756, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4656.38, -1687.73, 1279.74, 1.05076, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112755, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4529.02, -1899.97, 1232.91, 4.75241, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112754, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4558.64, -1835.56, 1256.47, 2.88502, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112753, 40336, 1, 616, 4861, 1, 1, 29538, 0, 4540.95, -2167.64, 1179.79, 3.12027, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112752, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4514.56, -1928.83, 1226.76, 5.74551, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112751, 40336, 1, 616, 5019, 1, 1, 29538, 0, 4504.55, -2082.59, 1196.02, 1.75935, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112768, 40336, 1, 616, 5019, 1, 1, 29538, 0, 4476.55, -1998.02, 1211.11, 6.16769, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112769, 40336, 1, 616, 5019, 1, 1, 29538, 0, 4504.11, -2151.41, 1184.44, 2.72515, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112770, 40336, 1, 616, 5018, 1, 1, 29538, 0, 4826.01, -1530.67, 1325.12, 4.32528, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112771, 40336, 1, 616, 4861, 1, 1, 29538, 0, 4511.64, -2177.93, 1179.06, 5.32174, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112660, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4458.11, -2113.26, 1200.69, 5.27327, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(112661, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4450.82, -2127.8, 1194.64, 1.8835, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(112662, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4407.49, -2118.82, 1202.57, 5.46099, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(112663, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4411.14, -2036.77, 1213.13, 3.26493, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116790, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4432.79, -2040.82, 1210.26, 1.42002, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116696, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4449.72, -2078.11, 1206.27, 2.07575, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116618, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4427.68, -2070.25, 1210.66, 6.18473, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116593, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4411.09, -2087.68, 1210.66, 0.151125, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116572, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4445.71, -2102.95, 1204.46, 5.7597, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116568, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4471.63, -2064.95, 1208.15, 5.81371, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116458, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4453.7, -2048.83, 1208.01, 0.301748, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116386, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4460.14, -2078.84, 1205.41, 0.473008, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116359, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4442.93, -2085.48, 1206.23, 5.70455, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116254, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4472.82, -2086.29, 1202.69, 5.63569, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116164, 40333, 1, 616, 5019, 1, 4, 0, 40333, 4422.91, -2107.04, 1205.42, 6.052, 300, 0, 0, 351389, 0, 0, 0, 0, 0, 0),
(116143, 40333, 1, 616, 5019, 1, 1, 31213, 0, 4447.34, -2099.93, 1204.6, 5.51524, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(116133, 40333, 1, 616, 5019, 1, 1, 31212, 0, 4446.95, -2047.83, 1208.93, 3.63659, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(116107, 40333, 1, 616, 5019, 1, 1, 31213, 0, 4429.15, -2030.42, 1213.74, 1.36136, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(116037, 40333, 1, 616, 5019, 1, 1, 31212, 0, 4461.71, -2074.42, 1206.18, 6.24828, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115944, 40333, 1, 616, 5019, 1, 1, 31213, 0, 4403.6, -2116.03, 1202.35, 4.95674, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141251, 52899, 1, 616, 5019, 1, 2, 31801, 0, 4438.11, -2028.55, 1211.82, 1.91986, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115930, 52899, 1, 616, 5019, 1, 2, 31801, 0, 4456.59, -2070.21, 1206.95, 1.51844, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141256, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1046.24, 307.314, 41.7121, 2.21657, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141298, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1029.27, 427.455, 41.3423, 4.69494, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141299, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1027.42, 300.882, 41.393, 1.39626, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5223185, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1010.45, 420.429, 41.9174, 6.03884, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5223184, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1004.21, 417.059, 42.063, 5.44543, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5223183, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1002.93, 334.969, 41.6068, 0.942478, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5223180, 52547, 861, 5733, 5738, 1, 2, 0, 0, 1002.78, 322.759, 41.4849, 6.14356, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5223167, 52547, 861, 5733, 5738, 1, 2, 0, 0, 989.358, 402.894, 40.4558, 5.96903, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5223165, 52547, 861, 5733, 5738, 1, 2, 0, 0, 976.632, 291.658, 45.8019, 0.907571, 120, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(5222900, 52547, 1, 616, 5019, 1, 2, 28725, 0, 4432.62, -2049.11, 1208.83, 0.541052, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(5222898, 52547, 1, 616, 5019, 1, 2, 28718, 0, 4427.91, -2003.07, 1217.24, 6.00393, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(5222831, 52547, 1, 616, 5019, 1, 2, 28725, 0, 4418.24, -2022.01, 1215.44, 5.98648, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(5222294, 52906, 1, 616, 4861, 1, 2, 0, 0, 4558.21, -2369.12, 1134.64, 4.1311, 120, 0, 0, 1162491, 0, 0, 0, 557056, 0, 0),
(141304, 52906, 1, 616, 5019, 1, 2, 34201, 0, 4465.94, -2038.49, 1209.45, 0.0349066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(115896, 53493, 1, 616, 5019, 1, 2, 38364, 0, 4439.55, -2050.85, 1208.9, 4.88677, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141309, 52898, 1, 616, 5019, 1, 2, 37942, 0, 4481.86, -2069.15, 1207.48, 5.79449, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115827, 52898, 1, 616, 5019, 1, 2, 37942, 0, 4407.3, -2107.96, 1204.81, 5.94726, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141250, 52897, 1, 616, 5019, 1, 2, 32253, 0, 4446.01, -2038, 1211.26, 1.50098, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115825, 52897, 1, 616, 5019, 1, 2, 32253, 0, 4456.57, -2065.92, 1207.17, 4.90438, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (52671,53075,52844,53073,52901,53076,52670,52177,40555,40561,52816,35845,53004,40169,41028,41008,43481,50069,41004);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141228, 52671, 1, 616, 5019, 1, 6, 25082, 0, 4440.31, -2079.68, 1206.1, 4.97419, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141226, 53075, 1, 616, 5019, 1, 6, 0, 0, 4432.82, -2077.36, 1205.96, 0, 120, 0, 0, 13481, 4169, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141313, 52844, 1, 616, 5781, 1, 6, 20628, 0, 4654.8, -2074.81, 1230.96, 3.52556, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141257, 52844, 1, 616, 5019, 1, 6, 20628, 0, 4436.07, -2067, 1206.67, 6.26573, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141262, 53073, 1, 616, 5019, 1, 2, 38141, 0, 4452.78, -2100.14, 1203.5, 4.7494, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141308, 52901, 1, 616, 5019, 1, 2, 32251, 0, 4454.75, -2120.96, 1197.54, 4.93928, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115762, 52901, 1, 616, 5019, 1, 2, 32251, 0, 4398.13, -2093.66, 1211.26, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141227, 53076, 1, 616, 5019, 1, 6, 0, 53076, 4436.57, -2111.03, 1204.5, 1.76278, 120, 0, 0, 13481, 4169, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141639, 52670, 1, 616, 5019, 1, 2, 31213, 0, 4482.3, -1995.85, 1210.72, 3.10251, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141231, 52670, 1, 616, 5019, 1, 2, 0, 0, 4421.54, -2084.96, 1210.66, 5.58995, 120, 0, 0, 351967, 0, 0, 0, 0, 0, 0),
(141268, 52670, 1, 616, 5019, 1, 2, 31212, 0, 4415.21, -2110.41, 1204.54, 6.21094, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141230, 52670, 1, 616, 5019, 1, 2, 31212, 0, 4445.67, -2067.64, 1207.1, 0.680678, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115754, 52670, 1, 616, 5019, 1, 2, 31213, 0, 4426.8, -2079.13, 1210.75, 5.3058, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115728, 52670, 1, 616, 5019, 1, 2, 0, 52670, 4498.73, -1989.46, 1212.25, 2.40078, 300, 0, 0, 351967, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141367, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4527.75, -1847.14, 1244.79, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141374, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4525.77, -1877.36, 1237.38, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141379, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4525.87, -1918.32, 1227.2, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141394, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4466.58, -1924.63, 1233.31, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141395, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4505.29, -1937.95, 1225.06, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141396, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4658.52, -1645.89, 1285.11, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141435, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4711.17, -1610.71, 1294.94, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141436, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4586.3, -1719.35, 1273.65, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141440, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4551.44, -1733.1, 1271.66, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141453, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4544.57, -1766.21, 1263.33, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141460, 52177, 1, 616, 4861, 1, 6, 27883, 0, 4842.98, -1581.96, 1312.49, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141461, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4793.42, -1557.43, 1315.24, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141462, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4693.42, -1628.44, 1289.79, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141463, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4738.83, -1588.92, 1299.79, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141464, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4742.97, -1628.27, 1295.67, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141465, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4818.26, -1579.41, 1310.22, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141466, 52177, 1, 616, 4861, 1, 6, 27883, 0, 4878.06, -1564.35, 1333.43, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141468, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4637.98, -1675.05, 1280.33, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141497, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4489.91, -1903.34, 1232.02, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141498, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4494.5, -1872.24, 1239.57, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141499, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4582.04, -1833.12, 1257.28, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141502, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4536.34, -1817.29, 1256.98, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141503, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4495.69, -1844.17, 1247.93, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141526, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4462.22, -1948.3, 1227.17, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141527, 52177, 1, 616, 5019, 1, 6, 27883, 0, 4477.23, -1979.54, 1216.92, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141528, 52177, 1, 616, 5018, 1, 6, 27883, 0, 4607.63, -1690.01, 1295.5, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141529, 52177, 1, 616, 4861, 1, 6, 27883, 0, 4890.33, -1643.67, 1319.02, 3.89208, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141530, 52177, 1, 616, 4861, 1, 6, 27883, 0, 4859.64, -1538.17, 1344.85, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115713, 52177, 1, 616, 5019, 1, 6, 0, 0, 4498.56, -1983.42, 1213.98, 2.0135, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113517, 40555, 1, 616, 5781, 1, 1, 15512, 0, 4607.05, -2038.29, 1155.77, 2.21657, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113518, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4620.53, -2018.96, 1152.04, 2.61799, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113519, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4590.33, -1976.79, 1148.75, 3.83972, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113520, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4554.92, -1975.74, 1153.3, 6.05629, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113521, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4585.02, -1937.78, 1154.89, 4.20624, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113522, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4563.85, -1952.02, 1155.83, 5.65487, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113523, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4600.56, -1994.26, 1162.64, 4.43314, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113524, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4574.76, -1906.25, 1159.91, 5.21853, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113525, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4589.81, -1881.36, 1155.94, 4.03171, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113526, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4572.34, -2026.56, 1152.76, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113527, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4562.44, -2058.11, 1154.72, 0.959931, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115701, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4586.69, -1814.77, 1224.95, 2.47837, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115554, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4606.08, -1806.66, 1210.56, 1.18682, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115548, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4715.3, -1707.92, 1167.75, 4.45059, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115513, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4753.58, -1782.25, 1162.26, 2.16421, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115497, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4729.43, -1748.64, 1167, 2.89725, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115359, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4783.61, -1760.14, 1185.9, 1.37881, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115350, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4773.21, -1725.94, 1173.36, 0.593412, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115343, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4775.23, -1785.24, 1194.61, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115333, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4566.92, -1785.36, 1199.69, 0.296706, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115330, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4581.6, -1766.48, 1194.96, 5.61996, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115328, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4626.02, -1796.13, 1187.98, 2.02458, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115325, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4608, -1761.29, 1196.1, 5.53269, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115317, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4645.06, -1757.52, 1182.29, 3.24631, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115305, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4678.35, -1769.29, 1178.31, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115303, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4693.51, -1731.15, 1174.71, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115299, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4754.97, -1693.78, 1180.38, 4.97419, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115297, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4794.71, -1686.27, 1186.86, 0.349066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115285, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4820.97, -1680.04, 1194.48, 5.2709, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115269, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4815.96, -1798.69, 1196.83, 3.56047, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115267, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4821.49, -1755.57, 1193.22, 5.70723, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115252, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4834.45, -1780.87, 1184.87, 2.19912, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115245, 40555, 1, 616, 5018, 1, 1, 15512, 0, 4839.74, -1720.86, 1203.93, 4.11898, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112926, 40561, 1, 616, 5781, 1, 1, 31673, 0, 4601.14, -2039.32, 1155.86, 0.172565, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112927, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4618.78, -2015.74, 1156.85, 5.21041, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112928, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4584.88, -1979.22, 1148.78, 0.419717, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112929, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4550, -1975.01, 1156.93, 6.13557, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112930, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4586.77, -1943.53, 1154.91, 1.86555, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112931, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4563.35, -1957.99, 1155.88, 1.48766, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112932, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4602.52, -1992.52, 1168.13, 3.86836, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112933, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4570.4, -1904.14, 1163.79, 5.83263, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112934, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4590.27, -1883.69, 1160.63, 1.76471, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115228, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4571.85, -2032.52, 1152.85, 1.48778, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115223, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4559.13, -2056.95, 1160.02, 5.94705, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115220, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4583.35, -1817.67, 1229.07, 0.715751, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115206, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4605.54, -1810.18, 1215.46, 1.42017, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(109730, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4717.72, -1712.09, 1171.41, 2.09738, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115186, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4748.25, -1779.44, 1162.4, 5.79802, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115203, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4728.32, -1742.98, 1168.73, 4.90512, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115167, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4777.71, -1761.19, 1186.49, 0.177279, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115162, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4768.67, -1729.88, 1173.39, 0.713418, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115144, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4780.86, -1783.11, 1194.65, 3.50414, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115138, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4565.38, -1780.69, 1200.58, 5.03135, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115125, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4579.01, -1763.31, 1199.27, 5.39893, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115121, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4626.45, -1789.78, 1187.98, 4.64434, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115103, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4605.6, -1769.69, 1196.1, 1.29252, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115065, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4651.19, -1754.11, 1182.31, 3.64913, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(115057, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4672.83, -1773.27, 1179.97, 0.624607, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114493, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4693.69, -1725.58, 1176.62, 4.68028, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114418, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4755.91, -1687.19, 1181.69, 4.57031, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114395, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4795.48, -1679.84, 1189.64, 4.59458, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114298, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4819.59, -1802.83, 1199.19, 2.29004, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114187, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4815.51, -1755.82, 1193.25, 0.0405866, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114179, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4836.28, -1784.74, 1189.26, 2.01132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114124, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4838.49, -1726.71, 1203.94, 1.36075, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114058, 40561, 1, 616, 5018, 1, 1, 31673, 0, 4822.15, -1685.66, 1196.47, 1.77732, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141400, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5094.62, -1495.4, 1344.73, 1.67649, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141439, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5223.05, -1406.12, 1360.17, 3.19633, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141458, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5068.3, -1564.75, 1338.48, 5.28835, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141471, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5055.14, -1366.52, 1343.44, 2.17105, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141485, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5096.71, -1370.99, 1347.62, 5.02655, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141509, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5075.5, -1534.02, 1341.22, 3.71551, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141521, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5115.72, -1336.25, 1354.14, 5.78057, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141525, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5111.59, -1374.71, 1349.4, 3.64774, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141535, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5012.83, -1472.66, 1329.51, 2.89793, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141536, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4980.7, -1524.22, 1327.68, 1.42268, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141551, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4988.51, -1570.33, 1327.56, 3.19055, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141552, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5098.49, -1501.73, 1344.99, 0.383972, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141554, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4982.85, -1462.25, 1328.93, 5.86431, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141567, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5096.65, -1304.99, 1365.45, 2.39419, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141568, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5123.73, -1392.13, 1350.09, 5.93632, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141569, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4940.76, -1455.52, 1330.51, 3.57792, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141570, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5206.53, -1397.58, 1358.35, 5.6811, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141577, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4879.08, -1512.99, 1340.44, 4.04916, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141705, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5151.82, -1475.15, 1346.27, 3.66504, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141730, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4994.71, -1457.35, 1330.32, 4.17134, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141732, 52816, 1, 616, 4861, 1, 6, 1070, 0, 4868.39, -1506.74, 1345.55, 4.55531, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141764, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5126.83, -1320.27, 1358.71, 2.21657, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141765, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5201.71, -1334.74, 1367.99, 1.06465, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141766, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5137.33, -1309.31, 1370.78, 3.31613, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141773, 52816, 1, 616, 4861, 1, 6, 1070, 0, 5196.05, -1311.84, 1368.57, 5.42797, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(44190, 35845, 1, 4709, 4855, 1, 1, 0, 0, -3244.39, -2002.53, 88.0206, 1.5708, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(44377, 35845, 1, 4709, 4948, 1, 1, 0, 0, -3564.5, -1591.79, 102.286, 2.14675, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(88031, 35845, 1, 4709, 4872, 1, 1, 27823, 0, -4091.53, -2334.59, 133.878, 5.11381, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(91091, 35845, 1, 4709, 4845, 1, 1, 27823, 0, -2034, -2654.39, 86.4734, 3.50811, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(91370, 35845, 1, 4709, 4849, 1, 1, 27823, 0, -2292.45, -2337.91, 95.6086, 0, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(91488, 35845, 1, 1637, 5168, 1, 1, 27823, 0, 1915.46, -4734.32, 39.0198, 1.01229, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(99968, 35845, 1, 16, 3137, 1, 1, 0, 0, 2790.49, -3976.69, 96.1964, 0, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(100159, 35845, 1, 16, 3137, 1, 1, 0, 0, 2869.36, -4038.96, 188.209, 0, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(115444, 35845, 1, 16, 4827, 1, 1, 27823, 0, 2740.38, -6625.66, 106.879, 3.12414, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(116443, 35845, 1, 4709, 4709, 1, 1, 0, 0, -1585.69, -3711.74, 84.5012, 0, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(119124, 35845, 1, 4709, 4709, 1, 1, 0, 0, -1608.54, -3647.51, 81.3756, 3.50419, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(119143, 35845, 1, 4709, 4985, 1, 1, 27823, 0, -614.377, -1416.12, 157.055, 0, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(119440, 35845, 1, 16, 4829, 1, 1, 27823, 0, 2611.75, -5688.51, 115.092, 5.55015, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(119675, 35845, 1, 616, 4978, 1, 1, 27823, 0, 5322.89, -2388.5, 1609.51, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(119785, 35845, 1, 616, 4990, 1, 1, 27823, 0, 4879.11, -2804.89, 1443.11, 0.349066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131794, 35845, 1, 616, 5013, 1, 1, 27823, 0, 4923.84, -1872.22, 1334.64, 1.65806, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131564, 35845, 1, 616, 4999, 1, 1, 27823, 0, 5031.46, -2035.88, 1374.39, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131542, 35845, 1, 616, 4988, 1, 1, 27823, 0, 5173.65, -2074.52, 1282.67, 3.38594, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(131335, 35845, 1, 616, 4988, 1, 1, 27823, 0, 5199.56, -2083.38, 1282.93, 2.68781, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(114007, 35845, 1, 616, 4980, 1, 1, 27823, 0, 5140.63, -2305.04, 1279.58, 1.20428, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113964, 35845, 1, 616, 5064, 1, 65535, 0, 0, 5032.69, -2029.34, 1148.98, 5.77594, 120, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(113853, 35845, 1, 616, 4861, 1, 1, 27823, 0, 5021.89, -1427.28, 1339.4, 3.00034, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113795, 35845, 1, 616, 5050, 1, 1, 27823, 0, 4732.38, -2422.75, 732.941, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113739, 35845, 1, 616, 5050, 1, 1, 27823, 0, 4663.3, -2412.7, 701.428, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113728, 35845, 1, 616, 5050, 1, 1, 27823, 0, 4688.45, -2474.67, 713.927, 0, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113692, 35845, 1, 616, 5050, 1, 15, 27823, 0, 4566.93, -2595.33, 829.518, 1.09956, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113591, 35845, 1, 616, 4861, 1, 1, 27823, 0, 4910.6, -1535.84, 1338.25, 0.13394, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113560, 35845, 1, 616, 4861, 1, 1, 27823, 0, 5171.15, -1345.49, 1364.64, 4.49495, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113542, 35845, 1, 616, 5099, 1, 1, 27823, 0, 4678.07, -3682.55, 697.257, 3.1765, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113532, 35845, 1, 616, 5017, 1, 1, 27823, 0, 4663.83, -3686.33, 958.766, 2.98451, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(139052, 53004, 1, 616, 5016, 1, 1, 36863, 0, 5270.78, -1518.72, 1367.39, 4.36345, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142773, 40169, 1, 616, 5013, 1, 1, 21072, 0, 4915.54, -1869.71, 1334.77, 0.0872665, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142772, 40169, 1, 616, 5013, 1, 1, 21072, 0, 4931.04, -1868.5, 1334.79, 3.22886, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113080, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4941.83, -2564.6, 1445.27, 5.15666, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113081, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4992.97, -2581.6, 1472.61, 4.49082, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113082, 41028, 1, 616, 5022, 1, 1, 4578, 0, 5001.9, -2487.87, 1460.42, 3.76504, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113083, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4990.49, -2520.43, 1434.33, 6.17645, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113084, 41028, 1, 616, 5022, 1, 1, 4578, 0, 5003.69, -2520.6, 1467.04, 4.15135, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113529, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4881.57, -2529.4, 1459.47, 6.26355, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113489, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4905.12, -2618.72, 1453.8, 4.37847, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113410, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4966.95, -2664.39, 1479.47, 4.13164, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113367, 41028, 1, 616, 5022, 1, 1, 4578, 0, 5039, -2635.78, 1441.82, 5.20108, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113276, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4861.31, -2743.08, 1497.78, 4.94696, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113251, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4917.91, -2729.08, 1503.98, 4.01745, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113181, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4880.61, -2775.21, 1515.2, 4.52453, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112976, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4916.59, -2743, 1497.98, 4.42594, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112721, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4955.23, -2762.83, 1490.29, 3.79009, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112671, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4858.01, -2728.02, 1489.45, 4.90265, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112653, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4919.53, -2735.06, 1495.82, 4.28886, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112623, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4898.67, -2767.18, 1510.5, 4.35391, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112587, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4986.23, -2743.16, 1483.77, 3.56296, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112569, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4873.93, -2785.59, 1511.31, -0.443426, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(109673, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4907.8, -2785.94, 1500.46, 3.4407, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112463, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4934.86, -2778.71, 1496.27, 3.81324, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112400, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4865.09, -2789.19, 1510.61, 5.65049, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112375, 41028, 1, 616, 5022, 1, 1, 4578, 0, 5035.02, -2557.24, 1457.54, 2.63254, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112372, 41028, 1, 616, 4990, 1, 1, 4578, 0, 4885.28, -2782.14, 1505.8, 5.62467, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112351, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4982.71, -2625.67, 1440.49, 5.77795, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112349, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4748.05, -2840.95, 1244.96, 2.09605, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112333, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4858.63, -2465.69, 1338.01, 4.7148, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112329, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4930.14, -2451.87, 1476.92, 3.92699, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112325, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4930.05, -2533.34, 1454.01, 0.279996, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112317, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4899.49, -2634.64, 1498.34, 4.53293, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112315, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4973.08, -2521.91, 1446.36, 3.50354, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112313, 41028, 1, 616, 5022, 1, 1, 4578, 0, 5028.11, -2530.33, 1456.41, 1.37139, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112301, 41028, 1, 616, 5022, 1, 1, 4578, 0, 4858.86, -2457.29, 1338.01, 5.38252, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137056, 41008, 1, 616, 4990, 1, 1, 32255, 0, 4857.49, -2842.73, 1469.8, 6.16101, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137094, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4907.75, -2771.54, 1437.71, 2.18166, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137095, 41008, 1, 616, 4990, 1, 1, 32257, 0, 4896.38, -2761.73, 1437.69, 0.523599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137096, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4910.26, -2673.07, 1436.83, 2.45224, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137097, 41008, 1, 616, 4990, 1, 1, 32255, 0, 4897.16, -2745.49, 1437.68, 2.68781, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137098, 41008, 1, 616, 4990, 1, 1, 32255, 0, 4891.38, -2787.9, 1461.77, 1.41372, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137099, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4955.18, -2747.81, 1434.91, 0.261799, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137100, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4872.84, -2808.4, 1441.82, 0.0865403, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112294, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4969.88, -2833.51, 1441.97, 1.09956, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112292, 41008, 1, 616, 4990, 1, 1, 32256, 0, 4874.26, -2801.27, 1441.84, 5.97855, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112285, 41008, 1, 616, 4990, 1, 1, 32255, 0, 4929.68, -2715.76, 1435.01, 1.41372, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112280, 41008, 1, 616, 4990, 1, 1, 32256, 0, 4915.02, -2710.78, 1434.86, 1.158, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112275, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4873.47, -2816.32, 1512.28, 2.49582, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112270, 41008, 1, 616, 4990, 1, 1, 32257, 0, 4937.21, -2654.52, 1427.08, 6.24828, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112268, 41008, 1, 616, 4990, 1, 1, 32257, 0, 4905.35, -2786.69, 1500.98, 1.32645, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112264, 41008, 1, 616, 4990, 1, 1, 32258, 0, 4914.23, -2813.28, 1495.95, 5.89921, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112262, 41008, 1, 616, 4990, 1, 1, 32255, 0, 4928.49, -2809.48, 1495.83, 1.89588, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112258, 41008, 1, 616, 4990, 1, 1, 32255, 0, 4961.08, -2802.77, 1500.81, 1.62886, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112256, 41008, 1, 616, 4990, 1, 1, 32257, 0, 4916.24, -2790.02, 1498.31, 0.977384, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112247, 41008, 1, 616, 4990, 1, 1, 32256, 0, 4834.38, -2861.75, 1504.01, 5.40523, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137277, 43481, 1, 616, 4990, 1, 1, 33382, 0, 4990.07, -2677.63, 1426.61, 2.61799, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141287, 50069, 1, 616, 4990, 1, 1, 33387, 0, 4915.56, -2702.52, 1433.49, 0.471239, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137278, 41004, 1, 616, 4990, 1, 1, 0, 0, 4911.4, -2720.72, 1437.61, 0.272193, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `phase_definitions` WHERE zoneId=616;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `originmap`, `terrainswapmap`, `worldMapAreaSwap`, `flags`, `comment`) VALUES 
(616, 0, 0, 0, 0, 719, 0, 0, 'Mount Hyjal default');


DELETE FROM `creature` WHERE id=55224;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109242, 55224, 1, 616, 5019, 1, 1, 39082, 0, 4438.98, -2062.39, 1207.41, 5.46288, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52845;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141253, 52845, 1, 616, 5019, 1, 4, 0, 0, 4413.43, -2073.99, 1210.32, 5.62006, 120, 0, 0, 32395628, 0, 0, 0, 0, 0, 0),
(141234, 52845, 1, 616, 5019, 1, 2, 0, 0, 4421.28, -2076.66, 1210.32, 5.49963, 120, 0, 0, 32395628, 0, 0, 0, 0, 0, 0),
(109578, 52845, 1, 616, 5781, 1, 6, 35095, 0, 4653.62, -2082.89, 1230.56, 3.49066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52669;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141229, 52669, 1, 616, 5019, 1, 2, 0, 52669, 4424.42, -2082.76, 1210.66, 5.60251, 120, 0, 0, 77490, 8908, 0, 0, 0, 0, 0),
(109516, 52669, 1, 616, 5019, 1, 4, 0, 52669, 4415.94, -2069.89, 1210.32, 5.5197, 120, 0, 0, 2262553, 8908, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=39858;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112526, 39858, 1, 616, 5019, 1, 1, 31605, 0, 4422.33, -2080.43, 1211.12, 5.65487, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=40331;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113035, 40331, 1, 616, 5019, 1, 1, 31801, 0, 4411.69, -2077.85, 1210.78, 5.49779, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52902;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(139049, 52902, 1, 616, 5019, 1, 6, 0, 0, 4411.39, -2071.62, 1213.79, 5.55015, 120, 0, 0, 7749000, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52931;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141923, 52931, 1, 616, 5019, 1, 6, 0, 0, 4406.03, -2080.84, 1210.32, 6.0912, 120, 0, 0, 1552925, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=43550;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112664, 43550, 1, 616, 5019, 1, 1, 33407, 0, 4421.68, -2095.55, 1205.88, 4.90438, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52986;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141260, 52986, 1, 616, 5019, 1, 2, 38116, 0, 4425.92, -2097.94, 1205.81, 5.86431, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=43551;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112748, 43551, 1, 616, 5019, 1, 1, 33408, 0, 4422.02, -2098.77, 1205.82, 1.67552, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52932;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141264, 52932, 1, 616, 5019, 1, 2, 38089, 0, 4420.84, -2100.56, 1206.66, 1.62316, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=54392;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141280, 54392, 1, 616, 5019, 1, 1, 0, 0, 4397.19, -2109.81, 1204.26, 0.172742, 120, 0, 0, 175983, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=54393;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141276, 54393, 1, 616, 5019, 1, 6, 0, 54393, 4397.19, -2109.81, 1204.26, 0.172742, 120, 0, 0, 175983, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=53841;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141433, 53841, 1, 616, 5019, 1, 8, 0, 0, 4399.44, -2121.25, 1247.75, 2.30164, 120, 0, 0, 58661, 9697, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=53844;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141373, 53844, 1, 616, 5019, 1, 8, 0, 0, 4395.8, -2122.39, 1247.75, 2.28783, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=53842;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141372, 53842, 1, 616, 5019, 1, 8, 0, 53842, 4395.64, -2117.33, 1246.79, 2.25845, 120, 0, 0, 58661, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=53840;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141434, 53840, 1, 616, 5019, 1, 8, 0, 0, 4392.43, -2120.63, 1247.75, 2.2575, 120, 0, 0, 58661, 4454, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41381;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112750, 41381, 1, 616, 5781, 1, 1, 1460, 0, 4622.03, -2092.79, 1239.15, 0.488692, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52847;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141350, 52847, 1, 616, 5781, 1, 4, 0, 0, 4613.46, -2111.78, 1236.73, 1.50188, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(141355, 52847, 1, 616, 5781, 1, 4, 0, 0, 4628.76, -2111.06, 1236.6, 2.0061, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(141359, 52847, 1, 616, 5781, 1, 4, 0, 0, 4621.69, -2112.57, 1236.71, 1.69255, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(109488, 52847, 1, 616, 5781, 1, 4, 0, 0, 4621.15, -2074.31, 1238.86, 4.96661, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(109472, 52847, 1, 616, 5781, 1, 4, 0, 0, 4613.46, -2076.9, 1240.38, 5.05192, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(109393, 52847, 1, 616, 5781, 1, 4, 0, 0, 4638.11, -2103.04, 1241.31, 2.70306, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(109346, 52847, 1, 616, 5781, 1, 4, 0, 0, 4628.92, -2075.81, 1235.71, 4.52902, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(109314, 52847, 1, 616, 5781, 1, 4, 0, 0, 4607.11, -2079.88, 1238.34, 5.12718, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0),
(109304, 52847, 1, 616, 5781, 1, 4, 0, 0, 4634.29, -2107.08, 1239, 2.2319, 300, 0, 0, 77492, 8908, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52849;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141351, 52849, 1, 616, 5781, 1, 4, 0, 0, 4634.12, -2099.44, 1239.26, 3.10906, 300, 0, 0, 774900, 8908, 0, 0, 0, 0, 0),
(141352, 52849, 1, 616, 5781, 1, 4, 0, 0, 4619.66, -2081.04, 1237.94, 4.30331, 300, 0, 0, 774900, 8908, 0, 0, 0, 0, 0),
(141353, 52849, 1, 616, 5781, 1, 4, 0, 0, 4613.75, -2082.9, 1238.74, 4.94057, 300, 0, 0, 774900, 8908, 0, 0, 0, 0, 0),
(141354, 52849, 1, 616, 5781, 1, 4, 0, 0, 4624.8, -2108.53, 1237.4, 1.89466, 300, 0, 0, 774900, 8908, 0, 0, 0, 0, 0),
(141356, 52849, 1, 616, 5781, 1, 4, 0, 0, 4617.91, -2109.15, 1237.04, 1.60363, 300, 0, 0, 774900, 8908, 0, 0, 0, 0, 0),
(141357, 52849, 1, 616, 5781, 1, 4, 29405, 0, 4627.19, -2079.54, 1236.46, 4.33843, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52848;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141236, 52848, 1, 616, 5781, 1, 4, 20872, 0, 4615.77, -2076.21, 1253.01, 4.06662, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(141288, 52848, 1, 616, 5781, 1, 4, 20857, 0, 4662.72, -2095.45, 1259.87, 2.91188, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(141289, 52848, 1, 616, 5781, 1, 4, 20872, 0, 4619.56, -2128.09, 1262.64, 2.01947, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52845;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141253, 52845, 1, 616, 5019, 1, 4, 0, 0, 4413.43, -2073.99, 1210.32, 5.62006, 120, 0, 0, 32395628, 0, 0, 0, 0, 0, 0),
(141234, 52845, 1, 616, 5019, 1, 2, 0, 0, 4421.28, -2076.66, 1210.32, 5.49963, 120, 0, 0, 32395628, 0, 0, 0, 0, 0, 0),
(109278, 52845, 1, 616, 5781, 1, 6, 35095, 0, 4653.62, -2082.89, 1230.56, 3.49066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=52843;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141307, 52843, 1, 616, 5781, 1, 6, 32245, 0, 4657.27, -2086.12, 1229.1, 3.47321, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(141323, 52843, 1, 616, 5019, 1, 6, 32245, 0, 4427.04, -2034.45, 1211.96, 1.309, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41396;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112787, 41396, 1, 616, 5781, 1, 1, 34998, 0, 4668.66, -2060.61, 1224.45, 3.54238, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112788, 41396, 1, 616, 5781, 1, 1, 34998, 0, 4690.48, -2075.24, 1219.11, 0.169532, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112789, 41396, 1, 616, 4861, 1, 1, 34998, 0, 4733.06, -2076.31, 1222.53, 1.76647, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112790, 41396, 1, 616, 4861, 1, 1, 34998, 0, 4722.45, -2071.42, 1222.02, 2.60234, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112791, 41396, 1, 616, 4861, 1, 1, 34998, 0, 4738.84, -2115.64, 1213.69, 2.14827, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112792, 41396, 1, 616, 5781, 1, 1, 34998, 0, 4693.63, -2053.19, 1222.43, 3.69932, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112793, 41396, 1, 616, 4861, 1, 1, 34998, 0, 4726.41, -2162.47, 1203.08, 3.72409, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(109252, 41396, 1, 616, 4861, 1, 1, 34998, 0, 4763.02, -2145.42, 1220.13, 0.055802, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);


-- inicio ---------------------------

DELETE FROM `creature_equip_template` WHERE `entry`=40545;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(40545, 19987, 0, 42921);

DELETE FROM `creature` WHERE id=40545;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109206, 40545, 1, 616, 5018, 1, 1, 0, 0, 4637.74, -1987.03, 1198.95, 1.97534, 300, 0, 0, 42, 0, 0, 0, 33554432, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40545 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40545, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4054500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4054500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4054500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 40545, 0, 0, 0, 0, 0, 18, 60, 0, 0, 0, 0, 0, 0, ''),
(4054500, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4054500, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40551, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4625.68, -1991.69, 1193.17, 6.04252, ''),
(4054500, 9, 3, 0, 0, 0, 100, 0, 20000, 20000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template` WHERE `entry`=40545;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40545, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Rod of Subjugation 02', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1.1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=40545;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40545, 0, 0, 0, 0, 0, '75602');

-- Fin ----------------------------------------------


-- phase 2
-- inicio -----------------------------------------

DELETE FROM `creature_template` WHERE `entry`=70038;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(70038, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'MF - Caught Unawares - Trigger (Phase 2)', '', '', 0, 85, 85, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 3.8, 3.8, 0, 46, 1, 2000, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);

DELETE FROM `creature_template_addon` WHERE `entry`=70038;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(70038, 0, 0, 0, 0, 0, NULL);

DELETE FROM `conditions` WHERE `SourceEntry`=70038;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 70038, 0, 0, 1, 0, 94680, 0, 0, 0, 0, 0, '', ''),
(22, 1, 70038, 0, 0, 9, 0, 29197, 0, 0, 0, 0, 0, '', '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=70038 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(70038, 0, 0, 1, 10, 0, 100, 0, 1, 10, 5000, 60000, 45, 0, 2, 0, 0, 0, 0, 11, 52907, 25, 0, 0, 0, 0, 0, ''),
(70038, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 52906, 25, 0, 0, 0, 0, 0, ''),
(70038, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 52903, 25, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=70038;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109175, 70038, 1, 616, 4861, 1, 2, 0, 0, 4546.18, -2373.24, 1133.9, 5.97264, 300, 0, 0, 1, 0, 0, 0, 33554432, 0, 0),
(109171, 70038, 1, 616, 5018, 1, 4, 0, 0, 4619.97, -1976.12, 1193.52, 0.408348, 300, 0, 0, 1, 0, 0, 0, 33554432, 0, 0),
(109145, 70038, 1, 616, 4861, 1, 2, 0, 0, 4593.49, -2697.77, 1139.82, 5.15189, 300, 0, 0, 1, 0, 0, 0, 33554432, 0, 0);

-- Fin ----------------------------------

-- inicio -------------------------------

DELETE FROM `creature_template` WHERE `entry`=52907;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52907, 0, 0, 0, 0, 0, 32254, 0, 0, 0, 'Thisalee Crow', 'Druid of the Talon', '', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1, 1, 1, 570, 611, 0, 398, 1.1, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 0, 570, 611, 398, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 1, 1, 20, 4.5946, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52907, 0, 0, '', 15595);

DELETE FROM `smart_scripts` WHERE `entryorguid`=52907 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52907, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 33, 52907, 0, 0, 0, 0, 0, 18, 50, 0, 0, 0, 0, 0, 0, ''),
(52907, 0, 1, 0, 38, 0, 100, 0, 0, 2, 0, 0, 80, 5290700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=5290700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5290700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, ''),
(5290700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(5290700, 9, 4, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 5, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 6, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 12, 52557, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4629.35, -1980.29, 1193.52, 2.11394, ''),
(5290700, 9, 9, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=52907;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141243, 52907, 1, 616, 5018, 1, 4, 0, 0, 4619.43, -1969.86, 1193.52, 6.13154, 120, 0, 0, 1549797, 44540, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `entry`=52907;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(52907, 0, 0, 'Hey, $N, you\'re here! These guys came out of nowhere! Help me out while I catch my breath.', 12, 0, 100, 0, 0, 0, '', 0),
(52907, 1, 0, 'Protect Thisalee from the fire elementals!', 16, 0, 100, 0, 0, 0, '', 51518),
(52907, 2, 0, 'I can handle things from here. I\'ll meet you back at the Sanctuary, $N.', 12, 0, 100, 0, 0, 0, '', 51530);

DELETE FROM `creature_template_addon` WHERE `entry`=52907;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(52907, 0, 0, 0, 0, 333, '90442');

DELETE FROM `creature_equip_template` WHERE `entry`=52907;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(52907, 57020, 0, 0);

-- Fin ------------------------


-- inicio ----------------------
DELETE FROM `creature` WHERE guid=109133;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109133, 39859, 1, 616, 5018, 1, 1, 23748, 0, 4613.63, -1945.52, 1192.7, 4.11898, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE guid=109090;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109090, 39859, 1, 616, 5018, 1, 1, 23748, 0, 4644.6, -1997.97, 1193.38, 2.84489, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=39859;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39859, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Dave\'s Industrial Light and Magic Bunny (Large)(Sessile)', '', '', 0, 1, 1, 0, 0, 190, 190, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `creature_template_addon` WHERE entry=39859;

DELETE FROM `creature_text` WHERE `entry`=39859;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(39859, 0, 0, 'Flap Your Wings Rapidly to Re-Gain Altitude!', 42, 0, 100, 0, 0, 0, 'Dave\'s Industrial Light and Magic Bunny (Large)(Sessile)', 0);

-- Fin -----------------------

DELETE FROM `smart_scripts` WHERE `entryorguid`=70037 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(70037, 0, 0, 0, 1, 0, 100, 0, 8000, 18000, 8000, 18000, 12, 52853, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4612.9, -2094.68, 1238.99, 3.20729, ''),
(70037, 0, 1, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 7003700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=7003700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(7003700, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 12, 52853, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4612.9, -2094.68, 1238.99, 3.20729, ''),
(7003700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52853, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4616.45, -2087.65, 1238.72, 5.88337, ''),
(7003700, 9, 2, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 12, 52853, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4612.9, -2094.68, 1238.99, 3.20729, ''),
(7003700, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52853, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4616.45, -2087.65, 1238.72, 5.88337, ''),
(7003700, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52853, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4612.9, -2094.68, 1238.99, 3.20729, ''),
(7003700, 9, 5, 0, 0, 0, 100, 0, 13000, 13000, 0, 0, 12, 52863, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4621.88, -2091.01, 1238.19, 0.2525, '');

DELETE FROM `creature_template` WHERE `entry`=70037;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (70037, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'MF - Nordune Ridge - Trigger (Phase 4)', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 3.8, 3.8, 0, 46, 1, 2000, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 1.9, 1.9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 12340);

DELETE FROM `creature` WHERE `id`=70037;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109081, 70037, 1, 616, 5781, 1, 4, 0, 0, 4622.54, -2092.41, 1238.44, 3.39552, 300, 0, 0, 57, 0, 0, 0, 33554432, 0, 0);
 
 DELETE FROM `creature_template_addon` WHERE entry=40147;
DELETE FROM `creature_template_addon` WHERE entry=40149;
DELETE FROM `creature_template_addon` WHERE entry=39437;
DELETE FROM `creature` WHERE id=1449500;

-- En retaguardia con los suministros ID 25234
DELETE FROM `smart_scripts` WHERE `entryorguid`=39436 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39436, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 12000, 14000, 11, 80182, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Uppercut'),
(39436, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 39438, 20, 0, 0, 0, 0, 0, 'Cast Uppercut'),
(39436, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 11, 39436, 20, 0, 0, 0, 0, 0, 'Cast Uppercut'),
(39436, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 39431, 20, 0, 0, 0, 0, 0, 'Cast Uppercut');

DELETE FROM `smart_scripts` WHERE `entryorguid`=39431 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39431, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 80, 3943100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3943100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3943100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3943100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 73959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3943100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 12, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3943100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE entry=3943600;

DELETE FROM `report_quest` WHERE id=25234;

DELETE FROM `creature_template_addon` WHERE entry=39445;

DELETE FROM `spell_phase` WHERE `id`=88438;
INSERT INTO `spell_phase` (`id`, `phasemask`, `terrainswapmap`, `worldmapareaswap`) VALUES (88438, 2, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=-330702;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-330702, 0, 0, 1, 10, 0, 100, 0, 1, 60, 30000, 30000, 45, 1, 2, 0, 0, 0, 0, 14, 67238, 202658, 0, 0, 0, 0, 0, 'Magic Bunny - On player near with quest 25268/25269 taken(See Conditions) - Set Data to Gobj'),
(-330702, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 14, 67239, 206394, 0, 0, 0, 0, 0, 'Magic Bunny - On player near with quest 25268/25269 taken(See Conditions) - Set Data to Gobj'),
(-330702, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 14, 67265, 202658, 0, 0, 0, 0, 0, 'Magic Bunny - On player near with quest 25268/25269 taken(See Conditions) - Set Data to Gobj'),
(-330702, 0, 3, 4, 38, 0, 100, 0, 1, 1, 0, 0, 45, 1, 2, 0, 0, 0, 0, 14, 67238, 202658, 0, 0, 0, 0, 0, 'Magic Bunny - On Data Set - Set Data to Gobj'),
(-330702, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 14, 67239, 206394, 0, 0, 0, 0, 0, 'Magic Bunny - On Data Set - Set Data to Gobj'),
(-330702, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 14, 67265, 202658, 0, 0, 0, 0, 0, 'Magic Bunny - On Data Set - Set Data to Gobj');

UPDATE `gameobject` SET  `phaseMask`='2' WHERE id IN (202658,206394);


DELETE FROM `conditions` WHERE `SourceEntry`=-330702;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, -330702, 0, 0, 28, 0, 25268, 0, 0, 0, 0, 0, '', 'Script only runs if target has quest 25268 taken'),
(22, 1, -330702, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Script only runs if is player'),
(22, 1, -330702, 0, 1, 28, 0, 25269, 0, 0, 0, 0, 0, '', 'Script only runs if target has quest 25269 taken'),
(22, 1, -330702, 0, 1, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Script only runs if is player');

DELETE FROM `smart_scripts` WHERE `entryorguid`=39627 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39627, 0, 0, 1, 20, 0, 100, 512, 25273, 0, 0, 0, 86, 84683, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On quest rewarded - Cross cast Ride Vehicle - Seat 1 spell'),
(39627, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3962700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On quest rewarded - Call Script'),
(39627, 0, 2, 0, 40, 0, 100, 512, 1, 3962700, 0, 0, 54, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Pause WP'),
(39627, 0, 3, 4, 40, 0, 100, 512, 2, 3962700, 0, 0, 54, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Pause WP'),
(39627, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 97, 10, 10, 0, 0, 0, 0, 8, 0, 0, 0, 5219.62, -2245.67, 1266.27, 0.62, 'Spirit of Goldrinn - On WP reached - Jump to Pos'),
(39627, 0, 5, 6, 40, 0, 100, 512, 6, 3962700, 0, 0, 54, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Pause WP'),
(39627, 0, 6, 7, 61, 0, 100, 512, 0, 0, 0, 0, 97, 10, 10, 0, 0, 0, 0, 8, 0, 0, 0, 5302.82, -2205.48, 1263.7, 6.07, 'Spirit of Goldrinn - On WP reached - Jump to Pos'),
(39627, 0, 7, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3962701, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Call Script 1'),
(39627, 0, 8, 0, 75, 0, 100, 512, 0, 39445, 5, 2000, 11, 40450, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On near creature - Melee Instakill execute'),
(39627, 0, 9, 0, 75, 0, 100, 512, 0, 46937, 2, 300, 11, 40450, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On near creature - Melee Instakill execute'),
(39627, 0, 10, 11, 40, 0, 100, 512, 10, 3962700, 0, 0, 54, 12000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Pause WP'),
(39627, 0, 11, 0, 61, 0, 100, 512, 0, 0, 0, 0, 97, 10, 10, 0, 0, 0, 0, 8, 0, 0, 0, 5345.48, -2129.54, 1280.52, 0.85, 'Spirit of Goldrinn - On WP reached - Jump to Pos'),
(39627, 0, 12, 13, 40, 0, 100, 512, 15, 3962700, 0, 0, 28, 84683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Remove Aura 84683 from owner'),
(39627, 0, 13, 0, 61, 0, 100, 512, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On WP reached - Remove unit_flags 33554432'),
(39627, 0, 14, 0, 19, 0, 100, 512, 25280, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 330700, 38821, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On Quest Taken - Set Data to npc 38821');

DELETE FROM `smart_scripts` WHERE `entryorguid`=39622 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39622, 0, 0, 1, 20, 0, 100, 512, 25272, 0, 0, 0, 86, 84683, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On quest rewarded - Cross cast Ride Vehicle - Seat 1 spell'),
(39622, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3962700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On quest rewarded - Call Script'),
(39622, 0, 2, 0, 40, 0, 100, 512, 1, 3962700, 0, 0, 54, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Pause WP'),
(39622, 0, 3, 4, 40, 0, 100, 512, 2, 3962700, 0, 0, 54, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Pause WP'),
(39622, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 97, 10, 10, 0, 0, 0, 0, 8, 0, 0, 0, 5219.62, -2245.67, 1266.27, 0.62, 'Spirit of Lo\'Gosh - On WP reached - Jump to Pos'),
(39622, 0, 5, 6, 40, 0, 100, 512, 6, 3962700, 0, 0, 54, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Pause WP'),
(39622, 0, 6, 7, 61, 0, 100, 512, 0, 0, 0, 0, 97, 10, 10, 0, 0, 0, 0, 8, 0, 0, 0, 5302.82, -2205.48, 1263.7, 6.07, 'Spirit of Lo\'Gosh - On WP reached - Jump to Pos'),
(39622, 0, 7, 0, 61, 0, 100, 512, 0, 0, 0, 0, 80, 3962701, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Call Script 1'),
(39622, 0, 8, 0, 75, 0, 100, 512, 0, 39445, 5, 2000, 11, 40450, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On near creature - Melee Instakill execute'),
(39622, 0, 9, 0, 75, 0, 100, 512, 0, 46937, 2, 300, 11, 40450, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On near creature - Melee Instakill execute'),
(39622, 0, 10, 11, 40, 0, 100, 512, 10, 3962700, 0, 0, 54, 12000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Pause WP'),
(39622, 0, 11, 0, 61, 0, 100, 512, 0, 0, 0, 0, 97, 10, 10, 0, 0, 0, 0, 8, 0, 0, 0, 5345.48, -2129.54, 1280.52, 0.85, 'Spirit of Lo\'Gosh - On WP reached - Jump to Pos'),
(39622, 0, 12, 13, 40, 0, 100, 512, 15, 3962700, 0, 0, 28, 84683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Remove Aura 84683 from owner'),
(39622, 0, 13, 0, 61, 0, 100, 512, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On WP reached - Remove unit_flags 33554432'),
(39622, 0, 14, 0, 19, 0, 100, 512, 25279, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 330702, 38821, 0, 0, 0, 0, 0, 'Spirit of Lo\'Gosh - On Quest Taken - Set Data to npc 38821'),
(39622, 0, 15, 0, 54, 0, 100, 0, 0, 0, 0, 0, 44, 3, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- inicio -------------------

DELETE FROM `creature_template` WHERE `entry`=38821;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(38821, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Dave\'s Industrial Light and Magic Bunny (Medium)(Sessile)', '', '', 0, 1, 1, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 2, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=38821;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(38821, 0, 0, 0, 1, 0, NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid`=38821 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38821, 0, 0, 0, 1, 0, 100, 0, 1, 2, 0, 0, 11, 75641, 4, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 'Bunny Cast Purple Beams');

DELETE FROM `creature` WHERE `guid`=330700;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(330700, 38821, 1, 616, 4979, 1, 6, 21072, 0, 5312.95, -2204.92, 1266.25, 1.71042, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=330702;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(330702, 38821, 1, 616, 4979, 1, 6, 21072, 0, 5312.95, -2204.92, 1266.25, 1.71042, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=271002;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(271002, 38821, 1, 616, 5018, 1, 1, 21072, 0, 4618.17, -1956.54, 1197.55, 5.06145, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

-- Fin -------------------------

DELETE FROM `creature_addon` WHERE `guid`=330702;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(330702, 0, 0, 0, 0, 0, '52855');

-- inicio --------------------------------

DELETE FROM `smart_scripts` WHERE `entryorguid`=39446 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39446, 0, 0, 1, 6, 0, 100, 0, 0, 0, 0, 0, 86, 74077, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Death - Cross Cast spell Summon Spirit of Lo\'Gosh 74077'),
(39446, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 74061, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Death - Remove Aura 74061 to all party members Horde'),
(39446, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, 86, 74078, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Death - Cross Cast spell Summon Spirit of Goldrinn 74078'),
(39446, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 74061, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Death - Remove Aura 74061 to all party members Alliance'),
(39446, 0, 4, 0, 0, 0, 100, 0, 2000, 8000, 18000, 21000, 11, 37776, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - In combat - Cast Blood Howl'),
(39446, 0, 5, 0, 4, 0, 100, 0, 0, 0, 0, 0, 85, 74061, 16, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Aggro - Force Cast Invoker spell 74061'),
(39446, 0, 6, 0, 2, 0, 100, 1, 70, 90, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Healt PCT - Says text 0'),
(39446, 0, 7, 0, 2, 0, 100, 1, 20, 50, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lycanthoth - On Healt PCT - Says text 1');

DELETE FROM `creature_text` WHERE `entry`=39446;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(39446, 0, 0, 'Log\'loth og shandai, mortal. Only death is eternal. You will be undone.', 12, 0, 100, 0, 0, 21900, '', 39639),
(39446, 1, 0, 'Fate subjugates faith, mortal. Your prayers are meaningless here.', 12, 0, 100, 0, 0, 21901, '', 39640);

DELETE FROM `conditions` WHERE `SourceEntry`=74075;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 74075, 0, 0, 29, 0, 39446, 30, 0, 1, 0, 0, '', 'Spell 74075 only work if player haven	 creature 39446 close');


DELETE FROM `conditions` WHERE `SourceEntry`=39446;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 39446, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', 'Script only runs if player is Horde'),
(22, 3, 39446, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', 'Script only runs if player is Aliance');

-- fin --------------------------------
DELETE FROM `creature_template_addon` WHERE `entry`=39446;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39446, 0, 0, 0, 0, 0, '74061');

DELETE FROM `creature_template` WHERE `entry`=39627;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39627, 0, 0, 0, 0, 0, 23990, 0, 0, 0, 'Spirit of Goldrinn', '', '', 0, 80, 81, 0, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 898, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 581, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=39622;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39622, 0, 0, 0, 0, 0, 23990, 0, 0, 0, 'Spirit of Lo\'Gosh', '', '', 0, 80, 81, 0, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 898, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 581, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=3962200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3962200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 85, 89147, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(3962200, 9, 1, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 5360.38, -2185.64, 1287.64, 5.9263, ''),
(3962200, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3962700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3962700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On Timed Script - Set unit_flags to 33554432'),
(3962700, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 53, 1, 3962700, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn - On Timed Script - Start WP');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3962701 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3962701, 9, 0, 0, 0, 0, 100, 0, 1000, 2000, 2000, 2000, 45, 1, 1, 0, 0, 0, 0, 14, 254361, 202658, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Set Data to Gobj'),
(3962701, 9, 1, 0, 0, 0, 100, 0, 1000, 2000, 1000, 1000, 45, 1, 1, 0, 0, 0, 0, 14, 254362, 206394, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Set Data to Gobj'),
(3962701, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 45, 1, 1, 0, 0, 0, 0, 14, 254360, 202658, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Set Data to Gobj'),
(3962701, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 5, 4, 0, 0, 0, 0, 0, 10, 178398, 39432, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Force Npc to play emote 4'),
(3962701, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 0, 10, 113002, 39435, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Force Npc to play emote 4'),
(3962701, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 0, 10, 112732, 43547, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Force Npc to play emote 4'),
(3962701, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 0, 10, 113003, 39434, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Force Npc to play emote 4'),
(3962701, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 0, 10, 5222290, 39433, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Force Npc to play emote 4'),
(3962701, 9, 8, 0, 0, 0, 100, 0, 500, 500, 500, 500, 12, 46937, 2, 30000, 0, 0, 0, 8, 0, 0, 0, 5342.91, -2148.81, 1280.41, 1.32, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Summon npc 46937'),
(3962701, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46937, 2, 30000, 0, 0, 0, 8, 0, 0, 0, 5352.76, -2135.06, 1280.52, 2.63, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Summon npc 46937'),
(3962701, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46937, 2, 30000, 0, 0, 0, 8, 0, 0, 0, 5355.21, -2127.25, 1280.52, 3.19, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Summon npc 46937'),
(3962701, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46937, 2, 30000, 0, 0, 0, 8, 0, 0, 0, 5348.17, -2113.93, 1280.52, 4.31, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Summon npc 46937'),
(3962701, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46937, 2, 30000, 0, 0, 0, 8, 0, 0, 0, 5338.06, -2118.01, 1280.51, 5.44, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Summon npc 46937'),
(3962701, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 46937, 2, 30000, 0, 0, 0, 8, 0, 0, 0, 5335.32, -2131.72, 1280.51, 5.94, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Summon npc 46937'),
(3962701, 9, 14, 0, 0, 0, 100, 0, 14000, 14000, 14000, 14000, 5, 15, 0, 0, 0, 0, 0, 11, 46937, 30, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Force Npcs to play emote 15'),
(3962701, 9, 15, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 84120, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Cast spell 84120'),
(3962701, 9, 16, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 5352.76, -2135.06, 1280.52, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Move to Pos'),
(3962701, 9, 17, 0, 0, 0, 100, 0, 900, 900, 900, 900, 69, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 5355.21, -2127.25, 1280.52, 1.32, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Move to Pos'),
(3962701, 9, 18, 0, 0, 0, 100, 0, 900, 900, 900, 900, 69, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 5348.17, -2113.93, 1280.52, 1.52, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Move to Pos'),
(3962701, 9, 19, 0, 0, 0, 100, 0, 900, 900, 900, 900, 69, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 5338.06, -2118.01, 1280.51, 3.36, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Move to Pos'),
(3962701, 9, 20, 0, 0, 0, 100, 0, 900, 900, 900, 900, 69, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 5335.32, -2131.72, 1280.51, 3.37, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Move to Pos'),
(3962701, 9, 21, 0, 0, 0, 100, 0, 900, 900, 900, 900, 69, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 5342.91, -2148.81, 1280.41, 6.01, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Move to Pos'),
(3962701, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 84120, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spirit of Goldrinn/Lo\'Gosh - On Timed Script - Remove aura 84120');

DELETE FROM `creature_template_addon` WHERE entry=39622;

DELETE FROM `waypoints` WHERE entry=3962700;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(3962700, 1, 5176.94, -2274.33, 1276.7, 'WP 1'),
(3962700, 2, 5207.07, -2253.94, 1269.93, 'WP 2'),
(3962700, 3, 5219.62, -2245.67, 1266.27, 'WP 3'),
(3962700, 4, 5249.94, -2223.88, 1264.14, 'WP 4'),
(3962700, 5, 5275.39, -2216.63, 1260.22, 'WP 5'),
(3962700, 6, 5286.67, -2204.06, 1261.22, 'WP 6'),
(3962700, 7, 5302.82, -2205.48, 1263.7, 'WP 7'),
(3962700, 8, 5318.91, -2189.71, 1265.33, 'WP 8'),
(3962700, 9, 5348.67, -2150.98, 1279.39, 'WP 9'),
(3962700, 10, 5348.71, -2149.74, 1279.85, 'WP 10'),
(3962700, 11, 5347.44, -2147.81, 1280.51, 'WP 12'),
(3962700, 12, 5346.72, -2159.55, 1276.67, 'WP 13'),
(3962700, 13, 5335.27, -2174.74, 1271.62, 'WP 14'),
(3962700, 14, 5367.74, -2188.31, 1291.77, 'WP 15'),
(3962700, 15, 5366.91, -2187.95, 1291.54, 'WP 116');


DELETE FROM `conditions` WHERE SourceEntry=25300;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(20, 0, 25300, 0, 0, 8, 0, 25279, 0, 0, 0, 0, 0, '', 'horde'),
(20, 0, 25300, 0, 1, 8, 0, 25280, 0, 0, 0, 0, 0, '', 'ally'),
(19, 0, 25300, 0, 0, 106, 0, 25272, 64, 0, 0, 0, 0, '', ''),
(19, 0, 25300, 0, 1, 106, 0, 25273, 64, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE SourceEntry=25297;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(20, 0, 25297, 0, 1, 8, 0, 25280, 0, 0, 0, 0, 0, '', 'ally'),
(20, 0, 25297, 0, 0, 8, 0, 25279, 0, 0, 0, 0, 0, '', 'horde'),
(19, 0, 25297, 0, 0, 106, 0, 25272, 64, 0, 0, 0, 0, '', 'QUEST_ACCEPT QUEST_STATUS'),
(19, 0, 25297, 0, 1, 106, 0, 25273, 64, 0, 0, 0, 0, '', 'QUEST_ACCEPT QUEST_STATUS');

DELETE FROM `creature_template_addon` WHERE entry=39435;
DELETE FROM `creature_template_addon` WHERE entry=39434;
DELETE FROM `creature_template_addon` WHERE entry=39789;

DELETE FROM `creature` WHERE id=39789;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142899, 39789, 1, 616, 4988, 1, 65535, 0, 0, 5041.09, -2085.65, 1275.68, 5.88994, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=39789;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (39789, 0, 0, 0, 0, 0, 328, 0, 0, 0, 'Kristoff\'s Chain Vehicle', '', '', 0, 1, 1, 0, 0, 35, 35, 16777216, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33554944, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 705, 1, 5, NULL, NULL, 'SmartAI', 0, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=39789;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(39789, 46598, 1, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=39789;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(39789, 39640, 0, 1, 'kristoff', 6, 30000);

DELETE FROM `smart_scripts` WHERE `entryorguid`=39640 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39640, 0, 0, 0, 19, 0, 100, 0, 25332, 0, 0, 0, 85, 74351, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=39640;
DELETE FROM `creature_template_addon` WHERE entry=34527;

DELETE FROM `creature_template` WHERE `entry`=34527;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34527, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Dave\'s Industrial Light and Magic Bunny (Small)', '', '', 0, 1, 1, 3, 0, 190, 190, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, 'npc_cold_blood_trigger', 13623);

DELETE FROM `creature` WHERE `guid`=330687;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (330687, 34527, 1, 616, 4988, 1, 1, 0, 0, 5041.17, -2085.68, 1275.57, 6.11326, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_addon` WHERE `guid`=330687;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (330687, 0, 0, 0, 1, 0, '74344');

DELETE FROM `creature` WHERE guid IN (13004,112722);

DELETE FROM `creature` WHERE id IN (52594);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141556, 52594, 1, 616, 5016, 1, 6, 25007, 0, 5191.02, -1512.09, 1395.75, 2.18626, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141557, 52594, 1, 616, 4861, 1, 6, 25007, 0, 5045.58, -1529.02, 1407.19, 1.47411, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141624, 52594, 1, 616, 4861, 1, 6, 25007, 0, 5051.67, -1470.93, 1421.08, 2.22043, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141649, 52594, 1, 616, 4861, 1, 6, 25007, 0, 4895.8, -1532.01, 1355.24, 0.690452, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141650, 52594, 1, 616, 4861, 1, 6, 25007, 0, 4946.24, -1450.69, 1356.99, 4.40948, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141667, 52594, 1, 616, 5016, 1, 6, 25007, 0, 5253.87, -1411.88, 1395.75, 2.99839, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141684, 52594, 1, 616, 4861, 1, 6, 25007, 0, 4993.63, -1459.76, 1407.19, 2.96611, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141723, 52594, 1, 616, 5016, 1, 6, 25007, 0, 5230.72, -1538.69, 1395.75, 2.95012, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141724, 52594, 1, 616, 4861, 1, 6, 25007, 0, 5128.07, -1492.13, 1421.08, 0.425021, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141728, 52594, 1, 616, 4861, 1, 6, 25007, 0, 5112.71, -1294.6, 1461.98, 0.703507, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141735, 52594, 1, 616, 5022, 1, 6, 25007, 0, 5001.15, -1770.58, 1391.68, 1.71484, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0),
(141761, 52594, 1, 616, 4861, 1, 6, 25007, 0, 5008.59, -1569.68, 1426.52, 3.28042, 30, 20, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id IN (39997);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142768, 39997, 1, 616, 4861, 1, 1, 328, 0, 4946.95, -1579.12, 1327.44, 3.72931, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142769, 39997, 1, 616, 4861, 1, 1, 328, 0, 5129.54, -1458.34, 1346.04, 1.81649, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142770, 39997, 1, 616, 4861, 1, 1, 328, 0, 4988.49, -1478.4, 1329.31, 1.5065, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142771, 39997, 1, 616, 4861, 1, 1, 4626, 0, 4935.96, -1476.1, 1329.63, 0.189747, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142774, 39997, 1, 616, 4861, 1, 1, 6302, 0, 4896.63, -1576.46, 1329.93, 4.20946, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142775, 39997, 1, 616, 4861, 1, 1, 328, 0, 4944.08, -1571.17, 1328.43, 0.0156237, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142776, 39997, 1, 616, 4861, 1, 1, 6302, 0, 4888.39, -1536.87, 1337.96, 4.26192, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142777, 39997, 1, 616, 4861, 1, 1, 328, 0, 5016.57, -1562.53, 1331.33, 5.23723, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142778, 39997, 1, 616, 4861, 1, 1, 328, 0, 5013.67, -1434.14, 1334.07, 5.42182, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142779, 39997, 1, 616, 4861, 1, 1, 328, 0, 5136.82, -1460.86, 1346.1, 0.950407, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142780, 39997, 1, 616, 4861, 1, 1, 4626, 0, 5058.41, -1491.71, 1340.05, 1.89791, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142781, 39997, 1, 616, 4861, 1, 1, 328, 0, 5070.73, -1410.9, 1340.34, 1.12385, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142782, 39997, 1, 616, 4861, 1, 1, 4626, 0, 5042.95, -1444.57, 1336.5, 1.34161, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142783, 39997, 1, 616, 4861, 1, 1, 6302, 0, 5037.1, -1396.99, 1337.92, 5.80726, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142798, 39997, 1, 616, 4861, 1, 1, 328, 0, 5071.96, -1359.24, 1346.73, 0.625925, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142804, 39997, 1, 616, 4861, 1, 1, 4626, 0, 5126.46, -1375.46, 1351.57, 1.62749, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142805, 39997, 1, 616, 4861, 1, 1, 4626, 0, 5160.94, -1297.2, 1367.64, 0.712861, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142808, 39997, 1, 616, 4861, 1, 1, 4626, 0, 5179.69, -1358.79, 1359.12, 4.64692, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142809, 39997, 1, 616, 4861, 1, 1, 4626, 0, 5204.49, -1397.12, 1359.44, 6.11223, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `report_quest` WHERE id=25392;

DELETE FROM `conditions` WHERE `SourceGroup`=11316;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 11316, 0, 0, 0, 9, 0, 25404, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=25940;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 25940, 0, 0, 8, 0, 25428, 0, 0, 0, 0, 0, '', ''),
(19, 0, 25940, 0, 0, 8, 0, 25382, 0, 0, 0, 0, 0, '', ''),
(19, 0, 25940, 0, 0, 8, 0, 25381, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25940, 0, 0, 8, 0, 25381, 0, 0, 0, 0, 0, '', ''),
(19, 0, 25940, 0, 0, 8, 0, 25392, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25940, 0, 0, 8, 0, 25382, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25940, 0, 0, 8, 0, 25428, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25940, 0, 0, 8, 0, 25392, 0, 0, 0, 0, 0, '', '');


DELETE FROM `quest_template` WHERE `Id`=25392;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25392, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25385, 0, -25382, 0, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57327, 57326, 57328, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Oh, Deer!', 'Rescue three Injured Fawns from The Inferno and escort them back to Mylune at the Grove of Aessina.', 'Do you speak deer? It\'s all in the nose.$B$B<She points to her nose.>$B$BThe does have fled the fires, but their little fawns - Some of them are still trapped in the burning and the hurt!$B$BGo back into the Inferno and escort three injured fawns back here to their mothers right here beside me.$B$BPlease save the little fawns, or I\'ll give you the big eyes!$B$B<Her eyes grow big and dewy.>', '', 'Oh yay! Happy little deer!$B$BNow they can grow up and have ADVENTURES.$B$BYou\'re swell.', '', 'Speak with Mylune at the Grove of Aessina in Hyjal.', 40031, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Fawn Escorted Home', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `conditions` WHERE `SourceGroup`=39999;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 39999, 74654, 0, 0, 9, 0, 25392, 0, 0, 0, 0, 0, '', '');

-- modificadas las coordenadas de el teleport
DELETE FROM `spell_target_position` WHERE `id`=26448;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(26448, 1, 7807.64, -2430.28, 488.71, 3.25298);

-- A través del Sueño 25325
DELETE FROM `creature_template` WHERE `entry`=40178;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (40178, 0, 0, 0, 0, 0, 29162, 0, 0, 0, 'Alysra', '', '', 0, 80, 80, 3, 0, 2233, 2233, 3, 1, 1.14286, 1, 1.14286, 1, 1, 464, 604, 0, 708, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 353, 512, 112, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4500, 8400, NULL, NULL, 'SmartAI', 0, 1, 5, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40178 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40178, 0, 0, 0, 60, 0, 100, 0, 2000, 2000, 2000, 2000, 45, 1, 1, 0, 0, 0, 0, 11, 40180, 10, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry`=40178;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40178, 0, 0, 0, 0, 0, '49414');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40140 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40140, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 29, 5, 180, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 'on data set follow closest player'),
(40140, 0, 1, 2, 38, 0, 100, 0, 0, 2, 0, 0, 15, 25325, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 0, 'give quest complete to player on data 2'),
(40140, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'die self');

DELETE FROM `creature_template_addon` WHERE `entry`=40140;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40140, 0, 0, 0, 0, 0, '74866');

DELETE FROM `creature_template` WHERE `entry`=40140;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (40140, 0, 0, 0, 0, 0, 1542, 0, 0, 0, 'Arch Druid Fandral Staghelm', '', '', 0, 83, 83, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 1.7, 2000, 2000, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 400, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=40139;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (40139, 0, 0, 0, 0, 0, 20628, 0, 0, 0, 'Captain Saynna Stormrunner', '', '', 12613, 80, 80, 3, 0, 2233, 2233, 3, 1, 1.14286, 1, 1, 1, 1, 422, 586, 0, 642, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 345, 509, 103, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4500, 8400, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 40139, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40139 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40139, 0, 0, 0, 19, 0, 100, 0, 25325, 0, 0, 0, 85, 74894, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `quest_template` WHERE `Id`=25325;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25325, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25324, 0, 0, 25578, 4, 59000, 124800, 0, 77828, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57285, 57284, 57286, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Through the Dream', 'Deliver Arch Druid Fandral Staghelm to Alysra at the entrance of the Barrow Dens in Hyjal.', 'Alysra\'s plan might be necessary, $N.  I don\'t know how much longer we can hold off the cultists.$B$BFandral Staghelm is bound by powerful spells.  He won\'t be able to escape you, even inside the Emerald Dream.$B$BBeware, though, for all we know the nightmare has spread to this part of the world inside the dream.$B$BTake Fandral to the surface and hand him to Alysra.  Let us hope he\'s more secure in Moonglade than he is here.', 'Arch Druid Fandral Staghelm delivered', 'You did well, $n.  I will take Fandral to Moonglade myself.$B$BHis prison will be far enough from the battlefront there.', 'Is Staghelm with you, $N?', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `report_quest` WHERE `id`=25325;

DELETE FROM `conditions` WHERE `SourceEntry`=74895;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 74895, 0, 0, 29, 0, 40180, 10, 0, 1, 0, 0, '', '');

DELETE FROM `creature_template` WHERE `entry`=40180;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40180, 0, 0, 0, 0, 0, 1542, 0, 0, 0, 'Arch Druid Fandral Staghelm', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 400, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40180 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40180, 0, 0, 4, 54, 0, 100, 0, 0, 0, 0, 0, 11, 76236, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40180, 0, 1, 2, 38, 0, 100, 1, 1, 1, 0, 0, 15, 25325, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(40180, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 28, 76237, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(40180, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40180, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(40180, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 600000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- ¡Elemental! ID 25303

DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (39737,39736,39730,39738);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
('39737', '74288', '1', '0'),
('39736', '74290', '1', '0'),
('39730', '74287', '1', '0'),
('39738', '74292', '1', '0');

DELETE FROM `creature_template` WHERE `entry`=39737;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39737, 0, 0, 0, 0, 0, 31559, 0, 0, 0, 'Crucible of Earth', '', '', 0, 80, 80, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 34816, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=39736;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39736, 0, 0, 0, 0, 0, 31558, 0, 0, 0, 'Crucible of Air', '', '', 0, 80, 80, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 34816, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template` WHERE `entry`=39730;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39730, 0, 0, 0, 0, 0, 31556, 0, 0, 0, 'Crucible of Fire', '', '', 0, 80, 80, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 34816, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=39738;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39738, 0, 0, 0, 0, 0, 31560, 0, 0, 0, 'Crucible of Water', '', '', 0, 80, 80, 3, 0, 35, 35, 16777216, 1, 1.14286, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 34816, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

-- Gossip Npc ID 39644 no tenia el gossip
DELETE FROM `gossip_menu_option` WHERE `menu_id`=39644 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(39644, 0, 0, '<The Twilight Servitor gurgles at you, white spittle foaming and bubbling from his mouth.>', 39720, 1, 1, 0, 0, 0, 0, NULL, NULL);


DELETE FROM `creature` WHERE guid=113004;

DELETE FROM `gameobject` WHERE `guid`=67104;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67104, 202765, 1, 616, 4861, 1, 1, 5171.07, -1345.33, 1359.51, 3.62776, 0, 0, 0.970601, -0.240695, 300, 0, 1);

DELETE FROM `gameobject` WHERE `guid`=67106;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67106, 202764, 1, 616, 4861, 1, 1, 5021.98, -1427.43, 1334.77, 5.97572, 0, 0, 0.153128, -0.988206, 300, 0, 1);

DELETE FROM `gameobject` WHERE `guid`=67105;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67105, 202763, 1, 616, 4861, 1, 1, 4910.74, -1535.7, 1333.63, 1.77776, 0, 0, 0.776367, 0.630281, 300, 0, 1);

UPDATE `creature` SET  `spawntimesecs`='30' WHERE id IN (40240);

DELETE FROM `creature` WHERE `guid`=112747;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112747, 40340, 1, 616, 4861, 1, 1, 35321, 0, 4579.18, -2507.21, 1123.89, 3.1692, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

-- inicio ---------------------------------- 
DELETE FROM `creature_template` WHERE `entry`=40341;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (40341, 0, 0, 0, 0, 0, 34371, 0, 0, 0, 'Tortolla', '', '', 11401, 84, 84, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 0.992063, 1, 1, 519, 693, 0, 815, 4.6, 2000, 2000, 1, 32768, 34816, 0, 0, 0, 0, 0, 0, 384, 546, 157, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, '', 0, 1, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE id=40341;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113416, 40341, 1, 616, 5018, 1, 1, 34371, 0, 4628.07, -1975.84, 1193.52, 3.58024, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=40341;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40341, 0, 0, 0, 1, 0, NULL);


-- Fin ----------------------------------------

DELETE FROM `smart_scripts` WHERE `entryorguid`=52383 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (52383, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 52383, 0, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `guid`=141991;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141991, 52383, 1, 616, 5018, 0, 1, 37866, 0, 4616.17, -1975.33, 1193.4, 4.18137, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=52383;

-- inicio ------------------------

DELETE FROM `gameobject_template` WHERE `entry`=208902;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(208902, 1, 10579, 'Fire Portal', '', '', '', 114, 4, 2.65, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE `id`=208902;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67994, 208902, 1, 616, 4861, 1, 6, 4604.98, -2719.33, 1145.22, 1.7438, 0, 0, 0.765553, 0.643373, 300, 0, 0),
(19010, 208902, 1, 616, 5018, 1, 6, 4639.83, -1979.22, 1191.51, 3.03895, 0, 0, 0.998683, 0.0512983, 300, 0, 0),
(18926, 208902, 1, 616, 4861, 1, 6, 4918.29, -1483.5, 1327.84, 5.4118, 0, 0, 0.422039, -0.906578, 300, 0, 0);


-- Fin -----------------------


-- inicio ---------------------------

DELETE FROM `creature_template` WHERE `entry`=40544;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40544, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Rod of Subjugation 01', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1.1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `creature` WHERE id=40544;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(109201, 40544, 1, 616, 5018, 1, 1, 0, 0, 4619.49, -1956.05, 1198.88, 5.14747, 120, 0, 0, 42, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=40544;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40544, 0, 0, 0, 0, 0, '75602');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40544 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40544, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4054400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4054400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4054400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 40544, 0, 0, 0, 0, 0, 18, 60, 0, 0, 0, 0, 0, 0, ''),
(4054400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4054400, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40551, 3, 120000, 0, 0, 0, 8, 0, 0, 0, 4611.7, -1961.33, 1192.07, 1.30984, ''),
(4054400, 9, 3, 0, 0, 0, 100, 0, 20000, 20000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_equip_template` WHERE `entry`=40544;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(40544, 19987, 0, 42921);

-- Fin ---------------------------------


-- inicio ---------------------------------------

DELETE FROM `creature_template` WHERE `entry`=52425;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(52425, 0, 0, 0, 0, 0, 1244, 0, 0, 0, 'Tooga', '', '', 12762, 85, 85, 3, 0, 35, 35, 1, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature_text` WHERE `entry`=52425;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(52425, 0, 0, 'NOW, YOUNG ONES! ATTACK THE PORTAL! FOR TORTOLLA!', 14, 0, 100, 0, 0, 0, '', 51261);

DELETE FROM `smart_scripts` WHERE `entryorguid`=52425 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(52425, 0, 0, 0, 62, 0, 100, 0, 12762, 0, 0, 0, 80, 5242502, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52425, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 5242500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(52425, 0, 2, 0, 40, 0, 100, 0, 3, 0, 0, 0, 80, 5242501, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=5242500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5242500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5242500, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 53, 0, 52425, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=5242501 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5242501, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 54, 18000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5242501, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5242501, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 12, 52383, 3, 300000, 0, 0, 0, 8, 0, 0, 0, 4632.4, -1978.12, 1193.52, 2.68521, ''),
(5242501, 9, 3, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=5242502 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5242502, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 52425, 3, 300000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5242502, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(5242502, 9, 2, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoints` WHERE `entry`=52425;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(52425, 1, 4613.62, -1952.31, 1192.7, ''),
(52425, 2, 4615.54, -1965.32, 1192.77, ''),
(52425, 3, 4617.97, -1967.18, 1193.23, '');

-- Fin ------------------------------------------

-- inicio --------------------------------
DELETE FROM `smart_scripts` WHERE `entryorguid`=40551 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40551, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(40551, 0, 1, 0, 6, 0, 70, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40551, 0, 2, 0, 4, 0, 50, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=40551;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(301014, 40551, 1, 616, 5018, 0, 1, 22702, 0, 4618.84, -1951.85, 1194.04, 0.0111038, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(295004, 40551, 1, 616, 5018, 0, 1, 22702, 0, 4643.41, -2000.23, 1193.11, 0.762314, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);
-- Fin ---------------------------

-- incion --------------------------
-- objetos ID 202955 202954
DELETE FROM `conditions` WHERE `ConditionValue1`=25514;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 202955, 1, 0, 9, 0, 25514, 0, 0, 0, 0, 0, '', ' Allow sai action only if quest  has been taken'),
(22, 1, 202954, 1, 0, 9, 0, 25514, 0, 0, 0, 0, 0, '', ' Allow sai action only if quest  has been taken');

DELETE FROM `gameobject_template` WHERE `entry`=202954;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(202954, 1, 9469, 'Rod of Subjugation', '', 'Disabling', '', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 93, 3000, 0, 0, 1, 40509, 0, 0, 9512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 15595);

DELETE FROM `gameobject_template` WHERE `entry`=202955;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(202955, 1, 9469, 'Rod of Subjugation', '', 'Disabling', '', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 93, 3000, 0, 0, 1, 40509, 0, 0, 9513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 15595);

DELETE FROM `gameobject` WHERE `guid`=67086;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67086, 202955, 1, 616, 5018, 1, 1, 4642.42, -1997.32, 1193.23, 1.88128, 0, 0, 0.807935, 0.589272, 25, 0, 1);

DELETE FROM `smart_scripts` WHERE `entryorguid`=202955 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(202955, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 40545, 15, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=202954 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(202954, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 40544, 15, 0, 0, 0, 0, 0, '');


DELETE FROM `gameobject` WHERE `guid`=67085;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67085, 202954, 1, 616, 5018, 1, 1, 4613.74, -1944.29, 1191, 1.25296, 0, 0, 0.586295, 0.810097, 25, 0, 1);

-- Fin -----------------------


-- inicio --------------------------------------

DELETE FROM `creature_template` WHERE `entry`=42389;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(42389, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Tortolla\'s Chain Bunny', '', '', 0, 1, 1, 0, 0, 190, 190, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);

DELETE FROM `creature` WHERE `guid`=142824;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142824, 42389, 1, 616, 5018, 1, 1, 32832, 0, 4635.74, -1990.61, 1198.57, 2.23402, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry=42389;

-- inicio ---------------------------------

DELETE FROM `creature_template` WHERE `entry`=39858;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39858, 0, 0, 0, 0, 0, 31605, 0, 0, 0, 'Arch Druid Hamuul Runetotem', '', '', 11379, 88, 88, 3, 0, 2233, 2233, 7, 1, 1.14286, 1, 1, 1, 1, 523, 602, 0, 482, 3.6, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 0, 523, 602, 482, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 1, 1.35, 0.9421, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=39858 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39858, 0, 0, 1, 20, 0, 100, 0, 25520, 0, 0, 0, 85, 87516, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(39858, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 53936, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=46998;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(46998, 0, 0, 0, 0, 0, 35370, 0, 0, 0, 'Vision of Ysera', '', '', 12167, 1, 1, 0, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 500, 500, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=46998;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(46998, 0, 0, 0, 0, 0, '76743');

DELETE FROM `creature_text` WHERE `entry`=46998;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(46998, 0, 0, 'A vision of Ysera materializes before you.', 16, 0, 100, 0, 0, 0, '', 47021),
(46998, 1, 0, 'So Tortolla has risen to fight at our side. You are wise, $N. it is difficult to earn that ancient\'s trust. He will be a stalwart companion.', 12, 0, 100, 0, 2000, 0, '', 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=46998 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46998, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4699800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4699800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4699800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4699800, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4699800, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=41084;
DELETE FROM `creature` WHERE id=50082;

-- quest 

DELETE FROM `smart_scripts` WHERE `entryorguid`=41223 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41223, 0, 0, 1, 8, 0, 100, 0, 77288, 0, 0, 0, 99, 3, 0, 0, 0, 0, 0, 15, 203208, 10, 0, 0, 0, 0, 0, ''),
(41223, 0, 1, 0, 61, 0, 100, 0, 0, 1, 0, 0, 11, 77308, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `gameobject_template` WHERE `entry`=203208;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(203208, 10, 9532, 'Shadow Cloak Generator', '', 'Deactivating', '', 0, 0, 2, 0, 0, 0, 0, 0, 0, 93, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 77288, 0, 203208, 0, 33516, 0, 0, 1, 0, 0, 0, 0, 9654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `creature_template` WHERE `entry`=41223;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41223, 0, 0, 0, 0, 0, 16480, 0, 0, 0, 'Shadow Cloak Control Bunny', '', '', 0, 81, 81, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 128, '', 13623);


DELETE FROM `creature` WHERE `id`=41030;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113129, 41030, 1, 616, 5087, 1, 1, 31508, 0, 4003.73, -2260.63, 1131.72, 1.39626, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113130, 41030, 1, 616, 5087, 1, 1, 31508, 0, 4056.27, -2265.69, 1131.89, 4.08407, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113131, 41030, 1, 616, 5087, 1, 1, 31508, 0, 3974.81, -2248.04, 1130.93, -2.57507, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113132, 41030, 1, 616, 5087, 1, 1, 31508, 0, 4042.36, -2244.23, 1132.07, 2.55173, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113133, 41030, 1, 616, 5087, 1, 1, 31508, 0, 4000.62, -2220.36, 1132.05, 4.32013, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113134, 41030, 1, 616, 5087, 1, 1, 31508, 0, 3937.45, -2206.53, 1124.31, 1.35966, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(16848, 41030, 1, 616, 5087, 1, 1, 31508, 0, 4019.14, -2215.54, 1132.05, -1.63939, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(17244, 41030, 1, 616, 5087, 1, 1, 31508, 0, 4040.22, -2262.28, 1132.07, 1.10596, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(17247, 41030, 1, 616, 5087, 1, 1, 31508, 0, 3986.65, -2241.1, 1132.3, 0, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(17632, 41030, 1, 616, 5087, 1, 1, 31508, 0, 3626.26, -2280.53, 1081.61, 5.54773, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(17647, 41030, 1, 616, 5087, 1, 1, 31508, 0, 3607.81, -2352.24, 1089.41, 4.18457, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(17758, 41030, 1, 616, 5087, 1, 1, 31508, 0, 3639.65, -2284.57, 1081.52, 1.20852, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41029;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113112, 41029, 1, 616, 5087, 1, 1, 0, 0, 3477.37, -2316.31, 969.488, 0.15003, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(113113, 41029, 1, 616, 5087, 1, 1, 0, 0, 3504.08, -2331.06, 970.96, 2.21955, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(113114, 41029, 1, 616, 5087, 1, 1, 0, 0, 3446.62, -2338.11, 970.221, 4.44616, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(113115, 41029, 1, 616, 5087, 1, 1, 0, 0, 3455.31, -2307.41, 969.804, 3.3034, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(113116, 41029, 1, 616, 5087, 1, 1, 0, 0, 3477.56, -2368.26, 971.106, 5.73813, 90, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(113117, 41029, 1, 616, 5087, 1, 1, 32268, 0, 4088.52, -2306.09, 1132.46, 2.80998, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113118, 41029, 1, 616, 5087, 1, 1, 32268, 0, 4014.97, -2299.68, 1139.69, 4.22142, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113119, 41029, 1, 616, 5087, 1, 1, 32268, 0, 3897.74, -2211.06, 1121.09, 1.53589, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113120, 41029, 1, 616, 5087, 1, 1, 32268, 0, 4102.12, -2287.59, 1132.57, 2.72232, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113121, 41029, 1, 616, 5087, 1, 1, 32268, 0, 3717.91, -2267.41, 1130.2, 3.64774, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113122, 41029, 1, 616, 5087, 1, 1, 32268, 0, 4083.67, -2299.06, 1132.07, 4.13643, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113123, 41029, 1, 616, 5087, 1, 1, 32268, 0, 3639.38, -2345.11, 1089.47, 5.3058, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113124, 41029, 1, 616, 5087, 1, 1, 32268, 0, 3860.63, -2274.63, 1159.24, 0.0349066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113125, 41029, 1, 616, 5087, 1, 1, 32268, 0, 4018.2, -2280.57, 1132.62, -1.77823, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

-- Mision Desensamblaje ID 25761 100% blizzlike
-- faltan detalles

DELETE FROM `conditions` WHERE `SourceEntry`=77231;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 77231, 0, 0, 31, 1, 3, 41031, 0, 0, 0, 0, '', '');

DELETE FROM `creature` WHERE `id`=41031;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113106, 41031, 1, 616, 5087, 1, 1, 32341, 0, 4048.71, -2271.87, 1132.03, 0.835849, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113107, 41031, 1, 616, 5087, 1, 1, 32341, 0, 3976.34, -2250.31, 1130.86, 0.767945, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113108, 41031, 1, 616, 5087, 1, 1, 32341, 0, 4025.15, -2207.71, 1132.8, 4.34641, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113109, 41031, 1, 616, 5087, 1, 1, 32341, 0, 3933.4, -2233.2, 1125.03, 2.00713, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113110, 41031, 1, 616, 5087, 1, 1, 32341, 0, 4000.34, -2208.23, 1132.15, 4.95674, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113111, 41031, 1, 616, 5087, 1, 1, 32341, 0, 3630.07, -2270.73, 1081.58, 3.92699, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(16614, 41031, 1, 616, 5087, 1, 1, 32341, 0, 3647.77, -2291.15, 1082.27, 3.59538, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(16810, 41031, 1, 616, 5087, 1, 1, 32341, 0, 3611.08, -2356.56, 1089.47, 1.13446, 90, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=41031;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41031, 0, 0, 0, 0, 0, 32341, 0, 0, 0, 'Twilight Juggernaut', '', '', 0, 81, 81, 3, 0, 2146, 2146, 0, 1, 1.14286, 0.888888, 1.14286, 1, 0, 464, 604, 0, 708, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 353, 512, 112, 2, 0, 0, 41031, 0, 41031, 0, 0, 0, 0, 0, 0, 77224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid`=41031 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41031, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 4103100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41031, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4103100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4103100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4103100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4103100, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `item_template` WHERE `entry`=55883;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES 
(55883, 12, 0, -1, 'Thisalee\'s Shiv', 67912, 1, 64, 8192, 0.9537, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77231, 0, 0, 2000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=77231;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(77231, 115001, 0, '');

DELETE FROM `spell_dbc` WHERE `Id`=115001;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES 
(115001, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `spelleffect_dbc` WHERE `Id`=155994;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(155994, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70035, 3048, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 115001, 0);

DELETE FROM `creature_text` WHERE entry=40289;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(40289, 0, 0, 'I fear for Alysra\'s fate.  Fandral\'s corruption ran deeper than anything I encountered in the nightmare.  Yet we can\'t afford to dwell on this.', 12, 0, 100, 0, 0, 20779, 'Ysera', 0),
(40289, 1, 0, 'During my stay in the dream I made a vital discovery. The rift that weakens the boundaries of this world has hastened the return of powerful allies.', 12, 0, 100, 0, 0, 20780, 'Ysera', 0),
(40289, 2, 0, 'The Ancient Guardians are coming back.  Cenarius, Aviana, Goldrinn... I can feel their presence.  We must make sure we usher them into this world.  Their timely aid will be indispensable.', 12, 0, 100, 0, 0, 20781, 'Ysera', 0);

DELETE FROM `gameobject`  WHERE id=203066;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67276, 203066, 1, 616, 5064, 1, 1, 5001.78, -2155.88, 1134.25, 1.20086, 0, 0, 0.564998, 0.825093, 30, 0, 1),
(67277, 203066, 1, 616, 5064, 1, 1, 4977.37, -2170.96, 1117.75, 0.819943, 0, 0, 0.398583, 0.917132, 30, 0, 1),
(67278, 203066, 1, 616, 5064, 1, 1, 4990.62, -2186.32, 1123.22, 1.83311, 0, 0, 0.793509, 0.608559, 30, 0, 1),
(67279, 203066, 1, 616, 5064, 1, 1, 5023.02, -2187.56, 1132.86, 4.98819, 0, 0, 0.603193, -0.797595, 30, 0, 1),
(67280, 203066, 1, 616, 5064, 1, 1, 5023.5, -2154.45, 1136.29, 3.54086, 0, 0, 0.98014, -0.198309, 30, 0, 1),
(67281, 203066, 1, 616, 5064, 1, 1, 5086.74, -2162.09, 1136.61, 4.45225, 0, 0, 0.792847, -0.60942, 30, 0, 1),
(67282, 203066, 1, 616, 5064, 1, 1, 5093.34, -2151.23, 1136.61, 5.64341, 0, 0, 0.314458, -0.949271, 30, 0, 1),
(67283, 203066, 1, 616, 5064, 1, 1, 5074.81, -2131.49, 1136.6, 0.770011, 0, 0, 0.375564, 0.926796, 30, 0, 1),
(67285, 203066, 1, 616, 5064, 1, 1, 5046.77, -2133.61, 1136.58, 6.00745, 0, 0, 0.13743, -0.990512, 30, 0, 1),
(67286, 203066, 1, 616, 5064, 1, 1, 5030.73, -2102.46, 1143.06, 0.0070126, 0, 0, 0.00350629, 0.999994, 30, 0, 1),
(67287, 203066, 1, 616, 5064, 1, 1, 4983.27, -2094.41, 1144.76, 1.77809, 0, 0, 0.77647, 0.630154, 30, 0, 1),
(67288, 203066, 1, 616, 5064, 1, 1, 4981.48, -2109.95, 1144.76, 1.76238, 0, 0, 0.771497, 0.636233, 30, 0, 1);

DELETE FROM `creature_template` WHERE `entry`=40172;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40172, 0, 0, 0, 0, 0, 11333, 0, 0, 0, 'Tyrus Blackhorn', '', '', 0, 85, 85, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=40172;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40172, 0, 0, 0, 0, 0, '49415');

DELETE FROM `creature_text` WHERE `entry`=40172;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(40172, 0, 0, 'Ashes from the plane below, scattered by the hand of foe...', 12, 0, 100, 1, 0, 0, '', 40136),
(40172, 1, 0, 'Gods of terror, quake and thunder, tear these mortal lands asunder!', 12, 0, 100, 5, 0, 0, '', 0),
(40172, 2, 0, 'Tyrus Blackhorn barks a cruel laugh.', 16, 0, 100, 11, 0, 0, '', 0),
(40172, 3, 0, 'Thank you, mortal! Your heroism in The Inferno has made my escape possible.', 12, 0, 100, 21, 0, 0, '', 40139),
(40172, 4, 0, 'As a reward, I will allow you to live.', 12, 0, 100, 1, 0, 0, '', 40140),
(40172, 5, 0, 'But your time will coon soon enough. Yes, mortal. Soon enough...', 12, 0, 100, 0, 0, 0, '', 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40172 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40172, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4017200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4017200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4017200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 74787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 4, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 5, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 28, 74787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 8, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 52096, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4017200, 9, 9, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=41308;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (41308, 0, 0, 0, 0, 0, 32234, 0, 0, 0, 'Aviana', '', '', 11888, 82, 82, 3, 0, 35, 35, 3, 1, 1.14286, 1.38889, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=41308;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(41308, 0, 0, 0, 0, 0, '60921 76743');

DELETE FROM `smart_scripts` WHERE `entryorguid`=41308 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41308, 0, 0, 0, 20, 0, 100, 0, 25807, 0, 0, 0, 33, 53937, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=41300;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_a`, `faction_h`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41300, 0, 0, 0, 0, 0, 15512, 0, 0, 0, 'Aviana\'s Egg', '', '', 0, 85, 85, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.35, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `conditions` WHERE `SourceEntry`=77394;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 77394, 0, 0, 29, 0, 41300, 5, 0, 0, 0, 0, '', '');

DELETE FROM `creature_template_addon` WHERE `entry`=41300;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(41300, 0, 0, 0, 0, 0, '49415 77392');

DELETE FROM `smart_scripts` WHERE `entryorguid`=41300 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41300, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 80, 4130000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4130000 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4130000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 41310, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4130000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4130000, 9, 2, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- auras duplicadas db error
DELETE FROM `creature_template_addon` WHERE entry=50083;


DELETE FROM `creature_template_addon` WHERE entry=50083;

DELETE FROM `creature_questrelation` WHERE `id`=40578 AND `quest`=29177;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (40578, 29177);

DELETE FROM `creature` WHERE `id`=52853;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141582, 52853, 1, 616, 5781, 1, 4, 1070, 0, 4631.87, -2100.09, 1239.05, 5.47814, 900, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(141583, 52853, 1, 616, 5781, 1, 4, 1070, 0, 4622.41, -2101.74, 1237.91, 5.90087, 900, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41480;

DELETE FROM `creature` WHERE `guid`=113417;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113417, 41504, 1, 616, 4861, 1, 2, 34371, 0, 4475.76, -2706.74, 1101.39, 4.5204, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=112749;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112749, 41507, 1, 616, 4861, 1, 2, 32496, 0, 4481.06, -2722.88, 1101.63, 2.79253, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry=41507;


DELETE FROM `creature_template` WHERE `entry`=39797;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (39797, 0, 0, 0, 0, 0, 31520, 0, 0, 0, 'Kristoff Manheim', '', '', 11289, 81, 81, 0, 0, 35, 35, 1, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=39797 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39797, 0, 0, 0, 62, 0, 100, 0, 11289, 0, 0, 0, 80, 3979700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39797, 0, 1, 0, 38, 0, 100, 1, 1, 1, 0, 0, 80, 3979701, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39797, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 41, 300000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3979700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3979700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3979700, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3979700, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 58506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3979700, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 29, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=3979701 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3979701, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3979701, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 11, 35845, 12, 0, 0, 0, 0, 0, ''),
(3979701, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 39808, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(3979701, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 74351, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(3979701, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3979701, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry`=39797;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39797, 0, 0, 0, 0, 0, '58506');

DELETE FROM `creature_text` WHERE `entry`=39797;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(39797, 0, 0, 'Okay, let\'s do this! You fight the ogres, and I will... not fight them. Head for the exit!', 12, 0, 100, 0, 2000, 0, 39779, ''),
(39797, 1, 0, 'We made it! I\'ll find my way back on my own. Do me a favor and go tell Royce DuskwhipserÃâ€° where he can stick his stupid Eye of Twilight.', 12, 0, 100, 0, 2000, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=41089;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (41089, 0, 0, 0, 0, 0, 32308, 0, 0, 0, 'Vision of Sethria', '', '', 0, 83, 83, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=41089;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(41089, 0, 0, 'This is the one. The ancient will be ours. ', 12, 0, 100, 0, 0, 0, 0, ''),
(41089, 1, 0, 'Take the others to the Firelands Hatchery! Soon we will possess the skies. ', 12, 0, 100, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=41089 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41089, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4108900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4108900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4108900, 9, 0, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4108900, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 77581, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'no idea spell'),
(4108900, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4108900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 19, 41092, 10, 0, 0, 0, 0, 0, ''),
(4108900, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 41092, 10, 0, 0, 0, 0, 0, ''),
(4108900, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `guid`=31759;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(31759, 41200, 1, 616, 5019, 1, 1, 0, 0, 4424.87, -2074.07, 1210.66, 4.75398, 120, 0, 0, 3052, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry=40833;

DELETE FROM `smart_scripts` WHERE entryorguid=40833;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40833, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(40833, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving on Aggro'),
(40833, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt on Aggro'),
(40833, 0, 3, 0, 9, 1, 100, 0, 0, 40, 3400, 4700, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt'),
(40833, 0, 4, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in bolt Range'),
(40833, 0, 5, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 15 Yards'),
(40833, 0, 6, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving when in bolt Range'),
(40833, 0, 7, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 2 at 15% Mana'),
(40833, 0, 8, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving at 15% Mana'),
(40833, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 When Mana is above 30%'),
(40833, 0, 10, 0, 0, 1, 100, 0, 5000, 6000, 18000, 22000, 11, 22127, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Entangling Roots'),
(40833, 0, 11, 0, 0, 1, 100, 0, 11000, 13000, 15000, 35000, 11, 23380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Moonfire');

DELETE FROM `gameobject` WHERE id=202703;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67247, 202703, 1, 0, 0, 1, 1, 5216.75, -2163.77, 1257.68, 1.4938, 0, 0, 0.679367, 0.733799, 30, 0, 1);

DELETE FROM `gameobject` WHERE id=202702;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67245, 202702, 1, 0, 0, 1, 1, 5246.31, -2173.69, 1263.05, 5.69018, 0, 0, 0.292175, -0.956365, 30, 0, 1);

DELETE FROM `gameobject` WHERE id=202705;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67250, 202705, 1, 0, 0, 1, 1, 5182.35, -2135.04, 1277.84, 3.89007, 0, 0, 0.930787, -0.365562, 30, 0, 1);

-- te inicia las misiones
DELETE FROM `creature_questrelation` WHERE id=40834;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40834, 25575),
(40834, 25577),
(40834, 25599),
(40834, 25600),
(40834, 25611),
(40834, 25612);

-- te finaliza las misiones
DELETE FROM `creature_involvedrelation` WHERE id=40834;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40834, 25575),
(40834, 25577),
(40834, 25599),
(40834, 25600),
(40834, 25617),
(40834, 25618),
(40834, 25623),
(40834, 25624);

UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=40107; 

-- 115010,68243,115011,94680,49417,49416,81080,74360,77402,77063,77403,74862,55164,55173,100615,75243,115012,99024,96590,96627,96623,96586,96600

-- inicio ------------------------------------------------
DELETE FROM `spell_area` WHERE `area`=4861;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115010, 4861, 25372, 0, 0, 0, 0, 2, 1, 64, 1),
(68243, 4861, 25372, 0, 0, 0, 0, 2, 1, 64, 1),
(115011, 4861, 29197, 1, 29197, 0, 0, 2, 1, 10, 11),
(94680, 4861, 29197, 1, 29197, 0, 0, 2, 1, 10, 11);

DELETE FROM `spelleffect_dbc` WHERE `Id`=156008;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES 
(156008, 6, 0, 261, 1, 0, 0, 0, 1, 0, 0, 0, 2, 170, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 115010, 0);

DELETE FROM `conditions` WHERE `SourceEntry`=70043 AND `SourceTypeOrReferenceId`=22;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 2, 70043, 0, 0, 1, 0, 115011, 0, 0, 0, 0, 0, '', ''),
(22, 2, 70043, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', ''),
(22, 2, 70043, 0, 0, 8, 0, 26786, 0, 0, 1, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=115017;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 115017, 0, 0, 29, 0, 40121, 50, 0, 1, 0, 0, '', ''),
(17, 0, 115017, 0, 0, 9, 0, 25428, 0, 0, 0, 0, 0, '', ''),
(17, 0, 115017, 0, 0, 23, 0, 4861, 0, 0, 0, 0, 0, '', ''),
(17, 0, 115017, 0, 0, 29, 0, 40107, 50, 0, 1, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=70038;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 70038, 0, 0, 1, 0, 94680, 0, 0, 0, 0, 0, '', ''),
(22, 1, 70038, 0, 0, 9, 0, 29197, 0, 0, 0, 0, 0, '', '');

-- final ---------------------------------------------------

DELETE FROM `spell_area` WHERE `area`=4978;


DELETE FROM `spell_area` WHERE `area`=4979;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(68243, 4979, 25269, 0, 25279, 0, 0, 2, 1, 74, 1),
(68243, 4979, 25268, 0, 25280, 0, 0, 2, 1, 74, 1),
(49417, 4979, 25280, 0, 0, 0, 0, 2, 1, 74, 11),
(49417, 4979, 25279, 0, 0, 0, 0, 2, 1, 74, 11),
(49416, 4979, 25273, 0, 25280, 0, 0, 2, 1, 64, 1),
(49416, 4979, 25272, 0, 25279, 0, 0, 2, 1, 64, 1);


DELETE FROM `spell_area` WHERE `area`=4980;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(68243, 4980, 25269, 0, 25279, 0, 0, 2, 1, 74, 1),
(68243, 4980, 25268, 0, 25280, 0, 0, 2, 1, 74, 1);

DELETE FROM `spell_area` WHERE `area`=4984;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115010, 4984, 25531, 0, 25608, 0, 0, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=4988;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(81080, 4988, 25301, 0, 25332, 0, 0, 2, 1, 74, 1),
(74360, 4988, 25332, 0, 0, 0, 0, 2, 1, 66, 1);


DELETE FROM `spell_area` WHERE `area`=4989;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(68243, 4989, 25830, 0, 0, 0, 0, 2, 1, 64, 1),
(49417, 4989, 25830, 0, 0, 0, 0, 2, 1, 64, 1),
(49416, 4989, 0, 0, 25830, 0, 0, 2, 1, 1, 11);

DELETE FROM `spell_area` WHERE `area`=4990;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(77402, 4990, 25795, 0, 25807, 0, 0, 2, 1, 64, 11),
(77063, 4990, 0, 0, 25731, 0, 0, 2, 1, 1, 11),
(77403, 4990, 25807, 0, 0, 0, 0, 2, 1, 66, 11);

DELETE FROM `spell_area` WHERE `area`=4991;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115010, 4991, 25531, 0, 25608, 0, 0, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=4993;
DELETE FROM `spell_area` WHERE `area`=4994;
DELETE FROM `spell_area` WHERE `area`=4995;
DELETE FROM `spell_area` WHERE `area`=4996;


DELETE FROM `spell_area` WHERE `area`=4998;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(49417, 4998, 25608, 0, 0, 0, 0, 2, 1, 64, 1),
(49416, 4998, 0, 0, 25608, 0, 0, 2, 1, 1, 11);

DELETE FROM `spell_area` WHERE `area`=4999;

DELETE FROM `spell_area` WHERE `area`=5013;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(74862, 5013, 25630, 0, 25428, 0, 0, 2, 1, 64, 11),
(49417, 5013, 25428, 0, 0, 0, 0, 2, 1, 64, 1);

DELETE FROM `spell_area` WHERE `area`=5015;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(68243, 5015, 29200, 0, 29200, 0, 0, 2, 1, 10, 11),
(115010, 5015, 29200, 0, 29200, 0, 0, 2, 1, 10, 11);

DELETE FROM `spell_area` WHERE `area`=5016;

DELETE FROM `spell_area` WHERE `area`=5017;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(55164, 5017, 0, 0, 0, 8326, 0, 2, 1, 64, 11),
(55173, 5017, 0, 0, 0, 8326, 8, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=5018;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(68243, 5018, 25372, 0, 0, 0, 0, 2, 1, 64, 11),
(115011, 5018, 29197, 0, 29197, 0, 0, 2, 1, 10, 11),
(115010, 5018, 25372, 0, 0, 0, 0, 2, 1, 64, 11),
(94680, 5018, 29197, 0, 29197, 0, 0, 2, 1, 10, 11);


DELETE FROM `spell_area` WHERE `area`=5019;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(100615, 5019, 25372, 0, 0, 0, 0, 2, 1, 64, 1),
(49416, 5019, 29198, 0, 0, 0, 0, 2, 1, 64, 1),
(94680, 5019, 25372, 0, 0, 0, 0, 2, 1, 64, 1),
(115010, 5019, 29198, 0, 0, 0, 0, 2, 1, 64, 1),
(49417, 5019, 29197, 0, 29200, 0, 0, 2, 1, 66, 11),
(115011, 5019, 29197, 0, 29198, 0, 0, 2, 1, 66, 11),
(115010, 5019, 25372, 0, 29197, 0, 0, 2, 1, 64, 9);

DELETE FROM `spell_area` WHERE `area`=5022;


DELETE FROM `spell_area` WHERE `area`=5032;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(75243, 5032, 25324, 0, 25325, 0, 0, 2, 1, 64, 11),
(49416, 5032, 25324, 0, 25578, 0, 0, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=5033;

DELETE FROM `spell_area` WHERE `area`=5037;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(55164, 5037, 0, 0, 0, 8326, 65527, 2, 1, 64, 11),
(55173, 5037, 0, 0, 0, 8326, 8, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=5038;

DELETE FROM `spell_area` WHERE `area`=5039;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(55173, 5039, 0, 0, 0, 8326, 0, 2, 1, 64, 11),
(55173, 5039, 0, 0, 0, 8326, 8, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=5040;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(49416, 5040, 0, 0, 25316, 0, 0, 2, 1, 64, 11),
(55164, 5040, 0, 0, 0, 8326, 8, 2, 1, 64, 11),
(55164, 5040, 0, 0, 0, 8326, 0, 2, 1, 64, 11),
(55173, 5040, 0, 0, 0, 8326, 65527, 2, 1, 64, 11);


DELETE FROM `spell_area` WHERE `area`=5045;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(55164, 5045, 0, 0, 0, 8326, 0, 2, 1, 64, 11),
(55164, 5045, 0, 0, 0, 8326, 8, 2, 1, 64, 11),
(55173, 5045, 0, 0, 0, 8326, 65527, 2, 1, 64, 11);


DELETE FROM `spell_area` WHERE `area`=5050;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115012, 5050, 25544, 0, 25560, 0, 0, 2, 1, 64, 11),
(68243, 5050, 25523, 0, 25544, 0, 0, 2, 1, 64, 11);

DELETE FROM `spell_area` WHERE `area`=5064;
DELETE FROM `spell_area` WHERE `area`=5067;

DELETE FROM `conditions` WHERE `SourceEntry`=99024;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 99024, 0, 0, 29, 0, 53427, 80, 0, 1, 28, 0, '', ''),
(17, 0, 99024, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 99024, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96590;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96590, 0, 0, 29, 0, 52238, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96590, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96590, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96627;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96627, 0, 0, 29, 0, 52265, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96627, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96627, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96623;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96623, 0, 0, 29, 0, 52261, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96623, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96623, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96586;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96586, 0, 0, 29, 0, 52233, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96586, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96586, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96600;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96600, 0, 0, 29, 0, 52244, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96600, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96600, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `spell_area` WHERE `area`=5087;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(68243, 5087, 29198, 0, 0, 0, 0, 2, 1, 64, 1),
(99024, 5087, 29128, 0, 0, 0, 0, 2, 1, 8, 1),
(96590, 5087, 29128, 0, 0, 0, 0, 2, 1, 8, 1),
(96627, 5087, 29128, 0, 0, 0, 0, 2, 1, 8, 1),
(96623, 5087, 29128, 0, 0, 0, 0, 2, 1, 8, 1),
(96586, 5087, 29128, 0, 0, 0, 0, 2, 1, 8, 1),
(96600, 5087, 29128, 0, 0, 0, 0, 2, 1, 8, 1);

DELETE FROM `spell_area` WHERE `area`=5099;

DELETE FROM `spell_area` WHERE `area`=5622;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(49417, 5622, 0, 0, 0, 0, 0, 2, 1, 1, 1);

DELETE FROM `spell_area` WHERE `area`=5623;
DELETE FROM `spell_area` WHERE `area`=5624;
DELETE FROM `spell_area` WHERE `area`=5625;
DELETE FROM `spell_area` WHERE `area`=5730;

DELETE FROM `spell_area` WHERE `area`=5781;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(100615, 5781, 0, 0, 0, 0, 0, 2, 1, 64, 1),
(115010, 5781, 29195, 0, 0, 0, 0, 2, 1, 64, 1),
(49417, 5781, 25372, 0, 29196, 0, 0, 2, 1, 64, 11),
(115011, 5781, 25372, 0, 29195, 0, 0, 2, 1, 64, 11);



DELETE FROM `quest_template` WHERE `Id`=25520;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (25520, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 156000, 16500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'An Ancient Awakens', 'Return to Arch Druid Hamuul Runetotem at the Sanctuary of Malorne in Hyjal.', 'I slumbered in the healing silt of Hyjal.$BI slept until the world broke open.$BWhen the others came, I was not ready.$B$BI am ready now, $r.$B$BMy children and I. Slow to anger.$BBut our wrath is final.$B$BTell those who sent you that we are prepared for war.$B$BThe others will be cast from the mountain.', '', '$N!$B$BYou were able to earn the ancient\'s trust?$B$BWonderful! We are one step closer to taking back this mountain...', '', 'Return to Arch Druid Hamuul Runetotem at the Sanctuary of Malorne in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 273, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `quest_template` WHERE `Id`=25611;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (25611, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25600, 25630, 25612, 25630, 1, 7800, 16500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Return from the Firelands', 'Return to Ian Duran at the Shrine of Goldrinn in Hyjal.', 'I\'ll usher out the rest of Goldrinn\'s followers and seal this portal behind us.$B$BThe rest of our forces at Mount Hyjal will want to hear of this victory. Return to Ian Duran and let him know what we\'ve discovered and how we were triumphant!$B$BSimply step through the portal to return to Mount Hyjal.', '', 'They\'re moving supplies to Hyjal straight from the elemental planes? That explains so much.$B$BYou\'ve made Goldrinn proud by sealing that flamegate, $N, but there may be more portals to seal. You should check with the other shrines!', '', 'Return to Ian Duran at the Shrine of Goldrinn in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 55049, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature_text` WHERE `entry`=41005 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(41005, 0, 0, 'Mother of all winged creatures, hear my prayer and reveal yourself... a vision! What could this mean, $N? I will report this to Omnuron.', 12, 0, 100, 0, 0, 0, 0, 'Choluna');

DELETE FROM `creature_template` WHERE `entry`=41092;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (41092, 0, 0, 0, 0, 0, 15512, 0, 0, 0, 'Vision of Aviana\'s Egg', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.35, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=41005;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (41005, 0, 0, 0, 0, 0, 32253, 0, 0, 0, 'Choluna', 'Druid of the Talon', '', 11546, 82, 82, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1.14286, 1, 0, 509, 683, 0, 805, 1, 2000, 2000, 2, 512, 2048, 0, 0, 0, 0, 0, 0, 371, 535, 146, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.5, 8338, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=41005 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (41005, 0, 0, 0, 19, 0, 100, 0, 25664, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_involvedrelation` WHERE `id`=41006;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(41006, 25655),
(41006, 25656),
(41006, 25731),
(41006, 25740),
(41006, 25746),
(41006, 25758),
(41006, 25761),
(41006, 25763),
(41006, 25764),
(41006, 25776);

DELETE FROM `creature_questrelation` WHERE `id`=41006;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(41006, 25655),
(41006, 25656),
(41006, 25731),
(41006, 25746),
(41006, 25758),
(41006, 25761),
(41006, 25764),
(41006, 25776),
(41006, 25795);

DELETE FROM `conditions` WHERE `SourceEntry`=25731;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(1, 18322, 25731, 0, 0, 7, 0, 165, 1, 0, 0, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceEntry`=77041;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 77041, 0, 0, 29, 0, 41112, 20, 0, 1, 0, 0, '', ''),
(17, 0, 77041, 0, 0, 9, 0, 25731, 0, 0, 0, 0, 0, '', '');

DELETE FROM `creature_template_addon` WHERE entry=41006;

DELETE FROM `creature_addon` WHERE `guid`=113408;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(113408, 0, 0, 33554432, 0, 426, '49414');

DELETE FROM `creature_addon` WHERE `guid`=136695;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(136695, 0, 0, 0, 0, 433, NULL);

DELETE FROM `conditions` WHERE `SourceEntry`=206111;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 206111, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 206111, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');


DELETE FROM `conditions` WHERE `SourceGroup`=616;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(25, 616, 0, 0, 0, 8, 0, 25372, 0, 0, 1, 0, 0, '', 'if 25372 not rewarded'),
(25, 616, 1, 0, 0, 8, 0, 25810, 0, 0, 0, 0, 0, '', 'Need to have quest 25810 rewarded'),
(25, 616, 1, 0, 0, 8, 0, 25560, 0, 0, 1, 0, 0, '', 'Need to haven\'t quest 25560 rewarded');

DELETE FROM `conditions` WHERE `SourceEntry`=206294;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 206294, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 206294, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=207320;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 207320, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 207320, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=207321;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 207321, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 207321, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=207322;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 207322, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 207322, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=206109;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 206109, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 206109, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=206116;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 206116, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 206116, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=207323;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 207323, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 207323, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=207324;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 207324, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 207324, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=207325;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 207325, 1, 0, 8, 0, 25372, 0, 0, 0, 0, 0, '', ''),
(22, 2, 207325, 1, 0, 8, 0, 25520, 0, 0, 0, 0, 0, '', '');

DELETE FROM `conditions` WHERE `SourceGroup`=5034;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(25, 5034, 0, 0, 1, 8, 0, 28633, 0, 0, 0, 0, 0, '', 'if 25372 not rewarded'),
(25, 5034, 0, 0, 0, 28, 0, 28633, 0, 0, 0, 0, 0, '', 'if 25372 not rewarded');


DELETE FROM `spell_dbc` WHERE `Id`=115010;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES (115010, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 21, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_dbc` WHERE `Id`=115011;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES (115011, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 21, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `spell_dbc` WHERE `Id`=115012;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES (115012, 696254848, 1056, 273170437, 269681152, 8388736, 393224, 4608, 0, 0, 0, 0, 1, 21, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spelleffect_dbc` WHERE `Id`=156008;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES (156008, 6, 0, 261, 1, 0, 0, 0, 1, 0, 0, 0, 2, 170, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 115010, 0);
DELETE FROM `spelleffect_dbc` WHERE `Id`=156009;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES (156009, 6, 0, 261, 1, 0, 0, 0, 1, 0, 0, 0, 4, 171, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 115011, 0);
DELETE FROM `spelleffect_dbc` WHERE `Id`=156011;
INSERT INTO `spelleffect_dbc` (`Id`, `Effect`, `EffectValueMultiplier`, `EffectApplyAuraName`, `EffectAmplitude`, `EffectBasePoints`, `EffectBonusMultiplier`, `EffectDamageMultiplier`, `EffectChainTarget`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectMiscValue`, `EffectMiscValueB`, `EffectPointsPerComboPoint`, `EffectRadiusIndex`, `EffectRadiusMaxIndex`, `EffectRealPointsPerLevel`, `EffectSpellClassMask_1`, `EffectSpellClassMask_2`, `EffectSpellClassMask_3`, `EffectTriggerSpell`, `EffectImplicitTargetA`, `EffectImplicitTargetB`, `EffectSpellId`, `EffectIndex`) VALUES (156011, 6, 0, 261, 1, 0, 0, 0, 1, 0, 0, 0, 8, 172, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 115012, 0);

DELETE FROM `spell_scripts` WHERE `id`=86513 AND `effIndex`=0 AND `delay`=0 AND `command`=14 AND `datalong`=49416 AND `datalong2`=0 AND `dataint`=0 AND `x`=0 AND `y`=0 AND `z`=0 AND `o`=0;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (86513, 0, 0, 14, 49416, 0, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceEntry`=92134;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 92134, 0, 0, 31, 0, 3, 49416, 0, 0, 0, 0, '', 'Ignition - target Bone Construct');

DELETE FROM `conditions` WHERE `SourceEntry`=96600;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96600, 0, 0, 29, 0, 52244, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96600, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96600, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96586;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96586, 0, 0, 29, 0, 52233, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96586, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96586, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96590;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96590, 0, 0, 29, 0, 52238, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96590, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96590, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96623;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96623, 0, 0, 29, 0, 52261, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96623, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96623, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=96627;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 96627, 0, 0, 29, 0, 52265, 80, 0, 1, 28, 0, '', ''),
(17, 0, 96627, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 96627, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

DELETE FROM `conditions` WHERE `SourceEntry`=99024;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 99024, 0, 0, 29, 0, 53427, 80, 0, 1, 28, 0, '', ''),
(17, 0, 99024, 0, 0, 17, 0, 5865, 0, 0, 1, 28, 0, '', ''),
(17, 0, 99024, 0, 0, 9, 0, 29128, 0, 0, 0, 28, 0, '', '');

-- probar..............................

UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=40107; 

-- remueve la experiencia del npc para que no se use como exploit 
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=40551; 


DELETE FROM `creature_template` WHERE `entry`=39835;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39835, 0, 0, 0, 0, 0, 31966, 0, 0, 0, 'Twilight Knight Rider', '', '', 0, 81, 81, 0, 0, 1925, 1925, 0, 1, 1.14286, 1, 1, 1, 0, 299, 372, 0, 424, 1.2, 2000, 2000, 1, 770, 0, 0, 0, 0, 0, 0, 0, 299, 372, 424, 7, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 4, 1, 1.5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE id=40660;
DELETE FROM `creature` WHERE id=39833;

DELETE FROM `creature_template` WHERE `entry`=40660;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40660, 0, 0, 0, 0, 0, 31966, 0, 0, 0, 'Twilight Lancer', '', '', 0, 81, 81, 0, 0, 1925, 1925, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 770, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 40660, 0, 0, '', 13623);


DELETE FROM `vehicle_template_accessory` WHERE entry=39833;

DELETE FROM `creature` WHERE `id`=40650;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142060, 40650, 1, 0, 0, 1, 6, 31981, 0, 4676.23, -2461.26, 803.602, 0.526999, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142062, 40650, 1, 0, 0, 1, 6, 31981, 0, 4761.83, -2436.65, 754.748, 1.42544, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142066, 40650, 1, 0, 0, 1, 6, 31981, 0, 4640.87, -2412.56, 712.124, 4.38404, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142100, 40650, 1, 0, 0, 1, 6, 31981, 0, 4651.39, -2462.19, 803.602, 6.12815, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142102, 40650, 1, 0, 0, 1, 6, 31981, 0, 4724.94, -2404.54, 754.748, 3.6151, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142104, 40650, 1, 0, 0, 1, 6, 31981, 0, 4722.04, -2383.25, 804.997, 5.05282, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142106, 40650, 1, 0, 0, 1, 6, 31981, 0, 4600.42, -2391.49, 775.756, 5.87866, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142108, 40650, 1, 0, 0, 1, 6, 31981, 0, 4629.97, -2348.46, 738.218, 5.00593, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142112, 40650, 1, 0, 0, 1, 6, 31981, 0, 4588.09, -2437.4, 799.078, 2.68374, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142114, 40650, 1, 0, 0, 1, 6, 31981, 0, 4683.02, -2378.11, 760.147, 3.25199, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142120, 40650, 1, 0, 0, 1, 6, 31981, 0, 4663.69, -2404.07, 766.796, 1.26892, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142124, 40650, 1, 0, 0, 1, 6, 31981, 0, 4782.6, -2556.85, 800.094, 0.459024, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142163, 40650, 1, 0, 0, 1, 6, 31981, 0, 4707.92, -2532.35, 811.686, 1.34927, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142165, 40650, 1, 0, 0, 1, 6, 31981, 0, 4778.56, -2524.54, 748.199, 1.57733, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142167, 40650, 1, 0, 0, 1, 6, 31981, 0, 4635.64, -2367.69, 787.256, 2.14895, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142169, 40650, 1, 0, 0, 1, 6, 31981, 0, 4572.47, -2402.21, 799.078, 1.08432, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142281, 40650, 1, 0, 0, 1, 6, 31981, 0, 4650.25, -2368.03, 738.218, 6.03576, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142283, 40650, 1, 0, 0, 1, 6, 31981, 0, 4573.89, -2444.38, 775.756, 2.4065, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142285, 40650, 1, 0, 0, 1, 6, 31981, 0, 4655.61, -2431.7, 725.062, 5.1664, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142294, 40650, 1, 0, 0, 1, 6, 31981, 0, 4727.35, -2443.48, 714.963, 2.48372, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142296, 40650, 1, 0, 0, 1, 6, 31981, 0, 4693.05, -2405.71, 712.124, 2.18238, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142298, 40650, 1, 0, 0, 1, 6, 31981, 0, 4682.17, -2456.64, 707.63, 0.154997, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0);


-- Misiones del criadero de las tierras de fuego

DELETE FROM `creature_template` WHERE `entry`=40720;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40720, 0, 0, 0, 0, 0, 22474, 22471, 31542, 0, 'Aviana\'s Guardian', '', 'vehichleCursor', 0, 80, 80, 3, 0, 2233, 2233, 16777216, 1, 1.14286, 1, 1, 1, 0, 182, 238, 0, 324, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 182, 238, 324, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 1, 1.5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 197, 1, 0, 0, 0, '', 13623);


DELETE FROM `conditions` WHERE `SourceGroup`=40720;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 40720, 75943, 0, 0, 8, 0, 25810, 0, 0, 0, 0, 0, '', 'Aviana\'s Guardian SpellClick- Only work if player have quest 25810 rewarded');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40720;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(40720, 75943, 1, 0);

DELETE FROM `creature` WHERE id=39710; 
DELETE FROM `creature` WHERE id=40720; 
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(487181, 40720, 1, 616, 5050, 1, 15, 0, 0, 4607.14, -2515.59, 829.062, 2.44154, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(487182, 40720, 1, 616, 5050, 1, 15, 0, 0, 4603.55, -2519.73, 829.254, 2.4014, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(487184, 40720, 1, 616, 5050, 1, 15, 0, 0, 4596.41, -2505.61, 828.298, 5.4782, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(487185, 40720, 1, 616, 5050, 1, 15, 0, 0, 4592, -2509.51, 828.613, 5.5635, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(487186, 40720, 1, 616, 5050, 1, 15, 0, 0, 4587.81, -2512.96, 828.74, 5.54507, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(487183, 40720, 1, 616, 5050, 1, 15, 0, 0, 4600, -2523.6, 829.314, 2.37631, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=40650;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40650, 0, 0, 0, 40660, 39835, 31981, 0, 0, 0, 'Twilight Firebird', '', '', 0, 81, 81, 3, 0, 1925, 1925, 16777216, 1, 1.14286, 1, 1, 1, 0, 308, 392, 0, 424, 1.4, 2000, 2000, 1, 0, 0, 0, 7, 0, 0, 0, 0, 308, 392, 424, 1, 1025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 769, 0, 0, NULL, NULL, 'SmartAI', 1, 4, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 197, 1, 0, 0, 0, '', 13623);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40650;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(40650, 46598, 1, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=40650;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(40650, 40660, 0, 1, 'lancer', 6, 30000);

DELETE FROM `creature` WHERE `id`=40650;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142060, 40650, 1, 0, 0, 1, 6, 31981, 0, 4676.23, -2461.26, 803.602, 0.526999, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142062, 40650, 1, 0, 0, 1, 6, 31981, 0, 4761.83, -2436.65, 754.748, 1.42544, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142066, 40650, 1, 0, 0, 1, 6, 31981, 0, 4640.87, -2412.56, 712.124, 4.38404, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142100, 40650, 1, 0, 0, 1, 6, 31981, 0, 4651.39, -2462.19, 803.602, 6.12815, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142102, 40650, 1, 0, 0, 1, 6, 31981, 0, 4724.94, -2404.54, 754.748, 3.6151, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142104, 40650, 1, 0, 0, 1, 6, 31981, 0, 4722.04, -2383.25, 804.997, 5.05282, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142106, 40650, 1, 0, 0, 1, 6, 31981, 0, 4600.42, -2391.49, 775.756, 5.87866, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142108, 40650, 1, 0, 0, 1, 6, 31981, 0, 4629.97, -2348.46, 738.218, 5.00593, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142112, 40650, 1, 0, 0, 1, 6, 31981, 0, 4588.09, -2437.4, 799.078, 2.68374, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142114, 40650, 1, 0, 0, 1, 6, 31981, 0, 4683.02, -2378.11, 760.147, 3.25199, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142120, 40650, 1, 0, 0, 1, 6, 31981, 0, 4663.69, -2404.07, 766.796, 1.26892, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142124, 40650, 1, 0, 0, 1, 6, 31981, 0, 4782.6, -2556.85, 800.094, 0.459024, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142163, 40650, 1, 0, 0, 1, 6, 31981, 0, 4707.92, -2532.35, 811.686, 1.34927, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142165, 40650, 1, 0, 0, 1, 6, 31981, 0, 4778.56, -2524.54, 748.199, 1.57733, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142167, 40650, 1, 0, 0, 1, 6, 31981, 0, 4635.64, -2367.69, 787.256, 2.14895, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142169, 40650, 1, 0, 0, 1, 6, 31981, 0, 4572.47, -2402.21, 799.078, 1.08432, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142281, 40650, 1, 0, 0, 1, 6, 31981, 0, 4650.25, -2368.03, 738.218, 6.03576, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142283, 40650, 1, 0, 0, 1, 6, 31981, 0, 4573.89, -2444.38, 775.756, 2.4065, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142285, 40650, 1, 0, 0, 1, 6, 31981, 0, 4655.61, -2431.7, 725.062, 5.1664, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142294, 40650, 1, 0, 0, 1, 6, 31981, 0, 4727.35, -2443.48, 714.963, 2.48372, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142296, 40650, 1, 0, 0, 1, 6, 31981, 0, 4693.05, -2405.71, 712.124, 2.18238, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0),
(142298, 40650, 1, 0, 0, 1, 6, 31981, 0, 4682.17, -2456.64, 707.63, 0.154997, 20, 13, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=40762;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40762, 0, 0, 0, 0, 0, 32545, 0, 0, 0, 'Firelands Egg', '', '', 0, 80, 80, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33555202, 34816, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE id=40762;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142010, 40762, 1, 0, 0, 1, 8, 0, 0, 4671.66, -2516.47, 686.842, 3.31257, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142011, 40762, 1, 0, 0, 1, 8, 0, 0, 4727.19, -2287.5, 736.5, 0.367778, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142012, 40762, 1, 0, 0, 1, 8, 0, 0, 4655.73, -2500.2, 687.04, 1.57745, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142013, 40762, 1, 0, 0, 1, 8, 0, 0, 4789.82, -2551.1, 735.249, 0.174915, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142014, 40762, 1, 0, 0, 1, 8, 0, 0, 4656.92, -2521.76, 686.741, 2.79057, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142015, 40762, 1, 0, 0, 1, 8, 0, 0, 4665.32, -2524.84, 685.696, 4.06407, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142016, 40762, 1, 0, 0, 1, 8, 0, 0, 4777.04, -2547.47, 734.714, 5.21717, 30, 0, 0, 3095, 0, 0, 0, 0, 0, 0),
(142017, 40762, 1, 616, 5050, 1, 8, 0, 0, 4654.91, -2439.82, 684.756, 0.305592, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142018, 40762, 1, 616, 5050, 1, 8, 0, 0, 4654.22, -2441.55, 684.723, 1.64033, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142019, 40762, 1, 616, 5050, 1, 8, 0, 0, 4656.14, -2440.48, 685.325, 5.2632, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142020, 40762, 1, 616, 5050, 1, 8, 0, 0, 4667, -2471.22, 685.247, 5.07252, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142021, 40762, 1, 616, 5050, 1, 8, 0, 0, 4666.26, -2468.79, 686.377, 4.84171, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142022, 40762, 1, 616, 5050, 1, 8, 0, 0, 4668.36, -2468.94, 686.541, 2.77436, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142023, 40762, 1, 616, 5050, 1, 8, 0, 0, 4705.56, -2453.39, 684.336, 1.60521, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142024, 40762, 1, 616, 5050, 1, 8, 0, 0, 4705.47, -2450.87, 685.107, 1.60019, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142025, 40762, 1, 616, 5050, 1, 8, 0, 0, 4704.56, -2452.7, 685.149, 1.55503, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142026, 40762, 1, 616, 5050, 1, 8, 0, 0, 4692.06, -2432.01, 684.639, 2.96504, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142027, 40762, 1, 616, 5050, 1, 8, 0, 0, 4692.06, -2432.01, 684.639, 2.96504, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142028, 40762, 1, 616, 5050, 1, 8, 0, 0, 4675.95, -2369.24, 686.116, 1.85108, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142029, 40762, 1, 616, 5050, 1, 8, 0, 0, 4676.46, -2371.12, 686.165, 1.85108, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142030, 40762, 1, 616, 5050, 1, 8, 0, 0, 4677.62, -2370.31, 686.721, 1.85108, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142031, 40762, 1, 616, 5050, 1, 8, 0, 0, 4677.71, -2346.99, 685.169, 0.74716, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142032, 40762, 1, 616, 5050, 1, 8, 0, 0, 4676.96, -2347.93, 685.687, 0.988015, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142033, 40762, 1, 616, 5050, 1, 8, 0, 0, 4678.74, -2347.72, 685.767, 4.86177, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142034, 40762, 1, 616, 5050, 1, 8, 0, 0, 4704.02, -2355.11, 687.412, 5.33846, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142035, 40762, 1, 616, 5050, 1, 8, 0, 0, 4703.14, -2352.53, 687.244, 4.34995, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142036, 40762, 1, 616, 5050, 1, 8, 0, 0, 4705.24, -2352.29, 687.041, 2.12204, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142037, 40762, 1, 616, 5050, 1, 8, 0, 0, 4705.33, -2354.84, 687.217, 0.817408, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142038, 40762, 1, 616, 5050, 1, 8, 0, 0, 4633.51, -2369.39, 727.556, 2.30355, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142039, 40762, 1, 616, 5050, 1, 8, 0, 0, 4635.21, -2371.4, 726.826, 1.76665, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142040, 40762, 1, 616, 5050, 1, 8, 0, 0, 4631.99, -2370.97, 727.982, 3.97035, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142041, 40762, 1, 616, 5050, 1, 8, 0, 0, 4594.67, -2397.03, 725.883, 6.27942, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142042, 40762, 1, 616, 5050, 1, 8, 0, 0, 4592.79, -2396.73, 725.862, 5.4866, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142043, 40762, 1, 616, 5050, 1, 8, 0, 0, 4593.52, -2394.52, 726.249, 3.03289, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142044, 40762, 1, 616, 5050, 1, 8, 0, 0, 4620.59, -2392.2, 728.979, 6.27942, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142045, 40762, 1, 616, 5050, 1, 8, 0, 0, 4618.81, -2391.46, 728.815, 5.39628, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142046, 40762, 1, 616, 5050, 1, 8, 0, 0, 4619.21, -2390.07, 728.933, 3.39417, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142047, 40762, 1, 616, 5050, 1, 8, 0, 0, 4647.84, -2392.22, 751.753, 0.272209, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142048, 40762, 1, 616, 5050, 1, 8, 0, 0, 4645.98, -2392.83, 751.594, 0.33744, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142049, 40762, 1, 616, 5050, 1, 8, 0, 0, 4641.07, -2402.04, 751.804, 1.40122, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142050, 40762, 1, 616, 5050, 1, 8, 0, 0, 4641.12, -2404.03, 751.83, 1.76752, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142051, 40762, 1, 616, 5050, 1, 8, 0, 0, 4656.56, -2420.99, 752.073, 5.68229, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142052, 40762, 1, 616, 5050, 1, 8, 0, 0, 4660.44, -2423.63, 752.036, 5.68731, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142053, 40762, 1, 616, 5050, 1, 8, 0, 0, 4685.2, -2401.88, 751.874, 1.10517, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142054, 40762, 1, 616, 5050, 1, 8, 0, 0, 4684.74, -2404.53, 751.959, 1.97827, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142055, 40762, 1, 616, 5050, 1, 8, 0, 0, 4686.99, -2405.87, 751.877, 3.68934, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142056, 40762, 1, 616, 5050, 1, 8, 0, 0, 4688.25, -2402.96, 751.552, 4.79829, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142057, 40762, 1, 616, 5050, 1, 8, 0, 0, 4687.99, -2401.63, 751.489, 4.95384, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142058, 40762, 1, 616, 5050, 1, 8, 0, 0, 4659.28, -2393.82, 752.094, 3.93522, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142059, 40762, 1, 616, 5050, 1, 8, 0, 0, 4660.6, -2390.82, 751.9, 3.96533, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142074, 40762, 1, 616, 5050, 1, 8, 0, 0, 4662.02, -2390.55, 751.854, 2.49511, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142075, 40762, 1, 616, 5050, 1, 8, 0, 0, 4662.25, -2391.62, 751.913, 1.0851, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142076, 40762, 1, 616, 5050, 1, 8, 0, 0, 4661.62, -2392.24, 751.963, 0.50805, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142077, 40762, 1, 616, 5050, 1, 8, 0, 0, 4706.16, -2318.67, 737.783, 5.39126, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142078, 40762, 1, 616, 5050, 1, 8, 0, 0, 4710.99, -2326.63, 738.353, 4.79916, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142079, 40762, 1, 616, 5050, 1, 8, 0, 0, 4708.29, -2327.2, 737.922, 6.15899, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142080, 40762, 1, 616, 5050, 1, 8, 0, 0, 4707.57, -2325.57, 738.01, 4.13681, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142081, 40762, 1, 616, 5050, 1, 8, 0, 0, 4709.11, -2324.78, 738.23, 3.15833, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142082, 40762, 1, 616, 5050, 1, 8, 0, 0, 4734.08, -2388.82, 686.891, 5.79269, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142083, 40762, 1, 616, 5050, 1, 8, 0, 0, 4731.34, -2387.78, 686.26, 0.402676, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142084, 40762, 1, 616, 5050, 1, 8, 0, 0, 4730.3, -2389.61, 686.358, 1.60194, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142085, 40762, 1, 616, 5050, 1, 8, 0, 0, 4731.46, -2390.83, 686.907, 3.09725, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142086, 40762, 1, 616, 5050, 1, 8, 0, 0, 4729.68, -2414.85, 685.759, 3.4786, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142087, 40762, 1, 616, 5050, 1, 8, 0, 0, 4730.91, -2415.15, 685.998, 2.31948, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142088, 40762, 1, 616, 5050, 1, 8, 0, 0, 4730.97, -2415.94, 685.39, 0.598372, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142089, 40762, 1, 616, 5050, 1, 8, 0, 0, 4753.21, -2412.86, 687.009, 1.11019, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142090, 40762, 1, 616, 5050, 1, 8, 0, 0, 4751.53, -2412.43, 687.312, 5.32603, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142091, 40762, 1, 616, 5050, 1, 8, 0, 0, 4752.24, -2410.67, 687.469, 3.03289, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142092, 40762, 1, 616, 5050, 1, 8, 0, 0, 4753.32, -2411.15, 687.251, 2.42071, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142093, 40762, 1, 616, 5050, 1, 8, 0, 0, 4753.58, -2387.26, 686.309, 2.47591, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142094, 40762, 1, 616, 5050, 1, 8, 0, 0, 4754.21, -2388.81, 686.591, 0.714655, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142095, 40762, 1, 616, 5050, 1, 8, 0, 0, 4751.31, -2388.52, 686.871, 5.91901, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142096, 40762, 1, 616, 5050, 1, 8, 0, 0, 4750.69, -2387.59, 686.804, 4.7348, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142097, 40762, 1, 616, 5050, 1, 8, 0, 0, 4750.9, -2386.89, 686.619, 4.07747, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142098, 40762, 1, 616, 5050, 1, 8, 0, 0, 4740.61, -2462.26, 687.287, 4.67459, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142099, 40762, 1, 616, 5050, 1, 8, 0, 0, 4741.16, -2460.13, 687.185, 3.71619, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142116, 40762, 1, 616, 5050, 1, 8, 0, 0, 4742.43, -2460.07, 687.117, 2.62732, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142117, 40762, 1, 616, 5050, 1, 8, 0, 0, 4743.38, -2461.56, 687.094, 1.42806, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142118, 40762, 1, 616, 5050, 1, 8, 0, 0, 4742.19, -2462.42, 687.187, 6.20088, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142119, 40762, 1, 616, 5050, 1, 8, 0, 0, 4741.29, -2461.91, 687.235, 5.53853, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142122, 40762, 1, 616, 5050, 1, 8, 0, 0, 4667.99, -2505.4, 688.052, 4.08838, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142123, 40762, 1, 616, 5050, 1, 8, 0, 0, 4668.77, -2503.8, 687.935, 4.86614, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142126, 40762, 1, 616, 5050, 1, 8, 0, 0, 4667.64, -2502.69, 687.91, 5.97508, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142127, 40762, 1, 616, 5050, 1, 8, 0, 0, 4665.88, -2503.13, 687.986, 1.33774, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142128, 40762, 1, 616, 5050, 1, 8, 0, 0, 4665.91, -2504.38, 688.07, 2.04024, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142129, 40762, 1, 616, 5050, 1, 8, 0, 0, 4667.22, -2505.17, 688.073, 3.29469, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142130, 40762, 1, 616, 5050, 1, 8, 0, 0, 4667.94, -2504.3, 687.997, 2.31621, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142131, 40762, 1, 616, 5050, 1, 8, 0, 0, 4584.94, -2445.5, 687.863, 1.41562, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142132, 40762, 1, 616, 5050, 1, 8, 0, 0, 4583.71, -2447.38, 687.768, 0.231419, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142133, 40762, 1, 616, 5050, 1, 8, 0, 0, 4582.29, -2446.25, 687.922, 4.37701, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142134, 40762, 1, 616, 5050, 1, 8, 0, 0, 4583.4, -2445.73, 687.91, 2.76629, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142135, 40762, 1, 616, 5050, 1, 8, 0, 0, 4585.98, -2423.8, 686.984, 5.53111, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142136, 40762, 1, 616, 5050, 1, 8, 0, 0, 4585.7, -2422.21, 686.419, 4.14619, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142137, 40762, 1, 616, 5050, 1, 8, 0, 0, 4587.01, -2421.84, 686.189, 2.62579, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142138, 40762, 1, 616, 5050, 1, 8, 0, 0, 4587.75, -2422.66, 686.643, 2.04874, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142139, 40762, 1, 616, 5050, 1, 8, 0, 0, 4562.61, -2440.41, 687.271, 2.09892, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142140, 40762, 1, 616, 5050, 1, 8, 0, 0, 4562.9, -2441.4, 687.297, 1.47169, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142141, 40762, 1, 616, 5050, 1, 8, 0, 0, 4561.97, -2442.64, 687.006, 0.287489, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142142, 40762, 1, 616, 5050, 1, 8, 0, 0, 4560.4, -2441.68, 686.808, 5.0302, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142143, 40762, 1, 616, 5050, 1, 8, 0, 0, 4671.28, -2476.04, 775.378, 0.00147486, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142144, 40762, 1, 616, 5050, 1, 8, 0, 0, 4668.81, -2476.52, 775.241, 0.58856, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142145, 40762, 1, 616, 5050, 1, 8, 0, 0, 4667.98, -2478.39, 775.177, 1.77778, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142146, 40762, 1, 616, 5050, 1, 8, 0, 0, 4669.97, -2479.09, 775.28, 3.4989, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142147, 40762, 1, 616, 5050, 1, 8, 0, 0, 4671.28, -2477.94, 775.36, 4.32182, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142148, 40762, 1, 616, 5050, 1, 8, 0, 0, 4708.26, -2486.55, 775.173, 5.3304, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142149, 40762, 1, 616, 5050, 1, 8, 0, 0, 4707.64, -2484.41, 775.271, 4.5978, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142150, 40762, 1, 616, 5050, 1, 8, 0, 0, 4709.04, -2483.26, 775.219, 2.96199, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142151, 40762, 1, 616, 5050, 1, 8, 0, 0, 4709.85, -2484.45, 775.161, 1.49177, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142152, 40762, 1, 616, 5050, 1, 8, 0, 0, 4692.24, -2457.73, 774.361, 2.74622, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142153, 40762, 1, 616, 5050, 1, 8, 0, 0, 4675.66, -2458.46, 775.066, 3.3885, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142154, 40762, 1, 616, 5050, 1, 8, 0, 0, 4686.32, -2493.37, 775.113, 5.28524, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142155, 40762, 1, 616, 5050, 1, 8, 0, 0, 4703.43, -2496.18, 774.682, 0.0106379, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142156, 40762, 1, 616, 5050, 1, 8, 0, 0, 4760.16, -2553.32, 734.369, 1.44573, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142157, 40762, 1, 616, 5050, 1, 8, 0, 0, 4766.18, -2540.88, 732.357, 0.642883, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142158, 40762, 1, 616, 5050, 1, 8, 0, 0, 4781.1, -2535.37, 730.496, 0.226404, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142159, 40762, 1, 616, 5050, 1, 8, 0, 0, 4792.06, -2475.72, 685.515, 1.78782, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142160, 40762, 1, 616, 5050, 1, 8, 0, 0, 4774.65, -2458.71, 684.507, 3.00213, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142161, 40762, 1, 616, 5050, 1, 8, 0, 0, 4772.35, -2458.52, 684.547, 4.79851, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142162, 40762, 1, 616, 5050, 1, 8, 0, 0, 4781.55, -2492.72, 685.604, 5.43577, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142171, 40762, 1, 616, 5050, 1, 8, 0, 0, 4815.32, -2492.11, 687.026, 1.09449, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142172, 40762, 1, 616, 5050, 1, 8, 0, 0, 4773, -2474.46, 685.018, 2.82062, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142173, 40762, 1, 616, 5050, 1, 8, 0, 0, 4745.37, -2468.01, 687.04, 3.49301, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142174, 40762, 1, 616, 5050, 1, 8, 0, 0, 4727.72, -2473.98, 686.616, 3.45286, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142175, 40762, 1, 616, 5050, 1, 8, 0, 0, 4678.26, -2509.06, 686.865, 3.24211, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142176, 40762, 1, 616, 5050, 1, 8, 0, 0, 4651.63, -2511.67, 687.184, 2.90592, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142177, 40762, 1, 616, 5050, 1, 8, 0, 0, 4665.18, -2452.05, 687.582, 1.57118, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142178, 40762, 1, 616, 5050, 1, 8, 0, 0, 4687.25, -2454.58, 688.002, 6.11318, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142179, 40762, 1, 616, 5050, 1, 8, 0, 0, 4676.81, -2439.9, 687.902, 1.77189, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142182, 40762, 1, 616, 5050, 1, 8, 0, 0, 4692.42, -2367.77, 688.034, 1.22495, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142183, 40762, 1, 616, 5050, 1, 8, 0, 0, 4698.37, -2364.09, 687.962, 0.547543, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142184, 40762, 1, 616, 5050, 1, 8, 0, 0, 4695.1, -2378.15, 686.838, 3.8652, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142189, 40762, 1, 616, 5050, 1, 8, 0, 0, 4733.87, -2400.77, 687.885, 0.151135, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(142194, 40762, 1, 616, 5050, 1, 8, 0, 0, 4759.41, -2400.84, 685.196, 6.10314, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59501, 40762, 1, 616, 5050, 1, 8, 0, 0, 4780.9, -2465.14, 689.46, 4.89385, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59512, 40762, 1, 616, 5050, 1, 8, 0, 0, 4684.81, -2466.35, 686.397, 3.00214, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59516, 40762, 1, 616, 5050, 1, 8, 0, 0, 4671, -2501.78, 687.509, 4.69816, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59519, 40762, 1, 616, 5050, 1, 8, 0, 0, 4649.55, -2563.43, 740.968, 3.22794, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59522, 40762, 1, 616, 5050, 1, 8, 0, 0, 4637.28, -2561.81, 743.753, 2.4853, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59524, 40762, 1, 616, 5050, 1, 8, 0, 0, 4636.24, -2549.04, 742.747, 1.65234, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59545, 40762, 1, 616, 5050, 1, 8, 0, 0, 4682.71, -2474.35, 783.93, 1.18067, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59559, 40762, 1, 616, 5050, 1, 8, 0, 0, 4732.11, -2428.61, 795.273, 0.72906, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59570, 40762, 1, 616, 5050, 1, 8, 0, 0, 4746.35, -2424.94, 794.892, 5.62733, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59584, 40762, 1, 616, 5050, 1, 8, 0, 0, 4738.17, -2434.73, 795.071, 3.3944, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59591, 40762, 1, 616, 5050, 1, 8, 0, 0, 4718.19, -2422.82, 795.015, 1.64318, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0),
(59612, 40762, 1, 616, 5050, 1, 8, 0, 0, 4728.44, -2438.97, 794.909, 5.13257, 30, 0, 0, 6517, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=40762;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40762, 0, 0, 0, 0, 0, '88604');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40762 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40762, 0, 0, 1, 10, 0, 100, 1, 1, 1, 0, 0, 11, 77810, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40762, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 40719, 5, 0, 0, 0, 0, 0, ''),
(40762, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, 40762, 0, 0, 0, 0, 0, 18, 4, 0, 0, 0, 0, 0, 0, ''),
(40762, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=40708;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40708, 0, 0, 0, 0, 0, 32909, 11686, 0, 0, 'Falling Boulder', '', '', 0, 80, 80, 3, 0, 2156, 2156, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 10, 16778240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 1, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE id=40708;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(59623, 40708, 1, 0, 0, 1, 1, 32909, 0, 4791.42, -2549.73, 787.752, 1.309, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59631, 40708, 1, 0, 0, 1, 1, 32909, 0, 4646.85, -2562.53, 829.064, 4.13643, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59645, 40708, 1, 0, 0, 1, 1, 32909, 0, 4601.56, -2449.4, 791.893, 5.70723, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59650, 40708, 1, 0, 0, 1, 1, 32909, 0, 4766.66, -2546.76, 799.414, 1.8675, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59673, 40708, 1, 0, 0, 1, 1, 32909, 0, 4773.14, -2491.17, 739.4, 3.62728, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59678, 40708, 1, 0, 0, 1, 1, 32909, 0, 4645.16, -2521.18, 842.48, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59688, 40708, 1, 0, 0, 1, 1, 32909, 0, 4769.02, -2432.87, 800.705, 2.07694, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59716, 40708, 1, 0, 0, 1, 1, 32909, 0, 4573.03, -2424.87, 714.316, 2.6529, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59731, 40708, 1, 0, 0, 1, 1, 32909, 0, 4656.92, -2395.06, 801.197, 3.78736, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59737, 40708, 1, 0, 0, 1, 1, 32909, 0, 4736.59, -2502.39, 805.519, 2.04204, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59749, 40708, 1, 0, 0, 1, 1, 32909, 0, 4625.05, -2310.63, 752.747, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59758, 40708, 1, 0, 0, 1, 1, 32909, 0, 4678.42, -2426.09, 761.579, 0.0523599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59773, 40708, 1, 0, 0, 1, 1, 32909, 0, 4645.16, -2521.19, 753.112, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59776, 40708, 1, 0, 0, 1, 1, 32909, 0, 4636.15, -2498.8, 804.222, 1.95477, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59780, 40708, 1, 0, 0, 1, 1, 32909, 0, 4625.7, -2559.85, 776.908, 5.05199, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59786, 40708, 1, 0, 0, 1, 1, 32909, 0, 4730.82, -2571.22, 744.303, 4.08407, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59788, 40708, 1, 0, 0, 1, 1, 32909, 0, 4644.59, -2362.88, 850.797, 0.0698132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59797, 40708, 1, 0, 0, 1, 1, 32909, 0, 4668.21, -2326.27, 719.917, 1.79769, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59816, 40708, 1, 0, 0, 1, 1, 32909, 0, 4572.99, -2424.85, 783.494, 2.6529, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59820, 40708, 1, 0, 0, 1, 1, 32909, 0, 4773.23, -2491.14, 764.435, 3.62728, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59822, 40708, 1, 0, 0, 1, 1, 32909, 0, 4645.17, -2521.2, 744.342, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59831, 40708, 1, 0, 0, 1, 1, 32909, 0, 4791.41, -2549.78, 740.206, 1.309, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59844, 40708, 1, 0, 0, 1, 1, 32909, 0, 4730.81, -2571.23, 790.42, 4.08407, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59849, 40708, 1, 0, 0, 1, 1, 32909, 0, 4676.64, -2517.38, 760.101, 0.575959, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59853, 40708, 1, 0, 0, 1, 1, 32909, 0, 4703.29, -2468, 781.396, 5.89921, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59882, 40708, 1, 0, 0, 1, 1, 32909, 0, 4601.53, -2449.38, 721.082, 5.70723, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59886, 40708, 1, 0, 0, 1, 1, 32909, 0, 4676.62, -2517.39, 729.527, 0.575959, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59897, 40708, 1, 0, 0, 1, 1, 32909, 0, 4707.86, -2385.96, 681.155, 1.37881, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59915, 40708, 1, 0, 0, 1, 1, 32909, 0, 4678.47, -2426.09, 809.1, 0.0523599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59917, 40708, 1, 0, 0, 1, 1, 32909, 0, 4656.96, -2395.03, 759.96, 3.78736, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59919, 40708, 1, 0, 0, 1, 1, 32909, 0, 4658.4, -2459.71, 807.899, 0.645772, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59927, 40708, 1, 0, 0, 1, 1, 32909, 0, 4703.32, -2468.01, 806.283, 5.89921, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59946, 40708, 1, 0, 0, 1, 1, 32909, 0, 4615.22, -2401.61, 766.167, 0.0698132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59952, 40708, 1, 0, 0, 1, 1, 32909, 0, 4751.04, -2538.7, 833.135, 1.09956, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59969, 40708, 1, 0, 0, 1, 1, 32909, 0, 4736.6, -2502.41, 757.326, 2.04204, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59972, 40708, 1, 0, 0, 1, 1, 32909, 0, 4711.69, -2546.3, 684.963, 4.83456, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59974, 40708, 1, 0, 0, 1, 1, 32909, 0, 4715.44, -2392.25, 807.437, 3.56047, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59977, 40708, 1, 0, 0, 1, 1, 32909, 0, 4823.61, -2410.77, 683.296, 5.65487, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(59992, 40708, 1, 0, 0, 1, 1, 32909, 0, 4751.05, -2538.68, 771.308, 1.09956, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60000, 40708, 1, 0, 0, 1, 1, 32909, 0, 4703.33, -2468.02, 813.429, 5.89921, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60005, 40708, 1, 0, 0, 1, 1, 32909, 0, 4682.27, -2383.24, 772.326, 2.70526, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60013, 40708, 1, 0, 0, 1, 1, 32909, 0, 4791.43, -2549.71, 819.114, 1.309, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60025, 40708, 1, 0, 0, 1, 1, 32909, 0, 4645.17, -2521.23, 868.308, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60027, 40708, 1, 0, 0, 1, 1, 32909, 0, 4646.87, -2562.5, 839.698, 4.13643, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60124, 40708, 1, 0, 0, 1, 1, 32909, 0, 4773.44, -2490.99, 856.971, 3.62728, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60133, 40708, 1, 0, 0, 1, 1, 32909, 0, 4636.16, -2498.81, 779.605, 1.95477, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60198, 40708, 1, 0, 0, 1, 1, 32909, 0, 4766.67, -2546.78, 776.463, 1.8675, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60206, 40708, 1, 0, 0, 1, 1, 32909, 0, 4656.91, -2395.07, 866.473, 3.78736, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60231, 40708, 1, 0, 0, 1, 1, 32909, 0, 4644.58, -2362.88, 799.11, 0.0698132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60242, 40708, 1, 0, 0, 1, 1, 32909, 0, 4646.86, -2562.51, 769.786, 4.13643, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60263, 40708, 1, 0, 0, 1, 1, 32909, 0, 4644.57, -2362.88, 864.001, 0.0698132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60287, 40708, 1, 0, 0, 1, 1, 32909, 0, 4715.46, -2392.24, 766.072, 3.56047, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60407, 40708, 1, 0, 0, 1, 1, 32909, 0, 4678.45, -2426.09, 786.844, 0.0523599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60426, 40708, 1, 0, 0, 1, 1, 32909, 0, 4625.04, -2310.62, 809.369, 5.32325, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60454, 40708, 1, 0, 0, 1, 1, 32909, 0, 4773.04, -2491.2, 711.808, 3.62728, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60458, 40708, 1, 0, 0, 1, 1, 32909, 0, 4730.82, -2571.21, 736.558, 4.08407, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60587, 40708, 1, 0, 0, 1, 1, 32909, 0, 4618.65, -2380.86, 800.044, 1.309, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60592, 40708, 1, 0, 0, 1, 1, 32909, 0, 4723.05, -2416.4, 820.026, 4.39823, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60628, 40708, 1, 0, 0, 1, 1, 32909, 0, 4615.19, -2401.61, 834.204, 0.0698132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(60642, 40708, 1, 0, 0, 1, 1, 32909, 0, 4636.15, -2498.81, 841.237, 1.95477, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=341745;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(341745, 0, 0, 0, 0, 1126, 15880, 0, 0, 0, 'Guardian flag bunny', NULL, NULL, 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `creature` WHERE `id`=341745;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(60661, 341745, 1, 0, 0, 1, 1, 0, 0, 4730.55, -2423.02, 795.343, 3.85786, 120, 0, 0, 301, 1, 0, 0, 0, 0, 0),
(60801, 341745, 1, 0, 0, 1, 1, 0, 0, 4668.79, -2411.61, 752.617, 0.790889, 120, 0, 0, 301, 1, 0, 0, 0, 0, 0),
(60803, 341745, 1, 0, 0, 1, 1, 0, 0, 4689.6, -2476.14, 775.883, 1.8394, 120, 0, 0, 301, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE `entry`=341745;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(341745, 0, 0, 65536, 1, 0, '64573 52855');


DELETE FROM `smart_scripts` WHERE `entryorguid`=341745 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(341745, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47459, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit'),
(341745, 0, 2, 0, 28, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn gryphon on passanger removed');

DELETE FROM `creature_template` WHERE `entry`=40719;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40719, 0, 0, 0, 0, 0, 22474, 22471, 31542, 0, 'Aviana\'s Guardian', '', 'vehichleCursor', 0, 85, 85, 0, 0, 5, 5, 0, 1, 1.14286, 1, 2.9, 1, 0, 1007, 1354.7, 0, 24, 40, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74183, 0, 0, 0, 0, 0, 701, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 197, 1, 0, 0, 2, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=40719;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40719, 0, 0, 0, 1, 0, '43775');

DELETE FROM `creature_text` WHERE `entry`=40719;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40719, 0, 0, 'Press Flap to Flap Your Wings!', 41, 0, 100, 0, 0, 0, 40557, '');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40719;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(40719, 46598, 1, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40719 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40719, 0, 0, 0, 27, 0, 100, 512, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Aviana\'s Guardian - On passenger boarded - Says text 0'),
(40719, 0, 1, 0, 75, 0, 100, 512, 0, 40650, 5, 1000, 11, 40450, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(40719, 0, 2, 0, 75, 0, 100, 512, 0, 39833, 5, 1000, 11, 40450, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 25523 25525 25544 25560 25810


DELETE FROM `creature_template_addon` WHERE entry=40708;


DELETE FROM `report_quest` WHERE id=29177;
DELETE FROM `report_quest` WHERE id=25523;

DELETE FROM `creature_addon` WHERE `guid`=112472;

DELETE FROM `creature_template_addon` WHERE `entry`=41308;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(41308, 0, 0, 0, 0, 0, '76743');

DELETE FROM `creature_involvedrelation` WHERE `id`=40578;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40578, 25523),
(40578, 25525),
(40578, 25544),
(40578, 25560),
(40578, 25810),
(40578, 29177);

DELETE FROM `creature_template` WHERE `entry`=40578;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40578, 0, 0, 0, 0, 0, 31941, 0, 0, 0, 'Farden Talonshrike', '', '', 11416, 82, 82, 3, 0, 2309, 2309, 3, 1, 1.14286, 1, 1, 1, 0, 354, 408, 0, 424, 1.9, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 0, 354, 408, 424, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 1, 1.5, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=40578;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40578, 0, 0, 'Grab, equip the Lance and Mount One of Aviana\'s Guardians', 41, 0, 100, 0, 0, 0, 0, ''),
(40578, 1, 0, 'Wave One:', 41, 0, 100, 0, 0, 0, 40558, ''),
(40578, 2, 0, 'Prepare to Joust, Buzzard Bait!', 41, 0, 100, 0, 0, 0, 40559, ''),
(40578, 3, 0, 'Wave Two:', 41, 0, 100, 0, 0, 0, 40664, ''),
(40578, 4, 0, 'The sky is falling!', 41, 0, 100, 0, 0, 0, 40665, ''),
(40578, 5, 0, 'Egg Wave:', 41, 0, 100, 0, 0, 0, 40666, ''),
(40578, 6, 0, 'Destroy the Firelands Eggs!', 41, 0, 100, 0, 0, 0, 40667, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=40578 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40578, 0, 0, 0, 19, 0, 100, 0, 29177, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40578, 0, 1, 0, 19, 0, 100, 0, 25523, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40578, 0, 2, 0, 19, 0, 100, 0, 25525, 0, 0, 0, 80, 4057800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40578, 0, 3, 0, 19, 0, 100, 0, 25544, 0, 0, 0, 80, 4057801, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40578, 0, 4, 0, 19, 0, 100, 0, 25560, 0, 0, 0, 80, 4057802, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40578, 0, 5, 0, 20, 0, 100, 0, 29177, 0, 0, 0, 85, 115003, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4057800 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4057800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4057800, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4057801 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4057801, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4057801, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4057802 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4057802, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4057802, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=41502;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113292, 41502, 1, 0, 0, 1, 1, 32494, 0, 4643.36, -3212.05, 1036.19, 2.93601, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113294, 41502, 1, 0, 0, 1, 1, 32494, 0, 4524.1, -3523.01, 997.787, 4.7456, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113295, 41502, 1, 0, 0, 1, 1, 32494, 0, 4534.79, -3313.46, 1009.59, 4.50869, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113296, 41502, 1, 0, 0, 1, 1, 32494, 0, 4691.43, -3009.7, 1075.4, 5.61115, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113297, 41502, 1, 0, 0, 1, 1, 32494, 0, 4529.69, -3605.31, 980.786, 2.28638, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113298, 41502, 1, 0, 0, 1, 1, 32494, 0, 4618.95, -3651.44, 960.818, 5.39728, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113299, 41502, 1, 0, 0, 1, 1, 32494, 0, 4667.86, -3660.91, 959.169, 3.05433, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113300, 41502, 1, 0, 0, 1, 1, 32494, 0, 4550.6, -3567.78, 982.275, 2.6529, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113301, 41502, 1, 0, 0, 1, 1, 32494, 0, 4544.76, -3469.66, 1004.94, 0.846616, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113533, 41502, 1, 0, 0, 1, 1, 32494, 0, 4579.41, -3006.96, 1072.59, 4.38078, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40020, 41502, 1, 0, 0, 1, 1, 32494, 0, 4481.82, -3414.41, 1034.6, 0.331613, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40128, 41502, 1, 0, 0, 1, 1, 32494, 0, 4660.96, -3716.68, 950.177, 2.6529, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41500;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113135, 41500, 1, 0, 0, 1, 1, 32493, 0, 4524.06, -2928.23, 1061.86, 2.63274, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113136, 41500, 1, 0, 0, 1, 1, 32493, 0, 4504.12, -2897.17, 1061.76, 4.10909, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113137, 41500, 1, 0, 0, 1, 1, 32492, 0, 4588.48, -3093.66, 993.237, 5.7036, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113138, 41500, 1, 0, 0, 1, 1, 32493, 0, 4668.72, -2932.72, 1087.72, 3.3342, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113139, 41500, 1, 0, 0, 1, 1, 32493, 0, 4600.98, -2921.82, 1073.67, 5.69646, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113140, 41500, 1, 0, 0, 1, 1, 32492, 0, 4545.41, -2979.12, 1065.85, 3.38417, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113141, 41500, 1, 0, 0, 1, 1, 32492, 0, 4511.88, -3063.19, 994.293, 3.80855, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113142, 41500, 1, 0, 0, 1, 1, 32493, 0, 4632.75, -2997.3, 1069.87, 0.585295, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113143, 41500, 1, 0, 0, 1, 1, 32492, 0, 4572.31, -3109.3, 994.321, 3.94975, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113144, 41500, 1, 0, 0, 1, 1, 32493, 0, 4544.46, -3104.17, 995.148, 4.34858, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113145, 41500, 1, 0, 0, 1, 1, 32493, 0, 4748.49, -3102.91, 1079.56, 5.10326, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113146, 41500, 1, 0, 0, 1, 1, 32493, 0, 4681.55, -3157.23, 1050.44, 0.218457, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113147, 41500, 1, 0, 0, 1, 1, 32493, 0, 4674.85, -3105.51, 1055.12, 2.86943, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113148, 41500, 1, 0, 0, 1, 1, 32493, 0, 4706.11, -3224.21, 1049.54, 2.90875, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113149, 41500, 1, 0, 0, 1, 1, 32492, 0, 4706.16, -3294.51, 1042.01, 6.22064, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113150, 41500, 1, 0, 0, 1, 1, 32492, 0, 4638.02, -3419.8, 1018.93, 2.00648, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113151, 41500, 1, 0, 0, 1, 1, 32492, 0, 4653.8, -3179.77, 1040.6, 4.99983, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113152, 41500, 1, 0, 0, 1, 1, 32493, 0, 4533.78, -2927.55, 1060.81, 0.506686, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113153, 41500, 1, 0, 0, 1, 1, 32492, 0, 4585.32, -3303.67, 1010.04, 5.32048, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113154, 41500, 1, 0, 0, 1, 1, 32492, 0, 4650.89, -3395.22, 1019.48, 2.66266, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113155, 41500, 1, 0, 0, 1, 1, 32493, 0, 4612.55, -3196.86, 1035.26, 5.86431, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113156, 41500, 1, 0, 0, 1, 1, 32492, 0, 4508.32, -2931.91, 1064.63, 0.907571, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113157, 41500, 1, 0, 0, 1, 1, 32493, 0, 4514.56, -2898.22, 1060.67, 4.1631, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113158, 41500, 1, 0, 0, 1, 1, 32492, 0, 4489.04, -3085.58, 990.628, 3.30467, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113159, 41500, 1, 0, 0, 1, 1, 32492, 0, 4610.42, -3107.29, 996.614, 6.25272, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113160, 41500, 1, 0, 0, 1, 1, 32492, 0, 4588.76, -3115.58, 994.699, 1.89255, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113161, 41500, 1, 0, 0, 1, 1, 32492, 0, 4658.66, -3396.61, 1021.12, 2.38896, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113162, 41500, 1, 0, 0, 1, 1, 32492, 0, 4725.42, -3046.13, 1074.71, 0.507762, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113163, 41500, 1, 0, 0, 1, 1, 32492, 0, 4711.27, -3012.02, 1077.1, 3.7001, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113164, 41500, 1, 0, 0, 1, 1, 32493, 0, 4612.11, -2971.49, 1068.9, 1.20428, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113165, 41500, 1, 0, 0, 1, 1, 32493, 0, 4662.75, -2945.41, 1083.09, 5.38179, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113166, 41500, 1, 0, 0, 1, 1, 32492, 0, 4693.16, -3372.02, 1035.62, 2.58148, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113167, 41500, 1, 0, 0, 1, 1, 32493, 0, 4694.22, -3630.88, 968.494, 2.83014, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113168, 41500, 1, 0, 0, 1, 1, 32493, 0, 4576.39, -2922.75, 1070.54, 3.88922, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113169, 41500, 1, 0, 0, 1, 1, 32493, 0, 4579.82, -2963.47, 1067.73, 1.23918, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40400, 41500, 1, 0, 0, 1, 1, 32493, 0, 4575.06, -3398.87, 1008.15, 0.336171, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40483, 41500, 1, 0, 0, 1, 1, 32492, 0, 4552.35, -2977.59, 1064.1, 0.393398, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40569, 41500, 1, 0, 0, 1, 1, 32493, 0, 4617.56, -3397.62, 1015.98, 1.10958, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40627, 41500, 1, 0, 0, 1, 1, 32492, 0, 4556.72, -3460.58, 1005.37, 1.98937, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40659, 41500, 1, 0, 0, 1, 1, 32492, 0, 4573.54, -3372.11, 1009.4, 6.20499, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40686, 41500, 1, 0, 0, 1, 1, 32492, 0, 4587.41, -3454.65, 1009.32, 3.80316, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40713, 41500, 1, 0, 0, 1, 1, 32493, 0, 4519.51, -3414.8, 1019.2, 0.139135, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40734, 41500, 1, 0, 0, 1, 1, 32492, 0, 4507.81, -3073.44, 989.962, 3.96749, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40779, 41500, 1, 0, 0, 1, 1, 32493, 0, 4491.94, -3541.91, 1008.32, 4.84318, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40944, 41500, 1, 0, 0, 1, 1, 32493, 0, 4640.93, -2992.09, 1072.42, 3.69633, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40964, 41500, 1, 0, 0, 1, 1, 32492, 0, 4598.88, -3669.14, 963.976, 2.93309, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(40979, 41500, 1, 0, 0, 1, 1, 32493, 0, 4443, -3539.24, 1034.33, 3.80293, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41082, 41500, 1, 0, 0, 1, 1, 32493, 0, 4506.61, -3476.83, 1011.76, 4.10634, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41090, 41500, 1, 0, 0, 1, 1, 32492, 0, 4568.59, -3118.91, 995.571, 0.785515, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41095, 41500, 1, 0, 0, 1, 1, 32493, 0, 4577.24, -3089.69, 992.427, 5.90226, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41143, 41500, 1, 0, 0, 1, 1, 32493, 0, 4561.88, -3256.57, 1008.43, 1.68214, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41157, 41500, 1, 0, 0, 1, 1, 32492, 0, 4539.49, -3056.93, 993.85, 5.09636, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41205, 41500, 1, 0, 0, 1, 1, 32493, 0, 4518.98, -3111.32, 994.653, 0.349066, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41231, 41500, 1, 0, 0, 1, 1, 32493, 0, 4737.6, -3155.09, 1066.05, 1.68135, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41283, 41500, 1, 0, 0, 1, 1, 32493, 0, 4705.88, -3660.24, 961.987, 4.2199, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41305, 41500, 1, 0, 0, 1, 1, 32492, 0, 4452.67, -3490.66, 1037.75, 0.0644897, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41588, 41500, 1, 0, 0, 1, 1, 32493, 0, 4680.93, -3740.44, 948.246, 4.40146, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41601, 41500, 1, 0, 0, 1, 1, 32493, 0, 4674.31, -3617.92, 970.244, 1.97109, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(41614, 41500, 1, 0, 0, 1, 1, 32493, 0, 4686.82, -3687.12, 955.662, 1.19029, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41501;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112794, 41501, 1, 0, 0, 1, 1, 0, 0, 4667.31, -3404.71, 1022.69, 1.03216, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112795, 41501, 1, 0, 0, 1, 1, 0, 0, 4546.81, -3406.56, 1013.35, 5.92912, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112796, 41501, 1, 0, 0, 1, 1, 0, 0, 4516.17, -3390.08, 1022.49, 3.89101, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112797, 41501, 1, 0, 0, 1, 1, 0, 0, 4535.35, -3367.22, 1009.24, 4.02846, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112798, 41501, 1, 0, 0, 1, 1, 0, 0, 4555.68, -3340.97, 1010.18, 4.91203, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112799, 41501, 1, 0, 0, 1, 1, 0, 0, 4563.7, -3300.91, 1010.2, 3.53366, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112800, 41501, 1, 0, 0, 1, 1, 0, 0, 4597.43, -3278.74, 1015.36, 4.34654, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112801, 41501, 1, 0, 0, 1, 1, 0, 0, 4595.6, -3249.68, 1013.01, 3.85174, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112802, 41501, 1, 0, 0, 1, 1, 0, 0, 4614.64, -3197.66, 1035.26, 2.85036, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112803, 41501, 1, 0, 0, 1, 1, 0, 0, 4641.19, -3224.57, 1037.95, 2.52834, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112804, 41501, 1, 0, 0, 1, 1, 0, 0, 4662.26, -3247.71, 1036.89, 3.26662, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112805, 41501, 1, 0, 0, 1, 1, 0, 0, 4720.04, -3216.5, 1055.53, 5.52071, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112806, 41501, 1, 0, 0, 1, 1, 0, 0, 4693.18, -3193.89, 1050.2, 5.23404, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112807, 41501, 1, 0, 0, 1, 1, 0, 0, 4672.34, -3165.76, 1048.21, 4.88061, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112808, 41501, 1, 0, 0, 1, 1, 0, 0, 4747.82, -3116.33, 1076.97, 0.623751, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112809, 41501, 1, 0, 0, 1, 1, 0, 0, 4724.02, -3121.97, 1067.03, 5.44217, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112810, 41501, 1, 0, 0, 1, 1, 0, 0, 4659.27, -3035.78, 1064.18, 4.48398, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112811, 41501, 1, 0, 0, 1, 1, 0, 0, 4627.96, -3007.49, 1066.55, 1.18531, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112812, 41501, 1, 0, 0, 1, 1, 0, 0, 4529.35, -3134.23, 994.521, 5.78775, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112813, 41501, 1, 0, 0, 1, 1, 0, 0, 4508.85, -3086, 991.805, 3.51402, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112814, 41501, 1, 0, 0, 1, 1, 0, 0, 4571.74, -3059.26, 994.833, 0.678737, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112815, 41501, 1, 0, 0, 1, 1, 0, 0, 4576.53, -3089.91, 992.325, 3.0153, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112816, 41501, 1, 0, 0, 1, 1, 0, 0, 4588.29, -3108.08, 992.554, 2.10031, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112817, 41501, 1, 0, 0, 1, 1, 0, 0, 4614.19, -3151.05, 997.475, 4.17769, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112818, 41501, 1, 0, 0, 1, 1, 0, 0, 4627.65, -3129.69, 1003.26, 4.25623, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112819, 41501, 1, 0, 0, 1, 1, 0, 0, 4677.72, -3074.95, 1062.44, 4.32692, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112820, 41501, 1, 0, 0, 1, 1, 0, 0, 4690.72, -3063.64, 1065.54, 4.51149, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112821, 41501, 1, 0, 0, 1, 1, 0, 0, 4699.3, -2994.19, 1078.73, 4.93953, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112822, 41501, 1, 0, 0, 1, 1, 0, 0, 4687.76, -2969.06, 1082.08, 5.6778, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112823, 41501, 1, 0, 0, 1, 1, 0, 0, 4655.97, -2934.72, 1084.33, 0.973262, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112824, 41501, 1, 0, 0, 1, 1, 0, 0, 4610.15, -2964.42, 1068.34, 5.50894, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112825, 41501, 1, 0, 0, 1, 1, 0, 0, 4578.2, -2914.51, 1072.18, 0.910431, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112826, 41501, 1, 0, 0, 1, 1, 0, 0, 4565.25, -2955.96, 1063.43, 6.16082, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112827, 41501, 1, 0, 0, 1, 1, 0, 0, 4544.74, -2970.45, 1062.17, 4.64893, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112828, 41501, 1, 0, 0, 1, 1, 0, 0, 4549.36, -2953.53, 1061.39, 5.12016, 600, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41499;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(494146, 41499, 1, 616, 5017, 1, 1, 0, 0, 4745.15, -3050.91, 1078.62, 5.73313, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(494145, 41499, 1, 616, 5017, 1, 1, 0, 0, 4669.01, -2951.6, 1083.08, 5.8498, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(494144, 41499, 1, 0, 0, 1, 1, 32491, 0, 4597.13, -2983.69, 1084.13, 3.54302, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494143, 41499, 1, 0, 0, 1, 1, 32491, 0, 4518.11, -3339.79, 1009.91, 0.820305, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494142, 41499, 1, 0, 0, 1, 1, 32491, 0, 4551.6, -3284.38, 1009.17, 4.41568, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494141, 41499, 1, 0, 0, 1, 1, 32490, 0, 4470.52, -3421.93, 1039.31, 6.05629, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494140, 41499, 1, 0, 0, 1, 1, 32491, 0, 4715.31, -3349.47, 1051.16, 4.60767, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494139, 41499, 1, 0, 0, 1, 1, 32491, 0, 4769.3, -3156.2, 1089.94, 3.57792, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494138, 41499, 1, 0, 0, 1, 1, 32490, 0, 4618.5, -3455.09, 1019.2, 1.06465, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494137, 41499, 1, 0, 0, 1, 1, 32491, 0, 4527.89, -3364.64, 1010.54, 4.85202, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494136, 41499, 1, 0, 0, 1, 1, 32491, 0, 4516.47, -3107.81, 994.626, 5.75959, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494135, 41499, 1, 0, 0, 1, 1, 32491, 0, 4614.04, -3436.66, 1023.78, 3.10669, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494134, 41499, 1, 0, 0, 1, 1, 32490, 0, 4737.99, -3323.09, 1067.68, 5.16617, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494133, 41499, 1, 0, 0, 1, 1, 32491, 0, 4600.44, -3242, 1015.19, 4.11898, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494132, 41499, 1, 0, 0, 1, 1, 32490, 0, 4577.25, -3108.51, 992.854, 5.70723, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494163, 41499, 1, 0, 0, 1, 1, 32491, 0, 4536.88, -3056.22, 993.85, 5.11381, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494162, 41499, 1, 0, 0, 1, 1, 32490, 0, 4545.06, -3068.61, 994.066, 5.91667, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494161, 41499, 1, 0, 0, 1, 1, 32491, 0, 4577.46, -3003.14, 1072.43, 0.645772, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494160, 41499, 1, 0, 0, 1, 1, 32491, 0, 4615.88, -2999.89, 1069.69, 1.97222, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494159, 41499, 1, 0, 0, 1, 1, 32490, 0, 4544.7, -3439.09, 1002.02, 5.98648, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494158, 41499, 1, 0, 0, 1, 1, 32490, 0, 4477.42, -3491.94, 1021.23, 0.296706, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494157, 41499, 1, 0, 0, 1, 1, 32490, 0, 4468.59, -3552.88, 1013.68, 4.24115, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494150, 41499, 1, 0, 0, 1, 1, 32491, 0, 4541.7, -3354.29, 1006.83, 5.39307, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494151, 41499, 1, 0, 0, 1, 1, 32490, 0, 4572.33, -2912.13, 1071.93, 4.10152, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494152, 41499, 1, 0, 0, 1, 1, 32491, 0, 4548.65, -2958.12, 1061.23, 1.71042, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494153, 41499, 1, 0, 0, 1, 1, 32491, 0, 4702.51, -3007.53, 1076.41, 3.14159, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494154, 41499, 1, 0, 0, 1, 1, 32491, 0, 4672.98, -3070.19, 1061.27, 1.8326, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494155, 41499, 1, 0, 0, 1, 1, 32491, 0, 4497.17, -2936.29, 1065.84, 6.19592, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494156, 41499, 1, 0, 0, 1, 1, 32490, 0, 4495.2, -2936.7, 1088.73, 3.33358, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494149, 41499, 1, 0, 0, 1, 1, 32491, 0, 4607, -3203.95, 1035.08, 0.506145, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494148, 41499, 1, 0, 0, 1, 1, 32490, 0, 4496.82, -2918.81, 1060.29, 2.16421, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(494147, 41499, 1, 0, 0, 1, 1, 32490, 0, 4583.31, -3199.36, 1037.75, 0.0174533, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(41654, 41499, 1, 0, 0, 1, 1, 32490, 0, 4719.57, -3257.79, 1053.3, 2.75762, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(41913, 41499, 1, 0, 0, 1, 1, 32490, 0, 4672.15, -3185.06, 1047.32, 4.64258, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `gameobject` WHERE id=203310;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67007, 203310, 1, 0, 0, 1, 1, 4719.67, -3342.51, 1052.8, 2.91383, 0, 0, 0.993522, 0.113637, 60, 0, 1),
(67008, 203310, 1, 0, 0, 1, 1, 4690.31, -3357.89, 1032.64, 2.99314, 0, 0, 0.997247, 0.0741557, 60, 0, 1),
(67010, 203310, 1, 0, 0, 1, 1, 4693.87, -3385.17, 1044.75, 2.6994, 0, 0, 0.975657, 0.219301, 60, 0, 1),
(67011, 203310, 1, 0, 0, 1, 1, 4658.96, -3417.63, 1027.12, 2.3978, 0, 0, 0.93164, 0.363381, 60, 0, 1),
(67012, 203310, 1, 0, 0, 1, 1, 4616.13, -3427.87, 1016.26, 2.17554, 0, 0, 0.885592, 0.464464, 60, 0, 1),
(67013, 203310, 1, 0, 0, 1, 1, 4588.62, -3418.49, 1013.72, 4.24741, 0, 0, 0.851, -0.525165, 60, 0, 1),
(67014, 203310, 1, 0, 0, 1, 1, 4525.95, -3415.81, 1017.51, 0.395025, 0, 0, 0.196231, 0.980558, 60, 0, 1),
(67015, 203310, 1, 0, 0, 1, 1, 4524.57, -3376.45, 1019.43, 0.383242, 0, 0, 0.190451, 0.981697, 60, 0, 1),
(67018, 203310, 1, 0, 0, 1, 1, 4547.73, -3371.7, 1007.88, 0.104429, 0, 0, 0.0521909, 0.998637, 60, 0, 1),
(67019, 203310, 1, 0, 0, 1, 1, 4549.14, -3304.38, 1009.24, 5.94387, 0, 0, 0.168847, -0.985642, 60, 0, 1),
(67020, 203310, 1, 0, 0, 1, 1, 4583.75, -3295.1, 1010.99, 4.96605, 0, 0, 0.611987, -0.790868, 60, 0, 1),
(67021, 203310, 1, 0, 0, 1, 1, 4606.74, -3289.21, 1008.94, 4.98804, 0, 0, 0.603253, -0.79755, 60, 0, 1),
(67022, 203310, 1, 0, 0, 1, 1, 4704.1, -3299.26, 1040.17, 2.9248, 0, 0, 0.994131, 0.108185, 60, 0, 1),
(67023, 203310, 1, 0, 0, 1, 1, 4717.01, -3284.67, 1048.77, 3.16984, 0, 0, 0.9999, -0.0141252, 60, 0, 1),
(67035, 203310, 1, 0, 0, 1, 1, 4670.6, -3303.71, 1033.54, 5.99335, 0, 0, 0.144411, -0.989518, 60, 0, 1),
(67036, 203310, 1, 0, 0, 1, 1, 4660.72, -3366.42, 1023.78, 4.23013, 0, 0, 0.855505, -0.517795, 60, 0, 1),
(67037, 203310, 1, 0, 0, 1, 65534, 4591.28, -3390.45, 1021.98, 3.4141, 0, 0, 0.990732, -0.135835, 60, 0, 1),
(67038, 203310, 1, 0, 0, 1, 65534, 4624.86, -3392.14, 1017.04, 6.13944, 0, 0, 0.0718127, -0.997418, 60, 0, 1);

DELETE FROM `creature` WHERE id=41509;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113048, 41509, 1, 0, 0, 1, 1, 32491, 0, 4634.73, -3369.89, 1030.43, 4.66003, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113049, 41509, 1, 0, 0, 1, 1, 32491, 0, 4614.09, -3384.33, 1019.13, 3.76991, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113050, 41509, 1, 0, 0, 1, 1, 32491, 0, 4600.7, -3381.38, 1021.43, 4.97419, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113051, 41509, 1, 0, 0, 1, 1, 32490, 0, 4655.85, -3312.2, 1028.51, 0.663225, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113052, 41509, 1, 0, 0, 1, 1, 32491, 0, 4572.44, -3335.65, 1009.57, 3.68265, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113053, 41509, 1, 0, 0, 1, 1, 32490, 0, 4623.28, -3301.25, 1012.91, 2.02458, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113054, 41509, 1, 0, 0, 1, 1, 32491, 0, 4647.53, -3371.77, 1020.21, 5.5676, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113055, 41509, 1, 0, 0, 1, 1, 32490, 0, 4645.27, -3352.03, 1030.41, 6.10865, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113056, 41509, 1, 0, 0, 1, 1, 32490, 0, 4607.88, -3370.84, 1020.4, 4.24115, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113057, 41509, 1, 0, 0, 1, 1, 32490, 0, 4612, -3375.95, 1042.21, 5.67232, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113058, 41509, 1, 0, 0, 1, 1, 32491, 0, 4610.91, -3365.07, 1040.47, 2.9147, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113059, 41509, 1, 0, 0, 1, 1, 32490, 0, 4667.68, -3330.11, 1027.72, 6.12611, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(41944, 41509, 1, 0, 0, 1, 1, 32491, 0, 4660.05, -3349.43, 1024.24, 0.401426, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(42114, 41509, 1, 0, 0, 1, 1, 32490, 0, 4571.54, -3375.16, 1009.9, 0.989783, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(42283, 41509, 1, 0, 0, 1, 1, 32491, 0, 4629.79, -3354.49, 1036.4, 5.41052, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(42357, 41509, 1, 0, 0, 1, 1, 32491, 0, 4657.21, -3399.93, 1020.72, 0.427155, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(42472, 41509, 1, 0, 0, 1, 1, 32490, 0, 4646.2, -3298.5, 1034.56, 1.0472, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(42480, 41509, 1, 0, 0, 1, 1, 32491, 0, 4587.85, -3309.63, 1009.95, 2.00713, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `guid`=112720;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112720, 41497, 1, 0, 0, 1, 1, 32488, 0, 4610.04, -3342.81, 1025.64, 2.19912, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=112673;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112673, 41492, 1, 0, 0, 1, 1, 32487, 0, 4611.86, -3354.49, 1020.52, 4.86947, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);



DELETE FROM `quest_template` WHERE `Id`=25906;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25906, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25904, 0, 0, 0, 1, 7800, 16500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57343, 57342, 57344, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Third Flamegate', 'Travel through the flamegate in the Scorched Plain and locate Garunda Mountainpeak within.', 'Memorize the glyph.$BTake it within yourself.$B$BDraw it on the ground before the flamegate.$BEast of here.$BEnter the Firelands.$B$BI cannot come with you.$BBut my children await. Inside.$B$BFind Garunda Mountainpeak within the realm of flame.', '', 'You were sent by the turtle god? Bless his almighty shell! I thought I was trapped down here forever.', '', 'Travel through the flamegate in the Scorched Plain and locate Garunda Mountainpeak within.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature_template` WHERE `entry`=41498;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41498, 0, 0, 0, 0, 0, 32489, 0, 0, 0, 'Garunda Mountainpeak', '', '', 11528, 82, 82, 3, 0, 2252, 2252, 3, 1, 1.14286, 1, 1, 1, 0, 288, 399, 0, 424, 1.8, 2000, 2000, 1, 512, 0, 0, 0, 0, 0, 0, 0, 288, 399, 424, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `guid`=137225;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137225, 41498, 1, 0, 0, 1, 1, 32489, 0, 4670.89, -3648.73, 695.2, 5.04494, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=41557;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41557, 0, 0, 0, 0, 0, 32504, 0, 0, 0, 'Child of Tortolla', '', '', 0, 80, 80, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33536, 2048, 0, 21, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE `id`=41557;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137226, 41557, 1, 616, 5099, 1, 1, 0, 0, 4676.12, -3648.3, 695.26, 3.75261, 120, 0, 0, 2671, 0, 0, 0, 0, 0, 0),
(137227, 41557, 1, 616, 5099, 1, 1, 0, 0, 4665.89, -3650.97, 695.243, 5.94636, 120, 0, 0, 2671, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=41498 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41498, 0, 0, 0, 20, 0, 100, 0, 25915, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 41581, 5, 0, 0, 0, 0, 0, ''),
(41498, 0, 1, 0, 20, 0, 100, 0, 25915, 0, 0, 0, 28, 77736, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, ''),
(41498, 0, 2, 0, 20, 0, 100, 0, 25923, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 41581, 5, 0, 0, 0, 0, 0, ''),
(41498, 0, 3, 0, 20, 0, 100, 0, 25923, 0, 0, 0, 28, 77736, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=41565;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137229, 41565, 1, 0, 0, 1, 1, 33649, 0, 4520.27, -3666.31, 666.904, 2.9147, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137230, 41565, 1, 0, 0, 1, 1, 33649, 0, 4700.32, -3556.38, 688.543, -2.91412, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137231, 41565, 1, 0, 0, 1, 1, 33649, 0, 4670.65, -3602.31, 692.477, 5.04369, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137232, 41565, 1, 0, 0, 1, 1, 33649, 0, 4591.47, -3559.95, 684.281, 0.731244, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137233, 41565, 1, 0, 0, 1, 1, 33649, 0, 4556.54, -3521.11, 680.286, 2.21041, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137234, 41565, 1, 0, 0, 1, 1, 33649, 0, 4617.66, -3546.31, 682.829, 5.23932, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137235, 41565, 1, 0, 0, 1, 1, 33649, 0, 4724.85, -3568.43, 692.419, 3.09632, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137236, 41565, 1, 0, 0, 1, 1, 33649, 0, 4718.8, -3623.8, 690.244, 0.0964966, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137237, 41565, 1, 0, 0, 1, 1, 33649, 0, 4727.34, -3605.54, 689.593, 1.86419, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137238, 41565, 1, 0, 0, 1, 1, 33649, 0, 4569.51, -3599.57, 680.635, 0.15646, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137239, 41565, 1, 0, 0, 1, 1, 33649, 0, 4544.8, -3657.35, 671.484, 4.81798, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137240, 41565, 1, 0, 0, 1, 1, 33649, 0, 4574.76, -3572.17, 682.95, 6.07758, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137241, 41565, 1, 0, 0, 1, 1, 33649, 0, 4605.8, -3546.07, 684.751, 2.61727, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137242, 41565, 1, 0, 0, 1, 1, 33649, 0, 4504.18, -3715.75, 661.069, 0.583533, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(137243, 41565, 1, 0, 0, 1, 1, 33649, 0, 4570.63, -3536.09, 682.418, 4.22024, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41563;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137247, 41563, 1, 0, 0, 1, 1, 34244, 0, 4557.54, -3704.14, 674.36, 4.49432, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137248, 41563, 1, 0, 0, 1, 1, 34244, 0, 4582.8, -3650.62, 675.712, 2.93215, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137249, 41563, 1, 0, 0, 1, 1, 34244, 0, 4621.95, -3554.15, 682.265, 5.54425, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137250, 41563, 1, 0, 0, 1, 1, 34244, 0, 4651.67, -3587.51, 688.433, 5.98882, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137251, 41563, 1, 0, 0, 1, 1, 34244, 0, 4723.17, -3587.4, 690.665, 1.70507, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137252, 41563, 1, 0, 0, 1, 1, 34244, 0, 4540.83, -3651.97, 670.823, 4.72763, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137253, 41563, 1, 0, 0, 1, 1, 34244, 0, 4523.26, -3717.76, 666.105, 6.13123, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(42587, 41563, 1, 0, 0, 1, 1, 34244, 0, 4477.22, -3690.71, 658.917, 1.79769, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(42591, 41563, 1, 0, 0, 1, 1, 34244, 0, 4562.33, -3683.97, 674.986, 6.14491, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(42689, 41563, 1, 0, 0, 1, 1, 34244, 0, 4573.74, -3645.88, 675.53, -2.43577, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(42747, 41563, 1, 0, 0, 1, 1, 34244, 0, 4476.15, -3734.95, 660.315, 1.27409, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);



DELETE FROM `smart_scripts` WHERE `entryorguid`=4158100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4158100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 77753, 2, 0, 0, 0, 0, 11, 38821, 7, 0, 0, 0, 0, 0, ''),
(4158100, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 28, 77753, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=41581;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41581, 0, 0, 0, 0, 0, 32524, 0, 0, 0, 'Child of Tortolla', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 2048, 0, 21, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=41581 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41581, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(41581, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 77736, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(41581, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 350000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41581, 0, 3, 0, 8, 0, 100, 1, 30964, 0, 0, 0, 80, 4158100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41581, 0, 4, 0, 38, 0, 100, 0, 0, 2, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature` WHERE `guid`=42760;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(42760, 38821, 1, 0, 0, 1, 1, 21072, 0, 4576.87, -3722.52, 675.542, 6.08875, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=42767;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(42767, 38821, 1, 0, 0, 1, 1, 21072, 0, 4549.63, -3720.88, 672.644, 6.08875, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `guid`=42769;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(42769, 38821, 1, 0, 0, 1, 1, 21072, 0, 4496.67, -3733.2, 660.399, 6.08875, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `guid`=42777;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(42777, 38821, 1, 0, 0, 1, 1, 21072, 0, 4461.76, -3716.93, 659.22, 1.39207, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `quest_template` WHERE `Id`=25915;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25915, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25906, 0, 0, 25923, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 77725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Strength of Tortolla', 'Escort a Child of Tortolla to a Nemesis Crystal. See Garunda Mountainpeak if you lose your companion.', 'The dark usurper Nemesis fled here when the fires of Hyjal receded. We are not yet strong enough to defeat Nemesis, $N, but we may be able to turn his own strength against him.$B$BI will send a child of Tortolla with you, one of the children you freed earlier from the Twilight\'s corruption.$B$BSearch the depths of this cave for a Nemesis Crystal, and allow the young turtle to examine it.$B$BSee me if you lose your companion!', '', 'Ah yes, yes... the secret strength of Nemesis, unearthed here in these caverns.$B$BWe know all that we need to know, $n. It is time to finish this.', '', 'Return to Garunda Mountainpeak within the Crucible.', 41602, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nemesis Crystal Examined', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 1, 273, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25910;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25910, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25906, 0, 0, 0, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Time for Mercy has Passed', 'Slay 10 Molten Tormentors and 4 Shadowflame Masters.', 'This cavern is an abomination, $N. And it\'s filled with horrors from the depths.$B$BI don\'t want any of these - things - getting through the portal to the outside world. Slay everything!', '', 'So it is done.$B$BKnowing that Twilight\'s Hammer is in league with creatures of malice such as these... it really curdles the blood.', '', 'Return to Garunda Mountainpeak within the Crucible.', 41563, 41565, 0, 0, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 274, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE `id`=41614;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137228, 41614, 1, 0, 0, 1, 1, 35321, 0, 4432.73, -3587.82, 639.694, 4.62512, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=41581;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41581, 0, 0, 0, 0, 0, 32524, 0, 0, 0, 'Child of Tortolla', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 512, 2048, 0, 21, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `gameobject` WHERE `id`=203375;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(326129, 203375, 1, 0, 0, 1, 1, 4461.76, -3716.93, 659.22, 6.01227, 0, 0, 0.135044, -0.99084, 300, 0, 1),
(326128, 203375, 1, 0, 0, 1, 1, 4496.67, -3733.2, 660.399, 1.60618, 0, 0, 0.719506, 0.694486, 300, 0, 1),
(326127, 203375, 1, 0, 0, 1, 1, 4549.63, -3720.88, 672.644, 4.22694, 0, 0, 0.85633, -0.516429, 300, 0, 1),
(326126, 203375, 1, 0, 0, 1, 1, 4576.87, -3722.52, 675.542, 4.42822, 0, 0, 0.800113, -0.599849, 300, 0, 1);


DELETE FROM `creature_text` WHERE `entry`=41581;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(41581, 0, 0, '%s approaches the Nemesis Crystal and cautiously examines it.', 16, 0, 100, 0, 0, 0, 0, 'Child of Tortolla');

DELETE FROM `report_quest` WHERE `id`=25915;
INSERT INTO `report_quest` (`id`, `status`, `count`, `comment`) VALUES (25915, 0, 1, NULL);

DELETE FROM `conditions` WHERE `SourceEntry`=77736;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 77736, 0, 0, 4, 0, 5099, 0, 0, 0, 0, 0, '', '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=-42760 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-42760, 0, 0, 0, 8, 0, 100, 0, 77753, 0, 0, 0, 33, 41602, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(-42760, 0, 1, 0, 1, 0, 100, 0, 2000, 2000, 4000, 4000, 11, 30964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=-42767 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-42767, 0, 0, 0, 8, 0, 100, 0, 77753, 0, 0, 0, 33, 41602, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(-42767, 0, 1, 0, 1, 0, 100, 0, 2000, 2000, 4000, 4000, 11, 30964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=-42769 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-42769, 0, 0, 0, 8, 0, 100, 0, 77753, 0, 0, 0, 33, 41602, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(-42769, 0, 1, 0, 1, 0, 100, 0, 2000, 2000, 4000, 4000, 11, 30964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=-42777 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-42777, 0, 0, 0, 8, 0, 100, 0, 77753, 0, 0, 0, 33, 41602, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, ''),
(-42777, 0, 1, 0, 1, 0, 100, 0, 2000, 2000, 2000, 2000, 11, 30964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_addon` WHERE `guid` IN (42760,42767,42769,42777);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(42760, 0, 0, 0, 0, 0, '51193'),
(42767, 0, 0, 0, 0, 0, '51193'),
(42769, 0, 0, 0, 0, 0, '51193'),
(42777, 0, 0, 0, 0, 0, '51193');


DELETE FROM `quest_template` WHERE `Id`=25923;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25923, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25915, 0, 0, 25928, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 56207, 1, 77725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57263, 57262, 57261, 57260, 0, 0, 1, 1, 1, 1, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Finish Nemesis', 'Use the Totem of Tortolla and the help of a Child of Tortolla to defeat Nemesis. See Garunda Mountainpeak if you lose your turtle companion. ', 'Your turtle companion can use this newfound power to render the two of you invulnerable for a short period of time. You can "turtle up" to avoid the worst of Nemesis and his fury. To do so, simply invoke this totem.$B$BThis is all I can do for you. Together, you and a Child of Tortolla must defeat Nemesis, once and for all. Finish the Usurper!$B$BReturn to me if you lose your turtle friend.', '', 'The usurper has perished!$B$BTwilight\'s Hammer dreamed of creating their own pantheon of twisted ancients to rule over the land, sea, and air. With your help, they\'ve all been executed.$B$BWe must tell Tortolla at once!', '', 'Return to Garunda Mountainpeak within the Crucible.', 41614, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Use your totem and turtle companion to withstand his eruption attack. The false God must be destroyed!', 'Nemesis, the Usurper', '', '', 890, 878, 1, 5, 388, 0, 0, 0, 0, 0, 0, 0, 1, 5, 4, 0, 0, 0, 0, 0, 0, 0, 15595);



DELETE FROM `quest_template` WHERE `Id`=25928;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25928, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25923, 0, 0, 25653, 1, 0, 16500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tortolla\'s Triumph', 'Step back through the flamegate and return to Tortolla at the Scorched Plain in Hyjal.', 'I\'ll escort the children of Tortolla out of here and seal up this accursed portal.$B$BI\'ll leave it to you to inform Tortolla of our victory. Simply step back through the flamegate. The ancient will be pleased!', '', 'You\'ve been to the firelands?$B$BNemesis is dead?$B$BSo it is finished.$B$BThank you.', '', 'Step back through the flamegate and return to Tortolla at the Scorched Plain in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 56207, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25653;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25653, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25928, 0, 0, 25597, 1, 7800, 16500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ancients are With Us', 'Return to Ysera at Nordrassil in Mount Hyjal.', 'Nemesis... destroyed.$B$BI feel rejuvenated.$BPowerful.$BAwakened.$B$BTell Ysera my strength is hers.$B$BThe Twilight\'s Hammer will fall.', '', 'By relieving Tortolla of his final burdens you have acquired for us a formidable ally... and the final piece of the puzzle.$B$BSteel yourself, $n. The most difficult part of our journey is to begin.$B$BWe will bring the fight to their stronghold.', '', 'Return to Ysera at Nordrassil in Mount Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25597;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25597, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25653, 0, 0, 25274, 4, 59000, 124800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Jarod Shadowsong', 'Speak to Elementalist Ortell at Darkwhisper Pass.', 'Only once has there been a leader capable of commanding demigods and mortals alike.$B$BHis name was Jarod Shadowsong and his ability to lead in battle was such that Cenarius and the other ancients placed themselves under his command.$B$BHe disappeared for years and his whereabouts were unknown.  Until now.$B$BHe is being held captive inside a Twilight camp in Darkwhisper Gorge.$B$BYour job is to infiltrate their ranks and free Jarod.  Speak to the one known as Ortell at Darkwhisper Pass to the southeast.', '', 'Hey there.  I\'m glad to see they sent someone of your caliber for this operation.$B$BThis here\'s going to call for some subtlety.  We can\'t risk Commander Shadowsong getting killed.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE `id`=38621;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(119691, 38621, 1, 0, 0, 1, 1, 31131, 0, -2072.1, -3450.81, 91.8201, 3.92699, 90, 0, 0, 1086, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=39879;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137223, 39879, 1, 0, 0, 1, 1, 8714, 0, 4553.56, -3979.67, 944.109, 3.1765, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry IN (39879);

DELETE FROM `creature_template_addon` WHERE `entry`=38621;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(38621, 0, 0, 8, 0, 0, NULL);

DELETE FROM `quest_template` WHERE `Id`=25274;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25274, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25597, 0, 0, 25276, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 52683, 1, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Signed in Blood', 'Lure a Twilight Recruit away from the group and take his Twilight Recruitment Papers.', 'You\'re here at last, $N.  Just in time as well.$B$BNews of Ragnaros\' emergence has spurred a large wave of recruits to seek membership in the Twilight\'s Hammer.$B$BIf you\'re to infiltrate the cult, the time is now.  We will need recruitment papers -- signed in blood by a referring Twilight member.  Lure one of the new recruits away from the group and hit them with this blackjack.$B$BIf you\'re lucky, you\'ll be able to steal his recruitment papers.  Bring them back to me and we\'ll do our best to alter them.', '', 'Excellent.  I\'ll do my best to alter these documents.', 'Did you get the papers?', 'Return to Elementalist Ortell at Darkwhisper Pass in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 52683, 0, 0, 0, 1, 0, 0, 52685, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `conditions` WHERE `SourceEntry`=39619;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 39619, 0, 0, 9, 0, 25274, 0, 0, 0, 0, 0, '', '');


DELETE FROM `creature_template` WHERE `entry`=39619;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39619, 0, 0, 0, 0, 0, 2869, 2870, 2871, 2872, 'Twilight Recruit', '', 'Speak', 0, 80, 80, 3, 0, 35, 35, 1, 1, 1.14286, 1, 1, 1, 0, 602, 728, 0, 811, 3.7, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 602, 728, 811, 7, 0, 0, 39619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 0, 1, 1, 0, 52685, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE `id`=39619;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113335, 39619, 1, 0, 0, 1, 1, 2872, 0, 4418.51, -4045.9, 954.189, 1.54685, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113336, 39619, 1, 616, 4991, 1, 1, 0, 0, 4477.75, -4052.77, 936.069, 4.94051, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113337, 39619, 1, 616, 4991, 1, 1, 0, 0, 4480.14, -4053.92, 935.999, 4.39331, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113338, 39619, 1, 616, 4991, 1, 1, 0, 0, 4482.84, -4055.77, 935.645, 3.93668, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113339, 39619, 1, 616, 4991, 1, 1, 0, 0, 4479.62, -4050.74, 935.944, 4.42368, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44300, 39619, 1, 616, 4991, 1, 1, 0, 0, 4482.45, -4052.77, 935.829, 4.0572, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44302, 39619, 1, 616, 4991, 1, 1, 0, 0, 4486, -4050.91, 935.527, 4.03211, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44316, 39619, 1, 616, 4991, 1, 1, 0, 0, 4482.38, -4049, 935.995, 4.10236, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44328, 39619, 1, 616, 4991, 1, 1, 0, 0, 4477.79, -4047.56, 936.653, 4.78984, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=39618;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113170, 39618, 1, 0, 0, 1, 1, 31487, 0, 4478.54, -4058.05, 935.996, 1.02974, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=39619;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(39619, 6532, 0.0571, 1, 0, 1, 1),
(39619, 12101, 0.001, 1, 1, -12101, 1),
(39619, 52685, -100, 1, 0, 1, 1),
(39619, 67409, 0.0571, 1, 0, 1, 1);

DELETE FROM `creature_text` WHERE `entry`=39619;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(39619, 0, 0, 'Fine. I\'ll come with you. This had better be important.', 12, 0, 100, 0, 2000, 0, 0, ''),
(39619, 1, 0, 'Lead the Twilight Recruit away from the group and use the Blackjack to knock him out.', 41, 0, 100, 0, 2000, 0, 39664, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=39619 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39619, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 80, 3961900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=3961900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3961900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(3961900, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3961900, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3961900, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3961900, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 60000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `quest_template` WHERE `Id`=25276;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25276, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25274, 0, 0, 25330, 3, 39000, 83100, 0, 0, 0, 0, 0, 0, 52693, 1, 0, 262280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Your New Identity', 'Speak to Condenna the Pitiless at the Training Grounds in Hyjal.', 'There.  Not my best work, but certainly not my worst.  You will be known as "$Ndamus" among the cultists.$B$BThese papers will bump you ahead of the other recruits and allow you to speak directly to the Twilight instructors.$B$BGo to the proving grounds and show these to Condenna the Pitiless.  She\'s separating the wheat from the chaff.$B$BShow her what you\'re made of.', '', '$ndamus?  Let us hope your parents brought you into this world with more than just a ridiculous name.', 'You will address me with the respect I am due, recruit.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52693, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE `Id`=40562;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137199, 40562, 1, 0, 0, 1, 1, 2870, 0, 4418.26, -4178.81, 931.674, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137200, 40562, 1, 0, 0, 1, 1, 2869, 0, 4432.16, -4160.83, 933.754, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137201, 40562, 1, 0, 0, 1, 1, 2870, 0, 4415.47, -4156.85, 936.947, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137202, 40562, 1, 0, 0, 1, 1, 2871, 0, 4430, -4181.23, 932.555, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137203, 40562, 1, 0, 0, 1, 1, 2869, 0, 4452.79, -4170.94, 932.651, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137204, 40562, 1, 0, 0, 1, 1, 2872, 0, 4436.59, -4184.49, 931.953, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137205, 40562, 1, 0, 0, 1, 1, 2870, 0, 4425.51, -4171.01, 933.552, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(137206, 40562, 1, 0, 0, 1, 1, 2872, 0, 4424.02, -4157.17, 935.766, 2.35619, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40562 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40562, 0, 1, 0, 8, 0, 100, 0, 75637, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature` WHERE `id`=39442;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113037, 39442, 1, 0, 0, 1, 1, 31441, 0, 4439.44, -4195.66, 929.929, 3.59538, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=39451;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112744, 39451, 1, 0, 0, 1, 1, 31439, 0, 4436.43, -4200.64, 929.481, 2.60054, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `quest_template` WHERE `Id`=25224;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25224, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25276, 25291, -25223, 25291, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'In Bloom', 'Obtain 5 Flame Blossoms.', 'It is customary for new recruits to be sent on a difficult or sometimes impossible task.  I was sent to obtain a black dragon\'s scale; last year\'s instructors demanded a feather from a phoenix.$B$BYour lot has it relatively easy.  Find me a handful of flame blossoms.$B$BThey grow around here in relative abundance.  Oh, right.  There will be a gigantic core hound roaming the fields to keep things interesting.  Do your best to avoid him.', '', 'So you managed to pass this part of the test without getting yourself eaten by Smolderos or being incinerated by the fire elementals?$B$BI suppose I should congratulate you on ascending the lowest rung of our ladder.$B$BWell... congratulations, recruit!', 'Yes, $Ndamus?', 'Return to Condenna the Pitiless at the Twilight Gauntlet in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52537, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `quest_template` WHERE `Id`=25223;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25223, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25276, 25291, -25223, 25291, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57310, 57309, 57311, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Trial By Fire', 'Defeat 8 Fiery Instructors.', 'I\'d love to say that with the tides turning against us in Hyjal, every recruit helps our cause and so on... but to be perfectly blunt, most of you are nothing but a burden.$B$BIf I had a copper for every peasant who got too scared when the cataclysm hit and now wishes to join our side... well, let\'s just say I\'d be a rich woman.$B$BFortunately we have checks in place to separate the wheat from the chaff.  Go and prove yourself to the fiery instructors below.  Hopefully you\'ll do better than the others.', '', 'I suppose your abilities are... suitable.  Color me impressed.', '', 'Return to Condenna the Pitiless at the Twilight Gauntlet in Hyjal.', 39344, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `quest_template` WHERE `Id`=25330;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25330, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25276, 25291, -25223, 25291, 4, 59000, 124800, 0, 0, 0, 0, 0, 0, 52819, 1, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Waste of Flesh', 'Use the Frostgale Crystal to extinguish the flames on 4 Immolated Supplicants.', 'Look at these fools.  Half of them won\'t even make it past this trial.$B$BThey are not worthy of ascending into our inner circles.  But perhaps... perhaps they are worthy of menial service.$B$BTake this gem and utilize its power to save some of the less competent supplicants.  Those who have no chance of succeeding.  Those already on fire, preferably.', '', 'Excellent work, $ndamus.  I\'m having the servants you chose for me briefed on their new duties.', '', 'Return to Instructor Cargall at the Twilight Gauntlet in Hyjal.', 39806, 0, 0, 0, 4, 0, 0, 0, 0, 52819, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Immolated Supplicant saved', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE `id`=39344;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112871, 39344, 1, 0, 0, 1, 1, 1070, 0, 4355.83, -4170.42, 942.008, 1.77739, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112872, 39344, 1, 0, 0, 1, 1, 1070, 0, 4397.5, -4231, 914.633, 3.13168, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112873, 39344, 1, 0, 0, 1, 1, 1070, 0, 4372.7, -4166.46, 938.966, 1.49657, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112874, 39344, 1, 0, 0, 1, 1, 1070, 0, 4401.33, -4130.74, 945.788, 2.8127, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112875, 39344, 1, 616, 4984, 1, 1, 0, 0, 4351.91, -4320.87, 905.25, 4.16021, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112876, 39344, 1, 616, 4984, 1, 1, 0, 0, 4379.68, -4360.5, 900.642, 5.45394, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112877, 39344, 1, 616, 4984, 1, 1, 0, 0, 4422.29, -4407.35, 899.86, 3.01842, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112878, 39344, 1, 616, 4984, 1, 1, 0, 0, 4348.01, -4420.38, 899.762, 6.04456, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112879, 39344, 1, 616, 4984, 1, 1, 0, 0, 4382.56, -4469.33, 896.761, 5.28508, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112880, 39344, 1, 616, 4984, 1, 1, 0, 0, 4418.53, -4441.83, 899.171, 0.67715, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112881, 39344, 1, 616, 4984, 1, 1, 0, 0, 4432.44, -4503.23, 891.775, 4.91751, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112882, 39344, 1, 616, 4984, 1, 1, 0, 0, 4384.38, -4536.76, 892.121, 1.24342, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112883, 39344, 1, 616, 4984, 1, 1, 0, 0, 4476.81, -4524.38, 884.152, 6.19457, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112884, 39344, 1, 616, 4984, 1, 1, 0, 0, 4553.09, -4520.12, 883.72, 5.06438, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112885, 39344, 1, 616, 4984, 1, 1, 0, 0, 4506.88, -4551.25, 882.709, 3.09774, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112886, 39344, 1, 616, 4984, 1, 1, 0, 0, 4437.33, -4476, 898.623, 5.49321, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112887, 39344, 1, 616, 4984, 1, 1, 0, 0, 4432.96, -4353.41, 901.345, 1.70916, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112888, 39344, 1, 616, 4991, 1, 1, 0, 0, 4467.18, -4305.61, 904.165, 5.53719, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template_addon` WHERE entry=39344;

DELETE FROM `creature_template` WHERE `entry`=39344;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39344, 0, 0, 0, 0, 0, 1070, 0, 0, 0, 'Fiery Instructor', '', '', 0, 80, 80, 3, 0, 16, 16, 0, 1, 1.14286, 1, 1, 1, 0, 464, 524, 0, 308, 1.1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 464, 524, 308, 4, 0, 0, 39344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 1, 1, 1.5, 0, 1, 1, 0, 52506, 0, 0, 0, 0, 0, 0, 1, 0, 0, 64, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid`=39344 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39344, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature` WHERE `id`=39342;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142854, 39342, 1, 0, 0, 1, 1, 2870, 0, 4400.67, -4231.03, 914.687, 3.13241, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(142855, 39342, 1, 0, 0, 1, 1, 2869, 0, 4426.96, -4167.04, 934.509, 3.78736, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=39342;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39342, 0, 0, 0, 0, 0, 2869, 2870, 2871, 2872, 'Twilight Supplicant', '', '', 0, 81, 82, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 465, 606, 0, 707, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 39342, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=39453;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39453, 0, 0, 0, 0, 0, 2869, 2870, 2871, 2872, 'Immolated Supplicant', '', '', 0, 80, 80, 3, 0, 35, 35, 1, 1, 1.14286, 1, 1.14286, 1, 0, 801.8, 1113.4, 0, 1220, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 655.5, 967.1, 134, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 39453, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE `entry`=39453;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39453, 0, 0, 0, 0, 431, '73876');

DELETE FROM `smart_scripts` WHERE `entryorguid`=39453 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39453, 0, 0, 0, 8, 0, 100, 1, 74359, 0, 0, 0, 80, 3945300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39453, 0, 1, 2, 11, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(39453, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 73876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=3945300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(3945300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 73876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3945300, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(3945300, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=39453;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(39453, 0, 0, 'I\'ve been given another chance to serve? i will not fail again!', 12, 0, 100, 0, 2000, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=39344;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(39344, 0, 0, 'Only the worthy will learn the secrets we keep!', 12, 0, 100, 0, 2000, 0, 39369, ''),
(39344, 0, 1, 'What is this? Another unworthy pupil?', 12, 0, 100, 0, 2000, 0, 0, ''),
(39344, 0, 2, 'You think you are good enough to learn from us? You will pay for your insolence!', 12, 0, 100, 0, 2000, 0, 0, ''),
(39344, 0, 3, 'You will wish you never came here, worm!', 12, 0, 100, 0, 2000, 0, 39371, ''),
(39344, 0, 4, 'Your flesh will burn, mortal!', 12, 0, 100, 0, 2000, 0, 39373, ''),
(39344, 0, 5, 'Your only lesson will be death.', 12, 0, 100, 0, 2000, 0, 39372, ''),
(39344, 0, 6, 'Yours will be a lesson in pain!', 12, 0, 100, 0, 2000, 0, 39368, '');


DELETE FROM `gameobject` WHERE id=202619;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(68087, 202619, 1, 0, 0, 1, 1, 4529.45, -4533.66, 883.24, 4.9777, 0, 0, 0.607368, -0.794421, 300, 0, 1),
(68088, 202619, 1, 0, 0, 1, 1, 4491.3, -4527.42, 882.861, 6.10502, 0, 0, 0.0889649, -0.996035, 300, 0, 1),
(68089, 202619, 1, 0, 0, 1, 1, 4410.36, -4533.15, 890.136, 2.51343, 0, 0, 0.951081, 0.308941, 300, 0, 1),
(68090, 202619, 1, 0, 0, 1, 1, 4414.26, -4497.96, 893.115, 0.721871, 0, 0, 0.35315, 0.935567, 300, 0, 1),
(68091, 202619, 1, 0, 0, 1, 1, 4362.84, -4477.42, 897.601, 3.94492, 0, 0, 0.920411, -0.390951, 300, 0, 1),
(68092, 202619, 1, 0, 0, 1, 1, 4365.99, -4430.43, 897.274, 2.57441, 0, 0, 0.960056, 0.279807, 300, 0, 1),
(68093, 202619, 1, 0, 0, 1, 1, 4430.2, -4451.1, 899.754, 1.08743, 0, 0, 0.51732, 0.855792, 300, 0, 1),
(68094, 202619, 1, 0, 0, 1, 1, 4412.33, -4434.15, 898.144, 3.33367, 0, 0, 0.995392, -0.0958928, 300, 0, 1),
(68095, 202619, 1, 0, 0, 1, 1, 4403.83, -4403.44, 898.675, 0.0664115, 0, 0, 0.0331996, 0.999449, 300, 0, 1),
(68096, 202619, 1, 0, 0, 1, 1, 4362.91, -4389.48, 898.972, 5.64318, 0, 0, 0.314569, -0.949235, 300, 0, 1),
(68097, 202619, 1, 0, 0, 1, 1, 4343.72, -4382.42, 900.986, 3.93887, 0, 0, 0.92159, -0.388165, 300, 0, 1),
(68098, 202619, 1, 0, 0, 1, 1, 4385.63, -4342.21, 901.289, 4.42974, 0, 0, 0.799658, -0.600456, 300, 0, 1),
(68099, 202619, 1, 616, 4984, 1, 1, 4410.17, -4504.5, 893.687, 1.24907, 0, 0, 0.584721, 0.811234, 300, 0, 1),
(68100, 202619, 1, 616, 4984, 1, 1, 4424.64, -4512.73, 891.289, 5.87114, 0, 0, 0.204568, -0.978852, 300, 0, 1),
(68101, 202619, 1, 616, 4984, 1, 1, 4431.08, -4527.88, 888.111, 4.92867, 0, 0, 0.62666, -0.779293, 300, 0, 1),
(68102, 202619, 1, 616, 4984, 1, 1, 4417.53, -4541.27, 889.509, 3.86445, 0, 0, 0.935392, -0.353612, 300, 0, 1),
(68103, 202619, 1, 616, 4984, 1, 1, 4394.58, -4550.75, 891.939, 3.25577, 0, 0, 0.998371, -0.0570573, 300, 0, 1),
(68104, 202619, 1, 616, 4984, 1, 1, 4381.9, -4540.03, 893.154, 2.52142, 0, 0, 0.952307, 0.30514, 300, 0, 1),
(68105, 202619, 1, 616, 4984, 1, 1, 4376, -4521.84, 896.64, 1.59072, 0, 0, 0.714117, 0.700026, 300, 0, 1),
(68106, 202619, 1, 616, 4984, 1, 1, 4380.33, -4503.48, 895.359, 1.84991, 0, 0, 0.798592, 0.601872, 300, 0, 1),
(68107, 202619, 1, 616, 4984, 1, 1, 4395.46, -4494.67, 894.626, 0.188788, 0, 0, 0.094254, 0.995548, 300, 0, 1),
(68108, 202619, 1, 616, 4984, 1, 1, 4412.92, -4494.2, 893.747, 1.02916, 0, 0, 0.492169, 0.8705, 300, 0, 1);


DELETE FROM `creature` WHERE id=40575;

DELETE FROM `creature` WHERE id=40573;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137173, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4323.15, -4352.99, 920.185, 4.28484, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137172, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4442.15, -4327.25, 925.576, 3.78452, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137171, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4509.97, -4310.86, 918.654, 4.07246, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137170, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4408.89, -4156.85, 956.106, 4.56552, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137169, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4437.76, -4149.06, 982.009, 4.02747, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137167, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4456.42, -4375.38, 918.654, 3.94299, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137168, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4401.33, -4504.22, 893.718, 2.44764, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137160, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4374.85, -4231.46, 923.443, 3.01721, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137161, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4314.02, -4395.21, 919.88, 5.27421, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137162, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4405.89, -4149.52, 962.325, 3.7572, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137163, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4500.34, -4321.64, 936.599, 3.67177, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137164, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4435.48, -4329.26, 926.821, 4.70004, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137165, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4396.76, -4252.1, 948.632, 4.63672, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137166, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4338.34, -4309.27, 910.2, 0.927152, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137159, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4515.52, -4300.23, 955.253, 3.15868, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137158, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4480.79, -4301.87, 925.587, 3.6424, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137156, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4447.66, -4079.31, 997.889, 5.52274, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137157, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4521.66, -4295.52, 902.962, 4.13263, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137155, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4413.26, -4293.98, 905.274, 6.21401, 120, 5, 0, 1, 1, 1, 0, 0, 0, 0),
(137154, 40573, 1, 616, 4984, 1, 2, 29179, 0, 4413.88, -4192.48, 985.435, 4.41873, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0),
(137153, 40573, 1, 616, 4991, 1, 2, 29179, 0, 4517.01, -4310.74, 1032.31, 4.42694, 120, 15, 0, 1, 1, 1, 0, 0, 0, 0);



DELETE FROM `creature_template` WHERE `entry`=40573;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40573, 0, 0, 0, 0, 0, 29179, 0, 0, 0, 'Twilight Stormwaker', '', '', 0, 81, 81, 3, 0, 2253, 2253, 0, 1, 1.14286, 1, 1, 1, 1, 2, 2, 0, 24, 2.5, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 0, 2, 2, 24, 7, 2112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 759, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 1, 0.859198, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 273, 1, 0, 0, 0, '', 13623);


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40573;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(40573, 46598, 1, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40573 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40573, 0, 0, 0, 27, 0, 100, 512, 0, 0, 0, 0, 80, 4057300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE entry=40573;

DELETE FROM `smart_scripts` WHERE `entryorguid`=4057300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4057300, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 45, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(4057300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE id=40564;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112835, 40564, 1, 616, 4984, 1, 2, 0, 0, 4516.36, -4516.22, 883.764, 4.43622, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112836, 40564, 1, 616, 4984, 1, 2, 0, 0, 4510.81, -4545.7, 882.225, 1.75565, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(112837, 40564, 1, 0, 0, 1, 2, 1070, 0, 4504.27, -4512.89, 883.674, 6.26219, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112838, 40564, 1, 0, 0, 1, 2, 1070, 0, 4389.29, -4539.64, 891.68, 4.15589, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112839, 40564, 1, 0, 0, 1, 2, 1070, 0, 4395.79, -4510.25, 892.689, 0.695495, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112840, 40564, 1, 0, 0, 1, 2, 1070, 0, 4347.71, -4384.84, 900.848, -0.121242, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112841, 40564, 1, 0, 0, 1, 2, 1070, 0, 4375.96, -4261.64, 911.188, 1.73474, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112842, 40564, 1, 0, 0, 1, 2, 1070, 0, 4362.63, -4408.76, 899.07, -0.188786, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112843, 40564, 1, 0, 0, 1, 2, 1070, 0, 4379.59, -4392.3, 899.433, 1.24504, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112844, 40564, 1, 0, 0, 1, 2, 1070, 0, 4399.66, -4282.54, 906.177, 2.68855, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112845, 40564, 1, 0, 0, 1, 2, 1070, 0, 4380.98, -4412.92, 898.013, 4.58942, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112846, 40564, 1, 0, 0, 1, 2, 1070, 0, 4388.28, -4460.75, 896.97, 0, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112847, 40564, 1, 0, 0, 1, 2, 1070, 0, 4404.27, -4485.88, 894.63, 1.89627, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112848, 40564, 1, 0, 0, 1, 2, 1070, 0, 4340.97, -4363.57, 902.961, -1.58212, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112849, 40564, 1, 0, 0, 1, 2, 1070, 0, 4425.28, -4440.49, 898.966, 6.04918, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112850, 40564, 1, 0, 0, 1, 2, 1070, 0, 4482.63, -4540.25, 882.132, 5.25211, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112851, 40564, 1, 0, 0, 1, 2, 1070, 0, 4407.43, -4518.82, 891.429, 2.71094, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112852, 40564, 1, 0, 0, 1, 2, 1070, 0, 4414.42, -4518.83, 890.357, 2.98047, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112853, 40564, 1, 0, 0, 1, 2, 1070, 0, 4389.46, -4231.04, 916.508, 1.66069, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112854, 40564, 1, 0, 0, 1, 2, 1070, 0, 4410.9, -4464.42, 896.716, 5.37912, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112855, 40564, 1, 0, 0, 1, 2, 1070, 0, 4422.12, -4456.56, 898.966, 5.59434, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112856, 40564, 1, 0, 0, 1, 2, 1070, 0, 4423.39, -4335.64, 903.194, 0.391066, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112857, 40564, 1, 0, 0, 1, 2, 1070, 0, 4415.04, -4366.93, 901.23, 1.02863, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112858, 40564, 1, 0, 0, 1, 2, 1070, 0, 4475.1, -4509.94, 887.386, 4.31774, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112859, 40564, 1, 0, 0, 1, 2, 1070, 0, 4419.28, -4487.33, 894.63, 4.65932, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112860, 40564, 1, 0, 0, 1, 2, 1070, 0, 4461.26, -4505.35, 891.105, 5.78046, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112861, 40564, 1, 0, 0, 1, 2, 1070, 0, 4388.52, -4250.95, 910.688, 3.39519, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112862, 40564, 1, 0, 0, 1, 2, 1070, 0, 4367.92, -4309.04, 906.056, -1.89952, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112863, 40564, 1, 0, 0, 1, 2, 1070, 0, 4419.9, -4324.94, 903.662, 4.27788, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112864, 40564, 1, 0, 0, 1, 2, 1070, 0, 4411.41, -4378.39, 900.529, 5.72736, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112865, 40564, 1, 0, 0, 1, 2, 1070, 0, 4371.8, -4381.4, 899.183, 0.0943382, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112866, 40564, 1, 0, 0, 1, 2, 1070, 0, 4363.09, -4390.03, 898.973, 6.13161, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112867, 40564, 1, 0, 0, 1, 2, 1070, 0, 4358.33, -4377, 900.723, 4.83106, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112868, 40564, 1, 0, 0, 1, 2, 1070, 0, 4344.98, -4405.32, 900.383, 0, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112869, 40564, 1, 0, 0, 1, 2, 1070, 0, 4337.73, -4346.46, 902.961, 0.790049, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112870, 40564, 1, 0, 0, 1, 2, 1070, 0, 4376.72, -4440.79, 896.878, 0, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(44400, 40564, 1, 0, 0, 1, 2, 1070, 0, 4380.06, -4275.24, 908.186, 1.43484, 90, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(44405, 40564, 1, 616, 4984, 1, 2, 0, 0, 4482.51, -4511.52, 886.272, 4.12511, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44421, 40564, 1, 616, 4984, 1, 2, 0, 0, 4468.31, -4532.85, 883.319, 4.12511, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44438, 40564, 1, 616, 4984, 1, 2, 0, 0, 4455.68, -4545.17, 883.588, 2.02967, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44441, 40564, 1, 616, 4984, 1, 2, 0, 0, 4438.81, -4510.41, 892.079, 1.69116, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44443, 40564, 1, 616, 4984, 1, 2, 0, 0, 4435.24, -4484.72, 896.028, 3.36563, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44448, 40564, 1, 616, 4984, 1, 2, 0, 0, 4411.24, -4515.57, 890.712, 4.46519, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44498, 40564, 1, 616, 4984, 1, 2, 0, 0, 4383.6, -4551.8, 893.65, 2.02888, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44510, 40564, 1, 616, 4991, 1, 2, 0, 0, 4365.97, -4510.22, 901.091, 1.88515, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44518, 40564, 1, 616, 4984, 1, 2, 0, 0, 4380.68, -4482.54, 897.152, 0.941106, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44533, 40564, 1, 616, 4984, 1, 2, 0, 0, 4400.96, -4477.09, 895.771, 0.630088, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44548, 40564, 1, 616, 4984, 1, 2, 0, 0, 4418.14, -4411.19, 899.614, 2.84413, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44554, 40564, 1, 616, 4984, 1, 2, 0, 0, 4398, -4417.73, 898.479, 3.45909, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44556, 40564, 1, 616, 4984, 1, 2, 0, 0, 4360.61, -4442.66, 897.257, 1.14544, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44558, 40564, 1, 616, 4984, 1, 2, 0, 0, 4330.53, -4429.13, 900.976, 1.85754, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44578, 40564, 1, 616, 4984, 1, 2, 0, 0, 4309.65, -4399.9, 904.279, 0.307944, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44586, 40564, 1, 616, 4984, 1, 2, 0, 0, 4327.22, -4373.78, 903.932, 0.990456, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44603, 40564, 1, 616, 4984, 1, 2, 0, 0, 4322.29, -4343.47, 904.411, 2.17248, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44634, 40564, 1, 616, 4984, 1, 2, 0, 0, 4350, -4333.93, 903.33, 0.030699, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44660, 40564, 1, 616, 4984, 1, 2, 0, 0, 4396.54, -4337.47, 902.441, 2.0209, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44708, 40564, 1, 616, 4984, 1, 2, 0, 0, 4385.94, -4315.54, 904.652, 2.0209, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44748, 40564, 1, 616, 4984, 1, 2, 0, 0, 4351.41, -4295.61, 907.405, 0.425754, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44754, 40564, 1, 616, 4984, 1, 2, 0, 0, 4382.38, -4280.14, 907.776, 5.93532, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44762, 40564, 1, 616, 4984, 1, 2, 0, 0, 4430.75, -4282.61, 908.295, 2.76781, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44819, 40564, 1, 616, 4984, 1, 2, 0, 0, 4423.09, -4309.21, 903.588, 4.5491, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44861, 40564, 1, 616, 4984, 1, 2, 0, 0, 4453.55, -4337.86, 901.42, 5.21276, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44873, 40564, 1, 616, 4984, 1, 2, 0, 0, 4433.89, -4400.74, 901.558, 4.7965, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44882, 40564, 1, 616, 4984, 1, 2, 0, 0, 4406.25, -4432.63, 897.562, 3.61761, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44910, 40564, 1, 616, 4984, 1, 2, 0, 0, 4366.31, -4317.49, 905.583, 1.03575, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44919, 40564, 1, 616, 4984, 1, 2, 0, 0, 4383.68, -4228.58, 918.612, 0.780493, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44936, 40564, 1, 616, 4984, 1, 2, 0, 0, 4417.11, -4211.05, 921.881, 0.0736342, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44962, 40564, 1, 616, 4984, 1, 2, 0, 0, 4423.77, -4246.06, 921.614, 3.85533, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44971, 40564, 1, 616, 4984, 1, 2, 0, 0, 4414.04, -4322.82, 902.945, 4.0124, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(44993, 40564, 1, 616, 4984, 1, 2, 0, 0, 4444.84, -4345.23, 901.172, 2.41726, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45020, 40564, 1, 616, 4984, 1, 2, 0, 0, 4390.7, -4172.76, 934.764, 0.820594, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45023, 40564, 1, 616, 4984, 1, 2, 0, 0, 4398.78, -4187.21, 934.74, 4.66983, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45078, 40564, 1, 616, 4991, 1, 2, 0, 0, 4358.88, -4214.11, 934.65, 3.71557, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45093, 40564, 1, 616, 4984, 1, 2, 0, 0, 4424.2, -4265.32, 909.131, 4.21508, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45105, 40564, 1, 616, 4984, 1, 2, 0, 0, 4398.79, -4314.28, 916.626, 4.41065, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45126, 40564, 1, 616, 4991, 1, 2, 0, 0, 4476.05, -4306.19, 903.184, 1.0083, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45145, 40564, 1, 616, 4984, 1, 2, 0, 0, 4461.93, -4350.5, 902.836, 3.99517, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45160, 40564, 1, 616, 4984, 1, 2, 0, 0, 4438.93, -4376.87, 901.412, 3.99517, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45173, 40564, 1, 616, 4984, 1, 2, 0, 0, 4392.95, -4429.59, 897.639, 3.99517, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45179, 40564, 1, 616, 4984, 1, 2, 0, 0, 4375.68, -4487.49, 897.795, 5.40889, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45218, 40564, 1, 616, 4984, 1, 2, 0, 0, 4439.24, -4517.14, 890.123, 0.697287, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45232, 40564, 1, 616, 4984, 1, 2, 0, 0, 4520.62, -4517.5, 883.736, 5.37355, 90, 0, 0, 30951, 0, 0, 0, 0, 0, 0);

DELETE FROM `quest_template` WHERE `Id`=25291;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25291, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25224, 0, 0, 25509, 3, 39000, 83100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Training', 'Speak to Instructor Mylva in Hyjal.', 'You\'ve proven you\'re worthy of at least participating in our most basic training.$B$BYou\'ll find one of our settlements east of here.  Speak to instructor Mylva there.', '', 'You think you\'re ready for the next step then, $ndamus?$B$BLet\'s see what you\'re capable of.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=39658;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113497, 39658, 1, 0, 0, 1, 1, 31543, 0, 4627.59, -4640.08, 884.901, 2.78038, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113498, 39658, 1, 0, 0, 1, 1, 31543, 0, 4691.13, -4628.34, 881.417, 2.57363, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113499, 39658, 1, 0, 0, 1, 1, 31543, 0, 4629.5, -4516.01, 886.183, 1.67414, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113500, 39658, 1, 0, 0, 1, 1, 31543, 0, 4720.39, -4466.98, 898.404, 2.54655, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113501, 39658, 1, 0, 0, 1, 1, 31543, 0, 4652.34, -4484.99, 890.474, 1.30255, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113502, 39658, 1, 0, 0, 1, 1, 31543, 0, 4734.48, -4363.98, 897.402, 4.45841, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113503, 39658, 1, 0, 0, 1, 1, 31543, 0, 4823.1, -4794.75, 882.666, 1.70848, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113504, 39658, 1, 0, 0, 1, 1, 31543, 0, 4770.06, -4722.51, 880.753, 3.37385, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113505, 39658, 1, 0, 0, 1, 1, 31543, 0, 4577.6, -4103.94, 947.41, 3.93874, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113506, 39658, 1, 0, 0, 1, 1, 31543, 0, 4687.7, -4421.27, 889.465, 0.297242, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113507, 39658, 1, 0, 0, 1, 1, 31543, 0, 4588.93, -4481.25, 883.595, 0, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113508, 39658, 1, 0, 0, 1, 1, 31543, 0, 4471.96, -4461.35, 896.105, 2.65169, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113509, 39658, 1, 0, 0, 1, 1, 31543, 0, 4722.47, -4458.94, 894.409, 4.79748, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113510, 39658, 1, 0, 0, 1, 1, 31543, 0, 4714.51, -4711.46, 880.657, 6.20533, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113511, 39658, 1, 0, 0, 1, 1, 31543, 0, 4654.02, -4650.44, 881.422, 0.0279773, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113512, 39658, 1, 0, 0, 1, 1, 31543, 0, 4782.33, -4711.56, 879.391, 1.5337, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113513, 39658, 1, 0, 0, 1, 1, 31543, 0, 4640.63, -4651.47, 883.672, -3.04274, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45277, 39658, 1, 0, 0, 1, 1, 31543, 0, 4703.66, -4629.29, 880.755, 1.49234, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45283, 39658, 1, 0, 0, 1, 1, 31543, 0, 4674.35, -4630.77, 882.167, -2.23734, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45302, 39658, 1, 0, 0, 1, 1, 31543, 0, 4703.75, -4685.63, 882.306, 2.14531, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45369, 39658, 1, 0, 0, 1, 1, 31543, 0, 4660.29, -4568.82, 887.657, 2.40334, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45403, 39658, 1, 0, 0, 1, 1, 31543, 0, 4561.69, -4568.21, 886.16, 2.33128, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45415, 39658, 1, 0, 0, 1, 1, 31543, 0, 4599.78, -4590.74, 887.682, -0.179102, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45478, 39658, 1, 0, 0, 1, 1, 31543, 0, 4790.48, -4655.23, 871.968, 6.25585, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45480, 39658, 1, 0, 0, 1, 1, 31543, 0, 4661.82, -4693.7, 880.955, 4.5631, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45519, 39658, 1, 0, 0, 1, 1, 31543, 0, 4506.65, -4257.14, 904.11, 3.02632, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45544, 39658, 1, 0, 0, 1, 1, 31543, 0, 4509.34, -4188.96, 913.408, 4.48779, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45560, 39658, 1, 0, 0, 1, 1, 31543, 0, 4735.37, -4755.7, 880.732, 0.312745, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45612, 39658, 1, 0, 0, 1, 1, 31543, 0, 4687.49, -4612.15, 884.542, 4.72824, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature` WHERE id=39391;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113192, 39391, 1, 616, 4994, 1, 1, 0, 0, 4526.75, -4732.72, 887.879, 3.13662, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113193, 39391, 1, 616, 4994, 1, 1, 0, 0, 4525.01, -4730.54, 887.713, 3.95954, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113194, 39391, 1, 616, 4994, 1, 1, 0, 0, 4522.66, -4728.06, 887.834, 4.54161, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113195, 39391, 1, 616, 4994, 1, 1, 0, 0, 4523.51, -4724.26, 887.475, 4.45631, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113196, 39391, 1, 616, 4994, 1, 1, 0, 0, 4525.98, -4726.26, 886.919, 4.24054, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(113197, 39391, 1, 616, 4994, 1, 1, 0, 0, 4528.27, -4728.98, 886.545, 3.59324, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45615, 39391, 1, 616, 4994, 1, 1, 0, 0, 4530.24, -4732.21, 886.656, 3.30697, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45640, 39391, 1, 616, 4994, 1, 1, 0, 0, 4599.58, -4751.09, 889.007, 4.67958, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45654, 39391, 1, 616, 4994, 1, 1, 0, 0, 4599.74, -4746.37, 888.393, 4.67958, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45670, 39391, 1, 616, 4994, 1, 1, 0, 0, 4603.12, -4750.92, 888.98, 4.34535, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45672, 39391, 1, 616, 4994, 1, 1, 0, 0, 4603.5, -4746.36, 888.443, 4.42062, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45755, 39391, 1, 616, 4994, 1, 1, 0, 0, 4601.37, -4748.4, 888.671, 4.4327, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45814, 39391, 1, 616, 4994, 1, 1, 0, 0, 4596.17, -4751.42, 889.044, 5.1653, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45841, 39391, 1, 616, 4994, 1, 1, 0, 0, 4596.9, -4748.45, 888.625, 5.08502, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0),
(45856, 39391, 1, 616, 4994, 1, 1, 0, 0, 4595.25, -4745.62, 888.094, 5.04989, 120, 0, 0, 30951, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=39391;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39391, 0, 0, 0, 0, 0, 2869, 2870, 2871, 2872, 'Twilight Neophyte', '', '', 0, 80, 80, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 291, 344, 0, 324, 1.5, 2000, 2000, 1, 770, 0, 0, 0, 0, 0, 0, 0, 291, 344, 324, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 1, 1.5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template` WHERE `entry`=39413;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39413, 0, 0, 0, 0, 0, 31441, 0, 0, 0, 'Instructor Mylva', '', '', 11443, 81, 81, 0, 0, 35, 35, 15, 1, 1.14286, 1, 1, 1, 0, 301, 388, 0, 424, 1.6, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 301, 388, 424, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `id`=39413;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112746, 39413, 1, 0, 0, 1, 1, 31441, 0, 4522.83, -4732.38, 888.407, 0.855211, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=43563;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112619, 43563, 1, 0, 0, 1, 1, 33414, 0, 4556.41, -4730.42, 883.517, 1.27409, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=40536;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113340, 40536, 1, 0, 0, 1, 1, 2872, 0, 4744.25, -4912.66, 884.603, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(113341, 40536, 1, 0, 0, 1, 1, 2871, 0, 4755.23, -4921.3, 884.259, 1.53589, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(113342, 40536, 1, 0, 0, 1, 1, 2872, 0, 4748.31, -4919.08, 884.492, 0.820305, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(113343, 40536, 1, 0, 0, 1, 1, 2871, 0, 4762.46, -4919.21, 884.272, 2.28638, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(113344, 40536, 1, 616, 4994, 1, 1, 0, 0, 4520.8, -4709.68, 887.408, 6.25832, 120, 0, 0, 30951, 1788, 0, 0, 0, 0, 0),
(113345, 40536, 1, 616, 4994, 1, 1, 0, 0, 4566.68, -4744.37, 886.977, 1.40522, 120, 0, 0, 30951, 1788, 0, 0, 0, 0, 0),
(113346, 40536, 1, 616, 4994, 1, 1, 0, 0, 4615.31, -4756.87, 889.755, 2.8832, 120, 0, 0, 30951, 1788, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40536 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40536, 0, 0, 0, 1, 0, 100, 0, 500, 1000, 45000, 55000, 11, 74919, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Dark Aura on Spawn');

DELETE FROM `creature` WHERE `id`=39412;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112745, 39412, 1, 0, 0, 1, 1, 31439, 0, 4568.81, -4672.05, 883.445, 5.18363, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=39828;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113350, 39828, 1, 0, 0, 1, 1, 19908, 0, 4590.83, -4695.67, 882.777, 5.85233, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113351, 39828, 1, 0, 0, 1, 1, 19908, 0, 4758.16, -4838.25, 883.463, 0.0537836, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=46974;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142947, 46974, 1, 0, 0, 1, 1, 35364, 0, 4453, -4182.65, 940.362, 1.32645, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142975, 46974, 1, 0, 0, 1, 1, 35364, 0, 4610.49, -4689.64, 887.715, 4.17134, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=43565;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113514, 43565, 1, 0, 0, 1, 1, 33416, 0, 4617.89, -4706.24, 883.512, 3.22886, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=43564;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112739, 43564, 1, 0, 0, 1, 1, 33415, 0, 4610.84, -4729.36, 883.781, 1.72788, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=39406;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112743, 39406, 1, 0, 0, 1, 1, 31439, 0, 4599.4, -4756.91, 889.788, 1.55334, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `quest_template` WHERE `Id`=25509;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25509, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25291, 0, 0, 25499, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 54788, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Physical Training: Forced Labor', 'Break 5 Darkwhisper Lodestones.', 'Training to join our ranks is not pleasant.  Why should it be?$B$BThe path to serve the Old Gods is long, painful, and soul-harrowing.  Consider this your first step.$B$BTake this pick and break the lodestone deposits found in the gorge.$B$BNo, we don\'t need any of the ore.  This is purely for your benefit.', '', 'Very well.  You\'re at least competent enough to figure out which way the pointy end of the pick goes.', '', 'Return to Instructor Mylva at the Forge of Supplication in Mount Hyjal.', -202952, 0, 0, 0, 5, 0, 0, 0, 0, 54788, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkwhisper Lodestone broken', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25294;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25294, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25291, 0, 0, 25494, 5, 78000, 166200, 0, 94947, 0, 0, 0, 0, 52717, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Walking the Dog', 'Collect and feed 5 pieces of Charred Basilisk Meat to the Spawn of Smolderos.', 'Hmmmphh.... it seems they\'ll let anyone in these days.$B$BVery well.  You doubtlessly became acquainted with Smolderos in the proving grounds.$B$BWell, I\'ve been entrusted with the care of one of his pups.  Quite the little terror -- if he grows up to be anything like his father he shall serve our cause well.$B$BCollect meat from the basilisks around the area and feed them to him.', '', 'Excellent.  This little pup will grow to be strong and merciless like his father.', '', 'Return to Instructor Devoran at the Forge of Supplication in Hyjal.', 39673, 0, 0, 0, 5, 0, 0, 0, 0, 52708, 52717, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn of Smolderos Fed', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25296;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25296, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25291, 0, 0, 25308, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gather the Intelligence', 'Obtain the Twilight Communique and the Hyjal Battleplans.', 'It\'s me, $N, Ortell!$B$BDon\'t look directly at the outhouse... you\'ll give away my position.$B$BEverything\'s going according to plan then?  Excellent!$B$BI\'m going to need you to obtain some intelligence while you\'re here.  It might not seem like much to get our hands on a map or a letter, but it may mean saving a hundred lives on our side if we can anticipate our enemy\'s next move.', '', 'Excellent job, $n.  Or should I say: "$n"damus?$B$BGive me a minute to read these.', 'Did you get the documents, $N?', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52724, 52725, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `smart_scripts` WHERE `entryorguid`=39659 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39659, 0, 0, 0, 8, 0, 100, 0, 74142, 0, 0, 0, 33, 39673, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Spawn of Smolderos - On spell it - killcredit'),
(39659, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 41, 68000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=46991;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112536, 46991, 1, 0, 0, 1, 1, 35372, 0, 4663.57, -4649.11, 881.297, 2.92833, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112537, 46991, 1, 0, 0, 1, 1, 35372, 0, 4664.8, -4335.37, 901.31, 1.80575, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112538, 46991, 1, 0, 0, 1, 1, 35372, 0, 4514.37, -4270.65, 901.338, 1.52486, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112539, 46991, 1, 0, 0, 1, 1, 35372, 0, 4629.64, -4510.22, 886.259, 1.36037, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112540, 46991, 1, 0, 0, 1, 1, 35372, 0, 4738.24, -4330.49, 893.535, 1.37704, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112541, 46991, 1, 0, 0, 1, 1, 35372, 0, 4669.62, -4355.53, 902.317, 4.94735, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112542, 46991, 1, 0, 0, 1, 1, 35372, 0, 4694.03, -4603.09, 887.531, 2.194, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112543, 46991, 1, 0, 0, 1, 1, 35372, 0, 4708.09, -4716.3, 880.782, 2.23885, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112544, 46991, 1, 0, 0, 1, 1, 35372, 0, 4767.52, -4710.79, 880.093, 1.61769, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `gameobject` WHERE `id`=202952;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(200094, 202952, 1, 616, 4991, 1, 1, 4704.04, -4470.65, 899.561, 3.80902, 0, 0, 0.944833, -0.327552, 120, 0, 1),
(200093, 202952, 1, 616, 4991, 1, 1, 4703.97, -4354.38, 900.093, 2.25349, 0, 0, 0.903019, 0.4296, 120, 0, 1),
(200096, 202952, 1, 616, 4991, 1, 1, 4677.72, -4312.43, 900.828, 6.24009, 0, 0, 0.0215482, -0.999768, 120, 0, 1),
(200095, 202952, 1, 616, 4991, 1, 1, 4569.22, -4184.63, 910.627, 5.40451, 0, 0, 0.42534, -0.905034, 120, 0, 1),
(200090, 202952, 1, 616, 4991, 1, 1, 4539.23, -4126.1, 931.302, 0.290478, 0, 0, 0.144729, 0.989471, 120, 0, 1),
(200091, 202952, 1, 616, 4991, 1, 1, 4484.69, -4245.43, 913.461, 3.29113, 0, 0, 0.997206, -0.0747007, 120, 0, 1),
(200092, 202952, 1, 616, 4991, 1, 1, 4492.51, -4211.59, 916.14, 5.89673, 0, 0, 0.192025, -0.98139, 120, 0, 1),
(200089, 202952, 1, 616, 4991, 1, 1, 4732.94, -4676.82, 880.53, 0.0737545, 0, 0, 0.0368689, 0.99932, 120, 0, 1),
(200088, 202952, 1, 616, 4991, 1, 1, 4697.06, -4765.36, 881.716, 4.07571, 0, 0, 0.892897, -0.45026, 120, 0, 1),
(200085, 202952, 1, 616, 4996, 1, 1, 4735.14, -4810.19, 884.209, 5.61116, 0, 0, 0.329727, -0.944076, 120, 0, 1),
(200084, 202952, 1, 616, 4991, 1, 1, 4481.84, -4370.2, 904.599, 4.89169, 0, 0, 0.64096, -0.767574, 120, 0, 1),
(200083, 202952, 1, 616, 4984, 1, 1, 4371.19, -4237.65, 919.643, 1.9111, 0, 0, 0.816632, 0.577159, 120, 0, 1),
(200087, 202952, 1, 616, 4984, 1, 1, 4333.76, -4457.89, 903.246, 5.22295, 0, 0, 0.505634, -0.862748, 120, 0, 1),
(200086, 202952, 1, 0, 0, 1, 1, 4812.34, -4749.65, 881.458, 3.08328, 0, 0, 0.999575, 0.0291513, 120, 0, 1),
(200097, 202952, 1, 0, 0, 1, 1, 4703.18, -4392.3, 894.526, 0.122337, 0, 0, 0.0611303, 0.99813, 120, 0, 1),
(200098, 202952, 1, 0, 0, 1, 1, 4591.06, -4448.18, 889.992, 0.0123823, 0, 0, 0.00619109, 0.999981, 120, 0, 1),
(200099, 202952, 1, 0, 0, 1, 1, 4655.91, -4508.84, 894.849, 2.36465, 0, 0, 0.925489, 0.378775, 120, 0, 1),
(200100, 202952, 1, 0, 0, 1, 1, 4619.94, -4574.72, 887.887, 3.71946, 0, 0, 0.958548, -0.284931, 120, 0, 1),
(200101, 202952, 1, 0, 0, 1, 1, 4677.59, -4713.84, 880.879, 4.00222, 0, 0, 0.908835, -0.417155, 120, 0, 1),
(200102, 202952, 1, 0, 0, 1, 1, 4681.48, -4636.28, 880.105, 0.405086, 0, 0, 0.201161, 0.979558, 120, 0, 1),
(200103, 202952, 1, 0, 0, 1, 1, 4658.55, -4655.67, 881.961, 3.099, 0, 0, 0.999773, 0.0212933, 120, 0, 1),
(200104, 202952, 1, 616, 4984, 1, 1, 4438.71, -4206.35, 929.207, 0.627145, 0, 0, 0.308459, 0.951238, 120, 0, 1),
(200105, 202952, 1, 616, 4984, 1, 1, 4451.74, -4288.17, 909.305, 1.72103, 0, 0, 0.758178, 0.652047, 120, 0, 1);

DELETE FROM `creature` WHERE id=40563;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113171, 40563, 1, 0, 0, 1, 1, 25191, 0, 4781.55, -4297.17, 892.07, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113172, 40563, 1, 0, 0, 1, 1, 25191, 0, 4831.58, -4296.52, 897.434, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113173, 40563, 1, 0, 0, 1, 1, 25191, 0, 4768.47, -4272.95, 892.655, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113174, 40563, 1, 0, 0, 1, 1, 25191, 0, 4768.47, -4290.15, 893.242, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113175, 40563, 1, 0, 0, 1, 1, 25191, 0, 4820.36, -4289.48, 894.334, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113176, 40563, 1, 0, 0, 1, 1, 25191, 0, 4788.91, -4301.81, 892.848, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113177, 40563, 1, 0, 0, 1, 1, 25191, 0, 4825.61, -4268.59, 895.947, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113178, 40563, 1, 0, 0, 1, 1, 25191, 0, 4813.71, -4331.19, 896.656, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113179, 40563, 1, 0, 0, 1, 1, 25191, 0, 4819.37, -4317.15, 895.664, 2.88437, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113180, 40563, 1, 0, 0, 1, 1, 25191, 0, 4805.69, -4277.52, 892.287, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113182, 40563, 1, 0, 0, 1, 1, 25191, 0, 4721.98, -4279.05, 898.942, 2.64491, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113183, 40563, 1, 0, 0, 1, 1, 25191, 0, 4773.61, -4229.91, 892.285, 4.27606, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113184, 40563, 1, 0, 0, 1, 1, 25191, 0, 4798.74, -4248.91, 892.036, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113185, 40563, 1, 0, 0, 1, 1, 25191, 0, 4770.04, -4249.88, 892.064, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(45861, 40563, 1, 0, 0, 1, 1, 25191, 0, 4807.8, -4258.12, 892.28, 3.83972, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=39749;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113186, 39749, 1, 0, 0, 1, 1, 0, 0, 4804.36, -4232.38, 893.395, 4.17675, 600, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(113187, 39749, 1, 0, 0, 1, 1, 0, 0, 4839.23, -4297.49, 898.653, 3.04578, 600, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(113188, 39749, 1, 0, 0, 1, 1, 0, 0, 4828.12, -4253.21, 896.055, 3.65054, 600, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(113189, 39749, 1, 0, 0, 1, 1, 0, 0, 4828.29, -4268.65, 896.309, 2.29573, 600, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(113190, 39749, 1, 0, 0, 1, 1, 0, 0, 4796.37, -4306.08, 894.139, 3.56807, 600, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(113191, 39749, 1, 0, 0, 1, 1, 0, 0, 4763.84, -4271.51, 893.369, 3.98434, 600, 10, 0, 42, 0, 1, 0, 0, 0, 0),
(45879, 39749, 1, 0, 0, 1, 1, 0, 0, 4749, -4972.46, 906.926, 2.19186, 120, 0, 0, 37187, 0, 0, 0, 0, 0, 0),
(45882, 39749, 1, 0, 0, 1, 1, 0, 0, 4737.6, -4972.33, 907.527, 1.26509, 120, 0, 0, 37187, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40409;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112618, 40409, 1, 0, 0, 1, 1, 20195, 0, 4739.03, -4231.85, 894.555, 5.86431, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40412;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112742, 40412, 1, 0, 0, 1, 1, 1337, 0, 4742.86, -4229.63, 894.524, 5.23599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=40412;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40412, 0, 0, 0, 0, 0, 1337, 0, 0, 0, 'Butcher', '', '', 0, 80, 80, 3, 0, 1806, 1806, 0, 1, 1.14286, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 400, 2000, 1, 0, 2048, 0, 11, 0, 0, 0, 0, 345, 509, 103, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_template` WHERE `entry`=40409;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40409, 0, 0, 0, 0, 0, 20195, 0, 0, 0, 'Gromm\'ko', '', '', 11382, 81, 81, 3, 0, 35, 35, 1, 1, 1.14286, 1, 1.14286, 1, 0, 464, 604, 0, 708, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 353, 512, 112, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40412 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40412, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 10, 112618, 40409, 0, 0, 0, 0, 0, ''),
(40412, 0, 1, 0, 38, 0, 100, 0, 0, 1, 0, 0, 2, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40409 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40409, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4040900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40409, 0, 1, 0, 62, 0, 100, 0, 11382, 0, 0, 0, 80, 4040901, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40409, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4040900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4040900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4040900, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4040900, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, ''),
(4040900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 280000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4040901 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4040901, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4040901, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 12, 40427, 3, 50000, 0, 0, 0, 8, 0, 0, 0, 4747.82, -4234.61, 894.556, 2.18568, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40427 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40427, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 16000, 18000, 11, 74143, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Little Big Flame Breath'),
(40427, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4042700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4042700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4042700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 40412, 20, 0, 0, 0, 0, 0, ''),
(4042700, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 40412, 20, 0, 0, 0, 0, 0, ''),
(4042700, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 74143, 0, 0, 0, 0, 0, 11, 40412, 20, 0, 0, 0, 0, 0, ''),
(4042700, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 55000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=40491 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40491, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4049100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40491, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 40489, 20, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4049100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4049100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4049100, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40489 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40489, 0, 0, 0, 62, 0, 100, 0, 11420, 0, 0, 0, 80, 4048900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40489, 0, 1, 0, 38, 0, 100, 0, 0, 1, 0, 0, 80, 4048901, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4048900 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4048900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4048900, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4048900, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 40491, 20, 0, 0, 0, 0, 0, ''),
(4048900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 4784.1, -4244.4, 891.98, 1.24164, ''),
(4048900, 9, 4, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4048901 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4048901, 9, 0, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4048901, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=40491;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112535, 40491, 1, 0, 0, 1, 1, 0, 0, 4819.36, -4172.49, 897.531, 4.39677, 120, 0, 0, 74374, 0, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=40489;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112675, 40489, 1, 0, 0, 1, 1, 31893, 0, 4806.52, -4179.63, 897.531, 4.4855, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40434;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142351, 40434, 1, 0, 0, 0, 1, 1070, 0, 4538.82, -4737.75, 886.517, 3.52039, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `gameobject_involvedrelation` WHERE `id`=202701;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES 
(202701, 25296),
(202701, 25308),
(202701, 25314);

DELETE FROM `gameobject_questrelation` WHERE `id`=202701;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(202701, 25296),
(202701, 25308),
(202701, 25314),
(202701, 25601);

DELETE FROM `gameobject_template` WHERE `entry`=202952;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(202952, 10, 2571, 'Darkwhisper Lodestone', '', '', '', 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 1874, 25509, 0, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 13623);

DELETE FROM `creature_template` WHERE `entry`=39839;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(39839, 0, 0, 0, 0, 0, 29179, 0, 0, 0, 'Twilight Stormwaker', '', '', 0, 81, 81, 3, 0, 7, 7, 0, 1, 1.14286, 1, 1, 1, 1, 108, 119, 0, 1024, 7.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 0, 108, 119, 1024, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 4, 1, 7.0928, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 273, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE `id`=39839;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142951, 39839, 1, 0, 0, 1, 1, 29179, 0, 4590.85, -4575.33, 956.744, 4.2463, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(142972, 39839, 1, 0, 0, 1, 1, 29179, 0, 4661.81, -4388.65, 939.557, 1.50071, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=39839 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39839, 0, 0, 0, 0, 0, 100, 0, 5100, 5200, 11300, 12500, 11, 80561, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Flame Edge'),
(39839, 0, 1, 0, 0, 0, 100, 0, 9900, 9900, 23400, 26800, 11, 80594, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Flame Thrower'),
(39839, 0, 2, 0, 0, 0, 100, 0, 3000, 4000, 17800, 19200, 11, 18543, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Flame Lash');

DELETE FROM `creature_template_addon` WHERE entry=39839;

DELETE FROM `creature` WHERE id=39838;

DELETE FROM `creature` WHERE id=39752;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112946, 39752, 1, 616, 4996, 1, 1, 0, 0, 4813.63, -4832.67, 882.673, 4.84841, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112947, 39752, 1, 616, 4996, 1, 1, 0, 0, 4810.86, -4834.06, 882.778, 5.82959, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112948, 39752, 1, 616, 4996, 1, 1, 0, 0, 4813.97, -4838.13, 882.63, 1.61436, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112949, 39752, 1, 616, 4996, 1, 1, 0, 0, 4820.61, -4835.92, 882.294, 4.58237, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112950, 39752, 1, 616, 4996, 1, 1, 0, 0, 4823.6, -4834.18, 882.036, 3.54879, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112951, 39752, 1, 616, 4996, 1, 1, 0, 0, 4828.06, -4835.14, 881.863, 1.58608, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112952, 39752, 1, 616, 4996, 1, 1, 0, 0, 4829.48, -4842.4, 881.12, 2.33299, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112953, 39752, 1, 616, 4996, 1, 1, 0, 0, 4820.13, -4841.71, 882.413, 3.06813, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112954, 39752, 1, 616, 4996, 1, 1, 0, 0, 4824.96, -4840.59, 882.049, 0.371852, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112957, 39752, 1, 616, 4996, 1, 1, 0, 0, 4810.32, -4844.61, 882.793, 3.40977, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112955, 39752, 1, 616, 4996, 1, 1, 0, 0, 4815.18, -4841.43, 882.577, 0.579198, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0),
(112956, 39752, 1, 616, 4996, 1, 1, 0, 0, 4820.97, -4847.51, 881.989, 1.43925, 90, 0, 0, 27966, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE entry=40536;


DELETE FROM `smart_scripts` WHERE `entryorguid`=40434 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40434, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4043400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Just Summoned - Call Action List'),
(40434, 0, 1, 2, 33, 0, 100, 1, 1, 43334, 0, 0, 6, 25499, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Damage Taken - Fail Quest 25499'),
(40434, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 28, 75397, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Link - Remove Auras 75397'),
(40434, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - Despawn Self'),
(40434, 0, 4, 5, 7, 0, 100, 1, 0, 0, 0, 0, 6, 25499, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Evade - Fail Quest 25499'),
(40434, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 28, 75397, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Link - Remove Auras 75397'),
(40434, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - Despawn Self');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4043400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4043400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Set Faction 190'),
(4043400, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Say 1'),
(4043400, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Set Faction 14'),
(4043400, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Script - Attack Player'),
(4043400, 9, 4, 0, 0, 0, 100, 0, 60000, 60000, 0, 0, 33, 40440, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Script - Give Killed Credit After 60 Secs'),
(4043400, 9, 5, 0, 0, 0, 100, 0, 60000, 60000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Script - Despawn Self After 60 Secs');


DELETE FROM `creature_text` WHERE `entry`=40434;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40434, 0, 0, 'Run away from the Blazing Trainer!', 41, 0, 100, 0, 2000, 0, 40417, '');

DELETE FROM `creature_template` WHERE `entry`=40434;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40434, 0, 0, 0, 0, 0, 1070, 0, 0, 0, 'Blazing Trainer', '', '', 0, 81, 82, 0, 0, 35, 35, 0, 1, 0.64286, 1, 1, 1, 1, 465, 606, 0, 707, 7.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 356, 517, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 2.6667, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 80, 1, 0, 0, 0, '', 13623);


DELETE FROM `report_quest` WHERE id=25499;

DELETE FROM `quest_template` WHERE `Id`=25499;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25499, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25509, 0, 0, 25299, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 75397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Agility Training: Run Like Hell!', 'Run away from the Blazing Trainer within the Forge of Supplication for 1 minute.', 'Before we go any further, we\'re going to have to get you into shape.$B$BDevotion to the Old Gods is not going to save you when some emerald dragon comes chasing after you.  You need to be fleet of foot, if you catch my drift.$B$BEnough said.  We\'ll summon your trainer... your job is to run away from him without leaving this camp.$B$BGo!', '', 'Oh.  You\'re still alive.$B$BNot bad.', '', 'Return to Instructor Mylva at the Forge of Supplication in Mount Hyjal.', 40440, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Physical Training', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25308;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25308, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25296, 0, 0, 0, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 55137, 1, 0, 136, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seeds of Discord', 'Distract Karr\'gonn and slay Dark Cultist Azennios at the Seat of the Chosen in Hyjal.', 'According to the intelligence you acquired, there is major friction between the ogres and non-ogres in the cult.$B$BHigh Cultist Azennios and the ogre mage Karr\'gonn are meeting at the Seat of the Chosen in an attempt to ease the conflict.$B$BThere is an outhouse like this one at the Seat of the Chosen.  Go there and put on this ogre disguise.  Find a way to kill Azennios while he\'s in this mission of peace.$B$BWe must exploit this division as much as we can!', '', 'Excellent job, $N!  You\'ve outdone yourself this time.', '', 'Return to the Outhouse Hideout at the Forge of Supplication in Hyjal.', 40491, 0, 0, 0, 1, 0, 0, 0, 0, 55137, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azennios is the one we want! Kill him!', 'High Cultist Azennios', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25494;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25494, 2, NULL, 'Untested', 81, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25294, 0, 0, 25496, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'A Champion\'s Collar', 'Obtain the Spiked Basilisk Hide from the Spinescale Matriarch.', 'This little guy is a true menace now, isn\'t he?$B$BWe\'re going to have to give him a nice spiked collar if he\'s going to be a fighting pup.$B$BThe basilisk matriarch has made her lair off of the road to Winterspring.  Bring me her spiked hide and we\'ll fashion a collar for our little killer here.', '', 'Excellent!  Our pup is ready for a fight.', 'Did you get it?', 'Return to Instructor Devorann at the Forge of Supplication in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54610, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=40403;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113496, 40403, 1, 0, 0, 1, 1, 19695, 0, 4867.77, -4524.26, 869.445, 4.7822, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `quest_template` WHERE `Id`=25309;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25309, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25299, 0, 0, 25313, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57308, 57307, 57306, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spiritual Training: Mercy is for the Weak', 'Slay 5 Failed Supplicants at Doom\'s Vigil.', 'You\'ve made it this far.  Others haven\'t.$B$BGo to Doom\'s  Vigil, just north of here.  We\'ve rounded up all the... failures.  I want you to help take care of them.  It\'ll be good for your spiritual growth.$B$BIf this cold-blooded act gives you trouble, think of it as their second chance.  Should any of them manage to kill you... well, they\'ll take your spot.', '', 'You\'re on the fast-track to success.  Let us hope you don\'t ruin your track record with such silly notions as compassion and humaneness.$B$BCome, then.  Let us discuss your future.', '', 'Return to Instructor Mylva at the Forge of Supplication in Hyjal.', 39752, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25496;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25496, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25494, 0, 0, 25314, 6, 156000, 207900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grudge Match', 'Challenge Gromm\'ko at the Seat of the Chosen in Hyjal.', 'I don\'t know if you\'ve picked up on this, but there\'s a bit of a rivalry between the ogre members of the Twilight\'s Hammer and the rest of us.$B$BFor me... it\'s personal.$B$BThis one ogre called Gromm\'ko has a pet raptor named "Butcher."  He\'s taken out the last three of my corehound pups.$B$BI think this last one will fare differently.  He\'s got a real killer\'s instinct.$B$BGo to the Seat of the Chosen and challenge Gromm\'ko to a match between our two beasts.  Humiliate him for me, $Ndamus.', '', 'That\'s how it\'s done!', '', 'Return to Instructor Devorann at the Forge of Supplication in Hyjal.', 40409, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grudge Match', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=40427;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112962, 40427, 1, 0, 0, 0, 1, 31535, 0, 4748.79, -4236.82, 894.612, 2.33026, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=40427;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40427, 0, 0, 0, 0, 0, 31535, 0, 0, 0, 'Spawn of Smolderos', '', '', 0, 81, 81, 3, 0, 1806, 1806, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 10, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_text` WHERE `entry`=40409;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40409, 0, 0, 'You! Your mutt killed my Butcher! I will crush you!', 14, 0, 100, 0, 2000, 0, 0, '');


DELETE FROM `quest_template` WHERE `Id`=25310;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25310, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25314, -25310, 25314, 6, 156000, 207900, 0, 0, 0, 0, 0, 0, 54814, 1, 0, 136, 0, 1, 0, 0, 0, 0, 0, 0, 0, 19715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Greater of Two Evils', 'Use the Talisman of Flame Ascendancy and slay Garnoth, Fist of the Legion, at the Gates of Sothann in Hyjal.', 'We took Darkwhisper Gorge from the demons of the Burning Legion by force.  We\'ve held on to our territory pretty well so far, with one exception.$B$BWe recently lost the Gates of Sothann to a pit lord and his army.  We cannot allow this to stand.$B$BUse this talisman when you\'re near him.  You\'ll gain the powers of a flame ascendant temporarily.  Make it count.', '', 'Excellent work, $Ndamus.  We must show all would-be competitors that we are not ones to give up easily.', '', 'Return to Instructor Mylva at the Forge of Supplication in Hyjal.', 39726, 0, 0, 0, 1, 0, 0, 0, 0, 54814, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Burning Legion has no place here. This is Twilight land now.', 'Garnoth, Fist of the Legion', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25311;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25311, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25314, -25310, 25314, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Territory', 'Slay 10 Horrorguards at the Gates of Sothann in Hyjal.', 'The demons of the Burning Legion think they can just walk up here and take whatever territory they want.  Sure -- the territory was previously theirs, but that\'s beside the point.$B$BWe\'ll teach them not to cross the Twilight\'s Hammer.$B$BHead to the Gates of Sothann and wipe out the contingent of Horrorguards that roam the area.', '', 'Sharp as always.  You do not disappoint me.', '', 'Return to Instructor Mylva at the Forge of Supplication in Hyjal.', 39724, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 25, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE `id`=39724;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113458, 39724, 1, 0, 0, 1, 1, 17096, 0, 4294.66, -3774.08, 984.187, 2.4767, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113459, 39724, 1, 0, 0, 1, 1, 17096, 0, 4255.77, -3779.12, 983.686, 6.14665, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113460, 39724, 1, 0, 0, 1, 1, 17096, 0, 4286.34, -3732.23, 1012.83, 1.06079, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113461, 39724, 1, 0, 0, 1, 1, 17096, 0, 4376.02, -3759.55, 989.812, 5.09948, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113462, 39724, 1, 0, 0, 1, 1, 17096, 0, 4357.75, -3792.95, 976.317, 5.56471, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113463, 39724, 1, 0, 0, 1, 1, 17096, 0, 4320.89, -3750.51, 998.661, 1.19325, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113464, 39724, 1, 0, 0, 1, 1, 17096, 0, 4385.88, -3798.56, 979.485, 5.22449, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113465, 39724, 1, 0, 0, 1, 1, 17096, 0, 4306.01, -3925.86, 975.652, 4.85186, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113466, 39724, 1, 0, 0, 1, 1, 17096, 0, 4267.29, -4029.38, 977.341, 3.00821, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113467, 39724, 1, 0, 0, 1, 1, 17096, 0, 4294.56, -4062.64, 977.407, 5.02177, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113468, 39724, 1, 0, 0, 1, 1, 17096, 0, 4241.48, -3857.93, 976.839, 3.7891, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113469, 39724, 1, 0, 0, 1, 1, 17096, 0, 4187.68, -3878.06, 976.933, 3.15769, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113470, 39724, 1, 0, 0, 1, 1, 17096, 0, 4242.45, -3827.86, 976.034, 6.0192, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113471, 39724, 1, 0, 0, 1, 1, 17096, 0, 4311.28, -4036.95, 994.61, 1.25071, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113472, 39724, 1, 0, 0, 1, 1, 17096, 0, 4247.33, -3980.57, 971.04, 3.13059, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113473, 39724, 1, 0, 0, 1, 1, 17096, 0, 4242.9, -3841.8, 975.839, 4.59547, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113474, 39724, 1, 0, 0, 1, 1, 17096, 0, 4246.09, -3939.34, 976.463, 0.14577, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113475, 39724, 1, 0, 0, 1, 1, 17096, 0, 4229.53, -3903.63, 978.117, 4.29993, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113476, 39724, 1, 0, 0, 1, 1, 17096, 0, 4197.68, -3872.95, 977.655, 6.01207, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113477, 39724, 1, 0, 0, 1, 1, 17096, 0, 4208.6, -4057.4, 978.081, 2.22067, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113478, 39724, 1, 0, 0, 1, 1, 17096, 0, 4279.69, -4002.6, 978.091, 4.42548, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113479, 39724, 1, 0, 0, 1, 1, 17096, 0, 4243.26, -4143.67, 982.266, 0.926123, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113480, 39724, 1, 0, 0, 1, 1, 17096, 0, 4239.08, -4102.05, 978.427, 3.62602, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113481, 39724, 1, 0, 0, 1, 1, 17096, 0, 4363.49, -3800.64, 995.036, 5.75678, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=48725;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143104, 48725, 1, 0, 0, 1, 1, 17096, 0, 4292.86, -4062.33, 977.407, 3.42815, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(143105, 48725, 1, 0, 0, 1, 1, 17096, 0, 4271.46, -4028.23, 976.966, 3.50062, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(143106, 48725, 1, 0, 0, 1, 1, 17096, 0, 4276.29, -4001.54, 977.466, 0.143876, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(143107, 48725, 1, 0, 0, 1, 1, 17096, 0, 4298.4, -3776.6, 983.187, 4.86104, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(143108, 48725, 1, 0, 0, 1, 1, 17096, 0, 4247.15, -3980.26, 971.04, 2.14224, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(30033, 48725, 1, 0, 0, 1, 1, 17096, 0, 4243.04, -4102.04, 979.06, 0.001443, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30441, 48725, 1, 0, 0, 1, 1, 17096, 0, 4254.58, -4076.94, 1001.99, 5.86765, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(30485, 48725, 1, 0, 0, 1, 1, 17096, 0, 4255.61, -3776.1, 984.686, 0.863595, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30599, 48725, 1, 0, 0, 1, 1, 17096, 0, 4240.14, -4144.18, 983.016, 4.50944, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(30616, 48725, 1, 0, 0, 1, 1, 17096, 0, 4208.4, -4058.96, 978.081, 3.3276, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(30725, 48725, 1, 0, 0, 1, 1, 17096, 0, 4285.93, -3736.23, 1010.85, 3.25194, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40465;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137081, 40465, 1, 0, 0, 1, 1, 2871, 0, 4319.1, -3991.88, 979.489, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30758, 40465, 1, 0, 0, 1, 1, 2870, 0, 4234.47, -4087.74, 977.53, 5.8294, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30760, 40465, 1, 0, 0, 1, 1, 2869, 0, 4333.43, -3723.58, 1002.22, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30807, 40465, 1, 0, 0, 1, 1, 2872, 0, 4294.4, -4051.78, 977.448, 3.49066, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30825, 40465, 1, 0, 0, 1, 1, 2872, 0, 4318.8, -3820.82, 971.189, 3.4383, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30838, 40465, 1, 0, 0, 1, 1, 2872, 0, 4263.48, -4116.93, 978.186, 2.6529, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30855, 40465, 1, 0, 0, 1, 1, 2872, 0, 4245.8, -4041.78, 976.803, 2.3911, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30858, 40465, 1, 0, 0, 1, 1, 2872, 0, 4365.97, -3744.92, 991.543, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30867, 40465, 1, 0, 0, 1, 1, 2871, 0, 4332.34, -3854.66, 959.127, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30872, 40465, 1, 0, 0, 1, 1, 2870, 0, 4276.99, -4075.96, 976.171, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30887, 40465, 1, 0, 0, 1, 1, 2871, 0, 4415.77, -3727.06, 1002.85, 0, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(30901, 40465, 1, 0, 0, 1, 1, 2870, 0, 4241.45, -3823.61, 976.027, 5.06145, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=39726;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112586, 39726, 1, 0, 0, 1, 1, 19715, 0, 4365.3, -3678.16, 1009.22, 4.17134, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=112466;

DELETE FROM `creature` WHERE `id`=40922;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112897, 40922, 1, 0, 0, 1, 1, 25191, 0, 4605.94, -4283.3, 902.917, 5.84289, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `quest_template` WHERE `Id`=25314;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25314, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25601, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 1, 0, 0, 0, 0, 0, 0, 0, 25191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Speech Writing for Dummies', 'Kill Okrog outside the Seat of the Chosen in Hyjal.', 'Listen, $N.  I found out what they\'re doing with Jarod Shadowsong.  He\'s scheduled to be sacrificed by the ogres of the Twilight\'s Hammer as part of this year\'s initiation.$B$BI heard that the initiate charged with delivering the speech ahead of the sacrifice is an ogre named Okrog, but get this: you were a close second.$B$BWe need you to deliver that speech if we\'re to free Jarod.  Don\'t worry -- I\'ll write you some cue cards -- just make sure Okrog has an "accident" as he leaves the Seat of the Chosen.', '', 'Excellent work, $N.  Our plan\'s almost come together.', '', 'Return to the Outhouse Hideout at the Supplicant\'s Forge in Hyjal.', 40922, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '...and by "accident", I mean I want you to kill him.', 'Okrog', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


-- Quest 25315 Graduation Speech

DELETE FROM `quest_template` WHERE `Id`=25315;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25315, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25601, 0, 0, 25531, 7, 234000, 249300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Graduation Speech', 'Use the Initiation Podium at Doom\'s Vigil to successfully deliver the Graduation Speech.', 'You\'re finally ready, $Ndamus.$B$BI am so proud of you and all you\'ve accomplished.$B$BToday you will deliver a speech in front of your peers and inspire them to crush our enemies until Hyjal is nothing but a pile of ash.$B$BRemember, $Ndamus.  It\'ll be important to read your audience\'s emotions and use words that best address those emotions.', '', 'You.  You\'re clearly not with them.$B$BAn ally then?', '', 'Speak to Commander Jarod Shadowsong at Doom\'s Vigil in Mount Hyjal.', 40618, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Graduation Speech', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `report_quest` WHERE `id`=25315;
INSERT INTO `report_quest` (`id`, `status`, `count`, `comment`) VALUES 
(25315, 0, 1, NULL);

DELETE FROM `creature` WHERE id=40185;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142978, 40185, 1, 616, 4996, 1, 1, 0, 0, 4739, -4963.81, 907.353, 3.91581, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142979, 40185, 1, 616, 4996, 1, 1, 0, 0, 4737.62, -4963.55, 907.375, 5.12139, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142980, 40185, 1, 616, 4996, 1, 1, 0, 0, 4746.68, -4965.7, 907.034, 4.49307, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142981, 40185, 1, 616, 4996, 1, 1, 0, 0, 4748.39, -4964.57, 906.835, 4.497, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142982, 40185, 1, 616, 4996, 1, 1, 0, 0, 4746.37, -4964.33, 906.99, 5.06249, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142983, 40185, 1, 616, 4996, 1, 1, 0, 0, 4743.91, -4963.66, 907.161, 5.34523, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142984, 40185, 1, 616, 4996, 1, 1, 0, 0, 4741.59, -4963.86, 907.285, 0.0359297, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142985, 40185, 1, 616, 4996, 1, 1, 0, 0, 4739.77, -4964.65, 907.359, 5.68294, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142986, 40185, 1, 616, 4996, 1, 1, 0, 0, 4738.89, -4966.29, 907.414, 5.89107, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142987, 40185, 1, 616, 4996, 1, 1, 0, 0, 4740.32, -4965.97, 907.368, 4.88577, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142988, 40185, 1, 616, 4996, 1, 1, 0, 0, 4739, -4968.21, 907.453, 5.42377, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142989, 40185, 1, 616, 4996, 1, 1, 0, 0, 4741.8, -4967.15, 907.349, 4.53627, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142990, 40185, 1, 616, 4996, 1, 1, 0, 0, 4744.52, -4968.4, 907.254, 4.46166, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1),
(142991, 40185, 1, 616, 4996, 1, 1, 0, 0, 4747.03, -4967.62, 907.052, 4.50486, 300, 0, 0, 30951, 3994, 0, 0, 0, 0, 1);

DELETE FROM `creature_template_addon` WHERE `entry`=40185;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40185, 0, 0, 65536, 1, 468, '');

DELETE FROM `creature_template_addon` WHERE `entry`=39749;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39749, 0, 0, 65536, 1, 0, '');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=74934;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(74934, 62464, 0, 'spell hit bunny');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=74935;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(74935, 58178, 0, 'spell hit bunny');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=74937;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(74937, 62464, 0, 'spell hit bunny');

DELETE FROM `creature` WHERE `id`=40619;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112676, 40619, 1, 616, 4996, 1, 1, 0, 0, 4743.02, -4977.26, 910.898, 1.57904, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0);


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='40185');
DELETE FROM smart_scripts WHERE entryorguid IN (40185);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40185, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 40617, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit'),
(40185, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Yeah! Great! Bravo!'),
(40185, 0, 3, 4, 8, 0, 100, 0, 58178, 0, 0, 0, 33, 40617, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit'),
(40185, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'You are the Best!!!');

DELETE FROM `creature_text` WHERE entry=40185;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('40185','1','0','Yeah! Great! Bravo!  ','12','0','100','0','0','0','Life party'),
('40185','2','0','You are the Best!!!   ','12','0','100','0','0','0','Life party');

DELETE FROM `gameobject` WHERE `id`=202996;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(68084, 202996, 1, 0, 0, 1, 1, 4742.6, -4971.83, 907.439, 1.66787, 0, 0, 0.740583, 0.671965, 300, 0, 1);


DELETE FROM `gameobject_template` WHERE `entry`=202996;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES 
(202996, 22, 9481, 'Initiation Podium', '', '', '', 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 74948, 0, 0, 0, 0, 11609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `creature` WHERE `id`=401850;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(30933, 401850, 1, 0, 0, 1, 1, 0, 0, 4739, -4963.81, 907.353, 3.91581, 120, 0, 0, 30951, 3994, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=401850;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(401850, 0, 0, 0, 0, 0, 2869, 2870, 2871, 2872, 'Twilight Initiate', NULL, 'Speak', 0, 80, 80, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

DELETE FROM `smart_scripts` WHERE `entryorguid`=401850 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(401850, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 40618, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');


DELETE FROM `quest_template` WHERE `Id`=25531;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25531, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25315, 0, 0, 25608, 5, 0, 166200, 0, 81040, 0, 0, 0, 0, 0, 0, 0, 2097288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Riot', 'Speak to Jarod Shadowsong at the Gates of Sothann in Hyjal.', 'I thank you for freeing me.  Let us take advantage of the distraction you\'ve created and get out of here.$B$BWe must hurry before the cultists catch on.$B$BMeet me again when we\'ve left this place.', '', 'You have my thanks, $n.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `spell_area` WHERE `quest_start`=25531;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(115010, 4984, 25531, 0, 25608, 0, 0, 2, 1, 64, 11),
(115010, 4991, 25531, 0, 25608, 0, 0, 2, 1, 64, 11);


DELETE FROM `creature_involvedrelation` WHERE `id`=40773;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40773, 25554),
(40773, 25555);

DELETE FROM `creature_questrelation` WHERE `id`=40773;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40773, 25551),
(40773, 25554),
(40773, 25555);

DELETE FROM `creature` WHERE `id`=40773;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112677, 40773, 1, 0, 0, 1, 1, 34803, 0, 4098.45, -3982.62, 970.455, 5.63741, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=40773;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40773, 0, 0, 0, 0, 0, '49415');

DELETE FROM `creature` WHERE `id`=40772;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112678, 40772, 1, 0, 0, 1, 1, 15581, 0, 4100.15, -3989.43, 970.67, 1.0472, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_involvedrelation` WHERE `id`=40772;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40772, 25531),
(40772, 25548),
(40772, 25549),
(40772, 25550),
(40772, 25551),
(40772, 25608);

DELETE FROM `creature_questrelation` WHERE `id`=40772;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40772, 25548),
(40772, 25549),
(40772, 25550),
(40772, 25608),
(40772, 27398),
(40772, 27399);

DELETE FROM `creature_template` WHERE `entry`=40772;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40772, 0, 0, 0, 0, 0, 15581, 0, 0, 0, 'Commander Jarod Shadowsong', '', '', 0, 88, 88, 3, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 387, 543, 0, 528, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 324, 480, 88, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 429.129, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=40772;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40772, 0, 0, 0, 0, 0, NULL);


DELETE FROM `conditions` WHERE `SourceEntry`=76559;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 76559, 0, 0, 29, 0, 40816, 500, 0, 1, 0, 0, '', ''),
(17, 0, 76559, 0, 0, 23, 0, 616, 0, 0, 0, 0, 0, '', ''),
(17, 0, 76559, 0, 0, 9, 0, 25553, 0, 0, 0, 0, 0, '', '');


DELETE FROM `creature` WHERE `id`=40816;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112469, 40816, 1, 0, 0, 1, 1, 35221, 0, 4102.2, -3996.4, 970.926, 1.55334, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_involvedrelation` WHERE `id`=40816;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(40816, 25552),
(40816, 25553),
(40816, 25644);

DELETE FROM `creature_questrelation` WHERE `id`=40816;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(40816, 25552),
(40816, 25553);


DELETE FROM `creature_template` WHERE `entry`=40816;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40816, 0, 0, 0, 0, 0, 35221, 0, 0, 0, 'Aronus', '', '', 0, 80, 80, 3, 0, 2233, 2233, 11, 1, 1.14286, 1, 1.3986, 1, 1, 464, 604, 0, 708, 4.6, 2000, 2000, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 353, 512, 112, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 4, 0, 6.65852, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=40816;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40816, 0, 0, 0, 0, 0, NULL);

DELETE FROM `creature_text` WHERE `entry`=40816;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40816, 0, 0, 'Show yourself, beast! We will destroy you and your corrupt spawn no matter where you hide!', 14, 0, 100, 0, 2000, 0, 0, ''),
(40816, 1, 0, 'Slay her now, before Aviana\'s magic wears off!', 14, 0, 100, 0, 2000, 0, 40923, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40816 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40816, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4081600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40816, 0, 1, 0, 40, 0, 100, 0, 3, 0, 0, 0, 80, 4081601, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40816, 0, 2, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 4081602, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40816, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 41, 280000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4081600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4081600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4081600, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4081600, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, 40816, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4081601 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4081601, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40974, 3, 250000, 0, 0, 0, 8, 0, 0, 0, 3772.09, -3235.72, 974.548, 3.90043, ''),
(4081601, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40982, 3, 250000, 0, 0, 0, 8, 0, 0, 0, 3780.8, -3247.19, 983.064, 2.30429, ''),
(4081601, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 40982, 60, 0, 0, 0, 0, 0, ''),
(4081601, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 40974, 50, 0, 0, 0, 0, 0, ''),
(4081601, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4081602 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4081602, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `waypoints` WHERE `entry`=40816;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(40816, 1, 3739.05, -3249.9, 1002.75, ''),
(40816, 2, 3752.87, -3231.96, 989.505, ''),
(40816, 3, 3769.39, -3235.78, 984.737, '');

DELETE FROM `creature` WHERE `id`=38952;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112639, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4087.94, -3979.97, 970.458, 0.350436, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112640, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4084, -3981.41, 970.783, 0.350436, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112641, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4079.98, -3982.88, 971.226, 0.350436, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112642, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4086.96, -3976.28, 970.326, 0.235027, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112643, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4082.52, -3978.08, 970.529, 0.350437, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112644, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4079, -3979.37, 970.76, 0.345419, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112645, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4086.01, -3973.16, 970.269, 0.395597, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112646, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4081.93, -3974.86, 970.329, 0.395597, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(112647, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4077.77, -3976.6, 970.448, 0.395597, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(115118, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4093.63, -3997.95, 970.903, 0.290222, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(115212, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4089.39, -3999.21, 971.023, 0.290222, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(30950, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4085.66, -4000.33, 971.164, 0.290222, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(30972, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4095.2, -4002.12, 970.94, 0.350435, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(31011, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4090.58, -4003.61, 970.958, 0.299384, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(31030, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4086.63, -4004.82, 970.992, 0.299384, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(31032, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4096.83, -4005.9, 971.005, 0.314439, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(31092, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4092.12, -4007.43, 970.905, 0.314439, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0),
(31105, 38952, 1, 616, 4998, 1, 1, 0, 38952, 4087.27, -4009, 970.866, 0.314439, 120, 0, 0, 27966, 63808144, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=38952;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(38952, 0, 0, 0, 0, 0, 31228, 31229, 31230, 31231, 'Nordrassil Druid', '', '', 0, 80, 80, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 0, 425, 602, 0, 670, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 0, 0, 351, 511, 86, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 1.5, 15976, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 38952, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `id`=43554;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112668, 43554, 1, 0, 0, 1, 1, 33409, 0, 4082.43, -3986.6, 971.527, 0.383972, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_equip_template` WHERE `entry`=38952;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(38952, 31253, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=38952;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(38952, 0, 0, 0, 0, 0, '49415');

DELETE FROM `smart_scripts` WHERE `entryorguid`=38952 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(38952, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(38952, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving on Aggro'),
(38952, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt on Aggro'),
(38952, 0, 3, 0, 9, 1, 100, 0, 0, 40, 3400, 4700, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt'),
(38952, 0, 4, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in bolt Range'),
(38952, 0, 5, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 15 Yards'),
(38952, 0, 6, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving when in bolt Range'),
(38952, 0, 7, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 2 at 15% Mana'),
(38952, 0, 8, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving at 15% Mana'),
(38952, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 When Mana is above 30%'),
(38952, 0, 10, 0, 0, 1, 100, 0, 5000, 6000, 18000, 22000, 11, 22127, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Entangling Roots'),
(38952, 0, 11, 0, 0, 1, 100, 0, 11000, 13000, 15000, 35000, 11, 23380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Moonfire');


DELETE FROM `creature` WHERE `id`=43555;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112741, 43555, 1, 0, 0, 1, 1, 33410, 0, 4084.59, -3996.44, 971.424, 0.0174533, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=43555;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43555, 0, 0, 0, 0, 0, '49415');

DELETE FROM `creature_template_addon` WHERE `entry`=43554;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(43554, 0, 0, 0, 0, 0, '49415');

DELETE FROM `creature` WHERE `id`=40928;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112667, 40928, 1, 0, 0, 1, 1, 35253, 0, 4081.33, -3989.7, 971.731, 3.43104, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=40928;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40928, 0, 0, 0, 0, 0, 35253, 0, 0, 0, 'Ysera', '', '', 0, 88, 88, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1, 1, 1, 530, 713, 0, 827, 8.6, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 530, 713, 827, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 1, 500, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=40928;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40928, 0, 0, 0, 0, 0, '49414 49416');


DELETE FROM `smart_scripts` WHERE `entryorguid`=40928 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40928, 0, 0, 0, 60, 0, 100, 0, 1000, 1000, 60000, 60000, 11, 108615, 0, 0, 0, 0, 0, 19, 41026, 8, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_template` WHERE `entry`=41026;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41026, 0, 0, 0, 0, 0, 36537, 0, 0, 0, 'Presence of Cenarius', '', '', 0, 88, 88, 3, 0, 35, 35, 0, 1, 1.14286, 1, 1, 1, 1, 822, 951, 0, 924, 8.5, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 822, 951, 924, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 1, 450, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=41026;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(41026, 0, 0, 0, 0, 0, '49414 49416');


DELETE FROM `creature` WHERE `id`=41026;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143100, 41026, 1, 0, 0, 1, 1, 36537, 0, 4074.37, -3992.35, 972.642, 0.349066, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=40931;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142890, 40931, 1, 0, 0, 1, 1, 23258, 0, 4074.82, -3992.21, 972.566, 0.418879, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=43549;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112479, 43549, 1, 0, 0, 1, 1, 28667, 0, 4062.76, -3969.84, 970.398, 2.21657, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template` WHERE `entry`=40934;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40934, 0, 0, 0, 0, 0, 25834, 0, 0, 0, 'Emerald Drake', '', 'vehichleCursor', 0, 80, 80, 3, 0, 2309, 2309, 16777216, 1, 1.14286, 1, 1, 1, 1, 281, 344, 0, 324, 2.5, 2000, 2000, 8, 16777216, 0, 0, 0, 0, 0, 0, 0, 281, 344, 324, 2, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75637, 0, 0, 76460, 0, 0, 0, 0, 0, 156, 0, 0, NULL, NULL, 'SmartAI', 0, 6, 1, 3.0705, 0.9063, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature` WHERE `id`=40934;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(137082, 40934, 1, 0, 0, 1, 1, 25834, 0, 4067.61, -3983.14, 978.893, 0.15708, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40934 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40934, 0, 1, 0, 28, 0, 100, 512, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn drake on passanger removed');

DELETE FROM `creature_template_addon` WHERE `entry`=40934;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40934, 0, 0, 50331648, 1, 0, '53112');

DELETE FROM `creature_template` WHERE `entry`=40780;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40780, 0, 0, 0, 0, 0, 25834, 0, 0, 0, 'Emerald Drake', '', '', 0, 80, 80, 3, 0, 2233, 2233, 16777216, 1, 1.14286, 1, 1, 1, 1, 281, 344, 0, 424, 3.5, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 0, 281, 344, 424, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 4, 1, 7.2417, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=40780;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 40780, 75638, 0, 0, 9, 0, 25608, 0, 0, 0, 0, 0, '', '');


DELETE FROM `creature` WHERE `id`=40780;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143101, 40780, 1, 0, 0, 1, 1, 25834, 0, 4004.09, -3970.67, 989.611, 4.06393, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(143102, 40780, 1, 0, 0, 1, 1, 25834, 0, 4069.51, -4009.03, 973.566, 0.015784, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=40780;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40780, 0, 0, 50331648, 1, 0, NULL);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40780;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(40780, 75638, 1, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=40934;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(40934, 80343, 1, 0);

DELETE FROM `creature` WHERE id=57000; 

DELETE FROM `creature_addon` WHERE guid IN (112667,112639,112640,112641,112642,112643,112644,112645,112646,112647,115118,115212);

DELETE FROM `creature_template` WHERE `entry`=40025;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40025, 0, 0, 0, 0, 0, 25834, 0, 0, 0, 'Emerald Drake', '', '', 0, 84, 84, 3, 0, 35, 35, 0, 1, 1.14286, 1, 2.94286, 1, 1, 500, 800, 0, 24, 7.5, 2000, 2000, 8, 0, 2048, 0, 0, 0, 0, 0, 0, 500, 800, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75637, 75668, 0, 76460, 0, 0, 0, 0, 0, 756, 0, 0, NULL, NULL, 'SmartAI', 0, 7, 0, 6, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=40025;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40025, 0, 0, 0, 1, 0, '54421');


DELETE FROM `creature_text` WHERE `entry`=40025;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40025, 0, 0, 'You must remain inside Darkwhisper Gorge and its surrounding areas!', 42, 0, 100, 0, 0, 0, 0, 'Emerald Drake');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40025 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40025, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 44, 3, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40025, 0, 1, 0, 38, 0, 100, 0, 0, 1, 0, 0, 33, 40573, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(40025, 0, 2, 0, 28, 0, 100, 0, 0, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 21, 2, 0, 0, 4104.35, -3982.3, 970.394, 3.70771, '');

DELETE FROM `creature_template` WHERE `entry`=40575;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40575, 0, 0, 0, 0, 0, 28356, 28357, 0, 0, 'Twilight Stormwaker', '', '', 0, 81, 81, 0, 0, 2253, 2253, 0, 1, 1.14286, 1, 8.57143, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 8, 33587200, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.5, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 273, 1, 40575, 0, 0, '', 13623);

DELETE FROM `creature_template_addon` WHERE entry=40575;

DELETE FROM `vehicle_template_accessory` WHERE entry=40573;


DELETE FROM `quest_template` WHERE `Id`=25608;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25608, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25531, 0, 0, 25548, 6, 156000, 207900, 0, 91966, 0, 0, 0, 0, 0, 0, 0, 2097288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Slash and Burn', 'Ride an Emerald Drake and slay 40 Twilight\'s Hammer units and 5 Twilight Drakes.', 'Victory is possible, $N.$B$BThis portal is not just a means of bringing back Cenarius through the dream.  Think about it, $N.  Once a gateway through the Emerald Dream is open, our forces can use them to move freely from Moonglade, Nordrassil, and even Wyrmrest, to this strategic location.$B$BAll Ysera needs is time. It\'ll be up to you to keep the Twilight\'s Hammer forces in Darkwhisper Gorge from pulling together and attacking us from the east.$B$BTake one of the emerald drakes and hit them hard, $N.', '', 'Excellent work, $n.  We might win this one yet.', '', 'Return to Commander Jarod Shadowsong at the Gates of Sothann.', 40573, 40947, 0, 0, 5, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Initiate', 'Twilight\'s Hammer unit slain', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

UPDATE `creature_template` SET  `npcflag`='145' WHERE entry IN (543);

DELETE FROM `creature` WHERE `id`=40709;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112935, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3847.25, -3369.56, 1010.61, 5.37383, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112936, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3948.94, -3439.73, 1012.09, 6.10131, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112937, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3989.49, -3505.46, 1011.17, 5.21815, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112938, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3979.47, -3524.28, 1012.23, 5.14872, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112939, 40709, 1, 616, 5045, 1, 1, 35064, 0, 4010.96, -3514.29, 1011.19, 5.16617, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112940, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3917, -3371.55, 1011.03, 4.79777, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112941, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3892.33, -3486.24, 1020.71, 6.12611, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112942, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3847.11, -3429.38, 1020.62, 1.32645, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112943, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3812.32, -3420.04, 1021.98, 1.27409, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112944, 40709, 1, 616, 5045, 1, 1, 35064, 0, 3899.68, -3509.34, 1020.73, 0.226893, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40463;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113321, 40463, 1, 616, 5045, 1, 1, 31210, 0, 3934.9, -3341.15, 1011.57, 2.99129, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113322, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3823.57, -3461.19, 1022.27, 4.31543, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113323, 40463, 1, 616, 5045, 1, 1, 31211, 0, 3819.51, -3348.77, 1006.78, 1.63564, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113324, 40463, 1, 616, 5045, 1, 1, 31211, 0, 3830.98, -3339.23, 1006.78, 3.08791, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113325, 40463, 1, 616, 5045, 1, 1, 31209, 0, 3903.36, -3430.59, 1012.61, 4.3586, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113326, 40463, 1, 616, 5045, 1, 1, 31211, 0, 3810.95, -3436.91, 1022.52, 1.57861, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113327, 40463, 1, 616, 5045, 1, 1, 31210, 0, 3903.08, -3377.14, 1011.28, 4.89055, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113328, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3855.76, -3447.64, 1021.41, 3.67504, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113329, 40463, 1, 616, 5045, 1, 1, 31211, 0, 4006.14, -3485.8, 1011.08, 3.9013, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113330, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3975.77, -3457.7, 1011.23, 2.15214, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113331, 40463, 1, 616, 5045, 1, 1, 31209, 0, 3956.44, -3497.34, 1014.62, 3.95677, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113332, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3931.19, -3462.27, 1012.37, 0.032242, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113333, 40463, 1, 616, 5045, 1, 1, 31211, 0, 3912.71, -3350.31, 1011.03, 0.906812, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113334, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3869.79, -3496.88, 1020.86, 0.808269, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159146, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3969.4, -3371.72, 1012.32, 4.02537, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159141, 40463, 1, 616, 5045, 1, 1, 31209, 0, 3857.91, -3353.09, 1011.31, 0.269371, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159137, 40463, 1, 616, 5045, 1, 1, 31210, 0, 3879.53, -3367.27, 1010.97, 0.776981, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159132, 40463, 1, 616, 5045, 1, 1, 31210, 0, 3793.1, -3393.49, 1018.83, 5.8154, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159128, 40463, 1, 616, 5045, 1, 1, 31208, 0, 3946.48, -3407.28, 1011.6, 3.32598, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159126, 40463, 1, 616, 5045, 1, 1, 31209, 0, 3831.49, -3385.48, 1011.71, 3.27479, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=40687;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112735, 40687, 1, 616, 5045, 1, 1, 29179, 0, 3971.77, -3415.65, 1010.38, 4.43314, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(112736, 40687, 1, 616, 5045, 1, 1, 29179, 0, 3996.1, -3431.56, 1010.92, 3.81287, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `gameobject` WHERE `id`=203048;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(66979, 203048, 1, 616, 5045, 1, 1, 3821.83, -3342.4, 1007.65, 3.35566, 0, 0, 0.994277, -0.106831, 60, 0, 1);


DELETE FROM `gameobject` WHERE `id`=203046;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(66980, 203046, 1, 616, 5045, 1, 1, 3962.76, -3397.46, 1012.41, 4.36703, 0, 0, 0.818087, -0.575094, 60, 0, 1);


DELETE FROM `gameobject` WHERE `id`=203047;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(66981, 203047, 1, 616, 5045, 1, 1, 3908.25, -3462.19, 1012.86, 1.37271, 0, 0, 0.633721, 0.773562, 60, 0, 1);


DELETE FROM `gameobject` WHERE `id`=207359;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(66978, 207359, 1, 616, 5045, 1, 1, 3820.7, -3439.8, 1023.54, 3.18831, 0, 0, 0.999727, -0.023356, 1, 0, 1);


DELETE FROM `quest_template` WHERE `Id`=25644;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25644, 2, NULL, 'Untested', 82, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25608, 0, 0, 25552, 5, 82000, 209400, 0, 0, 0, 0, 0, 0, 55178, 1, 0, 262272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Twilight Egg', 'Take the Pure Twilight Egg to Aronus at the Gates of Sothann in Hyjal.', 'The egg is unlike any that you\'ve seen before.  Its translucent shell appears to bend the light around it.$B$BAccompanying it, you find a note describing the arrival of a fertile broodmother at the Ascendant\'s Rise.$B$BPerhaps you should show this to Aronus.', '', 'You were right to come to me with this, $n.  This represents a great threat to us if we do not act swiftly and boldly.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 55178, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25554;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25554, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25608, 0, 0, 25555, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Secrets of the Flame', 'Obtain the Ascendant\'s Codex, the Burning Litanies and the Tome of Flame at the Ascendant\'s Rise in Hyjal.', 'If we are to banish Ragnaros back into the Firelands, we will need to gain access to Sulfuron Spire.$B$BOnly the most trusted members of the Twilight\'s Hammer will have been entrusted with such valuable information.$B$BGo search the Ascendant\'s Rise for any written tomes you might find.  Foul as they are, we cannot waste the opportunity to learn about our enemy\'s weaknesses.', '', 'These foul books should not be allowed to exist.  Yet the information inside them is of vital importance.', 'Did you succeed in your task, $N?', 'Return to Cenarius at the Gates of Sothann in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54907, 54906, 54905, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25548;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25548, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25608, 0, 0, 25549, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57289, 57288, 57287, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Might of the Firelord', 'Slay 4 Flame Ascendants and 5 Twilight Subjugators at the Ascendant\'s Rise in Hyjal.', 'I\'ve been charged with leading our military operations against the enemy.  A humbling task when you consider there are demigods walking among us.$B$BI\'m going to have you carry out a series of hit-and-run attacks behind enemy lines.  It will be important that you keep the enemy off guard and weaken their numbers ahead of our main force\'s attack.$B$BYour first target will be the Ascendant\'s Rise, where the most highly trained Twilight\'s Hammer devotees have achieved a partial elemental state.', '', 'You did well, $n.  I\'ve a new target for you.', '', 'Return to Commander Jarod Shadowsong at the Gates of Sothann in Hyjal.', 40709, 40463, 0, 0, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=46925;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112669, 46925, 1, 616, 4861, 0, 1, 29538, 0, 4393.57, -2302.45, 1155.28, 0, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112670, 46925, 1, 616, 4861, 0, 1, 29538, 0, 4334.92, -2325.32, 1151.53, 0, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159118, 46925, 1, 616, 4861, 0, 1, 29538, 0, 4377.87, -2366.08, 1145.53, 0, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159122, 46925, 1, 616, 4861, 0, 1, 29538, 0, 4405.98, -2332.45, 1152.2, 0, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);



DELETE FROM `quest_template` WHERE `Id`=25549;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25549, 2, NULL, 'Untested', 81, 80, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25548, 0, 0, 25550, 5, 78000, 166200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Sanctum of the Prophets', 'Slay 4 Twilight Augurs, 4 Twilight Retainers and 1 Emissary of Flame at the Sanctum of the Prophets.', 'The mad prophets of the Twilight\'s Hammer congregate in the area just north of the Ascendant\'s Rise.$B$BIt is said that their dark visions are granted to them directly by the Old Gods.  Whether or not that is true, they provide tremendous spiritual guidance to the cult.  Attacking the Sanctum of the Prophets will deal a devastating blow to the enemy\'s morale and if we\'re lucky you might run into one of the Firelord\'s own emissaries while you\'re there.', '', 'You continue to prove your prowess, $n.  At this rate Hyjal might survive this ordeal after all.', '', 'Return to Commander Jarod Shadowsong at the Gates of Sothann in Hyjal.', 40713, 40767, 40755, 0, 4, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25, 6, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25552;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25552, 2, NULL, 'Untested', 82, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25644, 0, 0, 25553, 5, 82000, 209400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Brood of Evil', 'Obtain a Young Twilight Drake\'s Skull at the Ascendant\'s Rise in Hyjal.', 'This egg you recovered is an alarming sign, $N.  The Twilight dragons are usually raised from stolen eggs from other dragonflights, which are then modified through dark magic.$B$BThis "natural" egg is evidence that one of their matriarchs has become a viable broodmother.  We must destroy her before her brood spreads.$B$BGo to the Ascendant\'s Rise where they claim these aberrations are kept and slay one of the juvenile drakes.  We will use its skull to lure out its mother.', '', 'You\'ve done well, $n.  We will use this to draw out the Twilight matriarch.', 'You\'ve returned, $r.', 'Return to Aronus at the Gates of Sothann in Hyjal.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54973, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25555;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25555, 2, NULL, 'Untested', 82, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25554, 0, 0, 25551, 6, 164000, 261900, 0, 0, 0, 0, 0, 0, 55153, 1, 0, 128, 0, 1, 0, 0, 0, 0, 0, 0, 0, 29562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57299, 57298, 57297, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Gatekeeper', 'Use the Horn of Cenarius to help you slay Azralon the Gatekeeper.', 'According to these tomes, one of Ragnaros\' most powerful lieutenants serves as the sole gatekeeper to Sulfuron Spire.$B$BYou won\'t be able to defeat him alone.$B$BSound this horn when you engage in combat with Azralon and any of our forces in the vicinity will come to your aid.$B$BYou must hurry, $N.  It won\'t be long before the Firelord realizes what we\'re up to.', '', 'It is done.  Only the final step in your mission remains.', '', 'Return to Cenarius at the Gates of Sothann in Hyjal.', 40814, 0, 0, 0, 1, 0, 0, 0, 0, 55153, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Use the horn, and our troops will come to your aid.', 'Azralon the Gatekeeper', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=40767;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113302, 40767, 1, 616, 616, 1, 1, 28357, 0, 4261.36, -3345.94, 1020.22, 4.11402, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113303, 40767, 1, 616, 616, 1, 1, 28357, 0, 4304.39, -3243.78, 1032.89, 5.54112, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113304, 40767, 1, 616, 616, 1, 1, 28357, 0, 4320.1, -3256.34, 1033.93, 2.32858, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113305, 40767, 1, 616, 616, 1, 1, 28357, 0, 4160.31, -3510.28, 1012.53, 2.04204, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113306, 40767, 1, 616, 616, 1, 1, 28356, 0, 4168.73, -3505.96, 1012.52, 2.04204, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113307, 40767, 1, 616, 616, 1, 1, 28357, 0, 4114.16, -3509.42, 1013.37, 3.75246, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113308, 40767, 1, 616, 616, 1, 1, 28357, 0, 4124.29, -3526.75, 1013.58, 3.56047, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113309, 40767, 1, 616, 616, 1, 1, 28357, 0, 4284.88, -3310.16, 1019.8, 3.35103, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113310, 40767, 1, 616, 616, 1, 1, 28356, 0, 4219.12, -3409.16, 1020.4, 3.06563, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113311, 40767, 1, 616, 616, 1, 1, 28357, 0, 4152.59, -3455.37, 1011.86, 6.00393, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(113312, 40767, 1, 616, 616, 1, 1, 28356, 0, 4171.69, -3362.89, 1016.33, 0.0929344, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159114, 40767, 1, 616, 616, 1, 1, 28357, 0, 4163.17, -3392.62, 1011.06, 0.605518, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159112, 40767, 1, 616, 616, 1, 1, 28357, 0, 4156.15, -3444.44, 1011.8, 6.00393, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159110, 40767, 1, 616, 616, 1, 1, 28356, 0, 4198.36, -3473.29, 1011.8, 3.07178, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(159108, 40767, 1, 616, 616, 1, 1, 28356, 0, 4200.15, -3461.45, 1011.82, 3.07178, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=40755;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112964, 40755, 1, 616, 616, 1, 1, 15329, 0, 4283.76, -3271.5, 1029.64, 3.97812, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112965, 40755, 1, 616, 616, 1, 1, 15329, 0, 4233.97, -3350.72, 1019.11, 3.80126, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);




DELETE FROM `creature_template` WHERE `entry`=40814;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40814, 0, 0, 0, 0, 0, 29562, 0, 0, 0, 'Azralon the Gatekeeper', '', '', 0, 82, 82, 3, 0, 2146, 2146, 0, 1, 1.14286, 1, 1.14286, 1, 1, 488, 642, 0, 782, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 363, 521, 121, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 1, 0, 9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 40814, 0, 0, '', 13623);


DELETE FROM `creature` WHERE `id`=40814;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112478, 40814, 1, 616, 616, 1, 1, 29562, 0, 4273.58, -3363.61, 1017.97, 3.735, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature_text` WHERE `entry`=40814 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(40814, 0, 0, 'Feel the fury of Ragnaros!', 14, 0, 100, 0, 0, 0, '', 40894);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40814 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40814, 0, 0, 0, 0, 0, 100, 0, 4800, 7900, 12300, 14900, 11, 80606, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Evil Cleave'),
(40814, 0, 1, 0, 0, 0, 100, 0, 8800, 12900, 22300, 24900, 11, 61163, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40814, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 80, 4081400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40814, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 33, 40814, 0, 0, 0, 0, 0, 18, 60, 0, 0, 0, 0, 0, 0, ''),
(40814, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 40955, 60, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4081400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4081400, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4081400, 9, 1, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 40955, 20, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceEntry`=76421;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 76421, 0, 0, 9, 0, 25555, 0, 0, 0, 0, 0, '', ''),
(17, 0, 76421, 0, 0, 29, 0, 40814, 60, 0, 0, 0, 0, '', ''),
(17, 0, 76421, 0, 0, 29, 0, 40956, 60, 0, 1, 0, 0, '', '');


DELETE FROM `creature` WHERE `id`=40956;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112648, 40956, 1, 0, 0, 0, 1, 31231, 0, 4242.16, -3350.71, 1019.28, 5.93412, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112649, 40956, 1, 0, 0, 0, 1, 31228, 0, 4225.96, -3388.08, 1019.72, 0.474564, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112650, 40956, 1, 0, 0, 0, 1, 31228, 0, 4228.55, -3350.17, 1018.79, 5.91667, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0),
(112651, 40956, 1, 0, 0, 0, 1, 31230, 0, 4233.1, -3366.86, 1019.57, 0.0872665, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=40955;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112597, 40955, 1, 616, 616, 0, 1, 32208, 0, 4244.6, -3400.73, 1019.58, 0.977384, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40956 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40956, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 on Aggro'),
(40956, 0, 1, 0, 4, 1, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving on Aggro'),
(40956, 0, 2, 0, 4, 1, 100, 1, 0, 0, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt on Aggro'),
(40956, 0, 3, 0, 0, 0, 100, 0, 2000, 6739, 2739, 9739, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast bolt'),
(40956, 0, 4, 0, 9, 1, 100, 0, 40, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving when not in bolt Range'),
(40956, 0, 5, 0, 9, 1, 100, 0, 10, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving at 15 Yards'),
(40956, 0, 6, 0, 9, 1, 100, 0, 0, 40, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Stop Moving when in bolt Range'),
(40956, 0, 7, 0, 3, 1, 100, 0, 0, 15, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 2 at 15% Mana'),
(40956, 0, 8, 0, 3, 2, 100, 0, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Start Moving at 15% Mana'),
(40956, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Set Phase 1 When Mana is above 30%'),
(40956, 0, 10, 0, 0, 1, 100, 0, 5000, 6000, 18000, 22000, 11, 22127, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Entangling Roots'),
(40956, 0, 11, 0, 0, 1, 100, 0, 11000, 13000, 15000, 35000, 11, 23380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Moonfire'),
(40956, 0, 12, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 40814, 70, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=40955 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40955, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 18000, 22000, 11, 17253, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, ''),
(40955, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 24604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(40955, 0, 2, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 4095500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=4095500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4095500, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4095500, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 40956, 80, 0, 0, 0, 0, 0, ''),
(4095500, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_text` WHERE `entry`=40955;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(40955, 0, 0, 'You know nothing of fury, worm!', 14, 0, 100, 0, 0, 0, '', 40892),
(40955, 1, 0, 'Let this be a lesson to those who would defile Hyjal.', 12, 0, 100, 0, 0, 0, '', 40891);


DELETE FROM `event_scripts` WHERE `id`=24583 AND `delay`=5 AND `command`=10 AND `datalong`=40955;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(24583, 5, 10, 40955, 180000, 0, 4254.47, -3359.22, 1020.84, 6.10518);

DELETE FROM `event_scripts` WHERE `id`=24583 AND `command`=10 AND `datalong`=40956;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(24583, 0, 10, 40956, 180000, 0, 4244.91, -3353.11, 1019.37, 5.98484),
(24583, 0, 10, 40956, 180000, 0, 4254, -3385.85, 1019.66, 0.770445),
(24583, 0, 10, 40956, 180000, 0, 4246.78, -3371.48, 1019.93, 0.389091),
(24583, 0, 10, 40956, 180000, 0, 4247.05, -3356.56, 1019.49, 6.03501),
(24583, 0, 10, 40956, 180000, 0, 4255.38, -3342.58, 1019.48, 5.6119);


DELETE FROM `creature` WHERE id=40464;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112725, 40464, 1, 616, 616, 1, 1, 12232, 0, 4022.04, -3415.51, 985.534, 5.02655, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112726, 40464, 1, 616, 616, 1, 1, 12232, 0, 4072.11, -3405.39, 980.452, 4.43314, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112727, 40464, 1, 616, 5040, 1, 1, 12232, 0, 4114.8, -3305.79, 955.095, 0.216838, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112728, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3725.91, -2781.79, 997.763, 3.68778, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112729, 40464, 1, 616, 616, 1, 1, 12232, 0, 3724.67, -2840.36, 998.287, 0.580511, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112730, 40464, 1, 616, 616, 1, 1, 12232, 0, 3686.29, -2760.97, 998.722, 1.80044, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(112731, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3753.06, -2906, 997.549, 5.91923, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159106, 40464, 1, 616, 5040, 1, 1, 12232, 0, 4172.4, -3097.03, 954.328, 5.47222, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159102, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3789, -2834.07, 997.657, 1.55963, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159099, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3792.85, -2771.99, 998.328, 5.9886, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159097, 40464, 1, 616, 5040, 1, 1, 12232, 0, 4183.6, -3161.4, 952.827, 2.99379, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159093, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3889.88, -3164.26, 953.765, 0.875489, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159087, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3743.39, -2717.88, 997.577, 2.64843, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0),
(159084, 40464, 1, 616, 5040, 1, 1, 12232, 0, 3747.7, -3154.73, 977.698, 0.191317, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);

DELETE FROM `item_template` WHERE `entry`=55179;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES 
(55179, 0, 0, -1, 'Drums of the Turtle God', 67732, 1, 65600, 8192, 1.0319, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76607, 0, 0, 4000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `conditions` WHERE `SourceEntry`=76607;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 76607, 0, 0, 9, 0, 25550, 0, 0, 0, 0, 0, '', ''),
(17, 0, 76607, 0, 0, 29, 0, 40999, 60, 0, 1, 0, 0, '', '');

DELETE FROM `creature_template` WHERE `entry`=40999;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40999, 0, 0, 0, 0, 0, 34372, 0, 0, 0, 'Tortolla', '', '', 0, 82, 82, 0, 0, 1806, 1806, 0, 1, 1.14286, 1, 1, 1, 1, 1465, 2606, 0, 1707, 1.7, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1356, 1517, 0, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 20.6667, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `smart_scripts` WHERE `entryorguid`=40999 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40999, 0, 0, 0, 0, 0, 100, 0, 4000, 10000, 16000, 28000, 11, 80604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(40999, 0, 1, 0, 0, 0, 100, 0, 8000, 20000, 26000, 38000, 11, 80605, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(40999, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 11, 40998, 20, 0, 0, 0, 0, 0, '');


DELETE FROM `event_scripts` WHERE `id`=24606;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(24606, 0, 10, 40999, 260000, 0, 3853.51, -2767.94, 996.919, 3.27202);


DELETE FROM `quest_template` WHERE `Id`=25550;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25550, 2, NULL, 'Untested', 82, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25549, 0, 0, 0, 6, 164000, 261900, 0, 0, 0, 0, 0, 0, 55179, 1, 0, 136, 0, 1, 0, 0, 0, 0, 0, 0, 0, 12233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1158, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Magma Monarch', 'Use the Drums of the Turtle God to help you defeat King Moltron.', 'The magma giants who serve Ragnaros are kept in line by their king\'s heavy-handed rule.  Were we to take care of him, the rest will surely fall into disarray.$B$BWithout the giants, the fight on the ground will get a lot more even.  Perhaps even tilt to our favor.$B$BBut felling the magma monarch will be no easy task.  Use these drums to enlist the help of the great Tortolla who is capable of holding off King Moltron for an eternity.  But holding him off won\'t be enough -- and that\'s where you come in.', '', 'Excellent work, $N.  We shall soon claim victory in Hyjal.$B$BIt has been an honor to fight along your side.', '', 'Return to Commander Jarod Shadowsong at the Gates of Sothann in Hyjal.', 40998, 0, 0, 0, 1, 0, 0, 0, 0, 55179, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Use the drums to enlist the aid of Tortolla.', 'King Moltron', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `quest_template` WHERE `Id`=25553;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25553, 2, NULL, 'Untested', 82, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25552, 0, 0, 0, 6, 164000, 261900, 0, 0, 0, 0, 0, 0, 55173, 1, 0, 136, 0, 1, 0, 0, 0, 0, 0, 0, 0, 32229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57302, 57301, 57300, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death to the Broodmother', 'Place the Twilight Drake Skull at the feeding grounds south of the Ascendant\'s Rise and slay Desperiona.', 'We\'ve located the matriarch\'s feeding grounds south of the Ascendant\'s Rise.$B$BShe will be extremely angry to have lost one of her drakes.  Place the skull there near the carcasses she devours.  If she\'s anywhere in the vicinity, she will come out and attempt to exact revenge.$B$BWe will have a surprise waiting for her.', '', 'That went... better than expected.', '', 'Return to Aronus at the Gates of Sothann in Mount Hyjal.', 40974, 0, 0, 0, 1, 0, 0, 0, 0, 55173, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Use the skull to draw her in.', 'Desperiona', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=40982;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112470, 40982, 1, 616, 616, 0, 1, 32234, 0, 3780.49, -3248.37, 982.773, 2.67035, 120, 3, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=40982;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40982, 0, 0, 0, 0, 0, 32234, 0, 0, 0, 'Aviana', '', '', 0, 82, 82, 3, 0, 1806, 1806, 0, 1, 1.14286, 1.38889, 1.14286, 1, 0, 200, 300, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 200, 300, 423, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 4, 0, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40982 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40982, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 1500, 2900, 11, 88080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(40982, 0, 1, 0, 1, 0, 100, 0, 5000, 7000, 5500, 12000, 11, 88080, 0, 0, 0, 0, 0, 19, 40974, 40, 0, 0, 0, 0, 0, ''),
(40982, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 11, 33356, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_text` WHERE `entry`=40982;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40982, 0, 0, 'You will not defile the winds of Hyjal for much longer, monster!', 14, 0, 100, 0, 2000, 0, 0, '');


DELETE FROM `creature` WHERE `id`=40974;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112620, 40974, 1, 616,5040, 0, 1, 32229, 0, 3782.34, -3227.22, 961.364, 4.27781, 120, 10, 0, 1, 1, 1, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=40974;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40974, 0, 0, 0, 0, 0, 32229, 0, 0, 0, 'Desperiona', '', '', 0, 82, 82, 3, 0, 2253, 2253, 0, 1, 1.14286, 1, 1.5986, 1, 1, 409, 583, 0, 624, 4.7, 2000, 2000, 2, 770, 0, 4, 0, 0, 0, 0, 0, 409, 583, 624, 7, 2048, 0, 40974, 0, 40974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2533, 2533, NULL, NULL, 'SmartAI', 1, 4, 1, 4, 2, 1, 1, 0, 54973, 0, 0, 0, 0, 0, 273, 1, 0, 0, 0, '', 13623);


DELETE FROM `creature_template_addon` WHERE `entry`=40974;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(40974, 0, 0, 50331648, 1, 0, 57403);

DELETE FROM `creature_text` WHERE `entry`=40974;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40974, 0, 0, 'What coward dares attack my young while I\'m away? I will feed your entrails to my brood!!', 14, 0, 100, 0, 2000, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=40974 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40974, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4097400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40974, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 40816, 60, 0, 0, 0, 0, 0, ''),
(40974, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 8000, 0, 0, 0, 0, 0, 11, 40982, 60, 0, 0, 0, 0, 0, ''),
(40974, 0, 3, 0, 7, 0, 100, 0, 0, 0, 0, 0, 19, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40974, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 40974, 0, 0, 0, 0, 0, 18, 46, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4097400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4097400, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4097400, 9, 1, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 19, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4097400, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature` WHERE `id`=40816;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(112469, 40816, 1, 616, 4998, 1, 1, 35221, 0, 4102.2, -3996.4, 970.926, 1.55334, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `ConditionValue1`=25553;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 76559, 0, 0, 9, 0, 25553, 0, 0, 0, 0, 0, '', '');


DELETE FROM `event_scripts` WHERE `datalong`=40816;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(24603, 0, 10, 40816, 200000, 0, 3739.05, -3249.9, 1002.75, 0.665927);


DELETE FROM `creature` WHERE id=40713;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(113313, 40713, 1, 616, 616, 1, 1, 31991, 0, 4305.84, -3343.51, 1019.58, 1.0821, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113314, 40713, 1, 616, 616, 1, 1, 31990, 0, 4293.39, -3320.91, 1019.58, 0.122173, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113315, 40713, 1, 616, 616, 1, 1, 31991, 0, 4269.37, -3403.36, 1019.58, 5.53269, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113316, 40713, 1, 616, 616, 1, 1, 31990, 0, 4281.27, -3400, 1019.58, 5.06145, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113317, 40713, 1, 616, 616, 1, 1, 31991, 0, 4283.47, -3236.27, 1032.97, 1.90241, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113318, 40713, 1, 616, 616, 1, 1, 31990, 0, 4308.23, -3366.28, 1019.58, 0.523599, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113319, 40713, 1, 616, 616, 1, 1, 31991, 0, 4299.39, -3242.59, 1033.01, 0.0976138, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(113320, 40713, 1, 616, 616, 1, 1, 31990, 0, 4257.46, -3353.7, 1020.27, 5.96903, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137347, 40713, 1, 616, 616, 1, 1, 31990, 0, 4259.9, -3382.74, 1020.88, 0.890118, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137348, 40713, 1, 616, 616, 1, 1, 31990, 0, 4254.53, -3369.36, 1020.34, 0.261799, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137349, 40713, 1, 616, 616, 1, 1, 31990, 0, 4251.05, -3416.74, 1019.58, 0.575959, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137350, 40713, 1, 616, 616, 1, 1, 31991, 0, 4142.46, -3446.93, 1011.81, 2.98451, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137351, 40713, 1, 616, 616, 1, 1, 31991, 0, 4191.58, -3442.53, 1011.8, 0.890118, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137352, 40713, 1, 616, 616, 1, 1, 31990, 0, 4206.24, -3468.33, 1011.86, 0.0698132, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137353, 40713, 1, 616, 616, 1, 1, 31990, 0, 4186.75, -3492.59, 1011.62, 0.383972, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(137354, 40713, 1, 616, 616, 1, 1, 31990, 0, 4169.53, -3519.53, 1012.52, 5.21853, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE id=41632;
DELETE FROM `creature` WHERE id=41630;
DELETE FROM `creature` WHERE id=40805;
DELETE FROM `creature` WHERE id=41634;
DELETE FROM `creature_template_addon` WHERE entry=41634;

DELETE FROM `quest_template` WHERE `Id`=25551;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(25551, 2, NULL, 'Untested', 82, 78, 0, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 82000, 209400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 524480, 0, 1, 0, 0, 0, 0, 0, 0, 0, 31188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57275, 57276, 57274, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1158, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Firelord', 'Go through the portal at the Sanctum of the Prophets and aid Cenarius in defeating Ragnaros.', 'With his gatekeeper gone, you\'ve given the Guardians of Hyjal access to Sulfuron Spire.$B$BRagnaros will have no choice but to defend the main entryway to the Firelands himself.$B$BGo through the Twilight\'s Hammer portal at the Sanctum of the Prophets and meet me inside.  Malfurion and Hamuul will also aid us while the others continue to fight the enemy outside.', '', 'Hyjal has been saved, $N.  And it\'s all thanks to you.', '', 'Return to Commander Jarod Shadowsong at the Gates of Sothann in Mount Hyjal.', 40793, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ragnaros defeated', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Firelord\'s time has come.', 'Ragnaros', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `conditions` WHERE SourceGroup=11434;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 11434, 1, 0, 0, 9, 0, 25551, 0, 0, 0, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken');

DELETE FROM `conditions` WHERE SourceEntry=25551;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 25551, 0, 0, 8, 0, 25555, 0, 0, 0, 0, 0, '', ''),
(19, 0, 25551, 0, 0, 8, 0, 25553, 0, 0, 0, 0, 0, '', ''),
(19, 0, 25551, 0, 0, 8, 0, 25550, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25551, 0, 0, 8, 0, 25553, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25551, 0, 0, 8, 0, 25550, 0, 0, 0, 0, 0, '', ''),
(20, 0, 25551, 0, 0, 8, 0, 25555, 0, 0, 0, 0, 0, '', '');


DELETE FROM `creature_template` WHERE `entry`=40803;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40803, 0, 0, 0, 0, 0, 34804, 0, 0, 0, 'Cenarius', '', '', 11434, 85, 85, 3, 0, 2233, 2233, 1, 1, 1.14286, 1, 1.14286, 1, 1, 1007, 1354.7, 0, 1571, 100.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 275, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 0, 0, 0, '', 13623);

DELETE FROM `waypoints` WHERE `entry`=40803;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(40803, 1, 3957.59, -2844.68, 616.39, ''),
(40803, 2, 3989.91, -2915.84, 599.289, ''),
(40803, 3, 4003.81, -2971.32, 579.182, ''),
(40803, 4, 4012.98, -3000.82, 575.384, '');

DELETE FROM `creature` WHERE `id`=40803;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142375, 40803, 1, 616, 5067, 1, 1, 0, 0, 3951.79, -2830, 618.748, 5.07762, 60, 0, 0, 21309750, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=41631;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(143110, 41631, 1, 616, 5067, 1, 2, 0, 0, 3954.34, -2826.02, 618.83, 5.02655, 120, 0, 0, 11550, 0, 0, 0, 0, 0, 0);


DELETE FROM `smart_scripts` WHERE `entryorguid`=40803 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40803, 0, 0, 0, 62, 0, 100, 0, 11434, 1, 0, 0, 80, 4080300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40803, 0, 1, 0, 40, 0, 100, 0, 4, 0, 0, 0, 80, 4080301, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4080300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4080300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080300, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080300, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 12, 41632, 3, 600000, 0, 0, 0, 8, 0, 0, 0, 3942.15, -2811.68, 618.747, 5.03047, ''),
(4080300, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 40805, 3, 600000, 0, 0, 0, 8, 0, 0, 0, 3949.18, -2809.43, 618.747, 4.99033, ''),
(4080300, 9, 4, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 41632, 20, 0, 0, 0, 0, 0, ''),
(4080300, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080300, 9, 6, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080300, 9, 7, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080300, 9, 8, 0, 0, 0, 100, 0, 11000, 11000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080300, 9, 9, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 53, 1, 40803, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4080301 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4080301, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 41634, 3, 600000, 0, 0, 0, 8, 0, 0, 0, 4029.23, -3054.25, 569.485, 0.699768, ''),
(4080301, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 41634, 20, 0, 0, 0, 0, 0, ''),
(4080301, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080301, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080301, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 4021.59, -3028.14, 575.388, 4.93403, ''),
(4080301, 9, 5, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 41634, 20, 0, 0, 0, 0, 0, ''),
(4080301, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 41634, 20, 0, 0, 0, 0, 0, ''),
(4080301, 9, 7, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 77813, 2, 0, 0, 0, 0, 11, 41634, 20, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_text` WHERE `entry`=40803;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40803, 0, 0, 'Once Hamuul and Malfurion arrive, we shall begin...', 12, 0, 100, 1, 2000, 0, 40736, ''),
(40803, 1, 0, 'The battle to free Hyjal from Ragnaros has begun!', 41, 0, 100, 0, 2000, 0, 0, ''),
(40803, 2, 0, 'We shall face the Firelord and drive every ember of his being out of our realm!', 12, 0, 100, 0, 2000, 0, 40738, ''),
(40803, 3, 0, 'I shall call upon the chilling mountain winds to protect us from Ragnaros\' flame. Malfurion and Hamuul will shatter the Firelord\'s defenses, allowing us to force him back.', 12, 0, 100, 1, 2000, 0, 40740, ''),
(40803, 4, 0, 'Let us begin. It is only a matter of time before the Firelord becomes aware of our presence and comes to the spire\'s defense.', 12, 0, 100, 1, 2000, 0, 0, ''),
(40803, 5, 0, 'Help Cenarius defeat Ragnaros!', 41, 0, 100, 0, 2000, 0, 46471, ''),
(40803, 6, 0, 'Quickly, everyone move into position! Force him back into the Firelands!', 14, 0, 100, 1, 2000, 0, 40743, ''),
(40803, 7, 0, 'It took all of our combined strength, but we have pushed Ragnaros back into the Firelands.', 12, 0, 100, 0, 2000, 0, 40908, ''),
(40803, 8, 0, 'Let us leave this place for now. We must return to the surface and restore the damage our enemies have caused.', 12, 0, 100, 0, 2000, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=41631;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(41631, 0, 0, 'Once Hamuul and Malfurion arrive, we shall begin...', 12, 0, 100, 0, 0, 0, 0, 'Cenarius To Player'),
(41631, 1, 0, 'We shall face the Firelord and drive every ember of his being out of our realm!', 12, 0, 100, 0, 0, 21639, 0, 'Cenarius To Player'),
(41631, 2, 0, 'I shall call upon the chilling mountain winds to protect us from Ragnaros\' flame. Malfurion and Hamuul will shatter the Firelord\'s defenses, allowing us to force him back.', 12, 0, 100, 0, 0, 21641, 0, 'Cenarius To Player'),
(41631, 3, 0, 'Let us begin.  It is only a matter of time before the Firelord becomes aware of our presence and comes to the spire\'s defense.', 12, 0, 100, 0, 0, 21642, 0, 'Cenarius To Player'),
(41631, 4, 0, 'Quickly, everyone move into position! Force him back into the Firelands!', 14, 0, 100, 0, 0, 21640, 0, 'Cenarius To Player'),
(41631, 5, 0, 'It took all of our combined strength, but we have pushed Ragnaros back into the Firelands.', 12, 0, 100, 0, 0, 21643, 0, 'Cenarius'),
(41631, 6, 0, 'Let us leave this place for now.  We must return to the surface and restore the damage our enemies have caused.', 12, 0, 100, 0, 0, 21644, 0, 'Cenarius'),
(41631, 7, 0, 'Ragnaros\'s assault has taxed my strength.. Heal me!.', 14, 0, 100, 0, 0, 0, 0, 'Cenarius'),
(41631, 8, 0, 'Cenarius is under attack from Ragnaros. Heal him!', 41, 0, 100, 0, 0, 0, 0, 'Cenarius');

DELETE FROM `creature_template` WHERE `entry`=41634;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41634, 0, 0, 0, 0, 0, 31188, 0, 0, 0, 'Ragnaros', '', '', 0, 85, 85, 3, 0, 2234, 2234, 0, 1, 1.14286, 1, 1.14286, 1, 1, 1007, 1354.7, 0, 1571, 70.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 500, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);



DELETE FROM `smart_scripts` WHERE `entryorguid`=41634 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41634, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41634, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41634, 0, 2, 3, 6, 0, 100, 0, 0, 0, 0, 0, 33, 40793, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 0, ''),
(41634, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 40803, 500, 0, 0, 0, 0, 0, ''),
(41634, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 41632, 500, 0, 0, 0, 0, 0, ''),
(41634, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 40805, 500, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=41634;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(41634, 0, 0, 'WHO DARES TO DEFILE THE HALLS OF LIVING FLAME? I SHALL SEAR YOUR ESSENCE FROM YOUR FLESH!', 14, 0, 100, 0, 2000, 0, 40742, ''),
(41634, 1, 0, 'FACE ME, INSECTS. I SHALL CRUSH YOU FIRSTHAND!', 14, 0, 100, 0, 2000, 0, 40836, ''),
(41634, 2, 0, 'BE BATHED IN FLAME!', 14, 0, 100, 0, 2000, 0, 40869, ''),
(41634, 3, 0, 'BURN IN LIQUID FLAME!', 14, 0, 100, 0, 2000, 0, 40870, ''),
(41634, 4, 0, 'ASSIST ME, MY CHILDREN!', 14, 0, 100, 0, 2000, 0, 40852, ''),
(41634, 5, 0, 'BURN THEIR FLESH AND SEAR THEIR BONES!', 14, 0, 100, 0, 2000, 0, 40853, ''),
(41634, 6, 0, 'YOU HAVE ONLY DELAYED THE INEVITABLE, CENARIUS. FROM THE FIRELANDS SHALL MY ARMIES WILL BE REBORN...', 14, 0, 100, 0, 2000, 0, 0, ''),
(41634, 7, 0, 'YOUR FAILURE TODAY MORTALS HERALDS THE END OF YOUR WORLD. MY CHILDREN SHALL USHER IN A NEW ERA, RULED BY THE FLAME!', 14, 0, 100, 0, 2000, 0, 0, '');


DELETE FROM `waypoints` WHERE entry=40805;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(40805, 1, 3973.52, -2862.6, 612.741, ''),
(40805, 2, 4001.59, -2922.67, 597.173, ''),
(40805, 3, 4022.02, -2994.21, 575.368, ''),
(40805, 4, 4060.53, -3009.71, 575.913, ''),
(40805, 5, 4082.43, -3045.03, 582.541, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=40805 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(40805, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4080500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40805, 0, 1, 0, 40, 0, 100, 0, 3, 0, 0, 0, 54, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40805, 0, 2, 0, 40, 0, 100, 0, 5, 0, 0, 0, 80, 4080501, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(40805, 0, 3, 0, 60, 1, 100, 0, 4000, 4000, 20000, 30000, 11, 95724, 0, 0, 0, 0, 0, 19, 41634, 200, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4080500 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4080500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3960.29, -2824.92, 618.748, 5.01005, ''),
(4080500, 9, 1, 0, 0, 0, 100, 0, 38000, 38000, 0, 0, 53, 1, 40805, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4080501 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4080501, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080501, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4080501, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3984.87, -3075.26, 581.88, 0.442216, ''),
(4080501, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry`=40805;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(40805, 0, 0, 'I am under assault! Assist me!', 14, 0, 100, 0, 2000, 0, 40888, ''),
(40805, 1, 0, 'We must confer with the leaders of the Horde and the Alliance. Ragnaros must be defeated in his home realm. Only then will he forever be vanquished.', 12, 0, 100, 0, 2000, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=40805;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(40805, 0, 0, 0, 0, 0, 31605, 0, 0, 0, 'Arch Druid Hamuul Runetotem', '', 'Cast', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 1, 1007, 1354.7, 0, 1571, 80.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 266244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 200, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);


DELETE FROM `waypoints` WHERE `entry`=41632;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(41632, 1, 3953.77, -2853.69, 615.197, ''),
(41632, 2, 3982.22, -2922.27, 599.063, ''),
(41632, 3, 3999.47, -3008.34, 575.384, ''),
(41632, 4, 3977.39, -3035.85, 575.734, ''),
(41632, 5, 3981.64, -3077.66, 582.552, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=41632 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(41632, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 4163200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41632, 0, 1, 0, 40, 0, 100, 0, 3, 0, 0, 0, 54, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41632, 0, 2, 0, 40, 0, 100, 0, 5, 0, 0, 0, 80, 4163201, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(41632, 0, 3, 0, 60, 1, 100, 0, 4000, 4000, 20000, 30000, 11, 76232, 2, 0, 0, 0, 0, 19, 41634, 200, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4163200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4163200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3941.67, -2829.45, 618.747, 5.02319, ''),
(4163200, 9, 1, 0, 0, 0, 100, 0, 38000, 38000, 0, 0, 53, 1, 41632, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=4163201 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4163201, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4163201, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(4163201, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3984.87, -3075.26, 581.88, 0.442216, ''),
(4163201, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=41632;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(41632, 0, 0, 0, 0, 0, 35095, 0, 0, 0, 'Malfurion Stormrage', '', 'Cast', 0, 85, 85, 3, 0, 2233, 2233, 0, 1, 1.14286, 1, 1.14286, 1, 3, 1007, 1354.7, 0, 1571, 80.5, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 266244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 200, 500, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `creature_text` WHERE `entry`=41632;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(41632, 0, 0, 'We are ready, Cenarius.', 12, 0, 100, 0, 2000, 0, 40737, ''),
(41632, 1, 0, 'We must not let down our guard. It\'s only a matter of time before he regains his strength and returns to turn Nordrassil into ash.', 12, 0, 100, 0, 2000, 0, 0, '');


DELETE FROM `gossip_menu_option` WHERE `menu_id`=11434;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionbroadCastTextId`, `BoxBroadcastTextId`) VALUES 
(11434, 1, 0, 'I am ready to begin the battle against Ragnaros.', 1, 1, 0, 0, 0, 0, '', 40730, NULL);

DELETE FROM `conditions` WHERE `SourceGroup`=11434;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 11434, 1, 0, 0, 9, 0, 25551, 0, 0, 0, 0, 0, '', 'Only allow gossip option to be visible if player has quest taken');

DELETE FROM `creature` WHERE `id`=40804;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(142377, 40804, 1, 616, 616, 1, 2, 0, 0, 4283.24, -3210.48, 1032.7, 2.26661, 120, 3, 0, 8400, 0, 1, 0, 0, 0, 0);

DELETE FROM `report_quest` WHERE `id`=25551;
INSERT INTO `report_quest` (`id`, `status`, `count`, `comment`) VALUES 
(25551, 0, 1, NULL);


DELETE FROM `quest_template` WHERE `Id`=27399;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(27399, 2, NULL, 'Untested', 82, 82, 0, 1637, 0, 0, 0, 0, 946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25551, 0, 0, 0, 1, 0, 21000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 262280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Battle Is Won, The War Goes On', 'Speak to Farseer Krogar at the Western Earthshrine in Orgrimmar.', 'We\'ve defeated the enemy\'s forces here, $N.  But Hyjal is not the only place where our foes are moving against us.$B$BI\'ve been informed that our allies in the Earthen Ring have put out a call for aid in a matter I\'ve been assured is most critical.$B$BSpeak to Farseer Krogar at the Western Earthshrine in Orgrimmar for further instructions.', '', 'Your aid is most timely, $N.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature` WHERE `id`=45244;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(93552, 45244, 1, 0, 0, 1, 3969, 0, 0, 2041.58, -4384.23, 99.1987, 0.785398, 120, 0, 0, 67405, 0, 0, 0, 0, 0, 0);


DELETE FROM `quest_template` WHERE `Id`=29439;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(29439, 2, NULL, 'Untested', 85, 85, 0, -381, 0, 0, 0, 0, 2098253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29326, 0, 29326, 3, 0, 208200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1135, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Call of the World-Shaman', 'Speak with Thrall just south of the World Tree in Mount Hyjal.', 'The Earthen Ring calls to you once more, $N.$B$BAs a member of the Alliance, I know that you may have reservations working with the one you call Thrall, the former Warchief of the Horde. But he has specifically requested an Alliance hero to accompany him in his next endeavor, a ritual of healing that will profoundly impact our world.$B$BCast aside your doubts, $c, and heed the world-shaman\'s call.$B$BYou will find him under the boughs of Nordrassil in Mount Hyjal, on the southern side of the tree.', '', 'It would appear my message has been heard in Stormwind.$B$BThank you, $n. Let us get to work...', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 6, 25, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `creature` WHERE `id`=54313;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141149, 54313, 1, 0, 0, 1, 1, 38689, 0, 5304.9, -3503.37, 1578.97, 0.663225, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(153134, 54313, 730, 5416, 5416, 1, 1, 0, 0, 851.865, 1066.16, -9.76709, 3.08363, 120, 0, 0, 74017176, 1183750, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54178;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141172, 54178, 1, 0, 0, 1, 1, 38658, 0, 5334.4, -3488.77, 1570.15, 0.244346, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54177;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141158, 54177, 1, 0, 0, 1, 1, 17600, 0, 5335.31, -3492.55, 1570.5, 0.331613, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54180;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141171, 54180, 1, 0, 0, 1, 1, 30865, 0, 5338.01, -3497.45, 1570.67, 0.645772, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54179;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141161, 54179, 1, 0, 0, 1, 1, 33530, 0, 5344.77, -3496.58, 1569.87, 1.01229, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54173;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141164, 54173, 1, 0, 0, 1, 1, 35095, 0, 5347.27, -3496.72, 1569.83, 1.23918, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54172;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141163, 54172, 1, 0, 0, 1, 1, 35253, 0, 5349.69, -3496.54, 1569.72, 1.36136, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54174;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141166, 54174, 1, 0, 0, 1, 1, 38754, 0, 5334.03, -3477.07, 1569.4, 5.8294, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54175;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141159, 54175, 1, 0, 0, 1, 1, 38846, 0, 5345.34, -3476.75, 1569.85, 5.3058, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54176;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141165, 54176, 1, 0, 0, 1, 1, 28227, 0, 5348.14, -3477.02, 1569.84, 4.95674, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54168;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141160, 54168, 1, 0, 0, 1, 1, 38689, 0, 5351.19, -3485.84, 1569.85, 4.81711, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54171;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141162, 54171, 1, 0, 0, 1, 1, 35825, 0, 5351.14, -3488.08, 1569.83, 1.69297, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);


DELETE FROM `creature` WHERE `id`=54312;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141150, 54312, 1, 0, 0, 1, 1, 38692, 0, 5343.2, -3486.2, 1569.85, 3.01942, 120, 0, 0, 1, 1, 0, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=53652 AND source_type=0 AND id=10;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(53652, 0, 10, 0, 62, 0, 100, 0, 12930, 0, 0, 0, 85, 100335, 16, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE `entry`=53516;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(53516, 0, 0, 0, 0, 0, 26381, 0, 0, 0, 'Essence of Doubt', '', '', 0, 85, 85, 3, 0, 7, 7, 0, 1, 0.752382, 1, 0.652382, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 2, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM `creature` WHERE `id`=53516;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(141183, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11244.3, 359.838, 640.546, 2.84198, 300, 0, 0, 77490, 0, 2, 0, 0, 0, 0),
(141173, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11291, 275.268, 646.897, 5.61094, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141175, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11233.1, 354.895, 642.779, 2.61557, 300, 0, 0, 77490, 0, 2, 0, 0, 0, 0),
(141176, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11299.3, 339.799, 646.426, 4.15596, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141177, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11230.8, 353.489, 646.598, 2.56596, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141179, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11240.2, 302.082, 645.055, 1.08393, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141180, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11265, 326.56, 649.478, 3.62281, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141181, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11264.8, 295.45, 647.798, 5.81119, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141182, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11299.8, 285.158, 633.801, 5.2842, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141187, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11272.3, 328.986, 631.59, 3.21531, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141188, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11267.8, 297.023, 641.198, 5.62428, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141190, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11295.3, 269.591, 633.763, 5.95724, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141193, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11221.8, 312.046, 633.836, 1.90345, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141196, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11257.9, 262.194, 633.104, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141199, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11238.3, 311.203, 642.279, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141201, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11224.6, 314.335, 633.836, 2.66564, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141202, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11307.9, 312.099, 640.546, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141206, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11257.9, 262.194, 639.973, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141210, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11238.3, 311.203, 636.873, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141211, 53516, 1, 5034, 5784, 1, 2, 0, 0, -11238.3, 311.203, 639.519, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(141213, 53516, 1, 5034, 5034, 1, 2, 0, 0, -11257.9, 262.194, 643.301, 0, 300, 0, 0, 0, 0, 2, 0, 0, 0, 0);


DELETE FROM `creature_addon` WHERE guid IN (141183,141173,141175,141176,141177,141179,141180,141181,141182,141187,141188,141190,141193,141196,141199,141201,141202,141206,141210,141211,141213);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(141175, 1411750, 0, 0, 0, 0, NULL),
(141176, 1411760, 0, 0, 0, 0, NULL),
(141177, 1411770, 0, 0, 0, 0, NULL),
(141179, 1411790, 0, 0, 0, 0, NULL),
(141180, 1411800, 0, 0, 0, 0, NULL),
(141181, 1411810, 0, 0, 0, 0, NULL),
(141182, 1411820, 0, 0, 0, 0, NULL),
(141183, 1411830, 0, 0, 0, 0, NULL),
(141188, 1411880, 0, 0, 0, 0, NULL),
(141190, 1411900, 0, 0, 0, 0, NULL),
(141193, 1411930, 0, 0, 0, 0, NULL),
(141196, 1411960, 0, 0, 0, 0, NULL),
(141199, 1411990, 0, 0, 0, 0, NULL),
(141201, 1412010, 0, 0, 0, 0, NULL),
(141202, 1412020, 0, 0, 0, 0, NULL),
(141206, 1412060, 0, 0, 0, 0, NULL),
(141210, 1412100, 0, 0, 0, 0, NULL),
(141211, 1412110, 0, 0, 0, 0, NULL),
(141213, 1412130, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE id IN (1411750,1411760,1411770,1411790,1411800,1411810,1411820,1411830,1411880,1411900,1411930,1411960,1411990,1412010,1412020,1412060,1412100,1412110,1412130);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`, `inverse_formation_angle`) VALUES 
(1411830, 1, -11260.6, 355.353, 640.557, 0, 0, 0, 0, 100, 0, 0),
(1411830, 2, -11279.4, 344.529, 640.101, 0, 0, 0, 0, 100, 0, 0),
(1411830, 3, -11295.5, 319.19, 638.065, 0, 0, 0, 0, 100, 0, 0),
(1411830, 4, -11297.2, 294.569, 636.481, 0, 0, 0, 0, 100, 0, 0),
(1411830, 5, -11275.5, 274.811, 634.824, 0, 0, 0, 0, 100, 0, 0),
(1411830, 6, -11240.6, 268.439, 632.114, 0, 0, 0, 0, 100, 0, 0),
(1411830, 7, -11212.9, 293.394, 635.421, 0, 0, 0, 0, 100, 0, 0),
(1411830, 8, -11212, 334.842, 635.335, 0, 0, 0, 0, 100, 0, 0),
(1411830, 9, -11214.6, 338.639, 635.239, 0, 0, 0, 0, 100, 0, 0),
(1411830, 10, -11244.3, 359.805, 641.387, 0, 0, 0, 0, 100, 0, 0),
(1411750, 1, -11252.3, 357.385, 641.566, 0, 0, 0, 0, 100, 0, 0),
(1411750, 2, -11278.9, 349.581, 638.516, 0, 0, 0, 0, 100, 0, 0),
(1411750, 3, -11295.3, 328.447, 645.923, 0, 0, 0, 0, 100, 0, 0),
(1411750, 4, -11304.3, 306.511, 648.983, 0, 0, 0, 0, 100, 0, 0),
(1411750, 5, -11288.3, 289.743, 641.011, 0, 0, 0, 0, 100, 0, 0),
(1411750, 6, -11254.6, 270.114, 639.43, 0, 0, 0, 0, 100, 0, 0),
(1411750, 7, -11231.6, 280.304, 636.845, 0, 0, 0, 0, 100, 0, 0),
(1411750, 8, -11215.2, 309.893, 638.735, 0, 0, 0, 0, 100, 0, 0),
(1411750, 9, -11232.9, 354.621, 642.383, 0, 0, 0, 0, 100, 0, 0),
(1411770, 1, -11225, 328.303, 643.632, 0, 0, 0, 0, 100, 0, 0),
(1411770, 2, -11220.1, 286.619, 638.87, 0, 0, 0, 0, 100, 0, 0),
(1411770, 3, -11223, 282.26, 637.907, 0, 0, 0, 0, 100, 0, 0),
(1411770, 4, -11249.2, 270.187, 641.276, 0, 0, 0, 0, 100, 0, 0),
(1411770, 5, -11276.1, 285.849, 642.437, 0, 0, 0, 0, 100, 0, 0),
(1411770, 6, -11304.1, 315.955, 641.848, 0, 0, 0, 0, 100, 0, 0),
(1411770, 7, -11279.3, 333.305, 633.694, 0, 0, 0, 0, 100, 0, 0),
(1411770, 8, -11253.4, 351.135, 641.326, 0, 0, 0, 0, 100, 0, 0),
(1411770, 9, -11231.2, 353.403, 646.926, 0, 0, 0, 0, 100, 0, 0),
(1412100, 1, -11239.9, 319.42, 635.932, 0, 0, 0, 0, 100, 0, 0),
(1412100, 2, -11257.3, 330.488, 635.888, 0, 0, 0, 0, 100, 0, 0),
(1412100, 3, -11272.1, 317.552, 635.234, 0, 0, 0, 0, 100, 0, 0),
(1412100, 4, -11267.7, 298.024, 634.851, 0, 0, 0, 0, 100, 0, 0),
(1412100, 5, -11250.7, 294.142, 635.129, 0, 0, 0, 0, 100, 0, 0),
(1412100, 6, -11238.4, 310.758, 636.929, 0, 0, 0, 0, 100, 0, 0),
(1412110, 1, -11239.3, 323.906, 644.518, 0, 0, 0, 0, 100, 0, 0),
(1412110, 2, -11260.6, 328.874, 645.019, 0, 0, 0, 0, 100, 0, 0),
(1412110, 3, -11274.5, 314.639, 646.762, 0, 0, 0, 0, 100, 0, 0),
(1412110, 4, -11269, 299.494, 646.903, 0, 0, 0, 0, 100, 0, 0),
(1412110, 5, -11249, 292.941, 645.486, 0, 0, 0, 0, 100, 0, 0),
(1412110, 6, -11237.5, 310.368, 640.859, 0, 0, 0, 0, 100, 0, 0),
(1411990, 1, -11247.4, 321.917, 642.554, 0, 0, 0, 0, 100, 0, 0),
(1411990, 2, -11256.6, 323.955, 641.756, 0, 0, 0, 0, 100, 0, 0),
(1411990, 3, -11264.6, 316.263, 641.484, 0, 0, 0, 0, 100, 0, 0),
(1411990, 4, -11265.9, 297.584, 640.362, 0, 0, 0, 0, 100, 0, 0),
(1411990, 5, -11248.3, 297.536, 639.84, 0, 0, 0, 0, 100, 0, 0),
(1411990, 6, -11240.4, 306.711, 639.234, 0, 0, 0, 0, 100, 0, 0),
(1411990, 7, -11238.1, 311.379, 643.035, 0, 0, 0, 0, 100, 0, 0),
(1411800, 1, -11266.9, 313.299, 641.857, 0, 0, 0, 0, 100, 0, 0),
(1411800, 2, -11257.7, 300.476, 645.752, 0, 0, 0, 0, 100, 0, 0),
(1411800, 3, -11244.9, 306.985, 643.139, 0, 0, 0, 0, 100, 0, 0),
(1411800, 4, -11247.9, 319.057, 647.974, 0, 0, 0, 0, 100, 0, 0),
(1411800, 5, -11264.5, 326.269, 649.787, 0, 0, 0, 0, 100, 0, 0),
(1411880, 1, -11271.5, 319.993, 644.984, 0, 0, 0, 0, 100, 0, 0),
(1411880, 2, -11252.8, 330.143, 635.333, 0, 0, 0, 0, 100, 0, 0),
(1411880, 3, -11236.2, 315.05, 636.597, 0, 0, 0, 0, 100, 0, 0),
(1411880, 4, -11244.1, 324.443, 642.62, 0, 0, 0, 0, 100, 0, 0),
(1411880, 5, -11261.8, 328.734, 638.661, 0, 0, 0, 0, 100, 0, 0),
(1411880, 6, -11261.1, 313.842, 636.946, 0, 0, 0, 0, 100, 0, 0),
(1411880, 7, -11268, 297.198, 641.433, 0, 0, 0, 0, 100, 0, 0),
(1411810, 1, -11250.3, 303.66, 642.649, 0, 0, 0, 0, 100, 0, 0),
(1411810, 2, -11247.4, 314.891, 639.89, 0, 0, 0, 0, 100, 0, 0),
(1411810, 3, -11256.7, 317.909, 645.523, 0, 0, 0, 0, 100, 0, 0),
(1411810, 4, -11263.7, 311.426, 652.997, 0, 0, 0, 0, 100, 0, 0),
(1411810, 5, -11259.4, 302.607, 659.718, 0, 0, 0, 0, 100, 0, 0),
(1411810, 6, -11256.3, 292.344, 650.911, 0, 0, 0, 0, 100, 0, 0),
(1411810, 7, -11265, 295.302, 648.057, 0, 0, 0, 0, 100, 0, 0),
(1411790, 1, -11247.1, 298.631, 647.195, 0, 0, 0, 0, 100, 0, 0),
(1411790, 2, -11258.4, 304.012, 650.705, 0, 0, 0, 0, 100, 0, 0),
(1411790, 3, -11262.8, 313.346, 652.161, 0, 0, 0, 0, 100, 0, 0),
(1411790, 4, -11256.8, 317.699, 652.359, 0, 0, 0, 0, 100, 0, 0),
(1411790, 5, -11246.4, 316.071, 650.26, 0, 0, 0, 0, 100, 0, 0),
(1411790, 6, -11250.5, 304.15, 649.886, 0, 0, 0, 0, 100, 0, 0),
(1411790, 7, -11240.2, 300.383, 645.765, 0, 0, 0, 0, 100, 0, 0),
(1412010, 1, -11225.3, 330.097, 639.072, 0, 0, 0, 0, 100, 0, 0),
(1412010, 2, -11237.3, 340.218, 640.631, 0, 0, 0, 0, 100, 0, 0),
(1412010, 3, -11259.6, 344.86, 642.781, 0, 0, 0, 0, 100, 0, 0),
(1412010, 4, -11276.6, 334.583, 637.293, 0, 0, 0, 0, 100, 0, 0),
(1412010, 5, -11287.4, 321.967, 638.799, 0, 0, 0, 0, 100, 0, 0),
(1412010, 6, -11287.1, 303.199, 639.251, 0, 0, 0, 0, 100, 0, 0),
(1412010, 7, -11278.2, 281.576, 636.301, 0, 0, 0, 0, 100, 0, 0),
(1412010, 8, -11260.9, 274.952, 635.83, 0, 0, 0, 0, 100, 0, 0),
(1412010, 9, -11233.9, 282.511, 635.262, 0, 0, 0, 0, 100, 0, 0),
(1412010, 10, -11220.9, 300.258, 636.35, 0, 0, 0, 0, 100, 0, 0),
(1412010, 11, -11224.7, 313.987, 634.856, 0, 0, 0, 0, 100, 0, 0),
(1411930, 1, -11221.7, 322.954, 639.842, 0, 0, 0, 0, 100, 0, 0),
(1411930, 2, -11233.1, 336.974, 640.698, 0, 0, 0, 0, 100, 0, 0),
(1411930, 3, -11249.2, 342.85, 640.559, 0, 0, 0, 0, 100, 0, 0),
(1411930, 4, -11253.4, 321.971, 649.348, 0, 0, 0, 0, 100, 0, 0),
(1411930, 5, -11277, 307.96, 650.932, 0, 0, 0, 0, 100, 0, 0),
(1411930, 6, -11291.4, 291.335, 646.205, 0, 0, 0, 0, 100, 0, 0),
(1411930, 7, -11275.7, 273.016, 642.357, 0, 0, 0, 0, 100, 0, 0),
(1411930, 8, -11244.3, 269.47, 641.437, 0, 0, 0, 0, 100, 0, 0),
(1411930, 9, -11227.6, 278.962, 640.879, 0, 0, 0, 0, 100, 0, 0),
(1411930, 10, -11221.5, 312.085, 633.848, 0, 0, 0, 0, 100, 0, 0),
(1411760, 1, -11299.2, 321.059, 651.111, 0, 0, 0, 0, 100, 0, 0),
(1411760, 2, -11280.9, 284.296, 647.693, 0, 0, 0, 0, 100, 0, 0),
(1411760, 3, -11246, 275.218, 647.878, 0, 0, 0, 0, 100, 0, 0),
(1411760, 4, -11217.3, 300.099, 648.473, 0, 0, 0, 0, 100, 0, 0),
(1411760, 5, -11229.9, 341.805, 647.126, 0, 0, 0, 0, 100, 0, 0),
(1411760, 6, -11267.8, 347.626, 648.894, 0, 0, 0, 0, 100, 0, 0),
(1411760, 7, -11301.1, 338.664, 646.278, 0, 0, 0, 0, 100, 0, 0),
(1412020, 1, -11297.4, 295.164, 641.063, 0, 0, 0, 0, 100, 0, 0),
(1412020, 2, -11283.9, 277.173, 637.571, 0, 0, 0, 0, 100, 0, 0),
(1412020, 3, -11262.9, 269.306, 637.279, 0, 0, 0, 0, 100, 0, 0),
(1412020, 4, -11237.3, 269.234, 637.533, 0, 0, 0, 0, 100, 0, 0),
(1412020, 5, -11219.5, 292.02, 635.538, 0, 0, 0, 0, 100, 0, 0),
(1412020, 6, -11213.8, 326.878, 633.917, 0, 0, 0, 0, 100, 0, 0),
(1412020, 7, -11235.7, 350.072, 632.798, 0, 0, 0, 0, 100, 0, 0),
(1412020, 8, -11270, 349.871, 633.217, 0, 0, 0, 0, 100, 0, 0),
(1412020, 9, -11289.4, 339.253, 633.706, 0, 0, 0, 0, 100, 0, 0),
(1412020, 10, -11308.3, 312.264, 641.358, 0, 0, 0, 0, 100, 0, 0),
(1411820, 1, -11287, 273.079, 636.26, 0, 0, 0, 0, 100, 0, 0),
(1411820, 2, -11257.5, 266.101, 634.019, 0, 0, 0, 0, 100, 0, 0),
(1411820, 3, -11225.7, 274.87, 633.713, 0, 0, 0, 0, 100, 0, 0),
(1411820, 4, -11206.8, 310.746, 634.184, 0, 0, 0, 0, 100, 0, 0),
(1411820, 5, -11230.2, 351.12, 634.912, 0, 0, 0, 0, 100, 0, 0),
(1411820, 6, -11286, 349.293, 634.951, 0, 0, 0, 0, 100, 0, 0),
(1411820, 7, -11306.2, 317.508, 633.416, 0, 0, 0, 0, 100, 0, 0),
(1411820, 8, -11300.2, 285.107, 635.315, 0, 0, 0, 0, 100, 0, 0),
(1411900, 1, -11259.6, 261.087, 629.091, 0, 0, 0, 0, 100, 0, 0),
(1411900, 2, -11218.7, 279.52, 627.401, 0, 0, 0, 0, 100, 0, 0),
(1411900, 3, -11205, 315.52, 625.495, 0, 0, 0, 0, 100, 0, 0),
(1411900, 4, -11218.8, 349.384, 624.629, 0, 0, 0, 0, 100, 0, 0),
(1411900, 5, -11261.9, 360.949, 624.862, 0, 0, 0, 0, 100, 0, 0),
(1411900, 6, -11301.4, 333.046, 625.854, 0, 0, 0, 0, 100, 0, 0),
(1411900, 7, -11306.1, 302.389, 625.43, 0, 0, 0, 0, 100, 0, 0),
(1411900, 8, -11295.2, 270.104, 634.223, 0, 0, 0, 0, 100, 0, 0),
(1411960, 1, -11238.3, 269.86, 632.809, 0, 0, 0, 0, 100, 0, 0),
(1411960, 2, -11219.1, 285.722, 631.474, 0, 0, 0, 0, 100, 0, 0),
(1411960, 3, -11213.1, 313.097, 633.306, 0, 0, 0, 0, 100, 0, 0),
(1411960, 4, -11222, 338.229, 633.214, 0, 0, 0, 0, 100, 0, 0),
(1411960, 5, -11243.8, 353.776, 633.824, 0, 0, 0, 0, 100, 0, 0),
(1411960, 6, -11270.8, 351.643, 634.09, 0, 0, 0, 0, 100, 0, 0),
(1411960, 7, -11295.6, 327.066, 633.153, 0, 0, 0, 0, 100, 0, 0),
(1411960, 8, -11298.9, 301.883, 633.315, 0, 0, 0, 0, 100, 0, 0),
(1411960, 9, -11279.8, 273.583, 632.534, 0, 0, 0, 0, 100, 0, 0),
(1411960, 10, -11260.1, 263.628, 633.899, 0, 0, 0, 0, 100, 0, 0),
(1412060, 1, -11240.9, 269.761, 639.597, 0, 0, 0, 0, 100, 0, 0),
(1412060, 2, -11216.7, 294.175, 638.76, 0, 0, 0, 0, 100, 0, 0),
(1412060, 3, -11223.5, 337.096, 638.678, 0, 0, 0, 0, 100, 0, 0),
(1412060, 4, -11247, 350.259, 638.798, 0, 0, 0, 0, 100, 0, 0),
(1412060, 5, -11288.7, 340.387, 635.611, 0, 0, 0, 0, 100, 0, 0),
(1412060, 6, -11299.3, 317.811, 635.159, 0, 0, 0, 0, 100, 0, 0),
(1412060, 7, -11302.4, 272.444, 642.206, 0, 0, 0, 0, 100, 0, 0),
(1412060, 8, -11257.8, 261.871, 640.039, 0, 0, 0, 0, 100, 0, 0),
(1412130, 1, -11240.8, 269.356, 649.18, 0, 0, 0, 0, 100, 0, 0),
(1412130, 2, -11218.4, 300.573, 654.65, 0, 0, 0, 0, 100, 0, 0),
(1412130, 3, -11226.7, 343.722, 654.218, 0, 0, 0, 0, 100, 0, 0),
(1412130, 4, -11264.1, 349.736, 652.459, 0, 0, 0, 0, 100, 0, 0),
(1412130, 5, -11290.9, 327.537, 652.85, 0, 0, 0, 0, 100, 0, 0),
(1412130, 6, -11288.7, 285.726, 651.585, 0, 0, 0, 0, 100, 0, 0),
(1412130, 7, -11257.6, 262.418, 644.01, 0, 0, 0, 0, 100, 0, 0);



DELETE FROM `creature_template` WHERE `entry`=42465;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(42465, 0, 0, 0, 0, 0, 32913, 0, 0, 0, 'Therazane', 'The Stonemother', '', 12009, 85, 85, 3, 0, 35, 35, 3, 1, 1.14286, 1, 1.14286, 1, 1, 2, 2, 0, 24, 7.5, 2000, 2000, 2, 768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 151.403, 20.1904, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

DELETE FROM `report_quest` WHERE id=29327;

DELETE FROM `gameobject` WHERE id IN (208449,208444,208454);

DELETE FROM `gameobject` WHERE `id`=208451;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39060, 208451, 1, 0, 0, 1, 2, 4607.59, -2087.21, 1238.03, 0.505167, 0, 0, 0.249906, 0.96827, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208445;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39062, 208445, 1, 0, 0, 1, 2, 4613.07, -2100.07, 1238.06, 4.01827, 0, 0, -0.905457, 0.424437, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208446;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39063, 208446, 1, 0, 0, 1, 2, 4616.14, -2097.46, 1238.6, 2.30569, 0, 0, 0.913921, 0.405891, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208450;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39059, 208450, 1, 0, 0, 1, 2, 4624.31, -2100.42, 1237.65, 2.01466, -0.0518427, 0.0545216, 0.842292, 0.533746, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208448;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39057, 208448, 1, 0, 0, 1, 2, 4626.58, -2103.72, 1236.94, 0.61844, -0.0643763, 0.0297308, 0.305941, 0.949406, 300, 255, 1);

DELETE FROM `gameobject` WHERE `id`=208451;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39060, 208451, 1, 0, 0, 1, 2, 4607.59, -2087.21, 1238.03, 0.505167, 0, 0, 0.249906, 0.96827, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208447;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39064, 208447, 1, 0, 0, 1, 1, 4637.02, -2073.19, 1234.04, 2.37803, -0.0090518, 0.0339785, 0.927207, 0.372895, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208453;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39065, 208453, 1, 0, 0, 1, 2, 4602.33, -2084.67, 1235.97, 4.79854, 0, 0, -0.676003, 0.736899, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208452;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(39061, 208452, 1, 0, 0, 1, 2, 4601.39, -2086.32, 1235.91, 2.46664, 0, 0, 0.943593, 0.331107, 300, 255, 1);


DELETE FROM `gameobject` WHERE `id`=208900;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67999, 208900, 1, 616, 5781, 1, 6, 4607.47, -2096, 1237.94, 3.38396, 0, 0, 0.992666, -0.120889, 1, 0, 1);

DELETE FROM `gameobject_template` WHERE `entry`=204580;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (204580, 3, 10, 'Gar\'gol\'s Personal Treasure Chest', '', 'Opening', '', 0, 4, 1, 52789, 0, 0, 0, 0, 0, 43, 28483, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE `guid`=67244;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(67244, 204580, 1, 0, 0, 1, 1, 5103.02, -2052.92, 1275.42, 2.12965, 0, 0, 0.874705, 0.484656, 30, 0, 1);

-- condiciones para el uso del spell y el item

DELETE FROM `item_template` WHERE `entry`=52819;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES 
(52819, 0, 0, -1, 'Frostgale Crystal', 56636, 1, 65600, 8192, 0.9795, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74359, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `conditions` WHERE `SourceEntry`=74359;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 74359, 0, 0, 31, 1, 3, 39453, 0, 0, 0, 0, '', ''),
(17, 0, 74359, 0, 0, 1, 1, 74359, 0, 0, 1, 0, 0, '', '');
