/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : miaosha

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-29 19:10:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(16) DEFAULT NULL,
  `goods_title` varchar(64) DEFAULT NULL,
  `goods_img` varchar(64) DEFAULT NULL,
  `goods_detail` longtext,
  `goods_price` decimal(10,2) DEFAULT '0.00',
  `goods_stock` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'iphoneX', 'Apple iPhone X 64G 银色', '/img/iphonex.png', 'Aphone (A1865)', '5000.00', '100');
INSERT INTO `goods` VALUES ('2', '华为Meta 9', '华为Meta 9', '/img/iphonex.png', 'Meta 9', '5200.00', '50');
INSERT INTO `goods` VALUES ('3', 'oppo R9', 'oppo R9', '/img/iphonex.png', 'oppo ', '3000.00', '10');
INSERT INTO `goods` VALUES ('4', '小米8', '小米8', '/img/iphonex.png', '小米8', '2000.00', '100');
INSERT INTO `goods` VALUES ('5', '小米8-1', '小米8-1', '/img/iphonex.png', '小米8', '10000.00', '20');
INSERT INTO `goods` VALUES ('6', '锤子', '锤子', '/img/iphonex.png', '锤子', '20000.00', '30');

-- ----------------------------
-- Table structure for miaosha_goods
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_goods`;
CREATE TABLE `miaosha_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) DEFAULT NULL,
  `miaosha_price` decimal(10,2) DEFAULT '0.00',
  `stock_count` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_goods
-- ----------------------------
INSERT INTO `miaosha_goods` VALUES ('1', '1', '0.01', '8', '2019-05-28 11:10:12', '2020-01-31 15:50:59');
INSERT INTO `miaosha_goods` VALUES ('2', '2', '0.01', '10', '2019-05-28 11:10:12', '2019-05-28 15:51:31');
INSERT INTO `miaosha_goods` VALUES ('3', '3', '0.09', '10', '2019-05-30 11:10:12', '2019-05-30 19:50:15');
INSERT INTO `miaosha_goods` VALUES ('4', '4', '0.04', '0', '2019-05-22 19:52:54', '2019-12-30 19:52:58');
INSERT INTO `miaosha_goods` VALUES ('5', '5', '1.00', '10', '2019-05-25 19:58:48', '2019-05-30 19:58:51');
INSERT INTO `miaosha_goods` VALUES ('6', '6', '0.07', '10', '2019-05-29 19:59:19', '2019-05-30 19:59:26');

-- ----------------------------
-- Table structure for miaosha_order
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_order`;
CREATE TABLE `miaosha_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_order
-- ----------------------------
INSERT INTO `miaosha_order` VALUES ('8', '18092301750', '8', '1');
INSERT INTO `miaosha_order` VALUES ('9', '18092301750', '9', '1');
INSERT INTO `miaosha_order` VALUES ('10', '12345678910', '10', '4');
INSERT INTO `miaosha_order` VALUES ('11', '12345678910', '11', '4');
INSERT INTO `miaosha_order` VALUES ('12', '12345678910', '12', '4');
INSERT INTO `miaosha_order` VALUES ('13', '12345678910', '13', '4');
INSERT INTO `miaosha_order` VALUES ('14', '12345678910', '14', '4');
INSERT INTO `miaosha_order` VALUES ('15', '12345678910', '15', '4');
INSERT INTO `miaosha_order` VALUES ('16', '12345678910', '16', '4');
INSERT INTO `miaosha_order` VALUES ('17', '12345678910', '17', '4');
INSERT INTO `miaosha_order` VALUES ('18', '12345678910', '18', '4');
INSERT INTO `miaosha_order` VALUES ('19', '12345678910', '19', '4');

-- ----------------------------
-- Table structure for miaosha_user
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_user`;
CREATE TABLE `miaosha_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `head` varchar(128) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18092301751 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_user
-- ----------------------------
INSERT INTO `miaosha_user` VALUES ('12345678910', 'admin', '6b57fc10551867cf38dd200b20d7f0f3', 'pri_key-hyh0', null, '2019-06-12 19:21:42', null, '1');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `delivery_addr_id` bigint(20) DEFAULT NULL,
  `goods_name` varchar(16) DEFAULT NULL,
  `goods_count` int(11) DEFAULT '0',
  `goods_price` decimal(10,2) DEFAULT '0.00',
  `order_channel` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('8', '18092301750', '1', null, 'iphoneX', '1', '0.01', '1', '0', '2019-06-12 22:54:59', null);
INSERT INTO `order_info` VALUES ('9', '18092301750', '1', null, 'iphoneX', '1', '0.01', '1', '0', '2019-06-12 22:55:16', null);
INSERT INTO `order_info` VALUES ('10', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 16:58:33', null);
INSERT INTO `order_info` VALUES ('11', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 16:59:56', null);
INSERT INTO `order_info` VALUES ('12', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 17:01:45', null);
INSERT INTO `order_info` VALUES ('13', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 17:08:19', null);
INSERT INTO `order_info` VALUES ('14', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 17:35:59', null);
INSERT INTO `order_info` VALUES ('15', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 17:36:00', null);
INSERT INTO `order_info` VALUES ('16', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 17:40:51', null);
INSERT INTO `order_info` VALUES ('17', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 17:43:43', null);
INSERT INTO `order_info` VALUES ('18', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 18:12:14', null);
INSERT INTO `order_info` VALUES ('19', '12345678910', '4', null, '小米8', '1', '0.04', '1', '0', '2019-06-29 18:15:19', null);
