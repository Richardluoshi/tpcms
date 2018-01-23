/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : muggen

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-01-07 14:21:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) NOT NULL COMMENT 'Cate_ID',
  `title` char(10) NOT NULL COMMENT '标题一',
  `eng_title` varchar(30) NOT NULL COMMENT '英文标题',
  `content` text NOT NULL COMMENT '段落一',
  `image1` varchar(50) NOT NULL COMMENT '图片',
  `image2` varchar(50) NOT NULL COMMENT '图片二',
  `image3` varchar(50) NOT NULL COMMENT '图片三',
  `image4` varchar(50) NOT NULL COMMENT '图片四',
  `image5` varchar(50) NOT NULL COMMENT '图片五',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id_2` (`category_id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `category_id` (`category_id`),
  KEY `category_id_3` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '8', '品牌介绍', 'about us', '&lt;p&gt;海鸥卫浴用品股份有限公司于2003年成立，公司专精于各种高档水龙头零组件、排水器、温控阀及浴室配件的设计、开发和制造，产品大部分出口，主要销往北美和欧洲的数十个国家和地区，公司矢志成为世界上最具竞争力的高档卫浴五金产品的专业制造服务供应商，在行业内开创性地应用TMS经营模式 ，延伸和提升了OEM/ODM的传统模式。凭借不断创新和日趋完善的制造服务能力，目前公司已成为多家全球顶级品牌商的重要供应基地和首选供应商，并与客户确立了长期战略合作关系，公司产销规模以年均超过30%的增速持续快速增长，并继续保持良好发展势头。&lt;/p&gt;&lt;p&gt;海鸥卫浴用品股份有限公司于2003年成立，公司专精于各种高档水龙头零组件、排水器、温控阀及浴室配件的设计、开发和制造，产品大部分出口，主要销往北美和欧洲的数十个国家和地区，公司矢志成为世界上最具竞争力的高档卫浴五金产品的专业制造服务供应商，在行业内开创性地应用TMS经营模式 ，延伸和提升了OEM/ODM的传统模式。凭借不断创新和日趋完善的制造服务能力，目前公司已成为多家全球顶级品牌商的重要供应基地和首选供应商，并与客户确立了长期战略合作关系，公司产销规模以年均超过30%的增速持续快速增长，并继续保持良好发展势头。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '2017-05-15/591979a4f2bec.png', 'about_us_03.png', 'about_us_06.png', '2017-05-15/591979a50011c.png', 'about_us_08.png', '1495877450');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(11) NOT NULL COMMENT '所属用户',
  `name` char(20) NOT NULL COMMENT '姓名',
  `address` varchar(80) NOT NULL COMMENT '地址',
  `phone` varchar(30) NOT NULL COMMENT '电话',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '张三', '广东深圳西乡大道55号', '1898989889', '0');
INSERT INTO `address` VALUES ('2', '1', '张二', '广东深圳西乡大道55号', '1898989888', '0');
INSERT INTO `address` VALUES ('3', '1', '张一', '广东深圳西乡大道55号', '1898989887', '0');
INSERT INTO `address` VALUES ('4', '1', '张四', '广东深圳西乡大道55号', '1898989886', '0');
INSERT INTO `address` VALUES ('5', '1', '李三', '广东深圳西乡大道55号', '1898989885', '0');
INSERT INTO `address` VALUES ('6', '1', '李四', '广东深圳西乡大道55号', '1898989884', '0');
INSERT INTO `address` VALUES ('7', '1', '李二', '广东深圳西乡大道55号', '1898989883', '0');
INSERT INTO `address` VALUES ('8', '1', '李大', '广东深圳西乡大道55号', '1898989882', '0');
INSERT INTO `address` VALUES ('9', '1', '花花', '江西赣州兴国', '18845786987', '1495423158');
INSERT INTO `address` VALUES ('12', '2', '熊大', '广东深圳西乡大道55号', '1898989899', '0');
INSERT INTO `address` VALUES ('13', '2', '熊二', '广东深圳西乡大道55号', '1898989898', '0');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) DEFAULT NULL COMMENT '管理员名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `level` int(11) DEFAULT NULL COMMENT '权限组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1');
INSERT INTO `admin` VALUES ('3', 'Hupo', '123', '1');
INSERT INTO `admin` VALUES ('4', 'Cobra', '81dc9bdb52d04dc20036dbd8313ed055', '4');
INSERT INTO `admin` VALUES ('5', 'Longye', '1234', '6');
INSERT INTO `admin` VALUES ('8', 'ddd', 'as', '5');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image1` varchar(50) DEFAULT NULL COMMENT '图片1',
  `image2` varchar(50) NOT NULL COMMENT '图片2',
  `image3` varchar(50) NOT NULL COMMENT '图片3',
  `time` int(15) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='横幅';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'banner1.png', '2017-05-15/591910ef08065.png', 'banner3.png', '1494814959');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) DEFAULT NULL COMMENT '分类名',
  `prev_category_id` int(11) DEFAULT NULL COMMENT '所属分类id',
  `menu` int(11) DEFAULT '0' COMMENT '菜单',
  `status` int(11) DEFAULT '1' COMMENT '状态',
  `controller` varchar(20) DEFAULT NULL COMMENT '控制器名',
  `action` varchar(20) DEFAULT NULL COMMENT '操作名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '前端', '0', '0', '0', 'home', 'index');
INSERT INTO `category` VALUES ('2', '后台', '0', '0', '0', 'admin', 'index');
INSERT INTO `category` VALUES ('3', '首页', '1', '1', '0', 'index', 'index');
INSERT INTO `category` VALUES ('4', '关于我们', '1', '1', '0', 'about', 'index');
INSERT INTO `category` VALUES ('5', '新闻中心', '1', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('6', '产品中心', '1', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('7', '联系我们', '1', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('8', '公司介绍', '4', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('9', '发展历程', '4', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('10', '企业文化', '4', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('11', '企业团队', '4', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('12', '新闻详情', '1', '0', '0', 'news_details', 'index');
INSERT INTO `category` VALUES ('13', '产品详情', '1', '0', '0', 'products_details', 'index');
INSERT INTO `category` VALUES ('14', '今日头条', '5', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('15', '行业动态', '5', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('16', '人才招聘', '5', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('17', '企业新闻', '5', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('18', '产品分类一', '6', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('19', '产品分类二', '6', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('20', '产品分类三', '6', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('21', '产品分类四', '6', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('22', '联系方式', '7', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('23', '企业概况', '7', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('24', '在线客服', '7', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('25', '关于华尔', '7', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('26', '分类管理', '2', '1', '0', 'category', 'index');
INSERT INTO `category` VALUES ('27', '分类列表', '26', '1', '0', 'category', 'index');
INSERT INTO `category` VALUES ('28', '分类添加', '26', '1', '0', 'category', 'add');
INSERT INTO `category` VALUES ('29', '分类修改', '26', '0', '0', 'category', 'edit');
INSERT INTO `category` VALUES ('30', '分类删除', '26', '0', '0', 'category', 'del');
INSERT INTO `category` VALUES ('31', '权限组管理', '2', '1', '0', 'level', 'index');
INSERT INTO `category` VALUES ('32', '权限组列表', '31', '1', '0', 'level', 'index');
INSERT INTO `category` VALUES ('33', '权限组添加', '31', '1', '0', 'level', 'add');
INSERT INTO `category` VALUES ('34', '权限组修改', '31', '0', '0', 'level', 'edit');
INSERT INTO `category` VALUES ('35', '权限组删除', '31', '0', '0', 'level', 'del');
INSERT INTO `category` VALUES ('36', '管理员管理', '2', '1', '0', 'admin', 'index');
INSERT INTO `category` VALUES ('37', '管理员列表', '36', '1', '0', 'admin', 'index');
INSERT INTO `category` VALUES ('38', '管理员添加', '36', '1', '0', 'admin', 'add');
INSERT INTO `category` VALUES ('39', '管理员修改', '36', '0', '0', 'admin', 'edit');
INSERT INTO `category` VALUES ('40', '管理员删除', '36', '0', '0', 'admin', 'del');
INSERT INTO `category` VALUES ('41', '新闻管理', '2', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('42', '新闻列表', '41', '1', '0', 'news', 'index');
INSERT INTO `category` VALUES ('43', '新闻添加', '41', '1', '0', 'news', 'add');
INSERT INTO `category` VALUES ('44', '新闻修改', '41', '0', '0', 'news', 'edit');
INSERT INTO `category` VALUES ('45', '新闻删除', '41', '0', '0', 'news', 'del');
INSERT INTO `category` VALUES ('46', '产品管理', '2', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('47', '产品列表', '46', '1', '0', 'products', 'index');
INSERT INTO `category` VALUES ('48', '产品添加', '46', '1', '0', 'products', 'add');
INSERT INTO `category` VALUES ('49', '产品修改', '46', '0', '0', 'products', 'edit');
INSERT INTO `category` VALUES ('50', '产品删除', '46', '0', '0', 'products', 'del');
INSERT INTO `category` VALUES ('51', '关于我们管理', '2', '1', '0', 'about', 'index');
INSERT INTO `category` VALUES ('52', '关于我们列表', '51', '1', '0', 'about', 'index');
INSERT INTO `category` VALUES ('53', '关于我们添加', '51', '1', '0', 'about', 'add');
INSERT INTO `category` VALUES ('54', '关于我们修改', '51', '0', '0', 'about', 'edit');
INSERT INTO `category` VALUES ('55', '关于我们删除', '51', '0', '0', 'about', 'del');
INSERT INTO `category` VALUES ('56', '单页面管理', '2', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('57', '关于我们管理', '56', '1', '0', 'contact', 'index');
INSERT INTO `category` VALUES ('58', '留言管理', '56', '1', '0', 'message', 'index');
INSERT INTO `category` VALUES ('59', 'banner管理', '56', '1', '0', 'banner', 'index');
INSERT INTO `category` VALUES ('68', '二维码管理', '56', '1', '0', 'contact', '2dcode');
INSERT INTO `category` VALUES ('69', '水印图管理', '56', '1', '0', 'contact', 'water');

-- ----------------------------
-- Table structure for category1
-- ----------------------------
DROP TABLE IF EXISTS `category1`;
CREATE TABLE `category1` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` char(20) NOT NULL COMMENT '名称',
  `prev_category_id` int(10) NOT NULL COMMENT '分类ID',
  `menu` int(10) NOT NULL COMMENT '菜单：1显示,0不显示',
  `controller` char(20) NOT NULL COMMENT '控制器',
  `status` char(20) NOT NULL COMMENT '状态',
  `action` char(20) NOT NULL COMMENT '方法',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category1
-- ----------------------------
INSERT INTO `category1` VALUES ('1', '前端', '0', '0', 'home', '', 'index', '0');
INSERT INTO `category1` VALUES ('2', '后台', '0', '0', 'admin', '', 'index', '0');
INSERT INTO `category1` VALUES ('3', '首页', '1', '1', 'index', '', 'index', '0');
INSERT INTO `category1` VALUES ('4', '品牌介绍', '1', '1', 'about', '', 'index', '0');
INSERT INTO `category1` VALUES ('5', '新闻中心', '1', '1', 'news', '', 'index', '0');
INSERT INTO `category1` VALUES ('6', '产品中心', '1', '1', 'products', '', 'index', '0');
INSERT INTO `category1` VALUES ('7', '联系我们', '1', '1', 'contact', '', 'index', '0');
INSERT INTO `category1` VALUES ('8', '品牌介绍', '4', '1', 'about', '', 'index', '0');
INSERT INTO `category1` VALUES ('14', '浴室产品', '6', '1', 'products', '', 'index', '0');
INSERT INTO `category1` VALUES ('15', '厨房产品', '6', '1', 'products', '', 'index', '0');
INSERT INTO `category1` VALUES ('16', '商用产品', '6', '1', 'products', '', 'index', '0');
INSERT INTO `category1` VALUES ('17', '联系方式', '7', '1', 'contact', '', 'index', '0');
INSERT INTO `category1` VALUES ('18', '在线咨询', '7', '0', 'contact', '', 'index', '0');
INSERT INTO `category1` VALUES ('19', '友情链接', '7', '0', 'contact', '', 'index', '0');
INSERT INTO `category1` VALUES ('24', '新闻详情', '1', '0', 'news', '0', 'details', '0');
INSERT INTO `category1` VALUES ('25', '产品详情', '1', '0', 'products', '0', 'details', '0');
INSERT INTO `category1` VALUES ('26', '分类管理', '2', '1', 'category', '0', 'index', '0');
INSERT INTO `category1` VALUES ('27', '权限组管理', '2', '1', 'level', '0', 'index', '0');
INSERT INTO `category1` VALUES ('28', '管理员管理', '2', '1', 'admin', '0', 'index', '0');
INSERT INTO `category1` VALUES ('29', '新闻管理', '2', '1', 'news', '0', 'index', '0');
INSERT INTO `category1` VALUES ('30', '产品管理', '2', '1', 'products', '0', 'index', '0');
INSERT INTO `category1` VALUES ('31', '公司介绍', '32', '1', 'about', '0', 'index', '0');
INSERT INTO `category1` VALUES ('32', '单页面管理', '2', '1', 'contact', '0', 'index', '0');
INSERT INTO `category1` VALUES ('33', '分类列表', '26', '1', 'category', '0', 'index', '0');
INSERT INTO `category1` VALUES ('34', '分类添加', '26', '1', 'category', '0', 'add', '0');
INSERT INTO `category1` VALUES ('35', '分类修改', '26', '0', 'category', '0', 'edit', '0');
INSERT INTO `category1` VALUES ('36', '分类删除', '26', '0', 'category', '0', 'del', '0');
INSERT INTO `category1` VALUES ('37', '权限组列表', '27', '1', 'level', '0', 'index', '0');
INSERT INTO `category1` VALUES ('38', '权限组添加', '27', '1', 'level', '0', 'add', '0');
INSERT INTO `category1` VALUES ('39', '权限组修改', '27', '0', 'level', '0', 'edit', '0');
INSERT INTO `category1` VALUES ('40', '权限组删除', '27', '0', 'level', '0', 'del', '0');
INSERT INTO `category1` VALUES ('41', '管理员列表', '28', '1', 'admin', '0', 'index', '0');
INSERT INTO `category1` VALUES ('42', '管理员添加', '28', '1', 'admin', '0', 'add', '0');
INSERT INTO `category1` VALUES ('43', '管理员修改', '28', '0', 'admin', '0', 'edit', '0');
INSERT INTO `category1` VALUES ('44', '管理员删除', '28', '0', 'admin', '0', 'del', '0');
INSERT INTO `category1` VALUES ('45', '新闻列表', '29', '1', 'news', '0', 'index', '0');
INSERT INTO `category1` VALUES ('46', '新闻添加', '29', '1', 'news', '0', 'add', '0');
INSERT INTO `category1` VALUES ('47', '新闻修改', '29', '0', 'news', '0', 'edit', '0');
INSERT INTO `category1` VALUES ('48', '新闻删除', '29', '0', 'news', '0', 'del', '0');
INSERT INTO `category1` VALUES ('49', '产品列表', '30', '1', 'products', '0', 'index', '0');
INSERT INTO `category1` VALUES ('50', '产品添加', '30', '1', 'products', '0', 'add', '0');
INSERT INTO `category1` VALUES ('51', '产品修改', '30', '0', 'products', '0', 'edit', '0');
INSERT INTO `category1` VALUES ('52', '产品删除', '30', '0', 'products', '0', 'del', '0');
INSERT INTO `category1` VALUES ('57', '联系我们管理', '32', '1', 'contact', '0', 'index', '0');
INSERT INTO `category1` VALUES ('58', '留言管理', '32', '1', 'message', '0', 'index', '0');
INSERT INTO `category1` VALUES ('59', 'banner管理', '32', '1', 'banner', '0', 'index', '0');
INSERT INTO `category1` VALUES ('61', '水印图管理', '32', '1', 'water', '0', 'index', '0');
INSERT INTO `category1` VALUES ('69', '会员中心', '1', '1', 'user', '', 'index', '0');
INSERT INTO `category1` VALUES ('70', '登陆', '1', '0', 'login', '', 'index', '0');
INSERT INTO `category1` VALUES ('71', '注册', '1', '0', 'register', '', 'index', '0');
INSERT INTO `category1` VALUES ('72', '个人资料', '69', '1', 'user', '', 'information', '0');
INSERT INTO `category1` VALUES ('73', '近期动态', '69', '1', 'user', '0', 'index', '0');
INSERT INTO `category1` VALUES ('74', '管理收货地址', '69', '1', 'user', '0', 'address', '0');
INSERT INTO `category1` VALUES ('75', '我的订单', '69', '1', 'user', '0', 'order', '0');
INSERT INTO `category1` VALUES ('76', '已完成订单', '75', '1', 'order', '2', 'index', '0');
INSERT INTO `category1` VALUES ('77', '待收货', '75', '1', 'order', '1', 'wait_get', '0');
INSERT INTO `category1` VALUES ('78', '待付款', '75', '1', 'order', '0', 'wait_pay', '0');
INSERT INTO `category1` VALUES ('79', '修改个人资料', '72', '0', 'information', '', 'edit', '0');
INSERT INTO `category1` VALUES ('80', '修改密码', '72', '0', 'information', '', 'edit_psd', '0');
INSERT INTO `category1` VALUES ('81', '修改收货地址', '74', '0', 'address', '', 'address_edit', '0');
INSERT INTO `category1` VALUES ('82', '添加收货地址', '74', '0', 'address', '', 'address_add', '0');
INSERT INTO `category1` VALUES ('83', '购物车', '1', '0', 'shoppingcar', '', 'index', '0');
INSERT INTO `category1` VALUES ('84', '确认订单', '1', '0', 'confirmorder', '', 'index', '0');
INSERT INTO `category1` VALUES ('85', '确认支付', '1', '0', 'confirmpay', '', 'index', '0');
INSERT INTO `category1` VALUES ('86', '订单详情', '75', '0', 'order', '', 'order_details', '1495856972');
INSERT INTO `category1` VALUES ('87', '产品搜索', '1', '0', 'products', '', 'search', '0');
INSERT INTO `category1` VALUES ('88', '支付成功', '1', '0', 'confirmpay', '', 'pay_suc', '0');
INSERT INTO `category1` VALUES ('89', '支付失败', '1', '0', 'confirmpay', '', 'pay_fail', '0');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `time` int(20) NOT NULL COMMENT '时间',
  `category_id` int(10) NOT NULL COMMENT '分类ID',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `eng_title` varchar(30) NOT NULL COMMENT '英文标题',
  `name` varchar(30) NOT NULL COMMENT '公司名称',
  `address` varchar(50) NOT NULL COMMENT '公司地址',
  `e_mail` varchar(20) NOT NULL COMMENT '邮箱地址',
  `phone` varchar(20) NOT NULL COMMENT '电话号码',
  `qq` char(12) NOT NULL COMMENT 'QQ号',
  `copyright` varchar(50) NOT NULL COMMENT '版权所有',
  `support` varchar(50) NOT NULL COMMENT '技术支持',
  `logo` varchar(30) NOT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系我们';

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', '1494557504', '17', '联系我们', 'contact', '海鸥卫浴用品股份有限公司', '深圳市宝安区民治街道民康路', '123544@163.com', '138888888', '135464787', 'Copyright © 2006 - 2016', 'SEAGULL.COM All Rights Reserve', '2017-05-12/5915233c9937f.png');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) DEFAULT NULL COMMENT '权限组名',
  `level_arr` text COMMENT '权限数组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('1', '超级管理员', '[\"0\"]');
INSERT INTO `level` VALUES ('4', '新闻管理员', '[\"29\",\"45\",\"46\",\"47\",\"48\"]');
INSERT INTO `level` VALUES ('5', '产品管理员', '[\"30\",\"49\",\"50\",\"51\",\"52\"]');
INSERT INTO `level` VALUES ('6', '超级管理员1', '[\"26\",\"33\",\"34\",\"35\",\"36\",\"27\",\"37\",\"38\",\"39\",\"40\",\"28\",\"41\",\"42\",\"43\",\"44\",\"29\",\"45\",\"46\",\"47\",\"48\",\"30\",\"49\",\"50\",\"51\",\"52\",\"32\",\"31\",\"57\",\"58\",\"59\",\"61\"]');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `phone` char(15) DEFAULT NULL COMMENT '电话',
  `qq` char(12) NOT NULL COMMENT 'QQ',
  `e_mail` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` text COMMENT '留言内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='留言';

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'asdfasdf', '984654654', '46513584', 'dafasdf', 'dafasdf');
INSERT INTO `message` VALUES ('5', '发哦问哦', '2147483647', '123965478', 'sdjfalsj@.com', 'fdasdfas dfasdfasdf sadf sadf ');
INSERT INTO `message` VALUES ('7', '发哦问哦', '2147483647', '123965478', 'sdjfalsj@.com', 'fdasdfas dfasdfasdf sadf sadf ');
INSERT INTO `message` VALUES ('8', '发哦问哦', '2147483647', '123965478', 'sdjfalsj@.com', 'fdasdfas dfasdfasdf sadf sadf ');
INSERT INTO `message` VALUES ('9', '发哦问哦', '2147483647', '123965478', 'sdjfalsj@.com', 'fdasdfas dfasdfasdf sadf sadf ');
INSERT INTO `message` VALUES ('11', 'ddd', 'sss', 'dddd', 'ss', 'fasdfasdfadsf');
INSERT INTO `message` VALUES ('12', 'zz', 'zz', 'zz', 'zz', 'zzzz');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(11) NOT NULL COMMENT '分类表ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `author` varchar(20) NOT NULL COMMENT '作者',
  `time` int(20) NOT NULL COMMENT '发布时间',
  `content` text NOT NULL COMMENT '内容',
  `image1` varchar(50) NOT NULL COMMENT '图片',
  `image2` varchar(50) NOT NULL COMMENT '图片二',
  `image3` varchar(50) NOT NULL COMMENT '图片三',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='新闻';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '12', '施园教学与您一起探索数字化教学时代', '某某某', '1491794520', '&lt;p&gt;施园教学与您一起探索数字化教学时代施园教学与您一起探索数字 化教学时代施园教学与您一起探索数字化教学施园教学&lt;/p&gt;', 'upload/149179452034879.jpg', '', '');
INSERT INTO `news` VALUES ('8', '12', '施园教学与您一起探索数字化教学时代', '某某某', '12321312', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', 'upload/149179424474260.jpg', '', '');
INSERT INTO `news` VALUES ('7', '12', '施园教学与您一起探索数字化教学时代', '某某某', '12321312', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', 'upload/149179424474260.jpg', '', '');
INSERT INTO `news` VALUES ('9', '12', '施园教学与您一起探索数字化教学时代', '某某某', '1492564676', '&lt;p&gt;施园教学与您一起探索数字化教学时代施园教学与您一起探索数字 化教学时代施园教学与您一起探索数字化教学施园教学&lt;/p&gt;', 'upload/149256467055863.jpg', '', '');
INSERT INTO `news` VALUES ('10', '11', '使用电子白板教学有什么好处', '某某某', '1491794667', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', 'upload/149198168968493.jpg', '', '');
INSERT INTO `news` VALUES ('11', '11', '使用电子白板教学有什么好处', '某某某', '12321312', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', 'upload/149198168968493.jpg', '', '');
INSERT INTO `news` VALUES ('12', '11', '使用电子白板教学有什么好处', '某某某', '12321312', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', 'upload/149198168968493.jpg', '', '');
INSERT INTO `news` VALUES ('13', '11', '使用电子白板教学有什么好处', '某某某', '1491794020', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', 'upload/149198168968493.jpg', '', '');
INSERT INTO `news` VALUES ('19', '0', 'ddd', '', '1494556529', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', '2017-05-09/5911362d9a0a8.png', '', '');
INSERT INTO `news` VALUES ('20', '0', 's', '', '1494404827', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', '上传文件后缀不允许', '', '');
INSERT INTO `news` VALUES ('21', '0', 's', '', '1494843570', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', '2017-05-15/591980b2447dd.png', '', '');
INSERT INTO `news` VALUES ('22', '0', 'sdfas', '', '1494899052', '&lt;p&gt;使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处使用电子白板教学有什么好处&lt;/p&gt;\n&lt;p&gt;教育决定了一个国家的未来，是二十一世纪国家人才建设最基本工程。如何充分提高学生学习的积极性，推动教育的进步，教学工具的借助，教学方式的创新起 到了重要作用。从黑板到白板，从白板到电子白板，从电子白板到交互式电子白板，经过不断创新与改革，交互式电子白板现已成为信息化教育最有力的辅助工具。&lt;/p&gt;\n&lt;p&gt;日前，中国领先的交互式白板生产厂商武汉腾亚科技有限公司一支20人调查队伍从总部出发，以广州为中心。呈幅射状分散前往邻近各城市近百家企业，为交互 式电子白板的应用现状做了一次全面深入的调查。经过三天调查，调查组带回了一个让大家欣喜安慰的消息——交互式电子白板应用正在不断扩大，产品市场反应十 分良好。腾亚公司自行研发生产的腾亚交互式电子白板更是得到了使用单位的肯定与好评。这个消息让白板行业人员为之振奋的同时也让我们了解到：交互式电子白 板现已成为教育信息化新宠。&lt;/p&gt;\n&lt;p&gt;对于交互式电子白板的应用，很多教育专家做过深入的探讨，概括得出交互式电子白板其主要功能为以下四点：&lt;/p&gt;\n&lt;p&gt;第一、使用交互白板技术能即时方便灵活地引人多种类型的数字化信息资源，并可对多媒体材料进行灵活地编辑组织、展示和控制，它使得数字化资源的呈示更 灵活，也解决了过去多媒体投影系统环境下，使用课件和幻灯讲稿教学材料结构高度固化的问题。&lt;/p&gt;&lt;p&gt;第二、交互式电子白板能实现板书内容即时存储。写画在白板上的 任何文字、图形或插入的任何图片都可以被保存至硬盘或移动存储设备，供下节课、下学年或在其他班级使用，或与其他教师共享;也可以以电子格式或打印出来分发 给学生，供课后温习或作为复习资料。&lt;/p&gt;\n&lt;p&gt;第三、交互白板技术使得以前色彩单调，教学呈现仅止于手写文字和手绘图形的黑板变得五彩缤纷，既可如以往一样自由板书，又可展示、编辑数字化的图片、 视频，这将有利于提高学生学习兴趣，让教学富有成效。&lt;/p&gt;\n&lt;p&gt;第四、交互白板应用使行教学过程中对计算机的操作访问更加方便，白板系统与网络、与其它计算机应用程序互补，促使师生共同运用计算机作为认知和探索发 现的工具，这必将构建学生新的认识和解决问题的思维方式。&lt;/p&gt;', '2017-05-16/591a58ba705ea.png', '2017-05-16/591a596cebb64.png', '2017-05-16/591a58ba7252b.png');

-- ----------------------------
-- Table structure for order_id
-- ----------------------------
DROP TABLE IF EXISTS `order_id`;
CREATE TABLE `order_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` int(11) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `status` int(11) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_id
-- ----------------------------
INSERT INTO `order_id` VALUES ('11', '1495709109', '1', '2');
INSERT INTO `order_id` VALUES ('10', '1495694461', '1', '1');
INSERT INTO `order_id` VALUES ('12', '1495770582', '1', '1');
INSERT INTO `order_id` VALUES ('13', '1495771147', '1', '1');
INSERT INTO `order_id` VALUES ('14', '1495771742', '1', '1');
INSERT INTO `order_id` VALUES ('15', '1495781044', '1', '1');
INSERT INTO `order_id` VALUES ('16', '1496135468', '1', '1');
INSERT INTO `order_id` VALUES ('17', '1496148683', '1', '1');
INSERT INTO `order_id` VALUES ('18', '1496149671', '1', '1');
INSERT INTO `order_id` VALUES ('19', '1496150923', '1', '1');
INSERT INTO `order_id` VALUES ('20', '1496151393', '1', '1');
INSERT INTO `order_id` VALUES ('21', '1499301825', '1', '1');
INSERT INTO `order_id` VALUES ('22', '1515032257', '1', '1');

-- ----------------------------
-- Table structure for order_menu
-- ----------------------------
DROP TABLE IF EXISTS `order_menu`;
CREATE TABLE `order_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `address_id` int(11) NOT NULL COMMENT '收货地址ID',
  `pro_id` int(11) NOT NULL COMMENT '产品ID',
  `order_id` int(11) NOT NULL COMMENT '订单号',
  `quantity` int(11) NOT NULL COMMENT '产品数量',
  `price` int(11) NOT NULL COMMENT '单价',
  `call` varchar(50) NOT NULL COMMENT '名称',
  `image` varchar(80) NOT NULL COMMENT '产品图片',
  `status` int(11) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_menu
-- ----------------------------
INSERT INTO `order_menu` VALUES ('74', '1', '9', '16', '1495709109', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '2');
INSERT INTO `order_menu` VALUES ('73', '1', '9', '17', '1495709109', '4', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '2');
INSERT INTO `order_menu` VALUES ('72', '1', '9', '11', '1495709109', '5', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '2');
INSERT INTO `order_menu` VALUES ('71', '1', '9', '6', '1495709109', '7', '1', 'ss', '2017-05-11/5913c2e09c62a.jpg', '2');
INSERT INTO `order_menu` VALUES ('68', '1', '13', '3', '1495694461', '2', '188', '三孔浴缸龙头（带花洒）', '2017-05-08/590fedb9e0a92.png', '1');
INSERT INTO `order_menu` VALUES ('69', '1', '13', '6', '1495694461', '3', '1', 'ss', '2017-05-11/5913c2e09c62a.jpg', '1');
INSERT INTO `order_menu` VALUES ('70', '1', '13', '17', '1495694461', '5', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('75', '1', '6', '8', '1495770582', '6', '1', 'd', '2017-05-15/59196e4c9a564.png', '1');
INSERT INTO `order_menu` VALUES ('76', '1', '13', '12', '1495771147', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('77', '1', '13', '17', '1495771147', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('78', '1', '13', '15', '1495771742', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('79', '1', '13', '17', '1495771742', '3', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('80', '1', '13', '17', '1495781044', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('81', '1', '13', '17', '1496135468', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('82', '1', '13', '15', '1496148683', '4', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('83', '1', '13', '18', '1496149671', '2', '123', 'sss', '2017-05-27/592935c927775.png', '1');
INSERT INTO `order_menu` VALUES ('84', '1', '13', '14', '1496149671', '3', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('85', '1', '13', '11', '1496150923', '2', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('86', '1', '13', '17', '1496151393', '3', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('87', '1', '7', '17', '1499301825', '1', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');
INSERT INTO `order_menu` VALUES ('88', '1', '9', '6', '1515032257', '1', '1', 'ss', '2017-05-11/5913c2e09c62a.jpg', '1');
INSERT INTO `order_menu` VALUES ('89', '1', '9', '13', '1515032257', '1', '166', 'fasdf', '2017-05-16/591aa33e900dd.png', '1');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(11) NOT NULL COMMENT '所属分类',
  `call_pro` varchar(30) NOT NULL COMMENT '产品名称',
  `number` char(20) NOT NULL COMMENT '产品编号',
  `series` char(30) NOT NULL COMMENT '产品系列',
  `style` varchar(50) NOT NULL COMMENT '产品类型',
  `price` float NOT NULL COMMENT '价格',
  `stock` int(11) NOT NULL COMMENT '库存',
  `introduction` text NOT NULL COMMENT '产品介绍',
  `image` int(11) NOT NULL COMMENT '产品图片',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '16', '三孔浴缸龙头（带花洒）', '9L464200CP', 'Drop', '台装浴缸淋浴龙头', '188', '2333', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '19', '0');
INSERT INTO `products` VALUES ('2', '16', '三孔浴缸龙头（带花洒）', '9L464200CP', 'Drop', '台装浴缸淋浴龙头', '188', '2333', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '18', '0');
INSERT INTO `products` VALUES ('3', '16', 'fuck', '9L464200CP', 'Drop', '台装浴缸淋浴龙头', '188', '2333', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '17', '0');
INSERT INTO `products` VALUES ('6', '16', 'ss', 'dd', 'ss', 'ss', '1', '99', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '15', '0');
INSERT INTO `products` VALUES ('8', '16', 'd', 's', 's', 's', '1', '20', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '20', '0');
INSERT INTO `products` VALUES ('9', '16', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '322', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '0');
INSERT INTO `products` VALUES ('10', '15', 'wtf', 'asdfa', 'asdfas', 'dafa', '300', '322', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '0');
INSERT INTO `products` VALUES ('11', '15', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '320', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '0');
INSERT INTO `products` VALUES ('12', '15', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '322', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '0');
INSERT INTO `products` VALUES ('13', '14', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '321', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '1495874948');
INSERT INTO `products` VALUES ('14', '14', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '319', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '0');
INSERT INTO `products` VALUES ('15', '14', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '96', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '21', '0');
INSERT INTO `products` VALUES ('17', '14', 'fasdf', 'asdfa', 'asdfas', 'dafa', '166', '316', '&lt;p&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;可分为SUS304不锈钢、铸铁、全塑、黄铜、锌合金材料水龙头，高分子复合材料水龙头等类别。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '22', '1495874903');
INSERT INTO `products` VALUES ('18', '16', 'sss', 'fff', 'ssss', 'ssss', '123', '319', '&lt;p&gt;fasdfasdfasdf&lt;/p&gt;', '23', '0');
INSERT INTO `products` VALUES ('19', '16', 'ss', 'gg', 'aa', 'aa', '145', '365', '&lt;p&gt;fasdfasdfasdfasdfasdfasdf&lt;/p&gt;', '24', '1495874893');
INSERT INTO `products` VALUES ('20', '13', 'ccc', '', '', '', '250', '0', '', '0', '0');

-- ----------------------------
-- Table structure for products_col
-- ----------------------------
DROP TABLE IF EXISTS `products_col`;
CREATE TABLE `products_col` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `color` char(30) NOT NULL COMMENT '颜色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_col
-- ----------------------------

-- ----------------------------
-- Table structure for products_img
-- ----------------------------
DROP TABLE IF EXISTS `products_img`;
CREATE TABLE `products_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `image1` varchar(50) NOT NULL COMMENT '图片一',
  `thumb_image1` varchar(50) NOT NULL COMMENT '缩略图一',
  `water_image1` varchar(50) NOT NULL COMMENT '水印图一',
  `image2` varchar(50) NOT NULL COMMENT '图片二',
  `thumb_image2` varchar(50) NOT NULL COMMENT '缩略图二',
  `water_image2` varchar(50) NOT NULL COMMENT '水印图二',
  `image3` varchar(50) NOT NULL COMMENT '图片三',
  `thumb_image3` varchar(50) NOT NULL COMMENT '缩略图三',
  `water_image3` varchar(50) NOT NULL COMMENT '水印图三',
  `image4` varchar(50) NOT NULL COMMENT '图片四',
  `thumb_image4` varchar(50) NOT NULL COMMENT '缩略图四',
  `water_image4` varchar(50) NOT NULL COMMENT '水印图四',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='产品';

-- ----------------------------
-- Records of products_img
-- ----------------------------
INSERT INTO `products_img` VALUES ('1', '2017-05-08/590fedb9e0a92.png', '', '', '2017-05-08/bj5.png', '', '', '2017-05-08/pay2.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('2', '2017-05-08/590fedb9e0a92.png', '', '', '2017-05-08/bj5.png', '', '', '2017-05-08/pay2.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('3', '2017-05-08/590fedb9e0a92.png', '', '', '2017-05-08/bj5.png', '', '', '2017-05-08/pay2.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('4', '2017-05-10/5912e25742441.png', '', '', '2017-05-10/5912e25743bb1.png', '', '', '2017-05-10/5912e25744769.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('5', '2017-05-11/5913c2e09c62a.jpg', '', '', '2017-05-11/5913c2e09d1e2.jpg', '', '', '2017-05-11/5913c2e09d9b2.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('7', '2017-05-11/5913d2cb0ae35.jpg', '', '', '2017-05-11/5913d2cb0b605.jpg', '', '', '2017-05-11/5913d2cb0bdd5.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('8', '2017-05-11/5913d2cb0ae35.jpg', '', '', '2017-05-11/5913d45f6119c.jpg', '2017-05-11/thumb_5913d45f6119c.jpg', '', '2017-05-11/5913d2cb0bdd5.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('9', '2017-05-11/5913d2cb0ae35.jpg', '', '', '2017-05-11/5913d45f6119c.jpg', '2017-05-11/thumb_5913d45f6119c.jpg', '', '2017-05-11/5913d2cb0bdd5.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('10', '2017-05-11/5913d2cb0ae35.jpg', '', '', '2017-05-11/5913d45f6119c.jpg', '2017-05-11/thumb_5913d45f6119c.jpg', '', '2017-05-11/5913d2cb0bdd5.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('11', '2017-05-11/5913c2e09c62a.jpg', '', '', '2017-05-15/59190ff6b6894.jpg', '2017-05-15/thumb_59190ff6b6894.jpg', '', '2017-05-11/5913c2e09d9b2.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('12', '2017-05-11/5913c2e09c62a.jpg', '', '', '2017-05-15/59190ff6b6894.jpg', '2017-05-15/thumb_59190ff6b6894.jpg', '', '2017-05-11/5913c2e09d9b2.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('13', '2017-05-11/5913c2e09c62a.jpg', '', '', '2017-05-15/59190ff6b6894.jpg', '2017-05-15/thumb_59190ff6b6894.jpg', '', '2017-05-11/5913c2e09d9b2.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('14', '2017-05-11/5913c2e09c62a.jpg', '', '', '2017-05-15/59190ff6b6894.jpg', '2017-05-15/thumb_59190ff6b6894.jpg', '', '2017-05-11/5913c2e09d9b2.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('15', '2017-05-11/5913c2e09c62a.jpg', '', '', '2017-05-15/591962f24b2dc.png', '2017-05-15/thumb_591962f24b2dc.png', '', '2017-05-11/5913c2e09d9b2.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('16', '2017-05-11/5913d2cb0ae35.jpg', '', '', '2017-05-11/5913d45f6119c.jpg', '2017-05-11/thumb_5913d45f6119c.jpg', '', '2017-05-11/5913d2cb0bdd5.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('17', '2017-05-08/590fedb9e0a92.png', '', '', '2017-05-08/bj5.png', '', '', '2017-05-08/pay2.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('18', '2017-05-08/590fedb9e0a92.png', '', '', '2017-05-08/bj5.png', '', '', '2017-05-08/pay2.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('19', '2017-05-08/590fedb9e0a92.png', '', '', '2017-05-08/bj5.png', '', '', '2017-05-08/pay2.png', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('20', '2017-05-15/59196e4c9a564.png', '2017-05-15/thumb_59196e4c9a564.png', '', '2017-05-11/5913d45f6119c.jpg', '2017-05-11/thumb_5913d45f6119c.jpg', '', '2017-05-11/5913d2cb0bdd5.jpg', '', '', 'product-content_04.png', '', '', '0');
INSERT INTO `products_img` VALUES ('21', '2017-05-16/591aa33e900dd.png', '2017-05-16/thumb_591aa33e900dd.png', '', '2017-05-16/591aa33e9107d.png', '2017-05-16/thumb_591aa33e9107d.png', '', '2017-05-16/591aa33e91c35.png', '2017-05-16/thumb_591aa33e91c35.png', '', 'product-content_04.png', '', '', '1495874948');
INSERT INTO `products_img` VALUES ('22', '2017-05-16/591aa33e900dd.png', '2017-05-16/thumb_591aa33e900dd.png', '', '2017-05-27/59293577c8af1.png', '2017-05-27/thumb_59293577c8af1.png', '', '2017-05-16/591aa33e91c35.png', '2017-05-16/thumb_591aa33e91c35.png', '', 'product-content_04.png', '', '', '1495874903');
INSERT INTO `products_img` VALUES ('23', '2017-05-27/592935c927775.png', '2017-05-27/thumb_592935c927775.png', '', '2017-05-27/592935c928ee6.png', '2017-05-27/thumb_592935c928ee6.png', '', '2017-05-27/592935c92aa3e.png', '2017-05-27/thumb_592935c92aa3e.png', '', '2017-05-27/592935c92e8bf.png', '2017-05-27/thumb_592935c92e8bf.png', '', '0');
INSERT INTO `products_img` VALUES ('24', '2017-05-27/59293a7785595.jpg', '2017-05-27/thumb_59293a7785595.jpg', '', '2017-05-27/59293a7786535.jpg', '2017-05-27/thumb_59293a7786535.jpg', '', '2017-05-27/59293d3539f13.jpg', '2017-05-27/thumb_59293d3539f13.jpg', '', '2017-05-27/59293a77878bd.jpg', '2017-05-27/thumb_59293a77878bd.jpg', '', '1495874893');

-- ----------------------------
-- Table structure for products_size
-- ----------------------------
DROP TABLE IF EXISTS `products_size`;
CREATE TABLE `products_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `size` char(10) NOT NULL COMMENT '尺码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_size
-- ----------------------------

-- ----------------------------
-- Table structure for products_sto
-- ----------------------------
DROP TABLE IF EXISTS `products_sto`;
CREATE TABLE `products_sto` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `stock` int(11) NOT NULL COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_sto
-- ----------------------------

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(11) NOT NULL COMMENT '会员ID',
  `pro_id` int(11) NOT NULL COMMENT '产品ID',
  `quantity` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `password` int(11) NOT NULL COMMENT '密码',
  `address` varchar(80) NOT NULL COMMENT '住址',
  `e_mail` varchar(50) NOT NULL COMMENT '邮箱',
  `phone` varchar(30) NOT NULL COMMENT '电话',
  `head_img` varchar(80) NOT NULL COMMENT '头像',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Lilei', '1234', '广东东莞', '213213@xxx.xxx', '15012365478', '2017-05-19/591e6fec4b71f.jpg', '1495166956');
INSERT INTO `user` VALUES ('2', 'Hanmei', '1234', '江西赣州大余县', '846324@11212.www', '18779435478', '', '0');
INSERT INTO `user` VALUES ('3', 'Richard', '1234', '', '8796@xx.com', '18894763587', '2017-05-19/591e6fec4b71f.jpg', '0');

-- ----------------------------
-- Table structure for water
-- ----------------------------
DROP TABLE IF EXISTS `water`;
CREATE TABLE `water` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `image` varchar(50) NOT NULL COMMENT '图片',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of water
-- ----------------------------
INSERT INTO `water` VALUES ('1', '2017-05-29/592c14e6310d1.png', '1496061158');
