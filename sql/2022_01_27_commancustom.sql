-- comando para borrar cuentas antiguas
DELETE FROM `command` WHERE `name` = 'cleanchardb'; 
INSERT INTO `command` (`name`, `security`, `help`) 
VALUES
('cleanchardb','4','Syntax: .cleanchardb #datetime\r\n\r\nExample: .cleanchardb 2019-06-20 , delete inactive accounts prior to the indicated date');
