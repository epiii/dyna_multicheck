/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : dynamulticheck

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-02 17:07:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kota
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `kota` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES ('1', 'surabaya');
INSERT INTO `kota` VALUES ('2', 'jakarta');
INSERT INTO `kota` VALUES ('3', 'bandung');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'komeng');
INSERT INTO `user` VALUES ('2', 'lontong');
INSERT INTO `user` VALUES ('3', 'bolot');
INSERT INTO `user` VALUES ('4', 'nunung');
INSERT INTO `user` VALUES ('5', 'tukul');
