-- fix waypoint https://es.wowhead.com/npc=19219/mecano-lord-capacitus reporte trello
UPDATE `creature` SET `spawndist`='25', `MovementType`='1' WHERE  `id`=19219;