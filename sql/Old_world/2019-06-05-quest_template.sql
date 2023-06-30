-- # Grand Theft Palomino temp
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0, `ObjectiveText1` = '' WHERE `Id` = 12680;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 12680;