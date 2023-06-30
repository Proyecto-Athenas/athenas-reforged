-- desactivando hechizos de abalorios y armas de alma de dragon en arenas
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

insert into `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) values
('0','109802','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107982','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109804','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109787','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109789','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109774','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109776','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107986','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109742','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109744','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107988','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109748','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107966','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109750','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109811','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107962','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109813','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109793','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107970','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109795','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109717','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107960','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109719','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109780','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109782','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107968','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109851','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107831','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109854','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109828','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','108022','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109831','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109838','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107818','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109841','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109866','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107786','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109873','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109847','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107835','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109849','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109861','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','108011','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109864','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109842','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107804','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109844','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109856','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107821','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109858','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109752','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107997','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109754','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109798','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','108006','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109800','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109785','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','108007','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109786','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109721','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','107994','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109724','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109822','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','108000','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109825','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','109941','17','559,562,572,617,618','0','desactivando hechizo en arena'),
('0','101056','17','559,562,572,617,618','0','desactivando hechizo en arena');
