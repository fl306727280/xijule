/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : company

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-10-05 21:57:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yzjc_access`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_access`;
CREATE TABLE `yzjc_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of yzjc_access
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_admin_panel`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_admin_panel`;
CREATE TABLE `yzjc_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- ----------------------------
-- Records of yzjc_admin_panel
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_article`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_article`;
CREATE TABLE `yzjc_article` (
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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_article
-- ----------------------------
INSERT INTO `yzjc_article` VALUES ('43', '26', '测试', '', '', '', '测试', '/index.php?a=shows&catid=26&id=43', '0', '99', '1', '0', 'admin', '1475567110', '1475567110', '0', '', '', '18', '0', '18', '18', '18', '1475569728');
INSERT INTO `yzjc_article` VALUES ('44', '36', '测试政策法规', '', '', '', '测试', '/2016/policy_10/44.shtml', '0', '99', '1', '0', 'admin', '1475574269', '1475574269', '0', '', '', '20', '19', '1', '20', '20', '1475675828');
INSERT INTO `yzjc_article` VALUES ('45', '35', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '', '', '', '测试', '/2016/industry_10/45.shtml', '0', '99', '1', '0', 'admin', '1475574374', '1475574374', '0', '', '', '1', '0', '1', '1', '1', '1475675823');
INSERT INTO `yzjc_article` VALUES ('46', '36', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '', '', '', '测试', '/2016/policy_10/46.shtml', '0', '99', '1', '0', 'admin', '1475576251', '1475576251', '0', '', '', '9', '8', '1', '9', '9', '1475675826');
INSERT INTO `yzjc_article` VALUES ('54', '47', '内审员认证', '', '/attachment/file/content/2016/10/57f3b43ee1f15.jpg', '', '', '/2016/zizhizhengshu_10/54.shtml', '0', '99', '1', '0', 'admin', '1475589182', '1475589182', '0', '', '', '10', '5', '5', '10', '10', '1475675206');
INSERT INTO `yzjc_article` VALUES ('48', '28', '啊啊啊', '', '', '', '册是', '/2016/case_10/48.shtml', '0', '99', '1', '0', 'admin', '1475588859', '1475588859', '0', '', '', '5', '0', '5', '5', '5', '1475675203');
INSERT INTO `yzjc_article` VALUES ('49', '29', '测试', '', '', '', '三个师傅电话号', '/2016/service_10/49.shtml', '0', '99', '1', '0', 'admin', '1475588871', '1475588871', '0', '', '', '9', '2', '7', '9', '9', '1475675201');
INSERT INTO `yzjc_article` VALUES ('50', '30', '十多个地方和', '', '', '', '的返回非公开 ', '/2016/article_10/50.shtml', '0', '99', '1', '0', 'admin', '1475588883', '1475588883', '0', '', '', '5', '4', '1', '5', '5', '1475675208');
INSERT INTO `yzjc_article` VALUES ('51', '31', '阿萨德刚回到家', '', '', '', '收到回复哭了', '/2016/show_10/51.shtml', '0', '99', '1', '0', 'admin', '1475588896', '1475588896', '0', '', '', '1', '0', '1', '1', '1', '1475675209');
INSERT INTO `yzjc_article` VALUES ('52', '34', '如何动态', '', '', '', '回复有口语与', '/2016/enterprise_10/52.shtml', '0', '99', '1', '0', 'admin', '1475588927', '1475588927', '0', '', '', '1', '0', '1', '1', '1', '1475675817');
INSERT INTO `yzjc_article` VALUES ('55', '48', '联系我们', '', '/attachment/file/content/2016/10/57f3b98c35006.png', '', '四川尧中检测技术有限公司是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。主要检测业务...', '/index.php?a=shows&catid=48&id=55', '0', '1', '1', '0', 'admin', '1475592687', '1475592687', '0', '', '', '0', '0', '0', '0', '0', '0');
INSERT INTO `yzjc_article` VALUES ('56', '48', '企业文化', '', '', '', '尧中检测企业文化 企业文化，集中体现了一个企业经营管理的核心主张，被我公司视为企业的灵魂和核心价值体系，将其渗入到工作的各个方面，在此基础上建立起富有尧中独特的企业文化。                                     企业愿景      专注于业务服务领域，秉承“以客户需求为中心，为客户提供全面优质的服务及解决方案”，立志成为全国最优秀的机构之一。企业精神与时俱进，锐意进取。服务理念公正、科学、诚信、高效。管理理念...', '/2016/contactwe_10/56.shtml', '0', '99', '1', '0', 'admin', '1475593429', '1475593429', '0', '', '', '11', '4', '7', '11', '11', '1475675095');

-- ----------------------------
-- Table structure for `yzjc_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_article_data`;
CREATE TABLE `yzjc_article_data` (
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
-- Records of yzjc_article_data
-- ----------------------------
INSERT INTO `yzjc_article_data` VALUES ('43', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('44', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('45', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('46', '<p>测试</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('54', '<p><img src=\"/attachment/file/content/2016/10/57f3b43ee1f15.jpg\" width=\"830\" height=\"579\" alt=\"\"/><img src=\"/attachment/file/content/2016/10/57f3b43f31ad5.jpg\" width=\"830\" height=\"576\" alt=\"\" style=\"text-align: center;\"/><br/></p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('48', '<p>册是</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('49', '<p>三个师傅电话号&nbsp;</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('50', '<p>的返回非公开 &nbsp;</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('51', '<p>收到回复哭了</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('52', '<p>回复有口语与</p>', '2', '10000', '', '0', '1', '', '');
INSERT INTO `yzjc_article_data` VALUES ('55', '<p><img src=\"/attachment/file/content/2016/10/57f3b99029d38.jpg\" width=\"160\" height=\"94\" align=\"left\" alt=\"\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">四川尧中检测技术有限公司</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。</span></p><p><span style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 2; background-color: rgb(255, 255, 255);\"></span></p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\"><span style=\"padding: 0px; margin: 0px;\">主要检测业务以成都市为中心，辐射四川全省，继而涵盖全国。公司位于成都市成华区万宇路</span>200号，拥有200m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">办公场地及</span>500m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">宽敞明亮的检测场地</span>&nbsp;，实验室全部采用玻镁彩钢板间隔，分设仪器分析室、化学分析室、药品管理室和天平室等独立实验室，配备气相色谱仪、环境氡测量仪、恒流大气采样器、分光光度计、温湿度计等专业检测、分析仪器设备，均严格按国家标准进行环境质量检测。</p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\">公司拥有一支专业的检测队伍，主要检测力量由具有丰富经验的硕士研究生和大学本科生组成，技术和质量监管力量由经验丰富的工程师组成。同时公司还将不断引进各类优秀的专业技术人才，补充新鲜血液，壮大员工队伍。我们相信通过大家的共同努力，一定会为社会大众风险公正、科学的检测数据，提供诚信、高效的优质服务，我公司一定会朝着让每一位客户百分百满意的目标不断前进！</p><p></p>', '2', '10000', '', '0', '0', '', '');
INSERT INTO `yzjc_article_data` VALUES ('56', '<p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">尧中检测企业文化</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp; 企业文化，集中体现了一个企业经营管理的核心主张，被我公司视为企业的灵魂和核心价值体系，将其渗入到工作的各个方面，在此基础上建立起富有尧中独特的企业文化。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px;text-align: center;line-height: 1.5\"><span style=\"padding: 0px;font-size: 16px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></strong><strong style=\"padding: 0px;line-height: 1.5;text-align: center\"><span style=\"padding: 0px;font-size: 16px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;企业愿景</span></strong><strong style=\"padding: 0px;line-height: 1.5;text-align: center\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><span style=\"padding: 0px;font-size: 16px\">专注于业务服务领域，秉承“以客户需求为中心，为客户提供全面优质的服务及解决方案”，立志成为全国最优秀的机构之一。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">企业精神</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;与时俱进，锐意进取。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">服务理念</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;公正、科学、诚信、高效。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">管理理念</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">管理职责化，工作标准化，办事程序化。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">人才理念</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;&nbsp;&nbsp;任人唯贤，以宏伟的目标感召人、以丰厚的待遇吸引人、以优秀的文化指引人。</span></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><strong style=\"padding: 0px\"><span style=\"padding: 0px;font-size: 16px\">企业口号</span></strong></p><p style=\"padding: 0px;margin-top: 0px;margin-bottom: 0px;color: rgb(82, 82, 82);font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana;font-size: 14px;line-height: 28px;white-space: normal;text-align: center;background-color: rgb(255, 255, 255)\"><span style=\"padding: 0px;font-size: 16px\">尧中检测</span><span style=\"padding: 0px;font-size: 16px\">&nbsp;&nbsp;</span><span style=\"padding: 0px;font-size: 16px\">鉴证优质服务。</span></p><p><span style=\"padding: 0px;font-size: 16px\"><br/></span></p><p><br/></p>', '2', '10000', '', '0', '1', '', '');

-- ----------------------------
-- Table structure for `yzjc_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_attachment`;
CREATE TABLE `yzjc_attachment` (
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of yzjc_attachment
-- ----------------------------
INSERT INTO `yzjc_attachment` VALUES ('1', 'content', '32', 'banner1.jpg', 'content/2016/10/57f3638dd6d4a.jpg', '204145', 'jpg', '1', '0', '1', '1', '1475568525', '127.0.0.1', '1', '282875329db366717d09c383c02dbb05');
INSERT INTO `yzjc_attachment` VALUES ('2', 'content', '32', 'banner1.jpg', 'content/2016/10/57f36ec6ea32d.jpg', '204145', 'jpg', '1', '0', '1', '1', '1475571398', '127.0.0.1', '1', 'ce2daad5968552ab9664bb5390d254b8');
INSERT INTO `yzjc_attachment` VALUES ('3', 'content', '32', 'hz12.png', 'content/2016/10/57f37048d95ef.png', '18185', 'png', '1', '0', '1', '1', '1475571784', '127.0.0.1', '1', 'fd6fc3c1243afab72f22ef246df09a2a');
INSERT INTO `yzjc_attachment` VALUES ('4', 'content', '33', 'hz1.png', 'content/2016/10/57f374818ab62.png', '15869', 'png', '1', '0', '1', '1', '1475572865', '127.0.0.1', '1', 'a277594a9c255f51a86cc64e878e5fc9');
INSERT INTO `yzjc_attachment` VALUES ('5', 'content', '38', '20160919062401_74893.jpg', 'content/2016/10/57f3b2e045ade.jpg', '103363', 'jpg', '1', '0', '0', '1', '1475588832', '127.0.0.1', '1', '67d7ff5bf0a3dfcf5d60f5c74124ee65');
INSERT INTO `yzjc_attachment` VALUES ('6', 'content', '38', '20160919062419_35655.jpg', 'content/2016/10/57f3b2e0acb66.jpg', '127995', 'jpg', '1', '0', '0', '1', '1475588832', '127.0.0.1', '1', 'abb46dffc6c4e53ee1e6e2713219779a');
INSERT INTO `yzjc_attachment` VALUES ('7', 'content', '47', '20160919062401_74893.jpg', 'content/2016/10/57f3b43ee1f15.jpg', '103363', 'jpg', '1', '0', '0', '1', '1475589182', '127.0.0.1', '1', 'b54e08ccad27e7e78193c40471a553fb');
INSERT INTO `yzjc_attachment` VALUES ('8', 'content', '47', '20160919062419_35655.jpg', 'content/2016/10/57f3b43f31ad5.jpg', '127995', 'jpg', '1', '0', '0', '1', '1475589182', '127.0.0.1', '1', '203f46fb5738a8f1c02f67aa4993ccc3');
INSERT INTO `yzjc_attachment` VALUES ('9', 'content', '48', 'logo.png', 'content/2016/10/57f3b98c35006.png', '7069', 'png', '1', '0', '1', '1', '1475590540', '127.0.0.1', '1', '8c0045b06590205167755b75310bcad5');
INSERT INTO `yzjc_attachment` VALUES ('10', 'content', '48', '20160602072932_57559.jpg', 'content/2016/10/57f3b99029d38.jpg', '56882', 'jpg', '1', '0', '0', '1', '1475590544', '127.0.0.1', '1', '0f9b1d0c444e965ceafda5c4c7bc8ab5');
INSERT INTO `yzjc_attachment` VALUES ('11', 'content', '50', 'normal_234.png', 'content/2016/10/57f5001bf3a77.png', '20761', 'png', '1', '0', '1', '1', '1475674139', '127.0.0.1', '1', '9ef01c081c1069aaac6bf9cbe4915439');
INSERT INTO `yzjc_attachment` VALUES ('12', 'content', '50', 'normal_6861.png', 'content/2016/10/57f5003983597.png', '24826', 'png', '1', '0', '1', '1', '1475674169', '127.0.0.1', '1', 'b7609f19a9684cc4b85956f99ea4e7ea');
INSERT INTO `yzjc_attachment` VALUES ('13', 'content', '33', 'hz7.png', 'content/2016/10/57f504dc0e67f.png', '14494', 'png', '1', '0', '1', '1', '1475675356', '127.0.0.1', '1', 'f4c65ca4b9b2cb95ba0172914eab5c54');

-- ----------------------------
-- Table structure for `yzjc_attachment_index`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_attachment_index`;
CREATE TABLE `yzjc_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

-- ----------------------------
-- Records of yzjc_attachment_index
-- ----------------------------
INSERT INTO `yzjc_attachment_index` VALUES ('c-32-5', '1');
INSERT INTO `yzjc_attachment_index` VALUES ('c-32-1', '2');
INSERT INTO `yzjc_attachment_index` VALUES ('c-32-2', '3');
INSERT INTO `yzjc_attachment_index` VALUES ('c-33-3', '4');
INSERT INTO `yzjc_attachment_index` VALUES ('c-28-48', '5');
INSERT INTO `yzjc_attachment_index` VALUES ('c-28-48', '6');
INSERT INTO `yzjc_attachment_index` VALUES ('c-47-54', '7');
INSERT INTO `yzjc_attachment_index` VALUES ('c-47-54', '8');
INSERT INTO `yzjc_attachment_index` VALUES ('c-48-1', '9');
INSERT INTO `yzjc_attachment_index` VALUES ('c-48-1', '10');
INSERT INTO `yzjc_attachment_index` VALUES ('c-50-1', '11');
INSERT INTO `yzjc_attachment_index` VALUES ('c-50-2', '12');
INSERT INTO `yzjc_attachment_index` VALUES ('c-33-4', '13');

-- ----------------------------
-- Table structure for `yzjc_banner`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_banner`;
CREATE TABLE `yzjc_banner` (
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_banner
-- ----------------------------
INSERT INTO `yzjc_banner` VALUES ('1', '32', '0', '测试banner', '', '/attachment/file/content/2016/10/57f36ec6ea32d.jpg', '', '', '', '1', '/index.php?a=shows&catid=32&id=1', '0', '99', '1', '0', 'admin', '1475571407', '1475571407', '1', '0', '1', '1', '1', '1475572316');
INSERT INTO `yzjc_banner` VALUES ('2', '32', '0', '测试bannner2', '', '/attachment/file/content/2016/10/57f37048d95ef.png', '', '', '', '1', '/index.php?a=shows&catid=32&id=2', '0', '99', '1', '0', 'admin', '1475571791', '1475571791', '4', '0', '4', '4', '4', '1475593842');
INSERT INTO `yzjc_banner` VALUES ('3', '33', '0', '农业银行', '', '/attachment/file/content/2016/10/57f374818ab62.png', '', '', '', '0', 'http://www.abchina.com/cn/', '0', '99', '1', '1', 'admin', '1475572914', '1475572914', '0', '0', '0', '0', '0', '0');
INSERT INTO `yzjc_banner` VALUES ('4', '33', '0', '光大银行', '', '/attachment/file/content/2016/10/57f504dc0e67f.png', '', '', '', '0', 'http://www.cebbank.com/', '0', '99', '1', '1', 'admin', '1475675409', '1475675409', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `yzjc_banner_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_banner_data`;
CREATE TABLE `yzjc_banner_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_banner_data
-- ----------------------------
INSERT INTO `yzjc_banner_data` VALUES ('1', '', '0', '0');
INSERT INTO `yzjc_banner_data` VALUES ('2', '', '0', '0');
INSERT INTO `yzjc_banner_data` VALUES ('3', '', '0', '0');
INSERT INTO `yzjc_banner_data` VALUES ('4', '', '0', '0');

-- ----------------------------
-- Table structure for `yzjc_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_behavior`;
CREATE TABLE `yzjc_behavior` (
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
-- Records of yzjc_behavior
-- ----------------------------
INSERT INTO `yzjc_behavior` VALUES ('1', 'app_init', '应用初始化标签位', '应用初始化标签位', '1', '1', '1', '', '1381021393');
INSERT INTO `yzjc_behavior` VALUES ('2', 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', '1', '1', '1', '', '1381021411');
INSERT INTO `yzjc_behavior` VALUES ('3', 'app_begin', '应用开始标签位', '应用开始标签位', '1', '1', '1', '', '1381021424');
INSERT INTO `yzjc_behavior` VALUES ('4', 'action_name', '操作方法名标签位', '操作方法名标签位', '1', '1', '1', '', '1381021437');
INSERT INTO `yzjc_behavior` VALUES ('5', 'action_begin', '控制器开始标签位', '控制器开始标签位', '1', '1', '1', '', '1381021450');
INSERT INTO `yzjc_behavior` VALUES ('6', 'view_begin', '视图输出开始标签位', '视图输出开始标签位', '1', '1', '1', '', '1381021463');
INSERT INTO `yzjc_behavior` VALUES ('7', 'view_parse', '视图解析标签位', '视图解析标签位', '1', '1', '1', '', '1381021476');
INSERT INTO `yzjc_behavior` VALUES ('8', 'template_filter', '模板内容解析标签位', '模板内容解析标签位', '1', '1', '1', '', '1381021488');
INSERT INTO `yzjc_behavior` VALUES ('9', 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', '1', '1', '1', '', '1381021621');
INSERT INTO `yzjc_behavior` VALUES ('10', 'view_end', '视图输出结束标签位', '视图输出结束标签位', '1', '1', '1', '', '1381021631');
INSERT INTO `yzjc_behavior` VALUES ('11', 'action_end', '控制器结束标签位', '控制器结束标签位', '1', '1', '1', '', '1381021642');
INSERT INTO `yzjc_behavior` VALUES ('12', 'app_end', '应用结束标签位', '应用结束标签位', '1', '1', '1', '', '1381021654');
INSERT INTO `yzjc_behavior` VALUES ('13', 'appframe_rbac_init', '后台权限控制', '后台权限控制', '1', '1', '1', '', '1381023560');

-- ----------------------------
-- Table structure for `yzjc_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_behavior_log`;
CREATE TABLE `yzjc_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL DEFAULT '0' COMMENT '行为ID',
  `guid` char(50) NOT NULL DEFAULT '' COMMENT '标识',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- ----------------------------
-- Records of yzjc_behavior_log
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_behavior_rule`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_behavior_rule`;
CREATE TABLE `yzjc_behavior_rule` (
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
-- Records of yzjc_behavior_rule
-- ----------------------------
INSERT INTO `yzjc_behavior_rule` VALUES ('1', '1', '1', '', '', 'phpfile:BuildLiteBehavior', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('2', '3', '1', '', '', 'phpfile:ReadHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('3', '12', '1', '', '', 'phpfile:ShowPageTraceBehavior', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('4', '7', '1', '', '', 'phpfile:ParseTemplateBehavior', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('5', '8', '1', '', '', 'phpfile:ContentReplaceBehavior', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('6', '9', '1', '', '', 'phpfile:WriteHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('7', '1', '1', '', '', 'phpfile:AppInitBehavior|module:Common', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('8', '3', '1', '', '', 'phpfile:AppBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `yzjc_behavior_rule` VALUES ('9', '6', '1', '', '', 'phpfile:ViewBeginBehavior|module:Common', '0', '1381021954');

-- ----------------------------
-- Table structure for `yzjc_cache`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_cache`;
CREATE TABLE `yzjc_cache` (
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
-- Records of yzjc_cache
-- ----------------------------
INSERT INTO `yzjc_cache` VALUES ('1', 'Config', '网站配置', '', 'Config', 'config_cache', '', '1');
INSERT INTO `yzjc_cache` VALUES ('2', 'Module', '可用模块列表', '', 'Module', 'module_cache', '', '1');
INSERT INTO `yzjc_cache` VALUES ('3', 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', '1');
INSERT INTO `yzjc_cache` VALUES ('4', 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', '0');
INSERT INTO `yzjc_cache` VALUES ('5', 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', '0');
INSERT INTO `yzjc_cache` VALUES ('6', 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', '0');
INSERT INTO `yzjc_cache` VALUES ('7', 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', '0');
INSERT INTO `yzjc_cache` VALUES ('8', 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', '0');
INSERT INTO `yzjc_cache` VALUES ('9', 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', '0');

-- ----------------------------
-- Table structure for `yzjc_category`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_category`;
CREATE TABLE `yzjc_category` (
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
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of yzjc_category
-- ----------------------------
INSERT INTO `yzjc_category` VALUES ('47', 'content', '0', '1', '', '0', '0', '0', '47', '资质证书', '', '', '', 'zizhizhengshu', '/index.php?a=lists&catid=47', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '2', '1', '0', 'zizhizhengshu');
INSERT INTO `yzjc_category` VALUES ('28', 'content', '0', '1', '', '0', '0', '0', '28', '客户案例', '', '', '', 'case', '/index.php?a=lists&catid=28', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '3', '1', '0', 'kehuanli');
INSERT INTO `yzjc_category` VALUES ('29', 'content', '0', '1', '', '0', '0', '0', '29', '服务支持', '', '', '', 'service', '/index.php?a=lists&catid=29', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '4', '1', '0', 'fuwuzhichi');
INSERT INTO `yzjc_category` VALUES ('30', 'content', '0', '1', '', '0', '0', '0', '30', '检测项目', '', '', '', 'article', '/index.php?a=lists&catid=30', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '5', '1', '0', 'jiancexiangmu');
INSERT INTO `yzjc_category` VALUES ('31', 'content', '0', '1', '', '0', '0', '0', '31', '展示中心', '', '', '', 'show', '/index.php?a=lists&catid=31', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '6', '1', '0', 'zhanshizhongxin');
INSERT INTO `yzjc_category` VALUES ('32', 'content', '0', '4', '', '0', '0', '0', '32', 'banner上传', '', '', '', 'banner', '/index.php?a=lists&catid=32', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '99', '0', '0', 'bannershangchuan');
INSERT INTO `yzjc_category` VALUES ('33', 'content', '0', '4', '', '0', '0', '0', '33', '友情链接', '', '', '', 'friendship', '/index.php?a=lists&catid=33', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '98', '0', '0', 'youqinglianjie');
INSERT INTO `yzjc_category` VALUES ('34', 'content', '0', '1', '', '0', '0', '0', '34', '公司动态', '', '', '', 'enterprise', '/index.php?a=lists&catid=34', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '7', '0', '0', 'gongsidongtai');
INSERT INTO `yzjc_category` VALUES ('35', 'content', '0', '1', '', '0', '0', '0', '35', '行业动态', '', '', '', 'industry', '/index.php?a=lists&catid=35', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '8', '0', '0', 'xingyedongtai');
INSERT INTO `yzjc_category` VALUES ('36', 'content', '0', '1', '', '0', '0', '0', '36', '政策法规', '', '', '', 'policy', '/index.php?a=lists&catid=36', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '9', '0', '0', 'zhengcefagui');
INSERT INTO `yzjc_category` VALUES ('48', 'content', '0', '1', '', '0', '0', '0', '48', '关于我们', '', '', '', 'contactwe', '/index.php?a=lists&catid=48', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"1\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"3\";}', '1', '1', '0', 'guanyuwomen');
INSERT INTO `yzjc_category` VALUES ('49', 'content', '1', '5', '', '0', '0', '0', '49', '联系我们', '', '', '', 'contact', '/index.php?a=lists&catid=49', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:16:\"page_contact.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '10', '1', '0', 'lianxiwomen');
INSERT INTO `yzjc_category` VALUES ('50', 'content', '0', '7', '', '0', '0', '0', '50', '视频上传', '', '', '', 'video', '/index.php?a=lists&catid=50', '0', 'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '10', '0', '0', 'shipinshangchuan');

-- ----------------------------
-- Table structure for `yzjc_category_field`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_category_field`;
CREATE TABLE `yzjc_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- ----------------------------
-- Records of yzjc_category_field
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_category_priv`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_category_priv`;
CREATE TABLE `yzjc_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- ----------------------------
-- Records of yzjc_category_priv
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_company`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_company`;
CREATE TABLE `yzjc_company` (
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
-- Records of yzjc_company
-- ----------------------------
INSERT INTO `yzjc_company` VALUES ('1', '49', '0', '四川尧中检测技术有限公司', '', '/attachment/file/content/2016/10/57f3b98c35006.png', '', '', '四川尧中检测技术有限公司是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。主要检测业务...', '99', '0', '/index.php?a=shows&catid=48&id=1', '0', '1', 'admin', '1475590544', '1475673133', '30', '14', '16', '30', '30', '1475673214', '18113037097', '028-69218566', '028-69218566', '4006607097', 'zixun@scyaozhong.com ', '四川省 成都市 青羊区 清溪南街 16-18号', '104.029642', '30.683404');

-- ----------------------------
-- Table structure for `yzjc_company_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_company_data`;
CREATE TABLE `yzjc_company_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_company_data
-- ----------------------------
INSERT INTO `yzjc_company_data` VALUES ('1', '<p><img src=\"/attachment/file/content/2016/10/57f3b99029d38.jpg\" width=\"160\" height=\"94\" align=\"left\" alt=\"\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">四川尧中检测技术有限公司</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。</span></p><p><span style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 2; background-color: rgb(255, 255, 255);\"></span></p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\"><span style=\"padding: 0px; margin: 0px;\">主要检测业务以成都市为中心，辐射四川全省，继而涵盖全国。公司位于成都市成华区万宇路</span>200号，拥有200m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">办公场地及</span>500m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">宽敞明亮的检测场地</span>&nbsp;，实验室全部采用玻镁彩钢板间隔，分设仪器分析室、化学分析室、药品管理室和天平室等独立实验室，配备气相色谱仪、环境氡测量仪、恒流大气采样器、分光光度计、温湿度计等专业检测、分析仪器设备，均严格按国家标准进行环境质量检测。</p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\">公司拥有一支专业的检测队伍，主要检测力量由具有丰富经验的硕士研究生和大学本科生组成，技术和质量监管力量由经验丰富的工程师组成。同时公司还将不断引进各类优秀的专业技术人才，补充新鲜血液，壮大员工队伍。我们相信通过大家的共同努力，一定会为社会大众风险公正、科学的检测数据，提供诚信、高效的优质服务，我公司一定会朝着让每一位客户百分百满意的目标不断前进！</p><p><br/></p>', '', '0', '0');

-- ----------------------------
-- Table structure for `yzjc_config`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_config`;
CREATE TABLE `yzjc_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of yzjc_config
-- ----------------------------
INSERT INTO `yzjc_config` VALUES ('1', 'sitename', '网站名称', '1', '尧中检测');
INSERT INTO `yzjc_config` VALUES ('2', 'siteurl', '网站网址', '1', '/');
INSERT INTO `yzjc_config` VALUES ('3', 'sitefileurl', '附件地址', '1', '/attachment/file/');
INSERT INTO `yzjc_config` VALUES ('4', 'siteemail', '站点邮箱', '1', '123@123.com');
INSERT INTO `yzjc_config` VALUES ('6', 'siteinfo', '网站介绍', '1', '');
INSERT INTO `yzjc_config` VALUES ('7', 'sitekeywords', '网站关键字', '1', '尧中检测后台管理系统');
INSERT INTO `yzjc_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '1', '20240');
INSERT INTO `yzjc_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '1', 'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf');
INSERT INTO `yzjc_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '1', '1024');
INSERT INTO `yzjc_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '1', 'jpg|jpeg|gif');
INSERT INTO `yzjc_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '1', '1');
INSERT INTO `yzjc_config` VALUES ('13', 'watermarkminwidth', '水印-宽', '1', '300');
INSERT INTO `yzjc_config` VALUES ('14', 'watermarkminheight', '水印-高', '1', '100');
INSERT INTO `yzjc_config` VALUES ('15', 'watermarkimg', '水印图片', '1', '/statics/images/mark_bai.png');
INSERT INTO `yzjc_config` VALUES ('16', 'watermarkpct', '水印透明度', '1', '80');
INSERT INTO `yzjc_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '1', '85');
INSERT INTO `yzjc_config` VALUES ('18', 'watermarkpos', '水印位置', '1', '9');
INSERT INTO `yzjc_config` VALUES ('19', 'theme', '主题风格', '1', 'Default');
INSERT INTO `yzjc_config` VALUES ('20', 'ftpstatus', 'FTP上传', '1', '0');
INSERT INTO `yzjc_config` VALUES ('21', 'ftpuser', 'FTP用户名', '1', '');
INSERT INTO `yzjc_config` VALUES ('22', 'ftppassword', 'FTP密码', '1', '');
INSERT INTO `yzjc_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '1', '');
INSERT INTO `yzjc_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '1', '21');
INSERT INTO `yzjc_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '1', '1');
INSERT INTO `yzjc_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '1', '0');
INSERT INTO `yzjc_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '1', '10');
INSERT INTO `yzjc_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '1', '/');
INSERT INTO `yzjc_config` VALUES ('29', 'mail_type', '邮件发送模式', '1', '1');
INSERT INTO `yzjc_config` VALUES ('30', 'mail_server', '邮件服务器', '1', 'smtp.qq.com');
INSERT INTO `yzjc_config` VALUES ('31', 'mail_port', '邮件发送端口', '1', '25');
INSERT INTO `yzjc_config` VALUES ('32', 'mail_from', '发件人地址', '1', 'admin@abc3210.com');
INSERT INTO `yzjc_config` VALUES ('33', 'mail_auth', '密码验证', '1', '1');
INSERT INTO `yzjc_config` VALUES ('34', 'mail_user', '邮箱用户名', '1', '');
INSERT INTO `yzjc_config` VALUES ('35', 'mail_password', '邮箱密码', '1', '');
INSERT INTO `yzjc_config` VALUES ('36', 'mail_fname', '发件人名称', '1', '尧中检测管理员');
INSERT INTO `yzjc_config` VALUES ('37', 'domainaccess', '指定域名访问', '1', '0');
INSERT INTO `yzjc_config` VALUES ('38', 'generate', '是否生成首页', '1', '1');
INSERT INTO `yzjc_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '1', '11');
INSERT INTO `yzjc_config` VALUES ('40', 'indextp', '首页模板', '1', 'index.php');
INSERT INTO `yzjc_config` VALUES ('41', 'tagurl', 'TagURL规则', '1', '8');
INSERT INTO `yzjc_config` VALUES ('42', 'checkcode_type', '验证码类型', '1', '1');
INSERT INTO `yzjc_config` VALUES ('43', 'attachment_driver', '附件驱动', '1', 'Local');

-- ----------------------------
-- Table structure for `yzjc_config_field`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_config_field`;
CREATE TABLE `yzjc_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

-- ----------------------------
-- Records of yzjc_config_field
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_contact_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_contact_data`;
CREATE TABLE `yzjc_contact_data` (
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
-- Records of yzjc_contact_data
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_customlist`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_customlist`;
CREATE TABLE `yzjc_customlist` (
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
-- Records of yzjc_customlist
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_customtemp`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_customtemp`;
CREATE TABLE `yzjc_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `tempname` varchar(30) NOT NULL DEFAULT '' COMMENT '模板完整文件名',
  `temppath` varchar(200) NOT NULL DEFAULT '' COMMENT '模板生成路径',
  `temptext` mediumtext COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义模板表';

-- ----------------------------
-- Records of yzjc_customtemp
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_download`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_download`;
CREATE TABLE `yzjc_download` (
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
-- Records of yzjc_download
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_download_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_download_data`;
CREATE TABLE `yzjc_download_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_download_data
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_locking`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_locking`;
CREATE TABLE `yzjc_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `locktime` int(10) NOT NULL DEFAULT '0' COMMENT '锁定时间',
  KEY `userid` (`userid`),
  KEY `onlinetime` (`locktime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- ----------------------------
-- Records of yzjc_locking
-- ----------------------------
INSERT INTO `yzjc_locking` VALUES ('1', 'admin', '33', '4', '1475675575');
INSERT INTO `yzjc_locking` VALUES ('1', 'admin', '33', '4', '1475675416');

-- ----------------------------
-- Table structure for `yzjc_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_loginlog`;
CREATE TABLE `yzjc_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
-- Records of yzjc_loginlog
-- ----------------------------
INSERT INTO `yzjc_loginlog` VALUES ('1', 'admin', '1475562419', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yzjc_loginlog` VALUES ('2', 'admin', '1475665906', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yzjc_loginlog` VALUES ('3', 'admin', '1475666519', '127.0.0.1', '1', '密码保密', '用户名登录');

-- ----------------------------
-- Table structure for `yzjc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_menu`;
CREATE TABLE `yzjc_menu` (
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
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of yzjc_menu
-- ----------------------------
INSERT INTO `yzjc_menu` VALUES ('1', '缓存更新', '0', 'Admin', 'Index', 'cache', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('2', '我的面板', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('3', '设置', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('4', '个人信息', '2', 'Admin', 'Adminmanage', 'myinfo', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('5', '修改个人信息', '4', 'Admin', 'Adminmanage', 'myinfo', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('6', '修改密码', '4', 'Admin', 'Adminmanage', 'chanpass', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('7', '系统设置', '3', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('8', '站点配置', '7', 'Admin', 'Config', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('9', '邮箱配置', '8', 'Admin', 'Config', 'mail', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('10', '附件配置', '8', 'Admin', 'Config', 'attach', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('11', '高级配置', '8', 'Admin', 'Config', 'addition', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('12', '扩展配置', '8', 'Admin', 'Config', 'extend', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('13', '行为管理', '7', 'Admin', 'Behavior', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('14', '行为日志', '13', 'Admin', 'Behavior', 'logs', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('15', '编辑行为', '13', 'Admin', 'Behavior', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('16', '删除行为', '13', 'Admin', 'Behavior', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('17', '后台菜单管理', '7', 'Admin', 'Menu', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('18', '添加菜单', '17', 'Admin', 'Menu', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('19', '修改', '17', 'Admin', 'Menu', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('20', '删除', '17', 'Admin', 'Menu', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('21', '管理员设置', '3', 'Admin', 'Management', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'Management', 'manager', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('23', '添加管理员', '22', 'Admin', 'Management', 'adminadd', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('24', '编辑管理信息', '22', 'Admin', 'Management', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('25', '删除管理员', '22', 'Admin', 'Management', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('26', '角色管理', '21', 'Admin', 'Rbac', 'rolemanage', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('27', '添加角色', '26', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('28', '删除角色', '26', 'Admin', 'Rbac', 'roledelete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('29', '角色编辑', '26', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('30', '角色授权', '26', 'Admin', 'Rbac', 'authorize', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('31', '日志管理', '3', 'Admin', 'Logs', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('32', '后台登陆日志', '31', 'Admin', 'Logs', 'loginlog', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('33', '后台操作日志', '31', 'Admin', 'Logs', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('34', '删除一个月前的登陆日志', '32', 'Admin', 'Logs', 'deleteloginlog', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('35', '删除一个月前的操作日志', '33', 'Admin', 'Logs', 'deletelog', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('36', '添加行为', '13', 'Admin', 'Behavior', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('37', '模块', '0', 'Admin', 'Module', 'index', '', '0', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('38', '在线云平台', '37', 'Admin', 'Cloud', 'index', '', '0', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('39', '模块商店', '38', 'Admin', 'Moduleshop', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('40', '插件商店', '38', 'Admin', 'Addonshop', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('41', '在线升级', '38', 'Admin', 'Upgrade', 'index', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('42', '本地模块管理', '37', 'Admin', 'Module', 'local', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('43', '模块管理', '42', 'Admin', 'Module', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('44', '内容', '0', 'Content', 'Index', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('45', '内容管理', '44', 'Content', 'Content', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('46', '内容相关设置', '44', 'Content', 'Category', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('47', '栏目列表', '46', 'Content', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('48', '添加栏目', '47', 'Content', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('49', '添加单页', '47', 'Content', 'Category', 'singlepage', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('50', '添加外部链接栏目', '47', 'Content', 'Category', 'wadd', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('51', '编辑栏目', '47', 'Content', 'Category', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('52', '删除栏目', '47', 'Content', 'Category', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('53', '栏目属性转换', '47', 'Content', 'Category', 'categoryshux', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('54', '模型管理', '46', 'Content', 'Models', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('55', '创建新模型', '54', 'Content', 'Models', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('56', '删除模型', '54', 'Content', 'Models', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('57', '编辑模型', '54', 'Content', 'Models', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('58', '模型禁用', '54', 'Content', 'Models', 'disabled', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('59', '模型导入', '54', 'Content', 'Models', 'import', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('60', '字段管理', '54', 'Content', 'Field', 'index', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('61', '字段修改', '60', 'Content', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('62', '字段删除', '60', 'Content', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('63', '字段状态', '60', 'Content', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('64', '模型预览', '60', 'Content', 'Field', 'priview', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('65', '管理内容', '45', 'Content', 'Content', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('66', '附件管理', '45', 'Attachment', 'Atadmin', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('67', '删除', '66', 'Attachment', 'Atadmin', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('68', '发布管理', '44', 'Content', 'Createhtml', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('69', '批量更新栏目页', '68', 'Content', 'Createhtml', 'category', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('70', '生成首页', '68', 'Content', 'Createhtml', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('71', '批量更新URL', '68', 'Content', 'Createhtml', 'update_urls', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('72', '批量更新内容页', '68', 'Content', 'Createhtml', 'update_show', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('73', '刷新自定义页面', '68', 'Template', 'Custompage', 'createhtml', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('74', 'URL规则管理', '46', 'Content', 'Urlrule', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('75', '添加规则', '74', 'Content', 'Urlrule', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('76', '编辑', '74', 'Content', 'Urlrule', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('77', '删除', '74', 'Content', 'Urlrule', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('78', '推荐位管理', '46', 'Content', 'Position', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('79', '信息管理', '78', 'Content', 'Position', 'item', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('80', '添加推荐位', '78', 'Content', 'Position', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('81', '修改推荐位', '78', 'Content', 'Position', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('82', '删除推荐位', '78', 'Content', 'Position', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('83', '信息编辑', '79', 'Content', 'Position', 'item_manage', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('84', '信息排序', '79', 'Content', 'Position', 'item_listorder', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('85', '数据重建', '78', 'Content', 'Position', 'rebuilding', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('86', 'Tags管理', '45', 'Content', 'Tags', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('87', '修改', '86', 'Content', 'Tags', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('88', '删除', '86', 'Content', 'Tags', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('89', 'Tags数据重建', '86', 'Content', 'Tags', 'create', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('90', '界面', '0', 'Template', 'Style', 'index', '', '0', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('91', '模板管理', '90', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('92', '模板风格', '91', 'Template', 'Style', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('93', '添加模板页', '92', 'Template', 'Style', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('94', '删除模板', '92', 'Template', 'Style', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('95', '修改模板', '92', 'Template', 'Style', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('96', '主题管理', '91', 'Template', 'Theme', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('97', '主题更换', '96', 'Template', 'Theme', 'chose', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('98', '自定义页面', '90', 'Template', 'Custompage', 'index', '', '0', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('99', '自定义页面', '98', 'Template', 'Custompage', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('100', '添加自定义页面', '99', 'Template', 'Custompage', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('101', '删除自定义页面', '99', 'Template', 'Custompage', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('102', '编辑自定义页面', '99', 'Template', 'Custompage', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('103', '自定义列表', '98', 'Template', 'Customlist', 'index', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('104', '添加列表', '103', 'Template', 'Customlist', 'add', '', '1', '1', '', '0');
INSERT INTO `yzjc_menu` VALUES ('105', '删除列表', '103', 'Template', 'Customlist', 'delete', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('106', '编辑列表', '103', 'Template', 'Customlist', 'edit', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('107', '生成列表', '103', 'Template', 'Customlist', 'generate', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('108', '安装模块', '39', 'Admin', 'Moduleshop', 'install', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('109', '升级模块', '39', 'Admin', 'Moduleshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('110', '安装插件', '40', 'Admin', 'Addonshop', 'install', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('111', '升级插件', '40', 'Admin', 'Addonshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `yzjc_menu` VALUES ('112', '栏目授权', '26', 'Admin', 'Rbac', 'setting_cat_priv', '', '1', '0', '', '0');

-- ----------------------------
-- Table structure for `yzjc_model`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_model`;
CREATE TABLE `yzjc_model` (
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
-- Records of yzjc_model
-- ----------------------------
INSERT INTO `yzjc_model` VALUES ('1', '文章模型', '文章模型', 'article', '', '1403150253', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `yzjc_model` VALUES ('2', '下载模型', '下载模型', 'download', '', '1403153866', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `yzjc_model` VALUES ('3', '图片模型', '图片模型', 'photo', '', '1403153881', '0', '1', '0', '', '', '', '', '', '0', '0');
INSERT INTO `yzjc_model` VALUES ('4', 'banner', 'banner', 'banner', '', '1475571143', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `yzjc_model` VALUES ('5', '企业信息', '企业信息资料', 'company', '', '1475582717', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `yzjc_model` VALUES ('7', '视频管理', '', 'video', '', '1475673505', '0', '0', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `yzjc_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_model_field`;
CREATE TABLE `yzjc_model_field` (
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
-- Records of yzjc_model_field
-- ----------------------------
INSERT INTO `yzjc_model_field` VALUES ('1', '1', 'status', '状态', '', '', '0', '2', '', '', 'box', 'a:8:{s:7:\"options\";s:0:\"\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('2', '1', 'username', '用户名', '', '', '0', '20', '', '', 'text', 'a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('3', '1', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', 'a:3:{s:4:\"size\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('4', '1', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('5', '1', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:10:{s:7:\"options\";s:32:\"允许评论|1\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('6', '1', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('7', '1', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('8', '1', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('9', '1', 'url', 'URL', '', '', '0', '100', '', '', 'text', 'a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('10', '1', 'listorder', '排序', '', '', '0', '6', '', '', 'number', 'a:7:{s:9:\"minnumber\";s:0:\"\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('11', '1', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('12', '1', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('13', '1', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('15', '1', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('16', '1', 'keywords', '关键词', '多关之间用空格或者“,”隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('17', '1', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('18', '1', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('19', '1', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('20', '1', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:7:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:0:\"\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('21', '1', 'copyfrom', '来源', '', '', '0', '0', '', '', 'copyfrom', 'a:4:{s:12:\"defaultvalue\";s:0:\"\";s:5:\"width\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('26', '2', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('27', '2', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('28', '2', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('29', '2', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('24', '1', 'prefix', '自定义文件名', '', '', '0', '255', '', '', 'text', 'a:5:{s:4:\"size\";s:3:\"180\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '17', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('66', '3', 'prefix', '自定义文件名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '8', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('25', '2', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('65', '2', 'prefix', '自定义文件名', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"180\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '17', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('31', '2', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('32', '2', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('33', '2', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('34', '2', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('35', '2', 'relation', '相关下载', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关信息\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('36', '2', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('37', '2', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('38', '2', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('39', '2', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('40', '2', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('41', '2', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('42', '2', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('43', '2', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('45', '3', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('46', '3', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('47', '3', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('48', '3', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('49', '3', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('67', '2', 'download', '文件下载', '', '', '0', '0', '', '', 'downfiles', 'a:9:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:10:\"statistics\";s:0:\"\";s:12:\"downloadlink\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('51', '3', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('52', '3', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('53', '3', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('54', '3', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('55', '3', 'relation', '相关图片', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关信息\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('56', '3', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('57', '3', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('59', '3', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('60', '3', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('61', '3', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('62', '3', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('63', '3', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('68', '3', 'imgs', '图片列表', '', '', '0', '0', '', '', 'images', 'a:8:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:9:\"watermark\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '0', '0', '8', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('69', '4', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('70', '4', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('71', '4', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('72', '4', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('73', '4', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('75', '4', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('76', '4', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('77', '4', 'url', 'URL', '', '', '0', '100', '', '', 'text', 'a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '1', '0', '1', '12', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('78', '4', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('80', '4', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('81', '4', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('82', '4', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('83', '4', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('84', '4', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('85', '4', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('86', '4', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('87', '4', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('89', '5', 'status', '状态', '', '', '0', '2', '', '', 'box', 'a:8:{s:7:\"options\";s:0:\"\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('90', '5', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('92', '5', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('93', '5', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('95', '5', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('96', '5', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('97', '5', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('98', '5', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('100', '5', 'thumb', 'Logo', '', '', '0', '100', '', '', 'image', 'a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('101', '5', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('102', '5', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('103', '5', 'title', '公司名称', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', 'a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('104', '5', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('105', '5', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('106', '5', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('107', '5', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('108', '5', 'content', '企业介绍', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:7:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:0:\"\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('109', '5', 'mobile', '手机', '', '', '0', '0', '/^(1)[0-9]{10}$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('110', '5', 'phone', '电话', '', '', '0', '0', '/^[0-9-]{6,13}$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('111', '5', 'chuanz', '传真', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('112', '5', 'hotline', '全国服务热线', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('113', '5', 'email', '邮箱', '', '', '0', '0', '/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('114', '5', 'address', '地址', '', '', '0', '0', '', '', 'omnipotent', 'a:7:{s:8:\"formtext\";s:4904:\"<script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=B3f7707c25da5b29a6ff69618788a296\"></script>\n<input type=\"text\" name=\"info[address]\" id=\"address\" style=\"width:280px;\" value=\"{$data.address}\" class=\"input\">\n<input type=\"hidden\" value=\"{$data.lng}\" name=\"info[lng]\" id=\"lng\"/>\n<input type=\"hidden\" value=\"{$data.lat}\" name=\"info[lat]\" id=\"lat\"/>\n<div id=\"allmap\" class=\"addbmdmap\" style=\"height:438px;\" ></div>\n<script type=\"text/javascript\">\n    var lng = \"{$data.lng}\";\n    var lat = \"{$data.lat}\";\n    var map = new BMap.Map(\"allmap\");\n    if(lng==\'\' && lat==\'\'){\n        var point = new BMap.Point(104.026623,30.676945);\n    }else{\n        var point = new BMap.Point(lng,lat);\n    }\n    var geoc = new BMap.Geocoder();\n    //map.enableScrollWheelZoom(true);\n    map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用\n    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用\n    map.centerAndZoom(point, 16);\n    map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件\n    if(lng!=\'\' && lat!=\'\'){\n       // var myIcon = new BMap.Icon(\"http://developer.baidu.com/map/jsdemo/img/fox.gif\", new BMap.Size(300,157));\n        var marker1 = new BMap.Marker(point/*,{icon:myIcon}*/);  // 创建标注\n        map.addOverlay(marker1);\n        marker1.enableDragging();// 将标注添加到地图中\n        marker1.addEventListener(\"dragend\", function(a){\n            $(\'#lng\').val(a.point.lng);\n            $(\'#lat\').val(a.point.lat);\n            var pt = a.point;\n            geoc.getLocation(pt, function(rs){\n                var addComp = rs.addressComponents;\n                $(\'#address\').val(addComp.province + \" \" + addComp.city + \" \" + addComp.district + \" \" + addComp.street + \" \" + addComp.streetNumber);\n            });\n        });\n   }\n\n\n\n\n	function myFun(result){\n		var cityName = result.name;\n		map.setCenter(cityName);\n	}\n\n\n	//点击生成经纬度\n	map.addEventListener(\"click\",function(e){\n		var lng = e.point.lng;\n		var lat = e.point.lat;\n		$(\'#lng\').val(lng);\n		$(\'#lat\').val(lat);\n		var ptr = e.point;\n		geoc.getLocation(ptr, function(rs){\n			var addComp = rs.addressComponents;\n			$(\'#address\').val(addComp.province + \" \" + addComp.city + \" \" + addComp.district + \" \" + addComp.street + \" \" + addComp.streetNumber);\n		});\n		map.removeOverlay(marker1);  //删除原先的标注点\n		if(mak){ map.removeOverlay(mak);}\n	   //创建小狐狸\n		var pt = new BMap.Point(e.point.lng, e.point.lat);\n\n		//var myIcon = new BMap.Icon(\"http://developer.baidu.com/map/jsdemo/img/fox.gif\", new BMap.Size(300,157));\n		var marker2 = new BMap.Marker(pt/*,{icon:myIcon}*/);  // 创建标注\n		marker1 = marker2;   //把新标注点存放入marker1\n		map.addOverlay(marker2);   //创建一个标注点\n		marker2.enableDragging();// 将标注添加到地图中\n		marker2.addEventListener(\"dragend\", function(a){\n			$(\'#lng\').val(a.point.lng);\n			$(\'#lat\').val(a.point.lat);\n			var pt = a.point;\n			geoc.getLocation(pt, function(rs){\n				var addComp = rs.addressComponents;\n				$(\'#address\').val(addComp.province + \" \" + addComp.city + \" \" + addComp.district + \" \" + addComp.street + \" \" + addComp.streetNumber);\n			});\n		});\n\n	});\n	function G(id) {\n		return document.getElementById(id);\n	}\n\n	var ac = new BMap.Autocomplete(    //建立一个自动完成的对象\n		{\"input\" : \"address\"\n		,\"location\" : map\n	});\n\n	ac.addEventListener(\"onhighlight\", function(e) {  //鼠标放在下拉列表上的事件\n		var str = \"\";\n		var _value = e.fromitem.value;\n		var value = \"\";\n		if (e.fromitem.index > -1) {\n			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;\n		}    \n		str = \"FromItem<br />index = \" + e.fromitem.index + \"<br />value = \" + value;\n		\n		value = \"\";\n		if (e.toitem.index > -1) {\n			_value = e.toitem.value;\n			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;\n		}    \n		str += \"<br />ToItem<br />index = \" + e.toitem.index + \"<br />value = \" + value;\n		G(\"searchResultPanel\").innerHTML = str;\n	});\n\n		var myValue;\n		ac.addEventListener(\"onconfirm\", function(e) {    //鼠标点击下拉列表后的事件\n		var _value = e.item.value;\n			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;\n			G(\"searchResultPanel\").innerHTML =\"onconfirm<br />index = \" + e.item.index + \"<br />myValue = \" + myValue;\n			\n			setPlace();\n		});\n		var mak;\n		function setPlace(){\n			map.clearOverlays();    //清除地图上所有覆盖物\n			function myFun(){\n				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果\n				map.centerAndZoom(pp, 18);\n				 mak =new BMap.Marker(pp);\n				map.addOverlay(mak);    //添加标注\n			}\n			var local = new BMap.LocalSearch(map, { //智能搜索\n			  onSearchComplete: myFun\n			});\n			local.search(myValue);\n		}\n   \n \n</script>\";s:9:\"fieldtype\";s:7:\"varchar\";s:9:\"minnumber\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('115', '5', 'lng', '经度', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('116', '5', 'lat', '纬度', '', '', '0', '0', '', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '5', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('140', '7', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('141', '7', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('143', '7', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('144', '7', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('146', '7', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('147', '7', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('148', '7', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('149', '7', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('160', '7', 'video_url', '视频路径', '请填写完整的视频播放路径，否则视频将无法正常播放', '', '0', '0', '/^http:\\/\\//', '', 'text', 'a:7:{s:4:\"size\";s:3:\"280\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '0', '4', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('151', '7', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('152', '7', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('154', '7', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('155', '7', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('156', '7', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '1', '0');
INSERT INTO `yzjc_model_field` VALUES ('157', '7', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yzjc_model_field` VALUES ('158', '7', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '1', '0');

-- ----------------------------
-- Table structure for `yzjc_module`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_module`;
CREATE TABLE `yzjc_module` (
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
-- Records of yzjc_module
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_operationlog`;
CREATE TABLE `yzjc_operationlog` (
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
) ENGINE=MyISAM AUTO_INCREMENT=874 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of yzjc_operationlog
-- ----------------------------
INSERT INTO `yzjc_operationlog` VALUES ('1', '1', '1475562635', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Config&menuid=8');
INSERT INTO `yzjc_operationlog` VALUES ('2', '1', '1475562661', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：mail<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Config&a=mail&menuid=8');
INSERT INTO `yzjc_operationlog` VALUES ('3', '1', '1475562682', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：attach<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yzjc_operationlog` VALUES ('4', '1', '1475562689', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：mail<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Config&a=mail&menuid=8');
INSERT INTO `yzjc_operationlog` VALUES ('5', '1', '1475562713', '127.0.0.1', '1', '提示语：修改成功，请及时更新缓存！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Config&a=addition&menuid=8');
INSERT INTO `yzjc_operationlog` VALUES ('6', '1', '1475562721', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('7', '1', '1475562722', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('8', '1', '1475562723', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('9', '1', '1475562726', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('10', '1', '1475562726', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('11', '1', '1475562727', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('12', '1', '1475562728', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('13', '1', '1475562728', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('14', '1', '1475562729', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('15', '1', '1475562729', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('16', '1', '1475562729', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('17', '1', '1475562730', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('18', '1', '1475562730', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('19', '1', '1475563177', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('20', '1', '1475563178', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('21', '1', '1475563179', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('22', '1', '1475563182', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('23', '1', '1475563183', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('24', '1', '1475563183', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('25', '1', '1475563184', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('26', '1', '1475563184', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('27', '1', '1475563185', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('28', '1', '1475563185', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('29', '1', '1475563186', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('30', '1', '1475563186', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('31', '1', '1475563186', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('32', '1', '1475563193', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('33', '1', '1475563596', '127.0.0.1', '1', '提示语：保存成功！<br/>模块：Template,控制器：Style,方法：edit<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?g=template&m=style&a=edit&dir=Default-Content-&file=footer.php');
INSERT INTO `yzjc_operationlog` VALUES ('34', '1', '1475563657', '127.0.0.1', '1', '提示语：保存成功！<br/>模块：Template,控制器：Style,方法：edit<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?g=template&m=style&a=edit&dir=Default-Content-&file=footer.php');
INSERT INTO `yzjc_operationlog` VALUES ('35', '1', '1475563806', '127.0.0.1', '1', '提示语：保存成功！<br/>模块：Template,控制器：Style,方法：edit<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?g=template&m=style&a=edit&dir=Default-Content-&file=header.php');
INSERT INTO `yzjc_operationlog` VALUES ('36', '1', '1475563983', '127.0.0.1', '1', '提示语：保存成功！<br/>模块：Template,控制器：Style,方法：edit<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?g=template&m=style&a=edit&dir=Default-Content-&file=header.php');
INSERT INTO `yzjc_operationlog` VALUES ('37', '1', '1475564975', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('38', '1', '1475565029', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('39', '1', '1475565085', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('40', '1', '1475565119', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('41', '1', '1475565326', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('42', '1', '1475565490', '127.0.0.1', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('43', '1', '1475565525', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=edit&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('44', '1', '1475565554', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=edit&catid=2');
INSERT INTO `yzjc_operationlog` VALUES ('45', '1', '1475565593', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=edit&catid=3');
INSERT INTO `yzjc_operationlog` VALUES ('46', '1', '1475565639', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=edit&catid=4');
INSERT INTO `yzjc_operationlog` VALUES ('47', '1', '1475565697', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=edit&catid=5');
INSERT INTO `yzjc_operationlog` VALUES ('48', '1', '1475565739', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=edit&catid=6');
INSERT INTO `yzjc_operationlog` VALUES ('49', '1', '1475565751', '127.0.0.1', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('50', '1', '1475565757', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">25</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('51', '1', '1475565758', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('52', '1', '1475565769', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=9');
INSERT INTO `yzjc_operationlog` VALUES ('53', '1', '1475565770', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=9');
INSERT INTO `yzjc_operationlog` VALUES ('54', '1', '1475565777', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=9');
INSERT INTO `yzjc_operationlog` VALUES ('55', '1', '1475565782', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=24');
INSERT INTO `yzjc_operationlog` VALUES ('56', '1', '1475565786', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=25');
INSERT INTO `yzjc_operationlog` VALUES ('57', '1', '1475565790', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=22');
INSERT INTO `yzjc_operationlog` VALUES ('58', '1', '1475565792', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=22');
INSERT INTO `yzjc_operationlog` VALUES ('59', '1', '1475565794', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=22');
INSERT INTO `yzjc_operationlog` VALUES ('60', '1', '1475565795', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=22');
INSERT INTO `yzjc_operationlog` VALUES ('61', '1', '1475565807', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('62', '1', '1475565807', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">24</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('63', '1', '1475565808', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('64', '1', '1475565814', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('65', '1', '1475565814', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">23</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('66', '1', '1475565815', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('67', '1', '1475565823', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('68', '1', '1475565823', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">22</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('69', '1', '1475565823', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('70', '1', '1475565829', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('71', '1', '1475565829', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">21</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('72', '1', '1475565829', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('73', '1', '1475565835', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('74', '1', '1475565838', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('75', '1', '1475565838', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('76', '1', '1475565840', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('77', '1', '1475565843', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('78', '1', '1475565844', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('79', '1', '1475565845', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('80', '1', '1475565847', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('81', '1', '1475565847', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('82', '1', '1475565848', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('83', '1', '1475565849', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('84', '1', '1475565849', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('85', '1', '1475565850', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('86', '1', '1475565850', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('87', '1', '1475565858', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('88', '1', '1475565890', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('89', '1', '1475565890', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">20</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('90', '1', '1475565891', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('91', '1', '1475565895', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('92', '1', '1475565895', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">19</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('93', '1', '1475565896', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('94', '1', '1475565901', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('95', '1', '1475565901', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">18</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('96', '1', '1475565902', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('97', '1', '1475566113', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=11');
INSERT INTO `yzjc_operationlog` VALUES ('98', '1', '1475566115', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=11');
INSERT INTO `yzjc_operationlog` VALUES ('99', '1', '1475566124', '127.0.0.1', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('100', '1', '1475566135', '127.0.0.1', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('101', '1', '1475566147', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=10');
INSERT INTO `yzjc_operationlog` VALUES ('102', '1', '1475566149', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=10');
INSERT INTO `yzjc_operationlog` VALUES ('103', '1', '1475566151', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=10');
INSERT INTO `yzjc_operationlog` VALUES ('104', '1', '1475566155', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=10');
INSERT INTO `yzjc_operationlog` VALUES ('105', '1', '1475566163', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('106', '1', '1475566163', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">17</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('107', '1', '1475566164', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('108', '1', '1475566168', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('109', '1', '1475566168', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">16</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('110', '1', '1475566168', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('111', '1', '1475566172', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('112', '1', '1475566385', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=add&catid=12');
INSERT INTO `yzjc_operationlog` VALUES ('113', '1', '1475566397', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('114', '1', '1475566399', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('115', '1', '1475566401', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('116', '1', '1475566404', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('117', '1', '1475566425', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=12');
INSERT INTO `yzjc_operationlog` VALUES ('118', '1', '1475566433', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=14');
INSERT INTO `yzjc_operationlog` VALUES ('119', '1', '1475566441', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=16');
INSERT INTO `yzjc_operationlog` VALUES ('120', '1', '1475566445', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=17');
INSERT INTO `yzjc_operationlog` VALUES ('121', '1', '1475566451', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=18');
INSERT INTO `yzjc_operationlog` VALUES ('122', '1', '1475566461', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=21');
INSERT INTO `yzjc_operationlog` VALUES ('123', '1', '1475566469', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('124', '1', '1475566469', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">15</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('125', '1', '1475566470', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('126', '1', '1475566473', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('127', '1', '1475566473', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">14</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('128', '1', '1475566474', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('129', '1', '1475566478', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('130', '1', '1475566478', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('131', '1', '1475566479', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('132', '1', '1475566483', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('133', '1', '1475566483', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('134', '1', '1475566483', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('135', '1', '1475566487', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('136', '1', '1475566487', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('137', '1', '1475566487', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('138', '1', '1475566491', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('139', '1', '1475566491', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">10</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('140', '1', '1475566492', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('141', '1', '1475566496', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('142', '1', '1475566496', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">9</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('143', '1', '1475566496', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('144', '1', '1475566501', '127.0.0.1', '0', '提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('145', '1', '1475566511', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=19');
INSERT INTO `yzjc_operationlog` VALUES ('146', '1', '1475566516', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('147', '1', '1475566516', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">8</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('148', '1', '1475566517', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('149', '1', '1475566524', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('150', '1', '1475566524', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">7</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('151', '1', '1475566525', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('152', '1', '1475566530', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('153', '1', '1475566530', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('154', '1', '1475566531', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('155', '1', '1475566534', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('156', '1', '1475566537', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('157', '1', '1475566539', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('158', '1', '1475566541', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('159', '1', '1475566543', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('160', '1', '1475566548', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('161', '1', '1475566548', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('162', '1', '1475566549', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('163', '1', '1475566553', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('164', '1', '1475566553', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('165', '1', '1475566553', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('166', '1', '1475566554', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('167', '1', '1475566554', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('168', '1', '1475566555', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('169', '1', '1475566555', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('170', '1', '1475566556', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('171', '1', '1475566556', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('172', '1', '1475566557', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('173', '1', '1475566566', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('174', '1', '1475566639', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=edit&catid=1&id=41');
INSERT INTO `yzjc_operationlog` VALUES ('175', '1', '1475566742', '127.0.0.1', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?a=category&m=Createhtml&g=Content&modelid=');
INSERT INTO `yzjc_operationlog` VALUES ('176', '1', '1475566742', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=createhtml&a=category');
INSERT INTO `yzjc_operationlog` VALUES ('177', '1', '1475566748', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=createhtml&a=update_urls&menuid=71');
INSERT INTO `yzjc_operationlog` VALUES ('178', '1', '1475566752', '127.0.0.1', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=createhtml&a=category&menuid=69');
INSERT INTO `yzjc_operationlog` VALUES ('179', '1', '1475566752', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=createhtml&a=category');
INSERT INTO `yzjc_operationlog` VALUES ('180', '1', '1475566757', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=createhtml&a=update_urls&menuid=71');
INSERT INTO `yzjc_operationlog` VALUES ('181', '1', '1475566764', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php');
INSERT INTO `yzjc_operationlog` VALUES ('182', '1', '1475566774', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=createhtml&a=update_urls&menuid=71');
INSERT INTO `yzjc_operationlog` VALUES ('183', '1', '1475566780', '127.0.0.1', '1', '提示语：首页更新成功！<br/>模块：Content,控制器：Createhtml,方法：index<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=createhtml&menuid=70');
INSERT INTO `yzjc_operationlog` VALUES ('184', '1', '1475566807', '127.0.0.1', '0', '提示语：该栏目无须生成！<br/>模块：Content,控制器：Createhtml,方法：categoryhtml<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('185', '1', '1475566837', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=1');
INSERT INTO `yzjc_operationlog` VALUES ('186', '1', '1475566841', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=classlist&catid=2');
INSERT INTO `yzjc_operationlog` VALUES ('187', '1', '1475566853', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('188', '1', '1475566854', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">5</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('189', '1', '1475566854', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('190', '1', '1475566857', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('191', '1', '1475566857', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">4</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('192', '1', '1475566857', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('193', '1', '1475566862', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('194', '1', '1475566862', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">3</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('195', '1', '1475566863', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('196', '1', '1475566865', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('197', '1', '1475566865', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">2</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('198', '1', '1475566866', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('199', '1', '1475566868', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('200', '1', '1475566868', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">1</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('201', '1', '1475566869', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('202', '1', '1475566872', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('203', '1', '1475566872', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('204', '1', '1475567079', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('205', '1', '1475567086', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category');
INSERT INTO `yzjc_operationlog` VALUES ('206', '1', '1475567086', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('207', '1', '1475567110', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=content&a=add&catid=26');
INSERT INTO `yzjc_operationlog` VALUES ('208', '1', '1475567352', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('209', '1', '1475567897', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('210', '1', '1475567898', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?m=index&a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('211', '1', '1475567898', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('212', '1', '1475567902', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('213', '1', '1475567902', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('214', '1', '1475567904', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('215', '1', '1475567905', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('216', '1', '1475567906', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('217', '1', '1475567907', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('218', '1', '1475567908', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('219', '1', '1475567909', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('220', '1', '1475567910', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('221', '1', '1475567911', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('222', '1', '1475568442', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('223', '1', '1475568543', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=32');
INSERT INTO `yzjc_operationlog` VALUES ('224', '1', '1475568946', '127.0.0.1', '1', '提示语：删除成功！<font color=\\\"#FF0000\\\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=position&menuid=78');
INSERT INTO `yzjc_operationlog` VALUES ('225', '1', '1475568949', '127.0.0.1', '1', '提示语：删除成功！<font color=\\\"#FF0000\\\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Position');
INSERT INTO `yzjc_operationlog` VALUES ('226', '1', '1475568951', '127.0.0.1', '1', '提示语：删除成功！<font color=\\\"#FF0000\\\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Position');
INSERT INTO `yzjc_operationlog` VALUES ('227', '1', '1475569011', '127.0.0.1', '1', '提示语：添加成功！<font color=\"#FF0000\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Position&a=add&menuid=78');
INSERT INTO `yzjc_operationlog` VALUES ('228', '1', '1475569061', '127.0.0.1', '1', '提示语：添加成功！<font color=\"#FF0000\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Position&a=add&menuid=78');
INSERT INTO `yzjc_operationlog` VALUES ('229', '1', '1475569074', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=edit&catid=32&id=5');
INSERT INTO `yzjc_operationlog` VALUES ('230', '1', '1475571079', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">7</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('231', '1', '1475571080', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('232', '1', '1475571144', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Models&a=add&menuid=54');
INSERT INTO `yzjc_operationlog` VALUES ('233', '1', '1475571171', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('234', '1', '1475571184', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('235', '1', '1475571219', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('236', '1', '1475571226', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('237', '1', '1475571232', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('238', '1', '1475571245', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('239', '1', '1475571250', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('240', '1', '1475571282', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=32');
INSERT INTO `yzjc_operationlog` VALUES ('241', '1', '1475571287', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('242', '1', '1475571288', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('243', '1', '1475571289', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('244', '1', '1475571292', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('245', '1', '1475571293', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('246', '1', '1475571293', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('247', '1', '1475571294', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('248', '1', '1475571294', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('249', '1', '1475571295', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('250', '1', '1475571295', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('251', '1', '1475571296', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('252', '1', '1475571296', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('253', '1', '1475571297', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('254', '1', '1475571315', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('255', '1', '1475571325', '127.0.0.1', '0', '提示语：删除失败！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=classlist&catid=32');
INSERT INTO `yzjc_operationlog` VALUES ('256', '1', '1475571329', '127.0.0.1', '0', '提示语：删除失败！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=classlist&catid=32');
INSERT INTO `yzjc_operationlog` VALUES ('257', '1', '1475571408', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=32');
INSERT INTO `yzjc_operationlog` VALUES ('258', '1', '1475571469', '127.0.0.1', '1', '提示语：更新成功！<font color=\\\"#FF0000\\\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Position&a=edit&posid=4');
INSERT INTO `yzjc_operationlog` VALUES ('259', '1', '1475571499', '127.0.0.1', '1', '提示语：更新成功！<font color=\\\"#FF0000\\\">请更新缓存！</font><br/>模块：Content,控制器：Position,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Position&a=edit&posid=5');
INSERT INTO `yzjc_operationlog` VALUES ('260', '1', '1475571503', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('261', '1', '1475571504', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('262', '1', '1475571504', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('263', '1', '1475571509', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('264', '1', '1475571509', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('265', '1', '1475571510', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('266', '1', '1475571510', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('267', '1', '1475571511', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('268', '1', '1475571511', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('269', '1', '1475571512', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('270', '1', '1475571512', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('271', '1', '1475571513', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('272', '1', '1475571513', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('273', '1', '1475571539', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=edit&catid=32&id=1');
INSERT INTO `yzjc_operationlog` VALUES ('274', '1', '1475571791', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=32');
INSERT INTO `yzjc_operationlog` VALUES ('275', '1', '1475572761', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('276', '1', '1475572817', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=33');
INSERT INTO `yzjc_operationlog` VALUES ('277', '1', '1475572914', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=33');
INSERT INTO `yzjc_operationlog` VALUES ('278', '1', '1475573594', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('279', '1', '1475573720', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('280', '1', '1475573800', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('281', '1', '1475573800', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('282', '1', '1475573801', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('283', '1', '1475573804', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('284', '1', '1475573805', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('285', '1', '1475573805', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('286', '1', '1475573806', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('287', '1', '1475573807', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('288', '1', '1475573808', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('289', '1', '1475573809', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('290', '1', '1475573810', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('291', '1', '1475573811', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('292', '1', '1475573811', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('293', '1', '1475573814', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('294', '1', '1475573843', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('295', '1', '1475573844', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('296', '1', '1475574269', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=36');
INSERT INTO `yzjc_operationlog` VALUES ('297', '1', '1475574374', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=35');
INSERT INTO `yzjc_operationlog` VALUES ('298', '1', '1475574828', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('299', '1', '1475575986', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Config&menuid=8');
INSERT INTO `yzjc_operationlog` VALUES ('300', '1', '1475576252', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=36');
INSERT INTO `yzjc_operationlog` VALUES ('301', '1', '1475578639', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('302', '1', '1475578649', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('303', '1', '1475578650', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('304', '1', '1475578651', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('305', '1', '1475578655', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('306', '1', '1475578656', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('307', '1', '1475578657', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('308', '1', '1475578658', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('309', '1', '1475578659', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('310', '1', '1475578660', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('311', '1', '1475578661', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('312', '1', '1475578662', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('313', '1', '1475578663', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('314', '1', '1475578664', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('315', '1', '1475582469', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('316', '1', '1475582471', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('317', '1', '1475582472', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('318', '1', '1475582473', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('319', '1', '1475582476', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('320', '1', '1475582477', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('321', '1', '1475582478', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('322', '1', '1475582478', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('323', '1', '1475582479', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('324', '1', '1475582479', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('325', '1', '1475582480', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('326', '1', '1475582481', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('327', '1', '1475582481', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('328', '1', '1475582482', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('329', '1', '1475582540', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=26');
INSERT INTO `yzjc_operationlog` VALUES ('330', '1', '1475582567', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('331', '1', '1475582567', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('332', '1', '1475582717', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Models&a=add&menuid=54');
INSERT INTO `yzjc_operationlog` VALUES ('333', '1', '1475582735', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('334', '1', '1475582751', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('335', '1', '1475582796', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=108&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('336', '1', '1475582913', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('337', '1', '1475583032', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('338', '1', '1475583044', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=109&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('339', '1', '1475583097', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('340', '1', '1475583190', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=109&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('341', '1', '1475583201', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=110&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('342', '1', '1475583210', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=111&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('343', '1', '1475583280', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('344', '1', '1475583289', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=109&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('345', '1', '1475583392', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('346', '1', '1475583449', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('347', '1', '1475583505', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('348', '1', '1475583536', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('349', '1', '1475583565', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('350', '1', '1475583568', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('351', '1', '1475583609', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('352', '1', '1475583626', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('353', '1', '1475583685', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=106&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('354', '1', '1475583890', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('355', '1', '1475583898', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('356', '1', '1475583931', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=117&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('357', '1', '1475583964', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=117&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('358', '1', '1475583969', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('359', '1', '1475583974', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('360', '1', '1475583985', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('361', '1', '1475583991', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('362', '1', '1475583997', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('363', '1', '1475584008', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('364', '1', '1475584014', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('365', '1', '1475584020', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('366', '1', '1475584026', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('367', '1', '1475584031', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('368', '1', '1475584049', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('369', '1', '1475584053', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('370', '1', '1475584064', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('371', '1', '1475584080', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('372', '1', '1475584118', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=89&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('373', '1', '1475584131', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('374', '1', '1475584137', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('375', '1', '1475584141', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('376', '1', '1475584321', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=89&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('377', '1', '1475584363', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=100&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('378', '1', '1475584374', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('379', '1', '1475584381', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('380', '1', '1475584450', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=26');
INSERT INTO `yzjc_operationlog` VALUES ('381', '1', '1475584455', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('382', '1', '1475584456', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('383', '1', '1475584456', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('384', '1', '1475584581', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('385', '1', '1475584585', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('386', '1', '1475584586', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('387', '1', '1475584609', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('388', '1', '1475584609', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('389', '1', '1475584609', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('390', '1', '1475584641', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('391', '1', '1475584696', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=37');
INSERT INTO `yzjc_operationlog` VALUES ('392', '1', '1475584701', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('393', '1', '1475584702', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('394', '1', '1475584744', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=37');
INSERT INTO `yzjc_operationlog` VALUES ('395', '1', '1475584749', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('396', '1', '1475584749', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('397', '1', '1475584767', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('398', '1', '1475584772', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('399', '1', '1475584773', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('400', '1', '1475584773', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('401', '1', '1475584776', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('402', '1', '1475584776', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('403', '1', '1475584777', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('404', '1', '1475584778', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('405', '1', '1475584778', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('406', '1', '1475584779', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('407', '1', '1475584779', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('408', '1', '1475584780', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('409', '1', '1475584780', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('410', '1', '1475584781', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('411', '1', '1475585064', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=37');
INSERT INTO `yzjc_operationlog` VALUES ('412', '1', '1475585070', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('413', '1', '1475585070', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('414', '1', '1475585087', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=37');
INSERT INTO `yzjc_operationlog` VALUES ('415', '1', '1475585305', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('416', '1', '1475585306', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('417', '1', '1475585306', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('418', '1', '1475585310', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('419', '1', '1475585310', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('420', '1', '1475585311', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('421', '1', '1475585311', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('422', '1', '1475585312', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('423', '1', '1475585312', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('424', '1', '1475585313', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('425', '1', '1475585313', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('426', '1', '1475585314', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('427', '1', '1475585314', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('428', '1', '1475585323', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('429', '1', '1475585324', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('430', '1', '1475585357', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('431', '1', '1475585358', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('432', '1', '1475585359', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('433', '1', '1475585362', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('434', '1', '1475585363', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('435', '1', '1475585363', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('436', '1', '1475585364', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('437', '1', '1475585364', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('438', '1', '1475585365', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('439', '1', '1475585365', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('440', '1', '1475585366', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('441', '1', '1475585366', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('442', '1', '1475585367', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('443', '1', '1475585508', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('444', '1', '1475585512', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('445', '1', '1475585515', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('446', '1', '1475585526', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('447', '1', '1475585606', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('448', '1', '1475585623', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('449', '1', '1475585629', '127.0.0.1', '0', '提示语：只有终极栏目可以发布文章！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Content&a=public_categorys');
INSERT INTO `yzjc_operationlog` VALUES ('450', '1', '1475585642', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('451', '1', '1475586054', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('452', '1', '1475586054', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('453', '1', '1475586055', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('454', '1', '1475586058', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('455', '1', '1475586059', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('456', '1', '1475586060', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('457', '1', '1475586060', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('458', '1', '1475586061', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('459', '1', '1475586061', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('460', '1', '1475586062', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('461', '1', '1475586062', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('462', '1', '1475586063', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('463', '1', '1475586063', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('464', '1', '1475586325', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('465', '1', '1475586326', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('466', '1', '1475586326', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('467', '1', '1475586330', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('468', '1', '1475586330', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('469', '1', '1475586331', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('470', '1', '1475586331', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('471', '1', '1475586332', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('472', '1', '1475586333', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('473', '1', '1475586334', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('474', '1', '1475586334', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('475', '1', '1475586335', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('476', '1', '1475586335', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('477', '1', '1475586336', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('478', '1', '1475586378', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('479', '1', '1475586379', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('480', '1', '1475586380', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('481', '1', '1475586383', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('482', '1', '1475586384', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('483', '1', '1475586384', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('484', '1', '1475586385', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('485', '1', '1475586386', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('486', '1', '1475586386', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('487', '1', '1475586387', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('488', '1', '1475586388', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('489', '1', '1475586388', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('490', '1', '1475586389', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('491', '1', '1475586687', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('492', '1', '1475586688', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">10</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('493', '1', '1475586688', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('494', '1', '1475586755', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('495', '1', '1475586759', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('496', '1', '1475586759', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('497', '1', '1475586780', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('498', '1', '1475586781', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('499', '1', '1475586782', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('500', '1', '1475586785', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('501', '1', '1475586786', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('502', '1', '1475586786', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('503', '1', '1475586787', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('504', '1', '1475586787', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('505', '1', '1475586788', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('506', '1', '1475586788', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('507', '1', '1475586789', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('508', '1', '1475586789', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('509', '1', '1475586790', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('510', '1', '1475587151', '127.0.0.1', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：classlist<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Content&a=public_categorys');
INSERT INTO `yzjc_operationlog` VALUES ('511', '1', '1475587750', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('512', '1', '1475587872', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&parentid=30');
INSERT INTO `yzjc_operationlog` VALUES ('513', '1', '1475587876', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('514', '1', '1475587876', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('515', '1', '1475587917', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('516', '1', '1475587919', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('517', '1', '1475587920', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('518', '1', '1475587920', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('519', '1', '1475587925', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('520', '1', '1475587926', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('521', '1', '1475587928', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('522', '1', '1475587929', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('523', '1', '1475587930', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('524', '1', '1475587932', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('525', '1', '1475587933', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('526', '1', '1475587935', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('527', '1', '1475587936', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('528', '1', '1475587937', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('529', '1', '1475588019', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('530', '1', '1475588093', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&parentid=31');
INSERT INTO `yzjc_operationlog` VALUES ('531', '1', '1475588097', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">15</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('532', '1', '1475588098', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('533', '1', '1475588111', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('534', '1', '1475588161', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=40');
INSERT INTO `yzjc_operationlog` VALUES ('535', '1', '1475588173', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=39');
INSERT INTO `yzjc_operationlog` VALUES ('536', '1', '1475588226', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">15</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('537', '1', '1475588226', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('538', '1', '1475588328', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('539', '1', '1475588328', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">14</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('540', '1', '1475588329', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('541', '1', '1475588333', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('542', '1', '1475588333', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('543', '1', '1475588334', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('544', '1', '1475588338', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('545', '1', '1475588345', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('546', '1', '1475588351', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('547', '1', '1475588351', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('548', '1', '1475588352', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('549', '1', '1475588359', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('550', '1', '1475588359', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('551', '1', '1475588360', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('552', '1', '1475588364', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('553', '1', '1475588421', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('554', '1', '1475588424', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('555', '1', '1475588424', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('556', '1', '1475588426', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('557', '1', '1475588430', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('558', '1', '1475588431', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('559', '1', '1475588432', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('560', '1', '1475588433', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('561', '1', '1475588434', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('562', '1', '1475588435', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('563', '1', '1475588436', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('564', '1', '1475588437', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('565', '1', '1475588438', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('566', '1', '1475588439', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('567', '1', '1475588449', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('568', '1', '1475588523', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('569', '1', '1475588550', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('570', '1', '1475588575', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('571', '1', '1475588609', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('572', '1', '1475588615', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">15</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('573', '1', '1475588615', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('574', '1', '1475588692', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('575', '1', '1475588692', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">14</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('576', '1', '1475588693', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('577', '1', '1475588699', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('578', '1', '1475588699', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('579', '1', '1475588700', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('580', '1', '1475588704', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('581', '1', '1475588704', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('582', '1', '1475588705', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('583', '1', '1475588710', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('584', '1', '1475588710', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('585', '1', '1475588711', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('586', '1', '1475588714', '127.0.0.1', '1', '提示语：栏目属性转换成功！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('587', '1', '1475588859', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=28');
INSERT INTO `yzjc_operationlog` VALUES ('588', '1', '1475588871', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=29');
INSERT INTO `yzjc_operationlog` VALUES ('589', '1', '1475588883', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=30');
INSERT INTO `yzjc_operationlog` VALUES ('590', '1', '1475588886', '127.0.0.1', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：classlist<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Content&a=classlist&catid=39');
INSERT INTO `yzjc_operationlog` VALUES ('591', '1', '1475588897', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=31');
INSERT INTO `yzjc_operationlog` VALUES ('592', '1', '1475588927', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=34');
INSERT INTO `yzjc_operationlog` VALUES ('593', '1', '1475589035', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=classlist&catid=38');
INSERT INTO `yzjc_operationlog` VALUES ('594', '1', '1475589045', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=classlist&catid=38');
INSERT INTO `yzjc_operationlog` VALUES ('595', '1', '1475589054', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('596', '1', '1475589054', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">10</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('597', '1', '1475589055', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('598', '1', '1475589123', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('599', '1', '1475589133', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('600', '1', '1475589136', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('601', '1', '1475589137', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('602', '1', '1475589183', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=47');
INSERT INTO `yzjc_operationlog` VALUES ('603', '1', '1475589647', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=103&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('604', '1', '1475589677', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('605', '1', '1475589681', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('606', '1', '1475589712', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('607', '1', '1475589712', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('608', '1', '1475589714', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('609', '1', '1475589718', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('610', '1', '1475589719', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('611', '1', '1475589720', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('612', '1', '1475589721', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('613', '1', '1475589722', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('614', '1', '1475589723', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('615', '1', '1475589724', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('616', '1', '1475589725', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('617', '1', '1475589726', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('618', '1', '1475589727', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('619', '1', '1475589819', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=37');
INSERT INTO `yzjc_operationlog` VALUES ('620', '1', '1475589883', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('621', '1', '1475589883', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">10</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('622', '1', '1475589884', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('623', '1', '1475589940', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('624', '1', '1475589947', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">11</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('625', '1', '1475589948', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('626', '1', '1475590057', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('627', '1', '1475590057', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('628', '1', '1475590059', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('629', '1', '1475590061', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('630', '1', '1475590062', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('631', '1', '1475590062', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('632', '1', '1475590063', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('633', '1', '1475590063', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('634', '1', '1475590064', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('635', '1', '1475590065', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('636', '1', '1475590065', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('637', '1', '1475590066', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('638', '1', '1475590067', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('639', '1', '1475590067', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('640', '1', '1475590182', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=103&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('641', '1', '1475590219', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('642', '1', '1475590226', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('643', '1', '1475590244', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('644', '1', '1475590423', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=118&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('645', '1', '1475590544', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=48');
INSERT INTO `yzjc_operationlog` VALUES ('646', '1', '1475591106', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=edit&catid=48&id=1');
INSERT INTO `yzjc_operationlog` VALUES ('647', '1', '1475591584', '127.0.0.1', '0', '提示语：该栏目不存在！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Content&a=public_categorys');
INSERT INTO `yzjc_operationlog` VALUES ('648', '1', '1475591672', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('649', '1', '1475591675', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('650', '1', '1475591676', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('651', '1', '1475591683', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('652', '1', '1475591730', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Models&a=add&menuid=54');
INSERT INTO `yzjc_operationlog` VALUES ('653', '1', '1475591899', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('654', '1', '1475591900', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('655', '1', '1475591900', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('656', '1', '1475591904', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('657', '1', '1475591904', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('658', '1', '1475591905', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('659', '1', '1475591905', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('660', '1', '1475591906', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('661', '1', '1475591906', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('662', '1', '1475591907', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('663', '1', '1475591907', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('664', '1', '1475591908', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('665', '1', '1475591908', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('666', '1', '1475592004', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('667', '1', '1475592006', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('668', '1', '1475592007', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('669', '1', '1475592007', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('670', '1', '1475592011', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('671', '1', '1475592011', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('672', '1', '1475592012', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('673', '1', '1475592013', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('674', '1', '1475592013', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('675', '1', '1475592014', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('676', '1', '1475592014', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('677', '1', '1475592015', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('678', '1', '1475592015', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('679', '1', '1475592016', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('680', '1', '1475592093', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('681', '1', '1475592231', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('682', '1', '1475592239', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=103&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('683', '1', '1475592687', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('684', '1', '1475592838', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('685', '1', '1475592871', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('686', '1', '1475592952', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('687', '1', '1475593010', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('688', '1', '1475593161', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('689', '1', '1475593169', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('690', '1', '1475593175', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('691', '1', '1475593293', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('692', '1', '1475593299', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('693', '1', '1475593303', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('694', '1', '1475593370', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('695', '1', '1475593396', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('696', '1', '1475593430', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=48');
INSERT INTO `yzjc_operationlog` VALUES ('697', '1', '1475593491', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('698', '1', '1475593506', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('699', '1', '1475593533', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('700', '1', '1475593533', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('701', '1', '1475593676', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=48');
INSERT INTO `yzjc_operationlog` VALUES ('702', '1', '1475593680', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('703', '1', '1475593681', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('704', '1', '1475593751', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=48');
INSERT INTO `yzjc_operationlog` VALUES ('705', '1', '1475593754', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('706', '1', '1475593754', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('707', '1', '1475593790', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('708', '1', '1475593797', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('709', '1', '1475593797', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('710', '1', '1475593816', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `yzjc_operationlog` VALUES ('711', '1', '1475593816', '127.0.0.1', '1', '提示语：开始更新 ..关于我们 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls');
INSERT INTO `yzjc_operationlog` VALUES ('712', '1', '1475593817', '127.0.0.1', '1', '提示语：开始更新 ..资质证书 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `yzjc_operationlog` VALUES ('713', '1', '1475593817', '127.0.0.1', '1', '提示语：开始更新 ..客户案例 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `yzjc_operationlog` VALUES ('714', '1', '1475593818', '127.0.0.1', '1', '提示语：开始更新 ..服务支持 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `yzjc_operationlog` VALUES ('715', '1', '1475593818', '127.0.0.1', '1', '提示语：开始更新 ..检测项目 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `yzjc_operationlog` VALUES ('716', '1', '1475593819', '127.0.0.1', '1', '提示语：开始更新 ..展示中心 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `yzjc_operationlog` VALUES ('717', '1', '1475593819', '127.0.0.1', '1', '提示语：开始更新 ..公司动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=5');
INSERT INTO `yzjc_operationlog` VALUES ('718', '1', '1475593820', '127.0.0.1', '1', '提示语：开始更新 ..行业动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=6');
INSERT INTO `yzjc_operationlog` VALUES ('719', '1', '1475593820', '127.0.0.1', '1', '提示语：开始更新 ..政策法规 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=7');
INSERT INTO `yzjc_operationlog` VALUES ('720', '1', '1475593821', '127.0.0.1', '1', '提示语：开始更新 ..友情链接 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=8');
INSERT INTO `yzjc_operationlog` VALUES ('721', '1', '1475593821', '127.0.0.1', '1', '提示语：开始更新 ..banner上传 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=9');
INSERT INTO `yzjc_operationlog` VALUES ('722', '1', '1475593822', '127.0.0.1', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=10');
INSERT INTO `yzjc_operationlog` VALUES ('723', '1', '1475593827', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&menuid=72');
INSERT INTO `yzjc_operationlog` VALUES ('724', '1', '1475593827', '127.0.0.1', '1', '提示语：开始更新 ..关于我们 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show');
INSERT INTO `yzjc_operationlog` VALUES ('725', '1', '1475593828', '127.0.0.1', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `yzjc_operationlog` VALUES ('726', '1', '1475593835', '127.0.0.1', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `yzjc_operationlog` VALUES ('727', '1', '1475593836', '127.0.0.1', '1', '提示语：联系我们更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category');
INSERT INTO `yzjc_operationlog` VALUES ('728', '1', '1475593836', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category&set_catid=1&pagesize=10&dosubmit=1&modelid=0&referer=');
INSERT INTO `yzjc_operationlog` VALUES ('729', '1', '1475593869', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('730', '1', '1475593872', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">12</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&');
INSERT INTO `yzjc_operationlog` VALUES ('731', '1', '1475593873', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('732', '1', '1475666272', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php');
INSERT INTO `yzjc_operationlog` VALUES ('733', '1', '1475666869', '127.0.0.1', '0', '提示语：该菜单下还有子菜单，无法删除！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Menu&menuid=17');
INSERT INTO `yzjc_operationlog` VALUES ('734', '1', '1475666889', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Menu&a=edit&id=38');
INSERT INTO `yzjc_operationlog` VALUES ('735', '1', '1475666902', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('736', '1', '1475666903', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('737', '1', '1475666904', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('738', '1', '1475666904', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('739', '1', '1475666906', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('740', '1', '1475666906', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('741', '1', '1475666906', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('742', '1', '1475666907', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('743', '1', '1475666907', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('744', '1', '1475666907', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('745', '1', '1475666908', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('746', '1', '1475666908', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('747', '1', '1475666908', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('748', '1', '1475666909', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('749', '1', '1475666942', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Menu&a=edit&id=37');
INSERT INTO `yzjc_operationlog` VALUES ('750', '1', '1475667885', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('751', '1', '1475668289', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=139&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('752', '1', '1475668312', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('753', '1', '1475668323', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('754', '1', '1475668617', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('755', '1', '1475669730', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=114&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('756', '1', '1475669758', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('757', '1', '1475669813', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=114&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('758', '1', '1475669839', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('759', '1', '1475669841', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('760', '1', '1475669841', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('761', '1', '1475669841', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('762', '1', '1475669845', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('763', '1', '1475669845', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('764', '1', '1475669845', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('765', '1', '1475669846', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('766', '1', '1475669846', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('767', '1', '1475669846', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('768', '1', '1475669847', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('769', '1', '1475669847', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('770', '1', '1475669847', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('771', '1', '1475669848', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('772', '1', '1475669871', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('773', '1', '1475669878', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('774', '1', '1475670073', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=114&modelid=5');
INSERT INTO `yzjc_operationlog` VALUES ('775', '1', '1475671651', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('776', '1', '1475671713', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('777', '1', '1475672701', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('778', '1', '1475672752', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('779', '1', '1475672808', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('780', '1', '1475673110', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('781', '1', '1475673113', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('782', '1', '1475673133', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=49');
INSERT INTO `yzjc_operationlog` VALUES ('783', '1', '1475673314', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('784', '1', '1475673318', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('785', '1', '1475673318', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('786', '1', '1475673449', '127.0.0.1', '0', '提示语：该模型名称已经存在！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yzjc_operationlog` VALUES ('787', '1', '1475673507', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Models&a=add&menuid=54');
INSERT INTO `yzjc_operationlog` VALUES ('788', '1', '1475673779', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('789', '1', '1475673783', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('790', '1', '1475673785', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('791', '1', '1475673792', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('792', '1', '1475673796', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('793', '1', '1475673798', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('794', '1', '1475673800', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('795', '1', '1475673803', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('796', '1', '1475673806', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('797', '1', '1475673822', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('798', '1', '1475673826', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('799', '1', '1475673831', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('800', '1', '1475673836', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('801', '1', '1475673841', '127.0.0.1', '1', '提示语：字段删除成功！<br/>模块：Content,控制器：Field,方法：delete<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('802', '1', '1475673871', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=157&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('803', '1', '1475674028', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=add&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('804', '1', '1475674038', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('805', '1', '1475674050', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&modelid=7');
INSERT INTO `yzjc_operationlog` VALUES ('806', '1', '1475674090', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=50');
INSERT INTO `yzjc_operationlog` VALUES ('807', '1', '1475674092', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category');
INSERT INTO `yzjc_operationlog` VALUES ('808', '1', '1475674093', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('809', '1', '1475674146', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=50');
INSERT INTO `yzjc_operationlog` VALUES ('810', '1', '1475674172', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=50');
INSERT INTO `yzjc_operationlog` VALUES ('811', '1', '1475674937', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=47');
INSERT INTO `yzjc_operationlog` VALUES ('812', '1', '1475674946', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=28');
INSERT INTO `yzjc_operationlog` VALUES ('813', '1', '1475674956', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=29');
INSERT INTO `yzjc_operationlog` VALUES ('814', '1', '1475674967', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=30');
INSERT INTO `yzjc_operationlog` VALUES ('815', '1', '1475674974', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=31');
INSERT INTO `yzjc_operationlog` VALUES ('816', '1', '1475674992', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=34');
INSERT INTO `yzjc_operationlog` VALUES ('817', '1', '1475675000', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=35');
INSERT INTO `yzjc_operationlog` VALUES ('818', '1', '1475675008', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Category&a=edit&catid=36');
INSERT INTO `yzjc_operationlog` VALUES ('819', '1', '1475675036', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">13</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&menuid=47');
INSERT INTO `yzjc_operationlog` VALUES ('820', '1', '1475675036', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Category&a=public_cache');
INSERT INTO `yzjc_operationlog` VALUES ('821', '1', '1475675039', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('822', '1', '1475675041', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('823', '1', '1475675042', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site');
INSERT INTO `yzjc_operationlog` VALUES ('824', '1', '1475675042', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yzjc_operationlog` VALUES ('825', '1', '1475675045', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yzjc_operationlog` VALUES ('826', '1', '1475675046', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yzjc_operationlog` VALUES ('827', '1', '1475675046', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yzjc_operationlog` VALUES ('828', '1', '1475675046', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yzjc_operationlog` VALUES ('829', '1', '1475675047', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yzjc_operationlog` VALUES ('830', '1', '1475675047', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yzjc_operationlog` VALUES ('831', '1', '1475675048', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yzjc_operationlog` VALUES ('832', '1', '1475675048', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yzjc_operationlog` VALUES ('833', '1', '1475675048', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yzjc_operationlog` VALUES ('834', '1', '1475675049', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yzjc_operationlog` VALUES ('835', '1', '1475675099', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://dev.yzjc.com/admin.php?a=cache');
INSERT INTO `yzjc_operationlog` VALUES ('836', '1', '1475675143', '127.0.0.1', '1', '提示语：开始更新栏目页 ...<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category&menuid=69');
INSERT INTO `yzjc_operationlog` VALUES ('837', '1', '1475675144', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Content,控制器：Createhtml,方法：category<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=category');
INSERT INTO `yzjc_operationlog` VALUES ('838', '1', '1475675148', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&menuid=71');
INSERT INTO `yzjc_operationlog` VALUES ('839', '1', '1475675148', '127.0.0.1', '1', '提示语：开始更新 ..关于我们 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls');
INSERT INTO `yzjc_operationlog` VALUES ('840', '1', '1475675148', '127.0.0.1', '1', '提示语：开始更新 ..资质证书 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `yzjc_operationlog` VALUES ('841', '1', '1475675149', '127.0.0.1', '1', '提示语：开始更新 ..客户案例 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `yzjc_operationlog` VALUES ('842', '1', '1475675149', '127.0.0.1', '1', '提示语：开始更新 ..服务支持 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `yzjc_operationlog` VALUES ('843', '1', '1475675149', '127.0.0.1', '1', '提示语：开始更新 ..检测项目 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `yzjc_operationlog` VALUES ('844', '1', '1475675150', '127.0.0.1', '1', '提示语：开始更新 ..展示中心 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `yzjc_operationlog` VALUES ('845', '1', '1475675150', '127.0.0.1', '1', '提示语：开始更新 ..公司动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=5');
INSERT INTO `yzjc_operationlog` VALUES ('846', '1', '1475675150', '127.0.0.1', '1', '提示语：开始更新 ..行业动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=6');
INSERT INTO `yzjc_operationlog` VALUES ('847', '1', '1475675151', '127.0.0.1', '1', '提示语：开始更新 ..政策法规 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=7');
INSERT INTO `yzjc_operationlog` VALUES ('848', '1', '1475675151', '127.0.0.1', '1', '提示语：开始更新 ..视频上传 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=8');
INSERT INTO `yzjc_operationlog` VALUES ('849', '1', '1475675152', '127.0.0.1', '1', '提示语：开始更新 ..友情链接 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=9');
INSERT INTO `yzjc_operationlog` VALUES ('850', '1', '1475675152', '127.0.0.1', '1', '提示语：开始更新 ..banner上传 ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=10');
INSERT INTO `yzjc_operationlog` VALUES ('851', '1', '1475675152', '127.0.0.1', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_urls<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_urls&set_catid=1&pagesize=10&dosubmit=1&autoid=11');
INSERT INTO `yzjc_operationlog` VALUES ('852', '1', '1475675156', '127.0.0.1', '1', '提示语：开始更新 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&menuid=72');
INSERT INTO `yzjc_operationlog` VALUES ('853', '1', '1475675156', '127.0.0.1', '1', '提示语：开始更新 ..关于我们 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show');
INSERT INTO `yzjc_operationlog` VALUES ('854', '1', '1475675157', '127.0.0.1', '1', '提示语：开始更新 ..资质证书 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1');
INSERT INTO `yzjc_operationlog` VALUES ('855', '1', '1475675157', '127.0.0.1', '1', '提示语：开始更新 ..客户案例 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=1');
INSERT INTO `yzjc_operationlog` VALUES ('856', '1', '1475675157', '127.0.0.1', '1', '提示语：开始更新 ..服务支持 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=2');
INSERT INTO `yzjc_operationlog` VALUES ('857', '1', '1475675158', '127.0.0.1', '1', '提示语：开始更新 ..检测项目 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=3');
INSERT INTO `yzjc_operationlog` VALUES ('858', '1', '1475675158', '127.0.0.1', '1', '提示语：开始更新 ..展示中心 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=4');
INSERT INTO `yzjc_operationlog` VALUES ('859', '1', '1475675159', '127.0.0.1', '1', '提示语：开始更新 ..公司动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=5');
INSERT INTO `yzjc_operationlog` VALUES ('860', '1', '1475675159', '127.0.0.1', '1', '提示语：开始更新 ..行业动态 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=6');
INSERT INTO `yzjc_operationlog` VALUES ('861', '1', '1475675159', '127.0.0.1', '1', '提示语：开始更新 ..政策法规 ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=7');
INSERT INTO `yzjc_operationlog` VALUES ('862', '1', '1475675160', '127.0.0.1', '1', '提示语：更新完成！ ...<br/>模块：Content,控制器：Createhtml,方法：update_show<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Createhtml&a=update_show&set_catid=1&pagesize=10&dosubmit=1&autoid=8');
INSERT INTO `yzjc_operationlog` VALUES ('863', '1', '1475675245', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/admin.php?m=Menu&a=edit&id=90');
INSERT INTO `yzjc_operationlog` VALUES ('864', '1', '1475675291', '127.0.0.1', '1', '提示语：模型：文章模型，第 1/1 轮更新成功，进入下一轮更新中...<br/>模块：Content,控制器：Tags,方法：create<br/>请求方式：POST', 'http://dev.yzjc.com/index.php?m=Tags&a=create&menuid=86');
INSERT INTO `yzjc_operationlog` VALUES ('865', '1', '1475675292', '127.0.0.1', '1', '提示语：模型：下载模型，第 1/ 轮更新成功，进入下一轮更新中...<br/>模块：Content,控制器：Tags,方法：create<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Tags&a=create&delete=1');
INSERT INTO `yzjc_operationlog` VALUES ('866', '1', '1475675292', '127.0.0.1', '1', '提示语：模型：图片模型，第 1/ 轮更新成功，进入下一轮更新中...<br/>模块：Content,控制器：Tags,方法：create<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Tags&a=create&modelid=2&mocount=6&mo=1');
INSERT INTO `yzjc_operationlog` VALUES ('867', '1', '1475675292', '127.0.0.1', '1', '提示语：模型：banner，第 1/1 轮更新成功，进入下一轮更新中...<br/>模块：Content,控制器：Tags,方法：create<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Tags&a=create&modelid=3&mocount=6&mo=1');
INSERT INTO `yzjc_operationlog` VALUES ('868', '1', '1475675293', '127.0.0.1', '1', '提示语：模型：企业信息，第 1/1 轮更新成功，进入下一轮更新中...<br/>模块：Content,控制器：Tags,方法：create<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Tags&a=create&modelid=4&mocount=6&mo=1');
INSERT INTO `yzjc_operationlog` VALUES ('869', '1', '1475675293', '127.0.0.1', '1', '提示语：Tags重建结束！<br/>模块：Content,控制器：Tags,方法：create<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Tags&a=create&modelid=5&mocount=6&mo=1');
INSERT INTO `yzjc_operationlog` VALUES ('870', '1', '1475675409', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=add&catid=33');
INSERT INTO `yzjc_operationlog` VALUES ('871', '1', '1475675529', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Field,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Field&a=edit&fieldid=77&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('872', '1', '1475675550', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Field,方法：disabled<br/>请求方式：GET', 'http://dev.yzjc.com/index.php?m=Field&modelid=4');
INSERT INTO `yzjc_operationlog` VALUES ('873', '1', '1475675581', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://dev.yzjc.com/index.php?m=Content&a=edit&catid=33&id=4');

-- ----------------------------
-- Table structure for `yzjc_page`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_page`;
CREATE TABLE `yzjc_page` (
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
-- Records of yzjc_page
-- ----------------------------
INSERT INTO `yzjc_page` VALUES ('37', '四川尧中检测技术有限公司', '', '', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">四川尧中检测技术有限公司</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">是一家集环境质量（污染）检测、分析和检测技术应用开发为一体的独立法人科研机构</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">。向四川省质量技术监督局申请资质认定，并由四川省质量技术监督局评审中心派出评审专家组现场评审通过后获得CMA认证。</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">业务范围：室内空气质量检测（甲醛，氨、苯，甲苯，二甲苯，</span><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">TVOC等）；民用建筑工程室内环境污染检测（甲醛、氨、苯、TVOC</span></p><img src=\"http://www.scyaozhong.com/upload/image/20160602072932_57559.jpg\" width=\"160\" height=\"94\" align=\"left\" alt=\"\"/><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"padding: 0px; margin: 0px; text-indent: 24pt; line-height: 2;\">，放射性氡）及民用建筑工程土壤氡检测等环境检测服务。</span></p><p><span style=\"padding: 0px; margin: 0px; color: rgb(82, 82, 82); font-family: &#39;Microsoft Yahei&#39;, Arial, Helvetica, sans-serif, Verdana; font-size: 14px; line-height: 2; background-color: rgb(255, 255, 255);\"><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\"><span style=\"padding: 0px; margin: 0px;\">主要检测业务以成都市为中心，辐射四川全省，继而涵盖全国。公司位于成都市成华区万宇路</span>200号，拥有200m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">办公场地及</span>500m<sup style=\"padding: 0px; margin: 0px;\">2</sup><span style=\"padding: 0px; margin: 0px;\">宽敞明亮的检测场地</span>&nbsp;，实验室全部采用玻镁彩钢板间隔，分设仪器分析室、化学分析室、药品管理室和天平室等独立实验室，配备气相色谱仪、环境氡测量仪、恒流大气采样器、分光光度计、温湿度计等专业检测、分析仪器设备，均严格按国家标准进行环境质量检测。</p><p class=\"p\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; margin-left: 0pt; text-indent: 24pt;\">公司拥有一支专业的检测队伍，主要检测力量由具有丰富经验的硕士研究生和大学本科生组成，技术和质量监管力量由经验丰富的工程师组成。同时公司还将不断引进各类优秀的专业技术人才，补充新鲜血液，壮大员工队伍。我们相信通过大家的共同努力，一定会为社会大众风险公正、科学的检测数据，提供诚信、高效的优质服务，我公司一定会朝着让每一位客户百分百满意的目标不断前进！</p></span></p><p><br/></p>', '', '1475589819');

-- ----------------------------
-- Table structure for `yzjc_photo`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_photo`;
CREATE TABLE `yzjc_photo` (
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
-- Records of yzjc_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_photo_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_photo_data`;
CREATE TABLE `yzjc_photo_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imgs` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_photo_data
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_position`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_position`;
CREATE TABLE `yzjc_position` (
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
-- Records of yzjc_position
-- ----------------------------
INSERT INTO `yzjc_position` VALUES ('5', '1,3,4', '29,30,32', '首页视频推荐', '10', '', '0');
INSERT INTO `yzjc_position` VALUES ('4', '3,4', '32', '首页幻灯', '10', '', '0');

-- ----------------------------
-- Table structure for `yzjc_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_position_data`;
CREATE TABLE `yzjc_position_data` (
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
-- Records of yzjc_position_data
-- ----------------------------
INSERT INTO `yzjc_position_data` VALUES ('1', '32', '4', 'content', '4', '1', 'a:6:{s:5:\"title\";s:12:\"测试banner\";s:5:\"thumb\";s:50:\"/attachment/file/content/2016/10/57f36ec6ea32d.jpg\";s:9:\"inputtime\";s:10:\"1475571407\";s:5:\"posid\";a:2:{i:0;s:2:\"-1\";i:1;s:1:\"4\";}s:3:\"url\";s:32:\"/index.php?a=shows&catid=32&id=1\";s:5:\"style\";s:0:\"\";}', '1', '0', '', '0');
INSERT INTO `yzjc_position_data` VALUES ('2', '32', '4', 'content', '4', '1', 'a:6:{s:5:\"title\";s:14:\"测试bannner2\";s:5:\"thumb\";s:50:\"/attachment/file/content/2016/10/57f37048d95ef.png\";s:9:\"inputtime\";i:1475571791;s:5:\"posid\";a:2:{i:0;s:2:\"-1\";i:1;s:1:\"4\";}s:3:\"url\";s:32:\"/index.php?a=shows&catid=32&id=2\";s:5:\"style\";s:0:\"\";}', '2', '0', '', '0');

-- ----------------------------
-- Table structure for `yzjc_role`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_role`;
CREATE TABLE `yzjc_role` (
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
-- Records of yzjc_role
-- ----------------------------
INSERT INTO `yzjc_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `yzjc_role` VALUES ('2', '站点管理员', '1', '1', '站点管理员', '1329633722', '1399780945', '0');
INSERT INTO `yzjc_role` VALUES ('3', '发布人员', '2', '1', '发布人员', '1329633733', '1399798954', '0');

-- ----------------------------
-- Table structure for `yzjc_tags`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_tags`;
CREATE TABLE `yzjc_tags` (
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
-- Records of yzjc_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_tags_content`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_tags_content`;
CREATE TABLE `yzjc_tags_content` (
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
-- Records of yzjc_tags_content
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_terms`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_terms`;
CREATE TABLE `yzjc_terms` (
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
-- Records of yzjc_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `yzjc_urlrule`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_urlrule`;
CREATE TABLE `yzjc_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `file` varchar(20) NOT NULL DEFAULT '' COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'url规则',
  `example` varchar(255) NOT NULL DEFAULT '' COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='内容模型URL规则';

-- ----------------------------
-- Records of yzjc_urlrule
-- ----------------------------
INSERT INTO `yzjc_urlrule` VALUES ('1', 'content', 'category', '0', 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1');
INSERT INTO `yzjc_urlrule` VALUES ('2', 'content', 'category', '1', '{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml', '静态：news/china/1000.shtml');
INSERT INTO `yzjc_urlrule` VALUES ('3', 'content', 'show', '1', '{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml', '静态：2010/catdir_07/1_2.shtml');
INSERT INTO `yzjc_urlrule` VALUES ('4', 'content', 'show', '0', 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1');
INSERT INTO `yzjc_urlrule` VALUES ('5', 'content', 'category', '1', 'news/{$catid}.shtml|news/{$catid}-{$page}.shtml', '静态：news/1.shtml');
INSERT INTO `yzjc_urlrule` VALUES ('6', 'content', 'category', '0', 'list-{$catid}.html|list-{$catid}-{$page}.html', '伪静态：list-1-1.html');
INSERT INTO `yzjc_urlrule` VALUES ('7', 'content', 'tags', '0', 'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}', '动态：index.php?a=tags&amp;tagid=1');
INSERT INTO `yzjc_urlrule` VALUES ('8', 'content', 'tags', '0', 'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}', '动态：index.php?a=tags&amp;tag=标签');
INSERT INTO `yzjc_urlrule` VALUES ('9', 'content', 'tags', '0', 'tag-{$tag}.html|tag-{$tag}-{$page}.html', '伪静态：tag-标签.html');
INSERT INTO `yzjc_urlrule` VALUES ('10', 'content', 'tags', '0', 'tag-{$tagid}.html|tag-{$tagid}-{$page}.html', '伪静态：tag-1.html');
INSERT INTO `yzjc_urlrule` VALUES ('11', 'content', 'index', '1', 'index.html|index_{$page}.html', '静态：index_2.html');
INSERT INTO `yzjc_urlrule` VALUES ('12', 'content', 'index', '0', 'index.html|index_{$page}.html', '伪静态：index_2.html');
INSERT INTO `yzjc_urlrule` VALUES ('13', 'content', 'index', '0', 'index.php|index.php?page={$page}', '动态：index.php?page=2');
INSERT INTO `yzjc_urlrule` VALUES ('14', 'content', 'category', '1', 'download.shtml|download_{$page}.shtml', '静态：download.shtml');
INSERT INTO `yzjc_urlrule` VALUES ('15', 'content', 'show', '1', '{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml', '静态：/父栏目/1.shtml');
INSERT INTO `yzjc_urlrule` VALUES ('16', 'content', 'show', '1', '{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml', '示例：/栏目/1.html');

-- ----------------------------
-- Table structure for `yzjc_user`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_user`;
CREATE TABLE `yzjc_user` (
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
-- Records of yzjc_user
-- ----------------------------
INSERT INTO `yzjc_user` VALUES ('1', 'admin', '未知', 'e5c41a94ac9483762a920469ee997b1e', '', '1475666519', '127.0.0.1', '2rfwSx', 'admin@abc3210.com', '备注信息', '1475562390', '1475562390', '1', '1', '');

-- ----------------------------
-- Table structure for `yzjc_video`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_video`;
CREATE TABLE `yzjc_video` (
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
-- Records of yzjc_video
-- ----------------------------
INSERT INTO `yzjc_video` VALUES ('1', '50', '测试', '', '/attachment/file/content/2016/10/57f5001bf3a77.png', '', '', '', '0', '/index.php?a=shows&catid=50&id=1', '0', '99', '1', 'admin', '1475674146', '1475674146', '0', '0', '0', '0', '0', '0', 'http://player.youku.com/player.php/sid/XNTMyNzQ1MjQw/v.swf');
INSERT INTO `yzjc_video` VALUES ('2', '50', '测试2', '', '/attachment/file/content/2016/10/57f5003983597.png', '', '', '', '0', '/index.php?a=shows&catid=50&id=2', '0', '99', '1', 'admin', '1475674172', '1475674172', '0', '0', '0', '0', '0', '0', 'http://player.youku.com/player.php/sid/XNTMyODE3NTU2/v.swf');

-- ----------------------------
-- Table structure for `yzjc_video_data`
-- ----------------------------
DROP TABLE IF EXISTS `yzjc_video_data`;
CREATE TABLE `yzjc_video_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yzjc_video_data
-- ----------------------------
INSERT INTO `yzjc_video_data` VALUES ('1', '', '0', '0');
INSERT INTO `yzjc_video_data` VALUES ('2', '', '0', '0');
