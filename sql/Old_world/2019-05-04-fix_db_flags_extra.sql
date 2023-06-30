UPDATE `creature_template` SET `flags_extra`='0' WHERE  `entry`=15491;
UPDATE `creature_template` SET `flags_extra`='0' WHERE  `entry`=57438;
UPDATE `creature_template` SET `equipment_id`='28927' WHERE  `entry`=28927;
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE  `entry`=50107;

DELETE FROM `creature_template` WHERE `entry`=0;
INSERT  INTO `creature_template`(`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`exp_unk`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`speed_swim`,`speed_fly`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`type_flags2`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`currencyId`,`currencyCount`,`AIName`,`MovementType`,`InhabitType`,`HoverHeight`,`Health_mod`,`Mana_mod`,`Mana_mod_extra`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) VALUES 
(0,0,0,0,0,0,10045,0,0,0,'DoNotDelete','0','0',0,1,1,0,0,35,35,0,1,1.14286,1,1,1,0,2,2,0,24,1,2000,2000,1,0,2048,8,0,0,0,0,0,1,1,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,NULL,'SmartAI',0,7,0,1,1,1,1,0,0,0,0,0,0,0,0,1,0,0,130,'',13623);

UPDATE `creature_template` SET `flags_extra`='0' WHERE  `entry`=35273;
UPDATE `creature_template` SET `flags_extra`='0' WHERE  `entry`=35421;


UPDATE `creature_template` SET `speed_walk`='1', `speed_run`='1.14286' WHERE  `entry`=34812;
UPDATE `creature_template` SET `speed_walk`='1', `speed_run`='1.14286' WHERE  `entry`=34819;
UPDATE `creature_template` SET `speed_walk`='1', `speed_run`='1.14286' WHERE  `entry`=34822;

UPDATE `creature_template` SET `unit_class`='1' WHERE  `entry`=53509;
UPDATE `creature_template` SET `unit_class`='1' WHERE  `entry`=54052;




UPDATE `creature_template` SET `npcflag`='2' WHERE  entry IN(43778, 48941);

UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE  `entry`=46419;

UPDATE `creature_template` SET `npcflag`='3' WHERE  entry IN(47162, 48936);
UPDATE `creature_template` SET `npcflag`='3' WHERE  entry IN(47296, 48940);
UPDATE `creature_template` SET `npcflag`='16777216' WHERE  entry IN(47403, 48804);
UPDATE `creature_template` SET `npcflag`='16777216' WHERE  entry IN(47404, 48803);
UPDATE `creature_template` SET `npcflag`='3' WHERE  entry IN(47626, 48943);



