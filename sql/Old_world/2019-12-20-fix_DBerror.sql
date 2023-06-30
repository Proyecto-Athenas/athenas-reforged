-- errores unit_class
UPDATE `creature_template` SET  `unit_class`='1' WHERE entry IN (532973, 530930, 528840, 532972, 532971, 532978, 532977, 100001, 532974, 529810, 532980, 532979, 532976, 532975, 531431, 531430);

-- elminados creature_addon de guids que no existen
DELETE FROM `creature_addon`  WHERE guid IN (58844, 58924, 59171, 59332, 59375, 59409, 59411, 59446, 59453, 59494, 59512, 59516);
DELETE FROM `creature_addon`  WHERE guid IN (59524, 59545, 59546, 59560, 59612, 59645, 59646, 59650, 59678, 59716, 59731, 59737);
DELETE FROM `creature_addon`  WHERE guid IN (59749, 59776, 59777, 59786, 59789, 59822, 59849, 59853, 59882, 59886, 59915, 59919);
DELETE FROM `creature_addon`  WHERE guid IN (59952, 59969, 59974, 59977, 60000, 60006, 60025, 254492, 254491, 254490, 254489, 254488);
DELETE FROM `creature_addon`  WHERE guid IN (254486, 254483, 254475, 254474, 254473, 254469, 254467, 254465, 254464, 254463, 254462, 254451);
DELETE FROM `creature_addon`  WHERE guid IN (254442, 254494, 254495, 254496, 44910, 44971, 45126, 45841, 46050, 46062, 46126, 46172);
DELETE FROM `creature_addon`  WHERE guid IN (46245, 46258, 46360, 46454, 92692, 69319, 69325, 69322, 69324, 69323);

-- pool_quest actualice las misiones 29299 29163 29123
UPDATE `pool_quest` SET  `pool_entry`='50507' WHERE entry IN (29299);
UPDATE `pool_quest` SET  `pool_entry`='50500' WHERE entry IN (29163);
UPDATE `pool_quest` SET  `pool_entry`='50500' WHERE entry IN (29123);

-- eliminado gameobject_loot_template de un objeto no existente
DELETE FROM `gameobject_loot_template`  WHERE entry IN (4668, 8367);

-- elimina waypoint de una creatura no spawmeada en el mapa
DELETE FROM `waypoints` WHERE entry=282170;

-- emilina los datos de player_factionchange_items ya que el item no es existente 
DELETE FROM `player_factionchange_items` WHERE alliance_id=73539;

-- eliminados los datos de estas 2 spells no existentes
DELETE FROM `spell_scripts` WHERE id IN (34448, 34452);
