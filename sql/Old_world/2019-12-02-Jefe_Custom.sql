DELETE FROM `creature_loot_template` WHERE`entry`= 100006;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) 
VALUES
('100006','13582','60','1','3','3','5'),
('100006','23162','100','1','0','1','1'),
('100006','59224','60','1','2','1','1'),
('100006','59326','60','1','2','1','1'),
('100006','59332','60','1','2','1','1'),
('100006','59492','60','1','2','1','1'),
('100006','63679','60','1','2','1','1'),
('100006','68926','40','1','2','1','1'),
('100006','68927','20','1','1','1','1'),
('100006','68994','40','1','2','1','1'),
('100006','68995','40','1','2','1','1'),
('100006','69224','10','1','2','1','1'),
('100006','71352','25','1','2','1','1'),
('100006','71665','40','1','1','1','1'),
('100006','77188','5','1','1','1','1'),
('100006','77189','5','1','1','1','1'),
('100006','77190','5','1','1','1','1'),
('100006','77191','5','1','1','1','1'),
('100006','77193','5','1','1','1','1'),
('100006','77194','5','1','1','1','1'),
('100006','77196','5','1','1','1','1'),
('100006','78359','5','1','1','1','1');

DELETE FROM `creature_template` WHERE entry IN (100006, 100005, 100004);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
VALUES
('100006','0','0','0','0','0','20533','0','0','0','Maximus','Twilight General',NULL,'0','88','88','3','0','16','16','0','1','1.14286','1','1','0.8','4','15000','17500','0','55125','10','2500','0','2','0','0','0','19','0','0','0','0','0','0','0','3','4','0','100006','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3875000','6995000',NULL,NULL,'','2','3','1','1800','20','1','5','0','0','0','0','0','0','0','0','1','4','2147483647','131072','boss_maximus','15595'),
('100004','0','0','0','0','0','37456','0','0','0','Twilight Portal','',NULL,'0','1','1','0','0','25','25','0','1','1.14286','1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','42','0','0','0','0','0','0','0','9','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'','0','3','1','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_twilight_portal','15595'),
('100005','0','0','0','0','0','17607','0','0','0','Ancient Wisp','',NULL,'0','88','88','0','0','25','25','0','1','1.14286','1','1','0.8','3','0','0','0','0','0','2500','0','1','0','0','0','19','0','0','0','0','0','0','0','4','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','5750000','6250000',NULL,NULL,'','0','3','1','750','1','1','1','0','0','0','0','0','0','0','0','1','0','2147483647','131072','npc_ancient_wisp','15595');


DELETE FROM `creature_equip_template` WHERE entry = 4;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES('4','47516','0','0');
