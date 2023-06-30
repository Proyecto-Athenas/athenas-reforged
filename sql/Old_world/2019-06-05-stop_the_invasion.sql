-- Stop the invasion quest id: 11677 spell: 45834
DELETE FROM `spell_script_names` WHERE `spell_id` = 45834;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (45834, 'spell_q11677_elim_cauldron');

-- missing bunny on western cauldorn 
DELETE FROM `creature` WHERE `id` = 25654;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
(25654, 571, 3537, 4124, 1, 1, 0, 0, 4356.13, 4261.08, 98.3095, -0.087266, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25654, 571, 3537, 4124, 1, 65535, 0, 0, 4206.92, 4056.98, 94.3011, 4.52594, 300, 0, 0, 42, 0, 0, 0, 33554432, 0, 0);

-- update reported quest status to 0
UPDATE report_quest SET status = 0 WHERE id = 11677;

