-- Arcane Brilliance https://es.wowhead.com/spell=27394/luminosidad-arcana
DELETE FROM spell_ranks WHERE spell_id=23030;
DELETE FROM spell_ranks WHERE spell_id=27394;
INSERT INTO spell_ranks (`first_spell_id`, `spell_id`, `rank`) VALUES
(23030, 23030, 1),
(23030, 27394, 2); 

-- Demonic Pact https://db.wowlatinoamerica.com/?spell=53646
DELETE FROM spell_group WHERE spell_id=53646;
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
(1047,53646); -- Demonic Pact