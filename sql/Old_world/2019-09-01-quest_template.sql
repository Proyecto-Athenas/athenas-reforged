
-- bugged out dakkari skullcrusher in Zuldrak
UPDATE `creature_template` SET `VehicleId`='0' WHERE  `entry`=28844; 
-- arcane prison kll credit 

-- Prison Break
UPDATE `gameobject_template` SET ScriptName = "go_arcane_prison" WHERE `entry` = 187561;
-- disrupt their communication

-- Disrupt their communication
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=34387;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, ErrorTextId) VALUES
(13, 2, 34387, 0, 0, 31, 0, 3, 19717, 0, 0, 0, 0),
(13, 2, 34387, 0, 1, 31, 0, 3, 19652, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id` IN (19652,19717);
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
 (19652, 530, 3483, 3804, 1, 1, 0, 0, -420.378, 1846.74, 80.8949, 1.88496, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0),
 (19652, 530, 3483, 3804, 1, 65535, 0, 0, -424.215, 1848.08, 79.7745, 5.73972, 300, 0, 0, 4120, 0, 0, 0, 33554432, 0, 0),
 (19652, 530, 3483, 3804, 1, 65535, 0, 0, -84.74, 1881.03, 74.6952, 0.846692, 300, 0, 0, 4120, 0, 0, 0, 33554432, 0, 0),
 (19717, 530, 3483, 3804, 1, 1, 0, 0, -548.089, 1782.72, 58.794, 5.44543, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0),
 (19717, 530, 3483, 3804, 1, 65535, 0, 0, -417.48, 1844.17, 82.7874, 2.96649, 300, 0, 0, 4120, 0, 0, 0, 0, 0, 0),
 (19717, 530, 3483, 3804, 1, 65535, 0, 0, -549.154, 1782.02, 59.8873, 0.701391, 300, 0, 0, 4120, 0, 0, 0, 33554432, 0, 0);

-- The Battle is Won, The War goes on
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27398;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (45226, 27398);

-- Attude the bloodstone
DELETE FROM `spell_target_position` WHERE `id` IN (76897, 76896);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
 (76897, 0, -11454.1, -2634.36, 4.4, 5.7919),
 (76896, 0, -11361.7, -2715.1, 13.6, 3.01395);
 
DELETE FROM `creature` WHERE id = 97877;

DELETE FROM creature_template WHERE entry = 97877;
