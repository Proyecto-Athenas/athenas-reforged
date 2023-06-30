 -- corregida la faccion del la creatura https://es.wowhead.com/npc=18931/amish-martillo-salvaje
 UPDATE `creature_template` SET  `faction_A`='11',`faction_H`='11' WHERE entry IN (18931);
 
 -- corregido el flag para las creaturas.
 -- https://es.wowhead.com/npc=18931/amish-martillo-salvaje
 -- https://es.wowhead.com/npc=18930/vlagga-plumacalma
 -- reporte trello https://trello.com/c/QnDfeqP9/92-npcbug-no-fly-travel-path-id-18931-id-18930
 UPDATE `creature_template` SET  `npcflag`='8192'  WHERE entry IN (18931,18930);