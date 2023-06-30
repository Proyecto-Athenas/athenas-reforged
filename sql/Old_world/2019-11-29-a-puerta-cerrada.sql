-- modificada la faccion del npc 36196 para entregar la mision 
-- https://es.wowhead.com/quest=14330/a-puerta-cerrada
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE  `entry`=36196;