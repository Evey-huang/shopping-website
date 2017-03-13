/*
Navicat MySQL Data Transfer

Source Server         : Evey
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : user2

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-03-10 10:30:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for my_indentlist
-- ----------------------------
DROP TABLE IF EXISTS `my_indentlist`;
CREATE TABLE `my_indentlist` (
  `id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of my_indentlist
-- ----------------------------
