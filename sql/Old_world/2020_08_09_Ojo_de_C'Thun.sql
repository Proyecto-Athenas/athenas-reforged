-- Aumento el porcentaje de drop
DELETE FROM `creature_loot_template` WHERE `entry`=15727 AND `item`=21221;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(15727, 21221, 90.842, 1, 0, 1, 1);

-- Agregado Npc vendedor de items alianza
DELETE FROM `creature` WHERE `guid`=15536;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(15536, 12778, 0, 1519, 1519, 1, 65535, 0, 206, -8776.97, 414.074, 103.922, 0.0131574, 300, 0, 0, 5228, 0, 0, 0, 0, 0, 0);

