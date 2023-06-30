-- at_k3_teleporter
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5187, 5190);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES 
(5187, 'at_k3_teleporter'),
(5190, 'at_k3_teleporter');