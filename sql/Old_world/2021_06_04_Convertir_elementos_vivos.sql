-- elimina el loot del spell
DELETE FROM `spell_loot_template` WHERE entry=78866;

-- nombra el spell script c++
DELETE FROM `spell_script_names` WHERE `spell_id`= 78866 AND `ScriptName` = 'spell_gen_alchemy_transmut_living_elements';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(78866, 'spell_gen_alchemy_transmut_living_elements');
