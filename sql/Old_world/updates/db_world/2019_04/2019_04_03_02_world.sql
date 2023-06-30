
/*
	https://www.wowhead.com/quest=12857/wanted-ragemanes-flipper
	WANTED: Ragemane's Flipper
*/

DELETE FROM `report_quest` WHERE `id`=12857;
INSERT  INTO `report_quest`(`id`, `status`, `count`, `comment`) VALUES
(12857, 0, 1, "WANTED: Ragemane's Flipper");
