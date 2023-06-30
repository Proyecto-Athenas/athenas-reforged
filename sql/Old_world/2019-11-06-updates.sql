-- hablilitado dragonsoul
DELETE FROM `disables` WHERE `sourceType`=2 AND `entry`=967;

-- agregados npcs professiones
DELETE FROM `creature` WHERE id =200015;
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('15712637','200015','0','1519','5148','1','65535','0','0','-8846.24','626.397','94.4921','0.258481','300','0','0','85892','0','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) values('15712491','200015','1','1637','5170','1','65535','0','0','1548','-4427.61','19.207','0.812728','300','0','0','85892','0','0','0','0','0','0');
