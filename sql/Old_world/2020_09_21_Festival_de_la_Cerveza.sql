
#####################################################################################
--				Brewfest Durotar
#####################################################################################
SET @CGUID := 361880;
SET @OGUID := 225989;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+76;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 23808, 1, 1, 1, 1171.494, -4118.168, 20.4874, 1.074811, 120, 5, 1), -- [DND] Brewfest Keg Move to Target (Area: Durotar) (possible waypoints or random movement)
(@CGUID+1, 24484, 1, 1, 1, 1163.045, -4144.958, 21.52604, 2.687807, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43907 - Brewfest Reveler - Blood Elf)
(@CGUID+2, 24657, 1, 1, 1, 1155.069, -4142.635, 21.30903, 0.2617994, 120, 0, 0), -- Glodrak Huntsniper (Area: Durotar)
(@CGUID+3, 24498, 1, 1, 1, 1167.21, -4107.191, 19.29861, 6.056293, 120, 0, 0), -- Cort Gorestein (Area: Durotar)
(@CGUID+4, 24711, 1, 1, 1, 1158.045, -4160.927, 21.24508, 0.2047817, 120, 0, 0), -- Tapper Swindlekeg (Area: Durotar) (Auras: 50552 - Horde Questgiver Tries Dire Brew, 50551 - Horde Questgiver Takes a drink)
(@CGUID+5, 23606, 1, 1, 1, 1177.618, -4164.182, 22.01465, 1.89964, 120, 0, 0), -- Suntouched Apprentice (Area: Durotar)
(@CGUID+6, 24372, 1, 1, 1, 1168.285, -4116.309, 20.43056, 5.707227, 120, 0, 0), -- Drohn's Distillery Festive Keg (Area: Durotar)
(@CGUID+7, 23603, 1, 1, 1, 1161.67, -4133.085, 21.42014, 5.689773, 120, 0, 0), -- Uta Roughdough (Area: Durotar)
(@CGUID+8, 24484, 1, 1, 1, 1181.422, -4157.077, 21.68576, 4.625123, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43915 - Brewfest Reveler - Tauren)
(@CGUID+9, 24484, 1, 1, 1, 1165.66, -4152.851, 21.72917, 4.660029, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43914 - Brewfest Reveler - Orc)
(@CGUID+10, 24484, 1, 1, 1, 1174.622, -4130.429, 21.34797, 0.9599311, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43916 - Brewfest Reveler - Troll)
(@CGUID+11, 24484, 1, 1, 1, 1170.179, -4147.186, 21.67576, 5.61996, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43917 - Brewfest Reveler - Undead)
(@CGUID+12, 24484, 1, 1, 1, 1179.835, -4127.41, 21.29514, 2.617994, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43917 - Brewfest Reveler - Undead)
(@CGUID+13, 24484, 1, 1, 1, 1184.415, -4153.962, 21.60938, 1.361357, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43914 - Brewfest Reveler - Orc)
(@CGUID+14, 24501, 1, 1, 1, 1168.625, -4103.194, 18.79514, 5.916666, 120, 0, 0), -- Drohn's Distillery Apprentice (Area: Durotar)
(@CGUID+15, 24492, 1, 1, 1, 1173.965, -4102.738, 18.85311, 5.811946, 120, 0, 0), -- Drohn's Distillery Barker (Area: Durotar) (Auras: )
(@CGUID+16, 24766, 1, 1, 1, 1191.486, -4135.007, 22.05243, 6.161012, 120, 0, 0), -- [DND] Brewfest Face Me Bunny (Area: Durotar)
(@CGUID+17, 24484, 1, 1, 1, 1190.465, -4137.359, 21.92014, 3.01942, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43915 - Brewfest Reveler - Tauren)
(@CGUID+18, 24484, 1, 1, 1, 1193.163, -4140.776, 21.90567, 4.956735, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43915 - Brewfest Reveler - Tauren)
(@CGUID+19, 24484, 1, 1, 1, 1178.734, -4115.299, 20.46701, 0.6981317, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43916 - Brewfest Reveler - Troll)
(@CGUID+20, 24484, 1, 1, 1, 1183.611, -4120.368, 21.1775, 0.03490658, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43915 - Brewfest Reveler - Tauren)
(@CGUID+21, 24109, 1, 1, 1, 1193.832, -4176.846, 22.79314, 1.064651, 120, 0, 0), -- [DND] Brewfest Target Dummy Move To Target (Area: Durotar)
(@CGUID+22, 24108, 1, 1, 1, 1194.807, -4175.846, 22.68178, 3.939258, 120, 0, 0), -- Self-Turning and Oscillating Utility Target (Area: Durotar)
(@CGUID+23, 23703, 1, 1, 1, 1191.578, -4114.137, 21.47791, 2.234021, 120, 0, 0), -- [DND] Brewfest Dark Iron Event Generator (Area: Durotar)
(@CGUID+24, 23605, 1, 1, 1, 1199.837, -4142.656, 22.13296, 2.374498, 120, 0, 0), -- Bron (Area: Durotar)
(@CGUID+25, 24484, 1, 1, 1, 1184.75, -4106.096, 19.78307, 2.635447, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43915 - Brewfest Reveler - Tauren)
(@CGUID+26, 24484, 1, 1, 1, 1180.238, -4103.596, 19.22917, 5.707227, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43916 - Brewfest Reveler - Troll)
(@CGUID+27, 23604, 1, 1, 1, 1185.87, -4089.88, 18.52143, 4.712389, 120, 0, 0), -- Agnes Farwithers (Area: Durotar)
(@CGUID+28, 24109, 1, 1, 1, 1203.898, -4166.512, 23.09603, 4.433136, 120, 0, 0), -- [DND] Brewfest Target Dummy Move To Target (Area: Durotar)
(@CGUID+29, 23706, 1, 1, 1, 1207.493, -4132.774, 23.19097, 4.764749, 120, 0, 0), -- Gordok Festive Keg (Area: Durotar)
(@CGUID+30, 23488, 1, 1, 1, 1204.748, -4118.993, 23.00868, 5.986479, 120, 0, 0), -- Brewfest Crowd (Area: Durotar)
(@CGUID+31, 24484, 1, 1, 1, 1203.616, -4185.603, 24.2934, 0.9552017, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+32, 23511, 1, 1, 1, 1213.04, -4126.611, 23.69618, 2.426008, 120, 0, 0), -- Gordok Brew Apprentice (Area: Durotar)
(@CGUID+33, 23703, 1, 1, 1, 1195.446, -4111.564, 21.43056, 5.602507, 120, 0, 0), -- [DND] Brewfest Dark Iron Event Generator (Area: Durotar)
(@CGUID+34, 24495, 1, 1, 1, 1177.757, -4094.491, 18.27431, 5.393067, 120, 0, 0), -- Blix Fixwidget (Area: Durotar)
(@CGUID+35, 24484, 1, 1, 1, 1200.29, -4182.222, 23.64837, 6.205039, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+36, 23808, 1, 1, 1, 1204.801, -4130.746, 23.04626, 4.114602, 120, 5, 1), -- [DND] Brewfest Keg Move to Target (Area: Durotar) (possible waypoints or random movement)
(@CGUID+37, 24484, 1, 1, 1, 1203.726, -4182.491, 24.11111, 4.67725, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+38, 24497, 1, 1, 1, 1179.486, -4216.002, 23.89583, 0.9948376, 120, 0, 0), -- Ram Master Ray (Area: Durotar) (Auras: 44069 - See Supplier Mark, 43492 - Brewfest - apple trap - Unfriendly DND)
(@CGUID+39, 24484, 1, 1, 1, 1202.313, -4124.241, 23.13715, 4.014257, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43914 - Brewfest Reveler - Orc)
(@CGUID+40, 24484, 1, 1, 1, 1201.882, -4110.797, 21.8941, 1.815142, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43916 - Brewfest Reveler - Troll)
(@CGUID+41, 24484, 1, 1, 1, 1205.642, -4114.721, 22.66146, 6.161012, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43907 - Brewfest Reveler - Blood Elf)
(@CGUID+42, 24484, 1, 1, 1, 1196.538, -4098.118, 19.96629, 0.2094395, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43907 - Brewfest Reveler - Blood Elf)
(@CGUID+43, 24484, 1, 1, 1, 1201.608, -4128.668, 23.02083, 0.7853982, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43917 - Brewfest Reveler - Undead)
(@CGUID+44, 23808, 1, 1, 1, 1199.97, -4089.867, 19.89582, 0.707508, 120, 0, 0), -- [DND] Brewfest Keg Move to Target (Area: Durotar)
(@CGUID+45, 24493, 1, 1, 1, 1209.473, -4095.635, 21.57173, 3.979351, 120, 0, 0), -- T'chali's Voodoo Brewery Barker (Area: Durotar) (Auras: )
(@CGUID+46, 24463, 1, 1, 1, 1175.401, -4231.024, 23.13774, 1.225081, 120, 0, 0), -- Swift Racing Ram (Area: Durotar)
(@CGUID+47, 24510, 1, 1, 1, 1183.783, -4219.568, 24.22222, 1.082104, 120, 0, 0), -- Driz Tumblequick (Area: Durotar) (Auras: 44068 - Base Camp Mark)
(@CGUID+48, 24462, 1, 1, 1, 1167.696, -4228.95, 22.19206, 0.840323, 120, 0, 0), -- Racing Ram (Area: Durotar)
(@CGUID+49, 23685, 1, 1, 1, 1212.449, -4119.561, 23.76855, 2.932153, 120, 0, 0), -- Gordok Brew Barker (Area: Durotar) (Auras: )
(@CGUID+50, 24484, 1, 1, 1, 1207.182, -4107.929, 22.34896, 5.637414, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43915 - Brewfest Reveler - Tauren)
(@CGUID+51, 24484, 1, 1, 1, 1201.976, -4096.797, 20.55908, 3.508112, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43914 - Brewfest Reveler - Orc)
(@CGUID+52, 23696, 1, 1, 1, 1214.764, -4123.045, 23.9566, 2.478368, 120, 0, 0), -- Gordok Brew Chief (Area: Durotar)
(@CGUID+53, 23533, 1, 1, 1, 1209.215, -4090.931, 21.28327, 3.944444, 120, 0, 0), -- T'chali's Voodoo Brewery Apprentice (Area: Durotar)
(@CGUID+54, 23488, 1, 1, 1, 1229.113, -4139.306, 25.47239, 2.234021, 120, 0, 0), -- Brewfest Crowd (Area: Durotar)
(@CGUID+55, 24499, 1, 1, 1, 1206.252, -4088.099, 20.83624, 4.258604, 120, 0, 0), -- Ja'ron (Area: Durotar)
(@CGUID+56, 27707, 1, 1, 1, 1169.965, -4236.304, 22.52709, 0.8984495, 120, 0, 0), -- Great Brewfest Kodo (Area: Durotar)
(@CGUID+57, 24766, 1, 1, 1, 1207.184, -4227.684, 22.99848, 3.246312, 120, 0, 0), -- [DND] Brewfest Face Me Bunny (Area: Durotar)
(@CGUID+58, 24484, 1, 1, 1, 1238.547, -4136.215, 41.65269, 1.651419, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+59, 24484, 1, 1, 1, 1237.851, -4127.599, 42.59955, 4.793012, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+60, 23488, 1, 1, 1, 1229.458, -4090.024, 23.11458, 3.124139, 120, 0, 0), -- Brewfest Crowd (Area: Durotar)
(@CGUID+61, 24527, 1, 1, 1, 1332.962, -4638.893, 24.27373, 0.9948376, 120, 0, 0), -- Bok Dropcertain (Area: Durotar) (Auras: 44067 - Supplier Mark)
(@CGUID+62, 24484, 1, 1, 1, 1366.889, -4343.872, 28.69971, 2.066002, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+63, 24484, 1, 1, 1, 1365.394, -4341.104, 28.69971, 5.207595, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+64, 24484, 1, 1, 1, 1363.67, -4344.874, 28.69971, 0.8028514, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+65, 24484, 1, 1, 1, 1362.757, -4341.63, 28.69971, 0.1970039, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+66, 24484, 1, 1, 1, 1358.51, -4338.264, 27.35806, 5.391015, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+67, 24484, 1, 1, 1, 1360.122, -4340.262, 27.82292, 2.249422, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+68, 24484, 1, 1, 1, 1361.25, -4337.616, 28.27951, 4.30928, 120, 0, 0), -- Brewfest Reveler (Area: Durotar) (Auras: 43911 - Brewfest Reveler - Goblin)
(@CGUID+69, 19175, 1, 1, 1, 1614.998, -4402.952, 15.43872, 0.1570796, 120, 0, 0), -- Orc Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+70, 19175, 1, 1, 1, 1616.771, -4402.656, 15.60533, 3.333579, 120, 0, 0), -- Orc Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+71, 19177, 1, 1, 1, 1773.523, -4360.087, 102.4606, 1.291544, 120, 0, 0), -- Troll Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+72, 19177, 1, 1, 1, 1774.47, -4356.316, 102.4248, 4.485496, 120, 0, 0), -- Troll Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+73, 19177, 1, 1, 1, 1580.592, -4192.995, 53.6728, 4.363323, 120, 0, 0), -- Troll Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+74, 19176, 1, 1, 1, 1579.438, -4195.903, 53.73126, 1.151917, 120, 0, 0), -- Tauren Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+75, 19177, 1, 1, 1, 1722.67, -4068.328, 49.18607, 0.715585, 120, 0, 0), -- Troll Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+76, 19177, 1, 1, 1, 1724.26, -4067.033, 49.31904, 3.769911, 120, 0, 0); -- Troll Commoner (Area: Orgrimmar) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget; 33208 - Gossip NPC Periodic - Talk)

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+297;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0,  186189, 1, 1, 1, 1162.292, -4125.667, 22.05271, 2.391098, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+1,  186189, 1, 1, 1, 1186.351, -4162.457, 22.59569, 6.248279, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+2,  186189, 1, 1, 1, 1162.663, -4124.483, 21.9933, 4.590216, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+3,  180037, 1, 1, 1, 1163.54, -4112.903, 20.00529, 3.700105, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+4,  186189, 1, 1, 1, 1162.969, -4125.795, 22.054, 1.239183, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+5,  186189, 1, 1, 1, 1186.582, -4161.349, 22.5721, 4.101525, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+6,  180037, 1, 1, 1, 1160.96, -4116.95, 20.53586, 1.448622, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+7,  180037, 1, 1, 1, 1154.96, -4144.643, 21.2066, 2.809975, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+8,  180037, 1, 1, 1, 1153.578, -4141.007, 21.19898, 4.380776, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+9,  186229, 1, 1, 1, 1154.432, -4156.542, 20.29162, 3.857183, 0, 0, 0, 1, 120, 255, 1), -- BREWFEST (Area: Durotar)
(@OGUID+10, 180698, 1, 1, 1, 1162.526, -4125.135, 20.95932, 1.169369, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+11, 186186, 1, 1, 1, 1167.47, -4116.202, 20.06157, 6.178466, 0, 0, 0, 1, 120, 255, 1), -- Drohn's Distillery Festive Keg (Area: Durotar)
(@OGUID+12, 180698, 1, 1, 1, 1163.661, -4122.28, 20.8516, 4.32842, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+13, 186681, 1, 1, 1, 1178.698, -4170.585, 21.72588, 1.710422, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Durotar)
(@OGUID+14, 186681, 1, 1, 1, 1157.767, -4130.953, 21.27318, 5.724681, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Durotar)
(@OGUID+15, 186189, 1, 1, 1, 1164.158, -4122.186, 21.9197, 2.949595, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+16, 186252, 1, 1, 1, 1152.024, -4142.814, 21.5398, 4.590216, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+17, 186252, 1, 1, 1, 1158.477, -4116.34, 20.51812, 4.520406, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+18, 180749, 1, 1, 1, 1175.273, -4168.577, 22.16676, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Durotar)
(@OGUID+19, 186189, 1, 1, 1, 1162.977, -4122.835, 21.99089, 3.246347, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+20, 186189, 1, 1, 1, 1163.425, -4121.463, 21.9197, 3.054327, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+21, 186189, 1, 1, 1, 1164.083, -4123, 21.95483, 0.4712385, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+22, 186189, 1, 1, 1, 1161.986, -4125.177, 22.03619, 1.431168, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+23, 180353, 1, 1, 1, 1187.729, -4154.596, 21.49498, 2.408554, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+24, 180353, 1, 1, 1, 1161.373, -4134.856, 21.35069, 4.834563, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+25, 180353, 1, 1, 1, 1181.399, -4161.04, 21.54865, 4.834563, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+26, 180353, 1, 1, 1, 1171.319, -4162.441, 21.97743, 5.567601, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+27, 186189, 1, 1, 1, 1189.7, -4159.596, 22.55126, 1.483528, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+28, 186189, 1, 1, 1, 1190.002, -4154.787, 22.65598, 3.700105, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+29, 186682, 1, 1, 1, 1166.573, -4104.804, 18.88715, 5.969027, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Beer Tent (Area: Durotar)
(@OGUID+30, 180698, 1, 1, 1, 1189.946, -4154.203, 21.56183, 5.497789, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+31, 180698, 1, 1, 1, 1186.689, -4162.113, 21.48204, 2.303831, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+32, 180698, 1, 1, 1, 1189.318, -4159.596, 21.41427, 3.944446, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+33, 186189, 1, 1, 1, 1189.063, -4158.853, 22.5478, 4.81711, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+34, 186189, 1, 1, 1, 1189.406, -4160.272, 22.53218, 1.745327, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+35, 180037, 1, 1, 1, 1165.962, -4097.646, 18.31001, 6.161013, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+36, 180353, 1, 1, 1, 1196.776, -4145.948, 21.79974, 1.692969, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+37, 186717, 1, 1, 1, 1173.078, -4101.189, 18.58095, 5.811947, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+38, 186680, 1, 1, 1, 1188.122, -4161.418, 21.58427, 5.497789, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Canopy (Area: Durotar)
(@OGUID+39, 186189, 1, 1, 1, 1190.533, -4153.818, 22.67434, 1.762782, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+40, 186189, 1, 1, 1, 1187.623, -4162.168, 22.59038, 3.909541, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+41, 186189, 1, 1, 1, 1189.002, -4154.228, 22.62299, 1.850049, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+42, 186252, 1, 1, 1, 1189.415, -4173.481, 22.8514, 5.129194, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+43, 180037, 1, 1, 1, 1189.203, -4165.234, 21.74556, 4.136433, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+44, 180749, 1, 1, 1, 1169.28, -4107.168, 19.22845, 2.094393, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Durotar)
(@OGUID+45, 186189, 1, 1, 1, 1187.354, -4161.575, 22.57396, 0.5410506, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+46, 186189, 1, 1, 1, 1189.571, -4153.46, 22.64215, 2.391098, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+47, 186189, 1, 1, 1, 1188.727, -4160.186, 22.51655, 3.665196, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+48, 186189, 1, 1, 1, 1172.257, -4098.749, 19.1679, 4.398232, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+49, 186189, 1, 1, 1, 1171.568, -4098.882, 19.14358, 0.8726639, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+50, 179970, 1, 1, 1, 1174.014, -4092.774, 17.89063, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Durotar)
(@OGUID+51, 180698, 1, 1, 1, 1172.047, -4098.309, 18.02673, 5.881761, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+52, 180037, 1, 1, 1, 1167.04, -4095.097, 17.76287, 1.029743, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+53, 186252, 1, 1, 1, 1200.83, -4162.42, 22.95492, 6.063959, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+54, 186681, 1, 1, 1, 1203.672, -4146.528, 22.13542, 2.316317, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Durotar)
(@OGUID+55, 186252, 1, 1, 1, 1167.542, -4091.236, 18.26023, 4.24115, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+56, 186189, 1, 1, 1, 1171.859, -4098.158, 19.09846, 3.630291, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+57, 186189, 1, 1, 1, 1172.63, -4097.924, 19.12103, 6.0912, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+58, 180037, 1, 1, 1, 1199.089, -4176.109, 23.20567, 0.383971, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+59, 186252, 1, 1, 1, 1198.856, -4179.519, 23.40603, 0.1858179, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+60, 186185, 1, 1, 1, 1208.278, -4133.236, 22.83094, 2.565632, 0, 0, 0, 1, 120, 255, 1), -- Gordok Festive Keg (Area: Durotar)
(@OGUID+61, 180749, 1, 1, 1, 1211.278, -4179.668, 23.89529, 0.9599299, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Durotar)
(@OGUID+62, 180749, 1, 1, 1, 1211.837, -4125.374, 23.55903, 3.036838, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Durotar)
(@OGUID+63, 180037, 1, 1, 1, 1203.816, -4171.488, 23.38345, 4.153885, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+64, 180037, 1, 1, 1, 1213.488, -4132.486, 23.13009, 5.67232, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+65, 180353, 1, 1, 1, 1176.448, -4218.412, 23.35283, 3.595379, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+66, 179970, 1, 1, 1, 1174.59, -4091.538, 17.84028, 2.617989, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Durotar)
(@OGUID+67, 179970, 1, 1, 1, 1175.764, -4090.859, 17.87783, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Durotar)
(@OGUID+68, 186252, 1, 1, 1, 1207.118, -4170.915, 24.33955, 4.607672, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+69, 180353, 1, 1, 1, 1212.345, -4138.17, 22.97396, 3.490667, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+70, 186252, 1, 1, 1, 1214.934, -4151.243, 23.73713, 5.737927, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+71, 179970, 1, 1, 1, 1177.653, -4092.012, 18.02951, 4.834563, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Durotar)
(@OGUID+72, 179970, 1, 1, 1, 1176.859, -4092.951, 18.04568, 3.961899, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Durotar)
(@OGUID+73, 179970, 1, 1, 1, 1175.833, -4093.286, 18.01563, 2.199115, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Durotar)
(@OGUID+74, 186252, 1, 1, 1, 1175.552, -4080.288, 18.35061, 0.6632232, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+75, 186681, 1, 1, 1, 1184.915, -4085.128, 18.21797, 4.852017, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Durotar)
(@OGUID+76, 186717, 1, 1, 1, 1172.896, -4217.665, 22.8744, 1.780234, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+77, 180037, 1, 1, 1, 1212.172, -4135.202, 23.14898, 3.839725, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+78, 179973, 1, 1, 1, 1175.498, -4086.158, 17.7428, 2.82743, 0, 0, 0, 1, 120, 255, 1), -- Inn Barrel (Area: Durotar)
(@OGUID+79, 179973, 1, 1, 1, 1176.016, -4088.189, 17.80035, 0.1047193, 0, 0, 0, 1, 120, 255, 1), -- Inn Barrel (Area: Durotar)
(@OGUID+80, 179973, 1, 1, 1, 1177.417, -4086.594, 17.84794, 5.532695, 0, 0, 0, 1, 120, 255, 1), -- Inn Barrel (Area: Durotar)
(@OGUID+81, 180353, 1, 1, 1, 1213.84, -4152.807, 22.76103, 0.6108634, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+82, 180353, 1, 1, 1, 1183.905, -4091.085, 18.35069, 1.047198, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+83, 186252, 1, 1, 1, 1166.53, -4225.109, 22.90209, 3.630291, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+84, 180037, 1, 1, 1, 1196.549, -4082.128, 19.38479, 3.211419, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+85, 180698, 1, 1, 1, 1215.613, -4116.853, 23.81499, 2.844883, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+86, 186189, 1, 1, 1, 1215.026, -4116.637, 24.92337, 4.607672, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+87, 180037, 1, 1, 1, 1220.146, -4119.405, 24.58892, 2.44346, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+88, 180037, 1, 1, 1, 1221.424, -4117.778, 24.72447, 5.916668, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+89, 180353, 1, 1, 1, 1222.938, -4175.712, 24.06632, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+90, 180353, 1, 1, 1, 1214.113, -4117.646, 23.79053, 2.740162, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+91, 186252, 1, 1, 1, 1221.521, -4141.783, 24.62254, 5.715981, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+92, 186252, 1, 1, 1, 1220.684, -4131.749, 24.89619, 4.206246, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+93, 180698, 1, 1, 1, 1192.101, -4083.911, 18.80872, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+94, 186252, 1, 1, 1, 1188.957, -4076.316, 19.38857, 6.19592, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+95, 180037, 1, 1, 1, 1201.901, -4088.207, 20.35022, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+96, 180353, 1, 1, 1, 1182.712, -4221.946, 24.04861, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+97, 186717, 1, 1, 1, 1217.877, -4116.762, 24.26042, 2.984498, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+98, 186682, 1, 1, 1, 1215.611, -4125.455, 23.46921, 2.705255, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Beer Tent (Area: Durotar)
(@OGUID+99, 186252, 1, 1, 1, 1163.165, -4236.194, 22.55503, 5.026549, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+100, 186189, 1, 1, 1, 1191.908, -4084.554, 19.8605, 0.7504908, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+101, 186189, 1, 1, 1, 1215.568, -4117.179, 24.91469, 5.567601, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+102, 186189, 1, 1, 1, 1216.585, -4116.908, 24.92835, 0.2792516, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+103, 186187, 1, 1, 1, 1198.163, -4086.488, 19.23897, 4.398232, 0, 0, 0, 1, 120, 255, 1), -- T'chali's Voodoo Brew Festive Keg (Area: Durotar)
(@OGUID+104, 186709, 1, 1, 1, 1186.977, -4226.472, 25.21957, 0.9773831, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Durotar)
(@OGUID+105, 186709, 1, 1, 1, 1183.873, -4224.344, 24.94407, 0.8901166, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Durotar)
(@OGUID+106, 186709, 1, 1, 1, 1185.399, -4225.5, 25.07382, 0.9250238, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Durotar)
(@OGUID+107, 186680, 1, 1, 1, 1177.599, -4223.518, 22.93285, 1.029743, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Canopy (Area: Durotar)
(@OGUID+108, 186189, 1, 1, 1, 1216.082, -4116.26, 24.90165, 2.234018, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+109, 186717, 1, 1, 1, 1218.252, -4108.524, 23.54216, 3.246347, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+110, 180353, 1, 1, 1, 1222.688, -4141.073, 24.19731, 2.617989, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+111, 180353, 1, 1, 1, 1227.38, -4159.139, 24.25072, 0.05235888, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+112, 186189, 1, 1, 1, 1192.627, -4084.627, 19.93342, 3.68265, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+113, 186189, 1, 1, 1, 1192.583, -4084.061, 19.91093, 0.2792516, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+114, 186189, 1, 1, 1, 1192.304, -4083.42, 19.8657, 2.967041, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+115, 180353, 1, 1, 1, 1217.165, -4109.021, 23.70313, 5.585054, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+116, 180353, 1, 1, 1, 1210.517, -4094.943, 21.57292, 3.246347, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+117, 186252, 1, 1, 1, 1181.547, -4233.99, 24.68378, 1.53589, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+118, 186189, 1, 1, 1, 1216.505, -4095.924, 23.13636, 5.759588, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+119, 186717, 1, 1, 1, 1336.016, -4365.609, 26.711, 5.462882, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+120, 186717, 1, 1, 1, 1216.644, -4100.559, 22.75926, 3.665196, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+121, 179975, 1, 1, 1, 1167.644, -4241.037, 22.44431, 5.811947, 0, 0, 0, 1, 120, 255, 1), -- Water Trough Small (Area: Durotar)
(@OGUID+122, 180698, 1, 1, 1, 1215.884, -4095.212, 22.01696, 5.811947, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+123, 186189, 1, 1, 1, 1215.254, -4095.698, 23.12354, 3.508117, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+124, 186189, 1, 1, 1, 1216.931, -4094.993, 23.10163, 3.403396, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+125, 186189, 1, 1, 1, 1215.323, -4095.014, 23.11111, 4.084071, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+126, 186252, 1, 1, 1, 1227.724, -4157.139, 24.8812, 6.03884, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+127, 186252, 1, 1, 1, 1225.983, -4093.2, 23.64176, 2.268925, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+128, 186252, 1, 1, 1, 1215.477, -4083.882, 22.75924, 5.619962, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+129, 186252, 1, 1, 1, 1229.899, -4105.236, 24.95628, 4.537859, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+130, 186252, 1, 1, 1, 1202.818, -4077.88, 20.95584, 6.0912, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+131, 186252, 1, 1, 1, 1226.885, -4119.118, 25.34722, 1.221729, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+132, 186717, 1, 1, 1, 1227.339, -4433.462, 24.40195, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+133, 186714, 1, 1, 1, 1222.384, -4103.804, 22.66798, 2.530723, 0, 0, 0, 1, 120, 255, 1), -- Shoutbox (Area: Durotar)
(@OGUID+134, 186717, 1, 1, 1, 1100.76, -4429.736, 20.56441, 2.216565, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+135, 186717, 1, 1, 1, 1362.391, -4353.755, 26.78416, 4.76475, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+136, 186717, 1, 1, 1, 1305.785, -4408.33, 25.85153, 4.97419, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+137, 186680, 1, 1, 1, 1367.2, -4341.962, 28.61637, 3.368496, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Canopy (Area: Durotar)
(@OGUID+138, 186717, 1, 1, 1, 1161.778, -4398.226, 25.27202, 4.572764, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+139, 186717, 1, 1, 1, 1187.47, -4228.497, 24.54514, 0.03490625, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+140, 186717, 1, 1, 1, 1213.752, -4094.228, 21.89984, 3.909541, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+141, 186717, 1, 1, 1, 1165.446, -4244.052, 22.40336, 0.8901166, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+142, 186682, 1, 1, 1, 1208.793, -4088.248, 20.92865, 4.153885, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Beer Tent (Area: Durotar)
(@OGUID+143, 186252, 1, 1, 1, 1235.432, -4147.135, 26.34798, 6.161013, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+144, 186252, 1, 1, 1, 1173.67, -4242.922, 24.01151, 3.298687, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Durotar)
(@OGUID+145, 180037, 1, 1, 1, 1174.106, -4239.396, 23.05208, 3.298687, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+146, 180353, 1, 1, 1, 1215.382, -4101.462, 22.77083, 3.228859, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+147, 186173, 1, 1, 1, 1219.582, -4104.963, 24.99313, 1.762782, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Keg Breakable (Area: Durotar)
(@OGUID+148, 186717, 1, 1, 1, 1308.472, -4448.674, 26.03033, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+149, 180037, 1, 1, 1, 1245.139, -4147.146, 26.95318, 3.194002, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+150, 180006, 1, 1, 1, 1246.729, -4156.728, 26.54697, 2.740162, 0, 0, 0, 1, 120, 255, 1), -- Outhouse (Area: Durotar)
(@OGUID+151, 180037, 1, 1, 1, 1244.34, -4166.113, 26.59611, 0.3490652, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+152, 180037, 1, 1, 1, 1237.472, -4161.811, 25.76779, 5.707228, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+153, 180006, 1, 1, 1, 1243.181, -4162.17, 26.23796, 2.530723, 0, 0, 0, 1, 120, 255, 1), -- Outhouse (Area: Durotar)
(@OGUID+154, 180353, 1, 1, 1, 1235.771, -4143.17, 26.2977, 3.455756, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Durotar)
(@OGUID+155, 180006, 1, 1, 1, 1248.582, -4151.222, 26.71534, 3.071766, 0, 0, 0, 1, 120, 255, 1), -- Outhouse (Area: Durotar)
(@OGUID+156, 180037, 1, 1, 1, 1252.063, -4148.179, 26.90179, 1.902409, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+157, 180037, 1, 1, 1, 1248.557, -4161.566, 26.93834, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Durotar)
(@OGUID+158, 186717, 1, 1, 1, 1318.333, -4549.207, 22.76087, 4.747296, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+159, 186717, 1, 1, 1, 1314.639, -4599.167, 23.74962, 5.166176, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+160, 186717, 1, 1, 1, 1329.559, -4637.971, 23.95576, 0.9948372, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+161, 186717, 1, 1, 1, 1336.05, -4640.563, 24.45139, 1.221729, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Durotar)
(@OGUID+162, 195260, 1, 1, 1, 1286.17, -4333.47, 35.695, 4.76475, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Durotar)
(@OGUID+163, 195265, 1, 1, 1, 1312.39, -4325.31, 32.4768, 5.288348, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Durotar)
(@OGUID+164, 195265, 1, 1, 1, 1311.35, -4324.43, 32.7334, 5.288348, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Durotar)
(@OGUID+165, 195264, 1, 1, 1, 1309.82, -4324.27, 33.9393, 5.637414, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Durotar)
(@OGUID+166, 195266, 1, 1, 1, 1297.54, -4337.66, 38.1259, 0.1396245, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Durotar)
(@OGUID+167, 195256, 1, 1, 1, 1304.6, -4345.02, 32.9993, 0.6283169, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Durotar)
(@OGUID+168, 195260, 1, 1, 1, 1289.8, -4344.31, 35.5078, 4.76475, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Durotar)
(@OGUID+169, 195256, 1, 1, 1, 1301.57, -4330.3, 33.0354, 5.794494, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Durotar)
(@OGUID+170, 186709, 1, 1, 1, 1329.049, -4646.385, 24.1446, 5.881761, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Durotar)
(@OGUID+171, 186709, 1, 1, 1, 1328.127, -4638.568, 24.43429, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Durotar)
(@OGUID+172, 186709, 1, 1, 1, 1334.622, -4648.49, 24.75111, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Durotar)
(@OGUID+173, 186189, 1, 1, 1, 1367.382, -4342.616, 29.55398, 2.007128, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+174, 180698, 1, 1, 1, 1367.361, -4341.856, 28.45964, 3.839725, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Durotar)
(@OGUID+175, 186189, 1, 1, 1, 1368.092, -4342.213, 29.45188, 1.343901, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+176, 186189, 1, 1, 1, 1367.842, -4341.304, 29.44495, 1.640607, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+177, 186189, 1, 1, 1, 1367.559, -4341.842, 29.53806, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Durotar)
(@OGUID+178, 195265, 1, 1, 1, 1461.62, -4412.87, 25.3307, 6.265733, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+179, 195273, 1, 1, 1, 1443.443, -4367.59, 29.6701, 3.231614, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+180, 195273, 1, 1, 1, 1442.51, -4359.335, 29.7922, 3.351047, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+181, 195265, 1, 1, 1, 1438.06, -4360.26, 25.3141, 6.265733, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+182, 195273, 1, 1, 1, 1422.774, -4420.733, 29.58182, 0.2389043, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+183, 195265, 1, 1, 1, 1431.02, -4429.32, 25.3084, 0.6981314, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+184, 195273, 1, 1, 1, 1423.818, -4428.922, 29.56695, 0.1689689, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+185, 195265, 1, 1, 1, 1440.91, -4431.95, 25.3092, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+186, 195265, 1, 1, 1, 1430.48, -4426.53, 25.3069, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+187, 195260, 1, 1, 1, 1511, -4353.71, 21.8799, 5.742135, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+188, 195260, 1, 1, 1, 1514.98, -4347.08, 21.8799, 5.742135, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+189, 195260, 1, 1, 1, 1519.73, -4346.31, 21.8991, 4.502952, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+190, 195273, 1, 1, 1, 1537.53, -4371.99, 26.2845, 4.97419, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+191, 186717, 1, 1, 1, 1610.788, -4175.733, 50.69487, 3.717554, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+192, 186717, 1, 1, 1, 1566.519, -4409.335, 16.26762, 2.722713, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+193, 186717, 1, 1, 1, 1563.807, -4394.624, 16.38291, 3.752462, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+194, 186717, 1, 1, 1, 1600.594, -4160.323, 49.77016, 4.223697, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+195, 195256, 1, 1, 1, 1546.19, -4358.04, 18.0411, 5.864307, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+196, 195256, 1, 1, 1, 1543.31, -4363.78, 20.5475, 4.991644, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+197, 195256, 1, 1, 1, 1537.75, -4375.94, 17.675, 5.061456, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+198, 186717, 1, 1, 1, 1610.016, -4152.147, 49.28722, 0.6806767, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+199, 186717, 1, 1, 1, 1585.036, -4400.337, 15.98898, 3.176533, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+200, 195256, 1, 1, 1, 1617.39, -4414.44, 14.8831, 1.658062, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+201, 195256, 1, 1, 1, 1607.73, -4383.83, 20.7904, 3.630291, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+202, 195256, 1, 1, 1, 1569.382, -4382.37, 16.33681, 4.01426, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+203, 195263, 1, 1, 1, 1611.72, -4426.97, 18.535, 1.727875, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+204, 195263, 1, 1, 1, 1619.52, -4419.09, 18.1349, 3.019413, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+205, 195253, 1, 1, 1, 1616.55, -4423.98, 27.1833, 2.35619, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+206, 195266, 1, 1, 1, 1568.66, -4430.4, 22.4667, 1.762782, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Orgrimmar)
(@OGUID+207, 195266, 1, 1, 1, 1572.11, -4429.4, 22.3762, 1.902409, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Orgrimmar)
(@OGUID+208, 195273, 1, 1, 1, 1577.89, -4432.95, 19.1578, 1.413715, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+209, 195273, 1, 1, 1, 1565.72, -4436.29, 19.3699, 2.460913, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+210, 195256, 1, 1, 1, 1563.94, -4429.79, 14.3131, 1.553341, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+211, 195260, 1, 1, 1, 1639.224, -4444.653, 18.51654, 5.358162, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+212, 195260, 1, 1, 1, 1642.95, -4446.1, 26.2784, 2.146753, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+213, 195260, 1, 1, 1, 1582.68, -4460.99, 23.1665, 1.780234, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+214, 195260, 1, 1, 1, 1583.29, -4463.08, 17.241, 1.797689, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+215, 195260, 1, 1, 1, 1635.714, -4448.338, 18.51783, 2.286379, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+216, 195260, 1, 1, 1, 1576.56, -4462.54, 23.1665, 1.832595, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+217, 195256, 1, 1, 1, 1556.81, -4331.15, 22.687, 5.759588, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+218, 195273, 1, 1, 1, 1663.82, -4433.52, 24.727, 2.844883, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+219, 195273, 1, 1, 1, 1670.95, -4423.82, 25.0509, 2.146753, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+220, 195260, 1, 1, 1, 1577.53, -4464.76, 17.2691, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+221, 195260, 1, 1, 1, 1580.1, -4464.06, 17.2387, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+222, 195256, 1, 1, 1, 1662.05, -4339.31, 63.585, 6.073746, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+223, 195253, 1, 1, 1, 1586.6, -4311.75, 28.1846, 4.747296, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+224, 195256, 1, 1, 1, 1668.09, -4351.07, 63.585, 1.134463, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+225, 195256, 1, 1, 1, 1593.26, -4310.62, 20.6237, 4.956738, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+226, 186717, 1, 1, 1, 1929.738, -4283.722, 26.04098, 4.433136, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+227, 195273, 1, 1, 1, 1665.35, -4338.9, 69.0835, 0.4712385, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+228, 186717, 1, 1, 1, 1932.47, -4270.884, 28.41197, 4.433136, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+229, 195273, 1, 1, 1, 1670.54, -4347.97, 69.057, 0.5235979, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+230, 195253, 1, 1, 1, 1667.93, -4343.41, 73.0142, 0.5235979, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+231, 186717, 1, 1, 1, 1908.151, -4279.316, 27.85269, 2.722713, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+232, 186717, 1, 1, 1, 1910.431, -4264.191, 29.54248, 3.211419, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+233, 195256, 1, 1, 1, 1738.08, -4399.5, 36.5337, 3.228859, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+234, 195263, 1, 1, 1, 1753.66, -4387.6, 44.4203, 2.164206, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+235, 195256, 1, 1, 1, 1747.04, -4412.49, 36.9625, 4.32842, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+236, 195263, 1, 1, 1, 1747.46, -4391.86, 44.4295, 2.164206, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+237, 195263, 1, 1, 1, 1756.81, -4405.87, 44.3153, 5.410522, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+238, 195263, 1, 1, 1, 1763.08, -4401.58, 44.2932, 5.323256, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+239, 195253, 1, 1, 1, 1799.31, -4370.67, 107.968, 1.029743, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+240, 186717, 1, 1, 1, 1936.205, -4670.528, 33.31038, 2.007128, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+241, 186717, 1, 1, 1, 1917.964, -4672.924, 34.47301, 1.396262, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+242, 186717, 1, 1, 1, 1941.819, -4696.866, 35.99006, 1.989672, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Orgrimmar)
(@OGUID+243, 195256, 1, 1, 1, 1869.7, -4520.36, 24.5879, 3.38594, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+244, 195273, 1, 1, 1, 1934.88, -4594.59, 41.6132, 2.111848, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+245, 195273, 1, 1, 1, 1888.52, -4600.31, 41.4436, 5.358162, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+246, 195273, 1, 1, 1, 1999.17, -4668.81, 30.5471, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+247, 195256, 1, 1, 1, 1904.03, -4673.02, 35.3935, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+248, 195273, 1, 1, 1, 2034.51, -4670.44, 34.9736, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+249, 195253, 1, 1, 1, 2037.28, -4676.05, 42.3894, 3.525572, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+250, 195273, 1, 1, 1, 1900.76, -4678.78, 39.0823, 5.585054, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+251, 195263, 1, 1, 1, 1900.32, -4687.98, 39.1395, 0.7679439, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+252, 195273, 1, 1, 1, 2038.8, -4681.95, 35.0789, 2.932139, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+253, 195273, 1, 1, 1, 1907.4, -4380.61, 46.3477, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+254, 195273, 1, 1, 1, 1900.04, -4382.09, 46.428, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+255, 195273, 1, 1, 1, 1886.2, -4281.51, 28.7554, 4.06662, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+256, 195273, 1, 1, 1, 1904.11, -4364.18, 46.0628, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+257, 195273, 1, 1, 1, 1896.69, -4365.69, 46.2012, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+258, 195273, 1, 1, 1, 1860.77, -4291.64, 31.619, 0.05235888, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+259, 195263, 1, 1, 1, 1917.9, -4231.13, 39.3524, 1.186823, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+260, 195266, 1, 1, 1, 1919.79, -4232.33, 42.3856, 1.082103, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Orgrimmar)
(@OGUID+261, 195256, 1, 1, 1, 1916.9, -4227.49, 37.0792, 0.8552105, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+262, 195273, 1, 1, 1, 1747.47, -4198.38, 54.296, 4.450591, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+263, 195273, 1, 1, 1, 1700.5, -4275.99, 37.3166, 3.874631, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+264, 195273, 1, 1, 1, 1695.14, -4271.15, 37.3081, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+265, 195256, 1, 1, 1, 1642.97, -4230.48, 52.0428, 4.101525, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+266, 195263, 1, 1, 1, 1600.01, -4210.42, 57.4412, 5.323256, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+267, 195256, 1, 1, 1, 1707.42, -4308.01, 31.2276, 5.480334, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+268, 195263, 1, 1, 1, 1583.82, -4223.69, 57.41, 5.497789, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+269, 195256, 1, 1, 1, 1574.01, -4217.67, 53.821, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+270, 195266, 1, 1, 1, 1577.35, -4151.89, 55.8239, 4.01426, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Orgrimmar)
(@OGUID+271, 195256, 1, 1, 1, 1582.07, -4155.17, 51.7481, 4.66003, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+272, 195256, 1, 1, 1, 1593.17, -4162.67, 51.7461, 5.340709, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+273, 195256, 1, 1, 1, 1583.23, -4173.9, 51.7481, 0.1745321, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+274, 195256, 1, 1, 1, 1535.88, -4203.01, 52.8145, 1.06465, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+275, 195253, 1, 1, 1, 1640.07, -4121.75, 67.0279, 3.438303, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+276, 195260, 1, 1, 1, 1730, -4078.51, 71.4373, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+277, 195256, 1, 1, 1, 1727.25, -4065.76, 49.2647, 2.076939, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+278, 195273, 1, 1, 1, 1709.2, -4085.52, 51.6926, 2.897245, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+279, 195253, 1, 1, 1, 1734.69, -4078.68, 58.7363, 1.902409, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Orgrimmar)
(@OGUID+280, 195265, 1, 1, 1, 1737.41, -4069.72, 48.4278, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+281, 195273, 1, 1, 1, 1740.31, -4076.71, 55.632, 1.937312, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+282, 195260, 1, 1, 1, 1741.14, -4080.51, 69.1055, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+283, 195260, 1, 1, 1, 1728.76, -4081.26, 71.3519, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+284, 195260, 1, 1, 1, 1742.61, -4084.45, 69.1054, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Orgrimmar)
(@OGUID+285, 195273, 1, 1, 1, 1729.18, -4080.59, 56.016, 1.937312, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Orgrimmar)
(@OGUID+286, 195265, 1, 1, 1, 1738.93, -4070.35, 49.3566, 0.3141584, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+287, 195265, 1, 1, 1, 1739.49, -4068.92, 48.1075, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Orgrimmar)
(@OGUID+288, 195265, 1, 1, 1, 1738.97, -4070.38, 48.1077, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- Standing; Large - Brewfest (Area: Orgrimmar)
(@OGUID+289, 186331, 1, 1, 1, 1177.543, -4237.952, 23.5727, 1.082103, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+290, 186331, 1, 1, 1, 1217.222, -4090.111, 21.98721, 5.515242, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+291, 186331, 1, 1, 1, 1169.443, -4096.717, 17.99499, 4.468043, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+293, 186331, 1, 1, 1, 1215.594, -4134.337, 23.4429, 0.9773831, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+294, 186331, 1, 1, 1, 1177.543, -4237.952, 23.5727, 1.082103, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+295, 186331, 1, 1, 1, 1210.561, -4333.396, 21.27718, 2.391098, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+296, 186331, 1, 1, 1, 1315.767, -4651.978, 21.71007, 5.148723, 0, 0, 0, 1, 120, 255, 1), -- Apple Trap (Area: -Unknown-)
(@OGUID+297, 186331, 1, 1, 1, 1327.163, -4557.806, 26.31773, 6.03884, 0, 0, 0, 1, 120, 255, 1); -- Apple Trap (Area: -Unknown-)

DELETE FROM `game_event_creature` WHERE `eventEntry`=24 AND `guid` BETWEEN @CGUID+0 AND @CGUID+76;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(24, @CGUID+0),
(24, @CGUID+1),
(24, @CGUID+2),
(24, @CGUID+3),
(24, @CGUID+4),
(24, @CGUID+5),
(24, @CGUID+6),
(24, @CGUID+7),
(24, @CGUID+8),
(24, @CGUID+9),
(24, @CGUID+10),
(24, @CGUID+11),
(24, @CGUID+12),
(24, @CGUID+13),
(24, @CGUID+14),
(24, @CGUID+15),
(24, @CGUID+16),
(24, @CGUID+17),
(24, @CGUID+18),
(24, @CGUID+19),
(24, @CGUID+20),
(24, @CGUID+21),
(24, @CGUID+22),
(24, @CGUID+23),
(24, @CGUID+24),
(24, @CGUID+25),
(24, @CGUID+26),
(24, @CGUID+27),
(24, @CGUID+28),
(24, @CGUID+29),
(24, @CGUID+30),
(24, @CGUID+31),
(24, @CGUID+32),
(24, @CGUID+33),
(24, @CGUID+34),
(24, @CGUID+35),
(24, @CGUID+36),
(24, @CGUID+37),
(24, @CGUID+38),
(24, @CGUID+39),
(24, @CGUID+40),
(24, @CGUID+41),
(24, @CGUID+42),
(24, @CGUID+43),
(24, @CGUID+44),
(24, @CGUID+45),
(24, @CGUID+46),
(24, @CGUID+47),
(24, @CGUID+48),
(24, @CGUID+49),
(24, @CGUID+50),
(24, @CGUID+51),
(24, @CGUID+52),
(24, @CGUID+53),
(24, @CGUID+54),
(24, @CGUID+55),
(24, @CGUID+56),
(24, @CGUID+57),
(24, @CGUID+58),
(24, @CGUID+59),
(24, @CGUID+60),
(24, @CGUID+61),
(24, @CGUID+62),
(24, @CGUID+63),
(24, @CGUID+64),
(24, @CGUID+65),
(24, @CGUID+66),
(24, @CGUID+67),
(24, @CGUID+68),
(24, @CGUID+69),
(24, @CGUID+70),
(24, @CGUID+71),
(24, @CGUID+72),
(24, @CGUID+73),
(24, @CGUID+74),
(24, @CGUID+75),
(24, @CGUID+76);

DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+297 AND `eventEntry`=24;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(24, @OGUID+0),
(24, @OGUID+1),
(24, @OGUID+2),
(24, @OGUID+3),
(24, @OGUID+4),
(24, @OGUID+5),
(24, @OGUID+6),
(24, @OGUID+7),
(24, @OGUID+8),
(24, @OGUID+9),
(24, @OGUID+10),
(24, @OGUID+11),
(24, @OGUID+12),
(24, @OGUID+13),
(24, @OGUID+14),
(24, @OGUID+15),
(24, @OGUID+16),
(24, @OGUID+17),
(24, @OGUID+18),
(24, @OGUID+19),
(24, @OGUID+20),
(24, @OGUID+21),
(24, @OGUID+22),
(24, @OGUID+23),
(24, @OGUID+24),
(24, @OGUID+25),
(24, @OGUID+26),
(24, @OGUID+27),
(24, @OGUID+28),
(24, @OGUID+29),
(24, @OGUID+30),
(24, @OGUID+31),
(24, @OGUID+32),
(24, @OGUID+33),
(24, @OGUID+34),
(24, @OGUID+35),
(24, @OGUID+36),
(24, @OGUID+37),
(24, @OGUID+38),
(24, @OGUID+39),
(24, @OGUID+40),
(24, @OGUID+41),
(24, @OGUID+42),
(24, @OGUID+43),
(24, @OGUID+44),
(24, @OGUID+45),
(24, @OGUID+46),
(24, @OGUID+47),
(24, @OGUID+48),
(24, @OGUID+49),
(24, @OGUID+50),
(24, @OGUID+51),
(24, @OGUID+52),
(24, @OGUID+53),
(24, @OGUID+54),
(24, @OGUID+55),
(24, @OGUID+56),
(24, @OGUID+57),
(24, @OGUID+58),
(24, @OGUID+59),
(24, @OGUID+60),
(24, @OGUID+61),
(24, @OGUID+62),
(24, @OGUID+63),
(24, @OGUID+64),
(24, @OGUID+65),
(24, @OGUID+66),
(24, @OGUID+67),
(24, @OGUID+68),
(24, @OGUID+69),
(24, @OGUID+70),
(24, @OGUID+71),
(24, @OGUID+72),
(24, @OGUID+73),
(24, @OGUID+74),
(24, @OGUID+75),
(24, @OGUID+76),
(24, @OGUID+77),
(24, @OGUID+78),
(24, @OGUID+79),
(24, @OGUID+80),
(24, @OGUID+81),
(24, @OGUID+82),
(24, @OGUID+83),
(24, @OGUID+84),
(24, @OGUID+85),
(24, @OGUID+86),
(24, @OGUID+87),
(24, @OGUID+88),
(24, @OGUID+89),
(24, @OGUID+90),
(24, @OGUID+91),
(24, @OGUID+92),
(24, @OGUID+93),
(24, @OGUID+94),
(24, @OGUID+95),
(24, @OGUID+96),
(24, @OGUID+97),
(24, @OGUID+98),
(24, @OGUID+99),
(24, @OGUID+100),
(24, @OGUID+101),
(24, @OGUID+102),
(24, @OGUID+103),
(24, @OGUID+104),
(24, @OGUID+105),
(24, @OGUID+106),
(24, @OGUID+107),
(24, @OGUID+108),
(24, @OGUID+109),
(24, @OGUID+110),
(24, @OGUID+111),
(24, @OGUID+112),
(24, @OGUID+113),
(24, @OGUID+114),
(24, @OGUID+115),
(24, @OGUID+116),
(24, @OGUID+117),
(24, @OGUID+118),
(24, @OGUID+119),
(24, @OGUID+120),
(24, @OGUID+121),
(24, @OGUID+122),
(24, @OGUID+123),
(24, @OGUID+124),
(24, @OGUID+125),
(24, @OGUID+126),
(24, @OGUID+127),
(24, @OGUID+128),
(24, @OGUID+129),
(24, @OGUID+130),
(24, @OGUID+131),
(24, @OGUID+132),
(24, @OGUID+133),
(24, @OGUID+134),
(24, @OGUID+135),
(24, @OGUID+136),
(24, @OGUID+137),
(24, @OGUID+138),
(24, @OGUID+139),
(24, @OGUID+140),
(24, @OGUID+141),
(24, @OGUID+142),
(24, @OGUID+143),
(24, @OGUID+144),
(24, @OGUID+145),
(24, @OGUID+146),
(24, @OGUID+147),
(24, @OGUID+148),
(24, @OGUID+149),
(24, @OGUID+150),
(24, @OGUID+151),
(24, @OGUID+152),
(24, @OGUID+153),
(24, @OGUID+154),
(24, @OGUID+155),
(24, @OGUID+156),
(24, @OGUID+157),
(24, @OGUID+158),
(24, @OGUID+159),
(24, @OGUID+160),
(24, @OGUID+161),
(24, @OGUID+162),
(24, @OGUID+163),
(24, @OGUID+164),
(24, @OGUID+165),
(24, @OGUID+166),
(24, @OGUID+167),
(24, @OGUID+168),
(24, @OGUID+169),
(24, @OGUID+170),
(24, @OGUID+171),
(24, @OGUID+172),
(24, @OGUID+173),
(24, @OGUID+174),
(24, @OGUID+175),
(24, @OGUID+176),
(24, @OGUID+177),
(24, @OGUID+178),
(24, @OGUID+179),
(24, @OGUID+180),
(24, @OGUID+181),
(24, @OGUID+182),
(24, @OGUID+183),
(24, @OGUID+184),
(24, @OGUID+185),
(24, @OGUID+186),
(24, @OGUID+187),
(24, @OGUID+188),
(24, @OGUID+189),
(24, @OGUID+190),
(24, @OGUID+191),
(24, @OGUID+192),
(24, @OGUID+193),
(24, @OGUID+194),
(24, @OGUID+195),
(24, @OGUID+196),
(24, @OGUID+197),
(24, @OGUID+198),
(24, @OGUID+199),
(24, @OGUID+200),
(24, @OGUID+201),
(24, @OGUID+202),
(24, @OGUID+203),
(24, @OGUID+204),
(24, @OGUID+205),
(24, @OGUID+206),
(24, @OGUID+207),
(24, @OGUID+208),
(24, @OGUID+209),
(24, @OGUID+210),
(24, @OGUID+211),
(24, @OGUID+212),
(24, @OGUID+213),
(24, @OGUID+214),
(24, @OGUID+215),
(24, @OGUID+216),
(24, @OGUID+217),
(24, @OGUID+218),
(24, @OGUID+219),
(24, @OGUID+220),
(24, @OGUID+221),
(24, @OGUID+222),
(24, @OGUID+223),
(24, @OGUID+224),
(24, @OGUID+225),
(24, @OGUID+226),
(24, @OGUID+227),
(24, @OGUID+228),
(24, @OGUID+229),
(24, @OGUID+230),
(24, @OGUID+231),
(24, @OGUID+232),
(24, @OGUID+233),
(24, @OGUID+234),
(24, @OGUID+235),
(24, @OGUID+236),
(24, @OGUID+237),
(24, @OGUID+238),
(24, @OGUID+239),
(24, @OGUID+240),
(24, @OGUID+241),
(24, @OGUID+242),
(24, @OGUID+243),
(24, @OGUID+244),
(24, @OGUID+245),
(24, @OGUID+246),
(24, @OGUID+247),
(24, @OGUID+248),
(24, @OGUID+249),
(24, @OGUID+250),
(24, @OGUID+251),
(24, @OGUID+252),
(24, @OGUID+253),
(24, @OGUID+254),
(24, @OGUID+255),
(24, @OGUID+256),
(24, @OGUID+257),
(24, @OGUID+258),
(24, @OGUID+259),
(24, @OGUID+260),
(24, @OGUID+261),
(24, @OGUID+262),
(24, @OGUID+263),
(24, @OGUID+264),
(24, @OGUID+265),
(24, @OGUID+266),
(24, @OGUID+267),
(24, @OGUID+268),
(24, @OGUID+269),
(24, @OGUID+270),
(24, @OGUID+271),
(24, @OGUID+272),
(24, @OGUID+273),
(24, @OGUID+274),
(24, @OGUID+275),
(24, @OGUID+276),
(24, @OGUID+277),
(24, @OGUID+278),
(24, @OGUID+279),
(24, @OGUID+280),
(24, @OGUID+281),
(24, @OGUID+282),
(24, @OGUID+283),
(24, @OGUID+284),
(24, @OGUID+285),
(24, @OGUID+286),
(24, @OGUID+287),
(24, @OGUID+288),
(24, @OGUID+289),
(24, @OGUID+290),
(24, @OGUID+291),
(24, @OGUID+293),
(24, @OGUID+294),
(24, @OGUID+295),
(24, @OGUID+296),
(24, @OGUID+297);


DELETE FROM `creature_template_addon` WHERE `entry` IN (24527, 24510, 24497, 24766, 24109, 24108, 24463, 27707, 24462, 24711, 23606, 23605, 24501, 23808, 24657, 23488, 24492, 23511, 23703, 24498, 23685, 23603, 23696, 24493, 24495, 23604, 23533, 24499, 23706);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(24527, 0, 0x0, 0x101, '44067'), -- Bok Dropcertain - Supplier Mark
(24510, 0, 0x0, 0x1, '44068'), -- Driz Tumblequick - Base Camp Mark
(24497, 0, 0x0, 0x1, ''), -- Ram Master Ray
(24766, 0, 0x0, 0x1, ''), -- [DND] Brewfest Face Me Bunny
(24109, 0, 0x0, 0x1, ''), -- [DND] Brewfest Target Dummy Move To Target
(24108, 0, 0x0, 0x1, ''), -- Self-Turning and Oscillating Utility Target
(24463, 0, 0x0, 0x1, ''), -- Swift Racing Ram
(27707, 0, 0x0, 0x1, ''), -- Great Brewfest Kodo
(24462, 0, 0x0, 0x1, ''), -- Racing Ram
(24711, 0, 0x0, 0x1, ''), -- Tapper Swindlekeg
(23606, 0, 0x0, 0x1, ''), -- Suntouched Apprentice
(23605, 0, 0x0, 0x1, ''), -- Bron
(24501, 0, 0x0, 0x1, ''), -- Drohn's Distillery Apprentice
(23808, 0, 0x0, 0x1, ''), -- [DND] Brewfest Keg Move to Target
(24657, 0, 0x0, 0x1, ''), -- Glodrak Huntsniper
(23488, 0, 0x0, 0x1, ''), -- Brewfest Crowd
(24492, 0, 0x0, 0x1, ''), -- Drohn's Distillery Barker
(23511, 0, 0x0, 0x101, ''), -- Gordok Brew Apprentice
(23703, 0, 0x0, 0x1, ''), -- [DND] Brewfest Dark Iron Event Generator
(24498, 0, 0x0, 0x1, ''), -- Cort Gorestein
(23685, 0, 0x0, 0x101, ''), -- Gordok Brew Barker
(23603, 0, 0x0, 0x1, ''), -- Uta Roughdough
(23696, 0, 0x0, 0x101, ''), -- Gordok Brew Chief
(24493, 0, 0x0, 0x1, ''), -- T'chali's Voodoo Brewery Barker
(24495, 0, 0x0, 0x1, ''), -- Blix Fixwidget
(23604, 0, 0x0, 0x1, ''), -- Agnes Farwithers
(23533, 0, 0x0, 0x1, ''), -- T'chali's Voodoo Brewery Apprentice
(24499, 0, 0x0, 0x1, ''), -- Ja'ron
(23706, 0, 0x0, 0x1, ''); -- Gordok Festive Keg

DELETE FROM `npc_vendor` WHERE `entry` IN (23533, 23603, 23604, 23605, 23606, 24495, 24501, 23511);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `ExtendedCost`, `Type`) VALUES
-- 23533 (T'chali's Voodoo Brewery Apprentice)
(23533, 34020, 1, 0, 0, 1), -- Jungle River Water
(23533, 34021, 2, 0, 0, 1), -- Brewdoo Magic
(23533, 34022, 3, 0, 0, 1), -- Stout Shrunken Head
(23533, 46401, 4, 0, 0, 1), -- Crimson Stripe
-- 23603 (Uta Roughdough)
(23603, 33043, 1, 0, 0, 1), -- The Essential Brewfest Pretzel
(23603, 4540, 2, 0, 0, 1), -- Tough Hunk of Bread
(23603, 4541, 3, 0, 0, 1), -- Freshly Baked Bread
(23603, 4542, 4, 0, 0, 1), -- Moist Cornbread
(23603, 4544, 5, 0, 0, 1), -- Mulgore Spice Bread
(23603, 4601, 6, 0, 0, 1), -- Soft Banana Bread
(23603, 8950, 7, 0, 0, 1), -- Homemade Cherry Pie
(23603, 27855, 8, 0, 0, 1), -- Mag'har Grainbread
(23603, 33449, 9, 0, 0, 1), -- Crusty Flatbread
(23603, 35950, 10, 0, 0, 1), -- Sweet Potato Bread
(23603, 58260, 11, 0, 0, 1), -- Pine Nut Bread
(23603, 58261, 12, 0, 0, 1), -- Buttery Wheat Roll
(23603, 82450, 13, 0, 0, 1), -- Cornmeal Biscuit
(23603, 82451, 14, 0, 0, 1), -- Frybread
-- 23604 (Agnes Farwithers)
(23604, 34065, 1, 0, 0, 1), -- Spiced Onion Cheese
(23604, 2070, 2, 0, 0, 1), -- Darnassian Bleu
(23604, 414, 3, 0, 0, 1), -- Dalaran Sharp
(23604, 422, 4, 0, 0, 1), -- Dwarven Mild
(23604, 1707, 5, 0, 0, 1), -- Stormwind Brie
(23604, 3927, 6, 0, 0, 1), -- Fine Aged Cheddar
(23604, 8932, 7, 0, 0, 1), -- Alterac Swiss
(23604, 27857, 8, 0, 0, 1), -- Garadar Sharp
(23604, 33443, 9, 0, 0, 1), -- Sour Goat Cheese
(23604, 35952, 10, 0, 0, 1), -- Briny Hardcheese
(23604, 58258, 11, 0, 0, 1), -- Smoked String Cheese
(23604, 58259, 12, 0, 0, 1), -- Highland Sheep Cheese
(23604, 81922, 13, 0, 0, 1), -- Redridge Roquefort
(23604, 81921, 14, 0, 0, 1), -- Chilton Stilton
-- 23605 (Bron)
(23605, 34063, 1, 0, 0, 1), -- Dried Sausage
(23605, 34064, 2, 0, 0, 1), -- Succulent Sausage
(23605, 33023, 3, 0, 0, 1), -- Savory Sausage
(23605, 33024, 4, 0, 0, 1), -- Pickled Sausage
(23605, 33025, 5, 0, 0, 1), -- Spicy Smoked Sausage
(23605, 33026, 6, 0, 0, 1), -- The Golden Link
(23605, 117, 7, 0, 0, 1), -- Tough Jerky
(23605, 2287, 8, 0, 0, 1), -- Haunch of Meat
(23605, 3770, 9, 0, 0, 1), -- Mutton Chop
(23605, 3771, 10, 0, 0, 1), -- Wild Hog Shank
(23605, 4599, 11, 0, 0, 1), -- Cured Ham Steak
(23605, 8952, 12, 0, 0, 1), -- Roasted Quail
(23605, 27854, 13, 0, 0, 1), -- Smoked Talbuk Venison
(23605, 33454, 14, 0, 0, 1), -- Salted Venison
(23605, 35953, 15, 0, 0, 1), -- Mead Basted Caribou
(23605, 58268, 16, 0, 0, 1), -- Roasted Beef
(23605, 58269, 17, 0, 0, 1), -- Massive Turkey Leg
(23605, 81917, 18, 0, 0, 1), -- Mutton Stew
(23605, 81918, 19, 0, 0, 1), -- Pickled Pig's Snout
-- 23606 (Suntouched Apprentice)
(23606, 2723, 1, 0, 0, 1), -- Bottle of Dalaran Noir
(23606, 2593, 2, 0, 0, 1), -- Flask of Stormwind Tawny
(23606, 2596, 3, 0, 0, 1), -- Skin of Dwarven Stout
(23606, 2594, 4, 0, 0, 1), -- Flagon of Dwarven Mead
(23606, 2595, 5, 0, 0, 1), -- Jug of Badlands Bourbon
(23606, 83095, 6, 0, 0, 1), -- Lagrave Stout
(23606, 82343, 7, 0, 0, 1), -- Lordaeron Lambic
(23606, 83094, 8, 0, 0, 1), -- Foote Tripel
(23606, 82344, 9, 0, 0, 1), -- Hearthglen Ambrosia
-- 24495 (Blix Fixwidget)
(24495, 33968, 1, 0, 2274, 1), -- Blue Brewfest Hat
(24495, 33864, 2, 0, 2274, 1), -- Brown Brewfest Hat
(24495, 33967, 3, 0, 2274, 1), -- Green Brewfest Hat
(24495, 33969, 4, 0, 2274, 1), -- Purple Brewfest Hat
(24495, 33863, 5, 0, 2276, 1), -- Brewfest Dress
(24495, 33966, 6, 0, 2275, 1), -- Brewfest Slippers
(24495, 33862, 7, 0, 2276, 1), -- Brewfest Regalia
(24495, 33868, 8, 0, 2275, 1), -- Brewfest Boots
(24495, 37599, 9, 0, 2276, 1), -- "Brew of the Month" Club Membership Form
(24495, 34008, 11, 0, 2275, 1), -- Blix's Eyesight Enhancing Romance Goggles
(24495, 39477, 12, 0, 2424, 1), -- Fresh Dwarven Brewfest Hops
(24495, 90426, 13, 0, 2398, 1), -- Brewhelm
(24495, 90427, 14, 0, 2275, 1), -- Pandaren Brewpack
(24495, 71137, 15, 0, 2276, 1), -- Brewfest Keg Pony
(24495, 33927, 16, 0, 2275, 1), -- Brewfest Pony Keg
(24495, 46707, 17, 0, 2275, 1), -- Pint-Sized Pink Pachyderm
(24495, 32233, 18, 0, 2276, 1), -- Wolpertinger's Tankard
(24495, 37750, 19, 0, 2398, 1), -- Fresh Brewfest Hops
(24495, 37816, 20, 0, 2399, 1), -- Preserved Brewfest Hops
-- 24501 (Drohn's Distillery Apprentice)
(24501, 34017, 1, 0, 0, 1), -- Small Step Brew
(24501, 34018, 2, 0, 0, 1), -- Long Stride Brew
(24501, 34019, 3, 0, 0, 1), -- Path of Brew
(24501, 46402, 4, 0, 0, 1), -- Promise of the Pandaren
-- 23511 (Gordok Brew Apprentice)
(23511, 33034, 1, 0, 0, 1), -- Gordok Grog
(23511, 33035, 2, 0, 0, 1), -- Ogre Mead
(23511, 33036, 3, 0, 0, 1), -- Mudder's Milk
(23511, 46403, 4, 0, 0, 1); -- Chuganpug's Delight

UPDATE `creature_template` SET `speed_run`=0.8571429, `RangeAttackTime`=2000 WHERE `entry`=23487; -- Wild Wolpertinger

SET @CGUID := 362045;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+17;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 23487, 1, 1, 1, 1212.667, -4187.151, 24.87226, 6.039544, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+1, 23487, 1, 1, 1, 1117.449, -4122.83, 19.00484, 3.117203, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+2, 23487, 1, 1, 1, 1153.845, -4174.462, 21.30283, 5.984973, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+3, 23487, 1, 1, 1, 1218.27, -4216.097, 25.45043, 1.632762, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+4, 23487, 1, 1, 1, 1188.064, -4216.208, 22.55934, 6.068075, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+5, 23487, 1, 1, 1, 1177.832, -4244.035, 23.4973, 1.253698, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+6, 23487, 1, 1, 1, 1246.517, -4212.86, 24.87316, 1.675304, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+7, 23487, 1, 1, 1, 1144.646, -4275.15, 22.34255, 0.347768, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+8, 23487, 1, 1, 1, 1185.133, -4278.976, 21.27065, 4.749744, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+9, 23487, 1, 1, 1, 1278.271, -4229.201, 26.52122, 1.635286, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+10, 23487, 1, 1, 1, 1208.683, -4299.609, 21.31664, 3.853282, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+11, 23487, 1, 1, 1, 1212.091, -4294.003, 21.31664, 4.99473, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+12, 23487, 1, 1, 1, 1185.491, -4327.13, 21.31347, 3.877954, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+13, 23487, 1, 1, 1, 1156.816, -4321.151, 21.95646, 2.575829, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+14, 23487, 1, 1, 1, 1208.821, -4339.256, 21.31665, 1.149127, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+15, 23487, 1, 1, 1, 1154.214, -4344.812, 26.07152, 4.258274, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+16, 23487, 1, 1, 1, 1149.479, -4384.896, 25.87045, 4.254403, 120, 0, 0), -- Wild Wolpertinger (Area: Durotar) (Auras: )
(@CGUID+17, 23487, 1, 1, 1, 1319.168, -4238.876, 30.29514, 0.8725554, 120, 0, 0); -- Wild Wolpertinger (Area: Durotar) (Auras: )

DELETE FROM `game_event_creature` WHERE `eventEntry`=24 AND `guid` BETWEEN @CGUID+0 AND @CGUID+17;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(24, @CGUID+0), 
(24, @CGUID+1), 
(24, @CGUID+2), 
(24, @CGUID+3), 
(24, @CGUID+4), 
(24, @CGUID+5), 
(24, @CGUID+6), 
(24, @CGUID+7), 
(24, @CGUID+8), 
(24, @CGUID+9), 
(24, @CGUID+10),
(24, @CGUID+11),
(24, @CGUID+12),
(24, @CGUID+13),
(24, @CGUID+14),
(24, @CGUID+15),
(24, @CGUID+16),
(24, @CGUID+17);

UPDATE `creature` SET `orientation`=3.769911 WHERE `guid`=361884;

UPDATE `creature_template` SET `npcflag`=3, `RangeAttackTime`=2000, `unit_flags2`=2099200 WHERE `entry`=24510; -- Driz Tumblequick
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=2099200 WHERE `entry`=24527; -- Bok Dropcertain
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24536; -- Dark Iron Herald
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23488; -- Brewfest Crowd
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23511; -- Gordok Brew Apprentice
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=23533; -- T'chali's Voodoo Brewery Apprentice
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24657; -- Glodrak Huntsniper
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=24108; -- Self-Turning and Oscillating Utility Target
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=24109; -- [DND] Brewfest Target Dummy Move To Target
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=24711; -- Tapper Swindlekeg
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=23603; -- Uta Roughdough
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=23604; -- Agnes Farwithers
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=23605; -- Bron
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=23606; -- Suntouched Apprentice
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24766; -- [DND] Brewfest Face Me Bunny
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23685; -- Gordok Brew Barker
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23696; -- Gordok Brew Chief
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23698; -- Drunken Brewfest Reveler
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23703; -- [DND] Brewfest Dark Iron Event Generator
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=23706; -- Gordok Festive Keg
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=23808; -- [DND] Brewfest Keg Move to Target
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=27707; -- Great Brewfest Kodo
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=24372; -- Drohn's Distillery Festive Keg
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=24373; -- T'chali's Voodoo Brew Festive Keg
UPDATE `creature_template` SET `npcflag`=3, `RangeAttackTime`=2000, `unit_flags`=33536 WHERE `entry`=27216; -- Bizzle Quicklift
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23894; -- [DND] Brewfest Dark Iron Spawn Bunny
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24462; -- Racing Ram
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24463; -- Swift Racing Ram
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24484; -- Brewfest Reveler
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=24492; -- Drohn's Distillery Barker
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=24493; -- T'chali's Voodoo Brewery Barker
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24495; -- Blix Fixwidget
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.4285714, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2099264 WHERE `entry`=24497; -- Ram Master Ray
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=24498; -- Cort Gorestein
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=768 WHERE `entry`=24499; -- Ja'ron
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24501; -- Drohn's Distillery Apprentice


#####################################################################################
--				Brewfest Ironforge
#####################################################################################

SET @CGUID := 361957;
SET @OGUID := 226287;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+85;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0,  23511, 0, 1, 1, -9118.646, 325.2996, 93.31362, 1.919862, 120, 0, 0), -- Gordok Brew Apprentice (Area: Elwynn Forest)
(@CGUID+1,  23510, 0, 1, 1, -9114.785, 338.7653, 93.62766, 2.9147, 120, 0, 0), -- Thunderbrew Apprentice (Area: Elwynn Forest)
(@CGUID+2,  23482, 0, 1, 1, -9118.479, 348.4555, 93.94923, 3.787364, 120, 0, 0), -- Barleybrew Apprentice (Area: Elwynn Forest)
(@CGUID+3,  24484, 0, 1, 1, -9130.688, 333.9394, 93.3105, 0.8372726, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+4,  24484, 0, 1, 1, -9130.905, 344.5025, 93.73042, 0.9424778, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 44337 - Brewfest Reveler - Dwarf - Male)
(@CGUID+5,  24484, 0, 1, 1, -9129.28, 362.6293, 92.37377, 4.11774, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+6,  24484, 0, 1, 1, -9131.846, 358.8361, 92.3964, 0.9761472, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+7,  24484, 0, 1, 1, -9130.678, 347.4707, 93.63763, 5.67232, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+8,  24484, 0, 1, 1, -9127.974, 347.9314, 93.93057, 3.874631, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 44338 - Brewfest Reveler - Dwarf - Female)
(@CGUID+9,  24484, 0, 1, 1, -9128.346, 345.3679, 94.05936, 2.687807, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 44337 - Brewfest Reveler - Dwarf - Male)
(@CGUID+10, 24484, 0, 1, 1, -9126.819, 338.2312, 93.92828, 3.040008, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+11, 24484, 0, 1, 1, -9142.217, 339.8008, 91.34106, 3.194332, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+12, 24484, 0, 1, 1, -9145.262, 339.64, 90.67572, 0.0527393, 120, 0, 0), -- Brewfest Reveler (Area: Elwynn Forest) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+13, 24364, 0, 1, 1, -5609.832, -459.0559, 404.6329, 5.305801, 120, 0, 0), -- Flynn Firebrew (Area: Dun Morogh) (Auras: 44067 - Supplier Mark)
(@CGUID+14, 24468, 0, 1, 1, -5200.865, -484.7043, 388.8812, 3.420845, 120, 0, 0), -- Pol Amberstill (Area: Dun Morogh) (Auras: 44068 - Base Camp Mark)
(@CGUID+15, 23558, 0, 1, 1, -5200.164, -491.5487, 388.5592, 3.193953, 120, 0, 0), -- Neill Ramstein (Area: Dun Morogh)
(@CGUID+16, 23521, 0, 1, 1, -5172.943, -628.0436, 397.2595, 1.186824, 120, 0, 0), -- Anne Summers (Area: Dun Morogh)
(@CGUID+17, 23710, 0, 1, 1, -5176.905, -624.3687, 397.947, 0.715585, 120, 0, 0), -- Belbi Quikswitch (Area: Dun Morogh)
(@CGUID+18, 23482, 0, 1, 1, -5185.083, -608.2559, 397.2595, 0.5061455, 120, 0, 0), -- Barleybrew Apprentice (Area: Dun Morogh)
(@CGUID+19, 23627, 0, 1, 1, -5184.127, -611.7972, 397.2595, 0.4886922, 120, 0, 0), -- Becan Barleybrew (Area: Dun Morogh)
(@CGUID+20, 23808, 0, 1, 1, -5184.132, -601.8058, 397.3012, 0.9056421, 120, 5, 1), -- [DND] Brewfest Keg Move to Target (Area: Dun Morogh) (possible waypoints or random movement)
(@CGUID+21, 23683, 0, 1, 1, -5181.018, -613.8245, 397.3012, 0.3839724, 120, 0, 0), -- Maeve Barleybrew (Area: Dun Morogh) (Auras: )
(@CGUID+22, 23488, 0, 1, 1, -5175.604, -597.0005, 397.7565, 0.5585054, 120, 0, 0), -- Brewfest Crowd (Area: Dun Morogh)
(@CGUID+23, 23522, 0, 1, 1, -5187.463, -586.1702, 397.3405, 0.1905907, 120, 0, 0), -- Arlen Lochlan (Area: Dun Morogh)
(@CGUID+24, 24766, 0, 1, 1, -5165.246, -603.4328, 398.0052, 2.530727, 120, 0, 0), -- [DND] Brewfest Face Me Bunny (Area: Dun Morogh)
(@CGUID+25, 23808, 0, 1, 1, -5158.501, -629.8905, 397.2245, 2.806662, 120, 5, 1), -- [DND] Brewfest Keg Move to Target (Area: Dun Morogh) (possible waypoints or random movement)
(@CGUID+26, 23628, 0, 1, 1, -5146.556, -633.5544, 397.2642, 1.64061, 120, 0, 0), -- Daran Thunderbrew (Area: Dun Morogh)
(@CGUID+27, 23510, 0, 1, 1, -5149.612, -634.2039, 397.2647, 1.727876, 120, 0, 0), -- Thunderbrew Apprentice (Area: Dun Morogh)
(@CGUID+28, 23703, 0, 1, 1, -5152.337, -604.9965, 398.5365, 5.602507, 120, 0, 0), -- [DND] Brewfest Dark Iron Event Generator (Area: Dun Morogh)
(@CGUID+29, 23684, 0, 1, 1, -5143.186, -630.371, 397.2245, 1.623156, 120, 0, 0), -- Ita Thunderbrew (Area: Dun Morogh) (Auras: )
(@CGUID+30, 23486, 0, 1, 1, -5172.919, -562.5673, 397.2595, 3.455752, 120, 0, 0), -- Goldark Snipehunter (Area: Dun Morogh)
(@CGUID+31, 24710, 0, 1, 1, -5184.684, -562.372, 397.2595, 2.111848, 120, 0, 0), -- Ipfelkofer Ironkeg (Area: Dun Morogh)
(@CGUID+32, 23525, 0, 1, 1, -5164.674, -568.4444, 397.2595, 3.961897, 120, 0, 0), -- Brother Cartwright (Area: Dun Morogh)
(@CGUID+33, 24484, 0, 1, 1, -5210.784, -506.0679, 388.5051, 5.524828, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43908 - Brewfest Reveler - Draenei)
(@CGUID+34, 24484, 0, 1, 1, -5210.184, -512.9577, 389.5921, 0.8085682, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43913 - Brewfest Reveler - Night Elf)
(@CGUID+35, 24766, 0, 1, 1, -5209.471, -488.2339, 388.9122, 3.036873, 120, 0, 0), -- [DND] Brewfest Face Me Bunny (Area: Dun Morogh)
(@CGUID+36, 24463, 0, 1, 1, -5188.07, -488.7207, 386.8857, 6.055955, 120, 0, 0), -- Swift Racing Ram (Area: Dun Morogh)
(@CGUID+37, 24484, 0, 1, 1, -5194.188, -519.2751, 390.2625, 1.958588, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+38, 24484, 0, 1, 1, -5207.015, -509.6384, 388.825, 3.950161, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+39, 24484, 0, 1, 1, -5195.685, -515.6113, 389.714, 5.100181, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+40, 27215, 0, 1, 1, -5185.336, -540.1724, 397.2031, 3.351032, 120, 0, 0), -- Boxey Boltspinner (Area: Dun Morogh)
(@CGUID+41, 24462, 0, 1, 1, -5185.82, -484.808, 387.0292, 3.42718, 120, 0, 0), -- Racing Ram (Area: Dun Morogh)
(@CGUID+42, 24108, 0, 1, 1, -5167.972, -539.4572, 397.2624, 1.678377, 120, 5, 1), -- Self-Turning and Oscillating Utility Target (Area: Dun Morogh) (possible waypoints or random movement)
(@CGUID+43, 24109, 0, 1, 1, -5168.079, -538.463, 397.2599, 5.288348, 120, 0, 0), -- [DND] Brewfest Target Dummy Move To Target (Area: Dun Morogh)
(@CGUID+44, 24109, 0, 1, 1, -5167.119, -547.3276, 397.2595, 1.48353, 120, 0, 0), -- [DND] Brewfest Target Dummy Move To Target (Area: Dun Morogh)
(@CGUID+45, 23808, 0, 1, 1, -5148.264, -577.6766, 397.3012, 2.556881, 120, 5, 1), -- [DND] Brewfest Keg Move to Target (Area: Dun Morogh) (possible waypoints or random movement)
(@CGUID+46, 23706, 0, 1, 1, -5146.527, -576.4496, 397.2595, 3.804818, 120, 0, 0), -- Gordok Festive Keg (Area: Dun Morogh)
(@CGUID+47, 23511, 0, 1, 1, -5139.066, -579.3162, 397.2595, 4.031711, 120, 0, 0), -- Gordok Brew Apprentice (Area: Dun Morogh)
(@CGUID+48, 24484, 0, 1, 1, -5170.149, -578.8616, 397.3678, 2.303835, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43913 - Brewfest Reveler - Night Elf)
(@CGUID+49, 23698, 0, 1, 1, -5190.509, -553.5136, 397.2794, 1.993462, 120, 0, 0), -- Drunken Brewfest Reveler (Area: Dun Morogh) (Auras: 43905 - Completely Hammered, 35777 - Bloodmaul Intoxication Visual)
(@CGUID+50, 24484, 0, 1, 1, -5179.541, -596.7141, 397.4122, 4.976364, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43910 - Brewfest Reveler - Gnome)
(@CGUID+51, 24484, 0, 1, 1, -5166.657, -586.2771, 397.8213, 3.188444, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43913 - Brewfest Reveler - Night Elf)
(@CGUID+52, 24484, 0, 1, 1, -5172.547, -586.5533, 397.906, 4.349577, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+53, 24484, 0, 1, 1, -5165.994, -608.4224, 397.6673, 0.2851539, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+54, 24484, 0, 1, 1, -5161.28, -607.0406, 398.0949, 3.426747, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+55, 24484, 0, 1, 1, -5178.236, -601.5394, 397.367, 5.77101, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+56, 24484, 0, 1, 1, -5155.491, -585.8931, 397.3052, 0.734837, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43913 - Brewfest Reveler - Night Elf)
(@CGUID+57, 24484, 0, 1, 1, -5150.194, -581.106, 397.2617, 3.87643, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+58, 24484, 0, 1, 1, -5151.46, -588.4326, 397.4433, 5.72216, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+59, 24484, 0, 1, 1, -5162.544, -600.8759, 398.2272, 4.914649, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+60, 23696, 0, 1, 1, -5136.587, -581.9385, 397.2595, 3.455752, 120, 0, 0), -- Gordok Brew Chief (Area: Dun Morogh)
(@CGUID+61, 23685, 0, 1, 1, -5136.159, -586.4553, 397.3012, 3.577925, 120, 0, 0), -- Gordok Brew Barker (Area: Dun Morogh) (Auras: )
(@CGUID+62, 24484, 0, 1, 1, -5149.818, -605.0708, 398.556, 5.765238, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43908 - Brewfest Reveler - Draenei)
(@CGUID+63, 24484, 0, 1, 1, -5141.182, -594.8916, 397.546, 4.146614, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43908 - Brewfest Reveler - Draenei)
(@CGUID+64, 24484, 0, 1, 1, -5144.808, -600.6024, 398.1843, 3.869892, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43912 - Brewfest Reveler - Human)
(@CGUID+65, 24484, 0, 1, 1, -5155.71, -625.1768, 397.5327, 3.623038, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+66, 24484, 0, 1, 1, -5145.604, -614.9921, 398.3746, 1.043706, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43908 - Brewfest Reveler - Draenei)
(@CGUID+67, 24484, 0, 1, 1, -5142.317, -609.3452, 398.3555, 4.185299, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43908 - Brewfest Reveler - Draenei)
(@CGUID+68, 24484, 0, 1, 1, -5161.049, -619.7647, 397.6951, 5.490935, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43908 - Brewfest Reveler - Draenei)
(@CGUID+69, 24484, 0, 1, 1, -5159.968, -627.4012, 397.3412, 0.4814447, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+70, 23481, 0, 1, 1, -5129.599, -606.1038, 397.4064, 3.054326, 120, 0, 0), -- Keiran Donoghue (Area: Dun Morogh)
(@CGUID+71, 23488, 0, 1, 1, -5122.557, -633.5287, 399.5836, 3.979351, 120, 0, 0), -- Brewfest Crowd (Area: Dun Morogh)
(@CGUID+72, 23703, 0, 1, 1, -5115.206, -612.4749, 402.2297, 2.234021, 120, 0, 0), -- [DND] Brewfest Dark Iron Event Generator (Area: Dun Morogh)
(@CGUID+73, 23488, 0, 1, 1, -5105.744, -624.4401, 412.1684, 2.234021, 120, 0, 0), -- Brewfest Crowd (Area: Dun Morogh)
(@CGUID+74, 24484, 0, 1, 1, -5037.795, -795.8854, 495.2217, 2.488667, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+75, 24484, 0, 1, 1, -5041.38, -789.408, 495.2106, 5.63026, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+76, 24484, 0, 1, 1, -5039.092, -791.158, 495.2118, 5.481099, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+77, 24484, 0, 1, 1, -5038.51, -788.3733, 495.2108, 4.506347, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+78, 24484, 0, 1, 1, -5037.213, -793.1007, 495.2222, 2.339506, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+79, 24484, 0, 1, 1, -5040.083, -794.1354, 495.2119, 5.63026, 120, 0, 0), -- Brewfest Reveler (Area: Dun Morogh) (Auras: 43909 - Brewfest Reveler - Dwarf)
(@CGUID+80, 40441, 0, 1, 1, -4939.448, -937.3698, 503.2399, 0.7679449, 120, 0, 0), -- Battered Brewmaster (Area: Ironforge)
(@CGUID+81, 19148, 0, 1, 1, -4901.802, -958.9554, 501.5429, 1.012291, 120, 0, 0), -- Dwarf Commoner (Area: Ironforge) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+82, 19148, 0, 1, 1, -4900.874, -957.3143, 501.5414, 4.171337, 120, 0, 0), -- Dwarf Commoner (Area: Ironforge) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+83, 19172, 0, 1, 1, -4829.88, -1173.254, 502.2773, 2.495821, 120, 0, 0), -- Gnome Commoner (Area: Ironforge) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+84, 19172, 0, 1, 1, -4831.737, -1172.576, 502.2775, 6.195919, 120, 0, 0), -- Gnome Commoner (Area: Ironforge) (Auras: 65511 - Gossip NPC Appearance - Brewfest, 33209 - Gossip NPC Periodic - Despawn, 33207 - Gossip NPC Periodic - Fidget, 33208 - Gossip NPC Periodic - Talk)
(@CGUID+85, 23698, 0, 1, 1, -5137.566, -626.6026, 397.3508, 1.802031, 120, 0, 0); -- Drunken Brewfest Reveler (Area: Dun Morogh) (Auras: 43905 - Completely Hammered)

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+374;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0,   195266, 0, 1, 1, -9246.095, -2148.554, 68.11069, 3.159062, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+1,   195266, 0, 1, 1, -9234.066, -2141.21, 70.32656, 1.500983, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+2,   195266, 0, 1, 1, -9225.213, -2139.094, 70.24548, 1.605702, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+3,   195257, 0, 1, 1, -9235.185, -2148.316, 66.44775, 0.122173, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+4,   195259, 0, 1, 1, -9212.752, -2143.257, 65.92102, 4.677484, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+5,   195260, 0, 1, 1, -9217.577, -2145.575, 65.47192, 4.206246, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+6,   195260, 0, 1, 1, -9229.153, -2161.188, 64.88481, 1.466076, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+7,   195260, 0, 1, 1, -9226.616, -2150.386, 64.62093, 1.53589, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+8,   195260, 0, 1, 1, -9212.978, -2149.863, 65.51815, 3.804818, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+9,   195257, 0, 1, 1, -9221.87, -2144.793, 65.65543, 4.747296, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+10,  195253, 0, 1, 1, -9221.179, -2167.573, 70.22387, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Redridge Mountains)
(@OGUID+11,  195264, 0, 1, 1, -9234.33, -2161.907, 65.48932, 4.886924, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+12,  195260, 0, 1, 1, -9222.752, -2159.777, 64.81537, 3.351047, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+13,  195253, 0, 1, 1, -9233.224, -2167.363, 70.25216, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Redridge Mountains)
(@OGUID+14,  195257, 0, 1, 1, -9235.252, -2152.222, 66.45197, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+15,  195253, 0, 1, 1, -9241.352, -2158.479, 70.15424, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Redridge Mountains)
(@OGUID+16,  195264, 0, 1, 1, -9221.364, -2160.02, 64.82926, 2.321287, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+17,  195264, 0, 1, 1, -9226.519, -2148.851, 64.60009, 5.550147, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+18,  195253, 0, 1, 1, -9214.249, -2141.553, 70.16895, 1.553341, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Redridge Mountains)
(@OGUID+19,  195257, 0, 1, 1, -9228.709, -2144.673, 65.5734, 4.81711, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+20,  195259, 0, 1, 1, -9235.771, -2148.469, 66.05069, 3.089183, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+21,  195264, 0, 1, 1, -9228.997, -2162.653, 64.85009, 1.047198, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+22,  195264, 0, 1, 1, -9213.035, -2146.219, 65.51489, 5.218536, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+23,  195264, 0, 1, 1, -9215.894, -2145.814, 65.42332, 1.012289, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+24,  195273, 0, 1, 1, -9245.547, -2160.394, 77.29923, 3.054327, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+25,  195256, 0, 1, 1, -9246.186, -2136.637, 63.93378, 3.612838, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+26,  195253, 0, 1, 1, -9202.232, -2141.319, 70.26682, 1.605702, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Redridge Mountains)
(@OGUID+27,  195255, 0, 1, 1, -9235.648, -2198.986, 81.71343, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Redridge Mountains)
(@OGUID+28,  195259, 0, 1, 1, -9233.308, -2216.292, 68.91117, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+29,  195266, 0, 1, 1, -9243.66, -2211.196, 72.0786, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+30,  195256, 0, 1, 1, -9256.659, -2226.638, 63.93342, 3.089183, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+31,  195266, 0, 1, 1, -9263.477, -2237.091, 68.02573, 3.071766, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+32,  195259, 0, 1, 1, -9213.546, -2224.489, 69.31682, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+33,  195259, 0, 1, 1, -9222.042, -2224.406, 69.23145, 1.500983, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+34,  195266, 0, 1, 1, -9175.255, -2108.599, 92.66118, 2.460913, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+35,  195256, 0, 1, 1, -9234.271, -2077.679, 76.5569, 2.670348, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+36,  195256, 0, 1, 1, -9183.466, -2113.004, 87.78157, 1.692969, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+37,  195256, 0, 1, 1, -9184.45, -2083.873, 87.76208, 3.735006, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+38,  195266, 0, 1, 1, -9180.753, -2086.241, 92.67786, 3.438303, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+39,  195266, 0, 1, 1, -9221.95, -2065.851, 81.47471, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Redridge Mountains)
(@OGUID+40,  195256, 0, 1, 1, -9248.944, -2068.154, 76.47503, 4.729844, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+41,  195256, 0, 1, 1, -9346.304, -2213.286, 61.89773, 1.343901, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+42,  195256, 0, 1, 1, -9282.08, -2301.729, 68.01043, 0.5061446, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+43,  195256, 0, 1, 1, -9280.441, -2269.729, 67.57903, 5.654869, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+44,  195256, 0, 1, 1, -9423.636, -2244.606, 68.45261, 2.722713, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+45,  195256, 0, 1, 1, -9426.249, -2231.333, 68.54076, 3.857183, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+46,  195256, 0, 1, 1, -9411.603, -2259.127, 67.49984, 3.42085, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+47,  195256, 0, 1, 1, -9414.542, -2291.406, 67.65881, 2.530723, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Redridge Mountains)
(@OGUID+48,  195259, 0, 1, 1, -9435.354, -2228.507, 70.02831, 5.358162, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+49,  195259, 0, 1, 1, -9636.213, -2086.488, 62.58199, 1.099556, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+50,  195259, 0, 1, 1, -9589.761, -1928.484, 64.17411, 1.919862, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+51,  195259, 0, 1, 1, -9628.007, -1892.382, 72.56904, 5.078908, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Redridge Mountains)
(@OGUID+52,  195259, 0, 1, 1, -9648.42, -1336.6, 50.6041, 2.91469, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Elwynn Forest)
(@OGUID+53,  195256, 0, 1, 1, -9653.36, -1351.62, 49.9791, 2.199115, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+54,  195256, 0, 1, 1, -9528.31, -1220.07, 47.512, 5.078908, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+55,  195263, 0, 1, 1, -9542.78, -1210.2, 52.139, 2.513274, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+56,  195259, 0, 1, 1, -9536.68, -1208.95, 49.4019, 4.101525, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Elwynn Forest)
(@OGUID+57,  195253, 0, 1, 1, -9530.54, -1220.03, 51.8579, 5.67232, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Elwynn Forest)
(@OGUID+58,  195256, 0, 1, 1, -9527.63, -694.899, 61.8202, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+59,  195263, 0, 1, 1, -9537.14, -707.063, 66.1065, 0.8203033, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+60,  195253, 0, 1, 1, -9547.04, -733.826, 98.1384, 5.445428, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Elwynn Forest)
(@OGUID+61,  195259, 0, 1, 1, -9539.26, -700.099, 68.9415, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Elwynn Forest)
(@OGUID+62,  195263, 0, 1, 1, -9545.9, -697.432, 66.2059, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+63,  195253, 0, 1, 1, -9545.47, -705.538, 98.157, 0.7504908, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Elwynn Forest)
(@OGUID+64,  195256, 0, 1, 1, -9532.86, -689.003, 61.8336, 0.802851, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+65,  195266, 0, 1, 1, -9382.36, -82.4038, 68.335, 4.188792, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Elwynn Forest)
(@OGUID+66,  195256, 0, 1, 1, -9378.76, -86.2716, 63.6306, 3.543024, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Elwynn Forest)
(@OGUID+67,  186717, 0, 1, 1, -9128.238, 325.459, 93.50195, 1.850049, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+68,  186717, 0, 1, 1, -9137.063, 372.1153, 90.57259, 1.466076, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+69,  186717, 0, 1, 1, -9150.724, 357.4999, 89.90228, 2.809975, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+70,  186717, 0, 1, 1, -9114.491, 342.7754, 93.66718, 3.001947, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+71,  186717, 0, 1, 1, -9124.605, 357.9988, 92.98186, 3.909541, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+72,  186717, 0, 1, 1, -9137.364, 389.8789, 90.97507, 0.3665176, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+73,  186717, 0, 1, 1, -9184.333, 334.9997, 82.31686, 5.026549, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Elwynn Forest)
(@OGUID+74,  180037, 0, 1, 1, -9117.236, 322.8356, 93.23306, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Elwynn Forest)
(@OGUID+75,  180037, 0, 1, 1, -9116.251, 325.7961, 93.18729, 2.18166, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Elwynn Forest)
(@OGUID+76,  186257, 0, 1, 1, -9123.091, 321.4732, 93.44196, 4.904376, 0, 0, 0, 1, 120, 255, 1), -- Gordok Festive Wagon (Area: Elwynn Forest)
(@OGUID+77,  180037, 0, 1, 1, -9120.161, 323.513, 93.30685, 1.797689, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Elwynn Forest)
(@OGUID+78,  195265, 0, 1, 1, -9072.81, 411.155, 92.7449, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+79,  195254, 0, 1, 1, -9065.88, 414.826, 98.7892, 2.251473, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+80,  180037, 0, 1, 1, -9111.789, 345.3135, 93.52122, 0.2967052, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Elwynn Forest)
(@OGUID+81,  178666, 0, 1, 1, -9109.536, 338.4199, 93.47884, 1.413715, 0, 0, 0, 1, 120, 255, 1), -- Gypsy Wagon (Area: Elwynn Forest)
(@OGUID+82,  178666, 0, 1, 1, -9114.387, 351.52, 93.52726, 2.164206, 0, 0, 0, 1, 120, 255, 1), -- Gypsy Wagon (Area: Elwynn Forest)
(@OGUID+83,  195265, 0, 1, 1, -9043.32, 430.911, 93.2879, 2.303831, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+84,  195265, 0, 1, 1, -9089.38, 431.97, 92.8513, 5.445428, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+85,  195265, 0, 1, 1, -9050.57, 424.715, 93.285, 2.286379, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+86,  195254, 0, 1, 1, -9083.63, 437.943, 98.252, 5.462882, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+87,  195255, 0, 1, 1, -9062.11, 436.523, 111.193, 3.787367, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+88,  186259, 0, 1, 1, -9113.325, 332.2217, 93.15086, 5.567601, 0, 0, 0, 1, 120, 255, 1), -- Thunderbrew Festive Wagon (Area: Elwynn Forest)
(@OGUID+89,  186260, 0, 1, 1, -9120.435, 356.5367, 93.25022, 0.6806767, 0, 0, 0, 1, 120, 255, 1), -- Barleybrew Festive Wagon (Area: Elwynn Forest)
(@OGUID+90,  195265, 0, 1, 1, -9063.14, 456.014, 93.2763, 5.305802, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+91,  195265, 0, 1, 1, -9071.21, 449.92, 93.2858, 0.3316107, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Elwynn Forest)
(@OGUID+92,  195265, 0, 1, 1, -8973.23, 491.104, 97.0423, 2.076939, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Stormwind City)
(@OGUID+93,  195265, 0, 1, 1, -9018.02, 485.073, 97.1019, 5.427975, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Stormwind City)
(@OGUID+94,  195265, 0, 1, 1, -8987.81, 509.179, 97.0711, 5.480334, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Stormwind City)
(@OGUID+95,  195265, 0, 1, 1, -9003.55, 467.036, 97.1128, 2.129301, 0, 0, 0, 1, 120, 255, 1), -- Standing, Large - Brewfest (Area: Stormwind City)
(@OGUID+96,  186717, 0, 1, 1, -5644.706, -477.0167, 396.7484, 4.607672, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+97,  186717, 0, 1, 1, -5620.104, -473.0208, 396.9604, 6.03884, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+98,  186717, 0, 1, 1, -5610.049, -457.4845, 405.3016, 5.916668, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+99,  186717, 0, 1, 1, -5337.041, -542.3473, 393.6581, 1.396262, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+100, 195256, 0, 1, 1, -5643.28, -503.156, 396.681, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+101, 195260, 0, 1, 1, -5654.715, -502.6059, 398.2567, 4.136433, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+102, 195260, 0, 1, 1, -5606.694, -532.3544, 400.5222, 1.500983, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+103, 195260, 0, 1, 1, -5606.856, -527.5001, 402.5878, 3.316144, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+104, 195253, 0, 1, 1, -5596.977, -512.8995, 411.5967, 1.553341, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+105, 195266, 0, 1, 1, -5597.3, -532.3472, 403.0714, 1.500983, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Dun Morogh)
(@OGUID+106, 195253, 0, 1, 1, -5604.448, -512.7601, 411.5909, 1.53589, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+107, 195259, 0, 1, 1, -5608.684, -529.5765, 401.0659, 6.248279, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+108, 195253, 0, 1, 1, -5612.138, -518.6824, 411.9816, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+109, 195259, 0, 1, 1, -5608.479, -521.5131, 401.212, 6.265733, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+110, 195260, 0, 1, 1, -5604.241, -532.3936, 400.5223, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+111, 195259, 0, 1, 1, -5607.962, -525.4995, 402.7486, 0, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+112, 195263, 0, 1, 1, -5592.182, -532.5336, 401.91, 1.553341, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+113, 195260, 0, 1, 1, -5594.529, -525.8619, 400.5474, 0.03490625, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+114, 195253, 0, 1, 1, -5593.03, -509.2291, 411.6137, 3.106652, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+115, 195260, 0, 1, 1, -5600.698, -525.1803, 400.5451, 6.213374, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+116, 195264, 0, 1, 1, -5584.555, -533.0618, 404.4201, 0.8726639, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+117, 195264, 0, 1, 1, -5584.568, -528.3982, 401.6423, 0.2967052, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+118, 195263, 0, 1, 1, -5576.637, -514.9565, 405.1905, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+119, 195264, 0, 1, 1, -5586.716, -528.2309, 400.2072, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+120, 195253, 0, 1, 1, -5582.827, -503.6929, 411.7398, 1.553341, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+121, 195256, 0, 1, 1, -5605.661, -489.755, 397.5626, 1.797689, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+122, 195260, 0, 1, 1, -5591.76, -508.4743, 405.0105, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Dun Morogh)
(@OGUID+123, 195253, 0, 1, 1, -5576.134, -520.7516, 411.7462, 6.265733, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+124, 195259, 0, 1, 1, -5590.899, -513.9167, 405.7715, 1.658062, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+125, 195259, 0, 1, 1, -5579.731, -525.0503, 404.4669, 3.176533, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+126, 195253, 0, 1, 1, -5575.937, -509.4737, 411.7925, 6.265733, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+127, 186709, 0, 1, 1, -5613.839, -470.8222, 398.039, 4.747296, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+128, 186709, 0, 1, 1, -5615.797, -470.9076, 398.0607, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+129, 186709, 0, 1, 1, -5617.754, -470.9753, 398.0358, 4.76475, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+130, 195256, 0, 1, 1, -5568.507, -501.3629, 402.8596, 1.362257, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+131, 186709, 0, 1, 1, -5612.898, -470.8262, 399.2884, 4.747296, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+132, 186709, 0, 1, 1, -5611.944, -470.736, 398.0418, 4.76475, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+133, 186709, 0, 1, 1, -5616.769, -470.9492, 399.2328, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+134, 195259, 0, 1, 1, -5593.129, -489.4366, 398.3633, 1.53589, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+135, 186717, 0, 1, 1, -5236.781, -635.8247, 421.8013, 0.5585039, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+136, 186717, 0, 1, 1, -5252.011, -477.2503, 386.6239, 4.904376, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+137, 186681, 0, 1, 1, -5190.952, -586.5555, 397.3453, 0.1382307, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Dun Morogh)
(@OGUID+138, 186252, 0, 1, 1, -5192.862, -615.2213, 398.0651, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+139, 186229, 0, 1, 1, -5191.231, -561.2604, 397.1762, 5.183629, 0, 0, 0, 1, 120, 255, 1), -- BREWFEST (Area: Dun Morogh)
(@OGUID+140, 186717, 0, 1, 1, -5214.628, -514.1525, 389.7317, 1.745327, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+141, 186717, 0, 1, 1, -5197.209, -505.3072, 388.5976, 2.007128, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+142, 186717, 0, 1, 1, -5205.448, -479.0623, 389.1464, 2.094393, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+143, 186717, 0, 1, 1, -5207.184, -535.7542, 393.7946, 1.780234, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+144, 195256, 0, 1, 1, -5535.453, -476.9323, 398.0912, 5.619962, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+145, 186717, 0, 1, 1, -5189.3, -525.5062, 392.5254, 1.989672, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+146, 186717, 0, 1, 1, -5218.609, -491.6126, 387.8888, 1.762782, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+147, 186229, 0, 1, 1, -5219.014, -475.2069, 386.6611, 5.532695, 0, 0, 0, 1, 120, 255, 1), -- BREWFEST (Area: Dun Morogh)
(@OGUID+148, 186252, 0, 1, 1, -5197.939, -587.6623, 398.3996, 1.710422, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+149, 186252, 0, 1, 1, -5195.895, -601.4579, 398.6494, 1.745327, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+150, 186252, 0, 1, 1, -5197.76, -573.3922, 398.4808, 4.537859, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+151, 180749, 0, 1, 1, -5214.482, -514.3778, 389.7595, 0.7679439, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Dun Morogh)
(@OGUID+152, 186680, 0, 1, 1, -5179.604, -543.4095, 396.9182, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Canopy (Area: Dun Morogh)
(@OGUID+153, 186717, 0, 1, 1, -5180.2, -615.9891, 397.1762, 0.4188786, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+154, 186252, 0, 1, 1, -5185.058, -627.0389, 397.9193, 5.585054, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+155, 180749, 0, 1, 1, -5182.854, -539.3351, 397.0353, 4.729844, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Dun Morogh)
(@OGUID+156, 186252, 0, 1, 1, -5170.272, -549.3871, 397.6137, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+157, 186252, 0, 1, 1, -5170.992, -537.0357, 398.1315, 0.087266, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+158, 186252, 0, 1, 1, -5180.265, -485.5065, 388.4359, 1.745327, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+159, 186252, 0, 1, 1, -5185.947, -492.8411, 387.9589, 3.194002, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+160, 186252, 0, 1, 1, -5188.662, -480.1567, 388.4914, 3.42085, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+161, 186717, 0, 1, 1, -5199.622, -432.8177, 390.4116, 2.722713, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+162, 186680, 0, 1, 1, -5194.545, -487.2587, 387.5414, 3.281239, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Canopy (Area: Dun Morogh)
(@OGUID+163, 186682, 0, 1, 1, -5186.544, -610.6227, 397.1762, 0.2967052, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Beer Tent (Area: Dun Morogh)
(@OGUID+164, 180749, 0, 1, 1, -5182.361, -613.8264, 397.1762, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Dun Morogh)
(@OGUID+165, 195266, 0, 1, 1, -5519.259, -663.9238, 403.0417, 0.4014249, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Dun Morogh)
(@OGUID+166, 180749, 0, 1, 1, -5141.325, -578.4202, 397.1762, 2.426008, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Dun Morogh)
(@OGUID+167, 180749, 0, 1, 1, -5127.931, -598.033, 397.2354, 2.949595, 0, 0, 0, 1, 120, 255, 1), -- Cheer Speaker (Area: Dun Morogh)
(@OGUID+168, 186252, 0, 1, 1, -5155.841, -561.3016, 398.2734, 2.600535, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+169, 186252, 0, 1, 1, -5127.788, -576.9871, 398.329, 5.654869, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+170, 186252, 0, 1, 1, -5144.438, -569.3953, 398.4123, 5.619962, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+171, 186681, 0, 1, 1, -5125.849, -606.7365, 397.5661, 2.967041, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Dun Morogh)
(@OGUID+172, 186252, 0, 1, 1, -5167.182, -639.3504, 398.3012, 5.829401, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+173, 186173, 0, 1, 1, -5133.704, -621.1421, 398.6569, 0.8726639, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Keg Breakable (Area: Dun Morogh)
(@OGUID+174, 186252, 0, 1, 1, -5167.689, -553.475, 398.4748, 5.794494, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+175, 186252, 0, 1, 1, -5162.599, -542.8001, 397.6345, 4.852017, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+176, 186717, 0, 1, 1, -5134.115, -586.7226, 397.1762, 3.47321, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+177, 186682, 0, 1, 1, -5147.898, -635.9807, 397.1762, 1.745327, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Beer Tent (Area: Dun Morogh)
(@OGUID+178, 186714, 0, 1, 1, -5131.425, -622.4551, 396.1465, 1.623156, 0, 0, 0, 1, 120, 255, 1), -- Shoutbox (Area: Dun Morogh)
(@OGUID+179, 186717, 0, 1, 1, -5139.138, -632.3252, 397.1794, 1.692969, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+180, 186717, 0, 1, 1, -5191.74, -736.3221, 447.2843, 0.8377575, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+181, 186717, 0, 1, 1, -5137.491, -622.2783, 397.3992, 2.33874, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+182, 186682, 0, 1, 1, -5136.073, -579.4153, 397.1762, 3.874631, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Beer Tent (Area: Dun Morogh)
(@OGUID+183, 186252, 0, 1, 1, -5130.747, -633.7814, 398.3118, 0.9773831, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+184, 186252, 0, 1, 1, -5154.252, -644.3858, 398.2596, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+185, 186252, 0, 1, 1, -5141.08, -642.6694, 398.0721, 0.4537851, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+186, 186681, 0, 1, 1, -5175.351, -631.7859, 397.1762, 0.9948372, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Dun Morogh)
(@OGUID+187, 186681, 0, 1, 1, -5160.816, -565.0238, 397.1762, 3.752462, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Food Tent (Area: Dun Morogh)
(@OGUID+188, 186717, 0, 1, 1, -5132.811, -616.4373, 397.3624, 2.495818, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+189, 186252, 0, 1, 1, -5126.319, -586.1402, 398.2943, 0.7330382, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+190, 186252, 0, 1, 1, -5123.158, -594.8695, 398.1762, 3.769912, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+191, 195256, 0, 1, 1, -5483.444, -669.2147, 392.698, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+192, 186252, 0, 1, 1, -5124.67, -620.3724, 398.9654, 1.378809, 0, 0, 0, 1, 120, 255, 1), -- Fence (Area: Dun Morogh)
(@OGUID+193, 186717, 0, 1, 1, -5091.119, -734.7433, 469.9098, 4.799657, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+194, 195259, 0, 1, 1, -5357.044, -528.766, 392.5752, 0.6457717, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Dun Morogh)
(@OGUID+195, 186680, 0, 1, 1, -5033.799, -789.7986, 495.1776, 3.508117, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Canopy (Area: Dun Morogh)
(@OGUID+196, 186189, 0, 1, 1, -5180.918, -619.2928, 398.2873, 6.19592, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+197, 180698, 0, 1, 1, -5180.746, -618.4632, 397.1762, 0.4014249, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+198, 179973, 0, 1, 1, -5181.609, -624.9522, 397.1762, 0.5585039, 0, 0, 0, 1, 120, 255, 1), -- Inn Barrel (Area: Dun Morogh)
(@OGUID+199, 179973, 0, 1, 1, -5182.578, -623.7708, 397.1762, 3.839725, 0, 0, 0, 1, 120, 255, 1), -- Inn Barrel (Area: Dun Morogh)
(@OGUID+200, 179973, 0, 1, 1, -5183.147, -625.1269, 397.1762, 5.166176, 0, 0, 0, 1, 120, 255, 1), -- Inn Barrel (Area: Dun Morogh)
(@OGUID+201, 179970, 0, 1, 1, -5177.422, -624.6458, 397.1762, 3.996807, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+202, 179970, 0, 1, 1, -5176.669, -624.4911, 397.1762, 3.839725, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+203, 179970, 0, 1, 1, -5177.397, -623.7738, 397.1762, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+204, 180353, 0, 1, 1, -5171, -628.9365, 397.1762, 2.076939, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+205, 180353, 0, 1, 1, -5174.59, -626.7505, 397.1762, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+206, 180353, 0, 1, 1, -5178.735, -620.2941, 397.1762, 0.9075702, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+207, 186189, 0, 1, 1, -5181.279, -618.0822, 398.2873, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+208, 186189, 0, 1, 1, -5180.274, -618.2279, 398.2873, 5.393069, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+209, 179970, 0, 1, 1, -5177.139, -625.7251, 397.1762, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+210, 179970, 0, 1, 1, -5178.15, -625.577, 397.1762, 0.3665176, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+211, 179970, 0, 1, 1, -5178.94, -624.4315, 397.1762, 1.675514, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+212, 179970, 0, 1, 1, -5178.793, -623.5281, 397.1762, 2.408554, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+213, 179970, 0, 1, 1, -5179.821, -626.6215, 397.1762, 4.66003, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+214, 179970, 0, 1, 1, -5179.335, -625.5864, 397.1762, 0.1745321, 0, 0, 0, 1, 120, 255, 1), -- Replace Crate 02 (Area: Dun Morogh)
(@OGUID+215, 186189, 0, 1, 1, -5179.868, -618.8417, 398.2873, 1.361356, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+216, 180353, 0, 1, 1, -5186.012, -588.507, 397.3098, 4.274661, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+217, 180698, 0, 1, 1, -5188.103, -592.1146, 397.1893, 0.01605623, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+218, 186189, 0, 1, 1, -5187.387, -592.6702, 398.2692, 0.7665493, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+219, 186189, 0, 1, 1, -5187.264, -591.6042, 398.2834, 1.551946, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+220, 186183, 0, 1, 1, -5187.228, -599.7787, 397.1762, 0.01745246, 0, 0, 0, 1, 120, 255, 1), -- Barleybrew Festive Keg (Area: Dun Morogh)
(@OGUID+221, 186189, 0, 1, 1, -5187.271, -592.2188, 398.2967, 5.601112, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+222, 180353, 0, 1, 1, -5186.785, -583.3924, 397.2424, 2.68641, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+223, 186184, 0, 1, 1, -5160.053, -632.632, 397.1778, 1.396262, 0, 0, 0, 1, 120, 255, 1), -- Thunderbrew Festive Keg (Area: Dun Morogh)
(@OGUID+224, 180353, 0, 1, 1, -5144.526, -630.9318, 397.201, 5.93412, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+225, 180353, 0, 1, 1, -5138.65, -623.0335, 397.3982, 1.483528, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+226, 180698, 0, 1, 1, -5139.809, -631.2952, 397.1842, 0.2443456, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+227, 186189, 0, 1, 1, -5140.135, -631.197, 398.3177, 4.293513, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+228, 186189, 0, 1, 1, -5139.533, -630.5913, 398.3156, 1.396262, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+229, 186189, 0, 1, 1, -5140.642, -630.7866, 398.3101, 2.984498, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+230, 180353, 0, 1, 1, -5192.166, -559.8302, 397.1762, 1.762782, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+231, 186189, 0, 1, 1, -5139.092, -631.3373, 398.3243, 3.455756, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+232, 180037, 0, 1, 1, -5173.12, -560.5593, 397.1762, 6.126106, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+233, 180037, 0, 1, 1, -5170.845, -563.2278, 397.1762, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+234, 180353, 0, 1, 1, -5166.728, -566.1479, 397.1762, 1.53589, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+235, 180353, 0, 1, 1, -5182.542, -554.7311, 397.1762, 3.47321, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+236, 195266, 0, 1, 1, -5480.081, -461.8063, 401.4652, 6.003934, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Dun Morogh)
(@OGUID+237, 195256, 0, 1, 1, -5461.149, -479.1237, 396.6999, 5.811947, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+238, 195253, 0, 1, 1, -5578.943, -461.7432, 409.891, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer x3 - Brewfest (Area: Dun Morogh)
(@OGUID+239, 195263, 0, 1, 1, -5573.334, -461.3463, 404.8426, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+240, 195256, 0, 1, 1, -5588.756, -425.2837, 397.3254, 5.166176, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+241, 195263, 0, 1, 1, -5585.392, -461.5064, 404.8497, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+242, 195263, 0, 1, 1, -5580.912, -418.4516, 400.419, 4.956738, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Medium - Brewfest (Area: Dun Morogh)
(@OGUID+243, 186189, 0, 1, 1, -5212.133, -508.7171, 389.8518, 6.265733, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+244, 180698, 0, 1, 1, -5212.578, -509.3127, 388.7388, 0.1745321, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+245, 180353, 0, 1, 1, -5219.924, -485.5978, 387.8988, 1.343901, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+246, 180353, 0, 1, 1, -5214.958, -510.7971, 389.3493, 0.5585039, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+247, 186189, 0, 1, 1, -5213.169, -508.8343, 389.8408, 0.6108634, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+248, 186189, 0, 1, 1, -5211.824, -509.6712, 389.8385, 0.6457717, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+249, 180353, 0, 1, 1, -5208.733, -531.9574, 392.7095, 4.450591, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+250, 180353, 0, 1, 1, -5198.776, -502.6649, 388.4015, 2.460913, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+251, 180353, 0, 1, 1, -5189.862, -523.3077, 391.7257, 2.617989, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+252, 180037, 0, 1, 1, -5185.292, -491.15, 386.5858, 0.1047193, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+253, 186189, 0, 1, 1, -5193.02, -516.2057, 390.9093, 5.218536, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+254, 186709, 0, 1, 1, -5197.474, -484.7535, 389.188, 3.351047, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+255, 186709, 0, 1, 1, -5196.546, -481.3118, 389.2609, 1.867502, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+256, 186709, 0, 1, 1, -5198.5, -481.9359, 389.5273, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Standing Brewfest Keg (Area: Dun Morogh)
(@OGUID+257, 180353, 0, 1, 1, -5206.835, -475.9671, 388.5916, 5.67232, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+258, 180353, 0, 1, 1, -5198.233, -490.8853, 388.2694, 1.797689, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+259, 180698, 0, 1, 1, -5192.298, -516.5252, 389.8175, 3.612838, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+260, 186189, 0, 1, 1, -5192.268, -515.6999, 390.9125, 3.001947, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+261, 180353, 0, 1, 1, -5183.63, -540.1546, 397.0719, 0.05235888, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+262, 180037, 0, 1, 1, -5181.629, -485.5835, 387.3477, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+263, 179975, 0, 1, 1, -5181.714, -489.2394, 386.8131, 0.5061446, 0, 0, 0, 1, 120, 255, 1), -- Water Trough Small (Area: Dun Morogh)
(@OGUID+264, 186189, 0, 1, 1, -5179.162, -540.8138, 398.1618, 5.707228, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+265, 180037, 0, 1, 1, -5165.252, -540.4322, 397.1762, 4.869471, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+266, 180698, 0, 1, 1, -5179.37, -540.6351, 397.0732, 0.157079, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+267, 180037, 0, 1, 1, -5164.709, -545.2327, 397.1762, 1.134463, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+268, 186189, 0, 1, 1, -5180.276, -541.2448, 398.183, 4.031712, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+269, 186189, 0, 1, 1, -5179.199, -545.677, 398.2782, 1.797689, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+270, 186189, 0, 1, 1, -5178.812, -545.6241, 398.2783, 2.129301, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+271, 186189, 0, 1, 1, -5179.208, -540.1765, 398.1736, 2.460913, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+272, 186189, 0, 1, 1, -5179.621, -545.9332, 398.279, 3.351047, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+273, 186189, 0, 1, 1, -5179.159, -546.7122, 398.2794, 6.213374, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+274, 186189, 0, 1, 1, -5179.625, -541.3425, 398.194, 6.0912, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+275, 186189, 0, 1, 1, -5179.922, -540.0702, 398.1999, 1.012289, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+276, 180353, 0, 1, 1, -5182.451, -546.9822, 397.1748, 4.537859, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+277, 180698, 0, 1, 1, -5179.068, -545.7936, 397.1751, 3.281239, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+278, 186189, 0, 1, 1, -5178.882, -546.3141, 398.2861, 3.42085, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+279, 180353, 0, 1, 1, -5173.908, -559.1235, 397.1762, 4.415683, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+280, 180698, 0, 1, 1, -5158.652, -571.771, 397.1762, 3.787367, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+281, 186189, 0, 1, 1, -5158.591, -570.8616, 398.2729, 3.368496, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+282, 186189, 0, 1, 1, -5158.417, -571.9476, 398.2943, 0.2967052, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+283, 186189, 0, 1, 1, -5158.822, -572.2585, 398.2873, 3.159062, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+284, 186189, 0, 1, 1, -5157.938, -571.9861, 398.2873, 0.6632232, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+285, 186189, 0, 1, 1, -5159.3, -571.6622, 398.2873, 0.4014249, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+286, 186185, 0, 1, 1, -5145.747, -575.667, 397.1762, 3.996807, 0, 0, 0, 1, 120, 255, 1), -- Gordok Festive Keg (Area: Dun Morogh)
(@OGUID+287, 186189, 0, 1, 1, -5132.596, -588.2156, 398.2805, 1.500983, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+288, 186189, 0, 1, 1, -5132.92, -587.8846, 398.2805, 4.485497, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+289, 186189, 0, 1, 1, -5132.505, -587.1273, 398.2874, 1.483528, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+290, 180698, 0, 1, 1, -5132.599, -588.1033, 397.1762, 0.383971, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+291, 186189, 0, 1, 1, -5133.111, -588.8533, 398.2806, 1.361356, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+292, 180353, 0, 1, 1, -5131.588, -591.271, 397.1766, 2.164206, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+293, 186189, 0, 1, 1, -5130.064, -599.8104, 398.3108, 5.427975, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+294, 180698, 0, 1, 1, -5130.184, -600.5275, 397.2235, 3.438303, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+295, 180037, 0, 1, 1, -5117.444, -580.4518, 397.5432, 5.270896, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+296, 180006, 0, 1, 1, -5118.044, -583.9196, 397.2173, 4.502952, 0, 0, 0, 1, 120, 255, 1), -- Outhouse (Area: Dun Morogh)
(@OGUID+297, 180353, 0, 1, 1, -5129.314, -598.0792, 397.1857, 0.2792516, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+298, 186189, 0, 1, 1, -5129.982, -600.626, 398.3268, 1.169369, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+299, 186189, 0, 1, 1, -5130.73, -600.9566, 398.3385, 0.6283169, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+300, 186189, 0, 1, 1, -5131.017, -600.2695, 398.3386, 2.268925, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+301, 180353, 0, 1, 1, -5130.941, -608.9923, 397.4081, 3.403396, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+302, 180006, 0, 1, 1, -5112.979, -587.9803, 397.2141, 3.595379, 0, 0, 0, 1, 120, 255, 1), -- Outhouse (Area: Dun Morogh)
(@OGUID+303, 180037, 0, 1, 1, -5112.556, -591.7613, 397.1787, 6.143561, 0, 0, 0, 1, 120, 255, 1), -- Haybail 01 (Area: Dun Morogh)
(@OGUID+304, 180006, 0, 1, 1, -5114.941, -585.425, 397.2218, 3.979355, 0, 0, 0, 1, 120, 255, 1), -- Outhouse (Area: Dun Morogh)
(@OGUID+305, 180353, 0, 1, 1, -5131.87, -614.546, 397.3651, 4.34587, 0, 0, 0, 1, 120, 255, 1), -- Freestanding Torch 01 (Area: Dun Morogh)
(@OGUID+306, 186717, 0, 1, 1, -4920.193, -940.244, 501.5717, 4.782203, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+307, 186717, 0, 1, 1, -4905.156, -956.5208, 501.4696, 2.91469, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Dun Morogh)
(@OGUID+308, 180698, 0, 1, 1, -5034.881, -790.3542, 495.1668, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+309, 180698, 0, 1, 1, -5059.743, -812.6451, 495.1413, 5.969027, 0, 0, 0, 1, 120, 255, 1), -- Party Table (Area: Dun Morogh)
(@OGUID+310, 186189, 0, 1, 1, -5035.438, -791.1423, 496.2585, 4.97419, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+311, 186189, 0, 1, 1, -5035.659, -790.0628, 496.2695, 2.897245, 0, 0, 0, 1, 120, 255, 1), -- Complimentary Brewfest Sampler (Area: Dun Morogh)
(@OGUID+312, 195256, 0, 1, 1, -4980.035, -865.8755, 501.6593, 3.735006, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+313, 195256, 0, 1, 1, -5000.161, -841.3087, 501.6593, 3.822273, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+314, 195256, 0, 1, 1, -4990.289, -853.3428, 501.6593, 3.839725, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+315, 195256, 0, 1, 1, -4997.849, -880.6901, 501.6593, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+316, 195256, 0, 1, 1, -5018.228, -855.9774, 501.6593, 0.6806767, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+317, 195256, 0, 1, 1, -5008.323, -868.1884, 501.6593, 0.7679439, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+318, 195255, 0, 1, 1, -4971.149, -937.866, 510.3488, 5.532695, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+319, 195255, 0, 1, 1, -4928.487, -902.7635, 510.4512, 5.288348, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+320, 195255, 0, 1, 1, -5003.481, -983.3287, 510.498, 5.794494, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+321, 195255, 0, 1, 1, -4878.06, -879.947, 510.2419, 5.026549, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+322, 195264, 0, 1, 1, -4905.373, -979.2542, 503.5185, 5.742135, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+323, 195264, 0, 1, 1, -4900.674, -975.4097, 503.4907, 2.705255, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+324, 195266, 0, 1, 1, -4899.028, -982.3143, 510.7769, 2.286379, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+325, 195273, 0, 1, 1, -4888.821, -994.7379, 510.0488, 2.321287, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Ironforge)
(@OGUID+326, 186717, 0, 1, 1, -4649.492, -972.0113, 501.6598, 5.410522, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+327, 186717, 0, 1, 1, -4673.023, -935.6511, 501.659, 2.234018, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+328, 186717, 0, 1, 1, -4969.789, -1222.796, 501.6696, 5.497789, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+329, 186717, 0, 1, 1, -4983.488, -1204.278, 501.6689, 2.321287, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+330, 195264, 0, 1, 1, -4886.383, -993.6835, 504.7578, 2.321287, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+331, 195264, 0, 1, 1, -4890.226, -996.7995, 504.7578, 0.4188786, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+332, 195264, 0, 1, 1, -4895.289, -1001.13, 504.7578, 3.263772, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+333, 195273, 0, 1, 1, -4879.835, -987.3299, 509.9829, 2.146753, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Ironforge)
(@OGUID+334, 195273, 0, 1, 1, -4897.691, -1002.05, 510.0543, 2.076939, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Medium - Brewfest (Area: Ironforge)
(@OGUID+335, 186717, 0, 1, 1, -4678.11, -968.1516, 501.6593, 3.787367, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+336, 195266, 0, 1, 1, -4880.097, -957.7726, 509.6276, 1.937312, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+337, 186717, 0, 1, 1, -4960.084, -1200.375, 501.6594, 0.6806767, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+338, 186717, 0, 1, 1, -4712.871, -1213.871, 501.6593, 2.35619, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+339, 195266, 0, 1, 1, -4974.479, -1033.467, 509.735, 2.775069, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+340, 195264, 0, 1, 1, -4899.348, -1004.479, 504.7578, 5.602507, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+341, 186717, 0, 1, 1, -4698.129, -1246.366, 501.6593, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+342, 195264, 0, 1, 1, -4877.422, -986.3079, 504.7578, 5.707228, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+343, 195260, 0, 1, 1, -4877.751, -999.5267, 506.9579, 3.228859, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Ironforge)
(@OGUID+344, 195260, 0, 1, 1, -4888.352, -1008.27, 506.9579, 1.884953, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Ironforge)
(@OGUID+345, 195260, 0, 1, 1, -4875.534, -997.696, 506.9579, 5.811947, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Ironforge)
(@OGUID+346, 195260, 0, 1, 1, -4885.095, -1005.571, 506.9579, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Small - Brewfest (Area: Ironforge)
(@OGUID+347, 195264, 0, 1, 1, -4881.061, -989.3226, 504.7578, 5.253442, 0, 0, 0, 1, 120, 255, 1), -- Standing, Interior, Medium - Brewfest (Area: Ironforge)
(@OGUID+348, 186717, 0, 1, 1, -4675.359, -1228.174, 501.6593, 0.6632232, 0, 0, 0, 1, 120, 255, 1), -- Brewfest Banner (Area: Ironforge)
(@OGUID+349, 195266, 0, 1, 1, -4798.366, -908.9757, 503.2498, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+350, 195266, 0, 1, 1, -4765.774, -913.3871, 508.2345, 1.326448, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+351, 195255, 0, 1, 1, -4700.935, -958.9014, 510.2951, 0.8203033, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+352, 195266, 0, 1, 1, -4707.566, -948.4097, 509.8717, 0.9075702, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+353, 195256, 0, 1, 1, -4623.986, -917.6334, 501.063, 0.6981314, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+354, 195259, 0, 1, 1, -4630.104, -928.945, 506.1224, 0.7330382, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Square, Small - Brewfest (Area: Ironforge)
(@OGUID+355, 195256, 0, 1, 1, -4618.024, -925.1197, 501.0621, 0.7853968, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+356, 195255, 0, 1, 1, -4672.899, -992.939, 510.192, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+357, 195256, 0, 1, 1, -4609.135, -905.3917, 501.0677, 3.909541, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+358, 195256, 0, 1, 1, -4602.831, -912.7859, 501.0661, 3.787367, 0, 0, 0, 1, 120, 255, 1), -- Standing, Exterior, Medium - Brewfest (Area: Ironforge)
(@OGUID+359, 195266, 0, 1, 1, -4601.875, -1010.215, 509.9108, 1.815142, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+360, 195266, 0, 1, 1, -4591.766, -999.4636, 508.2067, 3.438303, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+361, 195266, 0, 1, 1, -4612.878, -1093.26, 509.6406, 3.054327, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+362, 195266, 0, 1, 1, -4614.037, -1114.479, 509.55, 3.33359, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+363, 195266, 0, 1, 1, -4691.635, -1183.896, 509.9148, 5.550147, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+364, 195255, 0, 1, 1, -4684.716, -1205.307, 510.4501, 2.35619, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+365, 195266, 0, 1, 1, -4732.766, -1146.49, 507.5392, 2.652894, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+366, 195255, 0, 1, 1, -4720.983, -1235.199, 510.4226, 2.129301, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+367, 195266, 0, 1, 1, -4804.957, -1180.351, 510.4589, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+368, 195255, 0, 1, 1, -4931.615, -1206.357, 509.6404, 3.961899, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+369, 195266, 0, 1, 1, -4927.707, -1279.47, 509.7956, 2.652894, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+370, 195255, 0, 1, 1, -4959.707, -1172.347, 509.8299, 3.700105, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Tall/Thin, Large - Brewfest (Area: Ironforge)
(@OGUID+371, 195266, 0, 1, 1, -4989.778, -1117.278, 508.1858, 3.316144, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+372, 195266, 0, 1, 1, -5041.653, -1166.186, 508.2274, 0.3141584, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+373, 195266, 0, 1, 1, -5030.981, -1153.903, 509.7602, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- Hanging, Streamer - Brewfest (Area: Ironforge)
(@OGUID+374, 195266, 0, 1, 1, -5017.75, -1125.038, 509.9572, 0.1919852, 0, 0, 0, 1, 120, 255, 1); -- Hanging; Streamer - Brewfest (Area: Ironforge)


DELETE FROM `game_event_creature` WHERE `eventEntry`=24 AND `guid` BETWEEN @CGUID+0 AND @CGUID+85;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(24, @CGUID+0), 
(24, @CGUID+1), 
(24, @CGUID+2), 
(24, @CGUID+3), 
(24, @CGUID+4), 
(24, @CGUID+5), 
(24, @CGUID+6), 
(24, @CGUID+7), 
(24, @CGUID+8), 
(24, @CGUID+9), 
(24, @CGUID+10),
(24, @CGUID+11),
(24, @CGUID+12),
(24, @CGUID+13),
(24, @CGUID+14),
(24, @CGUID+15),
(24, @CGUID+16),
(24, @CGUID+17),
(24, @CGUID+18),
(24, @CGUID+19),
(24, @CGUID+20),
(24, @CGUID+21),
(24, @CGUID+22),
(24, @CGUID+23),
(24, @CGUID+24),
(24, @CGUID+25),
(24, @CGUID+26),
(24, @CGUID+27),
(24, @CGUID+28),
(24, @CGUID+29),
(24, @CGUID+30),
(24, @CGUID+31),
(24, @CGUID+32),
(24, @CGUID+33),
(24, @CGUID+34),
(24, @CGUID+35),
(24, @CGUID+36),
(24, @CGUID+37),
(24, @CGUID+38),
(24, @CGUID+39),
(24, @CGUID+40),
(24, @CGUID+41),
(24, @CGUID+42),
(24, @CGUID+43),
(24, @CGUID+44),
(24, @CGUID+45),
(24, @CGUID+46),
(24, @CGUID+47),
(24, @CGUID+48),
(24, @CGUID+49),
(24, @CGUID+50),
(24, @CGUID+51),
(24, @CGUID+52),
(24, @CGUID+53),
(24, @CGUID+54),
(24, @CGUID+55),
(24, @CGUID+56),
(24, @CGUID+57),
(24, @CGUID+58),
(24, @CGUID+59),
(24, @CGUID+60),
(24, @CGUID+61),
(24, @CGUID+62),
(24, @CGUID+63),
(24, @CGUID+64),
(24, @CGUID+65),
(24, @CGUID+66),
(24, @CGUID+67),
(24, @CGUID+68),
(24, @CGUID+69),
(24, @CGUID+70),
(24, @CGUID+71),
(24, @CGUID+72),
(24, @CGUID+73),
(24, @CGUID+74),
(24, @CGUID+75),
(24, @CGUID+76),
(24, @CGUID+77),
(24, @CGUID+78),
(24, @CGUID+79),
(24, @CGUID+80),
(24, @CGUID+81),
(24, @CGUID+82),
(24, @CGUID+83),
(24, @CGUID+84),
(24, @CGUID+85);

DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+374 AND `eventEntry`=24;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(24, @OGUID+0),  
(24, @OGUID+1),  
(24, @OGUID+2),  
(24, @OGUID+3),  
(24, @OGUID+4),  
(24, @OGUID+5),  
(24, @OGUID+6),  
(24, @OGUID+7),  
(24, @OGUID+8),  
(24, @OGUID+9),  
(24, @OGUID+10), 
(24, @OGUID+11), 
(24, @OGUID+12), 
(24, @OGUID+13), 
(24, @OGUID+14), 
(24, @OGUID+15), 
(24, @OGUID+16), 
(24, @OGUID+17), 
(24, @OGUID+18), 
(24, @OGUID+19), 
(24, @OGUID+20), 
(24, @OGUID+21), 
(24, @OGUID+22), 
(24, @OGUID+23), 
(24, @OGUID+24), 
(24, @OGUID+25), 
(24, @OGUID+26), 
(24, @OGUID+27), 
(24, @OGUID+28), 
(24, @OGUID+29), 
(24, @OGUID+30), 
(24, @OGUID+31), 
(24, @OGUID+32), 
(24, @OGUID+33), 
(24, @OGUID+34), 
(24, @OGUID+35), 
(24, @OGUID+36), 
(24, @OGUID+37), 
(24, @OGUID+38), 
(24, @OGUID+39), 
(24, @OGUID+40), 
(24, @OGUID+41), 
(24, @OGUID+42), 
(24, @OGUID+43), 
(24, @OGUID+44), 
(24, @OGUID+45), 
(24, @OGUID+46), 
(24, @OGUID+47), 
(24, @OGUID+48), 
(24, @OGUID+49), 
(24, @OGUID+50), 
(24, @OGUID+51), 
(24, @OGUID+52), 
(24, @OGUID+53), 
(24, @OGUID+54), 
(24, @OGUID+55), 
(24, @OGUID+56), 
(24, @OGUID+57), 
(24, @OGUID+58), 
(24, @OGUID+59), 
(24, @OGUID+60), 
(24, @OGUID+61), 
(24, @OGUID+62), 
(24, @OGUID+63), 
(24, @OGUID+64), 
(24, @OGUID+65), 
(24, @OGUID+66), 
(24, @OGUID+67), 
(24, @OGUID+68), 
(24, @OGUID+69), 
(24, @OGUID+70), 
(24, @OGUID+71), 
(24, @OGUID+72), 
(24, @OGUID+73), 
(24, @OGUID+74), 
(24, @OGUID+75), 
(24, @OGUID+76), 
(24, @OGUID+77), 
(24, @OGUID+78), 
(24, @OGUID+79), 
(24, @OGUID+80), 
(24, @OGUID+81), 
(24, @OGUID+82), 
(24, @OGUID+83), 
(24, @OGUID+84), 
(24, @OGUID+85), 
(24, @OGUID+86), 
(24, @OGUID+87), 
(24, @OGUID+88), 
(24, @OGUID+89), 
(24, @OGUID+90), 
(24, @OGUID+91), 
(24, @OGUID+92), 
(24, @OGUID+93), 
(24, @OGUID+94), 
(24, @OGUID+95), 
(24, @OGUID+96), 
(24, @OGUID+97), 
(24, @OGUID+98), 
(24, @OGUID+99), 
(24, @OGUID+100),
(24, @OGUID+101),
(24, @OGUID+102),
(24, @OGUID+103),
(24, @OGUID+104),
(24, @OGUID+105),
(24, @OGUID+106),
(24, @OGUID+107),
(24, @OGUID+108),
(24, @OGUID+109),
(24, @OGUID+110),
(24, @OGUID+111),
(24, @OGUID+112),
(24, @OGUID+113),
(24, @OGUID+114),
(24, @OGUID+115),
(24, @OGUID+116),
(24, @OGUID+117),
(24, @OGUID+118),
(24, @OGUID+119),
(24, @OGUID+120),
(24, @OGUID+121),
(24, @OGUID+122),
(24, @OGUID+123),
(24, @OGUID+124),
(24, @OGUID+125),
(24, @OGUID+126),
(24, @OGUID+127),
(24, @OGUID+128),
(24, @OGUID+129),
(24, @OGUID+130),
(24, @OGUID+131),
(24, @OGUID+132),
(24, @OGUID+133),
(24, @OGUID+134),
(24, @OGUID+135),
(24, @OGUID+136),
(24, @OGUID+137),
(24, @OGUID+138),
(24, @OGUID+139),
(24, @OGUID+140),
(24, @OGUID+141),
(24, @OGUID+142),
(24, @OGUID+143),
(24, @OGUID+144),
(24, @OGUID+145),
(24, @OGUID+146),
(24, @OGUID+147),
(24, @OGUID+148),
(24, @OGUID+149),
(24, @OGUID+150),
(24, @OGUID+151),
(24, @OGUID+152),
(24, @OGUID+153),
(24, @OGUID+154),
(24, @OGUID+155),
(24, @OGUID+156),
(24, @OGUID+157),
(24, @OGUID+158),
(24, @OGUID+159),
(24, @OGUID+160),
(24, @OGUID+161),
(24, @OGUID+162),
(24, @OGUID+163),
(24, @OGUID+164),
(24, @OGUID+165),
(24, @OGUID+166),
(24, @OGUID+167),
(24, @OGUID+168),
(24, @OGUID+169),
(24, @OGUID+170),
(24, @OGUID+171),
(24, @OGUID+172),
(24, @OGUID+173),
(24, @OGUID+174),
(24, @OGUID+175),
(24, @OGUID+176),
(24, @OGUID+177),
(24, @OGUID+178),
(24, @OGUID+179),
(24, @OGUID+180),
(24, @OGUID+181),
(24, @OGUID+182),
(24, @OGUID+183),
(24, @OGUID+184),
(24, @OGUID+185),
(24, @OGUID+186),
(24, @OGUID+187),
(24, @OGUID+188),
(24, @OGUID+189),
(24, @OGUID+190),
(24, @OGUID+191),
(24, @OGUID+192),
(24, @OGUID+193),
(24, @OGUID+194),
(24, @OGUID+195),
(24, @OGUID+196),
(24, @OGUID+197),
(24, @OGUID+198),
(24, @OGUID+199),
(24, @OGUID+200),
(24, @OGUID+201),
(24, @OGUID+202),
(24, @OGUID+203),
(24, @OGUID+204),
(24, @OGUID+205),
(24, @OGUID+206),
(24, @OGUID+207),
(24, @OGUID+208),
(24, @OGUID+209),
(24, @OGUID+210),
(24, @OGUID+211),
(24, @OGUID+212),
(24, @OGUID+213),
(24, @OGUID+214),
(24, @OGUID+215),
(24, @OGUID+216),
(24, @OGUID+217),
(24, @OGUID+218),
(24, @OGUID+219),
(24, @OGUID+220),
(24, @OGUID+221),
(24, @OGUID+222),
(24, @OGUID+223),
(24, @OGUID+224),
(24, @OGUID+225),
(24, @OGUID+226),
(24, @OGUID+227),
(24, @OGUID+228),
(24, @OGUID+229),
(24, @OGUID+230),
(24, @OGUID+231),
(24, @OGUID+232),
(24, @OGUID+233),
(24, @OGUID+234),
(24, @OGUID+235),
(24, @OGUID+236),
(24, @OGUID+237),
(24, @OGUID+238),
(24, @OGUID+239),
(24, @OGUID+240),
(24, @OGUID+241),
(24, @OGUID+242),
(24, @OGUID+243),
(24, @OGUID+244),
(24, @OGUID+245),
(24, @OGUID+246),
(24, @OGUID+247),
(24, @OGUID+248),
(24, @OGUID+249),
(24, @OGUID+250),
(24, @OGUID+251),
(24, @OGUID+252),
(24, @OGUID+253),
(24, @OGUID+254),
(24, @OGUID+255),
(24, @OGUID+256),
(24, @OGUID+257),
(24, @OGUID+258),
(24, @OGUID+259),
(24, @OGUID+260),
(24, @OGUID+261),
(24, @OGUID+262),
(24, @OGUID+263),
(24, @OGUID+264),
(24, @OGUID+265),
(24, @OGUID+266),
(24, @OGUID+267),
(24, @OGUID+268),
(24, @OGUID+269),
(24, @OGUID+270),
(24, @OGUID+271),
(24, @OGUID+272),
(24, @OGUID+273),
(24, @OGUID+274),
(24, @OGUID+275),
(24, @OGUID+276),
(24, @OGUID+277),
(24, @OGUID+278),
(24, @OGUID+279),
(24, @OGUID+280),
(24, @OGUID+281),
(24, @OGUID+282),
(24, @OGUID+283),
(24, @OGUID+284),
(24, @OGUID+285),
(24, @OGUID+286),
(24, @OGUID+287),
(24, @OGUID+288),
(24, @OGUID+289),
(24, @OGUID+290),
(24, @OGUID+291),
(24, @OGUID+292),
(24, @OGUID+293),
(24, @OGUID+294),
(24, @OGUID+295),
(24, @OGUID+296),
(24, @OGUID+297),
(24, @OGUID+298),
(24, @OGUID+299),
(24, @OGUID+300),
(24, @OGUID+301),
(24, @OGUID+302),
(24, @OGUID+303),
(24, @OGUID+304),
(24, @OGUID+305),
(24, @OGUID+306),
(24, @OGUID+307),
(24, @OGUID+308),
(24, @OGUID+309),
(24, @OGUID+310),
(24, @OGUID+311),
(24, @OGUID+312),
(24, @OGUID+313),
(24, @OGUID+314),
(24, @OGUID+315),
(24, @OGUID+316),
(24, @OGUID+317),
(24, @OGUID+318),
(24, @OGUID+319),
(24, @OGUID+320),
(24, @OGUID+321),
(24, @OGUID+322),
(24, @OGUID+323),
(24, @OGUID+324),
(24, @OGUID+325),
(24, @OGUID+326),
(24, @OGUID+327),
(24, @OGUID+328),
(24, @OGUID+329),
(24, @OGUID+330),
(24, @OGUID+331),
(24, @OGUID+332),
(24, @OGUID+333),
(24, @OGUID+334),
(24, @OGUID+335),
(24, @OGUID+336),
(24, @OGUID+337),
(24, @OGUID+338),
(24, @OGUID+339),
(24, @OGUID+340),
(24, @OGUID+341),
(24, @OGUID+342),
(24, @OGUID+343),
(24, @OGUID+344),
(24, @OGUID+345),
(24, @OGUID+346),
(24, @OGUID+347),
(24, @OGUID+348),
(24, @OGUID+349),
(24, @OGUID+350),
(24, @OGUID+351),
(24, @OGUID+352),
(24, @OGUID+353),
(24, @OGUID+354),
(24, @OGUID+355),
(24, @OGUID+356),
(24, @OGUID+357),
(24, @OGUID+358),
(24, @OGUID+359),
(24, @OGUID+360),
(24, @OGUID+361),
(24, @OGUID+362),
(24, @OGUID+363),
(24, @OGUID+364),
(24, @OGUID+365),
(24, @OGUID+366),
(24, @OGUID+367),
(24, @OGUID+368),
(24, @OGUID+369),
(24, @OGUID+370),
(24, @OGUID+371),
(24, @OGUID+372),
(24, @OGUID+373),
(24, @OGUID+374);


DELETE FROM `npc_vendor` WHERE `entry` IN (23522, 23525, 23710);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `ExtendedCost`, `Type`) VALUES
-- 23522 (Arlen Lochlan)
(23522, 33043, 1, 0, 0, 1), -- The Essential Brewfest Pretzel
(23522, 4540, 2, 0, 0, 1), -- Tough Hunk of Bread
(23522, 4541, 3, 0, 0, 1), -- Freshly Baked Bread
(23522, 4542, 4, 0, 0, 1), -- Moist Cornbread
(23522, 4544, 5, 0, 0, 1), -- Mulgore Spice Bread
(23522, 4601, 6, 0, 0, 1), -- Soft Banana Bread
(23522, 8950, 7, 0, 0, 1), -- Homemade Cherry Pie
(23522, 27855, 8, 0, 0, 1), -- Mag'har Grainbread
(23522, 33449, 9, 0, 0, 1), -- Crusty Flatbread
(23522, 35950, 10, 0, 0, 1), -- Sweet Potato Bread
(23522, 58260, 11, 0, 0, 1), -- Pine Nut Bread
(23522, 58261, 12, 0, 0, 1), -- Buttery Wheat Roll
-- 23525 (Brother Cartwright)
(23525, 2723, 1, 0, 0, 1), -- Bottle of Dalaran Noir
(23525, 2593, 2, 0, 0, 1), -- Flask of Stormwind Tawny
(23525, 2596, 3, 0, 0, 1), -- Skin of Dwarven Stout
(23525, 2594, 4, 0, 0, 1), -- Flagon of Dwarven Mead
(23525, 2595, 5, 0, 0, 1), -- Jug of Badlands Bourbon
-- 23710 (Belbi Quikswitch)
(23710, 33968, 1, 0, 2274, 1), -- Blue Brewfest Hat
(23710, 33864, 2, 0, 2274, 1), -- Brown Brewfest Hat
(23710, 33967, 3, 0, 2274, 1), -- Green Brewfest Hat
(23710, 33969, 4, 0, 2274, 1), -- Purple Brewfest Hat
(23710, 33863, 5, 0, 2276, 1), -- Brewfest Dress
(23710, 33966, 6, 0, 2275, 1), -- Brewfest Slippers
(23710, 33862, 7, 0, 2276, 1), -- Brewfest Regalia
(23710, 33868, 8, 0, 2275, 1), -- Brewfest Boots
(23710, 37571, 9, 0, 2397, 1), -- "Brew of the Month" Club Membership Form
(23710, 33047, 11, 0, 2275, 1), -- Belbi's Eyesight Enhancing Romance Goggles
(23710, 90427, 12, 0, 2275, 1), -- Pandaren Brewpack
(23710, 71137, 13, 0, 2276, 1), -- Brewfest Keg Pony
(23710, 33927, 14, 0, 2275, 1), -- Brewfest Pony Keg
(23710, 46707, 15, 0, 2275, 1), -- Pint-Sized Pink Pachyderm
(23710, 32233, 16, 0, 2276, 1), -- Wolpertinger's Tankard
(23710, 37750, 17, 0, 2398, 1), -- Fresh Brewfest Hops
(23710, 37816, 18, 0, 2399, 1); -- Preserved Brewfest Hops

DELETE FROM `creature_template_addon` WHERE `entry` IN (23510, 23482, 24364, 24468, 23558, 23521, 23710, 23627, 23683, 23522, 23628, 23684, 23486, 24710, 23525, 27215, 23481, 40441);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(23510, 0, 0x0, 0x1, ''), -- Thunderbrew Apprentice
(23482, 0, 0x0, 0x1, ''), -- Barleybrew Apprentice
(24364, 0, 0x0, 0x101, '44067'), -- Flynn Firebrew - Supplier Mark
(24468, 0, 0x0, 0x1, '44068'), -- Pol Amberstill - Base Camp Mark
(23558, 0, 0x0, 0x1, ''), -- Neill Ramstein
(23521, 0, 0x0, 0x1, ''), -- Anne Summers
(23710, 0, 0x0, 0x1, ''), -- Belbi Quikswitch
(23627, 0, 0x0, 0x101, ''), -- Becan Barleybrew
(23683, 0, 0x0, 0x101, ''), -- Maeve Barleybrew
(23522, 0, 0x0, 0x1, ''), -- Arlen Lochlan
(23628, 0, 0x0, 0x101, ''), -- Daran Thunderbrew
(23684, 0, 0x0, 0x101, ''), -- Ita Thunderbrew
(23486, 0, 0x0, 0x1, ''), -- Goldark Snipehunter
(24710, 0, 0x0, 0x1, ''), -- Ipfelkofer Ironkeg
(23525, 0, 0x0, 0x1, ''), -- Brother Cartwright
(27215, 0, 0x0, 0x1, ''), -- Boxey Boltspinner
(23481, 0, 0x0, 0x1, ''), -- Keiran Donoghue
(40441, 0, 0x0, 0x1, ''); -- Battered Brewmaster

UPDATE `creature_template` SET `gossip_menu_id`=8996, `RangeAttackTime`=2000 WHERE `entry`=24710; -- Ipfelkofer Ironkeg
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24766; -- [DND] Brewfest Face Me Bunny
UPDATE `creature_template` SET `npcflag`=3, `RangeAttackTime`=2000 WHERE `entry`=27215; -- Boxey Boltspinner
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=27478; -- Larkin Thunderbrew
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000 WHERE `entry`=23481; -- Keiran Donoghue
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23482; -- Barleybrew Apprentice
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23486; -- Goldark Snipehunter
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23488; -- Brewfest Crowd
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23510; -- Thunderbrew Apprentice
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23511; -- Gordok Brew Apprentice
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000 WHERE `entry`=23521; -- Anne Summers
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000 WHERE `entry`=23522; -- Arlen Lochlan
UPDATE `creature_template` SET `npcflag`=640, `RangeAttackTime`=2000 WHERE `entry`=23525; -- Brother Cartwright
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=2099200 WHERE `entry`=23558; -- Neill Ramstein
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23627; -- Becan Barleybrew
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23628; -- Daran Thunderbrew
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23683; -- Maeve Barleybrew
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23684; -- Ita Thunderbrew
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23685; -- Gordok Brew Barker
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23696; -- Gordok Brew Chief
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23698; -- Drunken Brewfest Reveler
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=23700; -- Barleybrew Festive Keg
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=23702; -- Thunderbrew Festive Keg
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23703; -- [DND] Brewfest Dark Iron Event Generator
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=23706; -- Gordok Festive Keg
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23710; -- Belbi Quikswitch
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=23808; -- [DND] Brewfest Keg Move to Target
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=23894; -- [DND] Brewfest Dark Iron Spawn Bunny
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=24108; -- Self-Turning and Oscillating Utility Target
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=0 WHERE `entry`=24109; -- [DND] Brewfest Target Dummy Move To Target
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags2`=2099200 WHERE `entry`=24364; -- Flynn Firebrew
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24462; -- Racing Ram
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24463; -- Swift Racing Ram
UPDATE `creature_template` SET `gossip_menu_id`=8960, `npcflag`=3, `RangeAttackTime`=2000, `unit_flags2`=2099200 WHERE `entry`=24468; -- Pol Amberstill
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24484; -- Brewfest Reveler
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=24536; -- Dark Iron Herald

#####################################################################################
--				Brewfest Boss
#####################################################################################
-- https://es.wowhead.com/npc=23872/coren-cerveza-temible 
DELETE FROM `game_event_creature` WHERE `eventEntry`=24 AND `guid` = 362076;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(24, 362076);
DELETE FROM `creature` WHERE `guid` = '362076';
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) 
VALUES('362076','23872','230','1584','1584','1','1','0','1992','893.251','-131.213','-49.7469','5.22474','86400','0','0','160000','0','0','0','0','0','0');

-- https://es.wowhead.com/item=54535/arqueta-con-forma-de-barril
DELETE FROM `item_loot_template` WHERE `entry` = '54535';
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) 
VALUES('54535','37829','90','1','0','10','15'),
('54535','37863','11','1','1','1','1'),
('54535','71331','10','1','1','1','1'),
('54535','71332','10','1','1','1','1'),
('54535','33977','5','1','1','1','1'),
('54535','37828','5','1','1','1','1');
