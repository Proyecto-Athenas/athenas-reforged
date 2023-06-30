
/*
	https://www.wowhead.com/npc=48547/harrison-jones
	https://www.wowhead.com/spell=84756/quest-invisibility-5
*/

DELETE FROM `creature_template_addon` WHERE `entry`=48547;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(48547, 0, 0, 0, 0, 0, '84756');
