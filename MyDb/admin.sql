/*
Navicat MySQL Data Transfer

Source Server         : Evey
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : user2

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-03-10 10:30:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('Evey', '666');
INSERT INTO `admin` VALUES ('yy', '555');
