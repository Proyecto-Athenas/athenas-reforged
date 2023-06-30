/*
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('76691','spell_vengeance_periodic');
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('84839','spell_vengeance');
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('84840','spell_vengeance');
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('93098','spell_vengeance');
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('93099','spell_vengeance');
*/
-- Se elimino las referencias al script que modifica el spell de venganza en las ramas de tanques del servidor
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_vengeance','spell_vengeance_periodic');

