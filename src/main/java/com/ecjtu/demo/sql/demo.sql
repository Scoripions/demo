/*
Navicat MySQL Data Transfer

Source Server         : Jay
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-10-07 18:39:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_area`
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area` (
  `area_id` int(2) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(200) NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `last_edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  UNIQUE KEY `UK_AREA` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES ('1', '西苑', '2', '2018-10-06 21:49:27', '2018-10-06 21:49:31');
INSERT INTO `tb_area` VALUES ('2', '东苑', '1', '2018-10-06 21:49:45', '2018-10-06 21:49:48');
INSERT INTO `tb_area` VALUES ('3', '南苑', '4', '2018-10-06 21:50:02', '2018-10-06 21:50:05');
INSERT INTO `tb_area` VALUES ('4', '北苑', '3', '2018-10-06 21:50:18', '2018-10-06 21:50:22');
