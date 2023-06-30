-- update `characters` set `deleteDate` = UNIX_TIMESTAMP('1970-01-01 12:11:11') where `ID` =1;
/* 
 * Actualmente el sistema cifra la fecha en la que el PJ es borrado y guarda el dato obtenido en una columna de la Base de Datos.
 * Luego del cifrado coge el nombre del PJ y le agrega el valor obtenido del cifrado para luego quitar la relación directa del PJ 
 * con la cuenta del jugador, pero la relación es guardada en las columnas de : `deleteInfos_Account`, `deleteInfos_Name`, `deleteDate`
 *																				ID cuenta          Nombre Ant. de PJ	Fecha Cifrada de borrado
 */
 
/*
 * En el core los procesos que se encargan de esto se encuentran en "Player.cpp" y "CharacterDatabase.cpp" .
 * En Payer.cpp prepara las query sql y en CharacterDatabase.cpp se encuentras las plantillas que se ejecutaran(los procesos son los "CHAR_UPD_****"
 * como el principal del error que era: CHAR_UPD_DELETE_INFO )
*/
ALTER TABLE `characters` 
CHANGE `name` `name` VARCHAR(22) CHARSET utf8 COLLATE utf8_general_ci DEFAULT '0' NOT NULL,
CHANGE `deleteInfos_Name` `deleteInfos_Name` VARCHAR(22) CHARSET utf8 COLLATE utf8_general_ci NULL; 

/*
 * Ahora se pueden utilizar los comandos:
 *	character deleted delete		Syntax: .character deleted delete #guid|$name
 *	character deleted list			Syntax: .character deleted list [#guid|$name]
 *	character deleted old			Syntax: .character deleted old [#keepDays]
 *	character deleted restore		Syntax: .character deleted restore #guid|$name [$newname] [#new account]
 */