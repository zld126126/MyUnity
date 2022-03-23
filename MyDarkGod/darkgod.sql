/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50508
 Source Host           : localhost:3306
 Source Schema         : darkgod

 Target Server Type    : MySQL
 Target Server Version : 50508
 File Encoding         : 65001

 Date: 23/03/2022 15:11:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL,
  `acct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `exp` int(11) NULL DEFAULT NULL,
  `power` int(11) NULL DEFAULT NULL,
  `coin` int(11) NULL DEFAULT NULL,
  `diamond` int(11) NULL DEFAULT NULL,
  `hp` int(11) NULL DEFAULT NULL,
  `ad` int(11) NULL DEFAULT NULL,
  `ap` int(11) NULL DEFAULT NULL,
  `addef` int(11) NULL DEFAULT NULL,
  `apdef` int(11) NULL DEFAULT NULL,
  `dodge` int(11) NOT NULL,
  `pierce` int(11) NULL DEFAULT NULL,
  `critical` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (0, '666', '666', '尉迟乐', 1, 0, 150, 5000, 500, 2000, 275, 265, 67, 43, 7, 5, 2);

SET FOREIGN_KEY_CHECKS = 1;
