-- # Weapons of Mass Dysfunction
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 26294;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 26294;

-- # Unfamiliar Waters
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 26311;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 26311;
UPDATE `quest_template` SET `RequiredItemCount1` = 0 WHERE `Id` = 26311;
UPDATE `quest_template` SET `RequiredItemId1` = 0 WHERE `Id` = 26311;

-- # Ready the Ground Troops
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 26374;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 26374;
UPDATE `quest_template` SET `RequiredItemCount1` = 0 WHERE `Id` = 26374;
UPDATE `quest_template` SET `RequiredItemId1` = 0 WHERE `Id` = 26374;

-- # Beating the Market
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 26337;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 26337;
UPDATE `quest_template` SET `RequiredItemCount1` = 0 WHERE `Id` = 26337;
UPDATE `quest_template` SET `RequiredItemId1` = 0 WHERE `Id` = 26337;

-- # Smoot's Samophlange
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 26361;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 26361;
UPDATE `quest_template` SET `RequiredItemCount1` = 0 WHERE `Id` = 26361;
UPDATE `quest_template` SET `RequiredItemId1` = 0 WHERE `Id` = 26361;

-- # quest mark spawn
DELETE FROM `creature` WHERE `guid`=15678870;
INSERT INTO `creature`(`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (15678870, 42672, 1, 1637, 5168, 1, 1, 0, 42672, 1899.82, -4669.29, 35.208, 0.145587, 300, 0, 0, 53681, 0, 0, 0, 0, 0, 0);