-- add item que no existia en item_template
DELETE FROM `item_template` WHERE `entry`=52059;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (52059, 12, 0, -1, 'Murloc Leash', 47097, 1, 64, 8192, 1.0198, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73108, 0, 0, 5000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- eliminar item_loot_template custom 
DELETE FROM `item_loot_template` WHERE entry IN (300006, 300007, 300008, 300009, 300010, 300011, 300012); 

-- eliminar spell_loot_template custom 
DELETE FROM `spell_loot_template` WHERE entry IN (62941);  

-- eliminar gossip_menu custom
DELETE FROM `gossip_menu` WHERE entry IN (45423, 48100, 65531, 65532, 65534);

-- arregladas npcflag de creature_template 
UPDATE `creature_template` SET  `npcflag`='145' WHERE entry IN (543);
UPDATE `creature_template` SET  `npcflag`='128' WHERE entry IN (5944);  
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (6749);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9976);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9979);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9980);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9981);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9982);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9984);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9985);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9986);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9987);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9988);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (9989);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10045);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10046);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10047);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10048);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10049);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10050);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10051);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10052);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10053);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10054);
UPDATE `creature_template` SET  `npcflag`='4194433' WHERE entry IN (10055);
UPDATE `creature_template` SET  `npcflag`='4194433' WHERE entry IN (10056);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (10057, 10058, 10059, 10060, 10061, 10062, 10063, 10085, 11069);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (11104, 11105, 11119);
UPDATE `creature_template` SET  `npcflag`='128' WHERE entry IN (14741);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (15131);
UPDATE `creature_template` SET  `npcflag`='128' WHERE entry IN (15722);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (16094, 16185, 16586, 16656, 16665, 16764, 16824, 17485, 17666);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (17896, 18244, 18250, 18984);
UPDATE `creature_template` SET  `npcflag`='128' WHERE entry IN (19018, 19019);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (19368, 19476);
UPDATE `creature_template` SET  `npcflag`='128' WHERE entry IN (21336);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (21517, 21518, 22468, 22469, 23392);
UPDATE `creature_template` SET  `npcflag`='128' WHERE entry IN (23733);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (24066, 24067, 24154, 24350, 24905, 24974, 25037);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (26044);
UPDATE `creature_template` SET  `npcflag`='4194435' WHERE entry IN (26377);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (26504);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (26597, 26721);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (26944);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (27010, 27056, 27065, 27068, 27150, 27183, 27194, 27385);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (27948, 28047, 28057, 28690, 28790, 29250, 29251, 29658);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (29740, 29906, 29948, 29959, 29967, 30039, 30304, 33854); 
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (35290, 35291, 35344, 41893, 41903, 42875, 42911, 42966);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (43017, 43019, 43021, 43151, 43379, 43408, 43494, 43617); 
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (43630, 43634, 43766, 43770, 43773, 43877, 43979, 43982);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (43988, 43994, 44007, 44123, 44191, 44252, 44310, 44330);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (44335, 44346, 44347, 44348, 44349, 44354, 44378, 44382); 
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (44384, 44788, 45297, 45298, 45498, 45789, 47337, 47368);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (47761, 47764); 
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (47866);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (47934, 48055, 48095, 48216, 48887, 49395);
UPDATE `creature_template` SET  `npcflag`='4194435' WHERE entry IN (49408);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (49431, 49554, 49577, 49593, 49600, 49689, 49755, 49767);
UPDATE `creature_template` SET  `npcflag`='4194432' WHERE entry IN (49803, 50069);
UPDATE `creature_template` SET  `npcflag`='131' WHERE entry IN (51988);

