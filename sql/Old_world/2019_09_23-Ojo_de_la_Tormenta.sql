-- borra el registro de la Tabla DISABLES
DELETE FROM `disables` WHERE `sourceType` = 3 AND `entry` = 7;
-- insert into `disables` values('3', '7', '0', '', '', 'Eye of The Storm (EOE) - Battleground');-- desactivar ojo de la tormenta

-- borrar el ID de duplicidad de la BG Ojo de la tormenta para que el sistema pueda encontrar y crear la instancia
DELETE FROM `battleground_template` WHERE `id` = 656;
-- insert  into `battleground_template`(`id`,`MinPlayersPerTeam`,`MaxPlayersPerTeam`,`MinLvl`,`MaxLvl`,`AllianceStartLoc`,`AllianceStartO`,`HordeStartLoc`,`HordeStartO`,`StartMaxDist`,`Weight`,`ScriptName`,`Comment`) 
-- values
-- (656,1,10,85,85,1103,3.03123,1104,0.055761,75,3,'','Eye of The Storm'); -- no se porque quisieron hacer otra instancia de esta BG, espero alguién me lo explique

-- Traducción de la BG

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza gana!", `content_loc7` = "¡La Alianza gana!" WHERE `entry` = 600;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda gana!", `content_loc7` = "¡La Horda gana!" WHERE `entry` = 601;

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza ha reunido $ 1400W recursos y está cerca de la victoria!", 
`content_loc7` = "¡La Alianza ha reunido $ 1400W recursos y está cerca de la victoria!" WHERE `entry` = 664;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda ha reunido $ 1400W recursos y está cerca de la victoria!", 
`content_loc7` = "¡La Horda ha reunido $ 1400W recursos y está cerca de la victoria!" WHERE `entry` = 665;

UPDATE `trinity_string` SET `content_loc6` = "La Batalla por el Ojo de la Tormenta inicia en 1 minuto.", 
`content_loc7` = "La Batalla por el Ojo de la Tormenta comienza en 1 minuto." WHERE `entry` = 636;

UPDATE `trinity_string` SET `content_loc6` = "La Batalla por el Ojo de la Tormenta inicia en 30 segundos.", 
`content_loc7` = "La Batalla por el Ojo de la Tormenta comienza en 30 segundos." WHERE `entry` = 637;

UPDATE `trinity_string` SET `content_loc6` = "La Batalla por el Ojo de la Tormenta inicia en 2 minutos.", 
`content_loc7` = "La Batalla por el Ojo de la Tormenta comienza en 2 minutos." WHERE `entry` = 755;

UPDATE `trinity_string` SET `content_loc6` = "¡La Batalla por el Ojo de la Tormenta ha comenzado!", 
`content_loc7` = "¡La Batalla por el Ojo de la Tormenta ha comenzado!" WHERE `entry` = 638;

UPDATE `trinity_string` SET `content_loc6` = "%s ha capturado la bandera!", `content_loc7` = "%s ha capturado la bandera!" WHERE `entry` = 683;

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza ha capturado la bandera!", `content_loc7` = "¡La Alianza ha capturado la bandera!" WHERE `entry` = 684;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda ha capturado la bandera!", `content_loc7` = "¡La Horda ha capturado la bandera!" WHERE `entry` = 685;

UPDATE `trinity_string` SET `content_loc6` = "¡La bandera ha sido arrojada!", `content_loc7` = "¡La bandera ha sido arrojada!" WHERE `entry` = 686; -- revisar la traducción

UPDATE `trinity_string` SET `content_loc6` = "La bandera ha sido reiniciada", `content_loc7` = "La bandera ha sido reiniciada" WHERE `entry` = 687;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha tomado el control de la Torre de los Magos", 
`content_loc7` = "La Alianza ha tomado el control de La Torre de los Magos" WHERE `entry` = 667;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha tomado el control de la Torre de los Magos", 
`content_loc7` = "La Horda ha tomado el control de La Torre de los Magos" WHERE `entry` = 668;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha tomado el control de las Ruinas Draenei", 
`content_loc7` = "La Alianza ha tomado el control de las Ruinas Draenei" WHERE `entry` = 669;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha tomado el control de las Ruinas Draenei", 
`content_loc7` = "La Horda ha tomado el control de las Ruinas Draenei" WHERE `entry` = 670;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha tomado el control de la Torre de los Elfos de Sangre", 
`content_loc7` = "La Alianza ha tomado el control de la Torre de los Elfos de Sangre" WHERE `entry` = 671;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha tomado el control de la Torre de los Elfos de Sangre", 
`content_loc7` = "La Horda ha tomado el control de la Torre de los Elfos de Sangre" WHERE `entry` = 672;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha tomado el control de las Ruinas del Atracador Vil", 
`content_loc7` = "La Alianza ha tomado el control de las Ruinas del Atracador Vil" WHERE `entry` = 673;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha tomado el control de las Ruinas del Atracador Vil", 
`content_loc7` = "La Horda ha tomado el control de las Ruinas del Atracador Vil" WHERE `entry` = 674;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha perdido el control de la Torre de los Magos", 
`content_loc7` = "La Alianza ha perdido el control de La Torre de los Magos" WHERE `entry` = 675;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha perdido el control de la Torre de los Magos", 
`content_loc7` = "La Horda ha perdido el control de La Torre de los Magos" WHERE `entry` = 676;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha perdido el control de las Ruinas Draenei", 
`content_loc7` = "La Alianza ha perdido el control de las Ruinas Draenei" WHERE `entry` = 677;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha perdido el control de las Ruinas Draenei", 
`content_loc7` = "La Horda ha perdido el control de las Ruinas Draenei" WHERE `entry` = 678;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha perdido el control de la Torre de los Elfos de Sangre", 
`content_loc7` = "La Alianza ha perdido el control de la Torre de los Elfos de Sangre" WHERE `entry` = 691;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha perdido el control de la Torre de los Elfos de Sangre", 
`content_loc7` = "La Horda ha perdido el control de la Torre de los Elfos de Sangre" WHERE `entry` = 680;

UPDATE `trinity_string` SET `content_loc6` = "La Alianza ha perdido el control de las Ruinas del Atracador Vil", 
`content_loc7` = "La Alianza ha perdido el control de las Ruinas del Atracador Vil" WHERE `entry` = 681;

UPDATE `trinity_string` SET `content_loc6` = "La Horda ha perdido el control de las Ruinas del Atracador Vil", 
`content_loc7` = "La Horda ha perdido el control de las Ruinas del Atracador Vil" WHERE `entry` = 682;


-- traducción del anuncio del servidor
UPDATE `trinity_string` SET `content_loc6` = "[ATHENAS-WOW] %s", 
`content_loc7` = "[ATHENAS-WOW] %s" WHERE `entry` = 3;
