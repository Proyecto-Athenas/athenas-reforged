-- Se cambio de fase las calabazas del monte hyjal ya que existen múltiples fases de juego en está zona
-- Se tomo coma base un gobject ya existente que se encuentra en todas las fases, Mailbox Entry:202387 - guid:67216
UPDATE `gameobject` SET `phaseMask` = '16383' WHERE `guid` = '2300360';
UPDATE `gameobject` SET `phaseMask` = '16383' WHERE `guid` = '2305491';
UPDATE `gameobject` SET `phaseMask` = '16383' WHERE `guid` = '2305490'; 
