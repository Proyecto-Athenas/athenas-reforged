-- en el portal de la alianza la forma de vuelo de los druidas se retira una vez atravesado el portal pero en el portal de la horda no

-- ID GOB del portal Alianza = 206615 y 206594
-- ID GOB del portal Horda = 206595 y 206616(no funciona bien - ya está corregido)
-- Spell del hechizo del portal de la Alianza 88339 y el de la Horda es 88341

UPDATE `gameobject_template` SET `data2` = '0' , `data3` = '0' WHERE `entry` = '206616'; 

-- el script no estaba vinculado al portal
DELETE FROM `spell_script_names` WHERE `spell_id`= 88341 AND `ScriptName` = 'spell_tol_barad_spell';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (88341, 'spell_tol_barad_spell');

DELETE FROM `spell_script_names` WHERE `spell_id`= 88339 AND `ScriptName` = 'spell_tol_barad_spell';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (88339, 'spell_tol_barad_spell');