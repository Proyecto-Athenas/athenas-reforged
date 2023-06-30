-- Remueve el camuflaje del cazador al tomar la bandera el bg
DELETE FROM spell_linked_spell WHERE spell_trigger=51753;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(51753,-23335,0, 'Soltar bandera en camuflaje en WSG'),
(51753,-34976, 0, 'Soltar bandera en camuflaje en EOS');


DELETE FROM `spell_linked_spell` WHERE spell_trigger IN (23335, 34976);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(23335,-51753,0, 'Soltar bandera en camuflaje en WSG'),
(34976,-51753, 0, 'Soltar bandera en camuflaje EOS');