/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : xijule

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-10-31 16:29:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xjl_access`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_access`;
CREATE TABLE `xjl_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of xjl_access
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_admin_panel`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_admin_panel`;
CREATE TABLE `xjl_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- ----------------------------
-- Records of xjl_admin_panel
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_article`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_article`;
CREATE TABLE `xjl_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `posid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_article
-- ----------------------------
INSERT INTO `xjl_article` VALUES ('43', '26', '测试', '', '', '', '测试', '/index.php?a=shows&catid=26&id=43', '0', '99', '1', '0', 'admin', '1475567110', '1475567110', '0', '', '', '18', '0', '18', '18', '18', '1475569728');
INSERT INTO `xjl_article` VALUES ('44', '36', '测试政策法规', '', '', '', '测试', '/index.php?a=shows&catid=36&id=44', '0', '99', '1', '0', 'admin', '1475574269', '1475574269', '0', '', '', '30', '2', '2', '4', '30', '1476171420');
INSERT INTO `xjl_article` VALUES ('45', '35', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '', '', '', '测试', '/index.php?a=shows&catid=35&id=45', '0', '99', '1', '0', 'admin', '1475574374', '1475574374', '0', '', '', '13', '1', '3', '4', '13', '1476172561');
INSERT INTO `xjl_article` VALUES ('46', '36', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '', '', '', '测试', '/index.php?a=shows&catid=36&id=46', '0', '99', '1', '0', 'admin', '1475576251', '1475576251', '0', '', '', '19', '8', '1', '1', '19', '1476171542');
INSERT INTO `xjl_article` VALUES ('57', '34', '测试', '', '', '', '成v是德国的飞机股份', '/index.php?a=shows&catid=34&id=57', '0', '99', '1', '0', 'admin', '1475982910', '1475982910', '0', '', '', '30', '2', '8', '10', '30', '1476172556');
INSERT INTO `xjl_article` VALUES ('58', '28', '贝迪堡国际早教成都中心', '', '/attachment/file/content/2016/10/57f9daa53c616.png', '', '情况简介：贝迪堡国际连锁早教中心是婴幼儿早期教育领域的先驱。现今贝迪堡已经发展为遍布全球的国际连锁早教集团。由美国、意大利顶尖设计师科学的进行中心色彩搭配、区域布局、教具配色、安全保护。保证家长和孩子在一个温馨舒适的环境中相互交流学习共同成长。作为小朋友学习和娱乐的地方，同样对室内空气质量也有着非常严格要求，为了保障孩子们的身体健康，同时让家长们放心，贝迪堡（泛悦国际购物中心）邀请我们对该中心进行...', '/index.php?a=shows&catid=28&id=58', '0', '99', '1', '0', 'admin', '1475992229', '1475992229', '0', '', '', '53', '2', '41', '43', '53', '1476176414');
INSERT INTO `xjl_article` VALUES ('59', '28', '威乐尔幼稚园', '', '/attachment/file/content/2016/10/57f9dac530dd2.png', '', '情况简介：成都市高新区威乐尔幼稚园是由成都隆盛祥投资有限公司投资创办的一所高端幼稚园，是政府规划建设的城南重点幼儿园之一。该园位于成都市高新区，临近三环路、紧靠市政府新办公区、距新世纪会展中心、海洋公园几分钟车程，周边有市政公园，政府机构、科研机构众多，高档住宅小区林立，是成都高新区的核心区域。受到该园委托，对其中的两个区域（BB1班活动室、BB1班睡房）进行两点设置检测。包括甲醛、氨、苯、甲苯、二...', '/index.php?a=shows&catid=28&id=59', '0', '99', '1', '0', 'admin', '1475992261', '1475992261', '0', '', '', '23', '1', '12', '13', '23', '1476175724');

-- ----------------------------
-- Table structure for `xjl_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_article_data`;
CREATE TABLE `xjl_article_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `copyfrom` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_article_data
-- ----------------------------
INSERT INTO `xjl_article_data` VALUES ('43', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `xjl_article_data` VALUES ('44', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `xjl_article_data` VALUES ('45', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `xjl_article_data` VALUES ('46', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `xjl_article_data` VALUES ('57', '<p>成v是德国的飞机股份</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `xjl_article_data` VALUES ('58', '<p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\">情况简介：</strong><strong style=\"padding: 0px\"></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;text-indent: 28px;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">贝迪堡国际连锁早教中心是婴幼儿早期教育领域的先驱。现今贝迪堡已经发展为遍布全球的国际连锁早教集团。由美国、意大利顶尖设计师科学的进行中心色彩搭配、区域布局、教具配色、安全保护。保证家长和孩子在一个温馨舒适的环境中相互交流学习共同成长。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;text-indent: 28px;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">作为</span><span style=\"padding: 0px;font-family: SimSun\">小朋友学习和娱乐的地方</span><span style=\"padding: 0px;font-family: SimSun\">，同样</span><span style=\"padding: 0px;font-family: SimSun\">对室内空气质量</span><span style=\"padding: 0px;font-family: SimSun\">也有着</span><span style=\"padding: 0px;font-family: SimSun\">非常严格要求</span><span style=\"padding: 0px;font-family: SimSun\">，为了保障孩子们的身体健康，同时让家长们放心，</span><span style=\"padding: 0px;font-family: SimSun\">贝迪堡</span><span style=\"padding: 0px;font-family: SimSun\">（泛悦国际购物中心）邀请我们对该中心进行了现场的空气质量检测，包括甲醛、苯、</span><span style=\"padding: 0px;font-family: SimSun\">TVOC</span><span style=\"padding: 0px\"><span style=\"padding: 0px;font-family: SimSun\">三项。</span><br style=\"padding: 0px\"/></span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">检测地点：成都市武侯区长荣路</span><span style=\"padding: 0px;font-family: SimSun\">66</span><span style=\"padding: 0px;font-family: SimSun\">号泛悦国际购物中心三层贝迪堡国际早教成都中心</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">检测面积：约为</span><span style=\"padding: 0px;font-family: SimSun\">126㎡&nbsp;</span></p><p><img src=\"/attachment/file/content/2016/10/57f9daa53c616.png\" width=\"600\" height=\"754\" alt=\"\" style=\"padding: 0px;border: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"/><img src=\"/attachment/file/content/2016/10/57f9daa849d9d.png\" width=\"637\" height=\"747\" alt=\"\" style=\"padding: 0px;border: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"/><img src=\"/attachment/file/content/2016/10/57f9daa8a79b3.png\" width=\"547\" height=\"414\" alt=\"\" style=\"padding: 0px;border: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"/></p><p><br/></p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `xjl_article_data` VALUES ('59', '<p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\">情况简介：</strong><strong style=\"padding: 0px\"></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;text-indent: 29px;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">&nbsp;成都市高新区威乐尔幼稚园是由成都隆盛祥投资有限公司投资创办的一所高端幼稚园，是政府规划建设的城南重点幼儿园之一。该园位于成都市高新区，临近三环路、紧靠市政府新办</span><span style=\"padding: 0px;font-family: SimSun\">公区、距新世纪会展中心、海洋公园几分钟车程，周边有市政公园，政府机构、科研机构众多，高档住宅小区林立，是成都高新区的核心区域。受到该园委托，对其中的两个区域（</span><span style=\"padding: 0px;font-family: SimSun\">BB1班活动室、BB1班睡房）进行两点设置检测。包括甲醛、氨、苯、甲苯、二甲苯、TVOC六项检测。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">检测地点：成都市高新区锦晖东街</span><span style=\"padding: 0px;font-family: SimSun\">216</span><span style=\"padding: 0px;font-family: SimSun\">号威乐尔幼稚园</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-family: SimSun\">检测面积：约为</span><span style=\"padding: 0px;font-family: SimSun\">100㎡&nbsp;</span></p><p><img src=\"/attachment/file/content/2016/10/57f9dac530dd2.png\" width=\"640\" height=\"837\" alt=\"\" style=\"padding: 0px;border: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"/><img src=\"/attachment/file/content/2016/10/57f9dac5a12cc.png\" width=\"614\" height=\"834\" alt=\"\" style=\"padding: 0px;border: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"/><img src=\"/attachment/file/content/2016/10/57f9dac610a64.png\" width=\"634\" height=\"382\" alt=\"\" style=\"padding: 0px;border: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 23.8px;text-align: justify;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"/></p><p><br/></p>', '2', '10000', '', '0', '1', '', '');

-- ----------------------------
-- Table structure for `xjl_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_attachment`;
CREATE TABLE `xjl_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名称',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `filename` char(50) NOT NULL DEFAULT '' COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL DEFAULT '' COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL DEFAULT '' COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL DEFAULT '' COMMENT '附件路径MD5值',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of xjl_attachment
-- ----------------------------
INSERT INTO `xjl_attachment` VALUES ('35', 'contents', '71', '1.jpg', 'contents/2016/10/57fc3e40357a3.jpg', '452720', 'jpg', '1', '0', '1', '1', '1476148800', '118.113.58.179', '1', '83249b27eaa4aab56fb88525def65262');
INSERT INTO `xjl_attachment` VALUES ('30', 'content', '32', 'b3 副本.JPG', 'content/2016/10/57fc3603d11c3.jpg', '10333229', 'jpg', '1', '0', '1', '1', '1476146691', '118.113.58.179', '1', 'b411d8906743e64015dc4cf8c6f59ace');
INSERT INTO `xjl_attachment` VALUES ('31', 'content', '32', 'b2 副本.JPG', 'content/2016/10/57fc36195034c.jpg', '4517630', 'jpg', '1', '0', '1', '1', '1476146713', '118.113.58.179', '1', '927487f826820ff364e259dafb1e2bf0');
INSERT INTO `xjl_attachment` VALUES ('4', 'content', '33', 'hz1.png', 'content/2016/10/57f374818ab62.png', '15869', 'png', '1', '0', '1', '1', '1475572865', '127.0.0.1', '1', 'a277594a9c255f51a86cc64e878e5fc9');
INSERT INTO `xjl_attachment` VALUES ('15', 'content', '28', '20160921060328_78085.png', 'content/2016/10/57f9daa849d9d.png', '606380', 'png', '1', '0', '0', '1', '1475992229', '127.0.0.1', '1', '2f70a1001e5bdc3abfe3c554f36432e2');
INSERT INTO `xjl_attachment` VALUES ('14', 'content', '28', '20160921060320_62673.png', 'content/2016/10/57f9daa53c616.png', '531285', 'png', '1', '0', '0', '1', '1475992229', '127.0.0.1', '1', 'ff572894163fd548469fd75633507cf3');
INSERT INTO `xjl_attachment` VALUES ('17', 'content', '28', '20160921063028_88033.png', 'content/2016/10/57f9dac530dd2.png', '694097', 'png', '1', '0', '0', '1', '1475992261', '127.0.0.1', '1', '19c82e930ed8cdcbf477ebe794f4656e');
INSERT INTO `xjl_attachment` VALUES ('16', 'content', '28', '20160921060337_66892.png', 'content/2016/10/57f9daa8a79b3.png', '310973', 'png', '1', '0', '0', '1', '1475992229', '127.0.0.1', '1', '15151336c769cad987c4f7fcaedf9adb');
INSERT INTO `xjl_attachment` VALUES ('9', 'content', '48', 'logo.png', 'content/2016/10/57f3b98c35006.png', '7069', 'png', '1', '0', '1', '1', '1475590540', '127.0.0.1', '1', '8c0045b06590205167755b75310bcad5');
INSERT INTO `xjl_attachment` VALUES ('10', 'content', '48', '20160602072932_57559.jpg', 'content/2016/10/57f3b99029d38.jpg', '56882', 'jpg', '1', '0', '0', '1', '1475590544', '127.0.0.1', '1', '0f9b1d0c444e965ceafda5c4c7bc8ab5');
INSERT INTO `xjl_attachment` VALUES ('11', 'content', '50', 'normal_234.png', 'content/2016/10/57f5001bf3a77.png', '20761', 'png', '1', '0', '1', '1', '1475674139', '127.0.0.1', '1', '9ef01c081c1069aaac6bf9cbe4915439');
INSERT INTO `xjl_attachment` VALUES ('12', 'content', '50', 'normal_6861.png', 'content/2016/10/57f5003983597.png', '24826', 'png', '1', '0', '1', '1', '1475674169', '127.0.0.1', '1', 'b7609f19a9684cc4b85956f99ea4e7ea');
INSERT INTO `xjl_attachment` VALUES ('13', 'content', '33', 'hz7.png', 'content/2016/10/57f504dc0e67f.png', '14494', 'png', '1', '0', '1', '1', '1475675356', '127.0.0.1', '1', 'f4c65ca4b9b2cb95ba0172914eab5c54');
INSERT INTO `xjl_attachment` VALUES ('18', 'content', '28', '20160921063039_67884.png', 'content/2016/10/57f9dac5a12cc.png', '653892', 'png', '1', '0', '0', '1', '1475992261', '127.0.0.1', '1', 'f7f36bc482ae46dde557a66cf99cd5be');
INSERT INTO `xjl_attachment` VALUES ('19', 'content', '28', '20160921063243_98143.png', 'content/2016/10/57f9dac610a64.png', '375427', 'png', '1', '0', '0', '1', '1475992261', '127.0.0.1', '1', 'fb94f81672485ec9c059bf876520c747');
INSERT INTO `xjl_attachment` VALUES ('34', 'contents', '71', 'IMG_0630.JPG', 'contents/2016/10/57fc3e191815f.jpg', '296722', 'jpg', '1', '0', '1', '1', '1476148761', '118.113.58.179', '1', '0b9c10c0806fe5820aec066ab1c3aec8');
INSERT INTO `xjl_attachment` VALUES ('32', 'content', '32', 'b1.jpg', 'content/2016/10/57fc362865739.jpg', '1596429', 'jpg', '1', '0', '1', '1', '1476146728', '118.113.58.179', '1', '78c4c61a86ecbc1908c9c5346b853394');
INSERT INTO `xjl_attachment` VALUES ('33', 'contents', '71', '1.jpg', 'contents/2016/10/57fc3e17ad106.jpg', '452720', 'jpg', '1', '0', '1', '1', '1476148759', '118.113.58.179', '1', '3b5bc808cced74a41ea335f5a9fcaeaf');
INSERT INTO `xjl_attachment` VALUES ('36', 'contents', '71', 'IMG_0630.JPG', 'contents/2016/10/57fc3e748bc64.jpg', '296722', 'jpg', '1', '0', '1', '1', '1476148852', '118.113.58.179', '1', 'aa81b548e3c863d17e6d4a7dac0440dc');

-- ----------------------------
-- Table structure for `xjl_attachment_index`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_attachment_index`;
CREATE TABLE `xjl_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

-- ----------------------------
-- Records of xjl_attachment_index
-- ----------------------------
INSERT INTO `xjl_attachment_index` VALUES ('catid-52', '35');
INSERT INTO `xjl_attachment_index` VALUES ('c-32-13', '30');
INSERT INTO `xjl_attachment_index` VALUES ('c-32-14', '31');
INSERT INTO `xjl_attachment_index` VALUES ('c-33-3', '4');
INSERT INTO `xjl_attachment_index` VALUES ('c-28-58', '15');
INSERT INTO `xjl_attachment_index` VALUES ('c-28-58', '14');
INSERT INTO `xjl_attachment_index` VALUES ('c-28-59', '17');
INSERT INTO `xjl_attachment_index` VALUES ('c-28-58', '16');
INSERT INTO `xjl_attachment_index` VALUES ('c-48-1', '9');
INSERT INTO `xjl_attachment_index` VALUES ('c-48-1', '10');
INSERT INTO `xjl_attachment_index` VALUES ('c-50-1', '11');
INSERT INTO `xjl_attachment_index` VALUES ('c-50-2', '12');
INSERT INTO `xjl_attachment_index` VALUES ('c-33-4', '13');
INSERT INTO `xjl_attachment_index` VALUES ('c-28-59', '18');
INSERT INTO `xjl_attachment_index` VALUES ('c-28-59', '19');
INSERT INTO `xjl_attachment_index` VALUES ('catid-52', '34');
INSERT INTO `xjl_attachment_index` VALUES ('c-32-15', '32');
INSERT INTO `xjl_attachment_index` VALUES ('catid-52', '33');
INSERT INTO `xjl_attachment_index` VALUES ('catid-52', '36');

-- ----------------------------
-- Table structure for `xjl_banner`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_banner`;
CREATE TABLE `xjl_banner` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_banner
-- ----------------------------
INSERT INTO `xjl_banner` VALUES ('13', '32', '0', '3', '', '/attachment/file/content/2016/10/57fc3603d11c3.jpg', '', '', '', '1', '/index.php?a=shows&catid=32&id=13', '0', '99', '1', '0', 'admin', '1476146695', '1476146695', '0', '0', '0', '0', '0', '0');
INSERT INTO `xjl_banner` VALUES ('14', '32', '0', '2', '', '/attachment/file/content/2016/10/57fc36195034c.jpg', '', '', '', '1', '/index.php?a=shows&catid=32&id=14', '0', '99', '1', '0', 'admin', '1476146717', '1476146717', '0', '0', '0', '0', '0', '0');
INSERT INTO `xjl_banner` VALUES ('15', '32', '0', '1', '', '/attachment/file/content/2016/10/57fc362865739.jpg', '', '', '', '1', '/index.php?a=shows&catid=32&id=15', '0', '99', '1', '0', 'admin', '1476146738', '1476146738', '0', '0', '0', '0', '0', '0');
INSERT INTO `xjl_banner` VALUES ('3', '33', '0', '农业银行', '', '/attachment/file/content/2016/10/57f374818ab62.png', '', '', '', '0', 'http://www.abchina.com/cn/', '0', '99', '1', '1', 'admin', '1475572914', '1475572914', '0', '0', '0', '0', '0', '0');
INSERT INTO `xjl_banner` VALUES ('4', '33', '0', '光大银行', '', '/attachment/file/content/2016/10/57f504dc0e67f.png', '', '', '', '0', 'http://www.cebbank.com/', '0', '99', '1', '1', 'admin', '1475675409', '1475675409', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `xjl_banner_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_banner_data`;
CREATE TABLE `xjl_banner_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_banner_data
-- ----------------------------
INSERT INTO `xjl_banner_data` VALUES ('13', '', '0', '0');
INSERT INTO `xjl_banner_data` VALUES ('3', '', '0', '0');
INSERT INTO `xjl_banner_data` VALUES ('4', '', '0', '0');
INSERT INTO `xjl_banner_data` VALUES ('15', '', '0', '0');
INSERT INTO `xjl_banner_data` VALUES ('14', '', '0', '0');

-- ----------------------------
-- Table structure for `xjl_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_behavior`;
CREATE TABLE `xjl_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of xjl_behavior
-- ----------------------------
INSERT INTO `xjl_behavior` VALUES ('1', 'app_init', '应用初始化标签位', '应用初始化标签位', '1', '1', '1', '', '1381021393');
INSERT INTO `xjl_behavior` VALUES ('2', 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', '1', '1', '1', '', '1381021411');
INSERT INTO `xjl_behavior` VALUES ('3', 'app_begin', '应用开始标签位', '应用开始标签位', '1', '1', '1', '', '1381021424');
INSERT INTO `xjl_behavior` VALUES ('4', 'action_name', '操作方法名标签位', '操作方法名标签位', '1', '1', '1', '', '1381021437');
INSERT INTO `xjl_behavior` VALUES ('5', 'action_begin', '控制器开始标签位', '控制器开始标签位', '1', '1', '1', '', '1381021450');
INSERT INTO `xjl_behavior` VALUES ('6', 'view_begin', '视图输出开始标签位', '视图输出开始标签位', '1', '1', '1', '', '1381021463');
INSERT INTO `xjl_behavior` VALUES ('7', 'view_parse', '视图解析标签位', '视图解析标签位', '1', '1', '1', '', '1381021476');
INSERT INTO `xjl_behavior` VALUES ('8', 'template_filter', '模板内容解析标签位', '模板内容解析标签位', '1', '1', '1', '', '1381021488');
INSERT INTO `xjl_behavior` VALUES ('9', 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', '1', '1', '1', '', '1381021621');
INSERT INTO `xjl_behavior` VALUES ('10', 'view_end', '视图输出结束标签位', '视图输出结束标签位', '1', '1', '1', '', '1381021631');
INSERT INTO `xjl_behavior` VALUES ('11', 'action_end', '控制器结束标签位', '控制器结束标签位', '1', '1', '1', '', '1381021642');
INSERT INTO `xjl_behavior` VALUES ('12', 'app_end', '应用结束标签位', '应用结束标签位', '1', '1', '1', '', '1381021654');
INSERT INTO `xjl_behavior` VALUES ('13', 'appframe_rbac_init', '后台权限控制', '后台权限控制', '1', '1', '1', '', '1381023560');

-- ----------------------------
-- Table structure for `xjl_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_behavior_log`;
CREATE TABLE `xjl_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL DEFAULT '0' COMMENT '行为ID',
  `guid` char(50) NOT NULL DEFAULT '' COMMENT '标识',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- ----------------------------
-- Records of xjl_behavior_log
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_behavior_rule`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_behavior_rule`;
CREATE TABLE `xjl_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL DEFAULT '0' COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '规则所属模块',
  `addons` char(20) NOT NULL DEFAULT '' COMMENT '规则所属插件',
  `rule` text COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='行为规则表';

-- ----------------------------
-- Records of xjl_behavior_rule
-- ----------------------------
INSERT INTO `xjl_behavior_rule` VALUES ('1', '1', '1', '', '', 'phpfile:BuildLiteBehavior', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('2', '3', '1', '', '', 'phpfile:ReadHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('3', '12', '1', '', '', 'phpfile:ShowPageTraceBehavior', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('4', '7', '1', '', '', 'phpfile:ParseTemplateBehavior', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('5', '8', '1', '', '', 'phpfile:ContentReplaceBehavior', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('6', '9', '1', '', '', 'phpfile:WriteHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('7', '1', '1', '', '', 'phpfile:AppInitBehavior|module:Common', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('8', '3', '1', '', '', 'phpfile:AppBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `xjl_behavior_rule` VALUES ('9', '6', '1', '', '', 'phpfile:ViewBeginBehavior|module:Common', '0', '1381021954');

-- ----------------------------
-- Table structure for `xjl_cache`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_cache`;
CREATE TABLE `xjl_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存key值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `param` char(255) NOT NULL DEFAULT '' COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';

-- ----------------------------
-- Records of xjl_cache
-- ----------------------------
INSERT INTO `xjl_cache` VALUES ('1', 'Config', '网站配置', '', 'Config', 'config_cache', '', '1');
INSERT INTO `xjl_cache` VALUES ('2', 'Module', '可用模块列表', '', 'Module', 'module_cache', '', '1');
INSERT INTO `xjl_cache` VALUES ('3', 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', '1');
INSERT INTO `xjl_cache` VALUES ('4', 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', '0');
INSERT INTO `xjl_cache` VALUES ('5', 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', '0');
INSERT INTO `xjl_cache` VALUES ('6', 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', '0');
INSERT INTO `xjl_cache` VALUES ('7', 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', '0');
INSERT INTO `xjl_cache` VALUES ('8', 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', '0');
INSERT INTO `xjl_cache` VALUES ('9', 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', '0');

-- ----------------------------
-- Table structure for `xjl_category`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_category`;
CREATE TABLE `xjl_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `description` mediumtext COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL DEFAULT '' COMMENT '父目录',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目拼音',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of xjl_category
-- ----------------------------
INSERT INTO `xjl_category` VALUES ('47', 'content', '0', '1', '', '0', '0', '1', '47,55,56,57,58', '资质证书', '', '', '', 'zizhizhengshu', '/list-47.html', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:16:\"category_new.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '2', '1', '0', 'zizhizhengshu');
INSERT INTO `xjl_category` VALUES ('28', 'content', '0', '1', '', '0', '0', '0', '28', '客户案例', '', '', '', 'case', '/list-28.html', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:13:\"list_case.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";s:1:\"4\";}', '3', '1', '0', 'kehuanli');
INSERT INTO `xjl_category` VALUES ('29', 'content', '0', '1', '', '0', '0', '1', '29,68,69', '服务支持', '', '', '', 'service', '/list-29.html', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:16:\"category_new.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '4', '1', '0', 'fuwuzhichi');
INSERT INTO `xjl_category` VALUES ('30', 'content', '0', '1', '', '0', '0', '1', '30,59,60,61,62,63,64,65,66,67', '检测项目', '', '', '', 'article', '/list-30.html', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:16:\"category_new.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '5', '1', '0', 'jiancexiangmu');
INSERT INTO `xjl_category` VALUES ('31', 'content', '0', '1', '', '0', '0', '1', '31,70,71', '展示中心', '', '', '', 'show', '/list-31.html', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:16:\"category_new.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '6', '1', '0', 'zhanshizhongxin');
INSERT INTO `xjl_category` VALUES ('32', 'content', '0', '4', '', '0', '0', '0', '32', 'banner上传', '', '', '', 'banner', '/index.php?a=lists&catid=32', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '99', '0', '0', 'bannershangchuan');
INSERT INTO `xjl_category` VALUES ('33', 'content', '0', '4', '', '0', '0', '0', '33', '友情链接', '', '', '', 'friendship', '/index.php?a=lists&catid=33', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '98', '0', '0', 'youqinglianjie');
INSERT INTO `xjl_category` VALUES ('34', 'content', '0', '1', '', '51', '0,51', '0', '34', '公司动态', '', '', 'news/', 'enterprise', '/index.php?a=lists&catid=34', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '7', '1', '0', 'gongsidongtai');
INSERT INTO `xjl_category` VALUES ('35', 'content', '0', '1', '', '51', '0,51', '0', '35', '行业动态', '', '', 'news/', 'industry', '/index.php?a=lists&catid=35', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '8', '1', '0', 'xingyedongtai');
INSERT INTO `xjl_category` VALUES ('36', 'content', '0', '1', '', '51', '0,51', '0', '36', '政策法规', '', '', 'news/', 'policy', '/index.php?a=lists&catid=36', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '9', '1', '0', 'zhengcefagui');
INSERT INTO `xjl_category` VALUES ('48', 'content', '0', '1', '', '0', '0', '1', '48,52,53,54', '关于我们', '', '', '', 'contactwe', '/list-48.html', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:16:\"category_new.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'guanyuwomen');
INSERT INTO `xjl_category` VALUES ('49', 'content', '1', '5', '', '0', '0', '0', '49', '联系我们', '', '', '', 'contact', '/list-49.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:16:\"page_contact.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '10', '1', '0', 'lianxiwomen');
INSERT INTO `xjl_category` VALUES ('50', 'content', '0', '7', '', '0', '0', '0', '50', '视频上传', '', '', '', 'video', '/index.php?a=lists&catid=50', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '10', '0', '0', 'shipinshangchuan');
INSERT INTO `xjl_category` VALUES ('51', 'content', '0', '1', '', '0', '0', '1', '51,34,35,36', '新闻中心', '', '', '', 'news', '/list-51.html', '0', 'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:16:\"category_new.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '7', '1', '0', 'xinwenzhongxin');
INSERT INTO `xjl_category` VALUES ('52', 'content', '1', '0', '', '48', '0,48', '0', '52', '企业介绍', '', '', 'contactwe/', 'introduce', '/list-52.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'qiyejieshao');
INSERT INTO `xjl_category` VALUES ('53', 'content', '1', '0', '', '48', '0,48', '0', '53', '企业文化', '', '', 'contactwe/', 'culture', '/list-53.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '2', '1', '0', 'qiyewenhua');
INSERT INTO `xjl_category` VALUES ('54', 'content', '1', '0', '', '48', '0,48', '0', '54', '公证声明', '', '', 'contactwe/', 'statement', '/list-54.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '3', '1', '0', 'gongzhengshengming');
INSERT INTO `xjl_category` VALUES ('55', 'content', '1', '0', '', '47', '0,47', '0', '55', '企业资质', '', '', 'zizhizhengshu/', 'aptitude', '/list-55.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'qiyezizhi');
INSERT INTO `xjl_category` VALUES ('56', 'content', '1', '0', '', '47', '0,47', '0', '56', 'CMA认证资质', '', '', 'zizhizhengshu/', 'cma', '/list-56.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '2', '1', '0', 'cmarenzhengzizhi');
INSERT INTO `xjl_category` VALUES ('57', 'content', '1', '0', '', '47', '0,47', '0', '57', '证书校准', '', '', 'zizhizhengshu/', 'certificate', '/list-57.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '3', '1', '0', 'zhengshuxiaozhun');
INSERT INTO `xjl_category` VALUES ('58', 'content', '1', '0', '', '47', '0,47', '0', '58', '内审员认证', '', '', 'zizhizhengshu/', 'nsrz', '/list-58.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '4', '1', '0', 'neishenyuanrenzheng');
INSERT INTO `xjl_category` VALUES ('59', 'content', '1', '0', '', '30', '0,30', '0', '59', '室内装修污染空气检测', '', '', 'article/', 'indoor', '/list-59.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'shineizhuangxiuwurankongqijian');
INSERT INTO `xjl_category` VALUES ('60', 'content', '1', '0', '', '30', '0,30', '0', '60', '写字楼/办公室空气质量检测', '', '', 'article/', 'somobuilding', '/list-60.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '2', '1', '0', 'xiezilou/bangongshikongqizhili');
INSERT INTO `xjl_category` VALUES ('61', 'content', '1', '0', '', '30', '0,30', '0', '61', '学校/幼儿园空气检测', '', '', 'article/', 'school', '/list-61.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '3', '1', '0', 'xuexiao/youeryuankongqijiance');
INSERT INTO `xjl_category` VALUES ('62', 'content', '1', '0', '', '30', '0,30', '0', '62', '车内空气质量检测', '', '', 'article/', 'carair', '/list-62.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '4', '1', '0', 'cheneikongqizhiliangjiance');
INSERT INTO `xjl_category` VALUES ('63', 'content', '1', '0', '', '30', '0,30', '0', '63', '甲醛检测', '', '', 'article/', 'formaldehyde', '/list-63.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '5', '1', '0', 'jiaquanjiance');
INSERT INTO `xjl_category` VALUES ('64', 'content', '1', '0', '', '30', '0,30', '0', '64', 'TVOC检测', '', '', 'article/', 'tvoc', '/list-64.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '6', '1', '0', 'tvocjiance');
INSERT INTO `xjl_category` VALUES ('65', 'content', '1', '0', '', '30', '0,30', '0', '65', '苯系物检测', '', '', 'article/', 'benzene', '/list-65.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '7', '1', '0', 'benxiwujiance');
INSERT INTO `xjl_category` VALUES ('66', 'content', '1', '0', '', '30', '0,30', '0', '66', '氡治理', '', '', 'article/', 'radon', '/list-66.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '8', '1', '0', 'zuozhili');
INSERT INTO `xjl_category` VALUES ('67', 'content', '1', '0', '', '30', '0,30', '0', '67', '氨治理', '', '', 'article/', 'ammonia', '/list-67.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '9', '1', '0', 'anzhili');
INSERT INTO `xjl_category` VALUES ('68', 'content', '1', '0', '', '29', '0,29', '0', '68', '检测标准', '', '', 'service/', 'detection', '/list-68.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'jiancebiaozhun');
INSERT INTO `xjl_category` VALUES ('69', 'content', '1', '0', '', '29', '0,29', '0', '69', '服务流程', '', '', 'service/', 'flow', '/list-69.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '2', '1', '0', 'fuwuliucheng');
INSERT INTO `xjl_category` VALUES ('70', 'content', '1', '0', '', '31', '0,31', '0', '70', '仪器设备', '', '', 'show/', 'device', '/list-70.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'yiqishebei');
INSERT INTO `xjl_category` VALUES ('71', 'content', '1', '0', '', '31', '0,31', '0', '71', '实验室', '', '', 'show/', 'lab', '/list-71.html', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_show.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"6\";s:11:\"show_ruleid\";N;}', '1', '1', '0', 'shiyanshi');

-- ----------------------------
-- Table structure for `xjl_category_field`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_category_field`;
CREATE TABLE `xjl_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- ----------------------------
-- Records of xjl_category_field
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_category_priv`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_category_priv`;
CREATE TABLE `xjl_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- ----------------------------
-- Records of xjl_category_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_company`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_company`;
CREATE TABLE `xjl_company` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `chuanz` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hotline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`listorder`,`id`),
  KEY `listorder` (`catid`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_company
-- ----------------------------
INSERT INTO `xjl_company` VALUES ('1', '49', '0', '四川尧中检测技术有限公司', '', '/attachment/file/content/2016/10/57f3b98c35006.png', '', '', '四川尧中检测技术有限公司是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。主要检测业务...', '99', '0', '/index.php?a=shows&catid=48&id=1', '0', '1', 'admin', '1475590544', '1475673133', '100', '10', '2', '32', '100', '1476258779', '18113037097', '028-69218566', '028-69218566', '4006607097', 'zixun@scyaozhong.com ', '四川省 成都市 青羊区 清溪南街 16-18号', '104.029642', '30.683404');

-- ----------------------------
-- Table structure for `xjl_company_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_company_data`;
CREATE TABLE `xjl_company_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_company_data
-- ----------------------------
INSERT INTO `xjl_company_data` VALUES ('1', '<p><img src=\"/attachment/file/content/2016/10/57f3b99029d38.jpg\" width=\"160\" height=\"94\" align=\"left\" alt=\"\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">四川尧中检测技术有限公司</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。</span></p><p><span style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 2; background-color: rgb(255, 255, 255);\"></span></p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\"><span style=\"padding: 0px; margin: 0px;\">主要检测业务以成都市为中心，辐射四川全省，继而涵盖全国。公司位于成都市成华区万宇路</span>200号，拥有200m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">办公场地及</span>500m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">宽敞明亮的检测场地</span>&nbsp;，实验室全部采用玻镁彩钢板间隔，分设仪器分析室、化学分析室、药品管理室和天平室等独立实验室，配备气相色谱仪、环境氡测量仪、恒流大气采样器、分光光度计、温湿度计等专业检测、分析仪器设备，均严格按国家标准进行环境质量检测。</p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\">公司拥有一支专业的检测队伍，主要检测力量由具有丰富经验的硕士研究生和大学本科生组成，技术和质量监管力量由经验丰富的工程师组成。同时公司还将不断引进各类优秀的专业技术人才，补充新鲜血液，壮大员工队伍。我们相信通过大家的共同努力，一定会为社会大众风险公正、科学的检测数据，提供诚信、高效的优质服务，我公司一定会朝着让每一位客户百分百满意的目标不断前进！</p><p><br/></p>', '', '0', '0');

-- ----------------------------
-- Table structure for `xjl_config`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_config`;
CREATE TABLE `xjl_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of xjl_config
-- ----------------------------
INSERT INTO `xjl_config` VALUES ('1', 'sitename', '网站名称', '1', '尧中检测');
INSERT INTO `xjl_config` VALUES ('2', 'siteurl', '网站网址', '1', '/');
INSERT INTO `xjl_config` VALUES ('3', 'sitefileurl', '附件地址', '1', '/attachment/file/');
INSERT INTO `xjl_config` VALUES ('4', 'siteemail', '站点邮箱', '1', '123@123.com');
INSERT INTO `xjl_config` VALUES ('6', 'siteinfo', '网站介绍', '1', '');
INSERT INTO `xjl_config` VALUES ('7', 'sitekeywords', '网站关键字', '1', '尧中检测后台管理系统');
INSERT INTO `xjl_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '1', '20240');
INSERT INTO `xjl_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '1', 'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf');
INSERT INTO `xjl_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '1', '1024');
INSERT INTO `xjl_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '1', 'jpg|jpeg|gif');
INSERT INTO `xjl_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '1', '1');
INSERT INTO `xjl_config` VALUES ('13', 'watermarkminwidth', '水印-宽', '1', '300');
INSERT INTO `xjl_config` VALUES ('14', 'watermarkminheight', '水印-高', '1', '100');
INSERT INTO `xjl_config` VALUES ('15', 'watermarkimg', '水印图片', '1', '/statics/images/mark_bai.png');
INSERT INTO `xjl_config` VALUES ('16', 'watermarkpct', '水印透明度', '1', '80');
INSERT INTO `xjl_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '1', '85');
INSERT INTO `xjl_config` VALUES ('18', 'watermarkpos', '水印位置', '1', '9');
INSERT INTO `xjl_config` VALUES ('19', 'theme', '主题风格', '1', 'Default');
INSERT INTO `xjl_config` VALUES ('20', 'ftpstatus', 'FTP上传', '1', '0');
INSERT INTO `xjl_config` VALUES ('21', 'ftpuser', 'FTP用户名', '1', '');
INSERT INTO `xjl_config` VALUES ('22', 'ftppassword', 'FTP密码', '1', '');
INSERT INTO `xjl_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '1', '');
INSERT INTO `xjl_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '1', '21');
INSERT INTO `xjl_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '1', '1');
INSERT INTO `xjl_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '1', '0');
INSERT INTO `xjl_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '1', '10');
INSERT INTO `xjl_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '1', '/');
INSERT INTO `xjl_config` VALUES ('29', 'mail_type', '邮件发送模式', '1', '1');
INSERT INTO `xjl_config` VALUES ('30', 'mail_server', '邮件服务器', '1', 'smtp.qq.com');
INSERT INTO `xjl_config` VALUES ('31', 'mail_port', '邮件发送端口', '1', '25');
INSERT INTO `xjl_config` VALUES ('32', 'mail_from', '发件人地址', '1', 'admin@abc3210.com');
INSERT INTO `xjl_config` VALUES ('33', 'mail_auth', '密码验证', '1', '1');
INSERT INTO `xjl_config` VALUES ('34', 'mail_user', '邮箱用户名', '1', '');
INSERT INTO `xjl_config` VALUES ('35', 'mail_password', '邮箱密码', '1', '');
INSERT INTO `xjl_config` VALUES ('36', 'mail_fname', '发件人名称', '1', '尧中检测管理员');
INSERT INTO `xjl_config` VALUES ('37', 'domainaccess', '指定域名访问', '1', '0');
INSERT INTO `xjl_config` VALUES ('38', 'generate', '是否生成首页', '1', '1');
INSERT INTO `xjl_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '1', '11');
INSERT INTO `xjl_config` VALUES ('40', 'indextp', '首页模板', '1', 'index.php');
INSERT INTO `xjl_config` VALUES ('41', 'tagurl', 'TagURL规则', '1', '8');
INSERT INTO `xjl_config` VALUES ('42', 'checkcode_type', '验证码类型', '1', '1');
INSERT INTO `xjl_config` VALUES ('43', 'attachment_driver', '附件驱动', '1', 'Local');

-- ----------------------------
-- Table structure for `xjl_config_field`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_config_field`;
CREATE TABLE `xjl_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

-- ----------------------------
-- Records of xjl_config_field
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_contact_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_contact_data`;
CREATE TABLE `xjl_contact_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_contact_data
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_customlist`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_customlist`;
CREATE TABLE `xjl_customlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '访问地址',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '列表标题',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '网页关键字',
  `description` text COMMENT '页面简介',
  `totalsql` text COMMENT '数据统计SQL',
  `listsql` text COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL DEFAULT '0' COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `template` mediumtext COMMENT '模板',
  `listpath` varchar(60) NOT NULL DEFAULT '' COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';

-- ----------------------------
-- Records of xjl_customlist
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_customtemp`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_customtemp`;
CREATE TABLE `xjl_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `tempname` varchar(30) NOT NULL DEFAULT '' COMMENT '模板完整文件名',
  `temppath` varchar(200) NOT NULL DEFAULT '' COMMENT '模板生成路径',
  `temptext` mediumtext COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义模板表';

-- ----------------------------
-- Records of xjl_customtemp
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_download`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_download`;
CREATE TABLE `xjl_download` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_download
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_download_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_download_data`;
CREATE TABLE `xjl_download_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_download_data
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_locking`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_locking`;
CREATE TABLE `xjl_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `locktime` int(10) NOT NULL DEFAULT '0' COMMENT '锁定时间',
  KEY `userid` (`userid`),
  KEY `onlinetime` (`locktime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- ----------------------------
-- Records of xjl_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_loginlog`;
CREATE TABLE `xjl_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
-- Records of xjl_loginlog
-- ----------------------------
INSERT INTO `xjl_loginlog` VALUES ('1', 'admin', '1475562419', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('2', 'admin', '1475665906', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('3', 'admin', '1475666519', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('4', 'admin', '1475976975', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('5', 'admin', '1476062096', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('6', 'admin', '1476064435', '222.209.32.106', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('7', 'admin', '1476086139', '222.209.32.106', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('8', 'admin', '1476089995', '222.209.32.106', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('9', 'admin', '1476090045', '118.113.58.179', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('10', 'admin', '1476090165', '118.113.58.179', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('11', 'admin', '1476145745', '118.113.58.179', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('12', 'admin', '1476151783', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('13', 'admin', '1476151833', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('14', 'admin', '1476151875', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('15', 'admin', '1476151908', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('16', 'admin', '1476151947', '127.0.0.1', '0', '123132', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('17', 'admin', '1476151953', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('18', 'admin', '1476153390', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('19', 'admin', '1476251477', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('20', 'admin', '1476412064', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `xjl_loginlog` VALUES ('21', 'admin', '1477897750', '127.0.0.1', '1', '密码保密', '用户名登录');

-- ----------------------------
-- Table structure for `xjl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_menu`;
CREATE TABLE `xjl_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制键',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of xjl_menu
-- ----------------------------
INSERT INTO `xjl_menu` VALUES ('1', '缓存更新', '0', 'Admin', 'Index', 'cache', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('2', '我的面板', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('3', '设置', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('4', '个人信息', '2', 'Admin', 'Adminmanage', 'myinfo', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('5', '修改个人信息', '4', 'Admin', 'Adminmanage', 'myinfo', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('6', '修改密码', '4', 'Admin', 'Adminmanage', 'chanpass', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('7', '系统设置', '3', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('8', '站点配置', '7', 'Admin', 'Config', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('9', '邮箱配置', '8', 'Admin', 'Config', 'mail', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('10', '附件配置', '8', 'Admin', 'Config', 'attach', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('11', '高级配置', '8', 'Admin', 'Config', 'addition', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('12', '扩展配置', '8', 'Admin', 'Config', 'extend', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('13', '行为管理', '7', 'Admin', 'Behavior', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('14', '行为日志', '13', 'Admin', 'Behavior', 'logs', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('15', '编辑行为', '13', 'Admin', 'Behavior', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('16', '删除行为', '13', 'Admin', 'Behavior', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('17', '后台菜单管理', '7', 'Admin', 'Menu', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('18', '添加菜单', '17', 'Admin', 'Menu', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('19', '修改', '17', 'Admin', 'Menu', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('20', '删除', '17', 'Admin', 'Menu', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('21', '管理员设置', '3', 'Admin', 'Management', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'Management', 'manager', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('23', '添加管理员', '22', 'Admin', 'Management', 'adminadd', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('24', '编辑管理信息', '22', 'Admin', 'Management', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('25', '删除管理员', '22', 'Admin', 'Management', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('26', '角色管理', '21', 'Admin', 'Rbac', 'rolemanage', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('27', '添加角色', '26', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('28', '删除角色', '26', 'Admin', 'Rbac', 'roledelete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('29', '角色编辑', '26', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('30', '角色授权', '26', 'Admin', 'Rbac', 'authorize', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('31', '日志管理', '3', 'Admin', 'Logs', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('32', '后台登陆日志', '31', 'Admin', 'Logs', 'loginlog', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('33', '后台操作日志', '31', 'Admin', 'Logs', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('34', '删除一个月前的登陆日志', '32', 'Admin', 'Logs', 'deleteloginlog', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('35', '删除一个月前的操作日志', '33', 'Admin', 'Logs', 'deletelog', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('36', '添加行为', '13', 'Admin', 'Behavior', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('37', '模块', '0', 'Admin', 'Module', 'index', '', '0', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('38', '在线云平台', '37', 'Admin', 'Cloud', 'index', '', '0', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('39', '模块商店', '38', 'Admin', 'Moduleshop', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('40', '插件商店', '38', 'Admin', 'Addonshop', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('41', '在线升级', '38', 'Admin', 'Upgrade', 'index', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('42', '本地模块管理', '37', 'Admin', 'Module', 'local', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('43', '模块管理', '42', 'Admin', 'Module', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('44', '内容', '0', 'Content', 'Index', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('45', '内容管理', '44', 'Content', 'Content', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('46', '内容相关设置', '44', 'Content', 'Category', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('47', '栏目列表', '46', 'Content', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('48', '添加栏目', '47', 'Content', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('49', '添加单页', '47', 'Content', 'Category', 'singlepage', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('50', '添加外部链接栏目', '47', 'Content', 'Category', 'wadd', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('51', '编辑栏目', '47', 'Content', 'Category', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('52', '删除栏目', '47', 'Content', 'Category', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('53', '栏目属性转换', '47', 'Content', 'Category', 'categoryshux', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('54', '模型管理', '46', 'Content', 'Models', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('55', '创建新模型', '54', 'Content', 'Models', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('56', '删除模型', '54', 'Content', 'Models', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('57', '编辑模型', '54', 'Content', 'Models', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('58', '模型禁用', '54', 'Content', 'Models', 'disabled', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('59', '模型导入', '54', 'Content', 'Models', 'import', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('60', '字段管理', '54', 'Content', 'Field', 'index', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('61', '字段修改', '60', 'Content', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('62', '字段删除', '60', 'Content', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('63', '字段状态', '60', 'Content', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('64', '模型预览', '60', 'Content', 'Field', 'priview', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('65', '管理内容', '45', 'Content', 'Content', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('66', '附件管理', '45', 'Attachment', 'Atadmin', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('67', '删除', '66', 'Attachment', 'Atadmin', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('68', '发布管理', '44', 'Content', 'Createhtml', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('69', '批量更新栏目页', '68', 'Content', 'Createhtml', 'category', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('70', '生成首页', '68', 'Content', 'Createhtml', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('71', '批量更新URL', '68', 'Content', 'Createhtml', 'update_urls', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('72', '批量更新内容页', '68', 'Content', 'Createhtml', 'update_show', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('73', '刷新自定义页面', '68', 'Template', 'Custompage', 'createhtml', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('74', 'URL规则管理', '46', 'Content', 'Urlrule', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('75', '添加规则', '74', 'Content', 'Urlrule', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('76', '编辑', '74', 'Content', 'Urlrule', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('77', '删除', '74', 'Content', 'Urlrule', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('78', '推荐位管理', '46', 'Content', 'Position', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('79', '信息管理', '78', 'Content', 'Position', 'item', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('80', '添加推荐位', '78', 'Content', 'Position', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('81', '修改推荐位', '78', 'Content', 'Position', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('82', '删除推荐位', '78', 'Content', 'Position', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('83', '信息编辑', '79', 'Content', 'Position', 'item_manage', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('84', '信息排序', '79', 'Content', 'Position', 'item_listorder', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('85', '数据重建', '78', 'Content', 'Position', 'rebuilding', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('86', 'Tags管理', '45', 'Content', 'Tags', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('87', '修改', '86', 'Content', 'Tags', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('88', '删除', '86', 'Content', 'Tags', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('89', 'Tags数据重建', '86', 'Content', 'Tags', 'create', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('90', '界面', '0', 'Template', 'Style', 'index', '', '0', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('91', '模板管理', '90', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('92', '模板风格', '91', 'Template', 'Style', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('93', '添加模板页', '92', 'Template', 'Style', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('94', '删除模板', '92', 'Template', 'Style', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('95', '修改模板', '92', 'Template', 'Style', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('96', '主题管理', '91', 'Template', 'Theme', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('97', '主题更换', '96', 'Template', 'Theme', 'chose', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('98', '自定义页面', '90', 'Template', 'Custompage', 'index', '', '0', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('99', '自定义页面', '98', 'Template', 'Custompage', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('100', '添加自定义页面', '99', 'Template', 'Custompage', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('101', '删除自定义页面', '99', 'Template', 'Custompage', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('102', '编辑自定义页面', '99', 'Template', 'Custompage', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('103', '自定义列表', '98', 'Template', 'Customlist', 'index', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('104', '添加列表', '103', 'Template', 'Customlist', 'add', '', '1', '1', '', '0');
INSERT INTO `xjl_menu` VALUES ('105', '删除列表', '103', 'Template', 'Customlist', 'delete', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('106', '编辑列表', '103', 'Template', 'Customlist', 'edit', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('107', '生成列表', '103', 'Template', 'Customlist', 'generate', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('108', '安装模块', '39', 'Admin', 'Moduleshop', 'install', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('109', '升级模块', '39', 'Admin', 'Moduleshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('110', '安装插件', '40', 'Admin', 'Addonshop', 'install', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('111', '升级插件', '40', 'Admin', 'Addonshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('112', '栏目授权', '26', 'Admin', 'Rbac', 'setting_cat_priv', '', '1', '0', '', '0');
INSERT INTO `xjl_menu` VALUES ('113', '预约查看', '45', 'Content', 'Content', 'yuyue', '', '1', '1', '', '0');

-- ----------------------------
-- Table structure for `xjl_model`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_model`;
CREATE TABLE `xjl_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '描述',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '表名',
  `setting` text COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL DEFAULT '' COMMENT '风格',
  `category_template` char(30) NOT NULL DEFAULT '' COMMENT '栏目模板',
  `list_template` char(30) NOT NULL DEFAULT '' COMMENT '列表模板',
  `show_template` char(30) NOT NULL DEFAULT '' COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL DEFAULT '' COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='内容模型列表';

-- ----------------------------
-- Records of xjl_model
-- ----------------------------
INSERT INTO `xjl_model` VALUES ('1', '文章模型', '文章模型', 'article', '', '1403150253', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `xjl_model` VALUES ('2', '下载模型', '下载模型', 'download', '', '1403153866', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `xjl_model` VALUES ('3', '图片模型', '图片模型', 'photo', '', '1403153881', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `xjl_model` VALUES ('4', 'banner', 'banner', 'banner', '', '1475571143', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `xjl_model` VALUES ('5', '企业信息', '企业信息资料', 'company', '', '1475582717', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `xjl_model` VALUES ('7', '视频管理', '', 'video', '', '1475673505', '0', '0', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `xjl_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_model_field`;
CREATE TABLE `xjl_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '别名',
  `tips` text COMMENT '字段提示',
  `css` varchar(30) NOT NULL DEFAULT '' COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` mediumtext,
  `formattribute` varchar(255) NOT NULL DEFAULT '',
  `unsetgroupids` varchar(255) NOT NULL DEFAULT '',
  `unsetroleids` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COMMENT='模型字段列表';

-- ----------------------------
-- Records of xjl_model_field
-- ----------------------------
INSERT INTO `xjl_model_field` VALUES ('1', '1', 'status', '状态', '', '', '0', '2', '', '', 'box', 'a:8:{s:7:\"options\";s:0:\"\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('2', '1', 'username', '用户名', '', '', '0', '20', '', '', 'text', 'a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('3', '1', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', 'a:3:{s:4:\"size\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('4', '1', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('5', '1', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:10:{s:7:\"options\";s:32:\"允许评论|1\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('6', '1', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('7', '1', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('8', '1', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('9', '1', 'url', 'URL', '', '', '0', '100', '', '', 'text', 'a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('10', '1', 'listorder', '排序', '', '', '0', '6', '', '', 'number', 'a:7:{s:9:\"minnumber\";s:0:\"\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('11', '1', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('12', '1', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('13', '1', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('15', '1', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('16', '1', 'keywords', '关键词', '多关之间用空格或者“,”隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('17', '1', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('18', '1', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('19', '1', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('20', '1', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:7:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:0:\"\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('21', '1', 'copyfrom', '来源', '', '', '0', '0', '', '', 'copyfrom', 'a:4:{s:12:\"defaultvalue\";s:0:\"\";s:5:\"width\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('26', '2', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('27', '2', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('28', '2', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('29', '2', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('24', '1', 'prefix', '自定义文件名', '', '', '0', '255', '', '', 'text', 'a:5:{s:4:\"size\";s:3:\"180\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '17', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('66', '3', 'prefix', '自定义文件名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '8', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('25', '2', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('65', '2', 'prefix', '自定义文件名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"180\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '17', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('31', '2', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('32', '2', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('33', '2', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('34', '2', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('35', '2', 'relation', '相关下载', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关信息\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('36', '2', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('37', '2', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('38', '2', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('39', '2', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('40', '2', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('41', '2', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('42', '2', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('43', '2', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('45', '3', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('46', '3', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('47', '3', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('48', '3', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('49', '3', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('67', '2', 'download', '文件下载', '', '', '0', '0', '', '', 'downfiles', 'a:9:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:10:\"statistics\";s:0:\"\";s:12:\"downloadlink\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('51', '3', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('52', '3', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('53', '3', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('54', '3', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('55', '3', 'relation', '相关图片', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关信息\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('56', '3', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('57', '3', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('59', '3', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('60', '3', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('61', '3', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('62', '3', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('63', '3', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('68', '3', 'imgs', '图片列表', '', '', '0', '0', '', '', 'images', 'a:8:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:9:\"watermark\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '8', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('69', '4', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('70', '4', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('71', '4', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('72', '4', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('73', '4', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('75', '4', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('76', '4', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('77', '4', 'url', 'URL', '', '', '0', '100', '', '', 'text', 'a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '1', '0', '1', '12', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('78', '4', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('80', '4', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('81', '4', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('82', '4', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('83', '4', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('84', '4', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('85', '4', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('86', '4', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('87', '4', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('89', '5', 'status', '状态', '', '', '0', '2', '', '', 'box', 'a:8:{s:7:\"options\";s:0:\"\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('90', '5', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('92', '5', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('93', '5', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('95', '5', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('96', '5', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('97', '5', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('98', '5', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('100', '5', 'thumb', 'Logo', '', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('101', '5', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('102', '5', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('103', '5', 'title', '公司名称', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('104', '5', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('105', '5', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('106', '5', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('107', '5', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('108', '5', 'content', '企业介绍', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:7:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:0:\"\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('109', '5', 'mobile', '手机', '', '', '0', '0', '/^(1)[0-9]{10}$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('110', '5', 'phone', '电话', '', '', '0', '0', '/^[0-9-]{6,13}$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('111', '5', 'chuanz', '传真', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('112', '5', 'hotline', '全国服务热线', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('113', '5', 'email', '邮箱', '', '', '0', '0', '/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('114', '5', 'address', '地址', '', '', '0', '0', '', '', 'omnipotent', 'a:7:{s:8:\"formtext\";s:4904:\"<script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=B3f7707c25da5b29a6ff69618788a296\"></script>\n<input type=\"text\" name=\"info[address]\" id=\"address\" style=\"width:280px;\" value=\"{$data.address}\" class=\"input\">\n<input type=\"hidden\" value=\"{$data.lng}\" name=\"info[lng]\" id=\"lng\"/>\n<input type=\"hidden\" value=\"{$data.lat}\" name=\"info[lat]\" id=\"lat\"/>\n<div id=\"allmap\" class=\"addbmdmap\" style=\"height:438px;\" ></div>\n<script type=\"text/javascript\">\n    var lng = \"{$data.lng}\";\n    var lat = \"{$data.lat}\";\n    var map = new BMap.Map(\"allmap\");\n    if(lng==\'\' && lat==\'\'){\n        var point = new BMap.Point(104.026623,30.676945);\n    }else{\n        var point = new BMap.Point(lng,lat);\n    }\n    var geoc = new BMap.Geocoder();\n    //map.enableScrollWheelZoom(true);\n    map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用\n    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用\n    map.centerAndZoom(point, 16);\n    map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件\n    if(lng!=\'\' && lat!=\'\'){\n       // var myIcon = new BMap.Icon(\"http://developer.baidu.com/map/jsdemo/img/fox.gif\", new BMap.Size(300,157));\n        var marker1 = new BMap.Marker(point/*,{icon:myIcon}*/);  // 创建标注\n        map.addOverlay(marker1);\n        marker1.enableDragging();// 将标注添加到地图中\n        marker1.addEventListener(\"dragend\", function(a){\n            $(\'#lng\').val(a.point.lng);\n            $(\'#lat\').val(a.point.lat);\n            var pt = a.point;\n            geoc.getLocation(pt, function(rs){\n                var addComp = rs.addressComponents;\n                $(\'#address\').val(addComp.province + \" \" + addComp.city + \" \" + addComp.district + \" \" + addComp.street + \" \" + addComp.streetNumber);\n            });\n        });\n   }\n\n\n\n\n	function myFun(result){\n		var cityName = result.name;\n		map.setCenter(cityName);\n	}\n\n\n	//点击生成经纬度\n	map.addEventListener(\"click\",function(e){\n		var lng = e.point.lng;\n		var lat = e.point.lat;\n		$(\'#lng\').val(lng);\n		$(\'#lat\').val(lat);\n		var ptr = e.point;\n		geoc.getLocation(ptr, function(rs){\n			var addComp = rs.addressComponents;\n			$(\'#address\').val(addComp.province + \" \" + addComp.city + \" \" + addComp.district + \" \" + addComp.street + \" \" + addComp.streetNumber);\n		});\n		map.removeOverlay(marker1);  //删除原先的标注点\n		if(mak){ map.removeOverlay(mak);}\n	   //创建小狐狸\n		var pt = new BMap.Point(e.point.lng, e.point.lat);\n\n		//var myIcon = new BMap.Icon(\"http://developer.baidu.com/map/jsdemo/img/fox.gif\", new BMap.Size(300,157));\n		var marker2 = new BMap.Marker(pt/*,{icon:myIcon}*/);  // 创建标注\n		marker1 = marker2;   //把新标注点存放入marker1\n		map.addOverlay(marker2);   //创建一个标注点\n		marker2.enableDragging();// 将标注添加到地图中\n		marker2.addEventListener(\"dragend\", function(a){\n			$(\'#lng\').val(a.point.lng);\n			$(\'#lat\').val(a.point.lat);\n			var pt = a.point;\n			geoc.getLocation(pt, function(rs){\n				var addComp = rs.addressComponents;\n				$(\'#address\').val(addComp.province + \" \" + addComp.city + \" \" + addComp.district + \" \" + addComp.street + \" \" + addComp.streetNumber);\n			});\n		});\n\n	});\n	function G(id) {\n		return document.getElementById(id);\n	}\n\n	var ac = new BMap.Autocomplete(    //建立一个自动完成的对象\n		{\"input\" : \"address\"\n		,\"location\" : map\n	});\n\n	ac.addEventListener(\"onhighlight\", function(e) {  //鼠标放在下拉列表上的事件\n		var str = \"\";\n		var _value = e.fromitem.value;\n		var value = \"\";\n		if (e.fromitem.index > -1) {\n			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;\n		}    \n		str = \"FromItem<br />index = \" + e.fromitem.index + \"<br />value = \" + value;\n		\n		value = \"\";\n		if (e.toitem.index > -1) {\n			_value = e.toitem.value;\n			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;\n		}    \n		str += \"<br />ToItem<br />index = \" + e.toitem.index + \"<br />value = \" + value;\n		G(\"searchResultPanel\").innerHTML = str;\n	});\n\n		var myValue;\n		ac.addEventListener(\"onconfirm\", function(e) {    //鼠标点击下拉列表后的事件\n		var _value = e.item.value;\n			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;\n			G(\"searchResultPanel\").innerHTML =\"onconfirm<br />index = \" + e.item.index + \"<br />myValue = \" + myValue;\n			\n			setPlace();\n		});\n		var mak;\n		function setPlace(){\n			map.clearOverlays();    //清除地图上所有覆盖物\n			function myFun(){\n				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果\n				map.centerAndZoom(pp, 18);\n				 mak =new BMap.Marker(pp);\n				map.addOverlay(mak);    //添加标注\n			}\n			var local = new BMap.LocalSearch(map, { //智能搜索\n			  onSearchComplete: myFun\n			});\n			local.search(myValue);\n		}\n   \n \n</script>\";s:9:\"fieldtype\";s:7:\"varchar\";s:9:\"minnumber\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('115', '5', 'lng', '经度', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('116', '5', 'lat', '纬度', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('140', '7', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('141', '7', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('143', '7', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('144', '7', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('146', '7', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('147', '7', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('148', '7', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('149', '7', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('160', '7', 'video_url', '视频路径', '请填写完整的视频播放路径，否则视频将无法正常播放', '', '0', '0', '/^http:\\/\\//', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '4', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('151', '7', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('152', '7', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('154', '7', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('155', '7', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('156', '7', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `xjl_model_field` VALUES ('157', '7', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `xjl_model_field` VALUES ('158', '7', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '1', '0');

-- ----------------------------
-- Table structure for `xjl_module`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_module`;
CREATE TABLE `xjl_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext COMMENT '设置信息',
  `installtime` int(10) NOT NULL DEFAULT '0' COMMENT '安装时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of xjl_module
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_operationlog`;
CREATE TABLE `xjl_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL DEFAULT '0' COMMENT '操作帐号ID',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text COMMENT '其他说明',
  `get` varchar(255) NOT NULL DEFAULT '' COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1871 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of xjl_operationlog
-- ----------------------------
INSERT INTO `xjl_operationlog` VALUES ('1816', '0', '1476151947', '127.0.0.1', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://dev.yzjc.com/admin.php?m=Public&a=login');
INSERT INTO `xjl_operationlog` VALUES ('1817', '0', '1476152002', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://dev.yzjc.com/admin.php?m=Public&a=login');
INSERT INTO `xjl_operationlog` VALUES ('1818', '0', '1476152181', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://dev.yzjc.com/admin.php?m=Public&a=login');
INSERT INTO `xjl_operationlog` VALUES ('1819', '0', '1476152750', '127.0.0.1', '0', '提示语：用户名或者密码不能为空，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：GET', '');
INSERT INTO `xjl_operationlog` VALUES ('1820', '0', '1476152761', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://dev.yzjc.com/admin.php?m=Public&a=login');
INSERT INTO `xjl_operationlog` VALUES ('1821', '0', '1476153118', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://dev.yzjc.com/admin.php?m=Public&a=login');
INSERT INTO `xjl_operationlog` VALUES ('1822', '1', '1476175896', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `xjl_operationlog` VALUES ('1823', '1', '1476175898', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `xjl_operationlog` VALUES ('1824', '1', '1476175898', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `xjl_operationlog` VALUES ('1825', '1', '1476175898', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `xjl_operationlog` VALUES ('1826', '1', '1476175899', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `xjl_operationlog` VALUES ('1827', '1', '1476175899', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `xjl_operationlog` VALUES ('1828', '1', '1476175900', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `xjl_operationlog` VALUES ('1829', '1', '1476175900', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `xjl_operationlog` VALUES ('1830', '1', '1476175900', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `xjl_operationlog` VALUES ('1831', '1', '1476175900', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `xjl_operationlog` VALUES ('1832', '1', '1476175901', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `xjl_operationlog` VALUES ('1833', '1', '1476175901', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `xjl_operationlog` VALUES ('1834', '1', '1476175901', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `xjl_operationlog` VALUES ('1835', '1', '1476175902', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `xjl_operationlog` VALUES ('1836', '1', '1476251482', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `xjl_operationlog` VALUES ('1837', '1', '1476251486', '127.0.0.1', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&menuid=70');
INSERT INTO `xjl_operationlog` VALUES ('1838', '1', '1476251677', '127.0.0.1', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml');
INSERT INTO `xjl_operationlog` VALUES ('1839', '1', '1476253821', '127.0.0.1', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml');
INSERT INTO `xjl_operationlog` VALUES ('1840', '1', '1476412166', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=28');
INSERT INTO `xjl_operationlog` VALUES ('1841', '1', '1476412170', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">34</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `xjl_operationlog` VALUES ('1842', '1', '1476412170', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">34</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `xjl_operationlog` VALUES ('1843', '1', '1476412171', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `xjl_operationlog` VALUES ('1844', '1', '1476412176', '127.0.0.1', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `xjl_operationlog` VALUES ('1845', '1', '1476412177', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category');
INSERT INTO `xjl_operationlog` VALUES ('1846', '1', '1476412179', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `xjl_operationlog` VALUES ('1847', '1', '1476412180', '127.0.0.1', '1', '提示语：开始更新 ..客户案例 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls');
INSERT INTO `xjl_operationlog` VALUES ('1848', '1', '1476412180', '127.0.0.1', '1', '提示语：开始更新 ..公司动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `xjl_operationlog` VALUES ('1849', '1', '1476412181', '127.0.0.1', '1', '提示语：开始更新 ..行业动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `xjl_operationlog` VALUES ('1850', '1', '1476412181', '127.0.0.1', '1', '提示语：开始更新 ..政策法规 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `xjl_operationlog` VALUES ('1851', '1', '1476412181', '127.0.0.1', '1', '提示语：开始更新 ..视频上传 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `xjl_operationlog` VALUES ('1852', '1', '1476412182', '127.0.0.1', '1', '提示语：开始更新 ..友情链接 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `xjl_operationlog` VALUES ('1853', '1', '1476412182', '127.0.0.1', '1', '提示语：开始更新 ..banner上传 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=5');
INSERT INTO `xjl_operationlog` VALUES ('1854', '1', '1476412183', '127.0.0.1', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=6');
INSERT INTO `xjl_operationlog` VALUES ('1855', '1', '1476412184', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&menuid=72');
INSERT INTO `xjl_operationlog` VALUES ('1856', '1', '1476412184', '127.0.0.1', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show');
INSERT INTO `xjl_operationlog` VALUES ('1857', '1', '1477897802', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache');
INSERT INTO `xjl_operationlog` VALUES ('1858', '1', '1477897803', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site');
INSERT INTO `xjl_operationlog` VALUES ('1859', '1', '1477897803', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `xjl_operationlog` VALUES ('1860', '1', '1477897806', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `xjl_operationlog` VALUES ('1861', '1', '1477897806', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `xjl_operationlog` VALUES ('1862', '1', '1477897807', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `xjl_operationlog` VALUES ('1863', '1', '1477897807', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `xjl_operationlog` VALUES ('1864', '1', '1477897807', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `xjl_operationlog` VALUES ('1865', '1', '1477897808', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `xjl_operationlog` VALUES ('1866', '1', '1477897808', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `xjl_operationlog` VALUES ('1867', '1', '1477897808', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `xjl_operationlog` VALUES ('1868', '1', '1477897809', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `xjl_operationlog` VALUES ('1869', '1', '1477897809', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `xjl_operationlog` VALUES ('1870', '1', '1477897820', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.xjl.com/admin.php?a=cache');

-- ----------------------------
-- Table structure for `xjl_page`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_page`;
CREATE TABLE `xjl_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL DEFAULT '' COMMENT '标题',
  `style` varchar(24) NOT NULL DEFAULT '' COMMENT '样式',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '关键字',
  `content` text COMMENT '内容',
  `template` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

-- ----------------------------
-- Records of xjl_page
-- ----------------------------
INSERT INTO `xjl_page` VALUES ('37', '四川尧中检测技术有限公司', '', '', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">四川尧中检测技术有限公司</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC</span></p><img src=\"http://www.scyaozhong.com/upload/image/20160602072932_57559.jpg\" width=\"160\" height=\"94\" align=\"left\" alt=\"\"/><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。</span></p><p><span style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 2; background-color: rgb(255, 255, 255);\"><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\"><span style=\"padding: 0px; margin: 0px;\">主要检测业务以成都市为中心，辐射四川全省，继而涵盖全国。公司位于成都市成华区万宇路</span>200号，拥有200m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">办公场地及</span>500m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">宽敞明亮的检测场地</span>&nbsp;，实验室全部采用玻镁彩钢板间隔，分设仪器分析室、化学分析室、药品管理室和天平室等独立实验室，配备气相色谱仪、环境氡测量仪、恒流大气采样器、分光光度计、温湿度计等专业检测、分析仪器设备，均严格按国家标准进行环境质量检测。</p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\">公司拥有一支专业的检测队伍，主要检测力量由具有丰富经验的硕士研究生和大学本科生组成，技术和质量监管力量由经验丰富的工程师组成。同时公司还将不断引进各类优秀的专业技术人才，补充新鲜血液，壮大员工队伍。我们相信通过大家的共同努力，一定会为社会大众风险公正、科学的检测数据，提供诚信、高效的优质服务，我公司一定会朝着让每一位客户百分百满意的目标不断前进！</p></span></p><p><br/></p>', '', '1475589819');
INSERT INTO `xjl_page` VALUES ('52', '企业介绍', '', '', '<p><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: left; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; line-height: 2;\">　.</span><span style=\"text-decoration: none; color: rgb(0, 0, 0);\"><span style=\"text-decoration: none; padding: 0px; margin: 0px; line-height: 2;\">&nbsp;</span><span style=\"font-size: 16px; font-family: 黑体, SimHei; color: rgb(0, 0, 0); text-decoration: none; padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">四川尧中检测技术有限公司是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。&nbsp;</span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: left; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px; padding: 0px; margin: 0px;\"><br/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: left; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px; padding: 0px; margin: 0px;\">&nbsp;.主要检测业务以成都市为中心，辐射四川全省，继而涵盖全国。公司位于成都市成华区万宇路</span><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px;\">200号，拥有200m</span><sup style=\"font-family: 黑体, SimHei; text-indent: 24pt; padding: 0px; margin: 0px;\">2</sup><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px; padding: 0px; margin: 0px;\">办公场地及</span><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px;\">500m</span><sup style=\"font-family: 黑体, SimHei; text-indent: 24pt; padding: 0px; margin: 0px;\">2</sup><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px; padding: 0px; margin: 0px;\">宽敞明亮的检测场地</span><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px;\">&nbsp;，实验室全部采用玻镁彩钢板间隔，分设仪器分析室、化学分析室、药品管理室和天平室等独立实验室，配备气相色谱仪、环境氡测量仪、恒流大气采样器、分光光度计、温湿度计等专业检测、分析仪器设备，均严格按国家标准进行环境质量检测。 &nbsp;</span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: left; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px;\"><br/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: left; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px;\">&nbsp;<span style=\"font-family: 黑体, SimHei; text-indent: 24pt; font-size: 16px; color: rgb(0, 0, 0);\">&nbsp;.公司拥有一支专业的检测队伍，主要检测力量由具有丰富经验的硕士研究生和大学本科生组成，技术和质量监管力量由经验丰富的工程师组成。同时公司还将不断引进各类优秀的专业技术人才，补充新鲜血液，壮大员工队伍。我们相信通过大家的共同努力，一定会为社会大众风险公正、科学的检测数据，提供诚信、高效的优质服务，我公司一定会朝着让每一位客户百分百满意的目标不断前进！</span></span></p><p><span style=\"font-family: 黑体, SimHei;\"><br/></span></p><p style=\"white-space: normal;\"><br/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: left; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 16px; font-family: 黑体, SimHei; color: rgb(0, 0, 0); text-decoration: none; padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\"></span><br/></p><p style=\"text-align: left;\"><span style=\"padding: 0px; margin: 0px; line-height: 2; widows: 1; text-decoration: none; color: rgb(0, 0, 0); font-family: 黑体, SimHei; font-size: 16px; background-color: rgb(255, 255, 255);\"></span></p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt; text-align: left;\"><br/></p>', '', '1475991984');
INSERT INTO `xjl_page` VALUES ('53', '企业文化', '', '', '<p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">尧中检测企业文化</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp; 企业文化，集中体现了一个企业经营管理的核心主张，被我公司视为企业的灵魂和核心价值体系，将其渗入到工作的各个方面，在此基础上建立起富有尧中独特的企业文化。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px;text-align: center;line-height: 1.5\"><span style=\"padding: 0px;font-size: 16px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></strong><strong style=\"padding: 0px;line-height: 1.5;text-align: center\"><span style=\"padding: 0px;font-size: 16px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;企业愿景</span></strong><strong style=\"padding: 0px;line-height: 1.5;text-align: center\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><span style=\"padding: 0px;font-size: 16px\">专注于业务服务领域，秉承“以客户需求为中心，为客户提供全面优质的服务及解决方案”，立志成为全国最优秀的机构之一。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">企业精神</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;与时俱进，锐意进取。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">服务理念</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;公正、科学、诚信、高效。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">管理理念</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">管理职责化，工作标准化，办事程序化。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">人才理念</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;任人唯贤，以宏伟的目标感召人、以丰厚的待遇吸引人、以优秀的文化指引人。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">企业口号</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;widows: 1;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">尧中检测</span><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;</span><span style=\"padding: 0px;font-size: 16px\">鉴证优质服务。</span></p><p><span style=\"padding: 0px;font-size: 16px\"><br/></span></p><p><br/></p>', '', '1475992006');
INSERT INTO `xjl_page` VALUES ('54', '公正性声明', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160929084544_15600.png\" width=\"658\" height=\"924\" alt=\"\"/><br/></p>', '', '1475992037');
INSERT INTO `xjl_page` VALUES ('55', '企业资质', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160918075530_12944.png\" width=\"642\" height=\"937\" alt=\"\"/><br/></p>', '', '1475992075');
INSERT INTO `xjl_page` VALUES ('56', 'CMA认证资质', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160921055347_46469.png\" width=\"750\" height=\"1100\" alt=\"\"/><br/></p>', '', '1475992093');
INSERT INTO `xjl_page` VALUES ('57', '证书校准', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160919061500_47790.png\" width=\"350\" height=\"540\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061541_67458.png\" width=\"350\" height=\"534\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061600_18132.png\" width=\"350\" height=\"520\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061620_58197.png\" width=\"350\" height=\"550\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061638_62706.png\" width=\"350\" height=\"534\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061655_15506.png\" width=\"350\" height=\"536\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061712_85877.png\" width=\"350\" height=\"566\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919061731_87945.png\" width=\"350\" height=\"542\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p>', '', '1475992154');
INSERT INTO `xjl_page` VALUES ('58', '内审员认证', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160919062401_74893.jpg\" width=\"830\" height=\"579\" alt=\"\"/><img src=\"http://www.scyaozhong.com/upload/image/20160919062419_35655.jpg\" width=\"830\" height=\"576\" alt=\"\" style=\"text-align: center;\"/><br/></p>', '', '1475992193');
INSERT INTO `xjl_page` VALUES ('68', '检测标准', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160920094155_73536.png\" width=\"750\" height=\"1500\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p>', '', '1475992292');
INSERT INTO `xjl_page` VALUES ('69', '服务流程', '', '', '<p><img src=\"http://www.scyaozhong.com/upload/image/20160919100336_36402.png\" width=\"750\" height=\"1360\" alt=\"\"/><br/></p>', '', '1475992331');
INSERT INTO `xjl_page` VALUES ('70', '仪器设备', '', '', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px; font-size: 18px; line-height: 27px;\">气相色谱仪</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160918072501_93594.jpg\" width=\"600\" height=\"450\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px; font-size: 18px; line-height: 27px;\">皂膜流量计</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160918072549_51459.jpg\" width=\"600\" height=\"450\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px; line-height: 27px;\">电子天平</strong><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\"><img src=\"http://www.scyaozhong.com/upload/image/20160918072829_19415.jpg\" width=\"600\" height=\"800\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/>大气采样仪</strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160927030257_50514.jpg\" width=\"960\" height=\"720\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\">&nbsp;紫外可见分光光度计</strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\"><strong style=\"padding: 0px; margin: 0px;\"><img src=\"http://www.scyaozhong.com/upload/image/20160927030614_84426.jpg\" width=\"960\" height=\"720\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/><br style=\"padding: 0px; margin: 0px;\"/></strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px; font-size: 18px; line-height: 27px;\"><br style=\"padding: 0px; margin: 0px;\"/>环境氡测量仪</strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; text-align: center; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160918072432_18673.jpg\" width=\"600\" height=\"800\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p><br/></p>', '', '1475992430');
INSERT INTO `xjl_page` VALUES ('71', '实验室', '', '', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160918074200_35903.jpg\" width=\"350\" height=\"259\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/>&nbsp;&nbsp;<img src=\"http://www.scyaozhong.com/upload/image/20160918074221_63605.jpg\" width=\"350\" height=\"398\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160918074246_88447.jpg\" width=\"350\" height=\"468\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/>&nbsp;&nbsp;<img src=\"http://www.scyaozhong.com/upload/image/20160918074323_41912.jpg\" width=\"350\" height=\"467\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><img src=\"http://www.scyaozhong.com/upload/image/20160918074350_41904.jpg\" width=\"350\" height=\"262\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/><img src=\"http://www.scyaozhong.com/upload/image/20160921052340_57079.png\" width=\"344\" height=\"422\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px;\"/></p><p><br/></p>', '', '1475992458');
INSERT INTO `xjl_page` VALUES ('67', '氨治理', '', '', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">氨是一种无色且具有强烈刺激性臭味的气体，极易溶于水。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">氨的来源：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">1、施工中使用的混凝土添加剂，如防冻剂、膨胀剂 ；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">2、建筑材料中的胶粘剂、涂料添加剂及增白剂；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">3、人体代谢废弃物 。&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">氨的危害：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">1、轻度中毒：眼、鼻、咽部有辛辣感，流泪、咳嗽、喷嚏、咳痰、咳血、胸闷、头痛、头昏、乏力，临床检查有眼结膜、鼻和咽黏膜充血，肺部可听及干啰音；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">2、重度中毒：肺水肿、脑水肿、喉头水肿、喉痉挛、窒息，抢救不及时可有生命危险。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">尧中检测对氨的检测方法</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：《公共场所卫生检验方法第2部分：化学污染物靛酚蓝分光光度法》GB/T18204.2-2014</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">尧中检测对氨的检测参考标准</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：《民用建筑工程室内环境污染控制规范》 GB50325-2010</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;《室内空气质量标准》 GB/T18883-2002</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">检测项目</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：氨、甲醛、TVOC、苯（后三种是室内空气污染的三种主要污染物，近年TVOC超标的案例已超过甲醛超标）</span></p>', '', '1475992509');
INSERT INTO `xjl_page` VALUES ('66', '氡治理', '', '', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">氡是一种放射性的惰性气体，无色无味，能溶于水和脂肪，潜伏期长达15-40年。 　　</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">空气氡的来源： 　　</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; 1、房基土壤或岩石中析出的氡，氡气通过泥土地面、墙体裂缝、建筑材料缝隙渗透进入房间；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　2、大理石、花岗岩、砖沙、水泥及石膏之类建筑材料，特别是含有放射性元素的天然石材；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　3、从日常用水以及用于取暖和厨房设备的天然气中释放出的氡；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　4、从户外空气带入的氡。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">空气氡的危害：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　一、导致肺癌。国际癌症研究机构(世卫组织专门从事癌症工作的机构)以及美国国家毒理学规划把氡分类为一种人类致癌物质。世界上每年发生的肺癌病例中，6%到15%是由氡气引起的，氡是除吸烟以外引起肺癌的第二大因素。如果生活在室内氡浓度为200贝克/立方米的环境中，相当于每人每天吸烟15根。我国每年有50000人因为氡气及其子体致肺癌而死亡。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　二、导致白血病。氡及其子体能广泛分布在脂肪组织、神经系统、网状内皮系统和血液中，因其与它们具有很高的亲和力而对细胞造成损伤，最终诱发白血病等癌变。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　三、使人丧失生育能力，胎儿畸形、基因畸形遗传等。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　另外，氡可以通过人体脂肪影响人的神经系统，使人精神不振，昏昏欲睡。有关专家称，氡气已成为家居健康的超级隐形杀手。高浓度的氡会导致机体血红细胞出现变化。氡对人体脂肪有很高的亲和力，特别是氡与神经系统结合后，危害更大。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px;\">尧中检测对氡的检测方法</strong>：《空气中氡浓度的闪烁瓶测量方法》GB/T16147-1995</p><p><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">尧中检测对氡的检测参考标准</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：《民用建筑工程室内环境污染控制规范》 GB50325-2010</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;《室内空气质量标准》 GB/T18883-2002 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">检测项目</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：氡（家中有大理石、花岗岩等天然石材的装修材料时，可选择检测）</span></p><p><br/></p>', '', '1475992525');
INSERT INTO `xjl_page` VALUES ('65', '苯系物检测', '', '', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">苯系物是一种无色、有芳香味的碳氢化合物，有毒，所以专家们把它称为“芳香杀手”。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">苯系物的来源：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">1、建筑材料的有机溶剂，如油漆的添加剂和稀释剂、防水材料添加剂；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">2、装饰材料、人造板家具、粘合剂的溶液。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">苯系物的危害：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">1、长期吸入苯系物可导致再生障碍性贫血。长期吸入苯系物会出现白细胞和血小板减少，严重时可使骨髓造血机能发生障 碍，导致再生障碍性贫血。若造血功能完全被破坏，可发生致命的颗粒性白细胞消失症，并可引起白血病。 &nbsp; &nbsp;&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">2、女性长期吸入苯系物会患许多疾病。育龄妇女长期吸入苯系物会导致月经异常，主要表现为月经过多或紊乱。孕妇接触 甲苯、二甲苯及苯系混合物时，妊娠高血压综合症、妊娠呕吐及妊娠贫血等妊娠并发症的发病率显著增高 ，甚至会导 致流产。 &nbsp; &nbsp;&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">3、苯系物可导致胎儿先天性缺陷。在整个妊娠期间吸入大量甲苯的妇女，所生的婴儿出现小头畸形、中枢神经系统功 能障碍及生长发育迟缓等缺陷的较多；苯系物还可通过胎盘进入胎儿体内，导致出生婴儿体重下降，骨化延迟等情况。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">4、苯系物会对皮肤和上呼吸道造成损伤。经常接触苯系物，皮肤可因脱脂而变得干燥而脱屑，有的出现过敏性湿疹。喉头水肿 、支气管炎及血小板下降等病症也与苯系物污染超标有关。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px;\">可吸收苯系物的植物</strong>：常青藤、铁树</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px;\">尧中检测对苯系物的检测方法</strong>：《民用建筑工程室内环境污染控制规范附录F室内空气中苯的测定》GB50325-2010（2013版）<br style=\"padding: 0px; margin: 0px;\"/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;《室内空气质量标准附录B室内空气中苯的检验方法毛细管气相色谱法》GB/T18883-2002 &nbsp;<br style=\"padding: 0px; margin: 0px;\"/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;《居住区大气中苯、甲苯和二甲苯卫生检验标准方法气相色谱法》GB/T11737-1989</p><p><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">尧中检测对苯系物的检测参考标准</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">：《民用建筑工程室内环境污染控制规范》 GB50325-2010</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 《室内空气质量标准》 GB/T18883-2002</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">检测项目</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">：苯、甲醛、TVOC（是室内空气污染的三种主要污染物，近年TVOC超标的案例已超过甲醛超标）</span></p><p><br/></p>', '', '1475992546');
INSERT INTO `xjl_page` VALUES ('64', 'TVOC检测', '', 'tvoc', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">TVOC是总挥发性有机化合物的简称，在常温下可以蒸发的形式存在于空气中，具有特殊异味。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">TVOC的主要来源：&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 1、 室外环境：在室外，TVOC主要来自燃料燃烧和交通运输；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 2、 室内环境：在室内，TVOC主要来自燃煤和天然气等燃烧产物、吸烟、采暖和烹调等的烟雾，人造板、塑料板等建筑材料，油漆、涂料、胶粘剂、壁纸等装饰材料，地毯、窗帘等化纤材料，以及其他各种有机装饰材料。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">TVOC的危害</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">： 可以导致人体机体免疫功能失调，使人出现头晕、头痛、无力、胸闷等症状，还可以导致食欲不振、恶心等、严重时可损伤肝脏及造血系统 &nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">可吸收TVOC的植物</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">：虎尾兰、龟背竹</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px;\">尧中检测对TVOC的检测方法</strong>：《民用建筑工程室内环境污染控制规范附录G室内空气中总挥发性有机化合物（TVOC的测定）》GB50325-2010（2013版）<br style=\"padding: 0px; margin: 0px;\"/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 《室内空气质量标准附录C室内空气中总挥发性有机物（TVOC）的检测方法热解吸/毛细管气相色谱法》GB/T18883-2002</p><p><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">检测项目</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">：TVOC、甲醛、苯（是室内空气污染的三种主要污染物，近年TVOC超标的案例已超过甲醛超标）</span></p><p><br/></p>', '', '1475992569');
INSERT INTO `xjl_page` VALUES ('63', '甲醛检测', '', '甲醛', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">甲醛是一种无色但有强烈刺激性气味的气体，释放时间长，特别是在板材中的甲醛，释放周期可达到3-15年。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">甲醛的来源：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 1、 &nbsp;胶合板、细木工板、中密度纤维板和刨花板等人造板材及其家具制品；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 2、 &nbsp;地板、墙纸等大量使用胶粘剂的室内装饰物；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 3、 &nbsp;部分油漆、涂料、胶粘剂中也含有甲醛。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">甲醛的危害：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 1、 &nbsp;刺激作用：甲醛对眼睛和呼吸系统有强烈刺激，常见症状有流泪、咳嗽、打喷嚏、咽喉炎、结膜炎、支气管痉挛等</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 2、 &nbsp;毒性作用：甲醛促使蛋白质变性，对细胞具有强烈破坏作用，常见症状有肺功能显著下降、头疼掉发、记忆力减退、神经系统功能降低、妊娠综合症，严重者可导致呼吸道组织损伤、肺水肿、呼吸衰竭致死；</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 3、 &nbsp;致癌作用：世界卫生组织（WHO）认定甲醛为致癌物质。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">可吸收甲醛的植物：吊兰、芦荟</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">甲醛检测参考标准</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">：《民用建筑工程室内环境污染控制规范》 GB50325-2010</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 《室内空气质量标准》 GB/T18883-2002</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px;\">尧中检测对甲醛的检测方法</strong>：《公共场所卫生检验方法第2部分：化学污染物酚试剂分光光度法》GB/T18204.2-2014</p><p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">检测项目</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">：甲醛 （建议同步检测苯、TVOC ，是室内空气污染的三种主要污染物，近年TVOC超标的案例已超过甲醛超标）</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 23.8px; text-align: justify; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p><span style=\"padding: 0px; margin: 0px; line-height: 1.5;\">&nbsp;</span><img src=\"http://www.scyaozhong.com/upload/image/20160919005828_37957.jpg\" width=\"500\" height=\"450\" alt=\"\" style=\"padding: 0px; margin: 0px; border: 0px; line-height: 1.5;\"/></p><p><br/></p>', '', '1475992594');
INSERT INTO `xjl_page` VALUES ('62', '车内空气质量检测', '', '', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">车内空气污染问题，被世界卫生组织明确为人类健康十大威胁之一，被美国列入人类健康的五大危害。车内空气污染通常来源于两方面：一是新车，由于很多汽车下了生产线就直接进入市场，车内各种配件和材料的有害气体尚在释放期；二是一些含有害物质的地胶、座套垫、胶黏剂等车内装饰和装置，易造成车内污染。国家室内环境质量监督检验中心主任、中国室内环境监测工作委员会秘书长宋广生调查统计，由于车内环境污染， 约有65%的驾驶员驾车时会出现头晕、困倦和咳嗽等现象，中毒症状和程度根据个体体质有差异。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　自2002年始，车内空气污染事件见诸于报道。首例为2002年1月，一位程姓消费者从大连购买了一辆新轿车，在开回沈阳的沈大高速公路上发生了车祸，后经调查，“肇事元凶”是新车内高浓度的有害气体。其原因在于隆冬季节车窗紧闭，长时间吸入有毒气体，导致了司机身体不适和大脑判断、控制能力减弱，最终使车偏离方向，致使车毁人伤。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　美国把车内与室内污染作为人类健康的五大危害之一。车内空气中挥发性有机物的成分较为复杂，包括烃类、醛类、酮类等多种化学物质。这些有害物质会在不知不觉间，尤其是封闭的车内，通过呼吸和接触等渠道，引发驾乘人的健康问题，其中包括头痛恶心、疲惫乏力等症状，甚至过敏、肝中毒以及癌症等。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 2012年3月1日，中国车内环境标准《乘用车内空气质量评价指南》（下称《指南》）正式实施，由环保部与国家质量监督检验检疫总局（下称国家质检总局）联合发布。《指南》对车内空气中的苯、甲醛等八种常见的车内污染物设置了浓度限值，并明确了采集检测样本的环境条件、方法与设备。在此之前，车内检测参考2003年颁布的《室内空气质量标准》。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 该《指南》的出台，是近年来车内空气污染纠纷事件频发推动的，但从实施情况看，作为推荐性指标，其难以对汽车企业形成威慑力，更无法解决长期普遍存在的车内空气污染问题。作为纠葛了八年才出台的国内首个车内空气污染评价标准，实施半年以来，奏效甚微。“标准实施以来，并未给企业的质量监控体系带来很大的变化。”一知名汽车品牌企业的质量控制部门人员说，各汽车厂商在控制新车的车内空气质量方面依然沿袭抽检形式，即在一批次的整车中选取几台检测。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 根据《指南》的要求，检测应在全封闭的环境舱中进行，实验过程要进行22个小时：6个小时的静置实验，在车内材料适应舱内恒湿、恒温的条件下取样一次；在关闭车门窗16个小时让车内污染物释放积聚，达到浓度最高点时再取样一次。而这种检测条件和标准，以目前的条件来说，很少有权威检测机构会去专门购置检测舱；另一方面，对车主来说万元左右的检测费用也是难以承受。因此，一般情况下，对于没有诉讼要求的车主，我们仍参考2003年颁布的《室内空气质量标准》进行检测，此项检测一般几百元即可，而数据也能保证真实准确，利于车主及时了解爱车的车内空气质量情况并及时采取净化措施。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">尧中车内空气检测参考标准</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">： 《室内空气质量标准》 GB/T18883-2002</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">车内空气检测项目</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：甲醛、苯、TVOC</span></p>', '', '1475992616');
INSERT INTO `xjl_page` VALUES ('61', '学校/幼儿园空气检测', '', '学校 幼儿园 空气检测', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">目前，学校/幼儿园空气质量问题已是很普遍的问题，因为以往的空调设计更多考虑的是人们对温度和湿度的要求，并未太多在意室内空气污染对人体健康的危害。由于中央空调系统新风量不足，而大多数学校/幼儿园又以封闭空间为主，再加上装修污染的影响使学校/幼儿园中的空气质量污染严重，长期工作和生活在这种环境下的人们会出现各种不适感，症状最多的是头痛、流泪、眼睛红肿、胸闷、易疲劳、烦躁、皮肤过敏等反应，世界卫生组织将此种现象称为”致病建筑物综合症“。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 学校/幼儿园中的空气污染源多种多样，包括建筑装饰装修材料中含有的有毒有害气体、空气清新剂等诸多化学制剂散发出来的化学污染物、香烟烟雾、人体呼出的二氧化碳以及携带的微尘、微生物、细菌等。特别是随着学校/幼儿园装修的日益豪华，多种建筑装饰材料盲目使用，使之成为最大的污染源。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 消除学校/幼儿园室内空气污染，最有效的方式是通风换气，而在依赖空调系统的密闭空间，首先应采取措施控制污染源，减少污染物的散发。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p>&nbsp;<strong style=\"padding: 0px; margin: 0px;\">尧中学校/幼儿园空气检测参考标准</strong>：<span style=\"padding: 0px; margin: 0px; line-height: 1.5;\">《民用建筑工程室内环境污染控制规范》 GB50325-2010</span><br style=\"padding: 0px; margin: 0px;\"/><span style=\"padding: 0px; margin: 0px; line-height: 28px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;《室内空气质量标准》 GB/T18883-2002</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><br style=\"padding: 0px; margin: 0px;\"/></p><p>&nbsp;<strong style=\"padding: 0px; margin: 0px;\">建议检测项目</strong>：<span style=\"padding: 0px; margin: 0px; line-height: 1.5;\">甲醛、苯、TVOC（可选：甲苯、二甲苯、氡、氨）</span></p><p><br/></p>', '', '1475992646');
INSERT INTO `xjl_page` VALUES ('60', '写字楼/办公室空气质量检测', '', '', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">目前，高档写字楼空气质量问题已是很普遍的问题，因为以往的空调设计更多考虑的是人们对温度和湿度的要求，并未太多在意室内空气污染对人体健康的危害。由于中央空调系统新风量不足，而大多数写字楼又以封闭空间为主，再加上装修污染的影响使办公室中的空气质量污染严重，长期工作和生活在这种环境下的人们会出现各种不适感，症状最多的是头痛、流泪、眼睛红肿、胸闷、易疲劳、烦躁、皮肤过敏等反应，世界卫生组织将此种现象称为”致病建筑物综合症“。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 办公室中的空气污染源多种多样，包括建筑装饰装修材料中含有的有毒有害气体、空气清新剂等诸多化学制剂散发出来的化学污染物、香烟烟雾、人体呼出的二氧化碳以及携带的微尘、微生物、细菌等。特别是随着办公室装修的日益豪华，多种建筑装饰材料盲目使用，使之成为最大的污染源。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 消除办公室室内空气污染，最有效的方式是通风换气，而在依赖空调系统的密闭空间，首先应采取措施控制污染源，减少污染物的散发。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">尧中写字楼/办公室空气质量检测参考标准</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：《民用建筑工程室内环境污染控制规范》 GB50325-2010</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 《室内空气质量标准》 GB/T18883-2002</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p><strong style=\"padding: 0px; margin: 0px;\">&nbsp;建议检测项目</strong>：<span style=\"padding: 0px; margin: 0px; line-height: 1.5;\">甲醛、苯、TVOC（可选：甲苯、二甲苯、氡、氨）</span></p><p><br/></p>', '', '1475992661');
INSERT INTO `xjl_page` VALUES ('59', '室内装修污染空气检测', '', '', '<p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">室内装修污染是因为各种建筑和装饰材料中含有各种有毒有害污染物造成的，选择豪华装修以及未大量使用环保材料都容易造成装修污染；即使全部采用环保材料，但如果使用过多其累加效用也会造成污染物超标，从而导致室内空气污染严重。住在这样的房间中，会导致住户产生胸闷、呼吸困难、抵抗力下降等各种疾病前兆，严重者会损伤肝脏、造血系统、神经系统、呼吸系统等。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">　　在现代城市中，室内空气污染的程度比户外高出很多倍，更重要的是80%以上的城市人口，七成多的时间是在室内度过。而老人、儿童、孕妇和慢性病病人，因为身体羸弱且在室内停留的时间比其他人群更长，受到室内环境污染的危害就更加显著。 　　</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; 我国发布的流行病学统计，我国白血病的自然发病率较高，每年约新增4万名白血病患者，其中50%是儿童，而且以2至7岁的儿童居多。家庭装修导致室内环境污染，被认为是导致城市白血病患儿增多的主要原因。2001年北京儿童医院统计就诊的城市白血病患儿中，有九成以上的患儿家庭在半年内装修过。2004年深圳儿童医院与有关部门曾对新增加的白血病患儿进行了家庭居住环境调查，发现90%的小患者家中在半年之内曾经装修过。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">室内装修污染主要污染物：</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); line-height: 28px; widows: 1; font-size: 12px; font-family: &quot;Arial Black&quot;; background-color: rgb(255, 255, 255);\"><strong style=\"padding: 0px; margin: 0px;\">甲醛</strong></span><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：甲醛是一种无色的强烈刺激性气体，已被世界卫生组织确定为致癌和致畸形物质。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">TVOC</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：挥发性有机物常用”VOC“表示，Volatile Organic Compound 三个词第一个字母的缩写，但有时也用总挥发性有机物”TVOC“来表示。TVOC是空气中三种有机污染物(多环芳烃、挥发性有机物和醛类化合物)中影响较为严重的一种。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">苯</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：苯为无色透明、有芳香味、易挥发的有毒液体，是煤焦油蒸馏或石油裂化的产物，常温下即可挥发、形成苯蒸气，温度愈高，挥发量愈大。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">氨</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：氨是一种无色且具有强烈刺激性臭味的气体，比空气轻（比重为0.5）。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><strong style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\">氡</strong><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">：氡是由镭衰变产生的自然界惟一的一种无色、无味、无臭的天然惰性气体。氡已被国际癌症研究机构(IARC)列入室内重要致癌物质，美国环保局也将氡列为最危险的致癌因子。</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p><strong style=\"padding: 0px; margin: 0px;\">&nbsp;尧中室内装修污染检测参考标准</strong>：<span style=\"padding: 0px; margin: 0px; line-height: 1.5;\">《民用建筑工程室内环境污染控制规范》 GB50325-2010</span></p><p><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;《室内空气质量标准》 GB/T18883-2002</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; widows: 1; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"/></p><p><strong style=\"padding: 0px; margin: 0px;\">&nbsp;建议检测项目</strong>：&nbsp;<span style=\"padding: 0px; margin: 0px; line-height: 1.5;\">甲醛、苯、TVOC（可选：甲苯、二甲苯、氡、氨）</span></p><p><br/></p>', '', '1475992675');

-- ----------------------------
-- Table structure for `xjl_photo`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_photo`;
CREATE TABLE `xjl_photo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_photo_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_photo_data`;
CREATE TABLE `xjl_photo_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imgs` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_photo_data
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_position`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_position`;
CREATE TABLE `xjl_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `modelid` char(30) NOT NULL DEFAULT '' COMMENT '模型id',
  `catid` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of xjl_position
-- ----------------------------
INSERT INTO `xjl_position` VALUES ('5', '1,3,4', '29,30,32', '首页视频推荐', '10', '', '0');
INSERT INTO `xjl_position` VALUES ('4', '3,4', '32', '首页幻灯', '10', '', '0');

-- ----------------------------
-- Table structure for `xjl_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_position_data`;
CREATE TABLE `xjl_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模型',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) NOT NULL DEFAULT '',
  `synedit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步编辑',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';

-- ----------------------------
-- Records of xjl_position_data
-- ----------------------------
INSERT INTO `xjl_position_data` VALUES ('15', '32', '4', 'content', '4', '1', 'a:6:{s:5:\"title\";s:1:\"1\";s:5:\"thumb\";s:50:\"/attachment/file/content/2016/10/57fc362865739.jpg\";s:9:\"inputtime\";i:1476146738;s:5:\"posid\";a:2:{i:0;s:2:\"-1\";i:1;s:1:\"4\";}s:3:\"url\";s:33:\"/index.php?a=shows&catid=32&id=15\";s:5:\"style\";s:0:\"\";}', '15', '0', '', '0');
INSERT INTO `xjl_position_data` VALUES ('13', '32', '4', 'content', '4', '1', 'a:6:{s:5:\"title\";s:1:\"3\";s:5:\"thumb\";s:50:\"/attachment/file/content/2016/10/57fc3603d11c3.jpg\";s:9:\"inputtime\";i:1476146695;s:5:\"posid\";a:2:{i:0;s:2:\"-1\";i:1;s:1:\"4\";}s:3:\"url\";s:33:\"/index.php?a=shows&catid=32&id=13\";s:5:\"style\";s:0:\"\";}', '13', '0', '', '0');
INSERT INTO `xjl_position_data` VALUES ('14', '32', '4', 'content', '4', '1', 'a:6:{s:5:\"title\";s:1:\"2\";s:5:\"thumb\";s:50:\"/attachment/file/content/2016/10/57fc36195034c.jpg\";s:9:\"inputtime\";i:1476146717;s:5:\"posid\";a:2:{i:0;s:2:\"-1\";i:1;s:1:\"4\";}s:3:\"url\";s:33:\"/index.php?a=shows&catid=32&id=14\";s:5:\"style\";s:0:\"\";}', '14', '0', '', '0');

-- ----------------------------
-- Table structure for `xjl_role`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_role`;
CREATE TABLE `xjl_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
-- Records of xjl_role
-- ----------------------------
INSERT INTO `xjl_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `xjl_role` VALUES ('2', '站点管理员', '1', '1', '站点管理员', '1329633722', '1399780945', '0');
INSERT INTO `xjl_role` VALUES ('3', '发布人员', '2', '1', '发布人员', '1329633733', '1399798954', '0');

-- ----------------------------
-- Table structure for `xjl_subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_subscribe`;
CREATE TABLE `xjl_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(12) NOT NULL COMMENT '手机号码',
  `status` tinyint(1) NOT NULL COMMENT '审核状态 0：待处理  1：已处理 ',
  `check_time` int(11) NOT NULL COMMENT '处理时间',
  `remark` text COMMENT '备注',
  `create_time` int(11) NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='预约表';

-- ----------------------------
-- Records of xjl_subscribe
-- ----------------------------
INSERT INTO `xjl_subscribe` VALUES ('6', '17721888895', '0', '0', '', '1476078888');

-- ----------------------------
-- Table structure for `xjl_tags`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_tags`;
CREATE TABLE `xjl_tags` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo简介',
  `style` char(5) NOT NULL DEFAULT '' COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`),
  KEY `usetimes` (`usetimes`,`listorder`),
  KEY `hits` (`hits`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- ----------------------------
-- Records of xjl_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_tags_content`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_tags_content`;
CREATE TABLE `xjl_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '信息地址',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`),
  KEY `tag` (`tag`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- ----------------------------
-- Records of xjl_tags_content
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_terms`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_terms`;
CREATE TABLE `xjl_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of xjl_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `xjl_urlrule`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_urlrule`;
CREATE TABLE `xjl_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `file` varchar(20) NOT NULL DEFAULT '' COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'url规则',
  `example` varchar(255) NOT NULL DEFAULT '' COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='内容模型URL规则';

-- ----------------------------
-- Records of xjl_urlrule
-- ----------------------------
INSERT INTO `xjl_urlrule` VALUES ('1', 'content', 'category', '0', 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1');
INSERT INTO `xjl_urlrule` VALUES ('2', 'content', 'category', '1', '{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml', '静态：news/china/1000.shtml');
INSERT INTO `xjl_urlrule` VALUES ('3', 'content', 'show', '1', '{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml', '静态：2010/catdir_07/1_2.shtml');
INSERT INTO `xjl_urlrule` VALUES ('4', 'content', 'show', '0', 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1');
INSERT INTO `xjl_urlrule` VALUES ('5', 'content', 'category', '1', 'news/{$catid}.shtml|news/{$catid}-{$page}.shtml', '静态：news/1.shtml');
INSERT INTO `xjl_urlrule` VALUES ('6', 'content', 'category', '0', 'list-{$catid}.html|list-{$catid}-{$page}.html', '伪静态：list-1-1.html');
INSERT INTO `xjl_urlrule` VALUES ('7', 'content', 'tags', '0', 'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}', '动态：index.php?a=tags&amp;tagid=1');
INSERT INTO `xjl_urlrule` VALUES ('8', 'content', 'tags', '0', 'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}', '动态：index.php?a=tags&amp;tag=标签');
INSERT INTO `xjl_urlrule` VALUES ('9', 'content', 'tags', '0', 'tag-{$tag}.html|tag-{$tag}-{$page}.html', '伪静态：tag-标签.html');
INSERT INTO `xjl_urlrule` VALUES ('10', 'content', 'tags', '0', 'tag-{$tagid}.html|tag-{$tagid}-{$page}.html', '伪静态：tag-1.html');
INSERT INTO `xjl_urlrule` VALUES ('11', 'content', 'index', '1', 'index.html|index_{$page}.html', '静态：index_2.html');
INSERT INTO `xjl_urlrule` VALUES ('12', 'content', 'index', '0', 'index.html|index_{$page}.html', '伪静态：index_2.html');
INSERT INTO `xjl_urlrule` VALUES ('13', 'content', 'index', '0', 'index.php|index.php?page={$page}', '动态：index.php?page=2');
INSERT INTO `xjl_urlrule` VALUES ('14', 'content', 'category', '1', 'download.shtml|download_{$page}.shtml', '静态：download.shtml');
INSERT INTO `xjl_urlrule` VALUES ('15', 'content', 'show', '1', '{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml', '静态：/父栏目/1.shtml');
INSERT INTO `xjl_urlrule` VALUES ('16', 'content', 'show', '1', '{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml', '示例：/栏目/1.html');

-- ----------------------------
-- Table structure for `xjl_user`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_user`;
CREATE TABLE `xjl_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称/姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `bind_account` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL DEFAULT '' COMMENT '证验码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text COMMENT '信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of xjl_user
-- ----------------------------
INSERT INTO `xjl_user` VALUES ('1', 'admin', '未知', 'e5c41a94ac9483762a920469ee997b1e', '', '1477897750', '127.0.0.1', '2rfwSx', 'admin@abc3210.com', '备注信息', '1475562390', '1475562390', '1', '1', '');

-- ----------------------------
-- Table structure for `xjl_video`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_video`;
CREATE TABLE `xjl_video` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_video
-- ----------------------------
INSERT INTO `xjl_video` VALUES ('1', '50', '测试', '', '/attachment/file/content/2016/10/57f5001bf3a77.png', '', '', '', '0', '/index.php?a=shows&catid=50&id=1', '0', '99', '1', 'admin', '1475674146', '1475674146', '0', '0', '0', '0', '0', '0', 'http://player.youku.com/player.php/sid/XNTMyNzQ1MjQw/v.swf');
INSERT INTO `xjl_video` VALUES ('2', '50', '测试2', '', '/attachment/file/content/2016/10/57f5003983597.png', '', '', '', '0', '/index.php?a=shows&catid=50&id=2', '0', '99', '1', 'admin', '1475674172', '1475674172', '0', '0', '0', '0', '0', '0', 'http://player.youku.com/player.php/sid/XNTMyODE3NTU2/v.swf');

-- ----------------------------
-- Table structure for `xjl_video_data`
-- ----------------------------
DROP TABLE IF EXISTS `xjl_video_data`;
CREATE TABLE `xjl_video_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of xjl_video_data
-- ----------------------------
INSERT INTO `xjl_video_data` VALUES ('1', '', '0', '0');
INSERT INTO `xjl_video_data` VALUES ('2', '', '0', '0');
