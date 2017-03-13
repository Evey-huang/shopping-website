/*
Navicat MySQL Data Transfer

Source Server         : Evey
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : user2

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-03-10 10:30:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for my_indent
-- ----------------------------
DROP TABLE IF EXISTS `my_indent`;
CREATE TABLE `my_indent` (
  `id` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `authorname` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `bookname` varchar(255) CHARACTER SET gb2312 DEFAULT NULL,
  `price` varchar(255) CHARACTER SET gb2312 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of my_indent
-- ----------------------------
INSERT INTO `my_indent` VALUES ('12', '龙应台', '目送', '46');
INSERT INTO `my_indent` VALUES ('13', '曹雪芹', '红楼梦', '33');
INSERT INTO `my_indent` VALUES ('11', '杨绛', '我们仨', '39');
