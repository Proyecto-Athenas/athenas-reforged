-- menu de la vaca
DELETE FROM `npc_text` WHERE `ID` = 20011;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES('20011','Greetings $N, you need the power of saitama to be able to milk me.','Greetings $N, you need the power of saitama to be able to milk me.','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','1');

DELETE FROM `locales_npc_text` WHERE `ID` = 20011;
INSERT INTO `locales_npc_text` (`ID`, `Text0_0_loc1`, `Text0_0_loc2`, `Text0_0_loc3`, `Text0_0_loc4`, `Text0_0_loc5`, `Text0_0_loc6`, `Text0_0_loc7`, `Text0_0_loc8`, `Text0_1_loc1`, `Text0_1_loc2`, `Text0_1_loc3`, `Text0_1_loc4`, `Text0_1_loc5`, `Text0_1_loc6`, `Text0_1_loc7`, `Text0_1_loc8`, `Text1_0_loc1`, `Text1_0_loc2`, `Text1_0_loc3`, `Text1_0_loc4`, `Text1_0_loc5`, `Text1_0_loc6`, `Text1_0_loc7`, `Text1_0_loc8`, `Text1_1_loc1`, `Text1_1_loc2`, `Text1_1_loc3`, `Text1_1_loc4`, `Text1_1_loc5`, `Text1_1_loc6`, `Text1_1_loc7`, `Text1_1_loc8`, `Text2_0_loc1`, `Text2_0_loc2`, `Text2_0_loc3`, `Text2_0_loc4`, `Text2_0_loc5`, `Text2_0_loc6`, `Text2_0_loc7`, `Text2_0_loc8`, `Text2_1_loc1`, `Text2_1_loc2`, `Text2_1_loc3`, `Text2_1_loc4`, `Text2_1_loc5`, `Text2_1_loc6`, `Text2_1_loc7`, `Text2_1_loc8`, `Text3_0_loc1`, `Text3_0_loc2`, `Text3_0_loc3`, `Text3_0_loc4`, `Text3_0_loc5`, `Text3_0_loc6`, `Text3_0_loc7`, `Text3_0_loc8`, `Text3_1_loc1`, `Text3_1_loc2`, `Text3_1_loc3`, `Text3_1_loc4`, `Text3_1_loc5`, `Text3_1_loc6`, `Text3_1_loc7`, `Text3_1_loc8`, `Text4_0_loc1`, `Text4_0_loc2`, `Text4_0_loc3`, `Text4_0_loc4`, `Text4_0_loc5`, `Text4_0_loc6`, `Text4_0_loc7`, `Text4_0_loc8`, `Text4_1_loc1`, `Text4_1_loc2`, `Text4_1_loc3`, `Text4_1_loc4`, `Text4_1_loc5`, `Text4_1_loc6`, `Text4_1_loc7`, `Text4_1_loc8`, `Text5_0_loc1`, `Text5_0_loc2`, `Text5_0_loc3`, `Text5_0_loc4`, `Text5_0_loc5`, `Text5_0_loc6`, `Text5_0_loc7`, `Text5_0_loc8`, `Text5_1_loc1`, `Text5_1_loc2`, `Text5_1_loc3`, `Text5_1_loc4`, `Text5_1_loc5`, `Text5_1_loc6`, `Text5_1_loc7`, `Text5_1_loc8`, `Text6_0_loc1`, `Text6_0_loc2`, `Text6_0_loc3`, `Text6_0_loc4`, `Text6_0_loc5`, `Text6_0_loc6`, `Text6_0_loc7`, `Text6_0_loc8`, `Text6_1_loc1`, `Text6_1_loc2`, `Text6_1_loc3`, `Text6_1_loc4`, `Text6_1_loc5`, `Text6_1_loc6`, `Text6_1_loc7`, `Text6_1_loc8`, `Text7_0_loc1`, `Text7_0_loc2`, `Text7_0_loc3`, `Text7_0_loc4`, `Text7_0_loc5`, `Text7_0_loc6`, `Text7_0_loc7`, `Text7_0_loc8`, `Text7_1_loc1`, `Text7_1_loc2`, `Text7_1_loc3`, `Text7_1_loc4`, `Text7_1_loc5`, `Text7_1_loc6`, `Text7_1_loc7`, `Text7_1_loc8`) VALUES('20011',NULL,'Saludos $N, necesitas el poder de saitama para poder ordeñarme.',NULL,NULL,NULL,'Saludos $N, necesitas el poder de saitama para poder ordeñarme.','Saludos $N, necesitas el poder de saitama para poder ordeñarme.',NULL,NULL,'Salutation $N,',NULL,NULL,NULL,NULL,NULL,NULL,NULL,' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL);


-- opciones de menú de la vaca
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (51001, 51002);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) 
VALUES('51001','0','9','List of professions',NULL,'0','1','0','0','0','0',NULL,NULL),
('51001','1','7','Bye',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','0','3','Alchemy',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','1','3','Blacksmithing',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','2','3','Leatherworking',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','3','3','Tailoring',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','4','3','Engineering',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','5','3','Enchanting',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','6','3','Jewelcrafting',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','7','3','Inscription',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','8','3','Cooking',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','9','3','First Aid',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','10','3','Herbalism',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','11','3','Skinning',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','12','3','Mining',NULL,'0','1','0','0','0','0',NULL,NULL),
('51002','13','4','Return to Main Menu',NULL,'0','1','0','0','0','0',NULL,NULL);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` IN (51001, 51002);
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`, `option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`, `option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) 
VALUES('51001','0','List of professions',NULL,NULL,NULL,NULL,'Lista de Profesiones','Lista de Profesiones',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51001','1','Bye',NULL,NULL,NULL,NULL,'Adiós','Adiós',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','0','Alchemy',NULL,NULL,NULL,NULL,'Alquimia','Alquimia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','1','Blacksmithing',NULL,NULL,NULL,NULL,'Herreria','Herreria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','2','Leatherworking',NULL,NULL,NULL,NULL,'Peletería','Peletería',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','3','Tailoring',NULL,NULL,NULL,NULL,'Sastrería','Sastrería',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','4','Engineering',NULL,NULL,NULL,NULL,'Ingenieria','Ingenieria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','5','Enchanting',NULL,NULL,NULL,NULL,'Encantamiento','Encantamiento',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','6','Jewelcrafting',NULL,NULL,NULL,NULL,'Joyería','Joyería',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','7','Inscription',NULL,NULL,NULL,NULL,'Inscripción','Inscripción',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','8','Cooking',NULL,NULL,NULL,NULL,'Cocina','Cocina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','9','FIrst Aid',NULL,NULL,NULL,NULL,'Primeros auxilios','Primeros auxilios',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','10','Herbalism',NULL,NULL,NULL,NULL,'Herboristería','Herboristería',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','11','Skinning',NULL,NULL,NULL,NULL,'Desuello','Desuello',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','12','Mining',NULL,NULL,NULL,NULL,'Minería','Minería',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('51002','13','Return to Main Menu',NULL,NULL,NULL,NULL,'Volver al menú principal','Volver al menú principal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
