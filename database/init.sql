/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : b2c2

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-24 13:53:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_ad
-- ----------------------------
DROP TABLE IF EXISTS `t_ad`;
CREATE TABLE `t_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '���id������������1',
  `ad_position_id` int(11) DEFAULT NULL COMMENT '���λ��id',
  `image` varchar(255) DEFAULT NULL COMMENT '���ͼ���ַ',
  `description` varchar(255) DEFAULT NULL COMMENT '�������',
  `url` varchar(255) DEFAULT NULL COMMENT '�������',
  `state` tinyint(4) DEFAULT NULL COMMENT '״̬��1���� 2�ر�',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ��״̬ 1 ��ɾ�� 2 δɾ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ad
-- ----------------------------
INSERT INTO `t_ad` VALUES ('1', null, '/pic/dydz/user/201704/1491994748506.png', null, 'adfasf', '1', '2017-04-12 18:59:29', '2017-04-12 18:59:29', '1', null);
INSERT INTO `t_ad` VALUES ('2', null, '/pic/dydz/user/201704/1491994830645.png/pic/dydz/user/201704/1491994830645.png', 'dsafdasf', 'dasasd', '1', '2017-04-12 19:01:51', '2017-04-12 19:01:51', '1', null);
INSERT INTO `t_ad` VALUES ('3', null, '/pic/dydz/user/201704/1491994830645.png/pic/dydz/user/201704/1491994830645.png/pic/dydz/user/201704/1491994830645.png', 'dsafdasf', 'dasasd', '1', '2017-04-12 19:02:43', '2017-04-12 19:02:43', '1', null);
INSERT INTO `t_ad` VALUES ('4', null, '/pic/dydz/user/201704/1491994953107.png', 'sadfsdaf', 'sdafsad', '1', '2017-04-12 19:02:53', '2017-04-12 19:02:53', '1', null);
INSERT INTO `t_ad` VALUES ('5', '1', '/pic/dydz/user/201704/1491995782987.png', 'dfasdfa', 'adsfasdf', '1', '2017-04-12 19:16:55', '2017-04-12 19:16:55', '1', null);
INSERT INTO `t_ad` VALUES ('6', '1', '/pic/dydz/user/201704/1492046169515.png', 'sdfadsfa312312', 'dsadfsad', '1', '2017-04-13 09:16:27', '2017-04-13 10:17:06', '1', null);
INSERT INTO `t_ad` VALUES ('7', null, '/pic/dydz/user/201704/1492053351449.png', '12312', '12312', '2', '2017-04-13 11:16:04', '2017-04-13 11:16:04', '1', null);
INSERT INTO `t_ad` VALUES ('8', null, '/pic/dydz/user/201704/1492316845760.png', 'xxxx', 'xxxx', '1', '2017-04-16 12:27:32', '2017-04-16 12:27:32', '1', null);
INSERT INTO `t_ad` VALUES ('9', null, '/pic/dydz/user/201704/1492317403219.png', '12312312', '23123', '1', '2017-04-16 12:37:43', '2017-04-16 12:37:43', '1', null);
INSERT INTO `t_ad` VALUES ('10', null, '/pic/dydz/user/201704/1492317500550.png', 'asdfasdf', 'dasfsad', '1', '2017-04-16 12:43:06', '2017-04-16 12:43:06', '1', null);
INSERT INTO `t_ad` VALUES ('11', '1', '/pic/dydz/user/201704/1492317772429.png', 'sadfasdfasdf', 'asdfasdfa', '1', '2017-04-16 12:43:07', '2017-04-16 12:43:07', '1', null);
INSERT INTO `t_ad` VALUES ('12', '1', '/pic/dydz/user/201704/1492317794987.png', 'asdfasdf', 'fasdfasdf', '1', '2017-04-16 12:44:15', '2017-04-16 12:44:15', '1', null);
INSERT INTO `t_ad` VALUES ('13', '1', '/pic/dydz/user/201704/1492399029723.png', '��ҳ', 'http://www.chunriqiushi.cn/page/safeDetectReport.html?id=15', '1', '2017-04-17 11:17:37', '2017-04-21 10:48:24', '2', null);
INSERT INTO `t_ad` VALUES ('14', '1', '/pic/dydz/user/201704/1492418091979.png', '����', 'http://www.chunriqiushi.cn/page/safeDetectReport.html?id=15', '1', '2017-04-17 16:35:15', '2017-04-21 10:48:17', '2', null);
INSERT INTO `t_ad` VALUES ('15', '1', '/pic/dydz/user/201704/1492514685645.png', '�Ѻ�', 'http://www.sohu.com', '1', '2017-04-18 19:25:11', '2017-04-18 19:25:11', '1', null);
INSERT INTO `t_ad` VALUES ('16', '1', '/pic/dydz/user/201704/1492568269203.jpg', '����ҳ����', 'http://www.sohu.com', '1', '2017-04-19 10:18:07', '2017-04-19 10:23:20', '1', null);
INSERT INTO `t_ad` VALUES ('17', null, null, null, null, null, '2017-04-21 17:29:48', '2017-04-21 17:29:48', '2', null);

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����Աid',
  `role_id` int(11) DEFAULT NULL COMMENT '��ɫid',
  `admin_name` varchar(255) DEFAULT NULL COMMENT '�����˺�����',
  `password` varchar(255) DEFAULT '' COMMENT '����',
  `rand` varchar(255) DEFAULT '' COMMENT 'md5 �����',
  `company_name` varchar(255) DEFAULT NULL COMMENT '��˾����',
  `description` varchar(255) DEFAULT '' COMMENT '����',
  `state` tinyint(4) DEFAULT '1' COMMENT '״̬��1.���� 2.�ر�',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ��״̬ 1 ��ɾ�� 2 δɾ��',
  `creat_id` int(11) DEFAULT NULL COMMENT '������id',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_name` (`admin_name`) USING BTREE,
  UNIQUE KEY `company_name` (`company_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='����Ա��';

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', '1', 'super', 'e0383773c0d34c4a2584601aee4733b5', '137296', '2211', '222', '1', '2017-03-23 15:13:49', '2017-03-23 15:55:17', '2', null);
INSERT INTO `t_admin` VALUES ('2', '4', 'admin', 'e0383773c0d34c4a2584601aee4733b5', '137296', 'xx', 'xx', '1', '2017-03-23 15:56:13', '2017-03-23 15:56:14', '2', null);
INSERT INTO `t_admin` VALUES ('3', '1', 'test11', 'e0383773c0d34c4a2584601aee4733b5', '137296', '���Թ�˾', '��', '1', '2017-04-15 17:56:28', '2017-04-15 17:56:28', '2', null);
INSERT INTO `t_admin` VALUES ('4', '1', 'test22', 'e0383773c0d34c4a2584601aee4733b5', '137296', '��������', 'xxxxx', '1', '2017-04-15 17:59:59', '2017-04-15 17:59:59', '2', null);
INSERT INTO `t_admin` VALUES ('5', '1', 'test13', 'e0383773c0d34c4a2584601aee4733b5', '137296', 'dddd', 'dddddd', '1', '2017-04-15 18:04:48', '2017-04-15 18:04:48', '2', null);
INSERT INTO `t_admin` VALUES ('6', '1', 'test33', 'e0383773c0d34c4a2584601aee4733b5', '137296', 'ddd', 'ddd', '1', '2017-04-15 18:07:15', '2017-04-15 18:07:15', '2', null);
INSERT INTO `t_admin` VALUES ('7', '1', 'test14', 'e0383773c0d34c4a2584601aee4733b5', '137296', 'dsadfsfas', 'dasfadsfas', '1', '2017-04-15 18:09:03', '2017-04-15 18:09:03', '2', null);
INSERT INTO `t_admin` VALUES ('9', '3', 'test16', 'e0383773c0d34c4a2584601aee4733b5', '137296', 'adsf', 'adsfasdf', '1', '2017-04-15 18:20:47', '2017-04-15 18:20:47', '2', null);
INSERT INTO `t_admin` VALUES ('10', '4', 'test21', 'e0383773c0d34c4a2584601aee4733b5', '137296', 'ss', 'ss', '1', '2017-04-15 21:13:39', '2017-04-15 21:13:39', '2', null);
INSERT INTO `t_admin` VALUES ('11', '4', 'admin123', 'e0383773c0d34c4a2584601aee4733b5', '137296', '22', 'xx', '1', '2017-04-22 15:00:07', '2017-04-22 15:00:07', '2', null);

-- ----------------------------
-- Table structure for t_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_role`;
CREATE TABLE `t_admin_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ɫid������������1',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '��ɫ����',
  `description` varchar(255) DEFAULT NULL COMMENT '����',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `state` tinyint(4) DEFAULT '1' COMMENT '״̬��1.���� 2.�ر�',
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_role
-- ----------------------------
INSERT INTO `t_admin_role` VALUES ('1', '�ܹ���Ա', '�ܹ���Ա', null, null, '1', null);
INSERT INTO `t_admin_role` VALUES ('2', '��Ӫ��Ա', '��Ӫ��Ա', null, null, '1', null);
INSERT INTO `t_admin_role` VALUES ('3', '����', '����', '2017-04-04 20:23:55', '2017-04-04 20:23:55', '1', null);
INSERT INTO `t_admin_role` VALUES ('4', '��ɫ����', '��ɫ����', '2017-04-14 18:34:37', '2017-04-14 18:34:37', '1', null);

-- ----------------------------
-- Table structure for t_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `t_ad_position`;
CREATE TABLE `t_ad_position` (
  `ad_position_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '���λ��id������������1',
  `name` varchar(255) DEFAULT NULL COMMENT '�������',
  `position` varchar(255) DEFAULT NULL COMMENT 'λ��',
  `measure` varchar(255) DEFAULT NULL COMMENT '�ߴ�',
  `state` tinyint(4) DEFAULT '1' COMMENT '״̬��1���� 2�ر�',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`ad_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ad_position
-- ----------------------------
INSERT INTO `t_ad_position` VALUES ('1', '��ҳBanner', '��ҳ-ͷ��', '600 * 300px', '1', '2017-04-04 21:38:38', '2017-04-04 21:38:41', null);

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `category_id` int(11) DEFAULT NULL COMMENT '��������id',
  `title` varchar(255) DEFAULT NULL COMMENT '����',
  `content` text COMMENT '����',
  `key_words` varchar(255) DEFAULT NULL COMMENT '�ؼ���',
  `author` varchar(255) DEFAULT NULL COMMENT '����',
  `publishTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `publisher` varchar(255) DEFAULT NULL COMMENT '������/����',
  `recommend` tinyint(4) DEFAULT '2' COMMENT '�Ƿ��Ƽ�  1 �Ƽ� 2 ���Ƽ�',
  `is_published` tinyint(4) DEFAULT '0' COMMENT '�Ƿ񷢲� 1 ���� 0 δ����',
  `state` tinyint(4) DEFAULT NULL COMMENT '״̬��1 ���� 2 �ر�',
  `is_top` tinyint(4) DEFAULT '0' COMMENT '�Ƿ��ö� 1 �ö� 0 ���ö�',
  `image` varchar(255) DEFAULT NULL COMMENT '������ͼ',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_state` tinyint(4) DEFAULT '2' COMMENT '״̬ 1 ��ɾ�� 2 δɾ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('1', null, '����', '<p>��������</p>', '�ද��', null, null, null, '1', '0', '1', '1', 'abcdefg', '2017-04-06 08:36:58', '2017-04-12 14:00:53', '1', '2');
INSERT INTO `t_article` VALUES ('2', null, '�ද��', '<p>��������<img src=\"http://img.baidu.com/hi/jx2/j_0031.gif\"/></p>', '�ද��', null, null, null, '1', '0', '1', '1', 'abcdefg', '2017-04-06 08:37:43', '2017-04-12 14:00:51', '1', '2');

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '���ﳵid',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `price_id` int(11) DEFAULT NULL COMMENT '��Ʒ���۸�id',
  `goods_id` int(11) DEFAULT NULL COMMENT '��Ʒid',
  `quantity` int(11) DEFAULT NULL COMMENT '����',
  `is_buy` tinyint(4) DEFAULT '2' COMMENT '�Ƿ����־��1 ���� 2 ������',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=925 DEFAULT CHARSET=utf8 COMMENT='���ﳵ��Ŀ��';

-- ----------------------------
-- Records of t_cart
-- ----------------------------

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ʒid',
  `category_id` int(11) DEFAULT NULL COMMENT '�������id',
  `goods_name` varchar(255) DEFAULT '' COMMENT '��Ʒ����',
  `nickname` varchar(255) DEFAULT NULL COMMENT '����',
  `image` varchar(255) DEFAULT '' COMMENT '��Ʒ��ͼ',
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ�� 1�� 2��',
  `simple_describe` varchar(255) DEFAULT '' COMMENT '��Ҫ����',
  `detail_describe` text COMMENT '��ϸ����',
  `is_marketable` tinyint(4) DEFAULT '0' COMMENT '�ϼܱ�־ 1 ���ϼ� 0 δ�ϼ�',
  `recommend` tinyint(4) DEFAULT '2' COMMENT '�Ƽ� 1�� 2��',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL COMMENT '������id',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='��Ʒ��';

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '0', 'â����', 'â����', '/pic/dydz/user/201704/1492090027116.png,/pic/dydz/user/201704/1492148659765.png,/pic/dydz/user/201704/1492148662871.png,/pic/dydz/user/201704/1492148666503.png,/pic/dydz/user/201704/1492148670172.png,/pic/dydz/user/201704/1492148675607.png', '2', 'â����', '<p>&nbsp;&nbsp;&nbsp;&nbsp;â�������������ֲ��޹�������Ϊ���ȴ�����������<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E8%8A%92%E6%9E%9C/31490\">â��</a>��Ƭ��Ȼ������ɹ�ķ�����ȥˮ��֮�󣬱��Ϊ��â���ɡ�<a class=\"sup-anchor\"></a></p><p><br/></p><p><br/></p>', '0', '1', '2017-03-23 17:03:06', '2017-04-14 13:58:12', '2');
INSERT INTO `t_goods` VALUES ('2', '2', 'ƻ��', 'ƻ��', '/pic/dydz/user/201704/1491552981139.jpg,/pic/dydz/user/201704/1492933624162.jpg,/pic/dydz/user/201704/1492933966084.jpg,/pic/dydz/user/201704/1492934021770.jpg', '1', 'ƻ��', '<p>������˰��<br/></p>', '1', '2', '2017-04-01 17:58:48', '2017-04-23 15:53:46', '11');
INSERT INTO `t_goods` VALUES ('3', '2', '����', '����', '', '1', '����', null, '0', '2', '2017-04-01 21:34:02', '2017-04-01 21:34:02', '2');
INSERT INTO `t_goods` VALUES ('4', '1', '�ɹ�', '�ɹ�', '', '1', '�ɹ�', '<p>�ɹ�</p>', '0', '1', '2017-04-07 16:23:24', '2017-04-10 15:19:19', '2');
INSERT INTO `t_goods` VALUES ('5', '3', '��ƻ��', '��ƻ��', '/pic/dydz/user/201704/1491967410863.jpg', '1', 'ƻ��', '', '1', '1', '2017-04-12 11:23:41', '2017-04-12 22:00:18', '2');
INSERT INTO `t_goods` VALUES ('6', '13', '��ƻ��', '��ƻ��', '/pic/dydz/user/201704/1491967466969.jpg', '1', '��ƻ��', '', '1', '1', '2017-04-12 11:25:02', '2017-04-12 21:55:26', '2');
INSERT INTO `t_goods` VALUES ('7', '2', '����', '����', '/pic/dydz/user/201704/1491969550232.jpg', '1', '���ʣ��ֳ�����������ζ���ᣬ�����и���ϲʳ���ʳ���ĸ������ĸ�ӡ������к��зḻ�������ᣬ��˱���Ϊ��������ֿ⡱', null, '1', '1', '2017-04-12 12:02:57', '2017-04-12 12:02:57', '2');
INSERT INTO `t_goods` VALUES ('8', '14', '�ղ�����װ�������', '�ղ�����װ�������', '/pic/dydz/user/201704/1491986326518.jpg', '1', '�ղ�����װ�������', '<h1>�ղ�����װ�������</h1><h1>�ղ�����װ�������</h1><h1>�ղ�����װ�������</h1><h1>�ղ�����װ�������</h1><p><br/></p>', '1', '1', '2017-04-12 16:39:52', '2017-04-12 17:07:12', '2');
INSERT INTO `t_goods` VALUES ('9', '14', '����˫����������', '����˫����������', '/pic/dydz/user/201704/1491986412666.jpg', '1', '����˫����������', '<h1>����˫����������</h1><h1>����˫����������</h1><h1>����˫����������</h1><h1>����˫����������</h1><p><br/></p>', '1', '1', '2017-04-12 16:40:19', '2017-04-12 17:44:11', '2');
INSERT INTO `t_goods` VALUES ('10', '14', '����΢��¯��', '����΢��¯��', '/pic/dydz/user/201704/1491997319523.jpg', '1', '����΢��¯��', '<h3 class=\"tb-main-title\">����΢��¯��</h3><h3 class=\"tb-main-title\">����΢��¯��</h3><h3 class=\"tb-main-title\">����΢��¯��</h3><p><br/></p>', '1', '2', '2017-04-12 19:42:05', '2017-04-12 20:27:16', '2');
INSERT INTO `t_goods` VALUES ('11', '13', '���޷���ϴ����ϴ��', '���޷���ϴ����ϴ��', '/pic/dydz/user/201704/1491997761544.jpg', '1', '���޷���ϴ����ϴ��', '<h1>���޷���ϴ����ϴ��</h1><h1>���޷���ϴ����ϴ��</h1><p><br/></p>', '0', '2', '2017-04-12 19:49:42', '2017-04-12 19:49:42', '2');
INSERT INTO `t_goods` VALUES ('12', '13', '���澻�ڿ�ϴ��Һ', '���澻�ڿ�ϴ��Һ', '/pic/dydz/user/201704/1491998709987.jpg', '1', '���澻�ڿ�ϴ��Һ', '<h1>���澻�ڿ�ϴ��Һ</h1><h1>���澻�ڿ�ϴ��Һ</h1><p><br/></p>', '1', '1', '2017-04-12 20:05:20', '2017-04-12 20:05:20', '2');
INSERT INTO `t_goods` VALUES ('13', '12', '�������ڰ���̫�Ͱ�����ţ��������', '�������ڰ���̫�Ͱ�����ţ��������', '/pic/dydz/user/201704/1492006026745.jpg', '1', '�������ڰ���̫�Ͱ�����ţ��������', '<h3 class=\"tb-main-title\">�������ڰ���̫�Ͱ�����ţ��������</h3><h3 class=\"tb-main-title\">�������ڰ���̫�Ͱ�����ţ��������</h3><p><br/></p>', '1', '1', '2017-04-12 20:09:10', '2017-04-12 22:07:09', '2');
INSERT INTO `t_goods` VALUES ('14', '7', '016���±�С�׻�С������', '016���±�С�׻�С������', '/pic/dydz/user/201704/1491999251933.jpg', '1', '016���±�С�׻�С������', '<h3 class=\"tb-main-title\">016���±�С�׻�С������</h3><h3 class=\"tb-main-title\">016���±�С�׻�С������</h3><p><br/></p>', '1', '1', '2017-04-12 20:14:19', '2017-04-12 20:14:19', '2');
INSERT INTO `t_goods` VALUES ('15', '18', 'ϴ�·�', 'ϴ�·�', '/pic/dydz/user/201704/1492006569292.jpg', '1', 'ϴ�·�', '<p>̭��</p>', '1', '1', '2017-04-12 22:16:23', '2017-04-12 22:16:23', '2');
INSERT INTO `t_goods` VALUES ('16', '17', '��Ȼ����', '��Ȼ����', '/pic/dydz/user/201704/1492006686485.jpg', '1', '��Ȼ����', '<p>��Ȼ����</p>', '1', '1', '2017-04-12 22:18:16', '2017-04-18 10:17:52', '2');
INSERT INTO `t_goods` VALUES ('17', '0', '������', '������', '/pic/dydz/user/201704/1492007032305.png', '2', '������', '<p>������</p>', '0', '1', '2017-04-12 22:24:00', '2017-04-18 12:01:27', '2');
INSERT INTO `t_goods` VALUES ('18', '21', '�ʹ�ľ', '�ʹ�ľ', '/pic/dydz/user/201704/1492007184581.jpg', '1', '�ʹ�ľ', '<p>�ʹ�ľ</p>', '1', '1', '2017-04-12 22:26:36', '2017-04-12 22:26:36', '2');
INSERT INTO `t_goods` VALUES ('19', '23', '����', '����', '/pic/dydz/user/201704/1492072632079.png,/pic/dydz/user/201704/1492494606516.jpg,/pic/dydz/user/201704/1492494613076.jpg', '1', '��������', '<p>�����������ѡ����ӣ���ĸ���������ѡ�������һ��Ӳ�ǣ����������ҡ��Ѱ׼��ѻƲ��֡��������̴���Ӫ���ḻ��һ��������Լ50�ˣ���������7�ˡ����������ʵİ�����������ʺ�����������Ҫ����Ϊ�������գ������ʸߴ�98%���ϣ�Ӫ����ֵ�ܸߣ������ೣʳ�õ�ʳ��֮һ</p>', '1', '1', '2017-04-13 16:35:29', '2017-04-18 13:50:17', '2');
INSERT INTO `t_goods` VALUES ('20', '5', '����', '����', '/pic/dydz/user/201704/1492072997825.png', '1', '����', '<p>���˺��зḻ��ά���ؼ������ʣ�����ά����C�ĺ����ر�ͻ����ÿ100�˺����ߴ�88���ˣ���ͬ��İײˡ��Ͳ˵ȶ�һ�����ϣ����۲ˡ�ƻ����һ������ʱ�����й��в��ɿ����ݴ����к���������Ϊ���֣������й����㡢���������Ѹ�����ϱ����ع�Ϊ��ֲ�������Ĵ��ڵ¹�����ѧ�ҿƺշ��ֽ�˾�ǰ�󣬷ν�����д����У�ŷ���˱��û���֭�Ƴ����ƿȴ���ҩ����˶���Ч����Ϊ�����˵�ҽ�������ִ��й����ð��Ĳ���ȡά����U��θ���������ֲ�����һ��ʮ�ֻ���ֲ��������� �ܣ�Ϊҽѧ�����ش��ס�</p>', '1', '1', '2017-04-13 16:45:01', '2017-04-13 16:45:36', '2');
INSERT INTO `t_goods` VALUES ('21', '0', '��Ϻ', '��Ϻ', '/pic/dydz/user/201704/1492090169380.png', '2', '', '<p>&nbsp;&nbsp;&nbsp;&nbsp;��Ϻ����֫����׿��࣬����ܶࡣ������Ϻ����Ϻ����Ϻ��С��Ϻ����Ϻ�������׶�Ϻ����������Ϻ���й���Ϻ�������堯ţ����Ϻ������Ϻ����ΧϺ������Ϻ����Ϻ�ȡ����ж�Ϻ���ҹ��ز�����������ʱ���ɶԳ��۶�������Ϻ����Ϻ������ů������������ܹ��ڲ���������ͷ�ֳ������ϺҪ��;Ǩ�Ƶ��ƺ��ϲ�����ˮ�½ϸߵ�ˮ��ȥ�ܺ�������Ϻ�Ļ�����ܲҲ����ʳ��ÿ��3�·�ɢ�ڸ��ص�Ϻ��ʼ���У���Ⱥ��ӵ��򱱷��Ρ��������µ����е��ﲳ������ǳ������ʼ�����ǵķ�ֳ����Ϻ������;������ƣ�������������Ѻ�󲿷־���ȥ�ˣ�ֻ��������ǿ�Ĳ��ܼ������棬�շ�����СϺ����ṹҪ�����ܶ�仯������20�����Ƥ�ų�Ϊ��Ϻ����Ϻ������죬��ϺҪ���ڶ���ų��졣Ϻ�����������峤��ϸ�����룬������֪��Χ��ˮ��������ز�ǿ��ļ��������ڳ�;��Ρ�������β�ȿ��������������ƽ�⣬Ҳ���Է������ˡ�</p>', '0', '1', '2017-04-13 21:30:03', '2017-04-15 17:12:15', '2');
INSERT INTO `t_goods` VALUES ('22', '28', 'ʯ��', 'ʯ��', '/pic/dydz/user/201704/1492090865745.png', '1', 'ʯ��', '<p>&nbsp;&nbsp;&nbsp;&nbsp;ʯ��ѧ����Punica granatum \r\nL.����Ҷ��ľ���ľ����Ҷ��ͨ�����������������Ҷ����������������������򼸶��������ɾ�ɡ���򣬽����Σ���Ƭ5-9������5-9�������ޣ�����״���У�����������������Σ��������޴滨����Ƭ����Ƥ�����Ӷ��������������Σ�������9-10�¡�����Ƥ���ʰ�͸������֭������Ƥ���ʡ�</p><p>&nbsp;&nbsp;&nbsp;&nbsp;��ζ�ʡ���ɬ���£�����ɱ�桢������ɬ����ֹ���ȹ�Ч��<a target=\"_blank\" href=\"http://baike.baidu.com/view/1100440.htm\">ʯ���</a>ʵӪ���ḻ��ά����C������ƻ������Ҫ�߳�һ������</p><p>&nbsp;&nbsp;&nbsp;&nbsp;�й�����ʯ�����ʷ������������������½����������年��������롣�й��ϱ��������࣬�԰��ա����ա����ϵȵ���ֲ����ϴ󣬲�������һЩ�����ʵ�Ʒ�֡����а��ջ�Զ�����й�ʯ��֮�磬����Զʯ��Ϊ���ҵ����־������Ʒ��</p><p>&nbsp;&nbsp;&nbsp;&nbsp;�й���ͳ�Ļ���ʯ��Ϊ���������Ϊ���Ӷร��������</p><p>&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '1', '1', '2017-04-13 21:39:44', '2017-04-14 17:33:01', '2');
INSERT INTO `t_goods` VALUES ('23', '0', '��÷��', '��÷��', '/pic/dydz/user/201704/1492673741959.png', '2', '', '', '0', '1', '2017-04-14 11:42:42', '2017-04-21 13:47:59', '2');
INSERT INTO `t_goods` VALUES ('24', '27', '������', '������', '/pic/dydz/user/201704/1492154140808.png,/pic/dydz/user/201704/1492154143687.png,/pic/dydz/user/201704/1492154146080.png,/pic/dydz/user/201704/1492154148110.png,/pic/dydz/user/201704/1492154150105.png,/pic/dydz/user/201704/1492154153870.png', '1', '������', '<p>���ʣ�ѧ����<em>Citrus limon </em>(L.) Burm. f.����ܿ��Ƹ�����ֲ������ֳ�<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E6%9F%A0%E6%9E%9C\">����</a>�������ʡ�<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%9B%8A%E6%AF%8D%E6%9E%9C\">��ĸ��</a>�ȡ�<sup>[1]</sup><a class=\"sup-anchor\">&nbsp;</a><a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%B0%8F%E4%B9%94%E6%9C%A8\">С��ľ</a>��֦�ٴ̻�����޴̣���Ҷ����ѿ���Ϻ�ɫ��ҶƬ��ֽ�ʣ����λ���Բ�Ρ�����Ҹ�����ٻ�����������Բ�λ����Σ���Ƥ��ͨ���ֲڣ����ʻ�ɫ����֭�������ᣬ����С�����Σ��˼⣻��Ƥƽ������Ҷ���ɫ��ͨ��������ж��ߡ�����4-5�£�����9-11�¡�</p><p>���ʲ��й��������ϣ�<sup>[2]</sup><a class=\"sup-anchor\">&nbsp;</a>ԭ�������ǣ���Ҫ����Ϊ���������������������<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%B8%8C%E8%85%8A\">ϣ��</a>��<sup>[3]</sup><a class=\"sup-anchor\">&nbsp;</a></p><p>��������ζ���ᣬ�����и���ϲʳ���ʳ�<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%9B%8A%E6%AF%8D%E6%9E%9C\">��ĸ��</a>��<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%9B%8A%E6%AF%8D%E5%AD%90\">��ĸ��</a>�������к��зḻ�������ᣬ��˱���Ϊ��������ֿ⡱�����Ĺ�ʵ֭����࣬��Ũ���ķ���������Ϊζ�����ᣬ��ֻ����Ϊ�ϵȵ�ζ�ϣ������������ϲ��ȡ���ױƷ��ҩƷ��<sup>[1]</sup><a class=\"sup-anchor\">&nbsp;</a>���⣬���ʸ���<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%BB%B4%E7%94%9F%E7%B4%A0C\">ά����C</a>����<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%8C%96%E7%97%B0\">��̵</a>ֹ�ȣ�<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%94%9F%E6%B4%A5\">����</a><a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%81%A5%E8%83%83\">��θ</a>������<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E6%94%AF%E6%B0%94%E7%AE%A1%E7%82%8E\">֧������</a>��<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%99%BE%E6%97%A5%E5%92%B3\">���տ�</a>��ʳ������ά����ȱ��������ʵ�֢״������&quot;<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%9D%8F%E8%A1%80%E7%97%85\">��Ѫ��</a>&quot;�Ŀ��ǡ�</p><p><br/></p>', '1', '1', '2017-04-14 15:16:07', '2017-04-14 17:32:32', '2');
INSERT INTO `t_goods` VALUES ('25', '0', '�ϸ���', '�ϸ���', '/pic/dydz/user/201704/1492480321716.png', '2', '�ϸ���', '<p>�ϸ����ϸ���</p>', '0', '1', '2017-04-18 09:52:14', '2017-04-20 15:35:13', '2');
INSERT INTO `t_goods` VALUES ('26', '0', '�߲˲���', '�߲˲���', '', '2', '�߲˲���', '<p>�߲˲���</p>', '0', '1', '2017-04-18 10:29:57', '2017-04-18 11:20:16', '2');
INSERT INTO `t_goods` VALUES ('27', '42', '����1', '����1', '/pic/dydz/user/201704/1492499918552.png,/pic/dydz/user/201704/1492499933437.png,/pic/dydz/user/201704/1492499939235.png,/pic/dydz/user/201704/1492499942343.png,/pic/dydz/user/201704/1492499945131.png,/pic/dydz/user/201704/1492499949070.png', '1', '����1', '<p>����1</p>', '1', '2', '2017-04-18 15:18:41', '2017-04-18 15:24:39', '2');
INSERT INTO `t_goods` VALUES ('28', '42', '����2', '����2', '/pic/dydz/user/201704/1492501927744.png', '1', '����2', '<p>����2</p>', '1', '2', '2017-04-18 15:52:22', '2017-04-18 15:52:22', '2');
INSERT INTO `t_goods` VALUES ('29', '42', '����3', '����3', '/pic/dydz/user/201704/1492502183841.png', '1', '����3', '<p>����3</p>', '1', '2', '2017-04-18 15:52:47', '2017-04-18 15:56:27', '2');
INSERT INTO `t_goods` VALUES ('30', '42', '����4', '����4', '/pic/dydz/user/201704/1492502000231.png', '1', '����4', '<p>����4</p>', '1', '2', '2017-04-18 15:53:24', '2017-04-18 15:53:24', '2');
INSERT INTO `t_goods` VALUES ('31', '42', '����5', '����5', '/pic/dydz/user/201704/1492502038609.png', '1', '����5', '<p>����5</p>', '1', '2', '2017-04-18 15:54:00', '2017-04-18 15:54:00', '2');
INSERT INTO `t_goods` VALUES ('32', '42', '����6', '����6', '/pic/dydz/user/201704/1492502317321.png', '1', '����6', '<p>����6</p>', '1', '2', '2017-04-18 15:58:45', '2017-04-18 15:58:45', '2');
INSERT INTO `t_goods` VALUES ('33', '44', '��Ʒ����', '��Ʒ����', '/pic/dydz/user/201704/1492584904219.png', '1', '��Ʒ����', '<p>��Ʒ����</p>', '1', '2', '2017-04-19 14:55:11', '2017-04-19 14:55:11', '2');
INSERT INTO `t_goods` VALUES ('34', '0', '����', '����', '/pic/dydz/user/201704/1492676520540.png,/pic/dydz/user/201704/1492676566865.png,/pic/dydz/user/201704/1492676569651.png,/pic/dydz/user/201704/1492676572100.png,/pic/dydz/user/201704/1492676578043.png,/pic/dydz/user/201704/1492676581062.png', '2', '����', '<p>����</p>', '0', '2', '2017-04-20 16:23:12', '2017-04-21 14:55:19', '2');
INSERT INTO `t_goods` VALUES ('35', '0', ' Q��������������ʳ��ʳ��������ζ', 'Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492745610768.png,/pic/dydz/user/201704/1492745617000.png', '2', '', '<p><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745777758088497.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745777869035441.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745777980068647.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745778064068740.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745778147040993.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745778230041066.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745778286000818.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492745778343093532.jpg\" class=\"img-ks-lazyload\"/></p>', '0', '2', '2017-04-21 11:34:20', '2017-04-21 11:42:04', '2');
INSERT INTO `t_goods` VALUES ('36', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492746558027.jpg', '1', ' Q��������������ʳ��ʳ��������ζ', '<p><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2fDGvXanyQeBjSspeXXa8WpXa_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2.mzSlVXXXXc6XXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2CgjIlVXXXXbEXpXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2I7ZhlVXXXXaUXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2rRUqlVXXXXXJXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2ExMhlVXXXXbaXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2MmgplVXXXXXNXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i4/725677994/TB2yCwjlVXXXXaFXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:49:24', '2017-04-21 13:54:45', '2');
INSERT INTO `t_goods` VALUES ('37', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492746697362.jpg', '1', '', '<p><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2fDGvXanyQeBjSspeXXa8WpXa_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2.mzSlVXXXXc6XXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2CgjIlVXXXXbEXpXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2I7ZhlVXXXXaUXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2rRUqlVXXXXXJXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2ExMhlVXXXXbaXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2MmgplVXXXXXNXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i4/725677994/TB2yCwjlVXXXXaFXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:51:51', '2017-04-21 13:55:00', '2');
INSERT INTO `t_goods` VALUES ('38', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492747612871.jpg', '1', '', '<p><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717083017819.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717274088067.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717384053672.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717466044548.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717549040699.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717606017049.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717662068458.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746717720069179.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:52:14', '2017-04-21 13:55:19', '2');
INSERT INTO `t_goods` VALUES ('39', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492753946256.jpg', '1', '', '<p><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746740517067747.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746740709067966.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746740819050464.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746740902093931.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746740985027381.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746741067096906.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746741123044919.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746741180054571.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:52:32', '2017-04-21 13:55:42', '2');
INSERT INTO `t_goods` VALUES ('40', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492747652985.jpg', '1', '', '<p><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2fDGvXanyQeBjSspeXXa8WpXa_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2.mzSlVXXXXc6XXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2CgjIlVXXXXbEXpXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2I7ZhlVXXXXaUXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2rRUqlVXXXXXJXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2ExMhlVXXXXbaXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2MmgplVXXXXXNXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i4/725677994/TB2yCwjlVXXXXaFXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:52:58', '2017-04-21 13:58:32', '2');
INSERT INTO `t_goods` VALUES ('41', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492754167202.jpg', '1', '', '<p><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2fDGvXanyQeBjSspeXXa8WpXa_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2.mzSlVXXXXc6XXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2CgjIlVXXXXbEXpXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2I7ZhlVXXXXaUXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i2/725677994/TB2rRUqlVXXXXXJXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i3/725677994/TB2ExMhlVXXXXbaXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i1/725677994/TB2MmgplVXXXXXNXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"https://img.alicdn.com/imgextra/i4/725677994/TB2yCwjlVXXXXaFXXXXXXXXXXXX_!!725677994.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '1', '2017-04-21 11:53:10', '2017-04-21 13:56:13', '2');
INSERT INTO `t_goods` VALUES ('42', '48', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492747787563.jpg', '1', '', '<p><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802154078531.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802346057905.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802456093599.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802540004965.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802623099422.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802708021624.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802765047478.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746802822051547.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:53:26', '2017-04-21 13:48:48', '2');
INSERT INTO `t_goods` VALUES ('43', '50', ' Q��������������ʳ��ʳ��������ζ', ' Q��������������ʳ��ʳ��������ζ', '/pic/dydz/user/201704/1492747806355.jpg', '1', '', '<p><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746816744095968.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746816924027136.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746817026024365.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746817103019051.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746817181010478.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746817235007502.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746817287056458.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746817341002597.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 11:53:39', '2017-04-21 13:54:17', '2');
INSERT INTO `t_goods` VALUES ('44', '49', ' Q��������������ʳ��ʳ��������ζ1', ' Q��������������ʳ��ʳ��������ζ1', '/pic/dydz/user/201704/1492747865059.jpg', '1', '', '<p><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746825734023264.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746825941059451.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746826045021901.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746826124017861.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746826202014132.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746826256046048.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746826309095381.jpg\" class=\"img-ks-lazyload\"/><img alt=\"\" src=\"/ueditor/jsp/upload/image/20170421/1492746826362083321.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '1', '2017-04-21 11:53:52', '2017-04-21 13:57:48', '2');
INSERT INTO `t_goods` VALUES ('45', '46', '���ջ����ز��ܲ���ũ�������·���1', '���ջ����ز��ܲ���ũ�������·���', '/pic/dydz/user/201704/1492754856100.jpg', '1', '', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492754878872068192.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879082057437.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879186065888.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879366099059.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879468052937.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879575087880.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879679011104.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754879789042837.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:08:03', '2017-04-21 14:37:01', '2');
INSERT INTO `t_goods` VALUES ('46', '46', '���ջ����ز��ܲ���ũ�������·���', '���ջ����ز��ܲ���ũ�������·���', '/pic/dydz/user/201704/1492755184601.jpg', '1', '���ջ����ز��ܲ���ũ�������·���', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492754965219018548.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965428012294.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965482042862.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965614029139.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965668098376.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965748070476.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965828063136.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754965908001886.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:09:37', '2017-04-21 14:13:05', '2');
INSERT INTO `t_goods` VALUES ('47', '46', '���ջ����ز��ܲ���ũ�������·���', '���ջ����ز��ܲ���ũ�������·���', '/pic/dydz/user/201704/1492755203318.jpg', '1', '���ջ����ز��ܲ���ũ�������·���', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492754982304011550.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982507092233.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982560095012.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982688056529.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982741094676.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982818021614.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982896078095.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754982973012220.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:09:52', '2017-04-21 14:13:24', '2');
INSERT INTO `t_goods` VALUES ('48', '46', '���ջ����ز��ܲ���ũ�������·���22', '���ջ����ز��ܲ���ũ�������·���22', '/pic/dydz/user/201704/1492755215376.jpg', '1', '', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492754998957014565.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754999365023446.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754999557042802.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492754999845079767.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755000025038954.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755000206080382.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755000386002996.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755000588096071.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:10:02', '2017-04-21 14:19:57', '2');
INSERT INTO `t_goods` VALUES ('49', '46', '���ջ����ز��ܲ���ũ�������·���1', '���ջ����ز��ܲ���ũ�������·���1', '/pic/dydz/user/201704/1492755226604.jpg', '1', '���ջ����ز��ܲ���ũ�������·���', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492755010055067168.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755010408013656.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755010498031419.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755010719020759.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755010810047682.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755010944085764.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755011078007363.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755011210015699.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:10:16', '2017-04-21 14:18:20', '2');
INSERT INTO `t_goods` VALUES ('50', '46', '���ջ����ز��ܲ���ũ�������·���', '���ջ����ز��ܲ���ũ�������·���', '/pic/dydz/user/201704/1492755258447.jpg', '1', '���ջ����ز��ܲ���ũ�������·���', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492755025933034525.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755026329068246.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755026433051055.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755026690053118.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755026831059490.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755026986082811.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755027140084176.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492755027295023014.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:10:30', '2017-04-21 14:14:24', '2');
INSERT INTO `t_goods` VALUES ('51', '53', '������������廨��Ƭ', '������������廨��Ƭ', '/pic/dydz/user/201704/1492757977294.jpg', '1', '', '<p><img src=\"https://img.alicdn.com/imgextra/i2/2471189597/TB2JRploVXXXXbMXpXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2471189597/TB2OAhRoVXXXXaeXXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2471189597/TB2KpdxoVXXXXakXpXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2471189597/TB2OJNJoVXXXXb4XXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2471189597/TB2UjVXoVXXXXXZXFXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2471189597/TB228hToVXXXXavXXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2471189597/TB2AHlnoVXXXXa9XpXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i3/2471189597/TB2818moVXXXXbSXpXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2471189597/TB21GBZoVXXXXXJXXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2471189597/TB2fH0ToVXXXXazXXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i4/2471189597/TB2MPLUppXXXXbuXpXXXXXXXXXX_!!2471189597.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:57:41', '2017-04-21 14:59:43', '2');
INSERT INTO `t_goods` VALUES ('52', '53', '������������廨��Ƭ', '������������廨��Ƭ', '/pic/dydz/user/201704/1492758012666.jpg', '1', '', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492757867273000461.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867520028729.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867549022488.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867641041778.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867752014900.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867863098886.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867919067909.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757867976066095.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757868171047304.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757868392007979.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757868449087153.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:58:00', '2017-04-21 15:01:30', '2');
INSERT INTO `t_goods` VALUES ('53', '53', '������������廨��Ƭ', '������������廨��Ƭ', '/pic/dydz/user/201704/1492758046382.jpg', '1', '', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492757899657017874.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757899874019265.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757899903091552.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757899985035920.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900095055937.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900205091447.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900260093839.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900316022935.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900507050713.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900724010700.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757900780070082.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:58:13', '2017-04-21 15:00:47', '2');
INSERT INTO `t_goods` VALUES ('54', '53', '������������廨��Ƭ', '������������廨��Ƭ', '/pic/dydz/user/201704/1492757934259.jpg', '1', '', '<p><img src=\"/ueditor/jsp/upload/image/20170421/1492757913127005093.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913350080544.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913376017792.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913451049180.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913551012964.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913650023673.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913700036478.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913751008633.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757913925089845.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757914123060365.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492757914174089598.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p>', '1', '2', '2017-04-21 14:59:27', '2017-04-21 14:59:27', '2');
INSERT INTO `t_goods` VALUES ('55', '56', '��ѡ������300g ���� �����߲�', '��ѡ������300g ���� �����߲�', '/pic/dydz/user/201704/1492758349422.jpg', '1', '', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, ����, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/ueditor/jsp/upload/image/20170421/1492758241017038711.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758241223052582.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758241337024633.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758241485012910.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758241596097832.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"/ueditor/jsp/upload/image/20170421/1492758241623007341.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p><p><br/></p>', '1', '2', '2017-04-21 15:04:15', '2017-04-21 15:05:57', '2');
INSERT INTO `t_goods` VALUES ('56', '56', '��ѡ������300g ���� �����߲�', '��ѡ������300g ���� �����߲�', '/pic/dydz/user/201704/1492758377383.jpg', '1', '', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, ����, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/ueditor/jsp/upload/image/20170421/1492758266122069990.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758266305062365.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758266385086073.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758266516078557.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758266621038715.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"/ueditor/jsp/upload/image/20170421/1492758266648035519.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p><p><br/></p>', '1', '2', '2017-04-21 15:04:29', '2017-04-21 15:06:20', '2');
INSERT INTO `t_goods` VALUES ('57', '56', '��ѡ������300g ���� �����߲�', '��ѡ������300g ���� �����߲�', '/pic/dydz/user/201704/1492758398551.jpg', '1', '', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, ����, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://img.alicdn.com/imgextra/i4/2471189597/TB2mG5WmVXXXXXvXpXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2471189597/TB2G5q5mVXXXXctXXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2471189597/TB2q45WmVXXXXXFXpXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i1/2471189597/TB2s454mVXXXXcxXXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/><img src=\"https://img.alicdn.com/imgextra/i2/2471189597/TB2S.y9mVXXXXb7XXXXXXXXXXXX_!!2471189597.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2471189597/TB2MPLUppXXXXbuXpXXXXXXXXXX_!!2471189597.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p><p><br/></p>', '1', '2', '2017-04-21 15:04:43', '2017-04-21 15:06:40', '2');
INSERT INTO `t_goods` VALUES ('58', '56', '��ѡ������300g ���� �����߲�', '��ѡ������300g ���� �����߲�', '/pic/dydz/user/201704/1492758420324.jpg', '1', '', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; line-height: 1.4; color: rgb(64, 64, 64); font-family: tahoma, arial, ����, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/ueditor/jsp/upload/image/20170421/1492758293643039851.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758293831069288.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758293939098412.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758294075006056.jpg\" class=\"img-ks-lazyload\"/><img src=\"/ueditor/jsp/upload/image/20170421/1492758294183036985.jpg\" class=\"img-ks-lazyload\"/></p><p><img src=\"/ueditor/jsp/upload/image/20170421/1492758294211012829.jpg\" alt=\" ���������߲�ģ��-��.jpg\" class=\"img-ks-lazyload\"/></p><p><br/></p>', '1', '1', '2017-04-21 15:04:56', '2017-04-21 15:08:50', '2');

-- ----------------------------
-- Table structure for t_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_category`;
CREATE TABLE `t_goods_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ʒ����id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '������id Ϊ���ʾ��������',
  `category_name` varchar(255) DEFAULT NULL COMMENT '��Ʒ��������',
  `image` varchar(255) DEFAULT NULL COMMENT '��Ʒ������ͼ',
  `state` tinyint(4) DEFAULT '2' COMMENT '״̬ 1.���� 2.δ���� 3 ��ɾ��',
  `simple_describe` varchar(255) DEFAULT NULL COMMENT '��Ҫ����',
  `recommend` tinyint(4) DEFAULT '2' COMMENT '�Ƽ���־ 1�� 2��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '������id',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='��Ʒ�����';

-- ----------------------------
-- Records of t_goods_category
-- ----------------------------
INSERT INTO `t_goods_category` VALUES ('1', '0', 'ˮ��', '/pic/dydz/user/201704/1491642215056.png', '3', 'ˮ��', '0', '2017-03-23 16:59:05', '2017-04-12 22:02:33', '2');
INSERT INTO `t_goods_category` VALUES ('2', '0', '�ȴ�ˮ��', '', '3', '�ȴ�ˮ��', '0', '2017-03-23 17:00:01', '2017-04-12 22:02:39', '2');
INSERT INTO `t_goods_category` VALUES ('3', '0', '����', '/pic/dydz/user/201704/1492051262857.png', '1', '����', '2', '2017-03-24 11:43:06', '2017-04-13 10:43:53', '2');
INSERT INTO `t_goods_category` VALUES ('4', '0', '�ɻ�', '/pic/dydz/user/201704/1492051380230.png', '1', '�ɻ�', '1', '2017-03-27 15:54:40', '2017-04-13 12:02:36', '2');
INSERT INTO `t_goods_category` VALUES ('5', '0', '�߲�', '/pic/dydz/user/201704/1492051510860.png', '1', '�߲�', '1', '2017-03-27 15:54:58', '2017-04-13 12:05:11', '2');
INSERT INTO `t_goods_category` VALUES ('6', '0', '�⵰', '/pic/dydz/user/201704/1492051154958.png', '1', '����', '1', '2017-03-27 17:43:50', '2017-04-13 12:05:01', '2');
INSERT INTO `t_goods_category` VALUES ('7', '0', '����', '/pic/dydz/user/201704/1492051215398.png', '1', '����', '1', '2017-03-27 17:44:20', '2017-04-13 12:04:02', '2');
INSERT INTO `t_goods_category` VALUES ('8', '0', '�ǹ�', '/pic/dydz/user/201704/1492006947040.jpg', '1', '�ǹ�', '1', '2017-03-27 17:45:02', '2017-04-12 22:22:29', '2');
INSERT INTO `t_goods_category` VALUES ('9', '0', '���', '', '3', '���', '0', '2017-03-27 17:45:18', '2017-04-12 22:08:36', '2');
INSERT INTO `t_goods_category` VALUES ('10', '0', '����', '', '3', '����', '0', '2017-03-27 17:45:36', '2017-04-12 22:03:00', '2');
INSERT INTO `t_goods_category` VALUES ('11', '0', 'ˮ��', '/pic/dydz/user/201704/1492051444296.png', '1', 'ˮ��', '1', '2017-04-08 17:04:34', '2017-04-13 12:04:42', '2');
INSERT INTO `t_goods_category` VALUES ('12', '0', '����', '/pic/dydz/user/201704/1492051200017.png', '1', '', '1', '2017-04-08 17:06:35', '2017-04-13 12:03:09', '2');
INSERT INTO `t_goods_category` VALUES ('13', '0', 'ϴ��', '/pic/dydz/user/201704/1492051175412.png', '1', '', '1', '2017-04-08 17:07:16', '2017-04-13 12:02:57', '2');
INSERT INTO `t_goods_category` VALUES ('14', '0', '����', '/pic/dydz/user/201704/1492051347878.png', '1', '', '1', '2017-04-08 17:07:32', '2017-04-13 12:02:47', '2');
INSERT INTO `t_goods_category` VALUES ('15', '0', '23123', '/pic/dydz/user/201704/1491808946526.png', '3', '', '0', '2017-04-10 15:22:54', '2017-04-12 15:31:12', '2');
INSERT INTO `t_goods_category` VALUES ('16', '0', '��Ʒ�������', '/pic/dydz/user/201704/1491817916896.jpg,/pic/dydz/user/201704/1491817919667.jpg,/pic/dydz/user/201704/1491817924384.jpg', '3', '��Ʒ��Ҫ����', '0', '2017-04-10 17:52:20', '2017-04-12 15:31:09', '2');
INSERT INTO `t_goods_category` VALUES ('17', '0', 'Һ������', '', '3', 'Һ������', '0', '2017-04-12 22:04:11', '2017-04-21 14:46:37', '2');
INSERT INTO `t_goods_category` VALUES ('18', '13', 'ϴ�·�', '', '1', 'ϴ�·�', '1', '2017-04-12 22:04:29', '2017-04-12 22:04:29', '2');
INSERT INTO `t_goods_category` VALUES ('19', '12', '����', '', '1', '����', '1', '2017-04-12 22:04:51', '2017-04-12 22:04:51', '2');
INSERT INTO `t_goods_category` VALUES ('20', '7', 'ֲ����', '', '1', 'ֲ����', '1', '2017-04-12 22:05:08', '2017-04-12 22:05:08', '2');
INSERT INTO `t_goods_category` VALUES ('21', '4', '�ɹ�', '', '1', '�ɹ�', '1', '2017-04-12 22:05:46', '2017-04-12 22:05:46', '2');
INSERT INTO `t_goods_category` VALUES ('22', '11', 'ˮ����', '', '1', 'ˮ����', '1', '2017-04-12 22:06:19', '2017-04-12 22:06:19', '2');
INSERT INTO `t_goods_category` VALUES ('23', '6', '����', '', '1', '����', '1', '2017-04-12 22:07:44', '2017-04-12 22:07:44', '2');
INSERT INTO `t_goods_category` VALUES ('24', '5', 'С�ײ�', '', '1', 'С�ײ�', '1', '2017-04-12 22:08:16', '2017-04-12 22:08:16', '2');
INSERT INTO `t_goods_category` VALUES ('25', '8', 'ˮ����', '', '1', 'ˮ����', '1', '2017-04-12 22:09:13', '2017-04-12 22:09:13', '2');
INSERT INTO `t_goods_category` VALUES ('26', '3', '��Ŀ��', '', '1', '��Ŀ��', '1', '2017-04-12 22:10:04', '2017-04-12 22:10:04', '2');
INSERT INTO `t_goods_category` VALUES ('27', '0', 'ˮ��', '/pic/dydz/user/201704/1492051589011.png', '1', 'ˮ��', '1', '2017-04-13 10:46:37', '2017-04-13 12:04:29', '2');
INSERT INTO `t_goods_category` VALUES ('28', '0', 'ƻ��', '/pic/dydz/user/201704/1492051705695.jpg', '3', 'ƻ��', '0', '2017-04-13 10:48:32', '2017-04-14 17:34:41', '2');
INSERT INTO `t_goods_category` VALUES ('29', '27', '����ˮ��', '', '1', '����ˮ��', '2', '2017-04-14 17:39:14', '2017-04-14 17:40:05', '2');
INSERT INTO `t_goods_category` VALUES ('30', '27', '�ȴ�ˮ��', '', '1', '', '2', '2017-04-14 17:39:42', '2017-04-14 17:41:57', '2');
INSERT INTO `t_goods_category` VALUES ('31', '0', '��Ҷ�߲�', '', '3', '��Ҷ�߲�', '0', '2017-04-18 09:50:08', '2017-04-18 09:52:27', '2');
INSERT INTO `t_goods_category` VALUES ('32', '0', '�����߲˶���', '', '3', '�����߲˶���', '0', '2017-04-18 10:29:07', '2017-04-18 10:30:20', '2');
INSERT INTO `t_goods_category` VALUES ('33', '0', '���Զ�������', '', '3', '���Զ�������', '0', '2017-04-18 10:52:45', '2017-04-18 10:53:19', '2');
INSERT INTO `t_goods_category` VALUES ('34', '0', '����', '', '3', '����', '0', '2017-04-18 15:10:21', '2017-04-21 14:46:46', '2');
INSERT INTO `t_goods_category` VALUES ('35', '0', '���º�', '', '3', '���º�', '0', '2017-04-18 15:12:00', '2017-04-21 14:47:01', '2');
INSERT INTO `t_goods_category` VALUES ('36', '0', '���չ�', '', '3', '���չ�', '0', '2017-04-18 15:12:18', '2017-04-21 14:47:07', '2');
INSERT INTO `t_goods_category` VALUES ('37', '0', '�տ�¯', '', '3', '', '0', '2017-04-18 15:12:38', '2017-04-21 14:47:13', '2');
INSERT INTO `t_goods_category` VALUES ('38', '0', 'ɰ��', '', '3', '', '0', '2017-04-18 15:12:49', '2017-04-21 14:47:19', '2');
INSERT INTO `t_goods_category` VALUES ('39', '14', '����', '', '1', '', '2', '2017-04-18 15:13:35', '2017-04-18 15:13:35', '2');
INSERT INTO `t_goods_category` VALUES ('40', '4', 'ѹ����', '', '1', 'ѹ����', '2', '2017-04-18 15:14:06', '2017-04-18 15:14:06', '2');
INSERT INTO `t_goods_category` VALUES ('41', '14', '��', '', '1', '', '2', '2017-04-18 15:14:56', '2017-04-18 15:14:56', '2');
INSERT INTO `t_goods_category` VALUES ('42', '14', '������', '', '1', '', '2', '2017-04-18 15:15:16', '2017-04-18 15:15:16', '2');
INSERT INTO `t_goods_category` VALUES ('43', '0', 'һ���������', '', '3', 'һ���������', '0', '2017-04-19 14:54:12', '2017-04-20 16:05:51', '2');
INSERT INTO `t_goods_category` VALUES ('44', '0', '�����������', '', '3', '�����������', '0', '2017-04-19 14:54:25', '2017-04-19 14:55:30', '2');
INSERT INTO `t_goods_category` VALUES ('45', '0', '����', '', '1', '', '2', '2017-04-20 16:06:20', '2017-04-21 15:08:40', '2');
INSERT INTO `t_goods_category` VALUES ('46', '0', '����', '', '1', '', '1', '2017-04-20 16:06:51', '2017-04-21 15:08:19', '2');
INSERT INTO `t_goods_category` VALUES ('47', '0', '����', '', '1', '', '2', '2017-04-20 16:07:09', '2017-04-20 16:07:09', '2');
INSERT INTO `t_goods_category` VALUES ('48', '45', '�׶���', '', '1', '', '2', '2017-04-21 11:30:53', '2017-04-21 11:31:26', '2');
INSERT INTO `t_goods_category` VALUES ('49', '45', '�϶���', '', '1', '', '2', '2017-04-21 11:31:40', '2017-04-21 11:31:40', '2');
INSERT INTO `t_goods_category` VALUES ('50', '45', '±����', '', '1', '', '2', '2017-04-21 11:31:51', '2017-04-21 11:31:51', '2');
INSERT INTO `t_goods_category` VALUES ('51', '0', '�۶���', '', '3', '', '0', '2017-04-21 14:38:59', '2017-04-21 14:41:43', '2');
INSERT INTO `t_goods_category` VALUES ('52', '0', 'ħ�󶹸�', '', '3', '', '0', '2017-04-21 14:39:27', '2017-04-21 14:46:13', '2');
INSERT INTO `t_goods_category` VALUES ('53', '47', '����', '', '1', '', '2', '2017-04-21 14:56:02', '2017-04-21 14:56:02', '2');
INSERT INTO `t_goods_category` VALUES ('54', '47', 'ţ��', '', '1', '', '2', '2017-04-21 14:56:12', '2017-04-21 14:56:12', '2');
INSERT INTO `t_goods_category` VALUES ('55', '47', '����', '', '1', '', '2', '2017-04-21 14:56:22', '2017-04-21 14:56:22', '2');
INSERT INTO `t_goods_category` VALUES ('56', '5', '����', '', '1', '', '2', '2017-04-21 15:03:53', '2017-04-21 15:03:53', '2');

-- ----------------------------
-- Table structure for t_goods_price
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_price`;
CREATE TABLE `t_goods_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���۸�id',
  `goods_id` int(11) DEFAULT NULL COMMENT '��Ʒid',
  `unit_name` varchar(255) DEFAULT NULL COMMENT '������λ',
  `retail_price` int(11) DEFAULT NULL COMMENT '���ۼۣ��Է�Ϊ��λ��',
  `buy_price` int(11) DEFAULT NULL COMMENT '�ɹ��ۣ��Է�Ϊ��λ��',
  `wholesale_price` int(11) DEFAULT NULL COMMENT '�����ۣ��Է�Ϊ��λ��',
  `state` tinyint(4) DEFAULT NULL COMMENT '״̬��1.���� 2.δ���� ����̨δ����ҳ�治��ʾ��ǰ̨��ʾ���¼ܣ�',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '������id',
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='��Ʒ���۸�';

-- ----------------------------
-- Records of t_goods_price
-- ----------------------------
INSERT INTO `t_goods_price` VALUES ('1', '1', 'ÿ��', '500', '450', '490', '2', '2017-03-23 17:20:23', '2017-04-12 15:32:27', '2');
INSERT INTO `t_goods_price` VALUES ('2', '2', 'ÿ��', '500000', '500000', '500000', '2', '2017-04-01 18:21:57', '2017-04-23 15:53:46', '11');
INSERT INTO `t_goods_price` VALUES ('3', '3', 'ÿ��', '100000', '100000', '100000', '1', '2017-04-01 21:34:02', '2017-04-01 21:34:02', '2');
INSERT INTO `t_goods_price` VALUES ('4', '2', 'ÿʮ��', '2000', '5000', '2000', '2', '2017-04-06 09:02:29', '2017-04-23 15:53:46', '11');
INSERT INTO `t_goods_price` VALUES ('5', '4', 'ÿʮ��', '2300', '3101', '2323', '1', '2017-04-10 15:19:19', '2017-04-10 15:19:19', '2');
INSERT INTO `t_goods_price` VALUES ('6', '5', 'ÿ��', '2343', '2343', '2343', '2', '2017-04-12 11:23:41', '2017-04-12 22:00:18', '2');
INSERT INTO `t_goods_price` VALUES ('7', '6', 'ÿ��', '4334', '5434', '3534', '1', '2017-04-12 11:25:02', '2017-04-12 11:25:02', '2');
INSERT INTO `t_goods_price` VALUES ('8', '7', '��', '100000', '130000', '120000', '1', '2017-04-12 12:02:57', '2017-04-12 12:02:57', '2');
INSERT INTO `t_goods_price` VALUES ('9', '7', '��', '1100', '1300', '1200', '1', '2017-04-12 12:02:57', '2017-04-12 12:02:57', '2');
INSERT INTO `t_goods_price` VALUES ('10', '8', 'ÿ��', '80000', '50000', '60000', '1', '2017-04-12 17:07:12', '2017-04-12 17:07:12', '2');
INSERT INTO `t_goods_price` VALUES ('11', '1', '��', '900', '500', '700', '2', '2017-04-12 17:16:25', '2017-04-13 21:25:40', '2');
INSERT INTO `t_goods_price` VALUES ('12', '2', '��', '17000', '14000', '16000', '2', '2017-04-12 17:29:40', '2017-04-23 15:53:46', '11');
INSERT INTO `t_goods_price` VALUES ('13', '9', '��', '20000', '9000', '17000', '1', '2017-04-12 17:44:11', '2017-04-12 17:44:11', '2');
INSERT INTO `t_goods_price` VALUES ('14', '10', '1', '1300', '1000', '1200', '2', '2017-04-12 19:42:05', '2017-04-12 20:27:16', '2');
INSERT INTO `t_goods_price` VALUES ('15', '11', '��', '2600', '2200', '2500', '1', '2017-04-12 19:49:42', '2017-04-12 19:49:42', '2');
INSERT INTO `t_goods_price` VALUES ('16', '12', '��', '4400', '6600', '3300', '1', '2017-04-12 20:05:20', '2017-04-12 20:05:20', '2');
INSERT INTO `t_goods_price` VALUES ('17', '13', '��', '4400', '3300', '4000', '1', '2017-04-12 20:09:10', '2017-04-12 20:09:10', '2');
INSERT INTO `t_goods_price` VALUES ('18', '14', '��', '8000', '5000', '6000', '1', '2017-04-12 20:14:19', '2017-04-12 20:14:19', '2');
INSERT INTO `t_goods_price` VALUES ('19', '10', '��', '4000', '5500', '3900', '1', '2017-04-12 20:27:16', '2017-04-12 20:27:16', '2');
INSERT INTO `t_goods_price` VALUES ('20', '5', 'ÿ��', '3400', '3200', '5400', '1', '2017-04-12 22:00:18', '2017-04-12 22:00:18', '2');
INSERT INTO `t_goods_price` VALUES ('21', '15', 'ÿ��', '4300', '2300', '3400', '1', '2017-04-12 22:16:23', '2017-04-12 22:16:23', '2');
INSERT INTO `t_goods_price` VALUES ('22', '16', 'ÿ̨', '234300', '234300', '234300', '2', '2017-04-12 22:18:16', '2017-04-18 10:17:52', '2');
INSERT INTO `t_goods_price` VALUES ('23', '17', 'ÿ��', '3400', '3400', '3400', '1', '2017-04-12 22:24:00', '2017-04-12 22:24:00', '2');
INSERT INTO `t_goods_price` VALUES ('24', '17', 'ÿ��', '220', '220', '220', '1', '2017-04-12 22:24:48', '2017-04-12 22:24:48', '2');
INSERT INTO `t_goods_price` VALUES ('25', '18', 'ÿ��', '5600', '5600', '5600', '1', '2017-04-12 22:26:36', '2017-04-12 22:26:36', '2');
INSERT INTO `t_goods_price` VALUES ('26', '19', '��', '798', '365', '688', '1', '2017-04-13 16:35:29', '2017-04-13 16:35:29', '2');
INSERT INTO `t_goods_price` VALUES ('27', '20', '��', '999', '698', '888', '1', '2017-04-13 16:45:36', '2017-04-13 16:45:36', '2');
INSERT INTO `t_goods_price` VALUES ('28', '21', '��', '7800', '8800', '6800', '1', '2017-04-13 21:30:32', '2017-04-13 21:30:32', '2');
INSERT INTO `t_goods_price` VALUES ('29', '1', '��', '8800', '9900', '7700', '1', '2017-04-13 21:30:52', '2017-04-13 21:30:52', '2');
INSERT INTO `t_goods_price` VALUES ('30', '22', '��', '6800', '8800', '5500', '2', '2017-04-13 21:39:44', '2017-04-14 17:32:14', '2');
INSERT INTO `t_goods_price` VALUES ('31', '23', '��', '5656', '4534', '5011', '2', '2017-04-14 11:57:07', '2017-04-20 15:43:36', '2');
INSERT INTO `t_goods_price` VALUES ('32', '24', '��', '800', '400', '600', '1', '2017-04-14 15:16:07', '2017-04-14 15:16:07', '2');
INSERT INTO `t_goods_price` VALUES ('33', '24', '����5', '5500', '5500', '5500', '1', '2017-04-14 15:39:17', '2017-04-14 15:39:17', '2');
INSERT INTO `t_goods_price` VALUES ('34', '24', '����3', '4400', '4400', '4400', '1', '2017-04-14 15:39:17', '2017-04-14 15:39:17', '2');
INSERT INTO `t_goods_price` VALUES ('35', '24', '����2', '2200', '2200', '2200', '1', '2017-04-14 15:39:17', '2017-04-14 15:39:17', '2');
INSERT INTO `t_goods_price` VALUES ('36', '24', '����1', '1100', '1100', '100', '1', '2017-04-14 15:39:17', '2017-04-14 15:39:17', '2');
INSERT INTO `t_goods_price` VALUES ('37', '22', '��', '33300', '22200', '33300', '1', '2017-04-14 17:33:01', '2017-04-14 17:33:01', '2');
INSERT INTO `t_goods_price` VALUES ('38', '16', '̨', '300000', '100000', '200000', '1', '2017-04-18 10:17:52', '2017-04-18 10:17:52', '2');
INSERT INTO `t_goods_price` VALUES ('39', '26', 'ÿ��', '1200', '1200', '3400', '1', '2017-04-18 10:29:57', '2017-04-18 10:29:57', '2');
INSERT INTO `t_goods_price` VALUES ('40', '27', '��', '99900', '66600', '88800', '2', '2017-04-18 15:20:58', '2017-04-18 15:24:39', '2');
INSERT INTO `t_goods_price` VALUES ('41', '27', '��', '33300', '11100', '22200', '2', '2017-04-18 15:20:58', '2017-04-18 15:24:39', '2');
INSERT INTO `t_goods_price` VALUES ('42', '28', '��', '300', '100', '200', '1', '2017-04-18 15:52:22', '2017-04-18 15:52:22', '2');
INSERT INTO `t_goods_price` VALUES ('43', '29', '��', '400', '300', '500', '1', '2017-04-18 15:52:47', '2017-04-18 15:52:47', '2');
INSERT INTO `t_goods_price` VALUES ('44', '30', '��', '200', '100', '300', '1', '2017-04-18 15:53:24', '2017-04-18 15:53:24', '2');
INSERT INTO `t_goods_price` VALUES ('45', '31', '��', '500', '400', '600', '1', '2017-04-18 15:54:00', '2017-04-18 15:54:00', '2');
INSERT INTO `t_goods_price` VALUES ('46', '32', '��', '4800', '4400', '5500', '1', '2017-04-18 15:58:45', '2017-04-18 15:58:45', '2');
INSERT INTO `t_goods_price` VALUES ('47', '33', '��', '7700', '5500', '8800', '1', '2017-04-19 14:55:11', '2017-04-19 14:55:11', '2');
INSERT INTO `t_goods_price` VALUES ('48', '34', '��', '1300', '1000', '1200', '1', '2017-04-21 10:10:06', '2017-04-21 10:10:06', '2');
INSERT INTO `t_goods_price` VALUES ('49', '23', '��', '3500', '2500', '3000', '1', '2017-04-21 10:10:43', '2017-04-21 10:10:43', '2');
INSERT INTO `t_goods_price` VALUES ('50', '35', '��', '700', '500', '600', '1', '2017-04-21 11:34:20', '2017-04-21 11:34:20', '2');
INSERT INTO `t_goods_price` VALUES ('51', '36', '��', '1500', '1200', '1300', '2', '2017-04-21 11:49:24', '2017-04-21 13:54:45', '2');
INSERT INTO `t_goods_price` VALUES ('52', '38', '��', '100', '100', '100', '2', '2017-04-21 11:56:08', '2017-04-21 12:07:04', '2');
INSERT INTO `t_goods_price` VALUES ('53', '41', '��', '100', '100', '100', '1', '2017-04-21 11:57:04', '2017-04-21 11:57:04', '2');
INSERT INTO `t_goods_price` VALUES ('54', '39', '��', '100', '100', '200', '2', '2017-04-21 12:06:31', '2017-04-21 13:48:26', '2');
INSERT INTO `t_goods_price` VALUES ('55', '38', '��', '300', '100', '200', '2', '2017-04-21 12:07:04', '2017-04-21 13:55:19', '2');
INSERT INTO `t_goods_price` VALUES ('56', '40', '��', '300', '100', '200', '2', '2017-04-21 12:07:34', '2017-04-21 13:58:32', '2');
INSERT INTO `t_goods_price` VALUES ('57', '42', '��', '3300', '1100', '2200', '1', '2017-04-21 12:09:48', '2017-04-21 12:09:48', '2');
INSERT INTO `t_goods_price` VALUES ('58', '43', '��', '3300', '1100', '2200', '2', '2017-04-21 12:10:08', '2017-04-21 13:54:17', '2');
INSERT INTO `t_goods_price` VALUES ('59', '44', '��', '3300', '1100', '2200', '2', '2017-04-21 12:11:06', '2017-04-21 13:48:37', '2');
INSERT INTO `t_goods_price` VALUES ('60', '44', '��', '3300', '1100', '2200', '2', '2017-04-21 13:53:55', '2017-04-21 13:56:37', '2');
INSERT INTO `t_goods_price` VALUES ('61', '43', '��', '3300', '1100', '2200', '1', '2017-04-21 13:54:17', '2017-04-21 13:54:17', '2');
INSERT INTO `t_goods_price` VALUES ('62', '36', '��', '3300', '1100', '2200', '1', '2017-04-21 13:54:45', '2017-04-21 13:54:45', '2');
INSERT INTO `t_goods_price` VALUES ('63', '37', '��', '3300', '1100', '2200', '1', '2017-04-21 13:55:00', '2017-04-21 13:55:00', '2');
INSERT INTO `t_goods_price` VALUES ('64', '38', '��', '3300', '1100', '2200', '1', '2017-04-21 13:55:19', '2017-04-21 13:55:19', '2');
INSERT INTO `t_goods_price` VALUES ('65', '39', '��', '3300', '1100', '2200', '1', '2017-04-21 13:55:42', '2017-04-21 13:55:42', '2');
INSERT INTO `t_goods_price` VALUES ('66', '44', '��', '3300', '1100', '2200', '2', '2017-04-21 13:56:37', '2017-04-21 13:56:59', '2');
INSERT INTO `t_goods_price` VALUES ('67', '44', '��', '3300', '1100', '2200', '2', '2017-04-21 13:56:59', '2017-04-21 13:57:24', '2');
INSERT INTO `t_goods_price` VALUES ('68', '44', '��', '3300', '1100', '2200', '2', '2017-04-21 13:57:24', '2017-04-21 13:57:48', '2');
INSERT INTO `t_goods_price` VALUES ('69', '44', '��', '23400', '12300', '1100', '1', '2017-04-21 13:57:48', '2017-04-21 13:57:48', '2');
INSERT INTO `t_goods_price` VALUES ('70', '40', '��', '3300', '1100', '2200', '1', '2017-04-21 13:58:32', '2017-04-21 13:58:32', '2');
INSERT INTO `t_goods_price` VALUES ('71', '45', '��', '1600', '1000', '1500', '2', '2017-04-21 14:08:03', '2017-04-21 14:15:02', '2');
INSERT INTO `t_goods_price` VALUES ('72', '46', '��', '1500', '1200', '1300', '1', '2017-04-21 14:11:30', '2017-04-21 14:11:30', '2');
INSERT INTO `t_goods_price` VALUES ('73', '47', '��', '1400', '1000', '1200', '1', '2017-04-21 14:11:57', '2017-04-21 14:11:57', '2');
INSERT INTO `t_goods_price` VALUES ('74', '48', '��', '1500', '1200', '1200', '2', '2017-04-21 14:12:22', '2017-04-21 14:13:36', '2');
INSERT INTO `t_goods_price` VALUES ('75', '49', '��', '1900', '1500', '1800', '2', '2017-04-21 14:12:49', '2017-04-21 14:15:35', '2');
INSERT INTO `t_goods_price` VALUES ('76', '50', '��', '1500', '1200', '1300', '1', '2017-04-21 14:14:24', '2017-04-21 14:14:24', '2');
INSERT INTO `t_goods_price` VALUES ('77', '45', '��', '2400', '1900', '2000', '2', '2017-04-21 14:15:02', '2017-04-21 14:23:30', '2');
INSERT INTO `t_goods_price` VALUES ('78', '49', '��', '1300', '900', '1200', '2', '2017-04-21 14:15:35', '2017-04-21 14:18:20', '2');
INSERT INTO `t_goods_price` VALUES ('79', '49', '��', '3300', '1100', '2200', '1', '2017-04-21 14:18:20', '2017-04-21 14:18:20', '2');
INSERT INTO `t_goods_price` VALUES ('80', '48', '��', '33300', '11100', '22200', '2', '2017-04-21 14:18:54', '2017-04-21 14:19:57', '2');
INSERT INTO `t_goods_price` VALUES ('81', '48', '��', '3300', '2200', '2200', '1', '2017-04-21 14:19:57', '2017-04-21 14:19:57', '2');
INSERT INTO `t_goods_price` VALUES ('82', '45', '��', '10000', '9900', '9900', '1', '2017-04-21 14:37:01', '2017-04-21 14:37:01', '2');
INSERT INTO `t_goods_price` VALUES ('83', '51', '��', '3600', '3000', '3300', '1', '2017-04-21 14:57:41', '2017-04-21 14:57:41', '2');
INSERT INTO `t_goods_price` VALUES ('84', '54', '��', '3400', '3000', '3200', '1', '2017-04-21 14:59:27', '2017-04-21 14:59:27', '2');
INSERT INTO `t_goods_price` VALUES ('85', '53', '��', '3300', '3000', '3200', '1', '2017-04-21 15:00:47', '2017-04-21 15:00:47', '2');
INSERT INTO `t_goods_price` VALUES ('86', '52', '��', '3800', '3300', '3600', '1', '2017-04-21 15:01:30', '2017-04-21 15:01:30', '2');
INSERT INTO `t_goods_price` VALUES ('87', '55', '��', '1200', '900', '1100', '1', '2017-04-21 15:05:57', '2017-04-21 15:05:57', '2');
INSERT INTO `t_goods_price` VALUES ('88', '56', '��', '3300', '1100', '2200', '1', '2017-04-21 15:06:20', '2017-04-21 15:06:20', '2');
INSERT INTO `t_goods_price` VALUES ('89', '57', '��', '3300', '1100', '2200', '1', '2017-04-21 15:06:40', '2017-04-21 15:06:40', '2');
INSERT INTO `t_goods_price` VALUES ('90', '58', '��', '3300', '1100', '2200', '2', '2017-04-21 15:07:03', '2017-04-21 15:07:39', '2');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ϣid������������1',
  `message_title` varchar(255) DEFAULT NULL COMMENT '��Ϣ����',
  `message_short_context` varchar(255) DEFAULT NULL COMMENT '������',
  `message_context` text COMMENT '��Ϣ����',
  `url` varchar(255) DEFAULT NULL COMMENT '���ӵ�ַ',
  `push_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `push` tinyint(4) DEFAULT NULL COMMENT '���ͱ�־��1 ���� 2 δ����',
  `push_now` tinyint(4) DEFAULT NULL COMMENT '�������ͱ�־��1 �������� 2 ��',
  `is_all` tinyint(4) DEFAULT NULL COMMENT '�Ƿ���ȫ���û���1 �� 2 ��',
  `user_ids` text COMMENT '�û�id�б�',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ��״̬ 1 ��ɾ�� 2 δɾ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '������id',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module` (
  `module_id` int(11) NOT NULL COMMENT 'ģ��id',
  `parent_id` int(11) DEFAULT NULL COMMENT '��id����ʾģ��id',
  `name` varchar(255) DEFAULT NULL COMMENT 'ģ������',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL��ַ',
  `description` varchar(255) DEFAULT NULL COMMENT '����',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1' COMMENT '״̬��1.���� 2.�ر�',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES ('1', '0', '��Ʒ����', null, null, '2017-04-04 10:56:59', '2017-04-04 10:56:59', '1');
INSERT INTO `t_module` VALUES ('2', '0', '�ͻ�����', null, null, '2017-04-04 10:56:21', '2017-04-04 10:56:21', '1');
INSERT INTO `t_module` VALUES ('3', '0', '���¹���', null, null, '2017-04-04 10:57:08', '2017-04-04 10:57:08', '1');
INSERT INTO `t_module` VALUES ('4', '0', '������', null, null, '2017-04-15 17:40:00', '2017-04-15 17:40:03', '1');
INSERT INTO `t_module` VALUES ('5', '0', '��Ʒ����', null, null, '2017-04-15 17:40:26', '2017-04-15 17:40:29', '1');
INSERT INTO `t_module` VALUES ('6', '0', '�˺Ź���', null, null, '2017-04-04 10:57:17', '2017-04-04 10:57:17', '1');
INSERT INTO `t_module` VALUES ('7', '1', '��Ʒ�б�', '/page/manage_goods_list.html?lid=0', null, '2017-04-15 17:50:58', '2017-04-15 17:50:58', '1');
INSERT INTO `t_module` VALUES ('8', '1', '��Ʒ����', '/page/manage_goods_order.html?lid=1', null, '2017-04-15 17:51:27', '2017-04-15 17:51:27', '1');
INSERT INTO `t_module` VALUES ('9', '1', '��Ʒ����', '/page/manage_product_category_list.html?lid=2', null, '2017-04-15 17:51:50', '2017-04-15 17:51:50', '1');
INSERT INTO `t_module` VALUES ('10', '2', '��Ա����', '/page/manage_vip_list.html?lid=3', null, '2017-04-04 12:12:28', '2017-04-04 12:12:28', '1');
INSERT INTO `t_module` VALUES ('11', '2', '��Ϣ����', '/page/manage_message_list.html?lid=4', null, '2017-04-15 17:48:04', '2017-04-15 17:48:04', '1');
INSERT INTO `t_module` VALUES ('12', '3', '�����б�', '/page/manage_article_list.html?lid=5', null, '2017-04-15 17:52:28', '2017-04-15 17:52:28', '1');
INSERT INTO `t_module` VALUES ('13', '4', '���ù��', '/page/manage_adPosition_list.html?lid=6', null, '2017-04-15 17:52:54', '2017-04-15 17:52:54', '1');
INSERT INTO `t_module` VALUES ('14', '5', '��Ʒͳ��', '/page/manage_goods_report.html?lid=7', null, '2017-04-15 17:53:49', '2017-04-15 17:53:49', '1');
INSERT INTO `t_module` VALUES ('15', '5', '����ͳ��', '/page/manage_order_report.html?lid=8', null, '2017-04-15 17:54:14', '2017-04-15 17:54:14', '1');
INSERT INTO `t_module` VALUES ('16', '6', '����Ա����', '/page/manage_setting.html?lid=9', null, '2017-04-04 12:10:45', '2017-04-04 12:10:45', '1');
INSERT INTO `t_module` VALUES ('17', '6', '��ɫȨ������', '/page/manage_role.html?lid=10', null, '2017-04-15 17:49:46', '2017-04-15 17:49:46', '1');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `order_number` varchar(255) DEFAULT '' COMMENT '������',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `total_amount` int(11) DEFAULT NULL COMMENT '�����ܽ��(�Է�Ϊ��λ)',
  `paid_amount` int(11) DEFAULT NULL COMMENT 'ʵ�����',
  `discount_amount` int(11) DEFAULT NULL COMMENT '�Żݽ��',
  `receive_id` int(11) DEFAULT NULL COMMENT '�ջ�id',
  `send_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `logistics_state` tinyint(4) DEFAULT '1' COMMENT '����״̬ 1 ������ 2  ������ 3 ��ȷ���ջ�',
  `invoice_tag` tinyint(4) DEFAULT '0' COMMENT '���߷�Ʊ��־ 0 �� 1 ��',
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ�� 1�� 2��',
  `payment_id` int(11) DEFAULT NULL COMMENT '֧����ʽid',
  `payment_seq` varchar(255) DEFAULT NULL COMMENT '����֧����ˮ��',
  `pay_state` tinyint(3) unsigned DEFAULT '1' COMMENT '֧��״̬ 1.δ���� 2 �Ѹ���',
  `comment` varchar(255) DEFAULT NULL COMMENT '��ע˵��',
  `create_time` datetime DEFAULT NULL COMMENT '�µ�ʱ��',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COMMENT='������';

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_certify
-- ----------------------------
DROP TABLE IF EXISTS `t_order_certify`;
CREATE TABLE `t_order_certify` (
  `certify_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�տ�ƾ֤id������',
  `order_id` int(11) DEFAULT NULL COMMENT '����id',
  `order_number` varchar(255) DEFAULT NULL COMMENT '������',
  `image_url` varchar(255) DEFAULT NULL COMMENT '����ƾ֤',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`certify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='�����տ�ƾ֤��';

-- ----------------------------
-- Records of t_order_certify
-- ----------------------------


-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��������id',
  `order_id` int(11) DEFAULT NULL COMMENT '����id',
  `order_number` varchar(255) DEFAULT '' COMMENT '������',
  `price_id` int(11) DEFAULT NULL COMMENT '��Ʒ���۸�id',
  `goods_id` int(11) DEFAULT NULL COMMENT '��Ʒid',
  `unit_name` varchar(255) DEFAULT NULL COMMENT '��Ʒ�������',
  `goods_name` varchar(255) DEFAULT '' COMMENT '��Ʒ����',
  `unit_price` int(11) DEFAULT NULL COMMENT '��Ʒ���۸�(�Է�Ϊ��λ)',
  `num` int(11) DEFAULT NULL COMMENT '����',
  `details_amount` int(11) DEFAULT NULL COMMENT '������Ʒ�ܼ�(�Է�Ϊ��λ)',
  `create_time` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT '' COMMENT '��Ʒ��ͼ',
  PRIMARY KEY (`order_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8 COMMENT='������Ʒ��';

-- ----------------------------
-- Records of t_order_details
-- ----------------------------
-- ----------------------------
-- Table structure for t_order_join
-- ----------------------------
DROP TABLE IF EXISTS `t_order_join`;
CREATE TABLE `t_order_join` (
  `join_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����������1',
  `join_order_number` varchar(255) DEFAULT NULL COMMENT '�ϲ�������',
  `order_ids` varchar(255) DEFAULT NULL COMMENT '����id',
  `order_numbers` text COMMENT '������',
  `total_price` int(11) DEFAULT NULL COMMENT '�����ܽ��(�Է�Ϊ��λ)',
  PRIMARY KEY (`join_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_payment_method
-- ----------------------------
DROP TABLE IF EXISTS `t_payment_method`;
CREATE TABLE `t_payment_method` (
  `payment_id` int(11) NOT NULL COMMENT '֧����ʽid���ֶ�ά��',
  `name` varchar(255) DEFAULT NULL COMMENT '֧����ʽ����',
  `description` varchar(255) DEFAULT NULL,
  `isGeneral` tinyint(4) NOT NULL COMMENT '�Ƿ�ͨ�� 1 �� 0 ��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `state` tinyint(4) DEFAULT '2' COMMENT '1 ��ɾ�� 2 δɾ��',
  PRIMARY KEY (`payment_id`,`isGeneral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_payment_method
-- ----------------------------
INSERT INTO `t_payment_method` VALUES ('1', '��������', '��������', '0', '2017-03-23 16:49:23', '2017-03-23 16:49:23', '2');
INSERT INTO `t_payment_method` VALUES ('2', '����֧��', '����֧��', '1', '2017-03-23 16:50:20', '2017-03-23 16:50:20', '2');
INSERT INTO `t_payment_method` VALUES ('3', '�ۼƽ���', '�ۼƽ���', '0', '2017-03-23 16:50:27', '2017-03-23 16:50:27', '2');

-- ----------------------------
-- Table structure for t_privilege
-- ----------------------------
DROP TABLE IF EXISTS `t_privilege`;
CREATE TABLE `t_privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�Ż�id������������',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `is_wholeSalePrice` tinyint(4) DEFAULT '0' COMMENT '���������۱�־ 1 ���������� 0 ������������',
  `isDiscount` tinyint(4) DEFAULT NULL COMMENT '�Ƿ������ۿ� 1 �� 0 ��',
  `discount` int(11) DEFAULT NULL COMMENT '��Ʒ�ۿ� ʹ��������ʾ�ۿ���������98����ʾ98��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `state` tinyint(4) DEFAULT '2' COMMENT '״̬ 1 ��ɾ�� 2 δɾ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='�Ż���Ϣ';

-- ----------------------------
-- Records of t_privilege
-- ----------------------------


-- ----------------------------
-- Table structure for t_role_module
-- ----------------------------
DROP TABLE IF EXISTS `t_role_module`;
CREATE TABLE `t_role_module` (
  `role_module_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����������1',
  `role_id` int(11) DEFAULT NULL COMMENT 'role_id',
  `module_id` int(11) DEFAULT NULL COMMENT 'ϵͳģ��id',
  PRIMARY KEY (`role_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_module
-- ----------------------------
INSERT INTO `t_role_module` VALUES ('1', '4', '6');
INSERT INTO `t_role_module` VALUES ('2', '4', '9');
INSERT INTO `t_role_module` VALUES ('3', '4', '12');
INSERT INTO `t_role_module` VALUES ('4', '4', '13');
INSERT INTO `t_role_module` VALUES ('5', '4', '14');
INSERT INTO `t_role_module` VALUES ('6', '4', '15');
INSERT INTO `t_role_module` VALUES ('7', '4', '5');
INSERT INTO `t_role_module` VALUES ('8', '4', '10');
INSERT INTO `t_role_module` VALUES ('9', '4', '11');
INSERT INTO `t_role_module` VALUES ('10', '4', '16');
INSERT INTO `t_role_module` VALUES ('11', '4', '17');
INSERT INTO `t_role_module` VALUES ('13', '4', '1');
INSERT INTO `t_role_module` VALUES ('14', '4', '2');
INSERT INTO `t_role_module` VALUES ('15', '4', '3');
INSERT INTO `t_role_module` VALUES ('16', '4', '4');
INSERT INTO `t_role_module` VALUES ('17', '4', '7');
INSERT INTO `t_role_module` VALUES ('18', '4', '8');

-- ----------------------------
-- Table structure for t_serial_number
-- ----------------------------
DROP TABLE IF EXISTS `t_serial_number`;
CREATE TABLE `t_serial_number` (
  `serial_number_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(25) NOT NULL COMMENT '��������',
  `num` varchar(11) NOT NULL COMMENT '��ǰ�����ˮ��',
  PRIMARY KEY (`serial_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='��ˮ�����ɱ�';

-- ----------------------------
-- Records of t_serial_number
-- ----------------------------
INSERT INTO `t_serial_number` VALUES ('3', '2017-04-23', '1');

-- ----------------------------
-- Table structure for t_short_message
-- ----------------------------
DROP TABLE IF EXISTS `t_short_message`;
CREATE TABLE `t_short_message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT '' COMMENT '�ֻ���',
  `code` int(255) DEFAULT '0' COMMENT '��֤��',
  `update_time` datetime DEFAULT NULL COMMENT '������ʱ��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `state` tinyint(4) DEFAULT '1' COMMENT '������֤���Ƿ����  1 ���� 2 ������',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8 COMMENT='������֤��';

-- ----------------------------
-- Records of t_short_message
-- ----------------------------


-- ----------------------------
-- Table structure for t_store_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_store_goods`;
CREATE TABLE `t_store_goods` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ղ�id',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `goods_id` int(11) DEFAULT NULL COMMENT '��Ʒid',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `state` tinyint(4) DEFAULT '2' COMMENT '״̬ 1 ��ɾ�� 2 δɾ��',
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='�û��ղ���Ʒ��';

-- ----------------------------
-- Records of t_store_goods
-- ----------------------------
-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�û�id',
  `openid` varchar(255) DEFAULT '' COMMENT '΢�ź͹��ں�֮���openid',
  `nickname` varchar(255) DEFAULT '' COMMENT '΢����',
  `headimgurl` varchar(255) DEFAULT '' COMMENT '΢��ͷ��',
  `sex` varchar(255) DEFAULT '' COMMENT '�Ա�',
  `phone` varchar(255) DEFAULT '' COMMENT '�ֻ�',
  `province` varchar(255) DEFAULT '' COMMENT 'ע���ַ��ʡ',
  `city` varchar(255) DEFAULT '' COMMENT 'ע���ַ������',
  `country` varchar(255) DEFAULT '' COMMENT 'ע���ַ����/��',
  `create_time` datetime DEFAULT NULL COMMENT '�û�¼��ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
  `state` tinyint(4) DEFAULT '1' COMMENT '״̬ 1 ������ 0 δ����',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='�û���';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '', '', '', '', '18927775098', '', '', '', '2017-04-23 18:35:17', '2017-04-23 18:35:17', '1');

-- ----------------------------
-- Table structure for t_user_message
-- ----------------------------
DROP TABLE IF EXISTS `t_user_message`;
CREATE TABLE `t_user_message` (
  `user_message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����������1',
  `message_id` int(11) DEFAULT NULL COMMENT '��Ϣid',
  `user_id` int(11) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '2' COMMENT '״̬ 1 �Ѷ� 2 δ��',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ��״̬ 1 ��ɾ�� 2 δɾ��',
  PRIMARY KEY (`user_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 COMMENT='�û�վ����Ϣ��';

-- ----------------------------
-- Records of t_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_payment
-- ----------------------------
DROP TABLE IF EXISTS `t_user_payment`;
CREATE TABLE `t_user_payment` (
  `user_payment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����������1',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `payment_id` int(11) DEFAULT NULL COMMENT '֧����ʽid',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `admin_id` int(11) DEFAULT NULL COMMENT '����Աid',
  PRIMARY KEY (`user_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_payment
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_receive
-- ----------------------------
DROP TABLE IF EXISTS `t_user_receive`;
CREATE TABLE `t_user_receive` (
  `receive_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ջ�id',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `contact` varchar(255) DEFAULT '' COMMENT '�ջ�������',
  `tel` varchar(255) DEFAULT '' COMMENT '�ջ��˵绰',
  `receive_province` varchar(255) DEFAULT '' COMMENT '�ջ���ַ��ʡ',
  `receive_city` varchar(255) DEFAULT '' COMMENT '�ջ���ַ������',
  `receive_county` varchar(255) DEFAULT '' COMMENT '�ջ���ַ����/��',
  `receive_address` varchar(255) DEFAULT '' COMMENT '�ջ���ַ ��ϸ��ַ',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '������ʱ��',
  `isDefault` tinyint(4) DEFAULT '0' COMMENT 'Ĭ���ջ���ַ��־ 0 �� 1 ��',
  `del_state` tinyint(4) DEFAULT '2' COMMENT 'ɾ��״̬ 1 ��ɾ�� 2 δɾ��',
  PRIMARY KEY (`receive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='�ͻ���';

-- ----------------------------
-- Records of t_user_receive
-- ----------------------------
INSERT INTO `t_user_receive` VALUES ('1', '46', '11', '18927775098', '�㶫ʡ', '������', '�����', '11', '2017-04-23 18:37:27', '2017-04-23 18:37:27', '2', '2');
