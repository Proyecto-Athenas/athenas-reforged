
/*
	https://www.wowhead.com/spell=52264/deliver-stolen-horse
	Deliver Stolen Horse
	https://www.wowhead.com/npc=28653/salanar-the-horseman
	Salanar the Horseman
*/

DELETE FROM `conditions` WHERE `SourceEntry`=52264;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 52264, 0, 0, 31, 0, 3, 28653, 0, 0, 0, 0, "", "Target Salanar the Horseman");
