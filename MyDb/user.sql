/*
Navicat MySQL Data Transfer

Source Server         : Evey
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : user2

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-03-10 10:30:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('ss', '345');
INSERT INTO `user` VALUES ('ff', '678');
INSERT INTO `user` VALUES ('dd', '123');
INSERT INTO `user` VALUES ('aa', 'aa');
INSERT INTO `user` VALUES ('oo', 'oo');
INSERT INTO `user` VALUES ('cc', 'cc');
INSERT INTO `user` VALUES ('pp', 'pp');
INSERT INTO `user` VALUES ('kk', 'kk');
INSERT INTO `user` VALUES ('EEV', '123');
