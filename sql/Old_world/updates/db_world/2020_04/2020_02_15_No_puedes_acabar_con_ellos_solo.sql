-- Quest 14348 No puedes llevarlos alineados

DELETE FROM `report_quest` WHERE id=14348;
UPDATE `creature_template` SET `scriptname`= 'npc_horrid_abomination' WHERE `entry`= 36231;
DELETE FROM `creature_text` WHERE entry=36231;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36231, 0, 0, 'GAH!!!!  I CAN''T SEE IN HERE!!!!', 12, 0, 100, 0, 0, 20908, 'Horrid Abomination - Keg Placed'),
(36231, 0, 1, 'Barrel smell like gunpowder...', 12, 0, 100, 0, 0, 20909, 'Horrid Abomination - Keg Placed'),
(36231, 0, 2, 'This not be good...', 12, 0, 100, 0, 0, 20910, 'Horrid Abomination - Keg Placed'),
(36231, 0, 3, 'Uh-oh... this gonna hurts me...', 12, 0, 100, 0, 0, 20911, 'Horrid Abomination - Keg Placed'),
(36231, 0, 4, 'I gots bad feeling...', 12, 0, 100, 0, 0, 20912, 'Horrid Abomination - Keg Placed'),
(36231, 0, 5, 'Get back here!  I smashes you!', 12, 0, 100, 0, 0, 20913, 'Horrid Abomination - Keg Placed');
