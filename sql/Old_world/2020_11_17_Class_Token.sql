-- nuevo token 
delete from `item_template` where `entry` = '100606';
insert into `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) 
values('100606','13','0','-1','Champion Token','37780','4','1','0','1','1','1','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','1','This token can only be purchased from the Meraxes World Champion and entitles you to compete for the Class Champion Title.','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','15595');
-- traduccion del token
delete from `locales_item` where `entry` = '100606';
insert into `locales_item` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `description_loc1`, `description_loc2`, `description_loc3`, `description_loc4`, `description_loc5`, `description_loc6`, `description_loc7`, `description_loc8`) 
values('100606','Champion Token','','','','','Ficha del Campeón','Ficha del Campeón','',NULL,NULL,NULL,NULL,NULL,'Está ficha solo se puede comprar en el Campeón del Mundo Meraxes y te da derecho a competir por el Título de campeón de clase.','Está ficha solo se puede comprar en el Campeón del Mundo Meraxes y te da derecho a competir por el Título de campeón de clase.','');

-- textos del npc
delete from `npc_text` where `ID` in ('2000004','2000005');
insert into `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) 
values('2000004','Greetings little $c, I am Meraxes the World Champion, the champion of all known worlds!!!$B$BI see from your posture and equipment that you have skills, if you are willing I am looking for the best $c in this SMALL WORLD, I can sell you a token that will allow you to enter the tournament of course as long as you have the necessary money...$B$B<Meraxes looks at you and laughs uncontrollably ...>','Greetings little $c, I am Meraxes the World Champion, the champion of all known worlds!!!$B$BI see from your posture and equipment that you have skills, if you are willing I am looking for the best $c in this SMALL WORLD, I can sell you a token that will allow you to enter the tournament of course as long as you have the necessary money...$B$B<Meraxes looks at you and laughs uncontrollably ...>','0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0','1'),
('2000005','Greetings little $c, I\'m not interested in someone like you.','Greetings little $c, I\'m not interested in someone like you.','0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0',NULL,NULL,'0','0','0','0','0','0','0','0','0','1');
-- traduccion del texto del npc
delete from  `locales_npc_text` where `ID` in ('2000004','2000005');
insert into `locales_npc_text` (`ID`, `Text0_0_loc1`, `Text0_0_loc2`, `Text0_0_loc3`, `Text0_0_loc4`, `Text0_0_loc5`, `Text0_0_loc6`, `Text0_0_loc7`, `Text0_0_loc8`, `Text0_1_loc1`, `Text0_1_loc2`, `Text0_1_loc3`, `Text0_1_loc4`, `Text0_1_loc5`, `Text0_1_loc6`, `Text0_1_loc7`, `Text0_1_loc8`, `Text1_0_loc1`, `Text1_0_loc2`, `Text1_0_loc3`, `Text1_0_loc4`, `Text1_0_loc5`, `Text1_0_loc6`, `Text1_0_loc7`, `Text1_0_loc8`, `Text1_1_loc1`, `Text1_1_loc2`, `Text1_1_loc3`, `Text1_1_loc4`, `Text1_1_loc5`, `Text1_1_loc6`, `Text1_1_loc7`, `Text1_1_loc8`, `Text2_0_loc1`, `Text2_0_loc2`, `Text2_0_loc3`, `Text2_0_loc4`, `Text2_0_loc5`, `Text2_0_loc6`, `Text2_0_loc7`, `Text2_0_loc8`, `Text2_1_loc1`, `Text2_1_loc2`, `Text2_1_loc3`, `Text2_1_loc4`, `Text2_1_loc5`, `Text2_1_loc6`, `Text2_1_loc7`, `Text2_1_loc8`, `Text3_0_loc1`, `Text3_0_loc2`, `Text3_0_loc3`, `Text3_0_loc4`, `Text3_0_loc5`, `Text3_0_loc6`, `Text3_0_loc7`, `Text3_0_loc8`, `Text3_1_loc1`, `Text3_1_loc2`, `Text3_1_loc3`, `Text3_1_loc4`, `Text3_1_loc5`, `Text3_1_loc6`, `Text3_1_loc7`, `Text3_1_loc8`, `Text4_0_loc1`, `Text4_0_loc2`, `Text4_0_loc3`, `Text4_0_loc4`, `Text4_0_loc5`, `Text4_0_loc6`, `Text4_0_loc7`, `Text4_0_loc8`, `Text4_1_loc1`, `Text4_1_loc2`, `Text4_1_loc3`, `Text4_1_loc4`, `Text4_1_loc5`, `Text4_1_loc6`, `Text4_1_loc7`, `Text4_1_loc8`, `Text5_0_loc1`, `Text5_0_loc2`, `Text5_0_loc3`, `Text5_0_loc4`, `Text5_0_loc5`, `Text5_0_loc6`, `Text5_0_loc7`, `Text5_0_loc8`, `Text5_1_loc1`, `Text5_1_loc2`, `Text5_1_loc3`, `Text5_1_loc4`, `Text5_1_loc5`, `Text5_1_loc6`, `Text5_1_loc7`, `Text5_1_loc8`, `Text6_0_loc1`, `Text6_0_loc2`, `Text6_0_loc3`, `Text6_0_loc4`, `Text6_0_loc5`, `Text6_0_loc6`, `Text6_0_loc7`, `Text6_0_loc8`, `Text6_1_loc1`, `Text6_1_loc2`, `Text6_1_loc3`, `Text6_1_loc4`, `Text6_1_loc5`, `Text6_1_loc6`, `Text6_1_loc7`, `Text6_1_loc8`, `Text7_0_loc1`, `Text7_0_loc2`, `Text7_0_loc3`, `Text7_0_loc4`, `Text7_0_loc5`, `Text7_0_loc6`, `Text7_0_loc7`, `Text7_0_loc8`, `Text7_1_loc1`, `Text7_1_loc2`, `Text7_1_loc3`, `Text7_1_loc4`, `Text7_1_loc5`, `Text7_1_loc6`, `Text7_1_loc7`, `Text7_1_loc8`) 
values('2000004','Greetings little $c, I am Meraxes the World Champion, the champion of all known worlds!!!$B$BI see from your posture and equipment that you have skills, if you are willing I am looking for the best $c in this SMALL WORLD, I can sell you a token that will allow you to enter the tournament of course as long as you have the necessary money...$B$B<Meraxes looks at you and laughs uncontrollably ...>',NULL,NULL,NULL,NULL,'Saludos pequeño $c, soy Meraxes el Campeón Mundial, el campeón de todos los mundos conocidos!!!$B$BVeo por tu postura y equipamiento que tienes aptitudes, si estás dispuesto estoy buscando al mejor $c de este PEQUEÑO MUNDO, puedo venderte una ficha que te permitirá ingresar al torneo claro siempre que tengas el dinero necesario...$B$B<Meraxes te mira y se ríe descontrolada mente ... >','Saludos pequeño $c, soy Meraxes el Campeón Mundial, el campeón de todos los mundos conocidos!!!$B$BVeo por tu postura y equipamiento que tienes aptitudes, si estás dispuesto estoy buscando al mejor $c de este PEQUEÑO MUNDO, puedo venderte una ficha que te permitirá ingresar al torneo claro siempre que tengas el dinero necesario...$B$B<Meraxes te mira y se ríe descontrolada mente ... >',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2000005','Greetings little $c, I\\\'m not interested in someone like you.\',\'Greetings little $c, I\\\'m not interested in someone like you.',NULL,NULL,NULL,NULL,'Saludos pequeño $c, no estoy interesado en alguien como tú.','Saludos pequeño $c, no estoy interesado en alguien como tú.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- nuevo npc, venta del nuevo token
delete from `creature_template` where `entry` = '2000004';
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) 
values('2000004','0','0','0','0','0','22953','0','0','0','Gran Gladiador Meraxes','Champion World','','0','85','85','3','0','35','35','1','1','1.14286','1','1.14286','1.3','4','280.8','397.2','0','343','1','2000','2000','2','256','2048','0','0','0','0','0','0','237.6','354','50','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'','0','1','1','100','100','1','1','0','0','0','0','0','0','0','0','1','49573','0','0','class_coins','12340');
-- efectos del npc
delete from `creature_template_addon` where `entry` = '2000004';
insert into `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) values('2000004','0','0','0','1','23','51193 71986 72523');

-- menú del NPC
delete from `gossip_menu_option` where `menu_id` = '51003';
insert into `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) values
('51003','0','0','50 thousand gold for 10 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','1','0','10 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','2','0','4 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','3','0','2 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','4','0','10 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','5','0','4 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','6','0','2 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','7','0','20 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','8','0','8 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','9','0','4 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','10','0','30 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','11','0','12 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','12','0','6 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','13','0','40 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','14','0','16 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','15','0','8 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','16','0','50 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','17','0','20 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','18','0','10 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','19','0','60 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','20','0','24 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','21','0','12 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','22','0','70 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','23','0','28 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','24','0','14 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','25','0','80 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','26','0','32 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','27','0','16 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','28','0','90 thousand gold for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','29','0','36 thousand honor points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','30','0','18 thousand conquest points for 1 token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','31','7','Bye',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','32','0','I want to buy a token',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','33','9','Face my anger.',NULL,'1','0','0','0','0','0',NULL,NULL),
('51003','34','7','You already have all the coins that I am willing to sell you!',NULL,'1','0','0','0','0','0',NULL,NULL);

-- traducción del menu
delete from `locales_gossip_menu_option` where `menu_id` = '51003';
insert into `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc6`, `option_text_loc7`) values
('51003','0','50 mil de oro por 10 fichas','50 mil de oro por 10 fichas'),
('51003','1','10 mil de oro por 1 ficha','10 mil de oro por 1 ficha'),
('51003','2','4 mil puntos de honor por 1 ficha','4 mil puntos de honor por 1 ficha'),
('51003','3','2 mil puntos de conquista por 1 ficha','2 mil puntos de conquista por 1 ficha'),
('51003','4','10 mil de oro por 1 ficha','10 mil de oro por 1 ficha'),
('51003','5','4 mil puntos de honor por 1 ficha','4 mil puntos de honor por 1 ficha'),
('51003','6','2 mil puntos de conquista por 1 ficha','2 mil puntos de conquista por 1 ficha'),
('51003','7','20 mil de oro por 1 ficha','20 mil de oro por 1 ficha'),
('51003','8','8 mil puntos de honor por 1 ficha','8 mil puntos de honor por 1 ficha'),
('51003','9','4 mil puntos de conquista por 1 ficha','4 mil puntos de conquista por 1 ficha'),
('51003','10','30 mil de oro por 1 ficha','30 mil de oro por 1 ficha'),
('51003','11','12 mil puntos de honor por 1 ficha','12 mil puntos de honor por 1 ficha'),
('51003','12','6 mil puntos de conquista por 1 ficha','6 mil puntos de conquista por 1 ficha'),
('51003','13','40 mil de oro por 1 ficha','40 mil de oro por 1 ficha'),
('51003','14','16 mil puntos de honor por 1 ficha','16 mil puntos de honor por 1 ficha'),
('51003','15','8 mil puntos de conquista por 1 ficha','8 mil puntos de conquista por 1 ficha'),
('51003','16','50 mil de oro por 1 ficha','50 mil de oro por 1 ficha'),
('51003','17','20 mil puntos de honor por 1 ficha','20 mil puntos de honor por 1 ficha'),
('51003','18','10 mil puntos de conquista por 1 ficha','10 mil puntos de conquista por 1 ficha'),
('51003','19','60 mil de oro por 1 ficha','60 mil de oro por 1 ficha'),
('51003','20','24 mil puntos de honor por 1 ficha','24 mil puntos de honor por 1 ficha'),
('51003','21','12 mil puntos de conquista por 1 ficha','12 mil puntos de conquista por 1 ficha'),
('51003','22','70 mil de oro por 1 ficha','70 mil de oro por 1 ficha'),
('51003','23','28 mil puntos de honor por 1 ficha','28 mil puntos de honor por 1 ficha'),
('51003','24','14 mil puntos de conquista por 1 ficha','14 mil puntos de conquista por 1 ficha'),
('51003','25','80 mil de oro por 1 ficha','80 mil de oro por 1 ficha'),
('51003','26','32 mil puntos de honor por 1 ficha','32 mil puntos de honor por 1 ficha'),
('51003','27','16 mil puntos de conquista por 1 ficha','16 mil puntos de conquista por 1 ficha'),
('51003','28','90 mil de oro por 1 ficha','90 mil de oro por 1 ficha'),
('51003','29','36 mil puntos de honor por 1 ficha','36 mil puntos de honor por 1 ficha'),
('51003','30','18 mil puntos de conquista por 1 ficha','18 mil puntos de conquista por 1 ficha'),
('51003','31','Adios','Adios'),
('51003','32','Quiero comprar un token','Quiero comprar un token'),
('51003','33','Enfrenta mi ira!','Enfrenta mi ira!'),
('51003','34','Ya tienes todas las monedas que estoy dispuesto a venderte!','Ya tienes todas las monedas que estoy dispuesto a venderte!');

-- susurros del npc 
delete from `trinity_string` where `entry` in ('63','64');
insert into `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) values
('63','I\'ll wait for you at the top, until then, good luck beginner!',NULL,NULL,NULL,NULL,NULL,'Te esperare en la cima, hasta entonces mucha suerte principiante!','Te esperare en la cima, hasta entonces mucha suerte principiante!',NULL),
('64','You can\'t afford it!',NULL,NULL,NULL,NULL,NULL,'No te lo puedes permitir!','No te lo puedes permitir!',NULL);

