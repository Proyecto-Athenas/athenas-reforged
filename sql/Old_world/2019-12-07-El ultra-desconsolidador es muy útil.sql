-- El ultra-desconsolidador es muy útil (10203)
UPDATE gameobject_template SET data3=1 WHERE entry IN(183805, 183806, 183807, 183808);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=36460;
INSERT INTO conditions VALUES(13, 4, 36460, 0, 3, 31, 0, 3, 21262, 0, 0, 0, 0, '', 'Target Goblin Equipment Trigger');
UPDATE creature_template SET AIName='SmartAI', ScriptName=''WHERE entry=21262;
UPDATE creature_template SET scale='3'  WHERE entry=21262;
DELETE FROM smart_scripts WHERE entryorguid=21262 AND source_type=0;
INSERT INTO smart_scripts VALUES (21262, 0, 0, 0, 8, 0, 100, 0, 36460, 0, 0, 0, 11, 41232, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Goblin Equipment Trigger - On Spell Hit - Cast Teleport Visual Only');

-- elimina el reporte
DELETE FROM `report_quest` WHERE id=10203;

-- elinina objeto 
DELETE FROM `gameobject` WHERE guid=80927;

-- correccion para las coordenadas de los objetos
DELETE FROM `gameobject` WHERE `guid`=86835;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (86835, 183808, 530, 3523, 3723, 1, 1, 2774.05, 3114.08, 154.526, 1.23918, 0, 0, 0.884318, 0.466885, 120, 100, 1);

DELETE FROM `gameobject` WHERE `guid`=86832;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (86832, 183806, 530, 3523, 3723, 1, 1, 2787.89, 3172.17, 146.126, 5.68977, 0, 0, 0.993036, 0.117808, 120, 100, 1);

DELETE FROM `gameobject` WHERE `guid`=86833;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (86833, 183807, 530, 3523, 3723, 1, 1, 2746.85, 3239.64, 147.681, 6.17846, 0, 0, 0.654715, -0.755876, 120, 100, 1);

DELETE FROM `gameobject` WHERE `guid`=86834;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (86834, 183805, 530, 3523, 3723, 1, 1, 2716.3, 3193.05, 147.681, 4.31096, 0, 0, 0.670193, 0.742187, 120, 100, 1);
