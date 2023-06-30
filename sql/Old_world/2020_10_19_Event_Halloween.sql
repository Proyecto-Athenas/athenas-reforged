-- Monte Hyjal, Arboleda de Aessina, object: 208163 quest: 29000
-- Monte Hyjal, Santuario de Aviana, object: 208164 quest: 29001

-- calabazas de halloween id: 208163,208164 - guid:2300360,2305491 se encontraban en una fase erronea
UPDATE `gameobject` SET `phaseMask` = '1' WHERE `guid` = '2300360';
UPDATE `gameobject` SET `phaseMask` = '1' WHERE `guid` = '2305491';
