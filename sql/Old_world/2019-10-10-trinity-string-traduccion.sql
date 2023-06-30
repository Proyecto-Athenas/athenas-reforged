-- traduccion del reinicio e informacion del servidor
UPDATE `trinity_string` SET `content_loc6` = "Conexiones activas: %u (MAX: %u) 
Conexiones en cola: %u (MAX: %u)", 
`content_loc7` = "Conexiones activas: %u (MAX: %u) 
Conexiones en cola: %u (MAX: %u)" WHERE `entry` = 12;

UPDATE `trinity_string` SET `content_loc6` = "Tiempo de actividad del servidor: %s", 
`content_loc7` = "Tiempo de actividad del servidor: %s" WHERE `entry` = 13;

UPDATE `trinity_string` SET `content_loc6` = "Jugadores en línea: %u (max: %u)", 
`content_loc7` = "Jugadores en línea: %u (max: %u)" WHERE `entry` = 60;

UPDATE `trinity_string` SET `content_loc6` = "
Diferencia de tiempo de actualización: %u.", 
`content_loc7` = "
Diferencia de tiempo de actualización: %u." WHERE `entry` = 19;