-- Cadena de misiones de la Tribu Corazón Frenético
/*
select `Id`, `RequiredRaces` from `quest_template` where Id in
(12531,12536,12528,12530,12741,12732,12529,12537,12539,12534,12702,12703,12759,
12758,12538,12734,12533,12532,12760,12535,12540,12570,12571,12573,12572,12574,
12576,12577,12578,12580,12579);
*/

-- la columna ExclusiveGroup estaba en 946 bloqueando las misiones para algunas razas del juego

UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12530';
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12531';
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12534';
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12535';
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12536';
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12539';
UPDATE `quest_template` SET `RequiredRaces` = '0' WHERE `Id` = '12540';
