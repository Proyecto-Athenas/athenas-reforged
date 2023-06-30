-- fixes buffer overflow on errors like:

--SQL(p): UPDATE guild_member SET profession1_level=5, profession1_skillID=3341480704, profession1_rank=4046500930, profession2_level=0, profession2_skillID=8, profession2_rank=2228256 WHERE guid=22566
--[ERROR]: [1264] Out of range value for column 'profession1_skillID' at row 1
--Unhandled MySQL errno 1264. Unexpected behaviour possible.

ALTER TABLE `guild_member`
	CHANGE COLUMN `profession1_skillID` `profession1_skillID` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `activity`,
	CHANGE COLUMN `profession2_rank` `profession2_rank` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `weekReputation`,
	CHANGE COLUMN `profession2_skillID` `profession2_skillID` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `profession2_rank`,
	CHANGE COLUMN `profession1_rank` `profession1_rank` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `profession2_skillID`,
	CHANGE COLUMN `profession1_level` `profession1_level` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `weekActivity`,
	CHANGE COLUMN `profession2_level` `profession2_level` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `profession1_level`;