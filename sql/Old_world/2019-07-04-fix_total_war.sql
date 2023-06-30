-- Quest 28872 Total War
DELETE FROM `gameobject_template` WHERE (`entry`='206195');
INSERT INTO `gameobject_template` VALUES (206195, 22, 7490, 'Keg of Thundermar Ale', '', '', '', 35, 0, 1, 0, 0, 0, 0, 0, 0, 86809, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);
UPDATE `gameobject_template` SET `data7`='206195' WHERE (`entry`='206195');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='86809');
INSERT INTO `spell_linked_spell` VALUES (86809, 34539, 0, 'spell cosmetic explosion');
INSERT INTO `spell_linked_spell` VALUES (86809, 85933, 0, 'spell credit');
INSERT INTO `spell_linked_spell` VALUES (86809, 86855, 0, 'collecting alliance similar quest');
DELETE FROM `conditions` WHERE (`SourceEntry`='86855');
INSERT INTO `conditions` VALUES (17, 0, 86855, 0, 0, 9, 0, 27752, 0, 0, 0, 0, 0, '', 'Spell is allow only when quest is active ');

DELETE FROM `spell_scripts` WHERE (`datalong`='46551');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '46551');