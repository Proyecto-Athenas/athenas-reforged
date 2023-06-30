-- desactivando misión que elimina la shadowmoure
UPDATE `quest_template` SET `Method` = '1' WHERE `Id` = '24912'; 

-- Eliminando del npc la opción de entregar y completar la misión
DELETE FROM `creature_involvedrelation` WHERE `id` = '37120' AND `quest` = '24912'; 
DELETE FROM `creature_questrelation` WHERE `id` = '37120' AND `quest` = '24912'; 
