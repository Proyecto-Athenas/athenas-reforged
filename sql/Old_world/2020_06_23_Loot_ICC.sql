DELETE FROM `creature_loot_template`WHERE `entry` = 39166 AND `item`= 4;
DELETE FROM `creature_loot_template`WHERE `entry` = 39167 AND `item`= 2;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('39166', '4', '100', '1', '4', '-52025', '2'), -- botin de lich king 25N - marcas normales
('39167', '2', '100', '1', '2', '-52025', '1'); -- botin de lich king 10H - marcas normales

DELETE FROM `gameobject_loot_template` WHERE `entry`IN ('202239', '202240', '202238', '202241');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('202239', '1', '100', '1', '1', '-12036', '2'), -- botin de Libramorte Colmillosauro 10N
('202240', '1', '100', '1', '1', '-34263', '3'), -- botin de Libramorte Colmillosauro 25N
('202240', '2', '100', '1', '2', '-52025', '2'), -- botin de Libramorte Colmillosauro 25N
('202238', '1', '100', '1', '1', '-34251', '2'), -- botin de Libramorte Colmillosauro 10H
('202238', '2', '100', '1', '2', '-52025', '1'), -- botin de Libramorte Colmillosauro 10H
('202241', '1', '100', '1', '1', '-34275', '3'), -- botin de Libramorte Colmillosauro 25H
('202241', '2', '100', '1', '2', '-52025', '1'), -- botin de Libramorte Colmillosauro 25H
('202241', '3', '100', '1', '3', '-52030', '2'); -- botin de Libramorte Colmillosauro 25H

-- asignado botín al cofre de Libramorte Colmillosauro en todas sus dificultades
UPDATE `gameobject_template` SET `data12` = '0', `data1` = '202239' WHERE `entry` = '202239'; 
UPDATE `gameobject_template` SET `data12` = '0', `data1` = '202240' WHERE `entry` = '202240'; 
UPDATE `gameobject_template` SET `data12` = '0', `data1` = '202238' WHERE `entry` = '202238'; 
UPDATE `gameobject_template` SET `data12` = '0', `data1` = '202241' WHERE `entry` = '202241'; 
