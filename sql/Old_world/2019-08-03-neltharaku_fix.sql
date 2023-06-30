-- fix movimiento de npc https://es.wowhead.com/npc=21657/neltharaku
SET @CGUID :=179066;  
SET @PATHID :=@CGUID*10;

UPDATE `creature` SET `MovementType`='2' WHERE `guid`=@CGUID;
UPDATE `creature` SET `spawndist`='0' WHERE `guid`=@CGUID;


DELETE FROM `creature_addon` WHERE `path_id`=@PATHID;
INSERT INTO `creature_addon`(`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(@CGUID,@PATHID,0,0,0,0,0);

DELETE FROM `waypoint_data` WHERE `id`=@PATHID;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`,`inverse_formation_angle`) VALUES 
(@PATHID,1,-4162.18,779.807,114.377,4.60244,0,0,0,100,0,0),
(@PATHID,2,-4173.53,676.981,103.504,4.60244,0,0,0,100,0,0),
(@PATHID,3,-4100.33,636.731,97.4488,0.974682,0,0,0,100,0,0),
(@PATHID,4,-4056.91,703.86,105.5,1.09014,0,0,0,100,0,0),
(@PATHID,5,-4023.41,794.263,116.903,1.19381,0,0,0,100,0,0),
(@PATHID,6,-3980.77,911.327,125.976,2.85728,0,0,0,100,0,0),
(@PATHID,7,-4113.38,937.899,114.032,4.30399,0,0,0,100,0,0),
(@PATHID,8,-4147.19,852.921,112.449,4.27906,0,0,0,100,0,0);

-- fix movimiento reducido https://es.wowhead.com/npc=21657/neltharaku
UPDATE `creature_template` SET `speed_fly`='1' WHERE `entry`=21657;
UPDATE `creature_template` SET `speed_fly`='1' WHERE `entry`=21648;
UPDATE `creature` SET `spawndist`='15' WHERE `guid`=21648;

DELETE FROM `conditions` WHERE `SourceGroup`=12676;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES	
(1, 12676, 16305, 0, 0, 2, 0, 16305, 1, 1, 1, 0, 0, '', NULL),
(1, 12676, 16305, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL),
(1, 12676, 16305, 0, 0, 14, 0, 2, 0, 0, 0, 0, 0, '', NULL);