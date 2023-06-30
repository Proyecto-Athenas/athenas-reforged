-- modifica la cantidad de oro de los npcs 
UPDATE `creature_template` SET  `mingold`='121' WHERE entry IN (47134, 47131, 47137, 3875, 3864, 3865, 47231, 47232, 47143, 3877, 3873, 47140, 47135, 47132, 3870, 3869, 47135, 47146, 47138);
UPDATE `creature_template` SET  `maxgold`='163' WHERE entry IN (47134, 47131, 47137, 3875, 3864, 3865, 47231, 47232, 47143, 3877, 3873, 47140, 47135, 47132, 3870, 3869, 47135, 47146, 47138);

-- eliminando items de lnl superior al de la instancia
DELETE FROM `creature_loot_template` WHERE `entry`=47137 AND `Item`=59230;

DELETE FROM `creature_loot_template` WHERE `entry`=3875 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=3875 AND `Item`=58266;
DELETE FROM `creature_loot_template` WHERE `entry`=3875 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=3875 AND `Item`=60875;
DELETE FROM `creature_loot_template` WHERE `entry`=3875 AND `Item`=68197;
DELETE FROM `creature_loot_template` WHERE `entry`=3875 AND `Item`=68198;

DELETE FROM `creature_loot_template` WHERE `entry`=47231 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=47231 AND `Item`=58266;
DELETE FROM `creature_loot_template` WHERE `entry`=47231 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=47231 AND `Item`=60875;
DELETE FROM `creature_loot_template` WHERE `entry`=47231 AND `Item`=68197;
DELETE FROM `creature_loot_template` WHERE `entry`=47231 AND `Item`=68198;

DELETE FROM `creature_loot_template` WHERE `entry`=47232 AND `Item`=59230;

DELETE FROM `creature_loot_template` WHERE `entry`=47143 AND `Item`=59230;

DELETE FROM `creature_loot_template` WHERE `entry`=3877 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=3877 AND `Item`=58266;
DELETE FROM `creature_loot_template` WHERE `entry`=3877 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=3877 AND `Item`=60875;
DELETE FROM `creature_loot_template` WHERE `entry`=3877 AND `Item`=68197;
DELETE FROM `creature_loot_template` WHERE `entry`=3877 AND `Item`=68198;

DELETE FROM `creature_loot_template` WHERE `entry`=3873 AND `Item`=59230;

DELETE FROM `creature_loot_template` WHERE `entry`=47140 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=47140 AND `Item`=58266;
DELETE FROM `creature_loot_template` WHERE `entry`=47140 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=47140 AND `Item`=60875;
DELETE FROM `creature_loot_template` WHERE `entry`=47140 AND `Item`=68197;
DELETE FROM `creature_loot_template` WHERE `entry`=47140 AND `Item`=68198;

DELETE FROM `creature_loot_template` WHERE `entry`=47135 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=47135 AND `Item`=58266;
DELETE FROM `creature_loot_template` WHERE `entry`=47135 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=47135 AND `Item`=60875;
DELETE FROM `creature_loot_template` WHERE `entry`=47135 AND `Item`=68197;
DELETE FROM `creature_loot_template` WHERE `entry`=47135 AND `Item`=68198;

DELETE FROM `creature_loot_template` WHERE `entry`=47132 AND `Item`=59230;

DELETE FROM `creature_loot_template` WHERE `entry`=3870 AND `Item`=59230;

DELETE FROM `creature_loot_template` WHERE `entry`=3869;

DELETE FROM `creature_loot_template` WHERE `entry`=47146 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=47146 AND `Item`=58266;
DELETE FROM `creature_loot_template` WHERE `entry`=47146 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=47146 AND `Item`=60875;
DELETE FROM `creature_loot_template` WHERE `entry`=47146 AND `Item`=68197;
DELETE FROM `creature_loot_template` WHERE `entry`=47146 AND `Item`=68198;

DELETE FROM `creature_loot_template` WHERE `entry`=47138 AND `Item`=53010;
DELETE FROM `creature_loot_template` WHERE `entry`=47138 AND `Item`=68198;
DELETE FROM `creature_loot_template` WHERE `entry`=47138 AND `Item`=59230;
DELETE FROM `creature_loot_template` WHERE `entry`=47138 AND `Item`=58266;