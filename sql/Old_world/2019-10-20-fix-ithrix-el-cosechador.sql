-- fix https://es.wowhead.com/npc=25453/ithrix-el-cosechador
UPDATE `creature_template` SET  `InhabitType`='4' WHERE entry IN (25453);
-- la creatura entra en conbate con otro npc y no podian interactuar con el para seguir con la mision
DELETE FROM `creature` WHERE `guid`=333360;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (333360, 25453, 571, 3537, 4020, 1, 1, 0, 0, 2705.95, 6066.17, 102.212, 0.752079, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0);
