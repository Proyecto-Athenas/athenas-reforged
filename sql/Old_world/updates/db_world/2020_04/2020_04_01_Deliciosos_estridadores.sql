-- finaliza la mision 28745
DELETE FROM `creature_involvedrelation` WHERE `id`=49537 AND `quest`=28745;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (49537, 28745);
