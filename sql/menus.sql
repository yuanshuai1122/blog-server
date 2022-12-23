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

 Date: 14/12/2022 17:39:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id\n',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `icon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'icon图标',
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父id',
  `priority` int(11) DEFAULT '0' COMMENT '优先级',
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT 'url路由',
  `is_deleted` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '逻辑删除: normal：正常， deleted：删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `menus_parent_id` (`parent_id`) USING BTREE,
  KEY `menus_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` (`id`, `user_id`, `icon`, `name`, `parent_id`, `priority`, `url`, `is_deleted`, `create_time`, `update_time`) VALUES (1, 0, 'test', '首页', 0, 0, '/', 'normal', '2022-09-21 10:33:31', '2022-09-21 10:33:33');
INSERT INTO `menus` (`id`, `user_id`, `icon`, `name`, `parent_id`, `priority`, `url`, `is_deleted`, `create_time`, `update_time`) VALUES (2, 0, 'test2', '归档', 0, 1, '/archives', 'normal', '2022-09-21 10:33:56', '2022-09-21 10:33:58');
INSERT INTO `menus` (`id`, `user_id`, `icon`, `name`, `parent_id`, `priority`, `url`, `is_deleted`, `create_time`, `update_time`) VALUES (3, 0, 'test3', '照片', 0, 2, '/photos', 'normal', '2022-09-21 21:10:59', '2022-09-21 21:11:02');
INSERT INTO `menus` (`id`, `user_id`, `icon`, `name`, `parent_id`, `priority`, `url`, `is_deleted`, `create_time`, `update_time`) VALUES (4, 0, 'test4', '关于我', 0, 3, '/s/about', 'normal', '2022-09-21 21:11:33', '2022-09-21 21:11:37');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
