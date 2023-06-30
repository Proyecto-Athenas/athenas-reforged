-- fixes buffer overflow on errors like:
/*SQL(p): INSERT INTO item_loot_items (container_id, item_id, item_count, follow_rules, ffa, blocked, counted, under_threshold, needs_quest, rnd_prop, rnd_suffix) VALUES (3372663, 51996, 1, 0, 0, 0, 0, 0, 0, 4294967225, 11)
 [ERROR]: [1264] Out of range value for column 'rnd_prop' at row 1
Unhandled MySQL errno 1264. Unexpected behaviour possible.
*/
ALTER TABLE `item_loot_items`
	CHANGE COLUMN `rnd_prop` `rnd_prop` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled' AFTER `needs_quest`,
	CHANGE COLUMN `rnd_suffix` `rnd_suffix` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled' AFTER `rnd_prop`;