/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50140
Source Host           : localhost:3306
Source Database       : kaoshi

Target Server Type    : MYSQL
Target Server Version : 50140
File Encoding         : 65001

Date: 2018-04-16 16:48:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(32) NOT NULL COMMENT '管理员名称',
  `pwd` varchar(32) NOT NULL COMMENT '管理员密码',
  `mobile` varchar(32) NOT NULL COMMENT '联系电话',
  `real_name` varchar(32) DEFAULT NULL COMMENT '真实名称 ',
  `nick_name` varchar(32) DEFAULT NULL COMMENT '昵称',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别  1：男   0：女',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `is_enable` tinyint(1) DEFAULT NULL COMMENT '是否启用  1：启用   0:不启用',
  `thumbnail` varchar(32) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'admin', '000000', '123456789000', '超级管理员', '超级管理员', '1', '1', '2018-04-12 13:50:25', '1', '1');
INSERT INTO `member` VALUES ('2', 'test', '555', '1555', '张三', '张三', '张三', '1', '2018-04-16 08:30:03', '1', '');
INSERT INTO `member` VALUES ('3', '张四', '张四', '888', '张四', '张四', '张四', '1', '2018-04-16 08:30:15', '1', '');
INSERT INTO `member` VALUES ('4', '超五', '超五', '99', '超五', '超五', '超五', '1', '2018-04-16 08:30:27', '1', '');

-- ----------------------------
-- Table structure for mlogin_recoder
-- ----------------------------
DROP TABLE IF EXISTS `mlogin_recoder`;
CREATE TABLE `mlogin_recoder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logintime` datetime DEFAULT NULL COMMENT '管理员登录时间',
  `memberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mlogin_recoder
-- ----------------------------
INSERT INTO `mlogin_recoder` VALUES ('1', '2018-04-16 16:45:17', '1');
INSERT INTO `mlogin_recoder` VALUES ('2', '2018-04-16 16:47:01', '1');

-- ----------------------------
-- Table structure for phase
-- ----------------------------
DROP TABLE IF EXISTS `phase`;
CREATE TABLE `phase` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '阶段定义ID',
  `stagename` varchar(255) NOT NULL COMMENT '阶段名称 ',
  `starttime` datetime NOT NULL COMMENT '开始时间',
  `endtime` datetime NOT NULL COMMENT '结束时间',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phase
-- ----------------------------
INSERT INTO `phase` VALUES ('1', '四级666', '2018-04-16 08:55:23', '2018-04-16 12:55:27', '1');
INSERT INTO `phase` VALUES ('4', '张三', '2018-04-04 11:37:20', '2018-04-27 11:37:23', '99');
INSERT INTO `phase` VALUES ('5', '六级', '2018-04-16 13:46:25', '2018-04-16 13:46:27', '88');

-- ----------------------------
-- Table structure for regist
-- ----------------------------
DROP TABLE IF EXISTS `regist`;
CREATE TABLE `regist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生注册id',
  `loginname` varchar(255) DEFAULT NULL COMMENT '登录名',
  `pwd` varchar(255) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of regist
-- ----------------------------
INSERT INTO `regist` VALUES ('1', 'admin', '000000', '2018-04-10 15:34:54');
INSERT INTO `regist` VALUES ('2', '888333', '000000', '2018-04-10 15:44:31');
