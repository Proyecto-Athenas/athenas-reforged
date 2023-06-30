/*
		ID Criterio	ID logros	Nombres						Descripción
		
		306		397		entra en la arena				Gana una arena
		307		398		despiadadamente engredado			Gana 100 encuentros de arena
		1829		875		vengativamente entregado			Gana 200 encuentros de arena
		1830		876		brutalmente entregado				Gana 200 encuentros de arena
		608		699		ganador mundial					Gana un encuentro de arena puntuado en todas las arenas
		609		Se repite
		610		Se repite
		5809		Se repite
		5810		Se repite
		329		399		entre tu yo: 1550				2 vs 2
		332		400		entre tu yo: 1750				2 vs 2
		335		401		entre tu yo: 2000				2 vs 2
		3381		1159		entre tu yo: 2200				2 vs 2
		330		402		tres son multitud: 1550				3 vs 3
		333		403		tres son multitud: 1750				3 vs 3
		336		405		tres son multitud: 2000				3 vs 3
		3382		1160		tres son multitud: 2200				3 vs 3
		15001		5266		tres son multitud: 2400				3 vs 3
		15002		5267		tres son multitud: 2700				3 vs 3
		331		406		choca esos cinco: 1550				5 vs 5
		334		407		choca esos cinco: 1750				5 vs 5
		337		404		choca esos cinco: 2000				5 vs 5
		3383		1161		choca esos cinco: 2200				5 vs 5
		2408		408		una buena racha					gana diez encuentros puntuados seguidos
		3384		1162		una racha mejor					gana diez encuentros puntuados seguidos con un indice personal superior a 1800
		3822		409 		el último hombre en pie				se el único superviviente al final de un encuentro puntuado de 5 vs 5
		16309		5542		1000 puntos de conquista			gana 1000 puntos de conquista
		16310		5541		5000 puntos de conquista			gana 5000 puntos de conquista
		16311		5540		25000 puntos de conquista			gana 25000 puntos de conquista
		16312		5539		50000 puntos de conquista			gana 50000 puntos de conquista
*/

-- remover logros de todos los personajes
DELETE FROM `character_achievement` WHERE `achievement` IN (397, 398, 875, 876, 699, 399, 400, 401, 1159, 402, 403, 405, 1160, 5266, 5267, 406, 407, 404, 1161, 408, 1162, 409, 5542, 5541, 5540, 5539);
-- remover progresos de logros de arena de todos los personajes
DELETE FROM `character_achievement_progress` WHERE criteria IN (306, 307, 1829, 1830, 608, 609, 610, 5809, 5810, 329, 332, 335, 3381, 330, 333, 336, 3382, 15001, 15002, 331, 334, 337, 3383, 2408, 3384, 3822, 16309, 16310, 16311, 16312);

-- eliminar equipos de arenas
/*DB Limpiar:
w.arena_log
c.character_arena_stats
c.arena_team
c.arena_team_member
*/
-- DROP TABLE IF EXISTS `character_pvp_stats`; -- ejecutar solo una vez

DELETE FROM `character_arena_stats`;
DELETE FROM `arena_team`;
DELETE FROM `arena_team_member`;
