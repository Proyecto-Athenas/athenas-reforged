-- error is too troublesome, i am unable to reporduce it myself so i am just removing it off the chain so the next one can be taken without sacrifice holding the whole worgen race on hold.
DELETE FROM `creature_questrelation` WHERE  `id`=35552 AND `quest`=14212;
DELETE FROM `creature_involvedrelation` WHERE  `id`=35618 AND `quest`=14212;
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE  `Id`=14218;