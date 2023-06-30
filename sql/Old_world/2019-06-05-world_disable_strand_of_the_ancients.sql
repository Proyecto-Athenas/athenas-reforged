-- sota bg is broken, disabling it for now

DELETE FROM disables WHERE sourceType = 3 AND disables.entry = 9;
INSERT INTO disables (sourceType, entry, flags, params_0, params_1, comment) VALUES
(3, 9, 0, '', '', 'Strand of the Ancients (SOTA) - Battleground');