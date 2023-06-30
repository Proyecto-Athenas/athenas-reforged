-- https://trello.com/c/whQWkF0p/208-misi%C3%B3n-llegada-a-terrallende-hermes
-- algo cambio las banderas de estado del NPC 18930
-- npc_flag incorrecto   = 8192
-- npc_flag correcto = 8195(este incluye un menu pero da problemas) - 8194 (este funciona muy bien pero no da la opción del menú)

UPDATE `creature_template` SET `npcflag` = 8194 WHERE `entry` = 18930;


