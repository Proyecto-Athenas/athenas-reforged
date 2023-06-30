-- fix https://es.wowhead.com/npc=52036/galra#sells
DELETE FROM `creature` WHERE `guid`=174197;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (174197, 52036, 1, 1637, 5169, 1, 3969, 0, 0, 1666.05, -4164.95, 56.1629, 4.19016, 120, 0, 0, 1830, 5013, 0, 0, 0, 0, 0);
