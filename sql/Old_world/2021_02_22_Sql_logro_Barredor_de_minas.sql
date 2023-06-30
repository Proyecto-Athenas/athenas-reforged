-- elimina el deshabilitar 
DELETE FROM `disables` WHERE `sourceType`= 4 AND `entry`= 5258;

-- Minas terrestres achievement_criteria_data
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`= 5258;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(5258,0,57064,0,'');

-- Update descricion del hechizo
UPDATE `spell_linked_spell` SET `comment`= 'Trigger Detonation with Land Mine Knockback' WHERE `spell_trigger` = 54355;

-- nombre del scripts en c++
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_landmine_knockback_achievement';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(57099,'spell_gen_landmine_knockback_achievement');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 54355 AND `spell_effect` = 54402;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(54355, 54402, 0, 'Land Mine');

-- Elimina los engendros de Perimeter Bunny: son generados por el hechizo 54355 usado por GO 191502 (Mina terrestre)
DELETE FROM `creature` WHERE `id`=29397;
