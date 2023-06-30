-- desactivando hechizos de abalorios y armas de alma de dragon en arenas


-- estos son los registros anteriores, se reporto que varios eran incorrectos
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109802'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107982'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109804'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109787'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109789'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109774'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109776'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107986'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109742'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109744'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107988'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109748'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107966'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109750'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109811'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107962'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109813'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109793'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107970'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109795'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109717'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107960'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109719'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109780'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109782'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107968'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109851'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107831'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109854'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109828'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108022'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109831'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109838'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107818'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109841'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109866'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107786'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109873'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109847'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107835'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109849'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109861'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108011'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109864'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109842'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107804'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109844'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109856'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107821'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109858'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109752'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107997'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109754'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109798'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108006'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109800'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109785'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108007'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109786'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109721'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107994'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109724'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109822'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108000'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109825'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109941'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '101056'; 


-- aqui inician los nuevos registros en sql 
-- Sello de los siete símbolos
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109802'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107982'; 
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109804'; 

-- Insignia de la mente corrupta
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109787';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107982';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109789';

-- Vórtice transfigurador de almas
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109774';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107986';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109776';

-- Nido del último dragón
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109742';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107988';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109744';

-- Ojo de destrucción
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109748';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107966';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109750';

-- Corazón del sin vida
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109811';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107962';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109813';

-- Voluntad de desvinculación
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109793';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107970';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109795';

-- Cólera de desencadenamiento
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109717';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107960';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109719';

-- Resolución de eternidad
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109780';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107968';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109782';

-- Rathrak, la mente venenosa
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109851';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107831';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109854';

-- Bebedora de almas
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109828';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108022';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109831';

-- Gurthalak, la voz de las profundidades
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109838';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107818';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109840';

-- No´kaled, los elementos de la muerte - item 78481
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107789';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107787';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107785';

-- No´kaled, los elementos de la muerte - item 77188
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109869';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109867';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109871';

-- No´kaled, los elementos de la muerte - item 78472
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109870';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109868';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109872';

-- Fauce del señor de los dragones
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109847';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107835';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109849';

-- Kiril, furia de las bestias
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109861';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108011';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109864';

-- Ti´tahk, el paso del tiempo
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109842';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107804';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109844';

-- Vishanka, Fauces de la tierra
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109856';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107821';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109858';

-- Fetiche de vínculo de hueso
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109752';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107997';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109754';

-- Astucia del cruel
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109798';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108005';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109800';

-- Orgullo indómito
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108008';

-- Astucia del cruel
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109721';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '107994';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109724';

-- Corazón guardavientos
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109822';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '108000';
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109825';

-- Tiriosh y Golad
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '109939';

-- Dragonira, el reposo de Terecgosa
DELETE FROM `disables` WHERE `sourceType` = '0' AND `entry` = '101056';


-- desactivando nuevamente varios bonus de daño en arenas
-- Sello de los siete símbolos
SET @id1:=109802; 
SET @id2:=107982; 
SET @id3:=109804; 
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77969'), 
-- ('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77204'), 
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77989'); 

-- Insignia de la mente corrupta
SET @id1:=109787;
SET @id2:=107982;
SET @id3:=109789;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77971'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77203 and 77204'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77991');

-- Vórtice transfigurador de almas
SET @id1:=109774;
SET @id2:=107986;
SET @id3:=109776;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77970'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77206'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77990');

-- Nido del último dragón
SET @id1:=109742;
SET @id2:=107988;
SET @id3:=109744;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77972'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77205'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77992');

-- Ojo de destrucción
SET @id1:=109748;
SET @id2:=107966;
SET @id3:=109750;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77977'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77200'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77997');

-- Corazón del sin vida
SET @id1:=109811;
SET @id2:=107962;
SET @id3:=109813;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77976'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77199'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77996');

-- Voluntad de desvinculación
SET @id1:=109793;
SET @id2:=107970;
SET @id3:=109795;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77975'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77198'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77995');

-- Cólera de desencadenamiento
SET @id1:=109717;
SET @id2:=107960;
SET @id3:=109719;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77974'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77197'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77994');

-- Resolución de eternidad
SET @id1:=109780;
SET @id2:=107968;
SET @id3:=109782;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77978'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77201'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77998');

-- Rathrak, la mente venenosa
SET @id1:=109851;
SET @id2:=107831;
SET @id3:=109854;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78484'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77195'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78475');

-- Bebedora de almas
SET @id1:=109828;
SET @id2:=108022;
SET @id3:=109831;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78488'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77193'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78479');

-- Gurthalak, la voz de las profundidades
SET @id1:=109838;
SET @id2:=107818;
SET @id3:=109840;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78487'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77191'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78478');

-- No´kaled, los elementos de la muerte - item 78481
SET @id1:=107789;
SET @id2:=107787;
SET @id3:=107785;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78481'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 78481'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78481');

-- No´kaled, los elementos de la muerte - item 77188
SET @id1:=109869;
SET @id2:=109867;
SET @id3:=109871;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77188'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77188'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77188');

-- No´kaled, los elementos de la muerte - item 78472
SET @id1:=109870;
SET @id2:=109868;
SET @id3:=109872;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78472'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 78472'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78472');

-- Fauce del señor de los dragones
SET @id1:=109847;
SET @id2:=107835;
SET @id3:=109849;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78485'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77196'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78476');

-- Kiril, furia de las bestias
SET @id1:=109861;
SET @id2:=108011;
SET @id3:=109864;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78482'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77194'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78473');

-- Ti´tahk, el paso del tiempo
SET @id1:=109842;
SET @id2:=107804;
SET @id3:=109844;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78486'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77190'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78477');

-- Vishanka, Fauces de la tierra
SET @id1:=109856;
SET @id2:=107821;
SET @id3:=109858;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 78480'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 78359'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78471');

-- Fetiche de vínculo de hueso
SET @id1:=109752;
SET @id2:=107997;
SET @id3:=109754;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77982'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77210'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78002');

-- Astucia del cruel
SET @id1:=109798;
SET @id2:=108005;
SET @id3:=109800;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77980'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77208'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78000');

-- Orgullo indómito
SET @id1:=108008;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid item 77983, 77211, 78003');

-- Astucia del cruel
SET @id1:=109721;
SET @id2:=107994;
SET @id3:=109724;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77979'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77207'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 77999');

-- Corazón guardavientos
SET @id1:=109822;
SET @id2:=108000;
SET @id3:=109825;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid finder item 77981'),
('0',@id2,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid normal item 77209'),
('0',@id3,'17','559,562,572,617,618,1','0','desactivando-arena bonus, raid heroic item 78001');

-- Tiriosh y Golad
SET @id1:=109939;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, legendary item 77950, 77949');

-- Dragonira, el reposo de Terecgosa
SET @id1:=101056;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0',@id1,'17','559,562,572,617,618,1','0','desactivando-arena bonus, legendary item 71086');
