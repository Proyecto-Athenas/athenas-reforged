
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9821; 
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) 
VALUES('9821','0','0','I\'d like to stable my pet here.','30181','14','4194304','0','0','0','0','','0'),
('9821','1','1','I\'m looking for a lost companion.','56613','3','128','0','0','0','0','','0');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 14 AND `SourceGroup` = 9821;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 9821, 13584, 0, 0, 15, 0, 1531, 0, 0, 0, 0, 0, '', 'Show gossip text if player is not a hunter'), 
(14, 9821, 13557, 0, 0, 15, 0, 4, 0, 0, 0, 0, 0,  '', 'Show gossip text if player is a hunter');

DELETE FROM `gossip_menu` WHERE `entry` = 9821 AND `text_id` = 13557;
DELETE FROM `gossip_menu` WHERE `entry` = 9821 AND `text_id` = 13584;

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (9821, 13557), (9821, 13584); 
-- buscar todos los NPC que no tiene un menú asignado
-- SELECT * FROM `creature_template` WHERE `subname` = 'Stable Master' AND `gossip_menu_id` = 0; 
-- asignar un menú a los NPC que no lo tienen
UPDATE `creature_template` SET `gossip_menu_id` = 9821 WHERE `subname` = 'Stable Master' AND `gossip_menu_id` = 0;

/*
modificando los npcflag para reparar las posibles interacciones de los NPC
Gossip Menú	= 1
Quest 		= 2
Vendor		= 128
Stable MASTER 	= 4194304 
*/
UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 9821;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 2 | 1 WHERE `entry` = 30008;

UPDATE `creature_template`SET `npcflag` = 128 | 2 | 1 WHERE `entry` = 9988;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 |128 | 2 | 1 WHERE `entry` = 45789;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 2 | 1 WHERE `entry` = 26944;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 26377;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 27040;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 26504;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 26044;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 23733;

UPDATE `creature_template`SET `npcflag` = 128 | 2 | 1 WHERE `entry` = 21336;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 19019;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 16665;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 128 | 2 | 1 WHERE `gossip_menu_id` = 15722;

UPDATE `creature_template`SET `npcflag` = 128 | 2 | 1 WHERE `entry` = 14741;

UPDATE `creature_template`SET `npcflag` = npcflag | 4194304 | 2 | 1 WHERE `entry` = 13617;

