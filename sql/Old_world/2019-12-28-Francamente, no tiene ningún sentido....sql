-- fixFrancamente, no tiene ningún sentido...
-- eliminado el reporte
DELETE FROM `report_quest` WHERE id=10672;

SET @Scorp := 21909; -- Arcano-Scorp
SET @Control1 := 37867; -- Trigger /connected with dismissing to make vehicle not attack master/
SET @Control1_1 := 37868; -- Control /apply control aura without target/
SET @Control2 := 37892; -- -//-
SET @Control2_2 := 37893; -- -//-
SET @Control3 := 37894; -- -//-
SET @Control3_3 := 37895; -- -//-
SET @Diametron := 21462; -- Greater Fellfire Diametron
-- Arcano-Scorp spells:
SET @Tag := 37851; -- Tag Greater Felfire Diemetradon
SET @Arcano_Cloak := 37917;
SET @Arcano_dismantle := 37919;
SET @Arcano_pince := 37918;
-- Add spawns for two missing Arcano-Scorps
UPDATE `creature_template` SET `AIName`='PetAI',`unit_flags`=512,`MovementType`=1,`spell4`=@Tag,`spell5`=@Arcano_Cloak,`spell6`=@Arcano_dismantle,`spell7`=@Arcano_pince WHERE `entry`=@Scorp;
UPDATE `creature` SET `MovementType`=1,`spawndist`=3,`position_x`=-3414.004,`position_y`=825.4113,`position_z`=-30.77301 WHERE `guid`=76655;

-- Spell script for trigger of control spell *will rewrite it once SAI spell script is released*
DELETE FROM `spell_scripts` WHERE `id` IN (@Control1,@Control2,@Control3);
INSERT INTO `spell_scripts` (`id`,`effindex`,`delay`,`command`,`datalong`,`datalong2`) VALUES
(@Control1,0,0,15,@Control1_1,2),
(@Control2,0,0,15,@Control2_2,2),
(@Control3,0,0,15,@Control3_3,2);
-- Limit @Tag only to Diametrons,also to ones not affected by it
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@Tag;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@Tag,0,0,31,1,3,@Diametron,0,0,0, '', 'Tag can only target Greater Felfire Diametrons'),
(17,0,@Tag,0,0,1,1,@Tag,0,0,1,0, '', 'Tag cannot be casted on tagged Diametrons');
-- Limit Arcano_Dismantle to not being able to hit self and cannot damage anything else beside Arcano-scorp
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@Arcano_dismantle;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Arcano_dismantle,0,0,33,1,0,1,0,1,0, '', 'Arcano-Dismantle effect 0 cannot hit self'),
(13,2,@Arcano_dismantle,0,0,33,1,0,1,0,1,0, '', 'Arcano-Dismantle effect 1 cannot hit self'),
(13,1,@Arcano_dismantle,0,0,31,0,3,@Scorp,0,0,0, '', 'Arcano-Dismantle effect 0 can hit only Arcano-Scorp'),
(13,2,@Arcano_dismantle,0,0,31,0,3,@Scorp,0,0,0, '', 'Arcano-Dismantle effect 1 can hit only Arcano-Scorp');
-- Limit @Arcano_pince to not being able to hit self and cannot damage anything else beside Arcano-scorp
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@Arcano_pince;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Arcano_pince,0,0,33,1,0,1,0,1,0, '', 'Arcano_pince effect 0 cannot hit self'),
(13,1,@Arcano_pince,0,0,31,0,3,@Scorp,0,0,0, '', 'Arcano_pince effect 0 can hit only Arcano-Scorp');
-- Add SAI for Greater Diametron to prevent some bugs
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Diametron;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Diametron;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Diametron,0,0,0,0,0,100,0,4500,5000,5000,7000,11,37945,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - IC - Cast Fel Fireball'),
(@Diametron,0,1,0,0,0,100,0,1500,3000,15000,17000,11,37941,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - IC - Cast Flaming Wound'),
(@Diametron,0,2,3,8,0,100,0,@Tag,0,0,0,90,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - On hit by spell Tag - Set bytes to wipe aggro'),
(@Diametron,0,3,4,61,0,100,0,0,0,0,0,91,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - Linked with previous event - Remove bytes'),
(@Diametron,0,4,0,61,0,100,0,0,0,0,0,75,@Tag,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - Linked with previous event - Add Tag aura on self');