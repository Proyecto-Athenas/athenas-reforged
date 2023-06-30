-- elimina el reporte de la mision
DELETE FROM `report_quest` WHERE `id`=12019;


-- text https://es.wowhead.com/npc=26170/thassarian
DELETE FROM `creature_text` WHERE `entry` IN(26170);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 0, 0, 'Leryssa!', 14, 0, 100, 0, 0, 14664, 'thassarian SAY_THASSARIAN_1', 25359);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 1, 0, 'What have you done to my sister, you motherless elf scum!?', 14, 0, 100, 0, 0, 14665, 'thassarian SAY_THASSARIAN_2', 25360);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 2, 0, 'I would sooner slit my own throat.  You will pay for what you did to your own men, Arthas... for what you did to me!  I swear it.', 12, 0, 100, 0, 0, 14666, 'thassarian SAY_THASSARIAN_3', 25366);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 3, 0, 'Leryssa... you... you\'re all right!', 12, 0, 100, 0, 0, 14667, 'thassarian SAY_THASSARIAN_4', 25844);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 4, 0, 'I cannot return home with you just yet, Leryssa.  I am not quite done with the Scourge.', 12, 0, 100, 0, 0, 14668, 'thassarian SAY_THASSARIAN_5', 25845);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 5, 0, 'You might be right, sister.  My obligations to my land and King have been fulfilled.  But there is something that I still owe to myself.', 12, 0, 100, 0, 0, 14669, 'thassarian SAY_THASSARIAN_6', 25846);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26170, 6, 0, 'Do not worry, Leryssa.  I will come back to you when I am done.  Nothing in the world will stop me from coming home to the only family that I have left.', 12, 0, 100, 0, 0, 14670, 'thassarian SAY_THASSARIAN_7', 25850);


-- text https://es.wowhead.com/npc=25301/consejero-talbot
DELETE FROM `creature_text` WHERE `entry` IN(25301);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25301, 0, 0, 'Our troops, general, consist mostly of villagers and peasants.  Good men, but not quite rid of the prejudices and superstitions of their upbringing.  They\'re not ready to fight alongside our more exotic allies.', 12, 7, 100, 1, 0, 0, 'Counselor Talbot', 24789);

-- text https://es.wowhead.com/npc=25251/leryssa
DELETE FROM `creature_text` WHERE `entry` IN(25251);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25251, 0, 0, 'Thassarian!  You\'re alive!', 14, 0, 100, 0, 0, 14489, 'thassarian SAY_LERYSSA_1', 25842);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25251, 1, 0, 'I thought... I thought you were... dead.', 12, 0, 100, 0, 0, 14490, 'thassarian SAY_LERYSSA_2', 25843);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25251, 2, 0, 'Don\'t leave me again!  You want to fight for your country, but they don\'t even want you!  They sent you here to die!', 12, 0, 100, 0, 0, 14491, 'thassarian SAY_LERYSSA_3', 25848);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25251, 3, 0, 'I know that look in your eye... I\'m not going to be able to talk you out of this.  If you die on me again...', 12, 0, 100, 0, 0, 14492, 'thassarian SAY_LERYSSA_4', 25849);

-- text https://es.wowhead.com/npc=25250/general-arlos
DELETE FROM `creature_text` WHERE `entry` IN(25250);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25250, 0, 0, 'What... what happened to me?', 12, 7, 100, 0, 0, 14196, 'thassarian SAY_ARLOS_1', 25841);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25250, 1, 0, 'Ugh!  My head won\'t stop spinning...', 12, 7, 100, 0, 0, 14197, 'thassarian SAY_ARLOS_2', 25847);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (25250, 2, 0, 'Your offer will be carefully considered, harbinger.  In the meantime we will make use of your delegation in an advisory role.', 12, 7, 100, 1, 0, 0, 'General Arlos', 24790);

-- text https://www.wowhead.com/npc=26203/image-of-the-lich-king
DELETE FROM `creature_text` WHERE `entry` IN(26203);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26203, 0, 0, 'Your progress in this region has been impressive, blood prince.  I am pleased.', 12, 0, 100, 0, 0, 14756, 'thassarian SAY_LICH_1', 25362);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26203, 1, 0, 'Now this is a surprise, Thassarian.  I hadn\'t heard from Mograine or the other death knights for months.  You\'ve come to rejoin the Scourge, I take it?', 12, 0, 100, 0, 0, 14757, 'thassarian SAY_LICH_2', 25363);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (26203, 2, 0, 'Do not fail me, San\'layn.  Return to Icecrown with this fool\'s head or do not bother to return.', 12, 0, 100, 0, 0, 14758, 'thassarian SAY_LICH_3', 25364);

-- text https://es.wowhead.com/npc=28189/príncipe-valanar
DELETE FROM `creature_text` WHERE `entry` IN(28189);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (28189, 0, 0, 'My liege, the infiltration and control of the Alliance power structure by our cultists is well underway.', 12, 0, 100, 0, 0, 14211, 'thassarian SAY_TALBOT_1', 25357);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (28189, 1, 0, 'The power you\'ve bestowed upon me has granted me great mental influence over human minds.  I bear these offerings as proof of my progress.', 12, 0, 100, 0, 0, 14212, 'thassarian SAY_TALBOT_2', 25358);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (28189, 2, 0, 'Allow me to take care of the intruders, lord.  I will feed their entrails to the maggots.', 12, 0, 100, 0, 0, 14213, 'thassarian SAY_TALBOT_3', 25361);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES (28189, 3, 0, 'Yes, my lord!', 12, 0, 100, 0, 0, 14214, 'thassarian SAY_TALBOT_4', 25365);

DELETE FROM `broadcast_text` WHERE `ID` IN(25360, 25366, 25844, 25845, 25846, 25850, 25357, 61576, 25843, 25848, 25849, 25847, 25363, 25364, 25358, 25361, 25365, 61576);

-- broadcast_text https://es.wowhead.com/npc=26170/thassarian
DELETE FROM `broadcast_text` WHERE `ID`=25359;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25359, 0, 'Leryssa!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25360;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25360, 0, 'What have you done to my sister, you motherless elf scum!?', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25366;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25366, 0, 'I would sooner slit my own throat.  You will pay for what you did to your own men, Arthas... for what you did to me!  I swear it.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25844;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25844, 0, 'Leryssa... you... you\'re all right!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25845;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25845, 0, 'I cannot return home with you just yet, Leryssa.  I am not quite done with the Scourge.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25846;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25846, 0, 'You might be right, sister.  My obligations to my land and King have been fulfilled.  But there is something that I still owe to myself.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25850;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25850, 0, 'Do not worry, Leryssa.  I will come back to you when I am done.  Nothing in the world will stop me from coming home to the only family that I have left.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);


-- broadcast_text https://es.wowhead.com/npc=25301/consejero-talbot
DELETE FROM `broadcast_text` WHERE `ID`=24789;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (24789, 7, 'Our troops, general, consist mostly of villagers and peasants.  Good men, but not quite rid of the prejudices and superstitions of their upbringing.  They\'re not ready to fight alongside our more exotic allies.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);


-- broadcast_text https://es.wowhead.com/npc=25251/leryssa
DELETE FROM `broadcast_text` WHERE `ID`=25842;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25842, 0, '', 'Thassarian!  You\'re alive!', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25843;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25843, 0, '', 'I thought... I thought you were... dead.', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25848;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25848, 0, '', 'Don\'t leave me again!  You want to fight for your country, but they don\'t even want you!  They sent you here to die!', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25849;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25849, 0, '', 'I know that look in your eye... I\'m not going to be able to talk you out of this.  If you die on me again...', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);


-- broadcast_text https://es.wowhead.com/npc=25250/general-arlos
DELETE FROM `broadcast_text` WHERE `ID`=25841;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25841, 7, 'What... what happened to me?', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25847;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25847, 7, 'Ugh!  My head won\'t stop spinning...', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=24790;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (24790, 7, 'Your offer will be carefully considered, harbinger.  In the meantime we will make use of your delegation in an advisory role.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);


-- broadcast_text https://www.wowhead.com/npc=26203/image-of-the-lich-king
DELETE FROM `broadcast_text` WHERE `ID`=25362;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25362, 0, 'Your progress in this region has been impressive, blood prince.  I am pleased.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25363;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25363, 0, 'Now this is a surprise, Thassarian.  I hadn\'t heard from Mograine or the other death knights for months.  You\'ve come to rejoin the Scourge, I take it?', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25364;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25364, 0, 'Do not fail me, San\'layn.  Return to Icecrown with this fool\'s head or do not bother to return.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);


-- broadcast_text https://es.wowhead.com/npc=28189/príncipe-valanar
DELETE FROM `broadcast_text` WHERE `ID`=25357;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25357, 0, 'My liege, the infiltration and control of the Alliance power structure by our cultists is well underway.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25358;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25358, 0, 'The power you\'ve bestowed upon me has granted me great mental influence over human minds.  I bear these offerings as proof of my progress.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25361;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25361, 0, 'Allow me to take care of the intruders, lord.  I will feed their entrails to the maggots.', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `broadcast_text` WHERE `ID`=25365;
INSERT INTO `broadcast_text` (`ID`, `Language`, `MaleText`, `FemaleText`, `EmoteID0`, `EmoteID1`, `EmoteID2`, `EmoteDelay0`, `EmoteDelay1`, `EmoteDelay2`, `SoundId`, `Unk1`, `Unk2`, `WDBVerified`) VALUES (25365, 0, 'Yes, my lord!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

