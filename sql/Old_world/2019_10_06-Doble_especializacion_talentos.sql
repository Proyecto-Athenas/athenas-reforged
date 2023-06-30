/*
* 
* gossip_menu_option #10371 es el ID del menú para aprender la doble especialización de talentos
* SELECT `menu_id` FROM `gossip_menu_option` WHERE `action_menu_id` = 10371; -- 300 resultados(426 npc bug en total en todo el mundo)
* 
* busqueda de las condiciones mal colocadas en las DB_world
* select * from `conditions` where `SourceTypeOrReferenceId` = 15 and `SourceEntry` = 2 and `ConditionValue1` = 40 AND
* `SourceGroup` in (SELECT `menu_id` FROM `gossip_menu_option` WHERE `action_menu_id` = 10371); -- 225 resultados
*/
-- cambiar la condición para aprender la doble especialización de talentos del nivel 40 al nivel 30 como debe de ser
UPDATE `conditions` SET `ConditionValue1` = 30 
WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 2 AND `SourceId` = 0 AND `ElseGroup` = 0 
AND `ConditionTypeOrReference` = 27 AND `ConditionTarget` = 0 AND `ConditionValue2` = 3 AND
`SourceGroup` IN (SELECT `menu_id` FROM `gossip_menu_option` WHERE `action_menu_id` = 10371); 
