/*
 Navicat Premium Data Transfer

 Source Server         : 182.61.11.252
 Source Server Type    : MySQL
 Source Server Version : 50736 (5.7.36)
 Source Host           : 182.61.11.252:3306
 Source Schema         : blog_db

 Target Server Type    : MySQL
 Target Server Version : 50736 (5.7.36)
 File Encoding         : 65001

 Date: 14/12/2022 17:39:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '密码',
  `nickname` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '昵称',
  `avatar` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `description` varchar(1023) COLLATE utf8mb4_bin NOT NULL COMMENT '简介',
  `email` varchar(127) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `is_deleted` varchar(255) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '是否删除（normal：正常，deleted:删除）',
  `create_time` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(6) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `password`, `nickname`, `avatar`, `description`, `email`, `is_deleted`, `create_time`, `update_time`) VALUES (1, '张三', '123456', '三哥', 'http://dsafdsfds', '社会你三个，人狠废话都', '32167210232@qq', 'normal', '2022-09-20 18:11:58.000000', '2022-09-20 18:12:00.000000');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
