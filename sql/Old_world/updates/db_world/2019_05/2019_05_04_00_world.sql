
-- Unbound Flame Spirit HP Fix - 40080
UPDATE `creature_template` SET `Health_mod`=0.1 WHERE `entry`=40080;

-- Blazebound Elemental HP FIX - 38896
UPDATE `creature_template` SET `Health_mod`=3, `Mana_mod`=1 WHERE `entry`=38896;

-- Twilight Flamecaller HP Fix - 38926
UPDATE `creature_template` SET `Health_mod`=1 WHERE `entry`=38926;

-- Twilight Vanquisher HP Fix - 38913
UPDATE `creature_template` SET `Health_mod`=1 WHERE `entry`=38913;

-- Scalding Rock Elemental HP Fix
UPDATE `creature_template` SET `Health_mod`=1 WHERE `entry`=40229;

-- Twilight Overseer HP Fix
UPDATE `creature_template` SET `Health_mod`=1 WHERE `entry`=40123;

-- Nightmare Terror HP Fix
UPDATE `creature_template` SET `Health_mod`=1 WHERE `entry`=40134;
