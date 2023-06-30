
-- Primer mision que requiere de completar 7 misiones mas del evento
DELETE FROM `quest_template` WHERE `Id`=20005;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20005, 2, NULL, 'Untested', 85, 85, 0, -162, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'PRIMER ANIVERSARIO DE ATHENAS WOW', 'Junta las 7 Premios de Aniversario diarias del 1er aniversario de Athenas WoW Project', 'Para conmemorar el tiempo que el servidor ha estado activo, hemos decidido crear una serie de misiones las cuales permitirán a los usuarios hacerse con un montón de increíbles premios. Esperamos las disfruten y sigan apoyando este proyecto que día a día se hace más grande.', '', 'Gracias por tu constante apoyo. Esperamos este sea el primero de muchos años. ', NULL, 'Vuelve con Saitamapaz!', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245790, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


-- Terminada pve
DELETE FROM `quest_template` WHERE `Id`=20001;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20001, 2, NULL, 'Untested', 85, 85, 0, -162, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DESCENSO DE ALANEGRA', 'Completa Descenso de Alanegra en dificultad Normal de 10 jugadores.', 'El rey del vuelo negro a revivido a su más poderoso Hijo, Nefarian. Cumbres de Rocanegra se encuentra actualmente ocupado por el Vuelo Negro, tras haber expulsado a los enanos Hierro Negro que habitaban las Profundidades de Roca Negra. Sin embargo, a pesar de la rivalidad entre las dos facciones, la reciente alianza entre Alamuerte y Ragnaros en el Monte Hyjal, y la presencia de los gólems hierro negro, puede significar que bajo la Montaña Rocanegra se encuentre en realidad un gran ejército que lucha conjuntamente contra los héroes de Azeroth. No debemos permitir que este ejército se siga fortaleciendo, es hora de actuar.', '', 'Sabía que esa pequeña lagartija no era rival para ti. Ten esta recompensa por tu esfuerzo, seguro te será de ayuda.', NULL, 'Vuelve con Saitamapaz!', 41376, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);
DELETE FROM `quest_template` WHERE `Id`=20002;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20002, 2, NULL, 'Untested', 85, 85, 0, -162, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'MAZMORRAS CON MODO HEROICO', 'Completa Fin de los días, Hora del crepúsculo, Pozo de la eternidad Y Núcleo Pétreo en dificultad HEROICA.', 'Azeroth está colmado de una infinidad de increíbles y aterradoras criaturas, y es nuestro deber, como grandes héroes de esta tierra, enfrentarlas, vencerlas y acabar con su maligna influencia. Acaba con algunos de los grandes monstruos que azotan nuestro mundo y demuéstrame que eres merecedor del título de “héroe”. Yo te ayudaría, pero después, ¿quién entrega las misiones?', '', 'Muy buen trabajo, camarada. Sé que esperas una recompensa a cambio de todo esto, y aunque no debería dártela porque es tu deber, lo haces muy bien como para no hacerlo.', NULL, 'Vuelve con Saitamapaz!', 54938, 54432, 54969, 42333, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);
DELETE FROM `quest_template` WHERE `Id`=20003;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20003, 2, NULL, 'Untested', 85, 85, 0, -162, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BASTIÓN DE BARADIN', 'Completa Bastión de Baradin.', 'Los Kirin Tor encerraron a Alizabal en su formidable Bastión Violeta poco después de que los magi corruptos invocaran a la shivarra a Azeroth. A pesar de los resguardos arcanos que restringían su poder, la maliciosa influencia de la demonio provocó que sus carceleros se masacraran unos a otros movidos por ataques de ira. Su traslado al Bastión de Baradin antes del Cataclismo NO ha hecho más que empeorar las condiciones ya ruinosas de esta prisión. Derrótala.', '', 'No te voy a engañar, pensé que ibas a morir. Pero me alegra ver que estás en una pieza, eres más audaz de lo que creía. ', NULL, 'Vuelve con Saitamapaz!', 55869, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);
DELETE FROM `quest_template` WHERE `Id`=20006;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20006, 2, NULL, 'Untested', 85, 85, 0, -162, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ALMA DE DRAGÓN', 'Completa Alma de dragón en Buscador de Banda 25', 'El rey del vuelo negro ha destruido lo que con tanto esfuerzo edificamos. Nadie hubiera pensando que su ira colmaría a este mundo con tanta miseria, ruina y desgracia. Su poder parece no tener límites, los demás vuelos le temen… y yo también. Pero, aunque me tiemble hasta el último hueso de mi cuerpo al escuchar su nombre, no podemos quedarnos de brazos cruzados mientras vemos como todo lo que conocemos se acaba. Es hora de enfrentar nuestros miedos, camarada; es hora de acabar con el vuelo negro.', '', '¿Recuerdas que te dije que tenía miedo? Bueno, toma estas monedas y olvida que eso pasó. Tengo una reputación que cuidar.', NULL, 'Vuelve con Saitamapaz!', 56168, 56846, 56167, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);



-- Npc que dara la primer mision este Npc estara activo los 7 dias
DELETE FROM `creature_template` WHERE `entry`=571006;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571006, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);

-- misiones pve
DELETE FROM `creature_template` WHERE `entry`=571001;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571001, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);
DELETE FROM `creature_template` WHERE `entry`=571002;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571002, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);
DELETE FROM `creature_template` WHERE `entry`=571003;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571003, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);
DELETE FROM `creature_template` WHERE `entry`=571007;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571007, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1);

-- misiones pvp
DELETE FROM `creature_template` WHERE `entry`=571004;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571004, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);

-- vendedor
DELETE FROM `creature_template` WHERE `entry`=571005;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571005, 0, 0, 0, 0, 0, 36000, 0, 0, 0, 'Vendedor de Athenas', 'Project', 'Buy', 0, 85, 85, 3, 0, 35, 35, 128, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);


--
DELETE FROM `creature_involvedrelation` WHERE `id`=571007 AND `quest`=20006;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571007, 20006);

DELETE FROM `creature_involvedrelation` WHERE `id`=571001 AND `quest`=20001;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571001, 20001);
DELETE FROM `creature_involvedrelation` WHERE `id`=571002 AND `quest`=20002;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571002, 20002);
DELETE FROM `creature_involvedrelation` WHERE `id`=571003 AND `quest`=20003;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571003, 20003);

--

--
DELETE FROM `creature_questrelation` WHERE `id`=571007 AND `quest`=20006;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571007, 20006);

DELETE FROM `creature_questrelation` WHERE `id`=571001 AND `quest`=20001;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571001, 20001);
DELETE FROM `creature_questrelation` WHERE `id`=571002 AND `quest`=20002;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571002, 20002);
DELETE FROM `creature_questrelation` WHERE `id`=571003 AND `quest`=20003;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571003, 20003);

--

-- pastel 
DELETE FROM `gameobject_template` WHERE `entry`=292159;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (292159, 22, 8232, 'Chocolate Celebration Cake', '', '', '', 0, 0, 8, 0, 0, 0, 0, 0, 0, 56236, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

-- warkimoneda que requiere para completar la primer mision.
DELETE FROM `item_template` WHERE `entry`=245790;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (245790, 0, 0, -1, 'Premio de Aniversario', 40185, 1, 0, 8194, 1.0312, 1, 1, 0, 0, 0, 32767, -1, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `npc_vendor` WHERE `entry`=571005;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(571005, 0, 1973, 0, 0, 2519, 1),
(571005, 0, 8491, 0, 0, 2518, 1),
(571005, 0, 8492, 0, 0, 2518, 1),
(571005, 0, 8498, 0, 0, 2518, 1),
(571005, 0, 10398, 0, 0, 2518, 1),
(571005, 0, 11474, 0, 0, 2518, 1),
(571005, 0, 13335, 0, 0, 2521, 1),
(571005, 0, 13379, 0, 0, 2519, 1),
(571005, 0, 19902, 0, 0, 2522, 1),
(571005, 0, 20769, 0, 0, 2518, 1),
(571005, 0, 22780, 0, 0, 2518, 1),
(571005, 0, 23162, 0, 0, 2522, 1),
(571005, 0, 23720, 0, 0, 2522, 1),
(571005, 0, 27445, 0, 0, 2518, 1),
(571005, 0, 29960, 0, 0, 2518, 1),
(571005, 0, 30480, 0, 0, 2522, 1),
(571005, 0, 32588, 0, 0, 2518, 1),
(571005, 0, 32768, 0, 0, 2521, 1),
(571005, 0, 33993, 0, 0, 2518, 1),
(571005, 0, 34492, 0, 0, 2518, 1),
(571005, 0, 34499, 0, 0, 2519, 1),
(571005, 0, 35513, 0, 0, 2521, 1),
(571005, 0, 37012, 0, 0, 2522, 1),
(571005, 0, 37710, 0, 0, 2519, 1),
(571005, 0, 37719, 0, 0, 2522, 1),
(571005, 0, 42943, 0, 0, 2520, 1),
(571005, 0, 42944, 0, 0, 2520, 1),
(571005, 0, 42945, 0, 0, 2520, 1),
(571005, 0, 42946, 0, 0, 2520, 1),
(571005, 0, 42947, 0, 0, 2520, 1),
(571005, 0, 42948, 0, 0, 2520, 1),
(571005, 0, 42949, 0, 0, 2520, 1),
(571005, 0, 43698, 0, 0, 2518, 1),
(571005, 0, 43824, 0, 0, 2519, 1),
(571005, 0, 43962, 0, 0, 2522, 1),
(571005, 0, 46109, 0, 0, 2522, 1),
(571005, 0, 46709, 0, 0, 2519, 1),
(571005, 0, 48114, 0, 0, 2518, 1),
(571005, 0, 48116, 0, 0, 2518, 1),
(571005, 0, 48677, 0, 0, 2520, 1),
(571005, 0, 48685, 0, 0, 2520, 1),
(571005, 0, 48689, 0, 0, 2520, 1),
(571005, 0, 49283, 0, 0, 2522, 1),
(571005, 0, 49290, 0, 0, 2522, 1),
(571005, 0, 49343, 0, 0, 2518, 1),
(571005, 0, 49912, 0, 0, 2518, 1),
(571005, 0, 52200, 0, 0, 2521, 1),
(571005, 0, 53057, 0, 0, 2519, 1),
(571005, 0, 54068, 0, 0, 2521, 1),
(571005, 0, 60844, 0, 0, 2518, 1),
(571005, 0, 60954, 0, 0, 2522, 1),
(571005, 0, 63046, 0, 0, 2521, 1),
(571005, 0, 64361, 0, 0, 2519, 1),
(571005, 0, 64488, 0, 0, 2519, 1),
(571005, 0, 68385, 0, 0, 2518, 1),
(571005, 0, 68806, 0, 0, 2519, 1),
(571005, 0, 68823, 0, 0, 2521, 1),
(571005, 0, 68824, 0, 0, 2521, 1),
(571005, 0, 69228, 0, 0, 2521, 1),
(571005, 0, 69747, 0, 0, 2521, 1),
(571005, 0, 69903, 0, 0, 2520, 1),
(571005, 0, 72140, 0, 0, 2521, 1),
(571005, 0, 72145, 0, 0, 2521, 1),
(571005, 0, 72146, 0, 0, 2521, 1),
(571005, 0, 72575, 0, 0, 2521, 1),
(571005, 0, 73766, 0, 0, 2522, 1),
(571005, 0, 78170, 0, 0, 2522, 1),
(571005, 0, 78171, 0, 0, 2522, 1),
(571005, 0, 78172, 0, 0, 2522, 1),
(571005, 0, 78173, 0, 0, 2522, 1),
(571005, 0, 78174, 0, 0, 2522, 1),
(571005, 0, 78175, 0, 0, 2522, 1),
(571005, 0, 78176, 0, 0, 2522, 1),
(571005, 0, 78177, 0, 0, 2522, 1),
(571005, 0, 78178, 0, 0, 2522, 1),
(571005, 0, 78179, 0, 0, 2522, 1),
(571005, 0, 78180, 0, 0, 2522, 1),
(571005, 0, 78181, 0, 0, 2522, 1),
(571005, 0, 78182, 0, 0, 2522, 1),
(571005, 0, 78183, 0, 0, 2522, 1),
(571005, 0, 78184, 0, 0, 2522, 1);

-- primer mision 
DELETE FROM `creature_involvedrelation` WHERE `id`=571006 AND `quest`=20005;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571006, 20005);

DELETE FROM `creature_questrelation` WHERE `id`=571006 AND `quest`=20005;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571006, 20005);


-- spawns Objetos evento
DELETE FROM `gameobject` WHERE id IN (245790,181886,192150);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(32543, 192150, 1, 1637, 5170, 1, 65535, 1588.59, -4380.74, 19.2689, 3.65245, 0, 0, 0.967556, -0.252658, 300, 0, 1),
(32546, 192150, 1, 1637, 5170, 1, 65535, 1593.92, -4389.02, 18.3049, 3.65245, 0, 0, 0.967556, -0.252658, 300, 0, 1),
(32581, 192150, 1, 1637, 5170, 1, 65535, 1575.55, -4386.28, 16.3517, 4.13547, 0, 0, 0.879046, -0.476736, 300, 0, 1),
(32586, 192150, 1, 1637, 5170, 1, 65535, 1568.81, -4380.76, 16.3301, 3.89985, 0, 0, 0.928987, -0.370113, 300, 0, 1),
(32589, 192150, 1, 1637, 5170, 1, 65535, 1563.3, -4373.36, 16.397, 3.54642, 0, 0, 0.979584, -0.201036, 300, 0, 1),
(32592, 192150, 1, 1637, 5170, 1, 65535, 1560.93, -4366.01, 17.2757, 3.4993, 0, 0, 0.984048, -0.177902, 300, 0, 1),
(32595, 192150, 1, 1637, 5170, 1, 65535, 1580.86, -4396.47, 15.981, 0.373408, 0, 0, 0.185621, 0.982621, 300, 0, 1),
(32598, 192150, 1, 1637, 5170, 1, 65535, 1577.65, -4402.04, 15.5956, 0.373408, 0, 0, 0.185621, 0.982621, 300, 0, 1),
(33521, 192150, 1, 1637, 5170, 1, 65535, 1585.51, -4405.48, 15.37, 0.373408, 0, 0, 0.185621, 0.982621, 300, 0, 1),
(33544, 181886, 1, 1637, 5170, 1, 1, 1583.85, -4367.8, 20.7529, 1.10546, 0, 0, 0.525012, 0.851095, 300, 0, 1),
(34193, 181886, 1, 1637, 5170, 1, 1, 1575.55, -4386.29, 16.3524, 1.52565, 0, 0, 0.690965, 0.722888, 300, 0, 1),
(35099, 181886, 1, 1637, 5170, 1, 1, 1580.81, -4396.57, 15.9694, 1.19578, 0, 0, 0.562899, 0.826525, 300, 0, 1),
(35106, 181886, 1, 1637, 5170, 1, 1, 1585.48, -4405.53, 15.3676, 0.265082, 0, 0, 0.132153, 0.991229, 300, 0, 1),
(35109, 181886, 1, 1637, 5170, 1, 1, 1568.66, -4380.61, 16.3224, 1.05833, 0, 0, 0.504815, 0.863228, 300, 0, 1),
(35113, 181886, 1, 1637, 5170, 1, 1, 1561.86, -4369.79, 16.7235, 0.700977, 0, 0, 0.343357, 0.939205, 300, 0, 1),
(35118, 181886, 1, 1637, 5170, 1, 1, 1577.65, -4402.1, 15.5932, 0.386814, 0, 0, 0.192204, 0.981355, 300, 0, 1),
(35140, 192150, 0, 1519, 5148, 1, 65535, -8841.08, 621.233, 93.3149, 1.56853, 0, 0, 0.706304, 0.707909, 300, 0, 1),
(35148, 192150, 0, 1519, 5148, 1, 65535, -8848.33, 639.019, 95.9595, 2.12223, 0, 0, 0.872901, 0.487898, 300, 0, 1),
(35151, 192150, 0, 1519, 5148, 1, 65535, -8843.94, 641.718, 96.5285, 2.12223, 0, 0, 0.872901, 0.487898, 300, 0, 1),
(35153, 192150, 0, 1519, 5148, 1, 65535, -8847.96, 651.573, 96.7118, 2.0005, 0, 0, 0.841605, 0.540093, 300, 0, 1),
(35163, 192150, 0, 1519, 5148, 1, 65535, -8825.35, 633.433, 94.5064, 6.11598, 0, 0, 0.0835076, -0.996507, 300, 0, 1),
(35168, 192150, 0, 1519, 5148, 1, 65535, -8814.72, 618.63, 94.7767, 5.88821, 0, 0, 0.196208, -0.980562, 300, 0, 1),
(35175, 192150, 0, 1519, 5148, 1, 65535, -8830.46, 617.151, 94.0258, 3.43384, 0, 0, 0.989343, -0.145603, 300, 0, 1),
(35196, 192150, 0, 1519, 5148, 1, 65535, -8841.66, 603.627, 93.5641, 4.15247, 0, 0, 0.874961, -0.484193, 300, 0, 1),
(35212, 181886, 0, 1519, 5148, 1, 65535, -8834.16, 622.742, 93.8599, 0.712431, 0, 0, 0.34873, 0.937223, 300, 0, 1),
(35224, 181886, 0, 1519, 5148, 1, 65535, -8841.08, 621.135, 93.3066, 1.3918, 0, 0, 0.641077, 0.767477, 300, 0, 1),
(35232, 181886, 0, 1519, 5148, 1, 65535, -8830.27, 617.136, 94.0467, 0.629964, 0, 0, 0.3098, 0.950802, 300, 0, 1),
(35236, 181886, 0, 1519, 5148, 1, 65535, -8814.84, 618.717, 94.7614, 0.0801856, 0, 0, 0.0400821, 0.999196, 300, 0, 1),
(35238, 181886, 0, 1519, 5148, 1, 65535, -8825.64, 633.634, 94.5124, 2.06724, 0, 0, 0.859158, 0.511711, 300, 0, 1),
(35241, 181886, 0, 1519, 5148, 1, 65535, -8844.05, 641.879, 96.5316, 2.18505, 0, 0, 0.887793, 0.460244, 300, 0, 1),
(35246, 181886, 0, 1519, 5148, 1, 65535, -8848.04, 651.899, 96.7337, 1.81592, 0, 0, 0.788249, 0.615357, 300, 0, 1),
(35251, 181886, 0, 1519, 5148, 1, 65535, -8841.49, 604.004, 93.5803, 4.16818, 0, 0, 0.871133, -0.491048, 300, 0, 1);


DELETE FROM `gameobject` WHERE `guid`=22165;
DELETE FROM `gameobject` WHERE `guid`=22165;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (22165, 292159, 0, 1519, 5148, 1, 65535, -8833.33, 622.483, 93.8983, 4.85776, 0, 0, 0.653889, -0.756591, 300, 0, 1);
DELETE FROM `gameobject` WHERE `guid`=22167;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (22167, 292159, 1, 1637, 5170, 1, 65535, 1584.34, -4368.08, 20.7575, 4.36665, 0, 0, 0.818196, -0.57494, 300, 0, 1);


DELETE FROM `creature` WHERE id IN (571001,571002,571003,571004,571005,571006);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(33709, 571003, 0, 1519, 5148, 1, 65535, 0, 0, -8837.85, 623.82, 93.7737, 2.89976, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33706, 571002, 0, 1519, 5148, 1, 65535, 0, 0, -8837.46, 621.156, 93.4663, 3.51237, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33630, 571001, 0, 1519, 5148, 1, 65535, 0, 0, -8835.95, 619.317, 93.3054, 4.04251, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33661, 571006, 1, 1637, 5170, 1, 1, 0, 0, 1589.99, -4369.83, 20.9683, 4.50231, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33624, 571005, 1, 1637, 5170, 1, 65535, 0, 0, 1591.87, -4370.42, 21.0615, 4.23517, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33552, 571003, 1, 1637, 5170, 1, 65535, 0, 0, 1586.12, -4371.78, 20.735, 5.17059, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33550, 571002, 1, 1637, 5170, 1, 65535, 0, 0, 1581.87, -4371.49, 20.5555, 4.25561, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33540, 571001, 1, 1637, 5170, 1, 65535, 0, 0, 1583.93, -4372.52, 20.5976, 4.73629, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33523, 571005, 0, 1519, 5148, 1, 65535, 0, 0, -8833.38, 627.919, 94.2461, 2.73482, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0),
(33521, 571006, 0, 1519, 5148, 1, 65535, 0, 0, -8832.33, 630.46, 94.4068, 2.71519, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);


-- mision dia 1Duraran 7 dias 
DELETE FROM `game_event_creature` WHERE `guid`=33521 AND `eventEntry`=123;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (123, 33521);
DELETE FROM `game_event_creature` WHERE `guid`=33523 AND `eventEntry`=123;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (123, 33523);
DELETE FROM `game_event_creature` WHERE `guid`=33624 AND `eventEntry`=123;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (123, 33624);
DELETE FROM `game_event_creature` WHERE `guid`=33661 AND `eventEntry`=123;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (123, 33661);

-- mision dia 1 Duraran 7 dias 
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=123;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(123, 32541),
(123, 32543),
(123, 32546),
(123, 32581),
(123, 32586),
(123, 32589),
(123, 32592),
(123, 32595),
(123, 32598),
(123, 33521),
(123, 33544),
(123, 34193),
(123, 35099),
(123, 35106),
(123, 35109),
(123, 35113),
(123, 35118),
(123, 35130),
(123, 35140),
(123, 35148),
(123, 35151),
(123, 35153),
(123, 35163),
(123, 35168),
(123, 35175),
(123, 35196),
(123, 35212),
(123, 35224),
(123, 35232),
(123, 35236),
(123, 35238),
(123, 35241),
(123, 35246),
(123, 22165),
(123, 22167),
(123, 35251);

-- mision dia 1
DELETE FROM `game_event_creature` WHERE `guid`=33540 AND `eventEntry`=124;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (124, 33540);
DELETE FROM `game_event_creature` WHERE `guid`=33630 AND `eventEntry`=124;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (124, 33630);

-- mision dia 2

-- mision dia 3 10 del 06
DELETE FROM `game_event_creature` WHERE `guid`=33552 AND `eventEntry`=125;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (125, 33552);
DELETE FROM `game_event_creature` WHERE `guid`=33709 AND `eventEntry`=125;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (125, 33709);

-- mision dia 4
DELETE FROM `game_event_creature` WHERE `guid`=33550 AND `eventEntry`=127;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (127, 33550);
DELETE FROM `game_event_creature` WHERE `guid`=33706 AND `eventEntry`=127;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (127, 33706);

-- mision dia 6
DELETE FROM `game_event_creature` WHERE `guid`=33484 AND `eventEntry`=3;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (3, 33484);
DELETE FROM `game_event_creature` WHERE `guid`=33514 AND `eventEntry`=3;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES (3, 33514);

DELETE FROM `creature` WHERE `guid`=33484;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (33484, 571007, 1, 1637, 5170, 1, 65535, 0, 0, 1580.02, -4369.56, 20.548, 3.65085, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=33514;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (33514, 571007, 0, 1519, 5148, 1, 65535, 0, 0, -8829.1, 624.221, 94.2106, 0.201919, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);



DELETE FROM `game_event` WHERE `eventEntry`=123;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (123, '2020-06-08 05:59:00', '2020-06-17 23:59:00', 525600, 14400, 0, 'Aniversario AthenasWow', 0);
DELETE FROM `game_event` WHERE `eventEntry`=124;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (124, '2020-06-08 05:59:00', '2020-06-09 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow 1 mision', 0);
DELETE FROM `game_event` WHERE `eventEntry`=
;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (125, '2020-06-14 05:59:00', '2020-06-15 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow alamuerte boss de mundo', 0);
DELETE FROM `game_event` WHERE `eventEntry`=126;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (126, '2020-06-10 05:59:00', '2020-06-11 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow 3 mision', 0);
DELETE FROM `game_event` WHERE `eventEntry`=127;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (127, '2020-06-11 05:59:00', '2020-06-12 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow 4 mision', 0);
DELETE FROM `game_event` WHERE `eventEntry`=3;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (3, '2020-06-13 05:59:00', '2020-06-14 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow 6 mision', 0);

-- mision boss de mundo falta añadirla como evento 125
DELETE FROM `quest_template` WHERE `Id`=20007;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20007, 2, NULL, 'Untested', 85, 85, 0, -162, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'LA BATALLA DEL MUNDO', 'Derrota al Boss de Mundo.', 'No me gusta ser supersticioso, pero los cielos se ven algo extraños. Tengo la misma sensación que tuve cuando él apareció, es como si otro gran mal estuviera irrumpiendo en Azeroth.', '', 'Parece que ninguna tarea es lo suficientemente difícil para ti, héroe.', NULL, 'Vuelve con Saitamapaz!', 464710, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245790, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `creature_template` WHERE `entry`=571008;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (571008, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'BountyHunter', 1);

DELETE FROM `creature_involvedrelation` WHERE `id`=571008 AND `quest`=20007;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571008, 20007);

DELETE FROM `creature_questrelation` WHERE `id`=571008 AND `quest`=20007;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571008, 20007);

-- boss custom falta spawnear
DELETE FROM `creature_template` WHERE `entry`=464710;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(464710, 0, 0, 0, 0, 0, 35435, 0, 0, 0, 'Alamuerte', 'Athenas Event', '', 0, 83, 83, 2, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 0.8, 1, 1225.5, 1544.7, 0, 1651, 7.5, 2000, 2000, 1, 32832, 2048, 8, 0, 0, 0, 0, 0, 1160.9, 1328.1, 225, 4, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 1, 2960, 241, 1, 100, 0, 0, 0, 0, 0, 0, 0, 130, 1, 0, 650854271, 1, '', 1);

DELETE FROM `quest_template` WHERE `Id`=20010;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES (20010, 2, NULL, 'Untested', 85, 85, 0, -162, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ALAMUERTE BOSS DE MUNDO', 'Mata a alamuerte boss de mundo', 'No me gusta ser supersticioso, pero los cielos se ven algo extraños. Tengo la misma sensación que tuve cuando él apareció, es como si otro gran mal estuviera irrumpiendo en Azeroth.', '', 'Parece que ninguna tarea es lo suficientemente difícil para ti, héroe. ', NULL, 'Vuelve con Saitamapaz!', 464710, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

-- dara la mision 
DELETE FROM `creature_template` WHERE `entry`=561001;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(561001, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1);

DELETE FROM `creature` WHERE `guid`=31656;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31656, 561001, 0, 1519, 5148, 1, 65535, 0, 0, -8832.76, 618.253, 93.7945, 5.00071, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31659;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31659, 561001, 1, 1637, 5170, 1, 65535, 0, 0, 1588.35, -4366.44, 20.8778, 0.573178, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);


-- Entrega y finaliza la mision
DELETE FROM `creature_involvedrelation` WHERE `id`=561001 AND `quest`=20010;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (561001, 20010);

DELETE FROM `creature_questrelation` WHERE `id`=561001 AND `quest`=20010;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (561001, 20010);

DELETE FROM `creature_text` WHERE entry=464710;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
('464710', '1', '0', 'Hahahaha...¿Quieres matarme? sabandija!! Jamas lograrás derrotarme... Eres debil!!!!', '14', '0', '100', '5', '0', '0', 'EventoAthenas'),
('464710', '2', '0', 'Es hora de correr, La peste ira tras de ti, Moriras!!!', '14', '0', '100', '5', '0', '0', 'EventoAthenas'),
('464710', '3', '0', 'Soy muy FUERTE, no hay forma de matarme, ¡NO INTENTES ESQUIVAR LOS ATAQUES IGUAL VAS A MORIR!', '14', '0', '100', '5', '0', '0', 'EventoAthenas'),
('464710', '4', '0', '¿DEJAR DE CORRER DE MÍ?, ¡CORRER CORRER AHORA NO HAY MANERA DE ESCAPAR DE MI... ESTAS MUERTO ESTA VEZ!', '14', '0', '100', '5', '0', '0', 'EventoAthenas'),
('464710', '5', '0', 'Ohhhhhhhhhh NOOOOOOOOOOOOOOO MALDITOS, por favor no me maten... Aaaaaaaa...!', '14', '0', '100', '5', '0', '0', 'EventoAthenas');


DELETE FROM `smart_scripts` WHERE `entryorguid`=464710 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(464710, 0, 0, 0, 2, 0, 100, 0, 2, 60, 8000, 12000, 11, 22291, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'CYCLY 70%'),
(464710, 0, 5, 0, 2, 0, 100, 0, 30, 87, 12000, 16000, 11, 39176, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'FEAR'),
(464710, 0, 6, 0, 2, 0, 100, 0, 1, 99, 10000, 12000, 11, 43114, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'FireWall'),
(464710, 0, 7, 0, 2, 0, 100, 0, 32, 40, 30000, 40000, 11, 19645, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Boucler'),
(464710, 0, 8, 0, 2, 0, 100, 0, 1, 99, 10000, 8000, 11, 23169, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'FireWall'),
(464710, 0, 9, 0, 2, 0, 100, 0, 90, 95, 30000, 40000, 11, 3651, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Boucler NICE !'),
(464710, 0, 13, 0, 2, 0, 100, 0, 1, 16, 60000, 70000, 11, 55816, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BERSRk'),
(464710, 0, 14, 0, 2, 0, 100, 0, 20, 86, 10000, 12000, 11, 69024, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Toxic Waste 86 - 20 %'),
(464710, 0, 15, 0, 2, 0, 100, 0, 1, 12, 9000, 10500, 11, 69024, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Toxic Waste 12 - 1%'),
(464710, 0, 16, 0, 2, 0, 100, 0, 30, 80, 9000, 10000, 11, 69167, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Big and big dmg '),
(464710, 0, 17, 0, 2, 0, 100, 0, 1, 99, 8000, 10500, 11, 11264, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Ice Blaste'),
(464710, 0, 18, 0, 2, 0, 100, 0, 99, 100, 70000, 81000, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk'),
(464710, 0, 19, 0, 2, 0, 100, 0, 85, 86, 80000, 80000, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk1'),
(464710, 0, 20, 0, 2, 0, 100, 0, 15, 16, 90000, 90000, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk2'),
(464710, 0, 21, 0, 2, 0, 100, 0, 15, 16, 90000, 90000, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk3'),
(464710, 0, 22, 0, 2, 0, 100, 0, 0, 1, 90000, 90000, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talk4');
-- boss custom fin



-- Cofres arna de gurubashi evento ID 78
DELETE FROM `quest_template` WHERE `Id`=20009;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(20009, 2, NULL, 'Untested', 85, 85, 0, -162, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BOTÍN SECRETO', 'Consigue uno de los papiros de las cajas que se encuentran en Arena Gurubashi', 'La Arena Gurubashi, se encuentra en las selvas del norte del Cabo de Stranglethorn, al norte de Booty Bay. La Arena es una antigua reliquia del poderoso Imperio Gurubashi , que una vez controló vastas extensiones de tierra en las regiones del sur de los Reinos del Este. Las leyendas dicen que por estas fechas los dioses bendicen la arena y dejan ofrendas para los mortales. Siempre he creído que son cuentos para ilusionar a los incrédulos, pero nunca está de más ir a echar un vistazo. ', '', '¡Vaya! Parece que las leyendas eran ciertas. Siempre lo supe, nunca desconfié.', NULL, 'Vuelve con Saitamapaz!', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1005708, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);

DELETE FROM `game_event` WHERE `eventEntry`=78;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES 
(78, '2020-06-12 05:59:00', '2020-06-13 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow Cofres', 0);

DELETE FROM `creature_template` WHERE `entry`=571010;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(571010, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1);

DELETE FROM `creature` WHERE `guid`=31637;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31637, 571010, 1, 1637, 5170, 1, 65535, 0, 0, 1585.44, -4364.03, 20.8972, 1.36643, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31650;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31650, 571010, 0, 1519, 5148, 1, 65535, 0, 0, -8829.42, 620.874, 94.1268, 5.93142, 300, 0, 0, 77490, 0, 0, 0, 0, 0, 0);

DELETE FROM `game_event_creature` WHERE `eventEntry`=78;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(78, 31637),
(78, 31650);

-- Cofres 
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=78;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES 
(78, 24888),
(78, 24895),
(78, 24912),
(78, 24942),
(78, 25189),
(78, 25228),
(78, 25241),
(78, 25400),
(78, 25414),
(78, 25416),
(78, 25445),
(78, 25674),
(78, 25714),
(78, 25718),
(78, 25720),
(78, 26506),
(78, 26521),
(78, 26706),
(78, 26714),
(78, 26734),
(78, 26738),
(78, 26746),
(78, 26748),
(78, 26757),
(78, 26765),
(78, 26769),
(78, 26786),
(78, 26790),
(78, 26793),
(78, 26797),
(78, 26801),
(78, 26809),
(78, 26833),
(78, 26838),
(78, 26841),
(78, 26843),
(78, 26849),
(78, 26854),
(78, 26875),
(78, 27099),
(78, 27108),
(78, 27110),
(78, 27112),
(78, 27117),
(78, 27119),
(78, 27141),
(78, 27348),
(78, 27480),
(78, 27516),
(78, 27522),
(78, 27526),
(78, 27530),
(78, 27655),
(78, 27667),
(78, 27676),
(78, 27080),
(78, 27678),
(78, 27681),
(78, 27686),
(78, 27692),
(78, 27701),
(78, 27705),
(78, 27713),
(78, 27875),
(78, 28053),
(78, 28065),
(78, 28387),
(78, 28431),
(78, 28441),
(78, 28460),
(78, 28479),
(78, 28493),
(78, 28504),
(78, 28509),
(78, 28517),
(78, 28527),
(78, 28530),
(78, 28533),
(78, 28545),
(78, 28568),
(78, 28585),
(78, 28593),
(78, 28627),
(78, 28635);

-- Entrega y finaliza la mision
DELETE FROM `creature_involvedrelation` WHERE `id`=571010 AND `quest`=20009;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571010, 20009);

DELETE FROM `creature_questrelation` WHERE `id`=571010 AND `quest`=20009;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571010, 20009);

-- Cofre
DELETE FROM `gameobject_template` WHERE `entry`=211111;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `unkInt32`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (211111, 3, 10314, 'Cofre AthenasWow', '', 'Opening', '', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 1599, 211111, 3600, 0, 0, 0, 0, 0, 0, 85, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

-- Spawn de cofres 

DELETE FROM `gameobject` WHERE `id`=211111;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(24888, 211111, 530, 3518, 3518, 1, 65535, -2282.61, 6423.34, 21.0513, 3.6814, 0, 0, 0.963796, -0.26664, 300, 0, 1),
(24895, 211111, 530, 3518, 3518, 1, 65535, -1824.85, 7454.19, -6.77652, 1.5569, 0, 0, 0.702177, 0.712003, 300, 0, 1),
(24912, 211111, 530, 3521, 3521, 1, 65535, 54.7765, 7171.46, 21.5803, 4.35289, 0, 0, 0.822133, -0.569295, 300, 0, 1),
(24942, 211111, 530, 3521, 3667, 1, 65535, 858.192, 7549.92, 21.7048, 5.23646, 0, 0, 0.499794, -0.866145, 300, 0, 1),
(25189, 211111, 530, 3522, 3824, 1, 65535, 2036.9, 6431.72, 134.265, 4.7063, 0, 0, 0.709255, -0.704952, 300, 0, 1),
(25228, 211111, 530, 3522, 3952, 1, 65535, 2995.85, 5869.18, 130.481, 4.22328, 0, 0, 0.857274, -0.51486, 300, 0, 1),
(25241, 211111, 530, 3523, 3523, 1, 65535, 3160.89, 3717.59, 136.319, 3.90912, 0, 0, 0.927263, -0.374412, 300, 0, 1),
(25400, 211111, 530, 3523, 3721, 1, 65535, 3158.68, 3158.97, 100.564, 2.5111, 0, 0, 0.95072, 0.310051, 300, 0, 1),
(25414, 211111, 530, 3483, 3542, 1, 65535, -225.105, 2389.44, 31.9307, 4.77305, 0, 0, 0.685336, -0.728227, 300, 0, 1),
(25416, 211111, 530, 3483, 3483, 1, 65535, -320.878, 3916.87, 75.2816, 1.08168, 0, 0, 0.514857, 0.857276, 300, 0, 1),
(25445, 211111, 530, 3520, 3520, 1, 65535, -3304.38, 2281.17, 61.0298, 3.19049, 0, 0, 0.999701, -0.0244476, 300, 0, 1),
(25674, 211111, 530, 3520, 3520, 1, 65535, -3884.78, 827.229, 12.7658, 4.86732, 0, 0, 0.650264, -0.759708, 300, 0, 1),
(25714, 211111, 571, 3537, 4042, 1, 65535, 3422, 3876.67, 26.4385, 2.11124, 0, 0, 0.870206, 0.492689, 300, 0, 1),
(25718, 211111, 571, 3537, 3537, 1, 65535, 3737.22, 5411.21, 42.0007, 6.18746, 0, 0, 0.0478442, -0.998855, 300, 0, 1),
(25720, 211111, 571, 3711, 4289, 1, 65535, 5735.32, 5863.47, -60.5691, 6.23851, 0, 0, 0.0223369, -0.99975, 300, 0, 1),
(26506, 211111, 571, 3711, 4283, 1, 65535, 5480.06, 3803.73, -60.0972, 5.32745, 0, 0, 0.459887, -0.887977, 300, 0, 1),
(26521, 211111, 571, 210, 4517, 1, 65535, 7685.02, 3076.36, 557.917, 6.20315, 0, 0, 0.0400064, -0.999199, 300, 0, 1),
(26706, 211111, 571, 210, 4506, 1, 65535, 6956.42, 643.354, 453.923, 2.10339, 0, 0, 0.868266, 0.496099, 300, 0, 1),
(26714, 211111, 571, 67, 4452, 1, 65535, 7061.35, -667.876, 730.973, 4.26717, 0, 0, 0.845771, -0.533546, 300, 0, 1),
(26734, 211111, 571, 67, 67, 1, 65535, 7845.71, -2398.18, 1114.77, 0.348002, 0, 0, 0.173124, 0.9849, 300, 0, 1),
(26738, 211111, 571, 66, 66, 1, 65535, 5759.52, -3761.99, 371.987, 3.95298, 0, 0, 0.918828, -0.394657, 300, 0, 1),
(26746, 211111, 571, 66, 66, 1, 65535, 4942.69, -3076.99, 292.419, 3.80768, 0, 0, 0.945051, -0.326922, 300, 0, 1),
(26748, 211111, 571, 394, 394, 1, 65535, 4169.25, -3538.74, 273.337, 2.28794, 0, 0, 0.910285, 0.413983, 300, 0, 1),
(26757, 211111, 571, 394, 394, 1, 65535, 3743.63, -2710.54, 175.99, 0.041703, 0, 0, 0.02085, 0.999783, 300, 0, 1),
(26765, 211111, 571, 495, 495, 1, 65535, 1811.6, -3606.43, 159.947, 3.4032, 0, 0, 0.991457, -0.130433, 300, 0, 1),
(26769, 211111, 571, 495, 495, 1, 65535, 1328.5, -4502.79, 168.441, 5.53162, 0, 0, 0.367, -0.930221, 300, 0, 1),
(26786, 211111, 571, 65, 65, 1, 65535, 3354.21, -1268.98, 97.9965, 1.03522, 0, 0, 0.494803, 0.869005, 300, 0, 1),
(26790, 211111, 571, 65, 65, 1, 65535, 3484.94, 1232.62, 116.44, 1.23942, 0, 0, 0.580799, 0.814047, 300, 0, 1),
(26793, 211111, 1, 618, 618, 1, 65535, 6185.43, -4907.14, 735.295, 1.35464, 0, 0, 0.626708, 0.779254, 300, 0, 1),
(26797, 211111, 1, 618, 618, 1, 65535, 7387.85, -4118.67, 704.079, 0.321845, 0, 0, 0.160229, 0.98708, 300, 0, 1),
(26801, 211111, 1, 616, 5033, 1, 65535, 5597.22, -2800.58, 1515.14, 1.17007, 0, 0, 0.552231, 0.833691, 300, 0, 1),
(26809, 211111, 1, 616, 616, 1, 65535, 5211.31, -1946.53, 1365.74, 1.37821, 0, 0, 0.635845, 0.771817, 300, 0, 1),
(26833, 211111, 1, 361, 361, 1, 65535, 6400.86, -2037.87, 569.986, 0.0312536, 0, 0, 0.0156261, 0.999878, 300, 0, 1),
(26838, 211111, 1, 361, 361, 1, 65535, 6325.75, -1005.28, 421.431, 2.627, 0, 0, 0.967081, 0.254469, 300, 0, 1),
(26841, 211111, 1, 331, 331, 1, 65535, 3763.4, 159.173, 7.45118, 2.54846, 0, 0, 0.956345, 0.29224, 300, 0, 1),
(26843, 211111, 1, 331, 331, 1, 65535, 2514.56, -851.105, 134.388, 3.27495, 0, 0, 0.997778, -0.0666299, 300, 0, 1),
(26849, 211111, 1, 406, 461, 1, 65535, 1085.37, 21.694, 4.61511, 1.71986, 0, 0, 0.757798, 0.65249, 300, 0, 1),
(26854, 211111, 1, 406, 1076, 1, 65535, 877.73, 614.217, 96.4641, 0.922683, 0, 0, 0.44515, 0.895456, 300, 0, 1),
(26875, 211111, 1, 405, 405, 1, 65535, -262.67, 1400.87, 95.5565, 0.227606, 0, 0, 0.113557, 0.993531, 300, 0, 1),
(27099, 211111, 1, 405, 602, 1, 65535, -1700.59, 1906.46, 61.1292, 2.74873, 0, 0, 0.98077, 0.195168, 300, 0, 1),
(27108, 211111, 1, 4709, 4850, 1, 65535, -2291.51, -2094.15, 95.7942, 5.32876, 0, 0, 0.459304, -0.888279, 300, 0, 1),
(27110, 211111, 1, 4709, 4709, 1, 65535, -3743.67, -2046.31, 91.6678, 3.54199, 0, 0, 0.980028, -0.198862, 300, 0, 1),
(27112, 211111, 1, 15, 2302, 1, 65535, -3802.24, -3438.35, 40.9258, 4.80647, 0, 0, 0.673074, -0.739575, 300, 0, 1),
(27117, 211111, 1, 15, 15, 1, 65535, -3428.63, -4172.02, 10.0203, 0.620279, 0, 0, 0.305191, 0.952291, 300, 0, 1),
(27119, 211111, 1, 400, 400, 1, 65535, -5261.18, -3033.59, 87.6985, 1.5981, 0, 0, 0.716694, 0.697388, 300, 0, 1),
(27141, 211111, 1, 400, 5588, 1, 65535, -5349.3, -1358.92, 87.1657, 1.60203, 0, 0, 0.718062, 0.69598, 300, 0, 1),
(27348, 211111, 1, 357, 1137, 1, 65535, -4246.72, -185.543, 59.1198, 4.77111, 0, 0, 0.686042, -0.727562, 300, 0, 1),
(27480, 211111, 1, 357, 1136, 1, 65535, -4843.09, 1321.81, 81.1795, 2.71337, 0, 0, 0.977166, 0.212478, 300, 0, 1),
(27516, 211111, 1, 1377, 1377, 1, 65535, -6784.23, 244.822, 5.05083, 4.67295, 0, 0, 0.720912, -0.693027, 300, 0, 1),
(27522, 211111, 1, 1377, 1377, 1, 65535, -7627.23, 1041.76, 4.57181, 3.01576, 0, 0, 0.998021, 0.0628743, 300, 0, 1),
(27526, 211111, 1, 490, 490, 1, 65535, -7512.79, -1101.21, -272.192, 2.13611, 0, 0, 0.876264, 0.481832, 300, 0, 1),
(27530, 211111, 1, 490, 1942, 1, 65535, -7426.51, -1840.11, -272.023, 2.16753, 0, 0, 0.883726, 0.468004, 300, 0, 1),
(27655, 211111, 1, 440, 1939, 1, 65535, -7923.54, -2846.96, 37.762, 2.82335, 0, 0, 0.987367, 0.158452, 300, 0, 1),
(27667, 211111, 1, 440, 981, 1, 65535, -8686.77, -3883.21, 43.6339, 4.17423, 0, 0, 0.869641, -0.493684, 300, 0, 1),
(27676, 211111, 1, 5034, 5034, 1, 65535, -9046.15, -1618.49, 94.4868, 3.11788, 0, 0, 0.99993, 0.0118562, 300, 0, 1),
(27080, 211111, 1, 5034, 5466, 1, 65535, -9442.7, -961.997, 111.013, 0.211907, 0, 0, 0.105755, 0.994392, 300, 0, 1),
(27678, 211111, 0, 10, 10, 1, 65535, -10788.4, 216.168, 30.508, 1.80414, 0, 0, 0.784613, 0.619985, 300, 0, 1),
(27681, 211111, 0, 10, 42, 1, 65535, -10661.4, -1191.61, 28.349, 0.0448425, 0, 0, 0.0224194, 0.999749, 300, 0, 1),
(27686, 211111, 0, 8, 8, 1, 65535, -10325, -2791.7, 21.991, 5.70757, 0, 0, 0.28385, -0.958869, 300, 0, 1),
(27692, 211111, 0, 8, 76, 1, 65535, -9944.28, -3667.03, 21.6776, 5.52301, 0, 0, 0.371, -0.928633, 300, 0, 1),
(27701, 211111, 0, 4, 4, 1, 65535, -11179.1, -3059.58, 9.40121, 1.87877, 0, 0, 0.807194, 0.590286, 300, 0, 1),
(27705, 211111, 0, 4, 5078, 1, 65535, -12298.4, -3296.63, 27.3023, 2.50316, 0, 0, 0.949481, 0.313824, 300, 0, 1),
(27713, 211111, 0, 33, 19, 1, 65535, -11615.6, -1620.79, 38.7359, 1.63137, 0, 0, 0.728195, 0.68537, 300, 0, 1),
(27875, 211111, 0, 33, 1740, 1, 65535, -12120.1, -579.577, 12.957, 5.62905, 0, 0, 0.321269, -0.946988, 300, 0, 1),
(28053, 211111, 0, 5287, 1577, 1, 65535, -13242.3, -136.058, 17.8981, 1.95731, 0, 0, 0.829747, 0.558139, 300, 0, 1),
(28065, 211111, 0, 5287, 1577, 1, 65535, -13806.1, 215.991, 19.2757, 2.22435, 0, 0, 0.896664, 0.442712, 300, 0, 1),
(28387, 211111, 0, 46, 254, 1, 65535, -8036.22, -1100.26, 131.087, 4.49021, 0, 0, 0.781138, -0.624359, 300, 0, 1),
(28431, 211111, 0, 46, 5677, 1, 65535, -8006.04, -2304.23, 129.992, 4.21142, 0, 0, 0.860313, -0.509766, 300, 0, 1),
(28441, 211111, 0, 3, 5525, 1, 65535, -6587.81, -3360.97, 260.475, 5.00467, 0, 0, 0.596601, -0.802538, 300, 0, 1),
(28460, 211111, 0, 38, 38, 1, 65535, -5970.88, -3314.2, 258.595, 2.78198, 0, 0, 0.983879, 0.178838, 300, 0, 1),
(28479, 211111, 0, 4922, 5502, 1, 65535, -3485.96, -4912.71, 77.1708, 3.70089, 0, 0, 0.961153, -0.276018, 300, 0, 1),
(28493, 211111, 0, 4922, 4922, 1, 65535, -2859.93, -5380.92, 169.551, 3.69304, 0, 0, 0.962228, -0.272244, 300, 0, 1),
(28504, 211111, 0, 11, 11, 1, 65535, -3449.37, -3402.45, 22.2708, 1.60781, 0, 0, 0.720071, 0.693901, 300, 0, 1),
(28509, 211111, 0, 11, 11, 1, 65535, -3172.69, -2009.92, 15.6029, 1.41539, 0, 0, 0.650082, 0.759864, 300, 0, 1),
(28517, 211111, 0, 45, 45, 1, 65535, -1667.03, -2461.03, 63.4946, 5.79791, 0, 0, 0.240264, -0.970708, 300, 0, 1),
(28527, 211111, 0, 45, 45, 1, 65535, -994.819, -1685.24, 36.994, 0.0684223, 0, 0, 0.0342045, 0.999415, 300, 0, 1),
(28530, 211111, 0, 267, 267, 1, 65535, -402.997, -811.501, 54.3231, 0.936286, 0, 0, 0.45123, 0.892408, 300, 0, 1),
(28533, 211111, 0, 267, 36, 1, 65535, 237.594, -653.88, 118.455, 0.0841287, 0, 0, 0.0420519, 0.999115, 300, 0, 1),
(28545, 211111, 0, 47, 1884, 1, 65535, 318.465, -3422.52, 116.31, 5.68007, 0, 0, 0.297006, -0.954876, 300, 0, 1),
(28568, 211111, 0, 47, 351, 1, 65535, 342.504, -3914.04, 130.766, 0.724212, 0, 0, 0.354244, 0.935153, 300, 0, 1),
(28585, 211111, 0, 139, 139, 1, 65535, 1867.28, -4153.94, 105.614, 5.05569, 0, 0, 0.575934, -0.817496, 300, 0, 1),
(28593, 211111, 0, 139, 139, 1, 65535, 2907.37, -4204.02, 92.4853, 4.52948, 0, 0, 0.768731, -0.639573, 300, 0, 1),
(28627, 211111, 0, 28, 28, 1, 65535, 1866.56, -2346.95, 60.5636, 2.13794, 0, 0, 0.876706, 0.481027, 300, 0, 1),
(28635, 211111, 0, 85, 85, 1, 65535, 1932.77, -211.099, 33.0949, 1.00697, 0, 0, 0.48248, 0.875907, 300, 0, 1);

-- loot
DELETE FROM `gameobject_loot_template` WHERE `entry`=211111;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(211111, 1005708, 100, 1, 0, 1, 1);


-- Item objetivo de la mision 
DELETE FROM `item_template` WHERE `entry`=1005708;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (1005708, 0, 0, -1, 'Papiro de Aniversario', 57390, 4, 1, 0, 1, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1005703, 0, 0, 60000, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, 'Item evento de aniversario', 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Final.......



-- Julak Doom AT boss para la mision
DELETE FROM `creature_template` WHERE `entry`=500890;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(500890, 0, 0, 0, 0, 0, 24301, 0, 0, 0, 'Julak Doom AT', 'Evento', '', 0, 87, 87, 3, 0, 16, 16, 0, 1, 1.14286, 1, 1.14286, 1, 2, 1225.5, 1544.7, 0, 1651, 45, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1160.9, 1328.1, 225, 5, 524364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 1300000, NULL, NULL, 'SmartAI', 2, 3, 1, 150, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 124, 1, 0, 0, 0, '', 13623);

-- MATA A JULAK FATALIDAD AT
DELETE FROM `quest_template` WHERE `Id`=20008;
INSERT INTO `quest_template` (`Id`, `Method`, `Note`, `Status`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`, `WDBVerified`) VALUES 
(20008, 2, NULL, 'Untested', 85, 85, 0, -162, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 245790, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'MATA A JULAK FATALIDAD AT', 'Mata a Julak Fatalidad (10 jugadores requeridos) puede encontrarse en Uldum, Nagrand, Corona de Hielo, Tierras Altas de Arathi o Frondavil.', 'No sé si habrás escuchado de “Julak Fatalidad”. es un despiadado ser del abismo que controla a un gigante de carne. Ha causado muchos problemas últimamente. Normalmente, enviar a alguien a enfrentarlo sería una insensatez y una muerte inminente, pero confío en tus increíbles habilidades. \r\n', '', '¡Oh, sigues vivo! Eh…digo, siempre supe que volverías sano y salvo. Aquí tienes una pequeña recompensa por tan heroica labor. ', NULL, 'Vuelve con Saitamapaz!', 500890, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 1, 0, 0, 0, 0, 0, 0, 0, 6, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);


DELETE FROM `game_event` WHERE `eventEntry`=5;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES 
(5, '2020-06-09 05:59:00', '2020-06-10 05:59:00', 525600, 1440, 0, 'Aniversario AthenasWow Julak Doom AT', 0);

-- dara la mision 
DELETE FROM `creature_template` WHERE `entry`=571009;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(571009, 0, 0, 0, 0, 0, 25612, 0, 0, 0, 'Saitamapaz', 'Project', '', 0, 85, 85, 3, 0, 35, 35, 2, 1, 1.14286, 1, 1, 1, 0, 1007, 1354.7, 0, 1571, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 1);

-- Entrega y finaliza la mision
DELETE FROM `creature_involvedrelation` WHERE `id`=571009 AND `quest`=20008;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (571009, 20008);

DELETE FROM `creature_questrelation` WHERE `id`=571009 AND `quest`=20008;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (571009, 20008);

-- spawns de Npcs evento MATA A JULAK FATALIDAD AT
DELETE FROM `creature` WHERE `guid`=31608;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31608, 500890, 1, 5034, 5597, 1, 65535, 0, 0, -10526.7, -531.71, 339.036, 3.13119, 1800, 0, 0, 12449100, 0, 2, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31613;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31613, 500890, 571, 210, 4533, 1, 65535, 0, 0, 8002.31, 845.204, 465.951, 4.65348, 1800, 0, 0, 12449100, 0, 2, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31621;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31621, 500890, 530, 3518, 3518, 1, 65535, 0, 0, -1073.63, 7510.51, 219.565, 6.13478, 1800, 0, 0, 12449100, 0, 2, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31623;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31623, 500890, 0, 45, 45, 1, 65535, 0, 0, -1014.6, -2222.56, 60.077, 3.35708, 1800, 0, 0, 12449100, 0, 2, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31626;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31626, 500890, 1, 361, 361, 1, 65535, 0, 0, 4368.35, -851.417, 290.868, 3.04112, 1800, 0, 0, 12449100, 0, 2, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31631;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31631, 571009, 1, 1637, 5170, 1, 1, 0, 0, 1580.37, -4366.47, 20.6951, 2.8045, 1800, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=31633;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (31633, 571009, 0, 1519, 5148, 1, 65535, 0, 0, -8831.37, 626.331, 94.1963, 1.05016, 1800, 0, 0, 77490, 0, 0, 0, 0, 0, 0);

DELETE FROM `game_event_creature` WHERE `eventEntry`=5;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(5, 31608),
(5, 31613),
(5, 31621),
(5, 31623),
(5, 31626),
(5, 31631),
(5, 31633);


-- para el teleport
DELETE FROM `gossip_menu` WHERE `entry` = 561 AND  `text_id` = 0;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES('561','0');
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 561 AND `id` = 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
('561','0','0','Llevame al Evento.','0','1','1','0','0','0','0','','0');

-- teleport
DELETE FROM `smart_scripts` WHERE `entryorguid`=561 AND `source_type`= 0 AND `id`= 0 AND `link`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('561','0','0','0','62','0','100','0','561','0','0','0','62','169','0','0','0','0','0','7','0','0','0','-3356.848877','-923.685242','101.243080','2','Teleport evento aniversario');

-- Menu del teleport
DELETE FROM `npc_text` WHERE `ID` = 561;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES
('561','','El final a llegado...','0','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','0','15595');

-- NPC que transporta a los jugadores a la banda mientras los jugadores están muertos
DELETE FROM `creature_template` WHERE `entry`=561;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (561, 0, 0, 0, 0, 0, 35435, 0, 0, 0, 'Aniversario', 'Eventos Athenas-WoW', '', 561, 85, 85, 3, 0, 35, 35, 1, 1, 1.42857, 1, 1.42857, 1, 2, 1007, 1354.7, 0, 1571, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, 'SmartAI', 0, 3, 1, 1.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 12340);
DELETE FROM `creature_template` WHERE `entry`=562;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (562, 0, 0, 0, 0, 0, 35435, 0, 0, 0, 'Aniversario', 'Eventos Athenas-WoW', '', 561, 60, 60, 0, 0, 35, 35, 16385, 1, 1, 1, 1, 1, 0, 128, 192, 0, 48, 1, 2000, 2000, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 102, 154, 38, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 1, 1.35, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);


DELETE FROM `smart_scripts` WHERE `entryorguid`=562 AND `source_type`= 0 AND `id`= 0 AND `link`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES('562','0','0','0','62','0','100','0','561','0','0','0','62','169','0','0','0','0','0','7','0','0','0','-3356.848877','-923.685242','101.243080','2','Teleport evento aniversario');


-- NPC que teletransportan a los jugadores muertos

DELETE FROM `game_event_creature` WHERE `eventEntry`=126;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES 
(126, 31656),
(126, 31659),
(126, 43910),
(126, 43919),
(126, 43941),
(126, 43947),
(126, 43949);

DELETE FROM `creature` WHERE `guid` IN (43910, 43919);
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
('43910','562','1','17','17','1','1','0','0','-584.716','-2520.6','91.7687','2.77169','300','0','0','4120','0','0','0','0','0','0'),
('43919','562','0','40','108','1','1','0','0','-10513.1','1172.4','31.7528','3.42582','300','0','0','4120','0','0','0','0','0','0');
-- boss custom
DELETE FROM `creature` WHERE `guid`=43941;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES 
(43941, 464710, 169, 956, 956, 1, 65535, 0, 0, -3360.261963, -1028.431763, 93.722565, 1.535251, 300, 0, 0, 20638600, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid`=43947;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (43947, 561, 1, 1637, 5170, 1, 1, 0, 0, 1597.02, -4395.45, 18.487, 3.46737, 300, 0, 0, 116235, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid`=43949;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES (43949, 561, 0, 1519, 5148, 1, 65535, 0, 0, -8816.34, 622.967, 95.2012, 3.73623, 300, 0, 0, 116235, 0, 0, 0, 0, 0, 0);

DELETE FROM `item_template` WHERE `entry`=22484;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `Unk430_1`, `Unk430_2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_unk1_1`, `stat_unk2_1`, `stat_type2`, `stat_value2`, `stat_unk1_2`, `stat_unk2_2`, `stat_type3`, `stat_value3`, `stat_unk1_3`, `stat_unk2_3`, `stat_type4`, `stat_value4`, `stat_unk1_4`, `stat_unk2_4`, `stat_type5`, `stat_value5`, `stat_unk1_5`, `stat_unk2_5`, `stat_type6`, `stat_value6`, `stat_unk1_6`, `stat_unk2_6`, `stat_type7`, `stat_value7`, `stat_unk1_7`, `stat_unk2_7`, `stat_type8`, `stat_value8`, `stat_unk1_8`, `stat_unk2_8`, `stat_type9`, `stat_value9`, `stat_unk1_9`, `stat_unk2_9`, `stat_type10`, `stat_value10`, `stat_unk1_10`, `stat_unk2_10`, `ScalingStatDistribution`, `DamageType`, `delay`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `StatScalingFactor`, `CurrencySubstitutionId`, `CurrencySubstitutionCount`, `flagsCustom`, `WDBVerified`) VALUES (22484, 0, 0, -1, 'Necrotic Rune', 18021, 4, 1, 8192, 0.975, 1, 1, 0, 0, 0, 32767, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15595);
