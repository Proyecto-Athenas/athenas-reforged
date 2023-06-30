-- fix trello https://es.classic.wowhead.com/blackrock-depths
UPDATE `access_requirement` SET  `level_min`='42' WHERE mapId IN (230);