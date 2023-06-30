-- fix requisitos https://www.wowhead.com/quest=12529/the-ape-hunters-slave
DELETE FROM `creature` WHERE `guid`=15678932;
UPDATE `quest_template` SET  `RequiredRaces`='0' WHERE id IN (12529);