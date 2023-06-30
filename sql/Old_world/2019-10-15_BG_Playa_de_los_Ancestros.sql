/*
insert into `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) 
values('3','9','0','','','Strand of the Ancients (SOTA) - Battleground');
*/
DELETE FROM `disables` WHERE `sourceType` = '3' AND `entry` = '9';


-- The battle for Strand of the Ancients begins in 2 minutes.
-- The battle for Strand of the Ancients begins in 1 minute.
-- The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!.
-- Let the battle for Strand of the Ancients begin!
-- The Gate of the Green Emerald was destroyed!

UPDATE `trinity_string` SET `content_loc6` = "La Batalla por la Playa de los Ancestros inicia en 2 minutos.", 
`content_loc7` = "La Batalla por la Playa de los Ancestros inicia en 2 minuto." WHERE `entry` = 10056;

UPDATE `trinity_string` SET `content_loc6` = "La Batalla por la Playa de los Ancestros inicia en 1 minuto.", 
`content_loc7` = "La Batalla por la Playa de los Ancestros inicia en 1 minuto." WHERE `entry` = 10057;

UPDATE `trinity_string` SET `content_loc6` = "La Batalla por la Playa de los Ancestros inicia en 30 segundos.", 
`content_loc7` = "La Batalla por la Playa de los Ancestros inicia en 30 segundos." WHERE `entry` = 10058;

UPDATE `trinity_string` SET `content_loc6` = "¡La Batalla por la Playa de los Ancestros ha comenzado!", 
`content_loc7` = "¡La Batalla por la Playa de los Ancestros ha comenzado!" WHERE `entry` = 10059;

UPDATE `trinity_string` SET `content_loc6` = "¡La %s está bajo ataque!", `content_loc7` = "¡La %s está bajo ataque!" WHERE `entry` = 10060;

UPDATE `trinity_string` SET `content_loc6` = "¡La %s fue destruida!", `content_loc7` = "¡La %s fue destruida!" WHERE `entry` = 10061;

UPDATE `trinity_string` SET `content_loc6` = "¡Ronda 1 - terminada!", `content_loc7` = "¡Ronda 1 - terminada!" WHERE `entry` = 10062;

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza a capturado en portal del Titan!",
`content_loc7` = "¡La Alianza a capturado en portal del Titan!" WHERE `entry` = 10063;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda a capturado en portal del Titan!",
`content_loc7` = "¡La Horda a capturado en portal del Titan!" WHERE `entry` = 10064;

UPDATE `trinity_string` SET `content_loc6` = "¡La ronda 2 de la Batalla por la Playa de los Ancestros inicia en 1 minuto!",
`content_loc7` = "¡La ronda 2 de la Batalla por la Playa de los Ancestros inicia en 1 minuto!" WHERE `entry` = 10065;

UPDATE `trinity_string` SET `content_loc6` = "¡La ronda 2 inicia en 30 segundos!",
`content_loc7` = "¡La ronda 2 inicia en 30 segundos!" WHERE `entry` = 10066;

UPDATE `trinity_string` SET `content_loc6` = "¡La cámara a sido destruida! La reliquia de los Titanes es vulnerable.",
`content_loc7` = "¡La cámara a sido destruida! La reliquia de los Titanes es vulnerable." WHERE `entry` = 10067;

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza capturó el Cementerio del Sur!",
`content_loc7` = "¡La Alianza capturó el Cementerio del Sur!" WHERE `entry` = 10068;

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza capturó el Cementerio del Oeste!",
`content_loc7` = "¡La Alianza capturó el Cementerio del Oeste!" WHERE `entry` = 10069;

UPDATE `trinity_string` SET `content_loc6` = "¡La Alianza capturó el Cementerio del Este!",
`content_loc7` = "¡La Alianza capturó el Cementerio del Este!" WHERE `entry` = 10070;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda capturó el Cementerio del Sur!",
`content_loc7` = "¡La Horda capturó el Cementerio del Sur!" WHERE `entry` = 10071;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda capturó el Cementerio del Oeste!",
`content_loc7` = "¡La Horda capturó el Cementerio del Oeste!" WHERE `entry` = 10072;

UPDATE `trinity_string` SET `content_loc6` = "¡La Horda capturó el Cementerio del Este!",
`content_loc7` = "¡La Horda capturó el Cementerio del Este!" WHERE `entry` = 10073;
