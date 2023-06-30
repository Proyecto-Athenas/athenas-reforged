-- Se agregaron 217 scripts que corrigen errores de db 
-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=-49145 AND `ScriptName`='spell_dk_spell_deflection';
DELETE FROM `spell_script_names` WHERE `spell_id`=47299 AND `ScriptName`='spell_ex_absorb_aura';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(47299, 'spell_ex_absorb_aura'),
(-49145, 'spell_dk_spell_deflection');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id` = -50294;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-50294,'spell_dru_starfall_aoe');

-- add 
DELETE FROM spell_script_names WHERE ScriptName = 'spell_gen_lifeblood';
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(-55428, 'spell_gen_lifeblood');

DELETE FROM `spell_script_names` WHERE `spell_id`=13161;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(13161, 'spell_hun_aspect_of_the_beast');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=34074;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(34074,  'spell_hun_ascpect_of_the_viper');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=63521 AND `ScriptName`='spell_pal_guarded_by_the_light';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (63521, 'spell_pal_guarded_by_the_light');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=331 AND `ScriptName`='spell_sha_t13_2p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (331, 'spell_sha_t13_2p_enhancement');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=403 AND `ScriptName`='spell_sha_t13_2p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (403, 'spell_sha_t13_2p_enhancement');
DELETE FROM `spell_script_names` WHERE `spell_id`=403 AND `ScriptName`='spell_sha_t13_4p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (403, 'spell_sha_t13_4p_enhancement');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=421 AND `ScriptName`='spell_sha_t13_2p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (421, 'spell_sha_t13_2p_enhancement');
DELETE FROM `spell_script_names` WHERE `spell_id`=421 AND `ScriptName`='spell_sha_t13_4p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (421, 'spell_sha_t13_4p_enhancement');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=1064 AND `ScriptName`='spell_sha_chain_heal';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (1064, 'spell_sha_chain_heal');
DELETE FROM `spell_script_names` WHERE `spell_id`=1064 AND `ScriptName`='spell_sha_t13_2p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (1064, 'spell_sha_t13_2p_enhancement');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=8004 AND `ScriptName`='spell_sha_t13_2p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (8004, 'spell_sha_t13_2p_enhancement');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=77472 AND `ScriptName`='spell_sha_t13_2p_enhancement';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (77472, 'spell_sha_t13_2p_enhancement');

-- QUEST SPELLS
-- 45449 Arcane Prisoner Rescue
DELETE FROM `spell_script_names` WHERE `spell_id`=45449 AND `ScriptName`='spell_q11587_arcane_prisoner_rescue';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (45449,'spell_q11587_arcane_prisoner_rescue');


-- Fix quests Borrowed Technology, The Solution Solution /Daily/, Volatility, Volatility /Daily/
-- thanks to genjush for corrections on wrong quest ids
SET @Skytalon := 31583; -- Frostbrood Skytalon
SET @Decoy := 31578; -- Armored Decoy
SET @QuestCredit := 59329; -- Fake Soldier Kill Credit
SET @Stun := 59292; -- Freeze animation to look like Decoy
SET @Explosion := 59335; -- The spell that should kill Skytalon and Decoy
SET @Summon := 59303; -- Summon Skyatalon
SET @Immolation := 54690; -- Skytalon burning animation spell
SET @Grab := 59318;
SET @Bunny := 31630;
SET @PingBunny := 59375; -- Skytalon cast on accessory bunny to tell it to explode after 6 seconds
SET @Script := @Bunny * 100; -- Explosion bunny timed action list

-- Set inhabit type only 4 to Explosion Bunny that is a vehicle accessory of the Skytalon, otherwise it falls and add "Smart_AI"
UPDATE `creature_template` SET `InhabitType`=4,`AIName`='SmartAI',`flags_extra`=flags_extra|128 WHERE `entry`=@Bunny;
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x00000100|0x00008000,`faction_A`=974,`faction_H`=974,`vehicleId`=279,`InhabitType`=4,`AIName`='',`ScriptName`='npc_frostbrood_skytalon',`HoverHeight`=5 WHERE `entry`=@Skytalon;
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x00000100|0x00008000,`faction_A`=190,`faction_H`=190,`AIName`='SmartAI' WHERE `entry`=@Decoy;

-- Add missing equipment
DELETE FROM `creature_equip_template` WHERE `entry`=@Decoy;
INSERT INTO `creature_equip_template` (`entry`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(@Decoy,21573,0,0); -- Armored Decoy -> Monster - Sword, 1H Alliance PvP

-- Add creature_addon data
DELETE FROM `creature_template_addon` WHERE `entry`=@Skytalon;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@Skytalon,0,0,50331648,1,0, '60534');

-- Insert spell_script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (@Grab,@Summon);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@Grab, 'spell_q13291_q13292_q13239_q13261_frostbrood_skytalon_grab_decoy'),
(@Summon, 'spell_q13291_q13292_q13239_q13261_armored_decoy_summon_skytalon');

-- Quests relations
UPDATE `quest_template` SET `PrevQuestId`=13290,`NextQuestId`=13383 WHERE `id`=13291; -- Borrowed Technology
UPDATE `quest_template` SET `PrevQuestId`=13291,`NextQuestId`=0 WHERE `id`=13292; -- The Solution Solution /Daily/
UPDATE `quest_template` SET `PrevQuestId`=13238,`NextQuestId`=13379 WHERE `id`=13239; -- Volatility
UPDATE `quest_template` SET `PrevQuestId`=13329,`NextQuestId`=0 WHERE `id`=13261; -- Volatiliy /Daily/

-- Add SAI support for Explosion bunny and Decoy
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@Bunny,@Decoy);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Bunny,0,0,0,8,0,100,0,@PingBunny,0,0,0,80,@Script,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - On hit by ping bunny - Start timed action list'),
(@Script,9,0,0,0,0,100,0,6000,6000,0,0,11,@Explosion,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - Action 0 - Cast explosion on self'),
(@Decoy,0,0,1,54,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Armored Decoy - On just summoned - Store invoker /since target summoner fails/'),
(@Decoy,0,1,2,61,0,100,0,0,0,0,0,11,@Stun,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Armored Decoy - Linked - Cast Freeze animation on self'),
(@Decoy,0,2,0,61,0,100,0,0,0,0,0,11,@Summon,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Armored Decoy - Linked - Cast summon Skytalon behind'),
(@Decoy,0,3,0,8,0,100,0,@Explosion,0,0,0,11,@QuestCredit,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Armored Decoy - On hit by explosion - Cast kill credit to stored target');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@Explosion,@PingBunny);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Explosion,0,0,31,0,3,@Decoy,0,0,0,0,'', 'Explosion Bunny can hit Armored Decoy'),
(13,1,@Explosion,0,1,31,0,3,@Skytalon,0,0,0,0,'', 'Explosion Bunny can hit Skytalon'),
(13,1,@PingBunny,0,0,31,0,3,@Bunny,0,0,0,0,'', 'Ping Bunny can hit only Explosion Bunny');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=28441;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(28441, 'spell_item_ashbringer');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=45907 AND `ScriptName`='spell_torch_target_picker';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (45907, 'spell_torch_target_picker');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=45671 AND `ScriptName`='spell_juggle_torch_catch';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (45671, 'spell_juggle_torch_catch');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=44643 AND `ScriptName`='spell_guild_check_friendly_reputation';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (44643, 'spell_guild_check_friendly_reputation');

-- add 
DELETE FROM `areatrigger_scripts` WHERE `entry`=4591;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (4591, 'at_coilfang_waterfall');

-- add 
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mark_of_nature';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(25042, 'spell_mark_of_nature');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=76189 AND `ScriptName`='spell_crepuscular_veil';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (76189, 'spell_crepuscular_veil');

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=93227 AND `ScriptName`='spell_elementary_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (93227, 'spell_elementary_damage');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=93228 AND `ScriptName`='spell_elementary_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (93228, 'spell_elementary_damage');

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=7054 AND `ScriptName`='spell_springvale_forsaken_ability';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (7054, 'spell_springvale_forsaken_ability');

-- add 
UPDATE creature_template SET ScriptName= "mob_yenniku"  WHERE entry=2530;

-- add 
UPDATE `creature_template` SET `ScriptName`= "npc_horatio" WHERE `entry` =42308;

-- add
UPDATE `creature_template` SET `ScriptName`= "npc_fire_trigger" WHERE `entry` =42793;

-- add
UPDATE `creature_template` SET `ScriptName`='npc_bloodfang_stalker_c1' WHERE `entry`=35229;

-- add 
UPDATE `creature_template` SET `ScriptName`='npc_ancient_charhound' WHERE `entry`=54339;

-- add 
UPDATE creature_template SET ScriptName = 'npc_druid_of_the_flame' WHERE entry = 54343;

-- add 
UPDATE creature_template SET ScriptName = 'npc_subterranean_magma_worm' WHERE entry = 53112;

-- add 
UPDATE creature_template SET ScriptName = 'npc_ancient_firelord' WHERE entry = 53864;

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=69425 AND `ScriptName`='spell_ds_ice_shards_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (69425, 'spell_ds_ice_shards_damage');

-- add 
UPDATE `creature_template` SET `ScriptName`='npc_setesh_void_sentinel' WHERE `entry`=41208;

-- add 
UPDATE `creature_template` SET `ScriptName`='npc_setesh_void_seeker' WHERE `entry`=41371;

-- add 
UPDATE `creature_template` SET `ScriptName`= "npc_suntouched_speaker" WHERE `entry` =39373;

-- add
UPDATE `creature_template` SET `ScriptName`='npc_injured_draenei' WHERE `entry`=16971;

-- add 
UPDATE `gameobject_template` SET `ScriptName`='go_princess_stillpines_cage' WHERE `entry`=181928;

-- add
UPDATE `instance_template` SET `script`='instance_the_slave_pens' WHERE `map`=547;

-- The Thunderspike
UPDATE `gameobject_template` SET `AIName`='',`ScriptName`='go_thunderspike' WHERE `entry`=184729;
DELETE FROM `event_scripts` WHERE `id`=13685;

-- add
UPDATE creature_template SET scriptname = "npc_zapnozzle" WHERE entry IN (36608);

-- add 
DELETE FROM `spell_script_names` WHERE `spell_id`=49838;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(49838, "spell_gen_stop_time");

-- add
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7590;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(7590,11,0,0,'achievement_brann_spankin_new');

-- add
UPDATE `creature_template` SET `ScriptName`= "boss_voice_of_yogg_saron" WHERE `entry` =33280;

-- add
DELETE FROM `spell_script_names` WHERE `spell_id`=63744 AND `ScriptName`='spell_yogg_saron_target_selectors';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63744, 'spell_yogg_saron_target_selectors');

DELETE FROM `spell_script_names` WHERE `spell_id`=63745 AND `ScriptName`='spell_yogg_saron_target_selectors';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63745, 'spell_yogg_saron_target_selectors');

DELETE FROM `spell_script_names` WHERE `spell_id`=63747 AND `ScriptName`='spell_yogg_saron_target_selectors';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63747, 'spell_yogg_saron_target_selectors');

DELETE FROM `spell_script_names` WHERE `spell_id`=65206 AND `ScriptName`='spell_yogg_saron_target_selectors';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (65206, 'spell_yogg_saron_target_selectors');

DELETE FROM `spell_script_names` WHERE `spell_id`=63795 AND `ScriptName`='spell_yogg_saron_psychosis';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63795, 'spell_yogg_saron_psychosis');

DELETE FROM `spell_script_names` WHERE `spell_id`=65301 AND `ScriptName`='spell_yogg_saron_psychosis';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (65301, 'spell_yogg_saron_psychosis');

DELETE FROM `spell_script_names` WHERE `spell_id`=63830 AND `ScriptName`='spell_yogg_saron_malady_of_the_mind';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63830, 'spell_yogg_saron_malady_of_the_mind');

DELETE FROM `spell_script_names` WHERE `spell_id`=63881 AND `ScriptName`='spell_yogg_saron_malady_of_the_mind';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63881, 'spell_yogg_saron_malady_of_the_mind');

DELETE FROM `spell_script_names` WHERE `spell_id`=63802 AND `ScriptName`='spell_brain_link_periodic_dummy';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63802, 'spell_brain_link_periodic_dummy');
DELETE FROM `spell_script_names` WHERE `spell_id`=63802 AND `ScriptName`='spell_yogg_saron_brain_link';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63802, 'spell_yogg_saron_brain_link');

DELETE FROM `spell_script_names` WHERE `spell_id`=63030 AND `ScriptName`='spell_yogg_saron_boil_ominously';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63030, 'spell_yogg_saron_boil_ominously');

DELETE FROM `spell_script_names` WHERE `spell_id`=64465 AND `ScriptName`='spell_yogg_saron_shadow_beacon';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64465, 'spell_yogg_saron_shadow_beacon');

DELETE FROM `spell_script_names` WHERE `spell_id`=64466 AND `ScriptName`='spell_empowering_shadows';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64466, 'spell_empowering_shadows');
DELETE FROM `spell_script_names` WHERE `spell_id`=64466 AND `ScriptName`='spell_yogg_saron_empowering_shadows_range_check';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64466, 'spell_yogg_saron_empowering_shadows_range_check');

DELETE FROM `spell_script_names` WHERE `spell_id`=64467 AND `ScriptName`='spell_yogg_saron_empowering_shadows_missile';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64467, 'spell_yogg_saron_empowering_shadows_missile');

DELETE FROM `spell_script_names` WHERE `spell_id`=64132 AND `ScriptName`='spell_yogg_saron_constrictor_tentacle';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64132, 'spell_yogg_saron_constrictor_tentacle');

DELETE FROM `spell_script_names` WHERE `spell_id`=64131 AND `ScriptName`='spell_yogg_saron_lunge';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64131, 'spell_yogg_saron_lunge');

DELETE FROM `spell_script_names` WHERE `spell_id`=64125 AND `ScriptName`='spell_yogg_saron_squeeze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64125, 'spell_yogg_saron_squeeze');

DELETE FROM `spell_script_names` WHERE `spell_id`=64148 AND `ScriptName`='spell_yogg_saron_diminsh_power';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64148, 'spell_yogg_saron_diminsh_power');

DELETE FROM `spell_script_names` WHERE `spell_id`=64161 AND `ScriptName`='spell_yogg_saron_empowered';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64161, 'spell_yogg_saron_empowered');

DELETE FROM `spell_script_names` WHERE `spell_id`=64069 AND `ScriptName`='spell_yogg_saron_match_health';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64069, 'spell_yogg_saron_match_health');

DELETE FROM `spell_script_names` WHERE `spell_id`=65238 AND `ScriptName`='spell_yogg_saron_shattered_illusion';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (65238, 'spell_yogg_saron_shattered_illusion');

DELETE FROM `spell_script_names` WHERE `spell_id`=63882 AND `ScriptName`='spell_yogg_saron_death_ray_warning_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63882, 'spell_yogg_saron_death_ray_warning_visual');

DELETE FROM `spell_script_names` WHERE `spell_id`=63993 AND `ScriptName`='spell_yogg_saron_cancel_illusion_room_aura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63993, 'spell_yogg_saron_cancel_illusion_room_aura');

DELETE FROM `spell_script_names` WHERE `spell_id`=64013 AND `ScriptName`='spell_yogg_saron_nondescript';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64013, 'spell_yogg_saron_nondescript');

DELETE FROM `spell_script_names` WHERE `spell_id`=64010 AND `ScriptName`='spell_yogg_saron_nondescript';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64010, 'spell_yogg_saron_nondescript');

DELETE FROM `spell_script_names` WHERE `spell_id`=64012 AND `ScriptName`='spell_yogg_saron_revealed_tentacle';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64012, 'spell_yogg_saron_revealed_tentacle');

DELETE FROM `spell_script_names` WHERE `spell_id`=63305 AND `ScriptName`='spell_yogg_saron_grim_reprisal';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63305, 'spell_yogg_saron_grim_reprisal');

DELETE FROM `spell_script_names` WHERE `spell_id`=64059 AND `ScriptName`='spell_yogg_saron_induce_madness';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64059, 'spell_yogg_saron_induce_madness');

DELETE FROM `spell_script_names` WHERE `spell_id`=63050 AND `ScriptName`='spell_yogg_saron_sanity';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63050, 'spell_yogg_saron_sanity');

DELETE FROM `spell_script_names` WHERE `spell_id`=63120 AND `ScriptName`='spell_insane_death_effekt';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63120, 'spell_insane_death_effekt');
DELETE FROM `spell_script_names` WHERE `spell_id`=63120 AND `ScriptName`='spell_yogg_saron_insane';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63120, 'spell_yogg_saron_insane');

DELETE FROM `spell_script_names` WHERE `spell_id`=64555 AND `ScriptName`='spell_yogg_saron_insane_periodic';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64555, 'spell_yogg_saron_insane_periodic');

DELETE FROM `spell_script_names` WHERE `spell_id`=64168 AND `ScriptName`='spell_lunatic_gaze_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64168, 'spell_lunatic_gaze_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=64168 AND `ScriptName`='spell_yogg_saron_lunatic_gaze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64168, 'spell_yogg_saron_lunatic_gaze');

DELETE FROM `spell_script_names` WHERE `spell_id`=64164 AND `ScriptName`='spell_lunatic_gaze_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64164, 'spell_lunatic_gaze_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=64164 AND `ScriptName`='spell_yogg_saron_lunatic_gaze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64164, 'spell_yogg_saron_lunatic_gaze');

DELETE FROM `spell_script_names` WHERE `spell_id`=62702 AND `ScriptName`='spell_keeper_support_aura_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62702, 'spell_keeper_support_aura_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=62702 AND `ScriptName`='spell_yogg_saron_keeper_aura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62702, 'spell_yogg_saron_keeper_aura');

DELETE FROM `spell_script_names` WHERE `spell_id`=62671 AND `ScriptName`='spell_keeper_support_aura_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62671, 'spell_keeper_support_aura_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=62671 AND `ScriptName`='spell_yogg_saron_keeper_aura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62671, 'spell_yogg_saron_keeper_aura');

DELETE FROM `spell_script_names` WHERE `spell_id`=62670 AND `ScriptName`='spell_keeper_support_aura_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62670, 'spell_keeper_support_aura_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=62670 AND `ScriptName`='spell_yogg_saron_keeper_aura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62670, 'spell_yogg_saron_keeper_aura');

DELETE FROM `spell_script_names` WHERE `spell_id`=62650 AND `ScriptName`='spell_keeper_support_aura_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62650, 'spell_keeper_support_aura_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=62650 AND `ScriptName`='spell_yogg_saron_keeper_aura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (62650, 'spell_yogg_saron_keeper_aura');

DELETE FROM `spell_script_names` WHERE `spell_id`=63984 AND `ScriptName`='spell_yogg_saron_hate_to_zero';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (63984, 'spell_yogg_saron_hate_to_zero');

DELETE FROM `spell_script_names` WHERE `spell_id`=64184 AND `ScriptName`='spell_yogg_saron_in_the_maws_of_the_old_god';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64184, 'spell_yogg_saron_in_the_maws_of_the_old_god');

DELETE FROM `spell_script_names` WHERE `spell_id`=64172 AND `ScriptName`='spell_titanic_storm_targeting';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64172, 'spell_titanic_storm_targeting');
DELETE FROM `spell_script_names` WHERE `spell_id`=64172 AND `ScriptName`='spell_yogg_saron_titanic_storm';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64172, 'spell_yogg_saron_titanic_storm');

DELETE FROM `spell_script_names` WHERE `spell_id`=64174 AND `ScriptName`='spell_hodir_protective_gaze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64174, 'spell_hodir_protective_gaze');
DELETE FROM `spell_script_names` WHERE `spell_id`=64174 AND `ScriptName`='spell_yogg_saron_hodirs_protective_gaze';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (64174, 'spell_yogg_saron_hodirs_protective_gaze');

DELETE FROM `spell_script_names` WHERE `spell_id`='68576';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(68576,'spell_the_lich_king_eject_all_passengers');

UPDATE `creature_template` SET `ScriptName` = 'npc_gurgthock' WHERE `entry`=30007;
UPDATE `creature_template` SET `ScriptName` = 'npc_orinoko_tuskbreaker' WHERE `entry`=30020;
UPDATE `creature_template` SET `ScriptName` = 'npc_korrak_bloodrager' WHERE `entry`=30023;
UPDATE `creature_template` SET `ScriptName`='npc_yggdras' WHERE `entry`=30014;
UPDATE `creature_template` SET `ScriptName`='npc_stinkbeard' WHERE `entry`=30017;

UPDATE `creature_template` SET `ScriptName`='npc_elemental_lord' WHERE `entry` IN (30024,30025,30019,30026);
UPDATE `creature_template` SET `ScriptName`='npc_fiend_elemental' WHERE `entry` IN (30044,30042,30043,30045);


