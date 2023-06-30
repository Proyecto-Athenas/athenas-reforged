
/*
	https://www.wowhead.com/npc=48621/sullah
	https://www.wowhead.com/spell=84756/quest-invisibility-5
*/

DELETE FROM `creature_template_addon` WHERE `entry`=48621;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(48621, 0, 0, 65536, 1, 0, '84756');
