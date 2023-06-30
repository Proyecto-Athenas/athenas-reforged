-- fix hp https://es.wowhead.com/npc=39605/garrosh-grito-infernal y https://es.wowhead.com/npc=29611/rey-varian-wrynn
UPDATE `creature_template` SET `Health_mod`='1200' WHERE entry IN (29611, 39605);
UPDATE `creature` SET `curhealth`='103000000' WHERE id IN (29611, 39605);
