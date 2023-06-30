-- fix https://www.wowhead.com/quest=9954/corkis-ransom reporte trello
DELETE FROM `report_quest` WHERE id IN (9954);
DELETE FROM `gameobject` WHERE guid IN (75611);
DELETE FROM `gameobject` WHERE guid IN (75615); 
DELETE FROM `gameobject` WHERE guid IN (75616); 
DELETE FROM `gameobject` WHERE guid IN (75614);
DELETE FROM `gameobject` WHERE guid IN (75617);
DELETE FROM `gameobject` WHERE guid IN (75605);
DELETE FROM `gameobject` WHERE guid IN (75606);
DELETE FROM `gameobject` WHERE guid IN (75610);
DELETE FROM `gameobject` WHERE guid IN (75607);
DELETE FROM `creature_involvedrelation` WHERE `id` = 18369;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (18369, 9954);