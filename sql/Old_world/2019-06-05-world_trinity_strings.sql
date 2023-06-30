
DELETE FROM `trinity_string` WHERE `entry` IN (5500, 11999);
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
 (5500, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), -- it used to error on console whenever using .quest add (output: <error>) so i added a blank row with the id
 (11999, 'Quest: %u is reported, and is set to be autocomplete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); -- for reported quests, so user can know it instead of manually checking it out in reported quest table

