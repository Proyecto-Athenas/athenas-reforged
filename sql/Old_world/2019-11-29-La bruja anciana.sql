-- entregar mision https://es.wowhead.com/quest=28140/la-bruja-anciana#english-comments
DELETE FROM `creature_involvedrelation` WHERE `id`=47580 AND `quest`=28140;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (47580, 28140);

DELETE FROM `creature_questrelation` WHERE `id`=47580 AND `quest`=28142;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (47580, 28142);
