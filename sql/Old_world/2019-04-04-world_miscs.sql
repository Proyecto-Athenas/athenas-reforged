/*Grim Batol*/
UPDATE `creature_template` SET `ScriptName`= 'npc_erudax_twilight_hatchling' WHERE `entry`= 39388;
UPDATE `creature_template` SET `ScriptName`= 'npc_shadow_gale_stalker' WHERE `entry`= 44314;
UPDATE `creature_template` SET `ScriptName`= 'npc_alexstrasza_egg' WHERE `entry`= 40486;
UPDATE `creature_template` SET `ScriptName`= 'npc_erudax_faceless_corruptor' WHERE `entry` IN (40600, 48844);
UPDATE `creature_template` SET `ScriptName`= 'boss_erudax' WHERE `entry`= 40484;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (75692, 91087, 75809, 75520, 91049, 75520, 91049, 75763, 91040);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(75692, 'spell_erudax_shadow_gale'),
(91087, 'spell_erudax_shadow_gale'),
(75809, 'spell_erudax_shield_of_nightmares'),
(75520, 'spell_erudax_twilight_corruption'),
(91049, 'spell_erudax_twilight_corruption'),
(75520, 'spell_erudax_twilight_corruption_aura'),
(91049, 'spell_erudax_twilight_corruption_aura'),
(75763, 'spell_erudax_umbral_mending'),
(91040, 'spell_erudax_umbral_mending');

DELETE FROM `achievement_criteria_data` WHERE `criteria_id`= 16001;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(16001, 11, 0, 0, 'achievement_break_the_eggs');