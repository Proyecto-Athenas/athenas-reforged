-- Among Humans Again 14313
DELETE FROM `creature_questrelation` WHERE `id` IN (36743, 14313);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (36743, 14313);

-- Sallah's Gift
DELETE FROM `creature_template_addon` WHERE  `entry`=48621;

-- Oh Deer - set as auto complete
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE  `Id`=25392;

-- Weapons of Mass Destruction - auto complete
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGoCount2`='0' WHERE  `Id`=26294;