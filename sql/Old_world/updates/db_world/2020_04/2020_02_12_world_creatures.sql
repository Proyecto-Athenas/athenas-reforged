
/*
	Invisible Stalker (Floating Only)
	https://cata-twinhead.twinstar.cz/?npc=27047
	Estaba dentro de la tienda, girando en círculos.
	Estoy seguro de que debe cumplir con alguna misión, pero mientras la encontremos.
	Sería interesante eliminarlo. Dado que no es de mayor importancia por el momento.
*/
DELETE FROM `creature` WHERE `guid`=329508 AND `id`=27047;

/*
	Pentarus' Portal to Sholazar Basin
	https://cata-twinhead.twinstar.cz/?object=190488
	Portal flotante en la ruta de vuelo de dalaran.
	Si corresponde a alguna misión, no debe estar allí.
	Debe ser invocado por algun npc / evento.
*/
DELETE FROM `gameobject` WHERE `guid`=99861 AND `id`=190488;

/*
	Dalaran Visitor
	https://cata-twinhead.twinstar.cz/?npc=32596
	Esos npc son sumoneados por un script.
	No deben estar invocados flotando sin rumbo.
*/
DELETE FROM `creature` WHERE `guid` IN (326276, 326253) AND `id`=32596;

/*
	Armored Snowy Gryphon
	https://cata-twinhead.twinstar.cz/?npc=32335
	Es el glifo que se encuentra al lado del vendedor de dalaran.
	Se encontraba en la fase 128. Y debe ser visible por los jugadores.
*/
UPDATE `creature` SET `phaseMask`=1 WHERE `id`=32335;

/*
	Wooly Mammoth
	https://cata-twinhead.twinstar.cz/?npc=31851
	Mismo problema del glifo anterior. Tenía fase 128.
*/

UPDATE `creature` SET `phaseMask`=1 WHERE `id`=31851;
