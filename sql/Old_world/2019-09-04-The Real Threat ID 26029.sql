-- Se eliminaron los duplicados reporte trello 
DELETE FROM `creature` WHERE `id`=2773;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (41490, 2773, 0, 45, 324, 1, 1, 0, 0, -1705.33, -1638.05, 58.8369, 3.52556, 90, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- Se corrigió  el modelo de la creatura
UPDATE `creature_template` SET  `modelid1`='11561' WHERE entry IN (2773);

-- Se corrigió el porcentaje de drop para la mision The Real Threat ID: 26029
UPDATE `creature_loot_template` SET  `ChanceOrQuestChance`='-100' WHERE item IN (4551);