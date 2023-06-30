SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for character_arena_solo
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_solo`;
CREATE TABLE `character_arena_solo`  (
  `guid` int(11) NOT NULL,
  `wins` int(11) NOT NULL,
  `games` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
