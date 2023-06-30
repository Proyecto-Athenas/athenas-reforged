 -- corrige error de la entrada 1003011 creatura custom
UPDATE `creature_template` SET  `unit_class`='1' WHERE entry IN (1003011);

-- corrige error de la entrada 1003001 creatura custom
UPDATE `creature_template` SET  `unit_class`='1' WHERE entry IN (1003001);

-- corrige error de la entrada 1003068 creatura custom
UPDATE `creature_template` SET  `unit_class`='1' WHERE entry IN (1003068);

-- corrige error de la entrada creature_template_addon 49580
DELETE FROM `creature_template_addon` WHERE `entry`=49580;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (49580, 0, 0, 0, 0, 0, '74426 ');

-- corrige 4 errores de nivel de la creatura y 4 de la faccion ya que tenian datos incorrectos
UPDATE `creature_template` SET  `minlevel`='1', `maxlevel`='1' WHERE entry IN (44622,44623,44624,44625); -- tipo de error Missing base stats for creature class 1 level 120
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE entry IN (44622,44623,44624,44625); -- tipo de error el npc esta invisible y te ataca sin razon alguna

-- corrige error de una creatura con equipment_id que no deberia tener
UPDATE `creature` SET  `equipment_id`='0' WHERE id IN (100012);

-- esto corrige error de spawm de una creatura que no existe
DELETE FROM `creature` WHERE `id`=1005004;

-- corrige la creatura 41270 con phaseMask 0
UPDATE `creature` SET  `phaseMask`='1' WHERE guid IN (904328);

-- esto corrige error de la creatura 34996 con equipment_id 546 
UPDATE `creature` SET  `equipment_id`='0' WHERE id IN (34996);

-- esto corrige error de la creatura 1006003 custom 
DELETE FROM `creature` WHERE `id`=1006003;

-- corrige error de MovementType para las creaturas guid 15679872 15679871 
UPDATE `creature` SET  `MovementType`='0' WHERE guid IN (15679872,15679871);

-- esto elimina datos de la databla creature_addon ya que estos guid no existen en la tabla creature
DELETE FROM `creature_addon` WHERE guid IN (61382,15523841,15523842,15523843,15523844,15523845,15523846,15523847,15523848,15523849,15523850, 15523851);

-- corrige un error de valores de aura no validos 
DELETE FROM `creature_addon` WHERE `guid`=179066;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (179066, 1790660, 0, 0, 0, 0, NULL);

-- corrige el error Quest 7061 has `RewardItemId1` = 0 but `RewardItemIdCount1` = 1.
UPDATE `quest_template` SET `RewardItemCount1`=0 WHERE id = 7061; 

-- corrige el error de la quest Quest 13886 has `RequiredNpcOrGo1` = 34333 but `RequiredNpcOrGoCount1` = 0, quest can't be done.
UPDATE `quest_template` SET `RequiredNpcOrGoCount1`='1' WHERE id IN (13886); 

-- mision custom eliminada 300014
DELETE FROM `quest_template` WHERE `Id`=300014;