-- El NPC invocado Guardián ahogado y Guardián de filacterias no debería dar XP
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` IN (26225, 26224);

