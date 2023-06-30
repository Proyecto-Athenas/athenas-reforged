DELETE FROM disables WHERE sourceType = 3 AND disables.entry = 1;
INSERT INTO disables (sourceType, entry, flags, params_0, params_1, comment) VALUES
(3, 1, 0, '', '', 'Alterac Valley (AV)- Battleground');