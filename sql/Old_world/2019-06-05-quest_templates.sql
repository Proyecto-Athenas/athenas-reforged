-- # Massacre At Light's Point
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 12701;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 12701;
UPDATE `quest_template` SET `RequiredItemCount1` = 0 WHERE `Id` = 12701;
UPDATE `quest_template` SET `RequiredItemId1` = 0 WHERE `Id` = 12701;

-- # An End To All Things...
UPDATE `quest_template` SET `Objectives` = 'Just give it away', `RequiredNpcOrGo1` = 0, `RequiredNpcOrGo2` = 0, `RequiredNpcOrGoCount1` = 0, `RequiredNpcOrGoCount2` = 0 WHERE `Id` = 12779;
UPDATE `quest_template` SET `Flags` = Flags | 0x00010000 WHERE `Id` = 12779;
UPDATE `quest_template` SET `RequiredItemCount1` = 0 WHERE `Id` = 12779;
UPDATE `quest_template` SET `RequiredItemId1` = 0 WHERE `Id` = 12779;
