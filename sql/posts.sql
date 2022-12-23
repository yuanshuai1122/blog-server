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

 Date: 15/12/2022 13:59:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '标题',
  `summary` longtext COLLATE utf8mb4_bin COMMENT '摘要',
  `is_deleted` varchar(255) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `posts_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (1, 0, '标题哈哈哈', '摘要撒上的是符合i都是发的顺丰嘿客i丰厚啊看iu返回iu啊黑寡妇iu吧u回复i哦啊公司法i把v爱方便vi啊v分u啊互粉i欧回复i阿股份i噶地方给iu我发个i我国iu个iu个欧回复i阿哥和私服噶地方过哈丢过精神焕发i稻盛和夫i的护身符i海带丝u发货。', '0', '2022-09-21 14:07:26', '2022-09-21 14:07:28', '2022-09-21 14:07:31');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (2, 0, '标题2', 'dhkauhfdiohqfioghwifbiobvf欧亚v办法u阿哥i个iu阿斯非要噶发关于大四法国i一个iu啊告诉对方i阿哥是否i该u风格姑姑i个i哦分工一个服务员过分哦我一个u个好地方iu阿股份i哦预告i要覆盖偶遇个佛iu要噶非要噶发i个i u法国i啊施工方i阿股份i哦啊官方i哦应该发噶官方i噶是否i阿股份i阿股份iu改哦覆盖高发i杨贵妃个i u啊是法国iu阿股份i哦啊放过i哦啊官方iu阿股份iu啊是法国i怕饭嘎斯普个法是9iu皮肤更怕死u法国帕苏规范', '0', '2022-09-21 15:44:07', '2022-09-21 15:44:09', '2022-09-21 15:44:10');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (3, 0, '标题3', '这是第三票撒打算你的发丝反馈咯i哈的粉丝哦哈打死哦hi哦啊打死哦哈啥都啊打死哦哈上帝哦啊打死哦啊打死哦啊打死哦好的死哦哈电视', '0', '2022-09-23 11:21:56', '2022-09-23 11:21:58', '2022-09-23 11:22:01');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (4, 0, '萨达撒上打死打死', '发多少发多少发多少发多少分', '0', '2022-09-23 11:22:25', '2022-09-23 11:22:27', '2022-09-23 11:22:29');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (5, 0, '多少发多少个会发光', '的奉公守法个会让他忽然他会让他如果忽然体会', '0', '2022-09-23 11:23:23', '2022-09-23 11:23:25', '2022-09-01 11:23:29');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (6, 0, '发多少更多更好', '公司的复古风是丹丹大啊阿啊阿啊阿啊阿啊阿啊阿啊阿啊阿啊阿啊阿啊阿啊', '0', '2022-09-23 11:24:09', '2022-09-23 11:24:11', '2022-09-23 11:24:13');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (7, 0, '的撒方法', '史蒂夫反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复反反复复', '0', '2022-09-23 11:24:29', '2022-09-23 11:24:31', '2022-09-23 11:24:32');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (8, 0, '阿斯顿反反复复反反复复反反复复反反复复反反复复', '多少反反复复反反复复反反复复反反复复反反复复的风格', '0', '2022-09-23 11:24:48', '2022-09-23 11:24:50', '2022-09-23 11:24:52');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (9, 0, '发多少发多少发个大帅哥', '史蒂夫个帅哥帅哥帅哥大帅哥', '0', '2022-09-23 11:25:07', '2022-09-23 11:25:08', '2022-09-23 11:25:10');
INSERT INTO `posts` (`id`, `user_id`, `title`, `summary`, `is_deleted`, `create_time`, `update_time`, `edit_time`) VALUES (10, 0, '电视上', '发个第三十三生生世世生生世世生生世世生生世世生生世世生生世世生生世世生生世世生生世世生生世世', '0', '2022-09-23 11:25:25', '2022-09-23 11:25:27', '2022-09-23 11:25:28');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
