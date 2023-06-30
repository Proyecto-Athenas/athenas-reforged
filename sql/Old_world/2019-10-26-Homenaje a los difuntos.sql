-- fix The Honored Dead reporte trello https://trello.com/c/PPFG1dgm/169-mision-homenaje-a-los-difuntos-hermes
SET @GUARD := 25342;
SET @WORKER := 25343;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45474 AND `ConditionTypeOrReference`=36;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@GUARD,@WORKER) AND `id` IN (2,3);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUARD,0,2,3,8,0,100,0,45474,0,0,0,33,@GUARD,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Guard - On Spellhit - Give Quest Credit'),
(@GUARD,0,3,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Caravan Guard - On Spellhit - Despawn'),
(@WORKER,0,2,3,8,0,100,0,45474,0,0,0,33,@GUARD,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Worker - On Spellhit - Give Quest Credit'),
(@WORKER,0,3,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Caravan Worker - On Spellhit - Despawn');