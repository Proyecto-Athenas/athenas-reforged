-- fix  bug de leveo con el Npc Warsong Swine
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` IN (25362);