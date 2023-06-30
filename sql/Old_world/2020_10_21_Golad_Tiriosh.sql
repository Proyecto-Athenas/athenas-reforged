-- La misión de las dagas legendarias no mostraba los objetivos, se modifico el texto de la misión para mostrar dichos objetivos(quest=29802)

UPDATE `locales_quest` 
SET `Objectives_loc6` = 'Recarga tu anillo descodificador de criptomántico y úsalo para descodificar la clave chamuscada de Corastrasza.$B$B - Clave chamuscada (Corastrasza)$B$B - Anillo Descodificador Cargado (Comerciante Etereo)' , 
`Objectives_loc7` = 'Recarga tu anillo descodificador de criptomántico y úsalo para descodificar la clave chamuscada de Corastrasza.$B$B - Clave chamuscada (Corastrasza)$B$B - Anillo Descodificador Cargado (Comerciante Etereo)' 
WHERE `Id` = '29802'; 
