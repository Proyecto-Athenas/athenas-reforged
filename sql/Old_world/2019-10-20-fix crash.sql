-- Razones por las cuales se eliminaron estos 3 event_scripts es por que causan crashes y tampoco deberian de sumonearcen en esas coordenadas 
-- Puenden aver mas de estos crashes ya que los npcs se sumonean fuera de sus zona o mazmorras por lo que al matarlos causaran la caida del servidor 
DELETE FROM `event_scripts` WHERE `id`=2488 AND `datalong`=7273;
DELETE FROM `event_scripts` WHERE `id`=1428 AND `datalong`=10506;
DELETE FROM `event_scripts` WHERE `id`=1428 AND `datalong`=7273;