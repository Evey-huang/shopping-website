/*
Navicat MySQL Data Transfer

Source Server         : Evey
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : user2

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2017-03-10 10:30:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stuser1
-- ----------------------------
DROP TABLE IF EXISTS `stuser1`;
CREATE TABLE `stuser1` (
  `id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `authorname` varchar(255) DEFAULT NULL,
  `publish` varchar(255) DEFAULT NULL,
  `price` decimal(65,0) DEFAULT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of stuser1
-- ----------------------------
INSERT INTO `stuser1` VALUES ('11', null, '杨绛', '新知三联书店', '39', '我们仨', 'img/Book2.jpg');
INSERT INTO `stuser1` VALUES ('12', null, '龙应台', '新知三联书店', '46', '目送', 'img/Book3.jpg');
INSERT INTO `stuser1` VALUES ('13', null, '曹雪芹', '人民文学出版社', '33', '红楼梦', 'img/Book4.jpg');
INSERT INTO `stuser1` VALUES ('14', null, '海明威', '上海译文出版社', '33', '老人与海', 'img/Book5.jpg');
INSERT INTO `stuser1` VALUES ('15', null, '余华', '南海出版社', '44', '活着', 'img/Book6.jpg');
INSERT INTO `stuser1` VALUES ('17', null, '曹雪芹', '人民文学出版社', '23', '红楼梦2', 'img/Book8.jpg');
INSERT INTO `stuser1` VALUES ('18', null, '龙应台', '人民文学出版社', '26', '亲爱的安德烈', 'img/Book9.jpg');
INSERT INTO `stuser1` VALUES ('19', null, '杨绛', '人民文学出版社', '30', '杨绛作品精选2', 'img/Book10.jpg');
