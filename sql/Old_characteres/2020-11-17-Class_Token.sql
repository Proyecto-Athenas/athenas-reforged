
DROP TABLE IF EXISTS `class_coins`;

CREATE TABLE `class_coins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `guid` int(10) NOT NULL,
  `coins` tinyint(3) DEFAULT NULL,
  `race` tinyint(3) DEFAULT NULL,
  `class` tinyint(3) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `class_coins_log`;

CREATE TABLE `class_coins_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` int(10) DEFAULT NULL,
  `coins` tinyint(3) DEFAULT NULL,
  `type` smallint(4) DEFAULT NULL,
  `price` int(12) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


