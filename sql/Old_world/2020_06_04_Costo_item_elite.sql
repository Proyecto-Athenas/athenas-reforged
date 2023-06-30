-- corrige el extended cost en el Npc de la horda
DELETE FROM `npc_vendor` WHERE `entry`=54657 AND `item`=73412 AND `ExtendedCost`=3679 AND `type`=1;
DELETE FROM `npc_vendor` WHERE `entry`=54657 AND `item`=73412 AND `ExtendedCost`=3680 AND `type`=1;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(54657, 16, 73412, 0, 0, 3680, 1);


-- corrige el extended cost en el Npc de la ali
DELETE FROM `npc_vendor` WHERE `entry`=54660 AND `item`=73412 AND `ExtendedCost`=3679 AND `type`=1;
DELETE FROM `npc_vendor` WHERE `entry`=54660 AND `item`=73412 AND `ExtendedCost`=3680 AND `type`=1;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(54660, 16, 73412, 0, 0, 3680, 1);