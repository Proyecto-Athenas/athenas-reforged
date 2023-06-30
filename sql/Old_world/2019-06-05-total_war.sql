-- Total war - 28872
-- Spell requires a spell to count kill, we have none of those because we lack a sniff so i hackfixed it
-- it works now so..

UPDATE `quest_template` SET `RequiredNpcOrGo1`='46551' WHERE  `Id`=28872;

DELETE FROM `spell_script_names` WHERE `spell_id` = 86855;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (86855, 'spell_q27747_28872_total_war');
