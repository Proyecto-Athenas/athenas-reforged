-- desactivando la BG de Playa de los Ancesrtos
delete from `disables`  where `sourceType` = 3 and `entry` = 9;
insert into `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) values('3','9','0','','','Strand of the Ancients(SOTA) - Battleground');

-- desactivando la BG de Isla de la Conquista
delete from `disables`  where `sourceType` = 3 and `entry` = 30;
insert into `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) values('3','30','0','','','Isle of Conquest(IOC) - Battleground');
