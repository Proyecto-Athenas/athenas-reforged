-- comando para transferir un PJ de una cuenta a otra
DELETE FROM `command` WHERE `name` = 'transfer'; 
INSERT INTO `command` (`name`, `security`, `help`) VALUES('transfer','1','Syntax: .transfer #GuidPJ #NewAcc');

