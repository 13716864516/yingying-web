/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : wanyue

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-05-13 18:57:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `controller` (`controller`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '0', '99', 'admin', 'Plugin', 'default', '', '插件中心1', 'layui-icon-release', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES ('6', '0', '0', '1', '10', 'admin', 'Setting', 'default', '', '设置', 'layui-icon-set', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES ('7', '6', '1', '0', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('15', '6', '1', '0', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES ('20', '0', '2', '0', '6', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES ('21', '20', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES ('49', '110', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('73', '0', '1', '0', '7', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('75', '6', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('77', '0', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES ('78', '0', '1', '1', '5', 'admin', 'Slide', 'index', '', '幻灯片管理', 'layui-icon-table', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES ('93', '6', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('110', '0', '0', '1', '1', 'admin', 'users', 'default', '', '用户管理', 'layui-icon-username', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES ('111', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES ('112', '111', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES ('113', '111', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('114', '111', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES ('115', '111', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('116', '111', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES ('117', '111', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('118', '111', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES ('119', '111', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('120', '111', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('121', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES ('122', '121', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES ('162', '0', '0', '1', '9', 'portal', 'AdminIndex', 'default', '', '内容管理', 'layui-icon-read', '内容管理');
INSERT INTO `cmf_admin_menu` VALUES ('163', '162', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES ('164', '163', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES ('165', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('166', '163', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES ('167', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('168', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES ('169', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES ('170', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES ('171', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES ('172', '163', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES ('173', '162', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES ('174', '173', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('175', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('176', '173', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('177', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('178', '173', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES ('179', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES ('180', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'toggle', '', '文章分类显示隐藏', '', '文章分类显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('181', '173', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('182', '162', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES ('183', '182', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES ('184', '182', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('185', '182', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES ('186', '182', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('187', '182', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES ('188', '162', '1', '0', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('189', '188', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('190', '188', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES ('191', '188', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES ('192', '188', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('193', '6', '1', '1', '1', 'admin', 'Setting', 'configpri', '', '私密设置', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('194', '193', '1', '0', '10000', 'admin', 'Setting', 'configpriPost', '', '设置', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('203', '110', '1', '1', '10000', 'admin', 'users', 'index', 'type=0', '学生列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('204', '203', '1', '0', '10000', 'admin', 'users', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('205', '203', '1', '0', '10000', 'admin', 'users', 'addPost', '', '添加提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('206', '203', '1', '0', '10000', 'admin', 'users', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('207', '203', '1', '0', '10000', 'admin', 'users', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('208', '203', '1', '0', '10000', 'admin', 'users', 'ban', '', '禁用', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('209', '203', '1', '0', '10000', 'admin', 'users', 'cancelBan', '', '启用', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('210', '203', '1', '0', '10000', 'admin', 'users', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('225', '110', '1', '1', '10000', 'admin', 'users', 'teacher', 'type=1', '教师列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('236', '0', '1', '1', '7', 'admin', 'course', 'contents', 'sort=0', '图文点播列表', 'layui-icon-theme', '');
INSERT INTO `cmf_admin_menu` VALUES ('237', '266', '1', '1', '1', 'admin', 'course', 'live', 'sort=2', '语音大班课', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('245', '0', '1', '0', '98', 'admin', 'push', 'index', '', '系统消息1', 'layui-icon-notice', '');
INSERT INTO `cmf_admin_menu` VALUES ('246', '245', '1', '0', '10000', 'admin', 'push', 'add', '', '推送', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('247', '245', '1', '0', '10000', 'admin', 'push', 'addPost', '', '推送提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('248', '0', '1', '0', '8', 'admin', 'orders', 'index', '', '订单管理1', 'layui-icon-rmb', '');
INSERT INTO `cmf_admin_menu` VALUES ('249', '248', '1', '0', '10000', 'admin', 'orders', 'goods', '', '商品列表', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('250', '248', '1', '0', '10000', 'admin', 'orders', 'setSend', '', '标记发货', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('251', '0', '1', '1', '2', 'admin', 'Coursegrade', 'index', '', '学级分类', 'layui-icon-table', '');
INSERT INTO `cmf_admin_menu` VALUES ('252', '251', '1', '0', '10000', 'admin', 'Coursegrade', 'add', '', '添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('253', '251', '1', '0', '10000', 'admin', 'Coursegrade', 'addPost', '', '添加提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('254', '251', '1', '0', '10000', 'admin', 'Coursegrade', 'edit', '', '编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('255', '251', '1', '0', '10000', 'admin', 'Coursegrade', 'editPost', '', '编辑提交', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('256', '251', '1', '0', '10000', 'admin', 'Coursegrade', 'listOrder', '', '排序', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('257', '251', '1', '0', '10000', 'admin', 'Coursegrade', 'del', '', '删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('266', '0', '1', '1', '8', 'admin', 'course', 'default3', '', ' 大班课列表', 'layui-icon-read', '');
INSERT INTO `cmf_admin_menu` VALUES ('267', '266', '1', '1', '2', 'admin', 'course', 'live_video', 'sort=3', '视频大班课', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('268', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES ('269', '268', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('270', '268', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES ('271', '268', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES ('272', '237', '2', '0', '10000', 'admin', 'course', 'add', '', '增加', '', '增加语音大班课');
INSERT INTO `cmf_admin_menu` VALUES ('273', '203', '2', '0', '10000', 'admin', 'users', 'setsignory', '', '设置为讲师', '', '设置为讲师');
INSERT INTO `cmf_admin_menu` VALUES ('274', '203', '2', '0', '10000', 'admin', 'users', 'cancelteacher', '', '取消讲师', '', '取消讲师');
INSERT INTO `cmf_admin_menu` VALUES ('275', '0', '1', '1', '3', 'admin', 'courseclass', 'index', '', '科目分类', 'layui-icon-auz', '科目分类');
INSERT INTO `cmf_admin_menu` VALUES ('276', '0', '1', '1', '6', 'admin', 'news', 'index', '', '新闻列表', 'layui-icon-set', '新闻列表');
INSERT INTO `cmf_admin_menu` VALUES ('277', '0', '1', '1', '4', 'admin', 'Courseguide', 'index', '', '课程安排', 'layui-icon-read', '课程安排');

-- ----------------------------
-- Table structure for cmf_agent_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_agent_code`;
CREATE TABLE `cmf_agent_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '邀请码',
  `isagent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是推广员 0否1是',
  `istips` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否提醒 0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_agent_code
-- ----------------------------
INSERT INTO `cmf_agent_code` VALUES ('3', '35', 'V650DZ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('4', '215', 'KKNF1D', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('5', '494', 'HNP2BE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('6', '240', '7EGNH8', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('7', '47', 'WSG1Y6', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('8', '496', 'TJ0A70', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('9', '497', 'X34GB2', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('10', '498', 'T02X4X', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('11', '340', 'NNQT3C', '1', '1');
INSERT INTO `cmf_agent_code` VALUES ('12', '499', '4XP2NV', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('13', '500', 'SAJF1Z', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('14', '36', '0CM1QC', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('15', '501', 'Q8Q3G2', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('16', '502', 'QUP1TE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('17', '503', 'RB4SEB', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('18', '504', '7XBERV', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('19', '505', '67VUHE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('20', '506', 'K8U31Z', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('21', '182', 'NU21YU', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('22', '507', 'E8K1A4', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('23', '508', '456B24', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('24', '4', '0NA78Q', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('25', '509', 'JCE7XT', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('26', '510', 'Z9AK9U', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('27', '511', '9QX98X', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('28', '513', 'XQH5B6', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('29', '512', '10Q7TQ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('30', '514', 'C4DJWH', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('31', '515', '3ZSU66', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('32', '516', 'ZX5EUQ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('33', '517', 'E052SN', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('34', '78', 'R7MYV5', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('35', '92', 'X9YNBX', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('36', '518', 'PZ1VCB', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('37', '140', 'F1554B', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('38', '519', '1GD93T', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('39', '520', 'E0HUY3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('40', '521', 'ED5Q9B', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('41', '522', 'JEF76Y', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('42', '523', 'QTG2MC', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('43', '524', '7SJR7W', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('44', '525', 'ZDU0R3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('45', '526', '8J2EW6', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('46', '527', 'PJS5VX', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('47', '528', '4Z7C06', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('48', '529', 'UH402X', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('49', '530', '0Q4WQE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('50', '531', 'BAY0P5', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('51', '532', 'CA45LV', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('52', '533', 'ME8E79', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('53', '534', 'N8X74N', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('54', '535', 'EWEL2A', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('55', '536', 'SJNY56', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('56', '537', '9HC02X', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('57', '538', 'S5VWTS', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('58', '539', 'H592W8', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('59', '540', 'WT7ALY', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('60', '541', 'E92PD3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('61', '542', 'F1HLNW', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('62', '543', '4GUR0L', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('63', '544', 'H3F9MJ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('64', '545', 'VY696D', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('65', '546', '5QBEJE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('66', '547', 'AJ0X9M', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('67', '548', 'UNF47X', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('68', '549', '6VK45V', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('69', '550', 'GP9BB0', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('70', '551', '28ML6J', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('71', '552', 'D1E14R', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('72', '553', 'QVPXJ3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('73', '491', '9E0S19', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('74', '554', '1W2DVT', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('75', '39', 'NY9RUB', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('76', '555', 'M7M7LV', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('77', '556', 'XZ5QKS', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('78', '495', '8RZSK5', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('79', '102', '59QBK0', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('80', '224', '7G4S9C', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('81', '557', '68ELYL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('82', '390', 'L9QQT4', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('83', '209', 'NU4NWG', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('84', '559', '9B26Z5', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('85', '560', '1LWX61', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('86', '561', '99KTSZ', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('87', '562', '4WXT9Z', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('88', '563', 'JRZKP4', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('89', '564', '7X0YW6', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('90', '565', 'HB8318', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('91', '566', '6N8JWK', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('92', '567', 'NKLG6Q', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('93', '568', '8DQUNC', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('94', '569', 'S0U3Z2', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('95', '570', '1XJP3C', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('96', '571', 'RJ77HU', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('97', '307', '6KFCB1', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('98', '250', '2DG19C', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('99', '572', '7BEM27', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('100', '573', 'S06W22', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('101', '574', '6BU66E', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('102', '575', '3E1043', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('103', '576', '5D1C68', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('104', '577', '715CA3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('105', '27', '666QEE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('106', '376', 'M026P8', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('107', '578', 'G06Q99', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('108', '579', 'XWD06X', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('109', '580', 'BCG2LA', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('110', '7', 'U06L69', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('111', '198', 'EWVY26', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('112', '581', '2NJQV8', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('113', '583', 'SF5VAS', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('114', '584', 'ERD01R', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('115', '302', 'LXZ7MX', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('116', '585', 'H2793B', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('117', '586', 'EBFJB6', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('118', '587', 'N2JNKL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('119', '588', 'LDN56Z', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('120', '589', 'QP075W', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('121', '591', 'ZJEF7W', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('122', '592', 'LUS09R', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('123', '593', 'A8ACW0', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('124', '594', 'VEXE88', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('125', '595', 'MGJ8TY', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('126', '590', 'MG92NF', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('127', '385', 'TY2QL1', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('128', '596', 'G5RUU9', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('129', '597', 'TL96QB', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('130', '598', 'Q4YZAL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('131', '599', 'NFVV5K', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('132', '600', 'RXPUV6', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('133', '601', 'Z4VTGQ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('134', '602', '6642UK', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('135', '603', 'QWG4QV', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('136', '604', 'SGW7DT', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('137', '12', 'MB4XLB', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('138', '34', 'YZZ3SE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('139', '605', 'V46LAC', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('140', '606', '0JGJL7', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('141', '607', 'FPL4BL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('142', '99', '5YUJMM', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('143', '608', '0E85B6', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('144', '609', '2DAAJP', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('145', '610', '9D8KVM', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('146', '611', 'RQ4PMN', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('147', '612', '0L9MXS', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('148', '613', 'SQ53VE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('149', '614', '6QBMRY', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('150', '615', 'DS3CAP', '1', '0');
INSERT INTO `cmf_agent_code` VALUES ('151', '77', 'B5314Z', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('152', '616', '41QX88', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('153', '617', 'YTX70T', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('154', '618', 'G07F2Y', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('155', '492', 'ZVR72J', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('156', '493', 'K2D9HJ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('157', '312', 'Z4RZB7', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('158', '619', 'G2M6PD', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('159', '101', 'MMM78R', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('160', '620', 'VVXPA9', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('161', '621', 'W05VZZ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('162', '622', 'BFU6R2', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('163', '624', 'NG4X2H', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('164', '625', 'D6MKYL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('165', '626', '95LUX8', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('166', '627', '4G9313', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('167', '628', '99H7ZS', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('168', '629', '01TVK1', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('169', '630', 'LX8F3M', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('170', '631', 'A6P0Q3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('171', '632', '1SFZUA', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('172', '633', 'B8QMWR', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('173', '634', 'C0BQM3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('174', '635', 'EUQ3ZP', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('175', '636', 'X2G3UE', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('176', '637', '55AE5C', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('177', '249', 'Q86DVL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('178', '638', 'D8PVAB', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('179', '639', '11BZA8', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('180', '640', 'C6V5WV', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('181', '641', 'KBTQ7T', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('182', '582', '1JD43C', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('183', '264', 'AQU6ZZ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('184', '207', '8QFRKZ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('185', '642', 'UC2N5B', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('186', '643', 'EN05KL', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('187', '644', 'P8MQD3', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('188', '646', 'E0T2DJ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('189', '647', 'L0AZ4Z', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('190', '645', 'A2NPFR', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('191', '648', '6P8VUZ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('192', '651', 'D2ZDNQ', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('193', '652', 'Y98K5K', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('194', '653', '6SVQRN', '0', '0');
INSERT INTO `cmf_agent_code` VALUES ('195', '33', '1807G0', '0', '0');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES ('1', '1', '15757', '1602494288', '1', '0', '7c52b0e1a046750f7af5d6c0b4b2d2d6cb437668b2dcb0b6946848eea4afddcd', '4297c99d16e2e536ca626683a23869cf.png', 'admin/20201012/4297c99d16e2e536ca626683a23869cf.png', '7c52b0e1a046750f7af5d6c0b4b2d2d6', '02ffe73699eb7da5085ec49252e81f8362c35d20', 'png', null);
INSERT INTO `cmf_asset` VALUES ('2', '1', '6705', '1602494706', '1', '0', '5df7175a0c6fc98c1f5a76d751c75f9a15f7ec0d7d5924708a601603e4ab89bb', '31a9d9c4913db1f6142a065e16601183.png', 'admin/20201012/31a9d9c4913db1f6142a065e16601183.png', '5df7175a0c6fc98c1f5a76d751c75f9a', 'e5418fb142e74b1cad835b0947674d27b8f8e9c6', 'png', null);
INSERT INTO `cmf_asset` VALUES ('3', '1', '8589', '1602494899', '1', '0', 'c59ac1e17d78edee5b15222321773f16055e96026ba5da830e5c3e279fdb140c', '905594c1f1fa58c3b671aabb82e124e8.png', 'admin/20201012/905594c1f1fa58c3b671aabb82e124e8.png', 'c59ac1e17d78edee5b15222321773f16', 'ef943e0056396efd3b812e2645b1c82890bed51d', 'png', null);
INSERT INTO `cmf_asset` VALUES ('4', '1', '6276', '1602494930', '1', '0', '1cbf703cf6ac6f04182e4ccae5fdb7535db5bcc91d0b75192f3b916f9beda837', '308817e37a16fa975ced5d81639cfd36.png', 'admin/20201012/308817e37a16fa975ced5d81639cfd36.png', '1cbf703cf6ac6f04182e4ccae5fdb753', 'd85340ff7d4c87537b728abfbc666cab9a8212fe', 'png', null);
INSERT INTO `cmf_asset` VALUES ('5', '1', '6963', '1602494962', '1', '0', 'c09810d6f6c746128e43d3f028a1b254b9400d7d8b966c971c4ca142539905aa', 'course_c_4.png', 'admin/20201012/b6f03127dc98615593b35d132fadc951.png', 'c09810d6f6c746128e43d3f028a1b254', '9fe969a8c16e6ea926c1087583dfde866689c342', 'png', null);
INSERT INTO `cmf_asset` VALUES ('6', '1', '7065', '1602494991', '1', '0', '7bf112b7c9992b3c41495f81b3f884a41dd2b6fa9a5304226a451042959db7cb', 'feeb0cb1fc8293dbfa0b4216e3da6dc9.png', 'admin/20201012/feeb0cb1fc8293dbfa0b4216e3da6dc9.png', '7bf112b7c9992b3c41495f81b3f884a4', '9af568836002fd754ebddffba48137b23741aa3b', 'png', null);
INSERT INTO `cmf_asset` VALUES ('7', '1', '22847', '1602495037', '1', '0', '05660181e4828a61fa9a8ee65f8de55264d561cb01693fb5805783ff3e941546', 'f21ee86f0e147933db346a473c450da2.jpg', 'admin/20201012/f21ee86f0e147933db346a473c450da2.jpg', '05660181e4828a61fa9a8ee65f8de552', '5decf4a621dd8af46276df5c2366436ba8db8f94', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('8', '1', '70948', '1602637358', '1', '0', 'a82b631ca60a8fa5299616ad7340fc79711a15a64850471f237d4c8151f11685', 'QQ浏览器截图20200812101138.png', 'admin/20201014/a7248fcd5fd208d371085edfc2d11007.png', 'a82b631ca60a8fa5299616ad7340fc79', '274d09b3e179af1e2e6df0892495304b29cc9ace', 'png', null);
INSERT INTO `cmf_asset` VALUES ('9', '1', '792445', '1602660197', '1', '0', 'cc3a01f13d46128addcef6348bf495ab8aae39965f6755bc55e4411b89dd171e', 'QQ浏览器截图20200812150141.png', 'admin/20201014/adc5ffe7e74cb5f3dc30d5790a3d99e1.png', 'cc3a01f13d46128addcef6348bf495ab', 'c10a6509bc832ffbee3a46d84951e1cafb50c6d7', 'png', null);
INSERT INTO `cmf_asset` VALUES ('10', '1', '47322', '1602727564', '1', '0', '67b79ffac468f4ea54431bf85f00056418f251157d29937a9fd3a96eba0d0d3f', 'wuli.jpg', 'admin/20201015/f93b777ee571df9760aeac449aed2afe.jpg', '67b79ffac468f4ea54431bf85f000564', '5fc8d25f8cf063a82028ddc7012567e995f5e2f8', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('11', '1', '24103', '1602727823', '1', '0', '704d2f6b79b53ba322099ec43202f38314c78460b965ebd10df1a8e1d827a502', 'huaxue.jpg', 'admin/20201015/bd070ff1c251c5eee2a44e63a639434d.jpg', '704d2f6b79b53ba322099ec43202f383', '1e0c83d1e8585e61ab1501c94caf5f4334bbd2e4', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('12', '1', '45071', '1602747730', '1', '0', 'd5ed5e0153732d2a1080ff96314ba8787a26bcebbed1461669ba7aa5b4e17899', '付费内容.jpg', 'admin/20201015/6e682ec9f0b6672391ae71dbd6621f7a.jpg', 'd5ed5e0153732d2a1080ff96314ba878', '855b3a49603cc37d59616459cedc348fc4583925', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('13', '1', '101295', '1602751177', '1', '0', '8c8b457e75e1d4145d586cf62d2d57847788880228cda226a6a6648af545bfd7', 'wuli11.png', 'admin/20201015/0e5b2513e9f0159709e488adec639cfa.png', '8c8b457e75e1d4145d586cf62d2d5784', 'f6c004ee8342184d19d89f9cc8d8b4b9fa6f1961', 'png', null);
INSERT INTO `cmf_asset` VALUES ('14', '1', '26693', '1602752981', '1', '0', '4cde107eec1b205bf0c7a3d622bbbfe7327fbee3b772e76a895faac696a01d0f', 'kongqichengfen.jpg', 'admin/20201015/9e352af2780647ec9ba1d50aa314cb52.jpg', '4cde107eec1b205bf0c7a3d622bbbfe7', 'e579abbef444e555a732e8acdf230d763d3c9158', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('15', '1', '43442', '1602753040', '1', '0', '3cc38b4f7dfeb05d7b879d87027cecfbbafc48edf0e1ad0d105aee97f4997c9f', '聊天室参考样式.jpg', 'admin/20201015/0939df84196c02c5ab2f10fa5b91851b.jpg', '3cc38b4f7dfeb05d7b879d87027cecfb', '7210a78bd4c87f40476bffa7f921e9d5069ccf5e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('16', '1', '88005', '1602753187', '1', '0', 'e781f0f82f540a4bc7f359de4dc20842c3d06380c2289529fa523c56e1d68de2', 'peixun.jpg', 'admin/20201015/8bcfe2736fa0551d8917ffbd8343b879.jpg', 'e781f0f82f540a4bc7f359de4dc20842', '6e7ca8ff5b843aafb748aa4a2035ac12033b0701', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('17', '1', '24886', '1602753269', '1', '0', '58c7b001b92a76ed6a7ef3eee2aa77ef79c2d95e03657d6d068af96556b839f0', 'english.jpg', 'admin/20201015/76520f056edb78a5851c64147ce79db1.jpg', '58c7b001b92a76ed6a7ef3eee2aa77ef', 'e7cee7c1afc6ea8f4e104ed3986abd861f6074f5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('18', '1', '26767', '1602753764', '1', '0', '87f996727f9db75d7bfc1ba3a84597be3e8b6b8fd2bb92fd3bf493993d3343bd', 'huaxue1111.jpg', 'admin/20201015/682cc64265f39fac1e2b711c7af563a2.jpg', '87f996727f9db75d7bfc1ba3a84597be', 'e616bc492c5e6624199113d628016e6fa5272c9e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('19', '1', '21015', '1602812566', '1', '0', '0ec86f5e72da71f18918517b833e9b316bbc31a5b2aae3cc07307cca27056fff', 'shaizi.jpg', 'admin/20201016/b3c6d2a8d6ed5dbaf6e3f32d7ead8b4a.jpg', '0ec86f5e72da71f18918517b833e9b31', 'd97fd9be17f9a80a06aefba1d374438780da097e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('20', '1', '1341', '1602812887', '1', '0', 'd82d429383fd02508542a89bae6d5f45d5e604c84447251eae994f1ae9b9a133', 'logo.png', 'admin/20201016/4fecf49652bdb8f45f170754f965fb5a.png', 'd82d429383fd02508542a89bae6d5f45', '18a74a1ac2de019225eb8613732cfbc219370f5e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('21', '1', '91580', '1603241479', '1', '0', '71620ada9be85ce057733aaaaaceb9e664a7c5a1807ee4cbf3390f145bc01f68', 'QQ浏览器截图20200812124705.png', 'admin/20201021/385f94c83ea4148e4c6d75291fd2cb3c.png', '71620ada9be85ce057733aaaaaceb9e6', '62921d4a560d0b9d77d264aa379dad5a9ebfe489', 'png', null);
INSERT INTO `cmf_asset` VALUES ('22', '1', '580415', '1604303292', '1', '0', '748b14db240aced90265c422f330475ae61cd2daebc3700fa7dd4d2660ea7243', '0ad4073895681822459440c8f27bf10f.jpg', 'admin/20201102/7b3636ddd899d1b71845721df6718f40.jpg', '748b14db240aced90265c422f330475a', '21ab75e82686578d4848b2c7ebedb50d6dcf7d74', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('23', '1', '40664', '1606875017', '1', '0', 'e6f9154a19164de5284cf9dc4ae4fc227f8bc7dbea4c2cc84e3c37038a2b158a', 'f78cc30091039930c9ce791f3dd56bf2.jpg', 'admin/20201202/f24decc6a334bd6b64c2ca2695df39f4.jpg', 'e6f9154a19164de5284cf9dc4ae4fc22', '28226eea55acebdd391e18069691f2ed06a5d14a', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('24', '1', '332732', '1606889616', '1', '0', '3ae739592e6e68047b1844f2b51fd8e02bad9a6a40df8c3bbc5d276d4367d9f6', '5开直播-1.jpg', 'default/20201202/61caa8a0280504fe9f533c58a35875bf.jpg', '3ae739592e6e68047b1844f2b51fd8e0', '949e1e33ffd7b551d2b8704a4ba90e3b15447ed4', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('25', '1', '18768', '1606889627', '1', '0', '2de662645e61ee56432fefd3f399954c76c810af6016f72ea798b59819a6a1e2', 'timg (10).jpg', 'default/20201202/d0a2d8789000787a079033c15d1f560d.jpg', '2de662645e61ee56432fefd3f399954c', '5beb89e66db8d69aa884905cb28d8c5b01afaf16', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('26', '1', '444334', '1607504088', '1', '0', '3d29e90d0dae98f002f92cacf328315305b8bfb2928ad8f207f5cedaaa4b8f18', '163a5f1427b2a2fd30999ed70da2793b.png', 'admin/20201209/163a5f1427b2a2fd30999ed70da2793b.png', '3d29e90d0dae98f002f92cacf3283153', 'f365222a6b365d9086faeab1806a2d8dc9186650', 'png', null);
INSERT INTO `cmf_asset` VALUES ('27', '1', '229529', '1607504125', '1', '0', '78ffacff830c4b740e5bf388441966c3637c16a9d6274fedfe4c77a1803de64f', 'banner1.png', 'admin/20201209/fa0dac8cb591b7100d23873236f87918.png', '78ffacff830c4b740e5bf388441966c3', '0d4a4ffe2478aa16e1b86aad7ada644c0f4c39a0', 'png', null);
INSERT INTO `cmf_asset` VALUES ('28', '1', '236615', '1607504152', '1', '0', 'fcaf16d0d57b2d7361bf4d0ef085d5cd987c6d415fd17f812e768e3bc376baea', 'banner2.png', 'admin/20201209/51422fffffaae0f2890ca3376af50427.png', 'fcaf16d0d57b2d7361bf4d0ef085d5cd', 'c4b75b0c2e99ad97a5b36f8b163a81122dabcee6', 'png', null);
INSERT INTO `cmf_asset` VALUES ('29', '1', '302538', '1607504161', '1', '0', '24c31e025f3108ef62ec2219843657a95e3ddc1a47245a5a4198775f81688a89', 'banner3.png', 'admin/20201209/2934b7dc0d88e72ddfcead9c4aab85e0.png', '24c31e025f3108ef62ec2219843657a9', 'fce6e811364e2c605e67178c9dc70bf5430d9524', 'png', null);
INSERT INTO `cmf_asset` VALUES ('30', '1', '37985', '1607504536', '1', '0', '0fb6bbb7b6dea7f0413ca70d33077cbbfdf395036e78c71b8787e04b4b2d2c3d', '1.png', 'admin/20201209/974c30687afbd12f39cb1e2504433970.png', '0fb6bbb7b6dea7f0413ca70d33077cbb', '537396a295a4d663a1611312d534c699ddac4f13', 'png', null);
INSERT INTO `cmf_asset` VALUES ('31', '1', '46518', '1607504556', '1', '0', '1a07f98f24606082cd7ede01da176a45adf0c448a671625c8e3939a29fda3df0', '2.png', 'admin/20201209/b0d50569fb510d466b7ea6e53fbb2a56.png', '1a07f98f24606082cd7ede01da176a45', '5c1b2f314c2eb2f444c75b3fcb8022b01853eb04', 'png', null);
INSERT INTO `cmf_asset` VALUES ('32', '1', '59745', '1607504575', '1', '0', 'f4802de1b57521ec7d56504c3b32e7c8946e590aa92fad3a69c591e19fe41a8a', '3.png', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', 'f4802de1b57521ec7d56504c3b32e7c8', '1e78c0b0c0fbc4b68c9000e4572576638b40a78e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('33', '1', '48000', '1607504598', '1', '0', 'ba1056cb66a68b74adc22b7d7a45df5236319ba8ff1e9f2968b3e3f1c37b1ffb', '4.png', 'admin/20201209/68f060aaf03578c0b8226811399f8a15.png', 'ba1056cb66a68b74adc22b7d7a45df52', '71fac0412c2702fb4ba809ce5af5d3259cb6eaf5', 'png', null);
INSERT INTO `cmf_asset` VALUES ('34', '1', '45294', '1607504628', '1', '0', '45ff20a3a8c5cc67b721779002da5c79a69d89705c224c99404a5c6ab0b5c5c5', '5.png', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '45ff20a3a8c5cc67b721779002da5c79', '14cb75fb33b97118bcf0f9f0b4d81400d119275e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('35', '1', '52079', '1607504653', '1', '0', '65d140a8886e765dd2dee393d0b7c72b1c4501aebe0b2c39b1cd652fb312e4b8', '6.png', 'admin/20201209/975348dcde02c1e2c50eed4d8bb3543a.png', '65d140a8886e765dd2dee393d0b7c72b', '70b2efbc9c6efe1b6d16168eccfa4b64bc2cad79', 'png', null);
INSERT INTO `cmf_asset` VALUES ('36', '1', '71471', '1607504688', '1', '0', '2affdbc9dd5d5e9f07d31206b7ce10e0ebb98670df241ba20fac8cfcdd53910f', '7.png', 'admin/20201209/8ce3a48037f70ace3d8060ac201741e5.png', '2affdbc9dd5d5e9f07d31206b7ce10e0', 'cfb482d3ed57e5eaf0c2c71ce35f26ecb20bfc78', 'png', null);
INSERT INTO `cmf_asset` VALUES ('37', '1', '59569', '1607504705', '1', '0', '46d55a1b65548d0140ebe38ee627815cb37d5f989776e6e8f6caa5be5ebc73c5', '8.png', 'admin/20201209/23984b448418b5f9fb679c77bdeb752b.png', '46d55a1b65548d0140ebe38ee627815c', '2048352e8670002830f0aba6acb40ef35848a40d', 'png', null);
INSERT INTO `cmf_asset` VALUES ('38', '1', '53465', '1607504760', '1', '0', 'ee44962617c61ad93834cc21a960a37c7d75e2c2cb08525b2fbe5f24e850f615', '319c58b8b8b67987774ec54251127578.png', 'admin/20201209/319c58b8b8b67987774ec54251127578.png', 'ee44962617c61ad93834cc21a960a37c', '33d2ec1bf80d2abf9a34a2d3c32eef037a4c624e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('39', '1', '60169', '1607504778', '1', '0', '380f46d22b0a95d4282f71064ed6f41abf765db733cb20686f5e45361f103b90', '10.png', 'admin/20201209/cab2921967576648ebe37ace19debd83.png', '380f46d22b0a95d4282f71064ed6f41a', '20142bae976dfeeca64dea1dfee6b59ee2826e59', 'png', null);
INSERT INTO `cmf_asset` VALUES ('40', '1', '50805', '1607505724', '1', '0', 'ae8f7215b2a23ed2b906000d9b521147a659e25661d8dee0a778589e58eb0748', '11.png', 'admin/20201209/93ae74b4985410d370bf7fdaeeedd87e.png', 'ae8f7215b2a23ed2b906000d9b521147', '110393b0094b8625fa0c421ec3f3170fb58550ae', 'png', null);
INSERT INTO `cmf_asset` VALUES ('41', '1', '14673', '1607506047', '1', '0', '2230274d9ed29efc15bc0573ef33bd3b68d1b517360ac8d9b9d719466bc119fc', 'u=45195807,2504813441&fm=26&gp=0.jpg', 'admin/20201209/af2110c6955c6247c8d7b0b73999f2e2.jpg', '2230274d9ed29efc15bc0573ef33bd3b', '679d0af526e3701584f189aa4214d71466686791', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('42', '1', '207788', '1607570066', '1', '0', '2e691e7cabf01a74c6e0c253894377e98c872b2b1cf848900fe52471e145fd26', '08fccd2976e271a05fcddfd6a887177b.png', 'admin/20201210/08fccd2976e271a05fcddfd6a887177b.png', '2e691e7cabf01a74c6e0c253894377e9', '81508e4fbb4e0bf7056502be3e24d16d3a893bce', 'png', null);
INSERT INTO `cmf_asset` VALUES ('43', '1', '187047', '1607570080', '1', '0', 'bd5483d39528d00faedded1fbfab2ab36d9bf38d466f98ec51c3d4ae970e2091', '5e3d652f4a3bd.png', 'admin/20201210/e2959a45b8ae12d3eb05c123042c6ccb.png', 'bd5483d39528d00faedded1fbfab2ab3', '2f3751e45723353f8e1d540d2ca0067d1b1b0e6c', 'png', null);
INSERT INTO `cmf_asset` VALUES ('44', '1', '298381', '1607570091', '1', '0', 'ebe8e534e21fe468bce7ab21c0a9b018399973d6841f399dc479ab71a207f18d', '59a3e7f113c8a.png', 'admin/20201210/3d02172ad70acc1e2c2d00fd6cca8998.png', 'ebe8e534e21fe468bce7ab21c0a9b018', 'c9a0d60a93628093951e59e17f5fd111515f364e', 'png', null);
INSERT INTO `cmf_asset` VALUES ('45', '1', '331998', '1607591991', '1', '0', '46f6a58117e3d95c67d1a02899c1a33c65b96eb0705d943360af34e5ea3f0771', '新媒体写作指南课程封面.jpg', 'default/20201210/e1e7507a9e3ac001aa1ce3b406872292.jpg', '46f6a58117e3d95c67d1a02899c1a33c', '74d2a948afb56031d89815e2c38a95c178348aa9', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('46', '1', '113684', '1607592262', '1', '0', '9678ca9167103cc38398987d2c111d49eb4587f98ca29a53cb569d6324831489', 'blob.mp3', 'default/20201210/10230b34d592a13fd55fab22e5492cd3.mp3', '9678ca9167103cc38398987d2c111d49', '53dcfb5f6e669bdd9a757e77d1ef02e8aedfc40d', 'mp3', null);
INSERT INTO `cmf_asset` VALUES ('47', '1', '306993', '1607593617', '1', '0', 'eb3b603f3f11ccc4bf63b04188a07ffec090ea06112b381454fbc2667ac2179d', '申论备考课程封面.jpg', 'admin/20201210/df05de6bcc9e10a74c777ea245faccc1.jpg', 'eb3b603f3f11ccc4bf63b04188a07ffe', '46b924122553896c55efea234a4ebe7cf0e851cd', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('48', '1', '2714799', '1607823155', '1', '0', 'f30f653662401337c4292c9a5da6e52ed15b81fb89df267fc0a8cd0af3e2e924', '983610.jpg', 'portal/20201213/9f6940088cbf905462783e9c2efa5268.jpg', 'f30f653662401337c4292c9a5da6e52e', 'aabcc0bd07e0513cabc1b79a638325a23e2f9ccc', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('49', '1', '6388888', '1607824195', '1', '0', 'a3f51aa1cdb09eb6d2b4bd3077ccc4762db575734d677dad346df8cdf3f542fe', '977081.jpg', 'admin/20201213/fb4c56fd5c5d439e6497bb0ea1a6f3d2.jpg', 'a3f51aa1cdb09eb6d2b4bd3077ccc476', 'd30fdb4d88200a10201c83055b02875e40d8f0c3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('50', '1', '2273541', '1607824273', '1', '0', 'f75d7acc5ff099f6ce930a6aa1398ed39ce71ed2787df27264d1cafd936ecd75', '665373.jpg', 'admin/20201213/404cd8a42979c2e93901c2bb0c44000b.jpg', 'f75d7acc5ff099f6ce930a6aa1398ed3', '5eeb00cc93048b6b9a60fa083ff7d76cd52923a5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('51', '1', '2591937', '1607824302', '1', '0', '3c288a08c0703ae74707dddb728cbf052f794a3af838ce90e82872a0d88bae31', '519870.jpg', 'admin/20201213/c3c17d2ff43adc3792f84f62c3e706b3.jpg', '3c288a08c0703ae74707dddb728cbf05', '7d93acd31088e946810f36f86761162f30bb304e', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('52', '1', '44160', '1608536481', '1', '0', 'b79d281ec4e06de8216949062731039a4b2085aee353608ad598dfa8b19eef7c', 'blob.mp3', 'default/20201221/d9212ab0b8e0c132d5cb08b60fb49505.mp3', 'b79d281ec4e06de8216949062731039a', 'd61a993b025f4f23b577b95d7e0ca86e6898d4ab', 'mp3', null);
INSERT INTO `cmf_asset` VALUES ('53', '1', '26797', '1608539954', '1', '0', 'f9ae28a4490a1177ac3c48fa7394eef2ee8985a83dc041c6cb9fba5a969afa81', 'u=3363295869,2467511306&fm=26&gp=0.jpg', 'default/20201221/6d2398be551400381a4ea32fba1042fc.jpg', 'f9ae28a4490a1177ac3c48fa7394eef2', 'bb10bf543ce80b3a57e6275898a16d24ad8fe780', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('54', '1', '44160', '1608562411', '1', '0', 'af9aed403b50f0bb030620a7f564416c2b977e38aefa80507967d12ebd79bcfa', 'blob.mp3', 'default/20201221/fded56d4d4e9fb1ada1270aaef5d2d3f.mp3', 'af9aed403b50f0bb030620a7f564416c', '5cefb7dc4b09cf2ead6204f4b9cb47d0f9364994', 'mp3', null);
INSERT INTO `cmf_asset` VALUES ('55', '1', '282079', '1608620735', '1', '0', '861835a5bed348960affa6ef3a2930a643cd5f17e8c9e7b468d3e9ebaafa7da9', 'BG.jpg', 'admin/20201222/4658b8a24c155400482441699226df0e.jpg', '861835a5bed348960affa6ef3a2930a6', '8a6e6e9d3f8c3b34f0cc149dc7279817fefd7e02', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('56', '1', '13816', '1609204676', '1', '0', 'f5f953a24d4d079da2b60150e1744b0dce055344ce35f617603ab83bbb78f554', '9d074d4da253f9f5.jpg', 'admin/20201229/ec631e65562aa75eac117dccbd3fa824.jpg', 'f5f953a24d4d079da2b60150e1744b0d', 'fb9bb5944641c2b9909da35be9b60182ccd66ac0', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('57', '1', '4450', '1609384808', '1', '0', '0a296a46c6079570ced32a93f65135f08457cbe1f9a52f701d14cfba263d7558', 'wode-2.png', 'admin/20201231/3909841d603ae9391ce22ab6183e9126.png', '0a296a46c6079570ced32a93f65135f0', 'b49148b43022b6ae7a648a5bfd51af981df2cfd5', 'png', null);
INSERT INTO `cmf_asset` VALUES ('58', '1', '6463', '1609559888', '1', '0', '18158a02bd791b33076daa021eabc2da43e8878d16de0723831702d9762378db', 'anli-1.png', 'default/20210102/d8c82144a8fcd0b6086e2d242c27db7f.png', '18158a02bd791b33076daa021eabc2da', '1961deff0c21d187b3165b970dc3bdaccede5d72', 'png', null);
INSERT INTO `cmf_asset` VALUES ('59', '1', '9675352', '1609728663', '1', '0', 'a56fe016d0407c2d88f97f7a8251910eacde7577260f43a7042ac230ff9c4748', 'f4d4121b09824071f45e0b05f2f907de.png', 'admin/20210104/790779d8457aff107ff2c9679c25c7bc.png', 'a56fe016d0407c2d88f97f7a8251910e', '2eb7d1debfd4460de5aea60e62a2934da231056a', 'png', null);
INSERT INTO `cmf_asset` VALUES ('60', '1', '242967', '1609728711', '1', '0', '1aa94efc8281878e523ce2ec56632e2b1bb6fd093d6dd60d7403e147e848519a', 'u=3511367973,694185230&fm=26&gp=0.gif', 'admin/20210104/4c8f1976daa48b0d3c419f7da51f330c.gif', '1aa94efc8281878e523ce2ec56632e2b', '0e4d0a4c074902e365d3172eaae8fddaad0646bb', 'gif', null);
INSERT INTO `cmf_asset` VALUES ('61', '1', '11337', '1609729084', '1', '0', 'f6ff2f5fbf4010995ad6dbe6884b441f79272dff570b28750e1a9c04519ea2a9', 'logo_150.png', 'admin/20210104/c0f624c3e32710641d142355f8496ecb.png', 'f6ff2f5fbf4010995ad6dbe6884b441f', 'a19813446824a8a3763629390ac2a4ceb20bed69', 'png', null);
INSERT INTO `cmf_asset` VALUES ('62', '1', '18738', '1609740243', '1', '0', 'eff2208515e15790a9f6110bd63090c6c62e7b421c119fbf7df24902ba77e85b', '下载.jpg', 'admin/20210104/c637d082008d14b8323b8760c2a9b14b.jpg', 'eff2208515e15790a9f6110bd63090c6', '909d94fd7e1a807abc442ab0bf04c2b094868e23', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('63', '1', '82781', '1609740364', '1', '0', '55d2d37fc3583a4da34bb2f7fcfb515b82f3b6e1b2ffcb3c4ec48aef60032249', '下载.jpeg', 'admin/20210104/6092b4461dbd595c4e4f432c939c4ed8.jpeg', '55d2d37fc3583a4da34bb2f7fcfb515b', '1a550dce69e11bfb2696620ea721847212eb3bde', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('64', '1', '64620', '1609813000', '1', '0', '7cae9f5ff8b524de149b8584cf68243b6e14eca25ab3662653fd8507ee7cd5d9', '微信图片_20201012101521.jpg', 'default/20210105/2b45cd14210d0ee7086c9652fce0a5c4.jpg', '7cae9f5ff8b524de149b8584cf68243b', '2d97e2ee06e4840562f4f329f9184ab37a0b25ff', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('65', '1', '5288990', '1609838053', '1', '0', 'be107850680b019fe8b9c313dd335863252c5b5171760e5ac31590d00d87cce0', 'mda-jk47y80sxra3dn3e.mp4', 'admin/20210105/ed7c5b8db10d5224a2e6028ad24c5840.mp4', 'be107850680b019fe8b9c313dd335863', '4389eb78ff6fc8192fe08fc17e067a82c33518b3', 'mp4', null);
INSERT INTO `cmf_asset` VALUES ('66', '1', '182384', '1609896039', '1', '0', 'e035ea836de68618b81adc5b37e09d2b78d6277b02fe002ec0480c2f7fd10eee', '中学教育机构寒假招生长图 (1).png', 'admin/20210106/107fa9c11fbf197d5d3378cde75548c3.png', 'e035ea836de68618b81adc5b37e09d2b', '72b0ca159eb48a4c9c808e73fac7625838962632', 'png', null);
INSERT INTO `cmf_asset` VALUES ('67', '2', '852716', '1609897897', '1', '0', '477d9b7bd09fca6a05c0288cb5f1ac918d6ab0a1a0a812609903f4308240f787', '截屏2021-01-06 上午9.50.18.png', 'default/20210106/a35316d370cdda01dcb07dc51aaaaa22.png', '477d9b7bd09fca6a05c0288cb5f1ac91', 'f1479d424d78611c95b6a5a98193406280c44018', 'png', null);
INSERT INTO `cmf_asset` VALUES ('68', '2', '535409', '1609897906', '1', '0', '18e250cadebb828974fe00f9db5c025bd37b3827fa668f867021b2069731c754', '截屏2021-01-06 上午9.50.06.png', 'default/20210106/23ede4e2b933129ac3ae01e02d91d0b7.png', '18e250cadebb828974fe00f9db5c025b', '58eb7de3e4bbbb18d355bb6b400a267169c57cc6', 'png', null);
INSERT INTO `cmf_asset` VALUES ('69', '2', '1506062', '1609897911', '1', '0', 'c4597488e0837c717ecc466b9b7ab15f78b67664f7c0dc4e01a79d5479738660', '截屏2021-01-06 上午9.49.13.png', 'default/20210106/b9dc3d6b689030285e74d9265b0fb99c.png', 'c4597488e0837c717ecc466b9b7ab15f', 'ee7746893a771593bb06b4831fb4b1dd7def7a2f', 'png', null);
INSERT INTO `cmf_asset` VALUES ('70', '1', '151404', '1609916455', '1', '0', '8883ee324433c58a169997bcd2295201ffac55f021ab9377e3c3d8d941ceec26', 'e7fbabdf5034010692aa65d063ea8a2.jpg', 'admin/20210106/caf66c413dfa25a4bac1d583edac2c08.jpg', '8883ee324433c58a169997bcd2295201', '7415bdce3e5a32fc4378ecd331e214da57ba2283', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('71', '1', '43595', '1609932960', '1', '0', '8a8566f43205a58182e00918192f0fd648e420f06fc8248cea9fec343e4a6cd0', 'unnamed (1).jpg', 'admin/20210106/bd60e001e2701cc02b4bcb018b53edf6.jpg', '8a8566f43205a58182e00918192f0fd6', '1d1dc66cb64e36c7f3dbd00d4cc962e5f4fb93b0', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('72', '1', '11083', '1609933077', '1', '0', 'bc2d7be9d3aa61cc4b6289a2798fb4fde680010ccbfc9b1804d3f1479d8c22de', '下载.jpg', 'admin/20210106/c2c167dddcc4c0c90452c4cdd2cbd260.jpg', 'bc2d7be9d3aa61cc4b6289a2798fb4fd', 'd4247dc22455c6dc613ed0501c9d48073dba62ab', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('73', '1', '61301', '1610004696', '1', '0', '92b9c9fe82941ddf9087e33f205ad90973ba46702e9e3df3b15a87f0354ff97b', 'cat.jpg', 'admin/20210107/e2f3779317d09fbc87e61a8470ee5ee0.jpg', '92b9c9fe82941ddf9087e33f205ad909', 'd20d0250cbb38b34d610aeed32b1b396070b9436', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('74', '1', '36262', '1610070254', '1', '0', '4adcb51b8a636d3e5757e3fe50a11e53a232f5141cbde37a7bc7966a784a69e7', '5.jpg', 'default/20210108/e22aaacca061c840f27a5f5ee07833b6.jpg', '4adcb51b8a636d3e5757e3fe50a11e53', '2148794468c0650ecadfed58e8a8eabd383db713', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('76', '1', '6818', '1610249213', '1', '0', '3367ea7590d28db04cce7e5401c4678e9ff6cba2e14aa6317d786474dc3969c8', 'OIP (1).jpg', 'admin/20210110/98751410f296989fcfb95c597f4b010d.jpg', '3367ea7590d28db04cce7e5401c4678e', 'bb9509989b6ea7b9bbbb54d7f1d467ddfdbbd4f4', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('77', '1', '222192', '1610249249', '1', '0', '7722b4a82c7e87dedf95280d92eb4aae81f2ab92f02c43b7ea23c2ff3a9f63a3', '2700.jpg_wh860.jpg', 'admin/20210110/a8df671e78d7c2eb60ac4699dd7ec3e2.jpg', '7722b4a82c7e87dedf95280d92eb4aae', 'f37c81cddf165da3da6b87c5356a85864f9b1cc6', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('78', '1', '156558', '1682744860', '1', '0', 'd838e5eb02dd904b5f6222fde2d76f9f5483a4e5aa13f0e7d86da3ff44a29272', '阳阳二维码.jpeg', 'admin/20230429/d0fb672b53653b6c277343ee1a6c73f3.jpeg', 'd838e5eb02dd904b5f6222fde2d76f9f', '3092b0e2f297417b8d3055f5f8caff20e039d86e', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('79', '1', '824291', '1682748968', '1', '0', 'd4fb4c1ace5646375fa65716d7693340b8e04bce1f88874965ef49bb7e648161', '3.jpg', 'admin/20230429/c33c395b8891497a7782006b38711fab.jpg', 'd4fb4c1ace5646375fa65716d7693340', '73e7a8a5933e8a094696313fb535c2db7f5ce23c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('80', '1', '166559', '1682749112', '1', '0', '33fa5c01672d9a45060ed5ee7080b39e37a26ad58ca8543ac90a72088930abff', '迎迎.jpg', 'admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg', '33fa5c01672d9a45060ed5ee7080b39e', 'ec3e51d5dd5d057b4beef7acba50edc3ffcb2601', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('81', '1', '275051', '1682780673', '1', '0', 'c211cfdc8e52ab4cb54d3af300f874e9cf84986c83a7a24fd78f826c82c970d4', '作品.jpeg', 'default/20230429/e5fcf6204efb7c9a4fedbd6ecfeef1ac.jpeg', 'c211cfdc8e52ab4cb54d3af300f874e9', '48610ff7e136d4c8abc9b718c93d865680bca028', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('82', '1', '378891', '1682784376', '1', '0', '5353ccfcf9199e98eb0e238e48ab104f27aa75f896b6cc669a2890c22011aea7', '1.pptx', 'default/20230430/edd2ebfb048e0e896551a19e17423386.pptx', '5353ccfcf9199e98eb0e238e48ab104f', '56153a467d08e0efefe8a143bf8643917383a7eb', 'pptx', null);
INSERT INTO `cmf_asset` VALUES ('83', '1', '465356', '1682790704', '1', '0', '1c6c34cea91d0befe04bee3e49246db57cd7cbcdf8a8e9e859d99f4666f9eb37', '封面.jpg', 'admin/20230430/edf2959593ea80acfa541410aa3ca5b0.jpg', '1c6c34cea91d0befe04bee3e49246db5', '708e19b785a42f8d02f16cb6d18d81f689b49671', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('84', '1', '243863', '1682790996', '1', '0', '79d9a1733b2f559d413ebf18af2d950214afa658bb67c9749b186143b8d81f7a', '封面2.jpg', 'admin/20230430/6ab8753bc43e41345a8a7c690a916f54.jpg', '79d9a1733b2f559d413ebf18af2d9502', '06261d2aeb6c823d3866820a0b5bd8c7f1cfcab9', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('85', '1', '156409', '1683180334', '1', '0', '3e1474ae6deb77d4586f4f993b59358521e3abdc3c5ef7009d9e5020d257d293', '阳阳二维码.jpg', 'admin/20230504/4d316479e0d07a0616bd4091d479c3d3.jpg', '3e1474ae6deb77d4586f4f993b593585', '686ab91d3b7696d4d5fdf53d89b951194f7c6a3c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('86', '1', '797035', '1683207544', '1', '0', '0309f964f598cbb81dd2aa0940edf93f0f5b44b78edc940316bcffcad0998f3f', '绿色桌面.jpg', 'admin/20230504/e1e9312da2e5d8f7d963ecd2299616f0.jpg', '0309f964f598cbb81dd2aa0940edf93f', '27823f1a73e0ab961533f31373c86504e2d7c1ec', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('87', '1', '567', '1683597361', '1', '0', 'fe83eeafb0bd9fe147d477c1b8175ebf975e4e802d80b693e617175cebd5388b', 'duihao.png', 'admin/20230509/70a140204fe85aeeafc156996f51bcdb.png', 'fe83eeafb0bd9fe147d477c1b8175ebf', '75e3ee4bce6271be40430f19f3e254847a52cd7a', 'png', null);
INSERT INTO `cmf_asset` VALUES ('88', '1', '78915', '1683910924', '1', '0', 'a44b0d421b68b1574ca43cda342b0ba424b32750f8061400a206e236c5790ed2', '4a5c1bd6ac3db44baa94e6c23d1973ab.jpeg', 'admin/20230513/200fe1473d8ac3cf9a5f29b681dc3f69.jpeg', 'a44b0d421b68b1574ca43cda342b0ba4', 'a7f59275bdb7d766485f3c5ab7859212fc45521d', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('89', '1', '81150', '1683910946', '1', '0', '50369aabe012feb77e38021719f6e305de551b1270b627e5e531f0aa4508bc63', '4a542feb657ee7901c2dcdbc57c9f716.jpeg', 'admin/20230513/d28380c99e25a543852c9ad24a004f82.jpeg', '50369aabe012feb77e38021719f6e305', '03eb38bd44e931e8874fbc9cf696bb8b1938509e', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('90', '1', '96177', '1683910971', '1', '0', 'd4012ef7700b25d5e0fd2a3c106b5ab31228bc97c80c500b42907197f0358582', '4ec1ec49951bb8a8f2eb17b6ab808f80.jpeg', 'admin/20230513/2e8b31aa748b9a4e1016235c024aaa5b.jpeg', 'd4012ef7700b25d5e0fd2a3c106b5ab3', 'f71441edc1b2f9bb4f3bf96dedc2e2a024a791cc', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('91', '1', '79116', '1683910994', '1', '0', '2245f1539fc69bc011743c2aeecd7877be080a9b9f932e3b7dd403fd5192949a', '4ed7381579d6e8adc0e7f3b76312fd1e.jpeg', 'admin/20230513/ab97ca7056f45f184bd67bace91839b7.jpeg', '2245f1539fc69bc011743c2aeecd7877', '6afeeb6ff8929e22f706e05e24bc311922ff5e74', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('92', '1', '65798', '1683911065', '1', '0', 'fed7e372cffdf937bd36af695b548c766a40c3a5e14e235b00d1ae59b5c80652', '6bc1845e38d80aaac32eda7b5351ac7b.jpeg', 'admin/20230513/77b3dff2087ea30598f6e9ab8cf8402c.jpeg', 'fed7e372cffdf937bd36af695b548c76', '1f1d14995002f8c0234d91161c79aa8038d78e53', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('93', '1', '164069', '1683911086', '1', '0', 'a6b508a19ef3c4cb152c71ae2a099b80f15166b02a0e26510b9c106b7cc623e5', '8a7788375c52087c8d403702a905684b.jpeg', 'admin/20230513/5be62e50e1f5acb1481630133d07306a.jpeg', 'a6b508a19ef3c4cb152c71ae2a099b80', '845a50846ab3f42c7c6ada07ce9ab1013f4fbe6c', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('94', '1', '49211', '1683911108', '1', '0', '4879a23cf44806c7497a403d5cf9e292f101f5fce2b26b9589f25b58924d15a7', '9ad621d5d1bfbeb2604cdc8cae154869.jpeg', 'admin/20230513/fa70270b3d6e1a2a1b585cce72e45aca.jpeg', '4879a23cf44806c7497a403d5cf9e292', '2e2a2a6be989d4372ea1da35e4e4475d1ef27feb', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('95', '1', '110396', '1683911129', '1', '0', 'f82776605e85f44b75cf922c38f31b72874f456a6a7d9d8075903e218e2041ab', '9bfa5e22d708037e79679bebe8d72d7a.jpeg', 'admin/20230513/31157cd1373ef3b53e0cd88192ccb1c2.jpeg', 'f82776605e85f44b75cf922c38f31b72', '2b5f6e4a6b00cfa325a6f67c4fabf1265c79303c', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('96', '1', '51401', '1683911149', '1', '0', '1ba6489cc8a087b9997eff8d8242c03839ac217118ed24f7bd2fbca2e8dca7e4', '52e64fe244df2d83c1c68101abebc183.jpeg', 'admin/20230513/c285857038239c5593b2f3a0b7c7ec89.jpeg', '1ba6489cc8a087b9997eff8d8242c038', '0c9e2215e6bd6cd3b89261bd1819e96c48b5ec0d', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('97', '1', '65928', '1683911169', '1', '0', 'a05362157d0d8f6c2b616cf3101136dec7a6d1c28ac3585638f28c639891a3a2', '637466f25aaa52c3639951d7a80dce33.jpeg', 'admin/20230513/ef3b2d019f3868f48ccadedffee2deec.jpeg', 'a05362157d0d8f6c2b616cf3101136de', 'bfb8c698522130a7e95e827595160df12afe18e6', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('98', '1', '168307', '1683958001', '1', '0', 'a73c30765088b584a220c19dcfaa01d95baba14a62fd47f5dd1b2057fa1baa3b', '71cff915fcbb0aeb83c41aecc5448140.jpeg', 'admin/20230513/5468196ea2adc86211949d4a14a2a6d0.jpeg', 'a73c30765088b584a220c19dcfaa01d9', 'd557335a67cb123c32a42c697e2b88f460b88acb', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('99', '1', '78322', '1683958148', '1', '0', 'fa7c531e43a799e816e83589113b6c87d91660955654be18eac076259af487a7', 'a791d4ac54d739176439e1a8e79503a6.jpeg', 'admin/20230513/e61277ad3041e2d20291988396ed0f8a.jpeg', 'fa7c531e43a799e816e83589113b6c87', '69c58aa222129fa188dd5803973b62b20a2454fe', 'jpeg', null);
INSERT INTO `cmf_asset` VALUES ('100', '1', '74704', '1683964239', '1', '0', '242dee85b514587375eb125928b1e2ddc27750e8c530e5d7b586ae1f3027aa7f', 'b867ecc1757e70f45a15acd907cff00c.jpeg', 'admin/20230513/b6e7427629afd6bf8b0fe0201aa44ef6.jpeg', '242dee85b514587375eb125928b1e2dd', '73c7a5f6456996adbe91264be2413006c589bc42', 'jpeg', null);

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------
INSERT INTO `cmf_auth_access` VALUES ('322', '2', 'admin/users/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('323', '2', 'admin/users/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('324', '2', 'admin/users/teacher', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('325', '2', 'portal/adminindex/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('326', '2', 'portal/adminarticle/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('327', '2', 'portal/adminarticle/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('328', '2', 'portal/adminarticle/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('329', '2', 'portal/adminarticle/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('330', '2', 'portal/adminarticle/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('331', '2', 'portal/adminarticle/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('332', '2', 'portal/adminarticle/publish', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('333', '2', 'portal/adminarticle/top', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('334', '2', 'portal/adminarticle/recommend', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('335', '2', 'portal/adminarticle/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('336', '2', 'portal/admincategory/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('337', '2', 'portal/admincategory/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('338', '2', 'portal/admincategory/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('339', '2', 'portal/admincategory/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('340', '2', 'portal/admincategory/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('341', '2', 'portal/admincategory/select', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('342', '2', 'portal/admincategory/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('343', '2', 'portal/admincategory/toggle', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('344', '2', 'portal/admincategory/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('345', '2', 'portal/adminpage/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('346', '2', 'portal/adminpage/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('347', '2', 'portal/adminpage/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('348', '2', 'portal/adminpage/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('349', '2', 'portal/adminpage/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('350', '2', 'portal/adminpage/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('351', '2', 'portal/admintag/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('352', '2', 'portal/admintag/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('353', '2', 'portal/admintag/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('354', '2', 'portal/admintag/upstatus', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('355', '2', 'portal/admintag/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('356', '2', 'admin/coursegrade/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('357', '2', 'admin/coursegrade/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('358', '2', 'admin/coursegrade/del', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('359', '2', 'admin/coursegrade/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('360', '2', 'admin/coursegrade/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('361', '2', 'admin/coursegrade/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('362', '2', 'admin/coursegrade/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('363', '2', 'admin/course/contents', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('364', '2', 'admin/course/default3', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('365', '2', 'admin/course/live', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('366', '2', 'admin/course/live_video', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('367', '2', 'admin/orders/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('368', '2', 'admin/orders/goods', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('369', '2', 'admin/orders/setsend', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('370', '2', 'admin/push/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('371', '2', 'admin/push/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('372', '2', 'admin/push/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('373', '2', 'admin/setting/clearcache', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('374', '2', 'user/adminasset/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('375', '2', 'user/adminasset/delete', 'admin_url');

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', '1', 'admin', 'admin_url', 'admin/users/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', '1', 'admin', 'admin_url', 'admin/users/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('162', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('163', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('164', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('165', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('166', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('167', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('168', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES ('169', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES ('170', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES ('171', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('172', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('173', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('174', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('175', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('176', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('177', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES ('178', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('179', '1', 'portal', 'admin_url', 'portal/AdminCategory/toggle', '', '文章分类显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('180', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('181', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '内容管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('182', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('183', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('184', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('185', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('186', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('187', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('188', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('189', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('190', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('191', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES ('192', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('193', '1', 'admin', 'admin_url', 'admin/Setting/configpri', '', '私密设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('194', '1', 'admin', 'admin_url', 'admin/Setting/configpriPost', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('195', '1', 'admin', 'admin_url', 'admin/course/default', '', '知识管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('196', '1', 'admin', 'admin_url', 'admin/courseclass/index', '', '科目分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('197', '1', 'admin', 'admin_url', 'admin/courseclass/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('198', '1', 'admin', 'admin_url', 'admin/courseclass/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('199', '1', 'admin', 'admin_url', 'admin/courseclass/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('200', '1', 'admin', 'admin_url', 'admin/courseclass/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('201', '1', 'admin', 'admin_url', 'admin/courseclass/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('202', '1', 'admin', 'admin_url', 'admin/courseclass/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('203', '1', 'admin', 'admin_url', 'admin/users/index', 'type=0', '用户列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('204', '1', 'admin', 'admin_url', 'admin/users/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('205', '1', 'admin', 'admin_url', 'admin/users/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('206', '1', 'admin', 'admin_url', 'admin/users/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('207', '1', 'admin', 'admin_url', 'admin/users/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('208', '1', 'admin', 'admin_url', 'admin/users/ban', '', '禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('209', '1', 'admin', 'admin_url', 'admin/users/cancelBan', '', '启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('210', '1', 'admin', 'admin_url', 'admin/users/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('211', '1', 'admin', 'admin_url', 'admin/signory/index', '', '专长领域', '');
INSERT INTO `cmf_auth_rule` VALUES ('212', '1', 'admin', 'admin_url', 'admin/signory/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('213', '1', 'admin', 'admin_url', 'admin/signory/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('214', '1', 'admin', 'admin_url', 'admin/signory/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('215', '1', 'admin', 'admin_url', 'admin/signory/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('216', '1', 'admin', 'admin_url', 'admin/signory/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('217', '1', 'admin', 'admin_url', 'admin/signory/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('218', '1', 'admin', 'admin_url', 'admin/identity/index', '', '身份标识', '');
INSERT INTO `cmf_auth_rule` VALUES ('219', '1', 'admin', 'admin_url', 'admin/identity/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('220', '1', 'admin', 'admin_url', 'admin/identity/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('221', '1', 'admin', 'admin_url', 'admin/identity/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('222', '1', 'admin', 'admin_url', 'admin/identity/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('223', '1', 'admin', 'admin_url', 'admin/identity/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('224', '1', 'admin', 'admin_url', 'admin/identity/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('225', '1', 'admin', 'admin_url', 'admin/users/teacher', 'type=1', '教师列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('226', '1', 'admin', 'admin_url', 'admin/feedback/index', '', '反馈', '');
INSERT INTO `cmf_auth_rule` VALUES ('227', '1', 'admin', 'admin_url', 'admin/feedback/setstatus', '', '处理', '');
INSERT INTO `cmf_auth_rule` VALUES ('228', '1', 'admin', 'admin_url', 'admin/feedback/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('229', '1', 'admin', 'admin_url', 'admin/course/index', 'sort=1', '课程列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('230', '1', 'admin', 'admin_url', 'admin/course/add', 'sort=0', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('231', '1', 'admin', 'admin_url', 'admin/course/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('232', '1', 'admin', 'admin_url', 'admin/course/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('233', '1', 'admin', 'admin_url', 'admin/course/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('234', '1', 'admin', 'admin_url', 'admin/course/setstatus', '', '上下架', '');
INSERT INTO `cmf_auth_rule` VALUES ('235', '1', 'admin', 'admin_url', 'admin/course/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('236', '1', 'admin', 'admin_url', 'admin/course/contents', 'sort=0', '图文点播列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('237', '1', 'admin', 'admin_url', 'admin/course/live', 'sort=2', '语音大班课', '');
INSERT INTO `cmf_auth_rule` VALUES ('238', '1', 'admin', 'admin_url', 'admin/lession/index', '', '课时管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('239', '1', 'admin', 'admin_url', 'admin/lession/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('240', '1', 'admin', 'admin_url', 'admin/lession/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('241', '1', 'admin', 'admin_url', 'admin/lession/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('242', '1', 'admin', 'admin_url', 'admin/lession/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('243', '1', 'admin', 'admin_url', 'admin/lession/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('244', '1', 'admin', 'admin_url', 'admin/lession/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('245', '1', 'admin', 'admin_url', 'admin/push/index', '', '系统消息', '');
INSERT INTO `cmf_auth_rule` VALUES ('246', '1', 'admin', 'admin_url', 'admin/push/add', '', '推送', '');
INSERT INTO `cmf_auth_rule` VALUES ('247', '1', 'admin', 'admin_url', 'admin/push/addPost', '', '推送提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('248', '1', 'admin', 'admin_url', 'admin/orders/index', '', '订单管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('249', '1', 'admin', 'admin_url', 'admin/orders/goods', '', '商品列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('250', '1', 'admin', 'admin_url', 'admin/orders/setSend', '', '标记发货', '');
INSERT INTO `cmf_auth_rule` VALUES ('251', '1', 'admin', 'admin_url', 'admin/Coursegrade/index', '', '学级分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('252', '1', 'admin', 'admin_url', 'admin/Coursegrade/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('253', '1', 'admin', 'admin_url', 'admin/Coursegrade/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('254', '1', 'admin', 'admin_url', 'admin/Coursegrade/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('255', '1', 'admin', 'admin_url', 'admin/Coursegrade/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('256', '1', 'admin', 'admin_url', 'admin/Coursegrade/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('257', '1', 'admin', 'admin_url', 'admin/Coursegrade/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('258', '1', 'admin', 'admin_url', 'admin/package/index', '', '套餐管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('259', '1', 'admin', 'admin_url', 'admin/package/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('260', '1', 'admin', 'admin_url', 'admin/package/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('261', '1', 'admin', 'admin_url', 'admin/package/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('262', '1', 'admin', 'admin_url', 'admin/package/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('263', '1', 'admin', 'admin_url', 'admin/package/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('264', '1', 'admin', 'admin_url', 'admin/package/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('265', '1', 'admin', 'admin_url', 'admin/package/getCourse', '', '获取课程', '');
INSERT INTO `cmf_auth_rule` VALUES ('266', '1', 'admin', 'admin_url', 'admin/course/default3', '', ' 大班课列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('267', '1', 'admin', 'admin_url', 'admin/course/live_video', 'sort=3', '视频大班课', '');
INSERT INTO `cmf_auth_rule` VALUES ('268', '1', 'admin', 'admin_url', 'admin/question/default', '', '题库管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('269', '1', 'admin', 'admin_url', 'admin/questionclass/index', '', '题目分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('270', '1', 'admin', 'admin_url', 'admin/questionclass/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('271', '1', 'admin', 'admin_url', 'admin/questionclass/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('272', '1', 'admin', 'admin_url', 'admin/questionclass/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('273', '1', 'admin', 'admin_url', 'admin/questionclass/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('274', '1', 'admin', 'admin_url', 'admin/questionclass/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('275', '1', 'admin', 'admin_url', 'admin/questionclass/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('276', '1', 'admin', 'admin_url', 'admin/question/index', '', '题目列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('277', '1', 'admin', 'admin_url', 'admin/question/add', '', '添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('278', '1', 'admin', 'admin_url', 'admin/question/addPost', '', '添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('279', '1', 'admin', 'admin_url', 'admin/question/edit', '', '编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('280', '1', 'admin', 'admin_url', 'admin/question/editPost', '', '编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('281', '1', 'admin', 'admin_url', 'admin/question/listOrder', '', '排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('282', '1', 'admin', 'admin_url', 'admin/question/del', '', '删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('283', '1', 'admin', 'admin_url', 'admin/users/setsignory', '', '设置为讲师', '');
INSERT INTO `cmf_auth_rule` VALUES ('284', '1', 'admin', 'admin_url', 'admin/users/cancelteacher', '', '取消讲师', '');
INSERT INTO `cmf_auth_rule` VALUES ('285', '1', 'admin', 'admin_url', 'admin/news/index', '', '新闻列表', '');

-- ----------------------------
-- Table structure for cmf_cart
-- ----------------------------
DROP TABLE IF EXISTS `cmf_cart`;
CREATE TABLE `cmf_cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型，0课程1套餐',
  `typeid` bigint(20) NOT NULL DEFAULT '0' COMMENT '类型对应的ID',
  `isselect` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否选择，0否1是',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_cart
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_course
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course`;
CREATE TABLE `cmf_course` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` int(1) NOT NULL DEFAULT '0' COMMENT '类别，0内容1课程2语音直播3视频直播',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '内容形式，1图文2视频3音频；\r\n语音直播形式，1语音ppt2语音视频3语音音频\r\n视频直播形式，5视频直播',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '封面',
  `des` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `gradeid` int(11) NOT NULL DEFAULT '0' COMMENT '学级ID',
  `classid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `uptime` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `paytype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '获取形式，0免费1收费2密码',
  `payval` varchar(255) NOT NULL DEFAULT '' COMMENT '获取形式对应值',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，-2被下架-1暂时下架0审核中1上架中2定时上架',
  `shelvestime` bigint(20) NOT NULL DEFAULT '0' COMMENT '上架时间',
  `info` longtext COMMENT '内容介绍',
  `content` longtext COMMENT '内容详情',
  `trialtype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '试学方式，0无1链接2时间进度',
  `trialval` varchar(255) NOT NULL DEFAULT '' COMMENT '试学方式对应值',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '课程模式，0自有1解锁',
  `lessons` int(11) NOT NULL DEFAULT '0' COMMENT '课时数',
  `stars` int(11) NOT NULL DEFAULT '0' COMMENT '总星数',
  `comments` int(11) NOT NULL DEFAULT '0' COMMENT '评价数',
  `star` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '星级',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '视频或语音链接',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '学习过的人数',
  `islive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在直播，0否1是',
  `starttime` bigint(20) NOT NULL DEFAULT '0' COMMENT '直播时间',
  `endtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `intr` varchar(255) NOT NULL DEFAULT '' COMMENT '听课指南',
  `ispush` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推送，0否1是',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  `ismaterial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有教材,0否1是',
  `tutoruid` bigint(20) NOT NULL DEFAULT '0' COMMENT '辅导老师ID',
  `isshup` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁言，0否1是',
  `livemode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '直播模式，0摄像头1ppt2共享屏幕',
  `pptindex` int(11) DEFAULT '0' COMMENT 'ppt当前序号',
  `chatopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开放交流区 0否1是',
  PRIMARY KEY (`id`),
  KEY `status_time` (`status`,`shelvestime`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course
-- ----------------------------
INSERT INTO `cmf_course` VALUES ('2', '1', '1', '0', '英语口语怎么练？原来我们一直做错了？来看看这个！', 'admin/20200608/e80127007640c0ef9e652e40ee3c01dc.jpg', '', '2', '4', '1591600694', '1591609704', '0', '', '1', '1591600694', '<p style=\"line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">很多学习英语的学生练习口语的方法都是拿本课本大声朗读，或者拿着自己找的资料“口语必背900句”一遍遍重复朗读记忆。不口否认，这有用，可以让你记住一些有用的常用英语口语例句。但你有没有想过自己的发音是否正确，语调是否标准。你应该听过老外说中文吧，对，就是那种感觉。如果英语口语不注重语音语调的练习，你就会是那个“说中文不标准的老外”。好了，道理你都懂了，现在小编来教大家如何练习英语口语。方法对了，你的努力才能获得同样的回报。</span></p><p style=\"line-height: 2em; text-align: center;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/1de7bf3298ff8278e5cc494c0350c85d.jpg\" title=\"timg (21).jpg\" alt=\"timg (21).jpg\"/></span></p><p style=\"line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（1）一定要把音标学好，音标的重要性小编就不赘述了。音标也不只是音标发音的学习，还有重读弱读，升调降调等......去买一本音标书，该有的知识里面都有。一定要先弄清楚英语发音都有哪些规则。只有学好音标，你才能把英语的发音说准确。英语的口语不是比谁的语速快，谁的流利，而是你的发音是否清晰准确。学英语口语不是一定要先学会音标再练习，可以边学音标边跟着音频（音频一定要是native speaker，中国人录的音频再标准也没native speaker那么标准）练习。</span></p><p style=\"line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（2）英语口语的练习除了发音标准，还要求“自然”。无论你选定的英语口语的资料是哪种，一定要找附有标准音频的，不是自己按照自己的想法读，而是跟着音频去模仿它的语音语调。这就完了吗？很多人也是这么跟着音频模仿的，但为什么英语口语还是没有明显的提高。答案是虽然你跟着音频读了，但是你能确定你自己读的很标准吗？不要觉得听自己的声音很奇怪，当你跟着音频读的时候，把你的声音录下来，对比自己和音频的差距，把自己读的不好部分改正过来，才能越来接近native speaker.否则就算你听的音频再多，跟读的再多，读错的永远都读错。</span></p>', null, '0', '', '0', '1', '3', '1', '3.0', '', '16', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('3', '1', '1', '0', '初二上学期-物理解题技巧全解密，15天参透整套课程', 'admin/20200608/a0bfe8384d28de1bbcceebea03eb9b96.jpg', '', '6', '3', '1591602628', '0', '0', '', '1', '1591602628', '<p><span style=\"font-size: 14px; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">学习方法和解题技巧对于物理学习非常重要，今天为大家盘点总结了初中物理学习需要注意几个方面。</span><br/></p>', null, '0', '', '0', '1', '0', '0', '0.0', '', '5', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('4', '1', '1', '0', '家长如何指导小学生写作文', 'admin/20200608/aa82b4360494c27f01e4b25666fe2681.jpg', '', '7', '5', '1591603176', '1591608951', '0', '', '1', '1591603176', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"font-size: 14px; background-color: rgb(255, 255, 255);\">大多小学生的作文初体验，都充斥着无所适从，难以入手，这是正常现象，一方面小学生的语文积淀有限，没有丰富的素材;另一方面，没有经过系统的培训，小学生的写作技巧过于稚嫩，写作毫无头绪也就不足为奇，作为小学生的家长，想要帮助孩子度过作文难关，以下这六步写作基础思路要牢记。</span></span><br/></p>', null, '0', '', '0', '3', '0', '0', '0.0', '', '11', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('5', '1', '0', '1', '什么是《牛顿第一定律》？快速理解的小妙招有哪些？', 'admin/20201209/975348dcde02c1e2c50eed4d8bb3543a.png', '牛顿第一运动定律，简称牛顿第一定律。', '5', '1', '1591603421', '1607506266', '0', '', '-2', '1591603421', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">牛顿第一运动定律，简称牛顿第一定律。又称惯性</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">定律、惰性定律。常见的<span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700;\">完整表述：任何物体都要保持匀速直线运动或静止状态，直到外力迫使它改变运动状态为止。</span><span class=\"sup--normal\" style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: pointer; padding: 0px 2px;\">&nbsp;</span></span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">英国物理学家艾萨克·牛顿于1687年，在巨著《自然哲学的数学原理》里，提出了牛顿运动定律，牛顿第一运动定律就是其中一条定律</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">牛顿第一定律与牛顿第二、第三定律构成了牛顿力学的完整体系。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">牛顿第一定律给出了惯性系的概念，第二、第三定律以及由牛顿运动定律建立起来的质点力学体系只对惯性系成立。因此，牛顿第一定律是不可缺少的，是完全独立的一条重要的力学定律。</span></p>', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">牛顿第一定律</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">古希腊物理学家<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">亚里士多德</span></span>得出一个结论:</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/eca3aba9a5e7a141281daede7940b19f.jpeg\" title=\"ff06e9581e7d4386b0cf64f20a73ac54.jpeg\" alt=\"ff06e9581e7d4386b0cf64f20a73ac54.jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">伽利略</span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">认为：</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/8b183d19a1144e63abdc6b37b946195c.jpeg\" title=\"05e82721c2ef4b58896adc1d9fc97ae9.jpeg\" alt=\"05e82721c2ef4b58896adc1d9fc97ae9.jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">在水平面上运动的物体之所以会停下来，是因为受到&nbsp;<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">摩擦阻力</span></span>的缘故；如果物体不受外力作用，就会保持自己的速度不变。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">为此，他设计了一个<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">理想实验</span></span>：</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/f0442189186daecc12803cb8437e6d92.jpeg\" title=\"bfb5728c478343b9ad70c50e0b5b5ca2 (1).jpeg\" alt=\"bfb5728c478343b9ad70c50e0b5b5ca2 (1).jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">法国科学家</span><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">笛卡尔</span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">补充和完善了</span><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">伽利略</span></span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">的论点：</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/da39fd20cfce69c5a9c804b5e8a9f53f.jpeg\" title=\"42ebd17f49404ad293aa03256681f7bf.jpeg\" alt=\"42ebd17f49404ad293aa03256681f7bf.jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">牛顿</span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">在总结前人经验的基础上，概括出一条<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">基本定律</span></span>:即牛顿第一定律。</span></p>', '0', '', '0', '0', '0', '0', '0.0', '', '19', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('6', '1', '1', '0', '小学四年级英语课程 My school　在线电子课本', 'admin/20200608/5c70e0d80ec89f21019bae0dfeeb9f41.jpg', '', '3', '4', '1591603929', '0', '2', '1', '1', '1591603929', '<p><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/0ff81c8712ad080d07b7d3d45d08c473.jpg\" title=\"re42101.jpg\" alt=\"re42101.jpg\"/></p>', null, '0', '', '0', '3', '0', '0', '0.0', '', '2', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('7', '1', '1', '0', '什么是爆款文写作 如何写出小爆款作文-你需要了解以下几个步骤', 'admin/20200608/3fd71a54a1740a5c1b97f734e64962ad.jpg', '', '9', '5', '1591604717', '0', '0', '', '1', '1591604717', '<p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">学习新媒体写作的学生并不热衷于写热情洋溢的文本，但在积累和写作能力不足的情况下，写爆炸性的文本真的不是那么容易，下面看看什么是爆款文写作，如何写出小爆款文。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　　什么是爆款文写作</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　　一般来说，爆款分为两种，一种是大爆款文，一种是小爆款文。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　　大爆款的阅读量通常在百万级左右，且涨粉效果惊人，一天能涨粉5万到10万。什么概念呢?就是打开朋友圈，你会发现，大家几乎都在转发你的文章。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　　但是，大爆款文的出现有很多的偶发因素，比如说文章本身的话题性、平台的粉丝数量、以及发布的时机等。所以，大爆款文不常有，可遇不可求。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　　还有一种是小爆款文，小爆款文是指比平时的阅读量高出三五倍。比如说平时是1万的阅读量，然后突然就一下飙升到了五万，说明这篇文章已经属于小爆款了。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　　和大爆款文不同，只要我们多努力一下，熟练掌握写作套路，写出小爆款文还是可以实现的。</p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">　</p>', null, '0', '', '0', '2', '0', '0', '0.0', '', '7', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('8', '1', '1', '0', '化学教学中的几种解题思想的归纳', 'admin/20200608/a850543c29e2826b5e68f439b003b453.jpg', '', '5', '1', '1591605548', '1591867629', '1', '1', '1', '1591605548', '<p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">中学阶段，与化学学科联系紧密的是数学学科、物理学科等。数学学科、物理学科中一些重要的思想，如归中思想、数形结合思想、类比思想、守恒思想、控制变量的思想等，在平时的化学教学中，如果能有意识地渗透，对化学问题的解决常常有事半功倍的效果。笔者在教学中略有所获</span></p>', null, '0', '', '0', '3', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '1', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('9', '1', '1', '0', '浅谈如何有效提高化学课堂效率，学习化学式教学反思', 'admin/20200608/bf5bf1d180a64fb8817ff87695eccfce.jpg', '', '6', '1', '1591605947', '0', '0', '', '1', '1591605947', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: medium; white-space: normal; background-color: rgb(255, 255, 255); line-height: 16pt;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/4b7bd2261648cc30bb538210cada30b8.jpg\" title=\"timg (5).jpg\" alt=\"timg (5).jpg\"/></p><p><span style=\"font-size: 14px;\">化学式教学反思 一节课下来，我自我感觉还好。但是不知道是自己提问的正好是成都比较差的学生还是学生接受起来有点慢。效果还不是太理想。果真出现了一大批迷离的眼神。只有部分学生挺兴奋。虽然我有玩游戏提问，气氛是活跃起来了，但是真正的效果不知道怎样。 下节课，计划课前列一部分常见的化学式，提问我着重标注的需要关注的学生。包括一<span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"></span>部分课前习题的处理和课后习题的练习也是要把握好时间的。</span></p><p><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('10', '1', '3', '5', '如何在线快速掌握“力”的定义？掌握这些内容轻松学物理', 'admin/20201209/319c58b8b8b67987774ec54251127578.png', '', '6', '3', '1591606373', '1607507084', '0', '', '1', '1591606373', '<p style=\"text-align: justify; line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">同学们好，欢迎来到物理课堂，从今天开始我们就开始学习力学，首先是力在日常生活中，我们常常会提到力这个字，比如一个班集体，需要凝聚力，上课时，老师提醒大家要集中注意力，军队要提高战斗力，那么什么是物理学中的力呢？你观看过这样的体育运动吗？比赛两个运动员，腰间的力，比赛中也能看到类似的情景，用力拉弹簧拉力器，人对弹簧拉力器的作用，靠近小车上磁铁的磁铁的s极对n极有吸引的作用，靠近小车上磁铁的n极，手中的磁铁对n极有排斥作用，柠檬汁出来，对柠檬有挤压的作用，推土机推土，推土机对土有推的作用。</span></p><p style=\"text-align: justify; line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/23997289d4193ab62d0990d1fb9a82e7.jpeg\" title=\"574e9258d109b3de7b97874de8cf2987800a4c65.jpeg\" alt=\"574e9258d109b3de7b97874de8cf2987800a4c65.jpeg\"/></span></p><p style=\"text-align: justify; line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\">通过刚才这段话我们可以看出，有以下几个动词，运动员拉绳子，双手拉弹簧，磁体的S极吸引磁体的n极呢，推土机呢，推动一个物体，对另外一个物体产生了力的作用，所以说，力的定义就是一个物体对另外一个物体的作用，我们把它称为力，那么施加力的这个物体，我们叫做施力物体，而受到力的这个物体，我们把它叫做受力物体，这两个名词是一个新的名字，你要去记住他，理解它。我们用符号F来表示，全球通用的，单位是牛顿，简称牛，这个牛顿，我们知道他是一个人，一般情况下，只要名字用作单位的这个人，都是对物理有巨大贡献的人，那么牛顿，到底有多牛呢？那么老师，给你简单说一下。</span></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '21', '1', '1591603800', '1612948200', '拿笔记本认真做好笔记哦', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('11', '1', '1', '0', '奥数和数学有什么区别？学好高中数学的方法有哪些？', 'admin/20200608/cfeca4ecea9a1842c1e02408cb792efb.jpg', '', '6', '2', '1591607274', '0', '0', '', '1', '1591607274', '<p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/00ef9c30c55136889e8039fc1e119474.jpg\" title=\"timg (7).jpg\" alt=\"timg (7).jpg\"/></span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">奥数风靡全国已非三年五载，即使教育主管部门屡屡打压，但还是有深厚的“群众基础”，最近几年更是愈演愈烈，大有席卷学前班的趋势。一方面是万千家长挤破头，争抢优质的奥数教学资源，另一方面，什么是奥数，为什么要学奥数，怎么样学习奥数之类根本性问题却鲜有家长提及。</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　数，其实就是我们平常接触的数学，可能比课堂上的知识要拔高一些。但是这里有一个很大的误区：所谓的知识的拔高，主要的并不是知识广度上的超前学习，这个拔高主要是在现有知识构成上的一种“挖潜”，一种思维方式的拔高。这样说也许比较抽象，我们可以举个例子。经常听到大人这么说：这道题目，如果用方程的办法，设x，y，我是可以做出来的，但是我儿子才小学二年级，还没学啊，我就不知道怎么和他说了。这其实就是思维方式没有拔高，仅仅用了高年级的知识点来解答低年段的题目。</span></p><p style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　　既然高中如此重要，各科比较难学，尤其是数学，我们该如何才能掌握数学的学习方法，让我们成绩更上一层楼!</span></p><p><br/></p>', null, '0', '', '0', '2', '0', '0', '0.0', '', '7', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('12', '1', '1', '0', '生活情境在小学四年级的数学教学中的融入分析', 'admin/20200608/baed0c7e2bfd7a82c1392c6314b44cda.jpg', '', '8', '2', '1591607740', '0', '0', '', '1', '1591607740', '<p></p><p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/bc1353fd84f769e2131b0761cce0be97.jpg\" title=\"u=3597618720,2727138151&amp;fm=11&amp;gp=0.jpg\" alt=\"u=3597618720,2727138151&amp;fm=11&amp;gp=0.jpg\"/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">摘要：在新课程背景下，伴随着课程改革的深入发展，培智课堂教学的有效性是越来越重要。 根据培智学生的特点，本人结合近几年数学教学经验，围绕教学内容、教学方法、教学目标、教学手段几方面出发，对新课程背景下，怎样使培智学校低年级生活数学课堂教学更加有效做简单介绍。 关键词： 智障学生 生活数学 教学 有效性 《国家中长期教育改革和发展规划纲要(2010－2020年)》指出：今后十年中国教育改革发展要贯彻优先发展、育人为本、改革创新、促进公平、提高质量的方针，并把育人为本作为教育工作的根本要求，尊重教育规律和学生身心发展规律。要以学生为主体，以教师为主导，充分调动学生学习的积极性、主动性，把促进学生成长成才作为学校一切工作的出发点和落脚点。作为特教工作者，在日常教学生活中，更要做到育人为本，就要以生为主体，关注学生，笔者结合自身教育工作实际，从以下方面，让培智生活数学课堂更有效。</span></p><p><br/></p>', null, '0', '', '0', '2', '0', '0', '0.0', '', '7', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('13', '1', '2', '2', '是“公顷”还是“平方千米”？同学们傻傻分不清楚？', 'admin/20201015/8bcfe2736fa0551d8917ffbd8343b879.jpg', '', '2', '2', '1591609205', '1602813068', '0', '', '1', '1591609205', '<p style=\"line-height: 2em;\"><span style=\"color: rgb(51, 51, 51); text-align: justify; background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">在学习数学的过程中，学会自己归纳总结很关键，通过自己总结，将所学知识点分门别类整理，将老师讲解的知识转化成自己的知识，能够在做题时把知识点灵活运用到题目中去，这样才达到了学习的目的，这样一来掌握的知识点更扎实，进步也会更快。</span></p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200608/089b7cc69b1abab7082e5e5409cd303b.mp4', '12', '2', '1591608300', '1597829101', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('14', '1', '0', '1', '音频课: 双语听力练习', 'admin/20201209/cab2921967576648ebe37ace19debd83.png', '', '2', '4', '1591609818', '1607504781', '0', '', '1', '1591609818', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"></span></p><p style=\"box-sizing: border-box; text-overflow: ellipsis; margin-top: 0px; margin-bottom: 1em; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\"><strong style=\"box-sizing: border-box;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/f41a1d1c48792294d3b4837820b2faa4.jpg\" title=\"u=2168672476,955890954&amp;fm=26&amp;gp=0.jpg\" alt=\"u=2168672476,955890954&amp;fm=26&amp;gp=0.jpg\"/></strong></p><p style=\"box-sizing: border-box; text-overflow: ellipsis; margin-top: 0px; margin-bottom: 1em; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"box-sizing: border-box; text-overflow: ellipsis; margin-top: 0px; margin-bottom: 1em; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\"><strong style=\"box-sizing: border-box;\">小学英语口语入门<br style=\"box-sizing: border-box;\"/></strong></p><p style=\"box-sizing: border-box; text-overflow: ellipsis; margin-top: 0px; margin-bottom: 1em; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\">图文并茂、以图助学<br style=\"box-sizing: border-box;\"/>纯正口语、轻松易学</p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">英语精粹<br style=\"box-sizing: border-box;\"/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1. The&nbsp;bell&nbsp;is ringing.<br style=\"box-sizing: border-box;\"/>2.&nbsp;Hurry&nbsp;up or we&#39;ll be late.<br style=\"box-sizing: border-box;\"/>3. Is everybody here?<br style=\"box-sizing: border-box;\"/>4. Would you please help me with Lesson 2?<br style=\"box-sizing: border-box;\"/>5. Let&#39;s read the&nbsp;dialogue&nbsp;first.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><br/></p>', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">场景一 上学</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Mary:&nbsp;Hey! The bell is ringing.<br style=\"box-sizing: border-box;\"/>Linda:&nbsp;Hurry up or we&#39;ll be late.<br style=\"box-sizing: border-box;\"/>Mary:&nbsp;Come on.<br style=\"box-sizing: border-box;\"/>Mary &amp; Linda:&nbsp;Sorry, Miss Green. We are late.<br style=\"box-sizing: border-box;\"/>Miss Green:&nbsp;Hi, Mary and Linda, you are late again. Please go to your seats, but don&#39;t be late next time. Is everybody here?<br style=\"box-sizing: border-box;\"/>Henry(monitor):&nbsp;Paul is&nbsp;absent. He&#39;s sick.<br style=\"box-sizing: border-box;\"/>Miss Green:&nbsp;All right. Sit down, Henry. Let&#39;s begin our class.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">现在进行时主要用来表示正在进行或发生的动作。其一般形式为：主语+be(is/am/are)+动词的现在分词（即动词的ing形式）。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">场景二 上学</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Paul:&nbsp;Hello, Henry.<br style=\"box-sizing: border-box;\"/>Henry:&nbsp;Hi, Paul.<br style=\"box-sizing: border-box;\"/>Paul:&nbsp;I missed the class last week. Would you please help me with Lesson 2?<br style=\"box-sizing: border-box;\"/>Henry:&nbsp;Sure, I would.<br style=\"box-sizing: border-box;\"/>Paul:&nbsp;Thank you.<br style=\"box-sizing: border-box;\"/>Henry:&nbsp;That&#39;s OK. Please open your book and&nbsp;turn&nbsp;to page18. Let&#39;s read the dialogue first.<br style=\"box-sizing: border-box;\"/>Paul:&nbsp;OK.</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '29', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('15', '1', '0', '1', '小学生学习数学的基础思维练习-快乐学数学', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '', '3', '2', '1591610378', '1607506126', '0', '', '1', '1591610378', '<p><span style=\"background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">《快乐学数学》注重对小读者的兴趣培养和创意激发，强调数学的“生活性”、“娱乐性”和“游戏性”。刊物栏目设置包括数学故事类，生活知识类，游戏动漫类等多方面素质培养内容。</span></p>', '<p><span style=\"font-family: &quot;microsoft yahei&quot;; font-size: medium; background-color: rgb(255, 255, 255);\">《快乐学数学》杂志是由凤凰出版传媒集团主管，江苏少年儿童出版社主办的一份刊物。它面向全国小学生，针对小学生拓展学习。虽然该杂志针对小学生课程主科，但并非传统意义上的教辅，而是一份创新型学习画刊，以“培养数学兴趣、锻炼解题思维、丰富课余生活”为办刊宗旨，坚持原创，并引入国际先进的教育和办刊理念，开创了国内此类刊物的先河。</span></p>', '0', '', '0', '0', '0', '0', '0.0', 'admin/20200608/9bafea0d907f3cda653de296dfe37f28.mp4', '20', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('16', '1', '3', '5', '初一函数的图文讲解! 名师名课, 精品课程!', 'admin/20201209/23984b448418b5f9fb679c77bdeb752b.png', '', '2', '1', '1591663733', '1607504707', '0', '', '1', '1591663733', '<p>如果你是一名老师，相信你听到最多的就是教师这个职业好，教师这个职业受人尊敬，还有双休寒暑假……听起来无比的高大上，然则，非也。教师的地位只是名义上占优势。</p><p>如果你是一名小学老师，大家也会有上面的感慨，但是更多的是在心里默默地念叨：“教个小学，哎……”虽然人家表面不说，但人家早已用眼神告诉你。</p><p>但我今天却想说：“小学教育很重要！真的很重要！”小学老师的地位并不亚于其他阶段的老师。</p><p style=\"text-align: center;\"><img src=\"https://upload-images.jianshu.io/upload_images/10425886-e76276cc378e8c2b.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/373/format/webp\"/><br/><br/></p><p><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '23', '1', '1591663680', '1633085100', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('17', '1', '3', '5', '打造精彩的小学数学课堂――听张继刚老师《案例解读小学数学课堂情境的创设》有感', 'admin/20201209/b0d50569fb510d466b7ea6e53fbb2a56.png', '', '3', '2', '1591663917', '1607507068', '0', '', '1', '1591663917', '<p>张老师报告最主要的内容是怎样创设好的课堂教学情境，具体如下：</p><p>一、创设优良的教学情境有以下4个主要作用：<br/></p><p>1．激发学生学习动机。</p><p>2．发展学生的学习能力。</p><p>3．形成积极愉悦的学习氛围。</p><p>4．便于学生形成提出问题的意识，探索解决问题的策略。</p><p>二、创设好的数学情境要做到：</p><p>1．围绕既定的数学知识点。</p><p>2．符合学生的年龄特征及数学思维发展的实际。接近学生的最近发展区。</p><p>3．激发认知冲突。</p><p>4．尽量贴近学生生活实际。</p><p style=\"text-align: center;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/c54e2bd6fcd5fbff22ef054dafdde0e5.jpg\" title=\"timg (6).jpg\" alt=\"timg (6).jpg\"/></p><p><br/></p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '33', '1', '1591663860', '1709685600', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('18', '1', '3', '5', '英语教育中的这两个问题，比小学英语课本的错误严重一百倍', 'admin/20201015/8bcfe2736fa0551d8917ffbd8343b879.jpg', '', '7', '1', '1591664107', '1602753190', '0', '', '1', '1591664107', '<h2>引子</h2><p>前两天，一位学员在学员群发了下面这张图片：</p><p><img style=\"cursor: zoom-in;\" class=\"\" src=\"//upload-images.jianshu.io/upload_images/3393897-560d3bdf26691bcd?imageMogr2/auto-orient/strip|imageView2/2/w/1080/format/webp\"/></p><p>image</p><p>看场景，这是医院。看情境，是在问诊。这样一来，红圈里的问话的确有点奇怪，因为What’s wrong with you?现在一般用来表示责备和不满。意思和它类似的还有what’s the matter with you?还有百度掌门人那句冲口而出的</p><p><img style=\"cursor: zoom-in;\" class=\"\" src=\"//upload-images.jianshu.io/upload_images/3393897-754d4e59ebeac11f?imageMogr2/auto-orient/strip|imageView2/2/w/1080/format/webp\"/></p><p>image</p><p>What’s wrong with you?</p><p>What’s the matter with you?</p><p>What’s your problem?</p><p>这几个问句，字面上虽然都是询问“你有什么问题”，<strong>但是却并不用来询问病情</strong>，至少在我看过的英美影视作品和我自己在英语国家看病的经验中，没有听到医生这样问过病人。</p><p>以前这些问句有没有这层意思，说实话，我不确定，手上也缺乏这样的资料，有兴趣的朋友可以下去查一下。或许几十年前有过，但现在人们不这样用了，毕竟语言一直处于变化当中，所以字典里面有些单词后面才有old-fashioned（过时的）或者obsolete（废止的）的标注。</p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '14', '1', '1591664100', '1625712600', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('25', '1', '2', '2', '颠覆英语之六：中国的英语教育现状和如何学习英语', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '', '3', '4', '1591673470', '1607506967', '0', '', '1', '1591673470', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">从对语言本质的再思考，英、汉语比较概论一直到相关英语语言现象的专题讨论，无非就是想说明一个问题，就是到底怎样才能学好英语，我想这可能是每一个中国的英语学习者或者将要考虑进行这种学习的读者所最关心的。当然，这也是本书所必须要回答的问题。其实，通过本书前面内容的讨论，细心的、独立思考的读者肯定已经形成了一套完整的想法，的确，我个人关于英语学习的观点已经展露无疑了。但出于方方面面的考虑，我觉得将这些观点进行一下系统的汇总和整理来结束本书还是很有必要的。</span></p><p style=\"text-align: center;\"><br/><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/f558fd05d0a509a7ca802a9c01cb9cec.jpg\" title=\"u=3227362740,1120188207&amp;fm=26&amp;gp=0.jpg\" alt=\"u=3227362740,1120188207&amp;fm=26&amp;gp=0.jpg\"/></p>', null, '0', '', '0', '0', '18', '4', '4.5', 'admin/20200609/2532f3428dc2954c2b7a6234518cebff.mp4', '39', '2', '1591673460', '1610084946', '58558563', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('26', '1', '2', '1', '小学三年级数学良好学习习惯的培养，提升口算能力训练', 'admin/20201209/68f060aaf03578c0b8226811399f8a15.png', '', '7', '2', '1591673690', '1607506947', '1', '1', '1', '1591673690', '<p style=\"text-align: center;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;<img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/8bafa75fa51a7132614f6f04aa93ab53.jpg\" title=\"timg (21).jpg\" alt=\"timg (21).jpg\"/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">口算能力是生活中常用的一种计算形式，贯穿于小学阶段的数学教学中，但是，培养学生口算能力的最佳时期是三年级阶段，三年级的学生进入了比较复杂的计算学习中，而口算则是进行这种复杂计算的基础，所以具备了这种能力，能够帮助学生掌握复杂笔算、估算及四则混合运算的方法，能提高他们计算的正确率。而且小学数学新课标中提出，要培养学生的计算能力，首先要重视基本的口算训练，他们能够掌握口算方法，将直接影响多位数加减法和乘除法的计算。因此，小学数学教师应当把培养三年级学生的口算能力作为一项重要的教学内容。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;一、理清算理，掌握科学有效的口算方法。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">不论是口算还是笔算都应加强算理分析的训练，只有理清了算理，才能有效地掌握口算的基本方法。比如：在计算16－9时，要让学生马上想到用10－9=1,1＋6=7。口算训练的方法很多，要结合教学实际和本班学生的年龄特点，选择灵活多样的口算方法，充分发挥学生的主体性，调动积极性，坚持不懈的训练，才能提高学生的口算能力。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;二、采取灵活多样的训练形式</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在口算中经常调换口算形式，将视算和听算相互结合起来，交替使用，可以提高学生口算的兴趣，使他们的学习心理始终保持着渴求积极状态。每节数学课视教学内容和孩子的实际情况，选择适当的时候，穿插进行趣味性练习，多种形式的口算训练能让全班都积极主动参与，让每个孩子都有练习的机会，既提高孩子对口算的兴趣，也提高了计算的速度，达到了训练的目的。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;三、坚持培养良好的口算习惯</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">训练口算，应根据儿童的年龄特点，适当进行口算训练。练习内容要灵活多样，并结合学生学习的教材内容有机进行，持之以恒，使学生树立认真、严格、刻苦钻研的学习态度和独立思考、克服困难的精神。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">总之，口算能力训练在小学三年级数学学习中有重要的作用。我们既要加强口算的基本能力训练，还更应立足于现实生活，在尊重学生个性化算法的基础上，适时引导学生有意识的选择口算方法，来引领学生在社会生活中去运用口算，以帮助学生灵活地进行口算。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; 四、理清算理，掌握科学有效的口算方法。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">不论是口算还是笔算都应加强算理分析的训练，只有理清了算理，才能有效地掌握口算的基本方法。比如：在计算16－9时，（也就是个位不够减的题型）要让学生马上想到用10－9=1,1＋6=7。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">科学有效的口算方法，是提高口算能力的重要途径之一，常用的口算方法有以下几种：</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.运用“凑十法”口算。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.运用“分解法”口算。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.运用一些速算技巧进行口算。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4.采用“基准数”速算。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">口算训练的方法很多，要结合教学实际和本班学生的年龄特点，选择灵活多样的口算方法，充分发挥学生的主体性，调动积极性，坚持不懈的训练，才能提高学生的口算能力。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;五、采取灵活多样的训练形式</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">每天固定课前进行几分钟的口算练习，形式可以多种多样，视算和听算是口算练习中两种基本的形式。视算是通过眼看题目脑算、口说得数；而听算则要求通过耳听、脑记和脑算，方能算出得数，难度较大。在口算中经常调换口算形式，将视算和听算相互结合起来，交替使用，可以提高学生口算的兴趣，使他们的学习心理始终保持着渴求积极状态。每节数学课视教学内容和孩子的实际情况，选择适当的时候，穿插进行趣味性练习，多种形式的口算训练能让全班都积极主动参与，让每个孩子都有练习的机会，既提高孩子对口算的兴趣，也提高了计算的速度，达到了训练的目的。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; 六、坚持培养良好的口算习惯</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在口算训练中，要培养学生细心、勤思等良好的个性品质和习惯，从儿童一入学学习始，就应有目的地培养，为后继学习打下良好的思想基础和知识基础。训练口算，应根据儿童的年龄特点，适当进行口算训练。练习内容要灵活多样，并结合学生学习的教材内容有机进行，持之以恒，使学生树立认真、严格、刻苦钻研的学习态度和独立思考、克服困难的精神。在长期不懈的努力中，培养学生良好的口算习惯，从而提高孩子的口算能力。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; 七、持之以恒，坚持不懈的训练。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">无论做任何事情，只要坚持不懈，肯定能把它做好。口算训练也是如此，学生应在课余或者课下，每天进行10到15分钟的口算热身训练，长此以往，口算能力一定会有所提高。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp; &nbsp; &nbsp; &nbsp; 总之，口算能力训练在数学学习中有重要的作用，我们既要加强口算的基本能力训练，还更应立足于现实生活，在尊重学生个性化算法的基础上适时引导学生有意识的选择口算方法，引领学生在社会生活中去运用口算，帮助学生学会灵活运用口算，有方法的解决现实生活问题。培养学生数学应用意识和解决问题的能力，为孩子的将来打下扎实的基础。</span></p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '2', '1591673640', '1592981964', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('27', '1', '2', '1', '小学五年级学英语有什么方法？要不要报名培训班？', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', '', '9', '4', '1591673943', '1607506929', '0', '', '1', '1591673943', '<p>其实让孩子学好英语，严格的来说并没有捷径可走。</p><p>学好英语的关键是重复学习，对于5岁孩子怎么学英语，应该是以趣味性的故事为主。可以每周一个精彩的英语故事，每个故事都有很多小孩喜欢的场景。孩子会主动创造重复的机会，常常突然想起来某个场景觉得好笑会主动表演，蹦出一些句子，如果孩子要求父母配合，作为父母就趁机重复一串台词。也可以很多台词可以在生活中用起来，家长找机会重复。</p><p>家长也可以把故事编成歌谣，把孩子熟悉的表达都编近歌谣里，顺便复习。提问也是特别好的一种重复方式，最简单的提问yes or no，或给出两个选项，换一种视角看故事。提问本身也是有趣的真实输入，孩子能回答的及时反馈，也能给家长更多坚持的信心。</p><p>那么小学五年级英语有没有必要报名辅导班呢？</p><p style=\"text-align: center;\"><br/><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/1257da967615fd05297d390a44de23c6.png\" title=\"QQ截图20200608163200.png\" alt=\"QQ截图20200608163200.png\"/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '10', '2', '1591673880', '1591857644', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('28', '1', '1', '0', '怎样提高六年级小学生的英语听读能力？家长再也不用愁了！', 'admin/20200609/ee3ba6f70ef5bd08df01fa2adf7c4627.jpg', '真正学好英语，就要掌握听，说，读，写四个方面。', '10', '4', '1591674866', '1592378211', '0', '', '1', '1591674866', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><strong style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; box-sizing: border-box;\">优化听力训练方法</strong></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">听力训练是一个长期的训练过程，科学的训练直接关系到听力训练的效果。</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">在听力训练过程中，我们要做到如下几点：</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1.加强学生语言基础知识的学习，增加学生英语词汇量。英语词汇量是听力学习的基础，没有一定的词汇量，学生就不能听懂，无法理解句子、文章的含义，当然正确解答听力题目也就无从谈起。语言基础知识的学习包括对语法内容的学习，这对于提高答题的准确率也是至关重要的。</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2.鼓励学生多看课外书，注重学科渗透，扩大自身知识面，这有助于学生更加容易理解听力材料的内容。</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3.重视听力训练与文化背景的教学关系。我们在听力教学过程中要重视文化差异教学，确保学生在听力过程中不会出现由于文化差异而导致理解的偏差。</span></p>', null, '0', '', '0', '2', '0', '0', '0.0', '', '2', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('29', '1', '2', '2', '作文写作指南', 'admin/20201209/975348dcde02c1e2c50eed4d8bb3543a.png', '', '2', '1', '1591674874', '1607504657', '0', '', '1', '1591674874', '<p style=\"text-align: center;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/9cf08181a6ca1870edb4f68dc4d77cac.jpg\" title=\"timg (22).jpg\" alt=\"timg (22).jpg\"/></p><p>本学期开学第一周，周四和周五上课，鉴于刚收假，学生需要适应，我便提前引导学生学习了本册教材的课外八首古诗词，是考虑学生可以提前背记，后面学习课内文章需要背诵的话，能减轻一些背记的负担。七年级下册是八首绝句，除了王维的《竹里馆》是五言，其余都是七言，诗歌内容总共216个字，我给了学生两周时间，应该是可以背熟的。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 我带了两个班，从上学期开始，就发现（5）班的学生总体比较平衡，学习习惯都还可以，作业、背记每次都完成得不错，课代表也比较得力，经常撵着问我还有什么作业要布置。良好的班风促就了好的学习成绩，任课老师也轻松许多。四班学生大部分很认真，学习上比较踏实。但好差分别有些大，有7、8个孩子在学习上很不用功，作业不能按时完成，背诵几乎没有。每天检查，每天就是这个样子，小小年龄，倒是扎起了“油盐不进”的样子来，为此很是苦恼。邀请了家长一起来解决问题，最后也是徒劳。真真应证了曾经参加某次培训时，一位导师给我们的忠告：“当一个学生各方面都比较弱，长期不能完成自己的学业时，家长是叫不得的，一般情况下，孩子就是家长的一面镜子。”</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 即便如此，作为语文老师，还是要抓住所带班级学生的语文学习。每每要求学生背记某篇或是某段时，我总是要将文章层次清清楚楚地梳理一番，以便学生背记时能前后贯通，随文意背诵。结果是，认真的孩子什么时候都是认真的，不认真的连指导背诵技巧时都不愿意虚心地听一下。所以，五言也罢，七言也罢，还是短文也罢，没有一样是可以背下的。语文测试时，默写的六分，往往2、3分，有的甚至全军覆没。乡镇的孩子，总体学习水平本身就比市区学生差一些，这些基础给分的也不愿意努力，只能是越差越远。有些孩子包括家长不能正确认识自身问题，往往字词都弄不清楚，背记都有问题，还要专心研究阅读理解，效果也是可想而知的。初一的背诵篇目在整个初中阶段是最少最短的，如果我们还以无所谓、拖延的态度对待古诗文背诵的话，初三的语文复习必然任务繁重，愈复习愈倒退。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 有感而发，是因为所带班级差异太大。（5）班在上周三已经全班完成古诗文背诵，（4）班到今天背不熟背不下的还大有人在。因为背诵的问题，有时批评教育干扰了课堂教学，不督促检查，又失了语文学习的根本。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 只愿，且学且认真，明了语文背诵很重要！</p><p><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200609/850fc3d6e1dcaa29f5e4011160b8456f.mp4', '42', '1', '1591674840', '1654746840', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('30', '1', '2', '2', '初二是个“坡”，熬不过去毁前程！附初二全年学习规划表，家长必看', 'admin/20201209/b0d50569fb510d466b7ea6e53fbb2a56.png', '', '6', '2', '1591681037', '1607506911', '0', '', '1', '1591681037', '<p style=\"text-align: center;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/59b2b646969b50037d96df0d1c7cff2b.jpg\" title=\"timg (6).jpg\" alt=\"timg (6).jpg\"/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">升入初二的同学马上能感觉到知识的难度和初一不是一个级别，比如初二数学含中考60%的考点，中考几何最难的辅助线构造是在初二进行学习，同时初二开始学物理的缘故，精力会相对分散一些，也加大了学习的难度，所以，初二通常被称为“爬上坡路”</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">初二就是冲向山峰的“坡儿”。与起点处相比，它少了许多的鼓励、期待；与终点处相比，它少了许多的掌声、加油，还有那条红线。它是孤身奋斗的阶段，是一个与寂寞为伍的阶段，是一个耐力、意志、自控力比拚的阶段。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">有句话大家可能都听说过：初一相差不大，初二两极分化，初三天上地下！大家公认，初二是孩子成绩下滑的高危期！在别人奋力攀登的时候，有些孩子产生懈怠放松的心理，很容易滑落坡底。</span></p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200609/f0fcd2baec7a3825606a08b1b13180a2.mp4', '24', '2', '1591675260', '1591943597', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('31', '1', '2', '2', '【生涯教育】中学生涯规划教育7大要素，缺一不可', 'admin/20201209/974c30687afbd12f39cb1e2504433970.png', '', '5', '5', '1591681977', '1607506895', '2', '1', '1', '1591681977', '<p style=\"text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/bf7be3f9f001451f92079186000de425.jpg\" title=\"timg (1).jpg\" alt=\"timg (1).jpg\"/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">开展中学生涯规划教育，是促进学生全面个性发展的内在需求，也是素质教育的最主要目的。知涯生涯教育研究院院长王展院长指出：中学生涯规划教育7大要素包括：知己、知彼、目标、抉择、行动、评估和调整，但是在现实里，很多高中学校在进行生涯规划教育的过程当中，仅针对其中一项或少数几项开展生涯规划教育。这样是不妥的，因为对于中学生来说，没有一个完整的生涯规划教育脉络，是无法规划未来生活的。</span></p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200609/2ddb244230eddaa16b553b955e914151.mp4', '2', '1', '1591681920', '1614720300', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('33', '1', '3', '5', '小学语文应该怎样学？学霸都是这样做的！', 'admin/20201209/93ae74b4985410d370bf7fdaeeedd87e.png', '', '10', '1', '1591682799', '1607507048', '0', '', '1', '1591682799', '<p style=\"line-height: 1.75em;\"><span style=\"color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">语文是一门大科，从小学到高中，占分比重都很大。同时，语文又是提分最慢的一科。不过，再困难的事情也是有方法的，想学好语文应该怎样做呢？</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">阅读是语文的根本</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">博览群书是培养孩子语文素养基本功之一，甚至可以说阅读是语文学习的根本。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">大量的课外阅读是提高孩子语文水平不可替代的手段。</span>美国心理学家克拉森的心理实验研究表明，学生充满兴趣的课外阅读对提高他们写作能力的作用，远远大于机械的写作训练。</span></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '8', '2', '1591682580', '1594779900', '做好笔记哟~', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('35', '1', '1', '0', '从《三木健apple+展》到儿童英语教育', 'admin/20200609/ea75f844e8f8769b87db708e7ea77658.jpg', '', '3', '1', '1591682900', '0', '1', '9.9', '1', '1591682900', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">上周六在上海当代艺术馆看了</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">“dna | APPLE+”展览</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">。&nbsp; 一个关于设计教育 观念的展，包括设计的方法 、设计的哲学。体现“从大处着眼，从小处着手”的设计思路。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在三木健看来，设计应该是同时具备美的意识和意味。他的教学计划是通过“理解-观察-想象-分解-编辑-可视化”的过程，阐释“设计是什么”。他选择了世人皆知的苹果作为研究对象实施了这一过程。三木健希望藉助展览启发观看者思考究竟何为设计；设计与艺术的边界何在；人、设计、世界三者的关系为何，以及如何唤醒创新的基因。展览以“苹果”出发，又不执着于物体自身，而是努力褪去形式的浅表和消费主义的束缚。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">三木健有两个很有意思的定义：“学问：就是学会提问”，“学生就是学习生活”&nbsp; 。</span></p><p><br/><br/></p>', null, '0', '', '0', '1', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('38', '1', '1', '0', '小学一年级最基础的日常英语学习方法+口语，赶紧学起来', 'admin/20200609/6777c028f380b42ab44434d66569610c.jpg', '', '2', '4', '1591687125', '0', '1', '66', '1', '1591687125', '<p>英语对于大多数的家长来说都是“外行”的，但是，在小学英语学习中家庭教育又是非常必要的，家长如何辅导孩子学好英语呢？可以从以下几个方面入手。</p><p>1.正确发音</p><p>我们生活在汉语语境中，这对孩子学习英语造成了一定的阻碍，英语对于大多数的家长来说都是“外行”的。因此，在家多放英语录音，如把早晨起床的闹钟换成英语录音，每天30分钟的听力。同时鼓励孩子模仿对对话，时间久了，孩子的英语发音一定会很标准。</p><p>2.熟悉单词</p><p>一天熟悉一个单元还是能做到的。学会发音后，叠读，如：dog ,dog 狗； cat cat 猫 。等。第一天 1 个单元，第二天叠读 1 和 2 两个单元；第三天叠读 1，2，3 单元，天天如此，不用刻意记着，只要叠读，等到第十天，我们把10个单元都熟悉完了，长期坚持，85%的单词会永久存在孩子记忆中。</p><p>3.提供良好环境和表演机会：</p><p>家长要尽量给孩子提供一个英语空间，哪怕是一个小小的英语角，在这个角里面尽可能多地摆放、挂置一些与英语有关的物品。如英语图画书、英语卡片和图画以及孩子亲手制作的东西等等。让孩子在生活中时时处于英语学习状态。</p><p>4.将孩子的英语学习和生活结合起来</p><p>家长应鼓励孩子结合生活实际进行学习，如在家居上贴上英文标签(在床上贴上 bed，在电视上贴上 TV 等)，在外面玩时见到熟悉的事物，可问问孩子用英文怎么说？如喝可乐的时候一起看看杯子上的Cocacola 等等。要培养孩子逐渐养成留意身边英语的好习惯，久而久之就会有意想不到的效果。</p><p>5.学会读课文</p><p>如果单词很熟悉，那么课文就要鼓励孩子自己读下来，有不认识的单词，回到单词表里看看能不能找到，找不到帮孩子查查电脑，然后把生词移到课本后面的单词表里。读课文也要和学单词一样，第一天读第 1 课，第二天读1 和 2 课，第三天读 1，2，3 课，孩子学习的速度会在不知不觉中得到很大的提高。</p><p>6.课上认真听，课下反复练</p><p>无论老师用什么样的方式授课，他所讲的知识一般都是重点和难点。一定要让孩子认真听，充分利用课堂时间；课下尽量抽出时间复习，对所学的知识加以巩固练习，有疑问的地方可以及时找老师解决。这种随学随用的方法有助于对所学知识的透彻理解和扎实掌握。</p><p>7.为孩子英语课外读物</p><p>孩子都喜欢新鲜的东西，如果孩子不愿意再去重复课上的英语内容，家长可以给孩子选择一些英语读物、英语学习工具等。一方面可以提高孩子的听力及阅读量，加强孩子英语语感，对英语写作起着潜移默化的作用。</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>从起床到出门早晨好！</p><p>Good morning！</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>该起床了！</p><p>It&#39;s time to get up！</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>你醒了嘛？</p><p>Are you awake？</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>今天是个好天！</p><p>It&#39;s a nice day！</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>把被子叠好。</p><p>Let&#39;s fold up the futon.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我做了个美梦。</p><p>I had a good dream.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我得洗脸了。</p><p>I have to wash my face.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>该吃早饭了。</p><p>It&#39;s time to eat breakfast.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我还困着呢。</p><p>I&#39;m still sleepy.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>刷牙了吗？</p><p>Did you brush your teeth？</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我得梳梳头了。</p><p>I have to comb my hair.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>快换衣服。</p><p>Hurry up and get dressed.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我走了，妈妈。</p><p>I&#39;m leaving.Bye mom.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我要迟到了。</p><p>I&#39;m late.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我回来了。</p><p>I’m home.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>你回来了。</p><p>Welcome home.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我可以出去玩会儿嘛？</p><p>Can I go out and play？</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我饿了。</p><p>I&#39;m hungry.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>真累啊！</p><p>I&#39;m tired！</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>还是家好哇。</p><p>It&#39;s good to be home.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>晚饭好了吗？</p><p>Is dinner ready？</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>妈妈，今天晚饭吃什么？</p><p>Mom，what&#39;s for dinner tonight？</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>我开动了。</p><p>Let&#39;s eat.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>该吃饭啦！</p><p>It&#39;s time to eat！</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>这就来啦！</p><p>I&#39;m coming！</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>别弄撒了。</p><p>Don&#39;t spill it.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>把碗里的菜吃光。</p><p>Eat all of your vegetables.</p><p>小学一年级最基础的日常英语学习方法+口语，赶紧学起来</p><p>把饭吃完。</p><p>Finish up your plate.</p><p>积少成多，多加练习，让孩子在双语环境下快乐成长。</p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('39', '1', '1', '0', '小学三年级是英语阅读分水岭：好的越好，差的越差', 'admin/20200609/15ad197674cede63e8c64cb1e76acbff.jpg', '', '7', '4', '1591687248', '0', '1', '5', '1', '1591687248', '<p>近日的推送了不少阅读文章，就有家长在后台发来：</p><p>“明明和邻家孩子读一样的课程，能拼读单词，会说会表演，</p><p><strong>可为啥三年级后英语成绩就落后于人？”</strong></p><p>“您平时在家有没有和孩子一起阅读，群上打卡呢？”树童老师反问。</p><p>“书是有买的，可哪有那个时间和精力呀……”有家长回复。</p><p>很多家长都知道英语启蒙要早，英语阅读重要。可是，在培养孩子的阅读能力时有心无力，殊不知这样很容易便错过了培养阅读兴趣的黄金期。</p><p>某国际语言教育研究院专家指出：小学三年级之前孩子英文阅读能力的系统性培养极为重要。否则到了四、五年级就难以应对越来越多的语法、阅读和写作，直接影响小升初时的英语成绩。</p><p>小学三年级是孩子从“Learn to Read”过渡到“Read to Learn”的一个关键时间点。错过了这个黄金学习阶段，孩子会陷入到“英语阅读的马太效应”。</p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('40', '1', '1', '0', '柴森物理——可以让小学初中家长孩子一听就迷上的物理课！', 'admin/20200609/2bf1653d2427ccb2589a3004754d4c0f.jpg', '', '8', '3', '1591687498', '1591867617', '1', '998', '1', '1591687498', '<p><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/7b5458809b3bdb348c3e920ac798e7e3.jpg\" title=\"timg (24).jpg\" alt=\"timg (24).jpg\"/></p><p>物理，很多孩子家长都说那到了初中再学习，作为小学生，用不到！</p><p>我关注柴森物理有半年之久，看了柴森老师的试听课，公众号，朋友圈，为老师优质的课程深受启发！</p><p>学习柴老师讲长度测量和参照物这节课</p><p>幽默风趣的柴老师一开始就深深迷上了孩子们</p><p>大白化的语言，简单清晰的解释枯燥的物理概念，瞬间秒懂！</p><p>各种生活中常见的实例举证，让学习与日常紧密结合，学习变得有趣又实用！</p><p><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '1', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('41', '1', '1', '0', '化学教育问答——吾生也有涯而知也无涯', 'admin/20200609/cca9b8a2e7f9e27766f9336940d84e7a.jpg', '', '9', '1', '1591687709', '0', '1', '88', '1', '1591687709', '<p>在社会性这个概念上，以往我会将其理解为所学知识与社会以及社会实践的关系。而今天听到的魏老师举的例子，是分别从文学和科学角度分析的。他提到莫言的获奖感言是说自己如何，自己家人如何……而屠呦呦的获奖感言是团队如何，社会如何，国家如何……人们往往会从直观上对两者进行评价，觉得莫言自私，而屠呦呦无私……实际上，文学创作确实不需要太多外界的交流，一般是一个人完成的。而科学的研究需要科学家的合作交流，政府的支持……与外界的关系密不可分。也正因如此，使得这两件事本身存在着差别，我们不能用同一标准去评判不同的事物。在评判中，应当减少个体的主观性，增进知识的客观性，我觉得这一点是十分重要的，其实这也要求我们要有基本的知识水平，从而提升我们的评判能力。</p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('42', '1', '1', '0', '这道初二物理“做功”题，让半数初学者忘了自己！是否误解了题意', 'admin/20200609/51b3fb9389c90917a865bbf391477f46.jpg', '', '6', '1', '1591687842', '0', '0', '', '1', '1591687842', '<p>初二物理目前正在进行最为重要而且较难的力学内容：功和功率。由于这两个概念比较抽象，初学这部分内容的学生很容易犯这样那样的错误。所以，对于功和功率的基本概念要深刻理解把握！</p><p></p><p>今天我们主要通过一道做功题，来归纳总结一下学习“功”时应该注意的问题。</p><p>首先，我们要会判断物体是否做功：</p><p>力学里所说的功包括两个必要因素：一是作用在物体上的力，二是物体在这个力的方向上移动的距离。要注意，“作用在物体上的作用力”和“物体通过的距离”必须针对同一物体而言。即W=FS这个公式中的三个物理量具有“同体性”，而且要注意“同时性”，发生距离的过程必须对应相应的力！</p><p>也就是说，不做功的情况有很多，要注意下列三种不做功的情况：</p><p>1.有力无距离。即“劳而无功”。比如说用力推动物体，但是物体没有移动，则推动物体的力没有对物体做功。</p><p>2.有距离无力。即“不劳无功”。比如说物体在光滑的水平面上做匀速运动，由于水平面上没有阻力，则没有动力，则没有力对物体做功。</p><p>3.力与距离垂直。即“垂直无功”。比如背着书包在水平路面上运动，重力以及背书包的托力对书包都没有做功。</p><p><br/><br/></p><p><br/></p>', null, '0', '', '0', '1', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10001', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('43', '1', '1', '0', '中考前临时突击学习物理并能立竿见影的方法！', 'admin/20200609/1b72eca87b09d834dadad3ffe112d37f.jpg', '', '2', '1', '1591688079', '0', '1', '65', '1', '1591688079', '<p>中考之前有没有临时突击学习物理并能立竿见影的方法？</p><p>答案是：“有的”！</p><p>不管物理基础好的学生还是差的学生，都有一个最有效的突击方法——研究之前做过的错题！</p><p>如果有自己平时做的物理错题集，那就重点研究错题集，如果没有，就把之前做过的所有物理试卷、物理辅导书中的错题拿出来，好好研究。</p><p>如果有往届中考学霸的物理错题集，那就更是非常好的取长补短的最实用资料。</p><p>通过错题查缺补漏、归纳总结、形成系统。此方法在历届中学生中屡试不爽！</p><p><strong>研究归纳这些错题时要注意以下几点：</strong></p><p></p><p>1.在考试的前几天，把之前做过的物理错题至少研究三遍！逐步缩小错题范围。</p><p>2.研究错题要深思广思！</p><p>第一步要重新搞清楚物理过程、解决思路；</p><p>第二步要搞清楚当初出错的原因；</p><p>第三步要抓住问题的“核心”与“关键”。“核心”是指考察的知识点和方法，“关键”是指思考解决过程时阻碍思维深入的那一个或者几个障碍点！</p><p>3.归类对比，紧抓“联系”和“区别”！对于考察相同知识点的错题，多放在一起进行研究对比，通过比较抓住各个知识点之间的联系和区别！通过多题归一，归纳出一套行之有效的类型题解决方案，形成良性思维定势，以后只要遇到此类题就能一眼看透本质。</p><p>4.一题多解，举一反三！对于一些典型错题，尽可能通过主动改造题意，培养发散思维，形成创造性思维能力！</p><p>这就是突击学习物理的最好用方法，也是提高物理成绩最快的方法。当然此方法可以用在平时的物理学习当中，也同样能够起到立竿见影的作用！</p><p><br/><br/></p><p><br/><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('44', '1', '0', '1', '【学习方法】小学六年级数学学习建议——快来听一听！', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', '在小学数学教材中，计算所占的比重很大，尤其是低年级。', '10', '2', '1591688121', '1607506149', '1', '0.01', '1', '1591688121', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">数学的计算学习就像语文的拼音和识字学习，是最基本的。</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; margin: 0px; padding: 0px;\">学不好拼音和识字，语文就学不好，计算差，数学同样学不好。在小学数学教材中，计算所占的比重很大，尤其是低年级，学生计算能力的高低直接影响着学习的质量。所以，<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; margin: 0px; padding: 0px;\">提高孩子的计算能力，就要从低年级入手。</span></span>在以后的中学阶段，许多科目都对计算要求非常的高，因此，在小学阶段，培养孩子较高的计算能力，为以后的学习打好基础非常重要。</span></p><p><br/></p>', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">注重实践，重视生活中的数学</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">数学，并不是纸上谈兵。其实<span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; margin: 0px; padding: 0px;\">数学的学习对生活的影响很大，能够给生活提供很多的帮助。</span>例如买东西、计算利率、盈利等，这些都会用到数学。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">你可以在生活中，有意识地跟孩子提数学问题，让他解答。很简单，你带孩子去买水果，一斤苹果5元，买3斤多少钱，给阿姨20元，找回多少钱。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">别小看这些，在小学数学学习中，解决问题占的分数是最多的，而解决问题无非就是判断用加减乘除中的哪种来列式解答，这些问题其实就是生活中的问题，孩子在生活中接触得多，养成解答的习惯，在学校课堂上遇到类似的问题自然就会解答。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/7d4013a0e15fd560eab7c8bc87e155d3.png\" title=\"61f41653-65ab-468c-bb8c-bffbf9abc2fc.png\" alt=\"61f41653-65ab-468c-bb8c-bffbf9abc2fc.png\"/></span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">适当学奥数，锻炼思维</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">在现在的小学数学学习中，<span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; margin: 0px; padding: 0px;\">奥数基本已经成为小学生必学的科目。</span>但是有的家长认为学校都没有专门开设奥数课，学习奥数肯定也没有什么用处，用不着学。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">其实，大家不妨这么来看待数学和奥数：</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">课程内的数学：是每天的饭菜，保证生存所需。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">基础奥数：是每周的运动，保证身体健康。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">竞赛奥数：是专业的运动，目标是夺金。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: justify;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">其实很多的奥数题并不难，只是教孩子从另外一角度看问题，跳出书本的方法解决问题，丰富孩子的知识面。这种训练能够更好的锻炼孩子的思维。当孩子的思维变得更加灵活后，孩子就能用不同的方法或者是更加简单的方法去解决一个问题。当然，家长不能要求孩子必须要拿奖，给孩子过多的压力，会使孩子讨厌学习。</span></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '1', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('45', '1', '1', '0', '小学数学：培养自主学习能力是关键！', 'admin/20200609/8f4a946441f7bd6c2c92ea04684b1b7d.jpeg', '', '10', '2', '1591688609', '0', '1', '0.01', '1', '1591688609', '<p style=\"text-align: justify; line-height: 2em;\"><span style=\"color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">事实证明，小学生没有形成正确的学习动机，便表现出注意力不集中、情绪不稳定、意志力薄弱的现象。针对一年级孩子的实际情况，首先，我讲一些科学家小时候怎样立志成才的故事，通过具体、形象而生动的语言，激发他们“我要学，我想学，我一定要学好”的信心。其次，学生积极主动的学习，还必须靠教师良好的教学过程来影响。低年级学生注意力相对分散，观察力不集中，情趣易变。针对这些特点，在培养学生学习兴趣时，要通过生动的教学过程，培养和发展学生的意志品质，激发他们独立思考和探索知识的兴趣。为此，我重视运用符合儿童心理特征的形象语言，配合教具演示，由直观形象思维逐步过渡到抽象思维，让学生在快乐学习中逐步提升。</span></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('46', '1', '1', '0', '学生抱怨阅读理解太难？别担心，这些方法很好用！', 'admin/20200609/f70c9b21c36dba36251d6b8b9f35dd36.jpeg', '', '7', '5', '1591689784', '1591867588', '1', '111', '1', '1591689784', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">语文考试中的阅读理解是整个试卷中很重要的一个部分，这一点从它所占的分值就可以看出，可是好多同学看完文章，答题的时候很容易懵。到底阅读理解该如何作答呢？废话不多说，上干货！</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">解题步骤</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1．通读文章，了解主要内容，揣摩中心思想。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2．认真通读所有题目，理解题意，明确题目的要求。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3．逐条解答，要带着问题，仔细地<span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; margin: 0px; padding: 0px;\">阅读</span>有关内容，认真地思考、组织答案。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 2em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">4．检查，看回答是否切题，内容是否完整，语句是否通顺，标点是否正确。</span></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '1', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('47', '1', '1', '0', '一半以上的中考数学考点在初二！把握初二数学，这3点是关键', 'admin/20200609/062e11f83865092b2b9d0aa459a03628.jpg', '', '6', '1', '1591690212', '1591868107', '1', '0.01', '1', '1591690212', '<p>初二年级是初中阶段学习的关键转折点，学习难度呈现出上升的趋势，尤其在数学的学习上，学习内容增多、难度有较大提升，学生的学习逐渐开始出现两极化趋势。日前，教育部发布了《2018年国家义务教育质量监测——数学学习质量监测结果报告》。根据报告显示，八年级学生数学学习焦虑程度较高，超40%的八年级学生为数学学习焦虑。进入初二阶段的学习后，数学的学习难度增加，学生的学习焦虑程度也随之增加。初二阶段数学学习的提升，需要找到高效的学习方法和正确的思维方式，并形成良好的学习习惯。</p><p style=\"text-align: center;\"><br/><br/></p><p><strong>为什么初二阶段的数学学习，容易产生焦虑？</strong></p><p>在数学学科本身的特点方面，数学强调对思维能力的培养，从数学学科自身的难度来说，无论是处在哪个阶段的学习，数学都是学习过程中的重点部分，也是容易拉开学习差距的科目。对于初二阶段，数学学习容易出现焦虑的话题，在网上引起网友的热议，有网友认为数学是所有学科中最难学的科目，学好数学天赋很重要。也有网友认为，数学的学习虽然较难，但却是很有魅力的学科，在解开题目时会很有成就感。</p><p>在初二阶段的数学学习方面，与初一阶段的学习相比，初二是初中学习难度提升较大的阶段，在数学的学习上，要求学生掌握的知识内容增多，学习节奏更快，知识能力由解决具体、直观问题，向抽象的数学问题转变，注重培养学生的逻辑思维能力。在初二阶段的数学学习内容中，初二学习含有中考60%的考点，作为初中数学中的难点问题，几何内容的学习也集中在初二阶段。</p><p>在初二阶段的数学学习中，由于学习难度的提升，初中数学的学习差距逐渐拉开，学生容易出现跟不上学习进度的情况，数学学习成绩出现下降，成绩两极化的现象开始明显，有些学生对于初中数学的学习逐渐失去信心，甚至出现厌学的情绪，还有些学生认为自己缺少学好数学的天赋。初中数学属于基础阶段的学习，找到高效的学习方法，就能够取得不错的成绩。</p><p><strong>初二阶段的数学学习，需要注意哪些问题？</strong></p><p><strong>第一，做好课前预习的环节。</strong></p><p>初二阶段的数学学习，首先要养成良好的学习习惯，遵循科学的学习顺序，提高学习的效率。在数学的学习过程中，预习的环节容易被学生忽略，随着数学学习难度的增加，课堂学习节奏加快，学生容易出现跟不上老师讲课进度的情况，并因此逐渐对数学学习失去兴趣。</p><p>通过课前预习的方式，来把握学习的主动权，了解近一阶段要学习的内容。课前的预习要注意从多个方向来进行把握，从章节的角度来大致了解所学内容与整体知识之间的关系，从具体课时的角度来具体把握难点和重点内容，把不理解的部分标注出来，在课堂中能够带着重点听课。</p><p><strong>第二，重视数学的基础知识。</strong></p><p>做题是数学成绩提升的一个重要方式，数学课后练习要注意做题的梯度，采取循序渐进的学习方式，根据学习内容的不同程度，选择不同难度的题目，避免出现盲目刷题的情况。在刚学习新的知识点时，不要急于做题，而是要先理解清楚相关概念，并在理解的基础上进行记忆。比如在初二数学几何部分的学习中，涉及的知识概念较多，全等三角形的判定定理、角平分线的性质等，这些知识点都是做题的依据，需要对相关性质、概念等进行记忆。</p><p><strong>第三，注意做题的总结归纳。</strong></p><p>提升数学的学习效率，还要注重课后的总结归纳，养成整理错题集的习惯。在做题的过程中会出现这样的现象，做过类似的题目却反复出错，这是因为在数学学习的过程中，缺少总结反思的环节。对于出错的题目要分析错误原因，尤其是因为知识点理解不透彻、做题思路不理解等而出现的错误，要在理解的基础上整理错题集，并定期对错题重做，较少盲目刷题，提高数学学习效率。</p><p><br/><br/></p>', null, '0', '', '1', '5', '0', '0', '0.0', '', '4', '0', '0', '0', '', '1', '10000', '1', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('48', '1', '0', '1', '牛顿在物理学上的贡献', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', '', '9', '3', '1591690772', '1607506205', '0', '', '1', '1591690772', '<p>1、牛顿通过光bai的色散，验证了7色光（红，橙，du黄，绿，青，zhi蓝，紫），并发明了反射望远镜。</p><p><br/></p><p>2、牛dao顿系统的总结了伽利略、开普勒和惠更斯等人的工作，得到了著名的万有引力定律和牛顿运动三定律。</p><p><br/></p><p>牛顿在《自然哲学的数学原理》这部书中,从力学的基本概念(质量、动量、惯性、力)和基本定律(运动三定律)出发，运用他所发明的微积分这一锐利的数学工具。</p><p><br/></p><p>不但从数学上论证了万有引力定律,而且把经典力学确立为完整而严密的体系，把天体力学和地面上的物体力学统一起来,实现了物理学史上第一次大的综合。</p><p><br/></p>', '<p>1、牛顿第一定律</p><p><br/></p><p>（1）运动是物体的一种属性，物体的运动不需要力来维持。</p><p><br/></p><p>（2）定律说明了任何物体都有惯性。</p><p><br/></p><p>（3）不受力的物体是不存在的。</p><p><br/></p><p>牛顿第一定律不能用实验直接验证，但是建立在大量实验现象的基础之上，通过思维的逻辑推理而发现的。</p><p><br/></p><p>它告诉了人们研究物理问题的另一种新方法：通过观察大量的实验现象，利用人的逻辑思维，从大量现象中寻找事物的规律。</p><p><br/></p><p>2、牛顿第二定律</p><p><br/></p><p>（1）牛顿第二定律定量揭示了力与运动的关系，即知道了力，可根据牛顿第二定律，分析出物体的运动规律；反过来，知道了运动，可根据牛顿第二定律研究其受力情况，为设计运动，控制运动提供了理论基础。</p><p><br/></p><p>（2）对牛顿第二定律的数学表达式 F 不能把 ma 看作是力。</p><p><br/></p><p>（3）牛顿第二定律揭示的是力的瞬间效果。即作用在物体上的力与它的效果是瞬时对应关系，力变加速度就变，力撤除加速度就为零，注意力的瞬间效果是加速度而不是速度。</p><p><br/></p><p>3、牛顿第三定律</p><p><br/></p><p>运用：超重和失重</p><p><br/></p><p>（1）超重：物体有向上的加速度称物体处于超重.处于超重的物体对支持面的压力 F N （或对悬挂物的拉力）大于物体的重力 mg，即 F N =mg+ma。</p><p><br/></p><p>（2）失重：物体有向下的加速度称物体处于失重.处于失重的物体对支持面的压力 FN（或对悬挂物的拉力）小于物体的重力 mg，即 FN=mg-ma，当 a=g 时 F N =0，物体处于完全失重。</p><p><br/></p><p>（3）对超重和失重的理解应当注意的问题</p><p><br/></p><p>不管物体处于失重状态还是超重状态，物体本身的重力并没有改变，只是物体对支持物合合 =ma，F 合是力，ma 是力的作用效果，特别要注意的方向总是一致的。</p><p><br/></p><p>超重或失重现象与物体的速度无关，只决定于加速度的方向.“加速上升”和“减速下降”都是超重；“加速下降”和“减速上升”都是失重。</p><p><br/></p><p>在完全失重的状态下，平常一切由重力产生的物理现象都会完全消失，如单摆停摆、天平失效、浸在水中的物体不再受浮力、液体柱不再产生压强等。</p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '17', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('49', '1', '0', '1', '古诗文背诵理解有技巧 ，孩子轻松学！ ', 'admin/20201209/974c30687afbd12f39cb1e2504433970.png', '', '7', '5', '1591690814', '1607506247', '0', '', '1', '1591690814', '<p style=\"text-align: justify; line-height: 2em;\"><span style=\"color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">古诗文是中华民族的文化瑰宝，凝聚着中华民族的智慧，闪耀着中华民族的善良、坚强和浪漫。而背诵是学习古诗文的主要方法，是理解古诗文内容、体会作者思想感情的有效途径。</span></p>', '<p style=\"text-align: justify; line-height: 1.75em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-weight: 700; border: 0px; color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px;\">好东西必须记下来，才会在心里生根。</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; margin: 0px; padding: 0px; color: rgb(25, 25, 25); background-color: rgb(255, 255, 255);\">当凉风乍起，梧叶飘黄，你便会突然知道什么是“老树呈秋色”，什么是“苒苒物华休”。</span></span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">理解记忆法</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">理解是记忆的前提。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">要记忆一首古诗词，一定要理解这首诗词的内容，了解诗词的思想，把握内在的逻辑。这样在用到的时候，就容易还原成诗词的语言，使我们能够回忆起来。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">例如 “城阙辅三秦，风烟望五津。”这句诗，如果你不理解它的意思，是很难记住的。三秦，指长安城附近的关中之地，秦朝末年，项羽破秦，把关中分为三区，分别封给三个秦国的降将，所以称三秦；而五津，泛指四川。那么这句诗的意思就是，巍巍长安城，雄踞三秦之地，在风烟迷茫之中，遥望着四川。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">用“理解记忆法”背诗，不仅记住了《送杜少府之任蜀州》，还学会了历史、地理知识。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/76bf028ee76203a32ae7b99cf1e2747a.jpeg\" title=\"6b4a5a2f87384115b3483c08eb4a1012.jpeg\" alt=\"6b4a5a2f87384115b3483c08eb4a1012.jpeg\" width=\"600\" height=\"350\" style=\"width: 600px; height: 350px;\"/></span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">图画联想法</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">生动的形象和优美的意境是一首好诗的标志。因此，如果我们能在理解诗意的过程中展开丰富的想象，使一首诗所反映的画面在头脑中再现出来，记忆就会更加牢靠，背诵时就会流畅自如。这类方法尤其适合背诵景物类诗文。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">比如王维的诗，诗中有画，画中有诗。“空山新雨后”，寂静的，空荡荡的，山林里刚刚下过了雨；“天气晚来秋”，天气到了晚秋这个时候。“明月松间照，清泉石上流”，这情景简直是一个活的画面。</span></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '5', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('50', '1', '0', '1', '冷知识：居里夫人的实验笔记至今仍充满放射性', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', '', '6', '1', '1591690965', '1607506228', '1', '3.2', '1', '1591690965', '<p><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/fc2aa0310c5a581bac06ce1aedafaca3.jpeg\" title=\"ee3a2d0f60b746bea83137916a6d2ff3.jpeg\" alt=\"ee3a2d0f60b746bea83137916a6d2ff3.jpeg\"/>研究bai放射性现象，发现镭和钋（dupō）两种天然放射性元素，zhi一生两度获诺贝尔奖（第一次dao获得诺贝尔物理奖，第二次获得诺贝尔化学奖）。用了好几年在研究镭的过程中，作为杰出科学家，居里夫人有一般科学家所没有的社会影响。尤其因为是成功女性的先驱，她的典范激励了很多人。</p><p>　玛丽·居里（Marie Curie），1867.11.7出生于波兰。她是法国的物理学家、化学家。作为世界著名科学家，研究放射性现象，发现镭和钋两种天然放射性元素，她被人称为“镭的母亲”，一生两度获诺贝尔奖（第一次获得诺贝尔物理学奖，第二次获得诺贝尔化学奖）。在研究镭的过程中，她和她的丈夫用了3年零9个月才从成吨的矿渣中提炼出0.1克的镭。但在其中年时期，丈夫不幸丧生在马车的车轮底下。作为杰出科学家，居里夫人有一般科学家所没有的社会影响。尤其因为是成功女性的先驱，所以她的典范激励了很多人。很多人在儿童时代就听到她的故事，但得到的多是一个简化和不完整的印象。世人对居里夫人的认识，很大程度上受其次女在1937年出版的传记《居里夫人》所影响。这本书美化了居里夫人的生活，把她一生中所遇到的曲折都平淡地处理了。她能说出 居里夫人</p><p>世上每克镭的所在地，这是她最杰出的地方。1934年她因白血病逝世。直到她死了40年，在她用过的笔记本里还有镭射线在不断释放</p><p><br/></p>', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">前两天看到诺奖官推说到的一件事：居里夫人曾经使用的实验笔记本现在依然具有放射性。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20190707/ee3a2d0f60b746bea83137916a6d2ff3.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">这里说到的还会“放射1500年”，应该是指笔记本沾染了居里夫人的研究材料镭元素。放射性元素镭最稳定的同位素是镭-226，它的半衰期是约1600年。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">诺奖官网上也说到，居里夫人的一些书与论文“现在放射性依然太强，需要储存在铅盒当中”，不过并没有看到具体的辐射剂量测量。其他一些地方也提到，如果想要亲自翻阅这些历史资料，不仅需要穿防护服，而且还得签署免责一份文件……</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20190707/5447cf0b568742e285c175d63d7e1b7d.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">玛丽·居里与皮埃尔·居里夫妇都对放射性元素研究做出了非常重要的贡献，不过因为常年与放射性元素打交道同时又缺乏充分防护，他们的健康也因此受损，并让周围的物品沾染上了这些放射性实验材料。<span style=\"border: 0px; margin: 0px; padding: 0px;\">玛丽·居里</span>66岁时死于再生障碍性贫血，这也是辐射暴露导致的。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">在那个时代人们普遍对电离辐射的危险性还缺乏认识，有很多操作现在看来都非常吓人，比如放射性元素镭和钍被当做保健成分添加到水、牙膏、巧克力之类的东西里面，以及还曾经出现过用x射线进行脱毛的服务……也算是历史的教训吧_(:з」∠)_</p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('51', '1', '0', '1', '小学阶段孩子写好作文的三点技巧，一定要重视！ ', 'admin/20201209/68f060aaf03578c0b8226811399f8a15.png', '', '2', '5', '1591691313', '1607506105', '0', '', '1', '1591691313', '<p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">要有积累的意识</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">基础板块要踏实过关</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"font-size: 14px; border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">小学作文一定要靠积累。</span>也许刚开始积累时不会进步飞跃，但一定会有提高。不积累，孩子的作文底子就会很弱，以后很难补上来。然而，很多人并不懂积累，以为积累就是多写。<br/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">其实，&nbsp;<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; font-size: 14px; font-weight: 700; margin: 0px; padding: 0px;\">小学阶段的积累主要是多读多背。</span>但凡是国学经典，都可以选择部分篇目来背背。读背时，做一些笔记，摘抄一下，或者写写心得，写写自己的质疑做到读书留痕迹。&nbsp;<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; font-size: 14px; font-weight: 700; margin: 0px; padding: 0px;\">不</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">要太强求，慢慢形成这样的习惯就好。</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-weight: 700; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">要有阅读意识<br/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-weight: 700; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/b09c768ec97393cc41c4d516b11e60e1.jpeg\" title=\"1cbb46b8d3fb46bf9f2e6e74a894bf8a.jpeg\" alt=\"1cbb46b8d3fb46bf9f2e6e74a894bf8a.jpeg\" width=\"600\" height=\"350\" style=\"width: 600px; height: 350px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">阅读就是厚积的过程</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">阅读和写作是相关能力，但不是等价的能力。这就是为什么，不少家长说孩子读书挺多，但不会写作。主要还是因为家长把阅读和写作划等号了。写作要踏实的写的训练，更需要落实修改。&nbsp;<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; font-size: 14px; font-weight: 700; margin: 0px; padding: 0px;\">就是每写完一篇文章，就要反复修改。</span>这样才能保证写作能力稳步提升。一旦让孩子改出好作文来，孩子找到了成就感，就自觉了。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">如果能够做到每周写好一篇文章，小孩的写作能力一定有改善。每周写好一篇作文就好，不用什么另外的练笔。&nbsp;<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; font-size: 14px; font-weight: 700; margin: 0px; padding: 0px;\">如果孩子实在写不出什么，摘抄一些好文也是可以的。</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; border: 0px; font-size: 14px; font-weight: 700; margin: 0px; padding: 0px;\">但，对于没有东西可写的孩子，就要启发，帮孩子回放自己的生活。</span>写作成功秘诀在于写熟悉的事，写具体的事，写感动自己的事，写自己喜欢的事，写自己体验尝试实践过的事。引导和促使孩子通过观察、调查、访谈、上网、阅读、思考等多种途径，运用各种方法搜集生活中的材料。</span></p>', '0', '', '0', '0', '0', '0', '0.0', '', '5', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('56', '1', '1', '0', '免费课程大放送！快来抢购', 'admin/20200615/499f9f004e5ec552e534a3234ad03e00.jpg', '123', '2', '1', '1592184322', '0', '0', '', '1', '1592184322', '<p>123<br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '100', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('57', '1', '1', '0', '数学一元一次方程', 'admin/20200615/a00f20662c6e2343652b6b4732853284.png', '456', '2', '1', '1592184408', '0', '2', '123456', '1', '1592184408', '<p><img src=\"https://edu-qiniu.sdwanyue.com/default/20200615/54bd0953f31a2cf80a7e58b75bbbfa5d.jpg\" title=\"43af57de3ec2315d5d6e6f0e62be92a2bd3f2e469c11-gq0N5Y_fw658.jpg\" alt=\"43af57de3ec2315d5d6e6f0e62be92a2bd3f2e469c11-gq0N5Y_fw658.jpg\"/></p>', null, '0', '', '0', '6', '0', '0', '0.0', '', '32', '0', '0', '0', '', '1', '10000', '0', '100', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('61', '1', '2', '3', ' 尖子生的英语精修之路：英语启蒙+新概念英语+高考英语', 'admin/20201209/cab2921967576648ebe37ace19debd83.png', '', '10', '4', '1592372409', '1607506876', '0', '', '1', '1592372409', '<p style=\"margin: 5px 0px; text-indent: 0px; line-height: 2em; text-align: center;\"><span style=\"letter-spacing: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; letter-spacing: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200617/9bacb355356945abfd7f620caf3216a1.png\" title=\"图片1.png\" alt=\"图片1.png\"/></span></span></p><p style=\"margin: 5px 0px; text-indent: 0px; line-height: 2em;\"><span style=\"letter-spacing: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; letter-spacing: 0px;\">最近分享过一篇文章《学好英语从背诵</span>&lt;新概念英语&gt;开始》，获得超过两万的阅读量，虽然与那些10万+阅读量大咖相比还有很大差距，但是对于一个深耕英语启蒙垂直领域的作者来说，苗爸已经知足了。从上百的评论中，我看到了大家对学好英语的渴望。</span></p><p><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200617/c9c41ac4b03dacf358f8aa55c355683e.mp3', '18', '2', '1592365440', '1592615617', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('64', '1', '1', '0', '学英语必须掌握这些技巧？sayan老师带你一起玩嗨英语！', 'admin/20200618/f14ceb3626c5542a4c6159711e77dcc9.jpg', '', '2', '4', '1592461176', '1592461545', '0', '', '1', '1592461176', '<p style=\"line-height: 1.75em;\"><span style=\"color: rgb(68, 68, 68); text-align: justify; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">如今的英语培训教学模式主要分为线上英语培训和线下英语培训两种。经过我的仔细对比和研究，线上外教的这种教学模式更值得大家选择，这种教学模式的好处就在于随时随地都能学习，方便快捷，能自主规划学习时间;有针对性辅导，能够塑造良好的语言环境，有利于口语学习;而且针对性强，可以针对薄弱环境进行针对性辅导，效果看得见。</span></p>', null, '0', '', '0', '1', '4', '1', '4.0', '', '33', '0', '0', '0', '', '1', '10000', '0', '17', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('170', '1', '3', '5', '初中函数提分班', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '初中函数提分班', '2', '1', '1599786395', '1607504733', '0', '', '1', '1599786395', '<p>初中函数提分班</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '4', '2', '1599786000', '1609745666', '初中函数提分班', '1', '10000', '0', '0', '0', '2', '0', '0');
INSERT INTO `cmf_course` VALUES ('171', '1', '2', '1', '初中函数提分班', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '初中函数提分班', '9', '5', '1599786475', '1607504631', '0', '', '1', '1599786475', '<p>初中函数提分班</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '4', '2', '1599786300', '1608476342', '初中函数提分班', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('172', '1', '2', '3', '万岳在线教育 . 停课不停学', 'admin/20201209/68f060aaf03578c0b8226811399f8a15.png', '万岳在线教育 . 停课不停学', '2', '5', '1599786665', '1607504600', '0', '', '1', '1599786665', '<p>万岳在线教育 . 停课不停学</p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200911/e0b34f73c71f85c13d23a2980ffb8ffd.mp3', '6', '2', '1599786300', '1601376935', '万岳在线教育 . 停课不停学', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('173', '1', '1', '0', '吃水不挖井人第一章', 'admin/20200911/62be87c7f79426e4a35da3f96830fd90.png', '吃水不挖井人', '2', '5', '1599786800', '0', '0', '', '1', '1599786800', '<p>吃水不挖井人</p>', null, '0', '', '0', '1', '3', '1', '3.0', '', '8', '0', '0', '0', '', '1', '10000', '0', '1', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('174', '1', '2', '2', '函数及其图像的单元复习', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', '函数及其图像的单元复习', '2', '5', '1599788384', '1607504578', '0', '', '1', '1599788384', '<p>函数及其图像的单元复习</p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200911/ab79d47a4450e6a805cb073865fdfba9.mp4', '14', '2', '1599788100', '1600821450', '吃水不挖井人', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('180', '1', '2', '3', '语音+音频', 'admin/20201015/8bcfe2736fa0551d8917ffbd8343b879.jpg', '', '10', '1', '1600047951', '1602812712', '0', '', '1', '1600047951', '<p>123</p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200914/fb647c62b820b763ccb0815db93e039d.mp3', '4', '2', '1600047900', '1609867140', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('185', '1', '2', '1', '语音+PPT', 'admin/20201209/b0d50569fb510d466b7ea6e53fbb2a56.png', '', '10', '1', '1600740122', '1607506839', '0', '', '1', '1600740122', '<p>123</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '4', '2', '1600740060', '1609376511', '', '1', '10000', '0', '0', '0', '0', '4', '0');
INSERT INTO `cmf_course` VALUES ('190', '1', '3', '5', '视频直播大班课', 'admin/20201209/319c58b8b8b67987774ec54251127578.png', '', '10', '1', '1600826369', '1607507028', '0', '', '1', '1600826369', '<p>111</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '6', '2', '1600826340', '1609867331', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('202', '1', '2', '1', '在家也可以轻松学网课', 'admin/20201209/b0d50569fb510d466b7ea6e53fbb2a56.png', '', '2', '4', '1601365952', '1607504558', '0', '', '1', '1601365952', '<p>1111</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '11', '2', '1601365920', '1601439353', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('203', '1', '1', '0', '客户小班课测试专用-111', 'admin/20200929/162d1fd15313d2a94ee40a12e468212a.png', '', '8', '4', '1601365984', '0', '0', '', '1', '1601365984', '<p>111</p>', null, '0', '', '0', '1', '0', '0', '0.0', '', '6', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('204', '1', '2', '2', '视频+音频', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '', '10', '1', '1601366190', '1607506785', '0', '', '1', '1601366190', '<p>123</p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200929/0033a7251b8785d3d6a8c2cd2e0824b9.mp4', '5', '2', '1601366160', '1609376488', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('205', '1', '3', '5', '测试专用线路-2', 'admin/20201209/23984b448418b5f9fb679c77bdeb752b.png', '', '10', '3', '1601366768', '1607507008', '0', '', '1', '1601366768', '<p>111</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '6', '2', '1601366760', '1608173802', '', '1', '10000', '0', '0', '0', '0', '1', '0');
INSERT INTO `cmf_course` VALUES ('206', '1', '2', '2', '初二是个“坡”，熬不过去毁前程！附初二全年学习规划表，家长必看', 'admin/20201209/975348dcde02c1e2c50eed4d8bb3543a.png', '', '10', '2', '1601366941', '1607506738', '0', '', '1', '1601366941', '<p style=\"white-space: normal; text-align: center;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/59b2b646969b50037d96df0d1c7cff2b.jpg\" title=\"timg (6).jpg\" alt=\"timg (6).jpg\"/></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">升入初二的同学马上能感觉到知识的难度和初一不是一个级别，比如初二数学含中考60%的考点，中考几何最难的辅助线构造是在初二进行学习，同时初二开始学物理的缘故，精力会相对分散一些，也加大了学习的难度，所以，初二通常被称为“爬上坡路”</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">初二就是冲向山峰的“坡儿”。与起点处相比，它少了许多的鼓励、期待；与终点处相比，它少了许多的掌声、加油，还有那条红线。它是孤身奋斗的阶段，是一个与寂寞为伍的阶段，是一个耐力、意志、自控力比拚的阶段。</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">有句话大家可能都听说过：初一相差不大，初二两极分化，初三天上地下！大家公认，初二是孩子成绩下滑的高危期！在别人奋力攀登的时候，有些孩子产生懈怠放松的心理，很容易滑落坡底。</span></p><p style=\"white-space: normal;\"><br/></p><p><br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', 'admin/20200929/506daf980815bdfeac7fdf14a207e140.mp4', '5', '2', '1601366880', '1602295704', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('207', '1', '3', '5', '停课不停学! 课外辅导, 名师名课等你来', 'admin/20201209/974c30687afbd12f39cb1e2504433970.png', '', '2', '1', '1602210941', '1608181197', '0', '', '1', '1602210941', '<p>123<br/></p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '25', '2', '1602210900', '1603073609', '12', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('208', '1', '1', '0', '化学', 'admin/20201011/4ec25716f46d0b6863160f77cc607e13.jpg', '123456', '2', '1', '1602377649', '1602743114', '0', '', '1', '1602377649', '<p>123456</p><p><br/></p>', null, '0', '', '0', '3', '0', '0', '0.0', '', '9', '0', '0', '0', '', '1', '10000', '0', '12', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('210', '1', '0', '1', '英语口语提升班, 0基础也能与外国人对话!', 'admin/20201209/319c58b8b8b67987774ec54251127578.png', '英语测试', '2', '4', '1602494431', '1607504762', '0', '', '1', '1602494431', '<p>测试</p>', '<p>测试</p>', '0', '', '0', '0', '5', '1', '5.0', 'admin/20201012/5237fb73a87033b1d5c6bf3117534e64.mp4', '3', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('212', '1', '1', '0', '推荐英语', 'admin/20201012/4221f9b8b3964f39b6e430319027ab5c.jpg', '', '10', '4', '1602508759', '1602749775', '0', '', '1', '1602508759', '<p>推荐</p>', null, '0', '', '1', '2', '0', '0', '0.0', '', '2', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('213', '1', '1', '0', '测试推荐', 'admin/20201015/ea0709509a601d41257196d3b3732aa0.png', '测试推荐', '2', '1', '1602749586', '0', '0', '', '1', '1602749586', '<p>这是测试app端的展示</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '1', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('214', '1', '3', '5', '化学入门', 'admin/20201209/8ce3a48037f70ace3d8060ac201741e5.png', '', '5', '1', '1602754106', '1607506994', '1', '100', '1', '1602754106', '<p>化学化学</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '2', '1603075142', '1603259313', '做好笔记', '1', '10000', '0', '0', '0', '1', '0', '0');
INSERT INTO `cmf_course` VALUES ('215', '1', '0', '1', '小学三年级学英语晚不晚？ | k12教育', 'admin/20201209/93ae74b4985410d370bf7fdaeeedd87e.png', '小学三年级学英语晚不晚？ | k12教育', '2', '0', '1607505980', '1608642846', '0', '', '1', '1607505980', '<p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">小学三年级学英语晚不晚？ | k12教育</span></p>', '<p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">小学三年级学英语晚不晚？ | k12教育</span></p><p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">小学三年级学英语晚不晚？ | k12教育</span></span></p><p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">小学三年级学英语晚不晚？ | k12教育</span></span></span></p>', '0', '', '0', '0', '0', '0', '0.0', '', '1', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('216', '1', '0', '1', '尖子生的英语精修之路：英语启蒙+新概念英语+高考英语', 'admin/20201209/93ae74b4985410d370bf7fdaeeedd87e.png', '', '2', '0', '1607506387', '0', '0', '', '1', '1607506387', '<p><br/></p><p style=\"line-height: 2em; text-align: center;\"><span style=\"letter-spacing: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"letter-spacing: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200617/9bacb355356945abfd7f620caf3216a1.png\" title=\"图片1.png\" alt=\"图片1.png\"/></span></span></p><p style=\"line-height: 2em;\"><span style=\"letter-spacing: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"letter-spacing: 0px;\">最近分享过一篇文章《学好英语从背诵</span>&lt;新概念英语&gt;开始》，获得超过两万的阅读量，虽然与那些10万+阅读量大咖相比还有很大差距，但是对于一个深耕英语启蒙垂直领域的作者来说，苗爸已经知足了。从上百的评论中，我看到了大家对学好英语的渴望。</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '<p style=\"line-height: 2em; text-align: center;\"><span style=\"letter-spacing: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"letter-spacing: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200617/9bacb355356945abfd7f620caf3216a1.png\" title=\"图片1.png\" alt=\"图片1.png\"/></span></span></p><p style=\"line-height: 2em;\"><span style=\"letter-spacing: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"letter-spacing: 0px;\">最近分享过一篇文章《学好英语从背诵</span>&lt;新概念英语&gt;开始》，获得超过两万的阅读量，虽然与那些10万+阅读量大咖相比还有很大差距，但是对于一个深耕英语启蒙垂直领域的作者来说，苗爸已经知足了。从上百的评论中，我看到了大家对学好英语的渴望。</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '2', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('217', '1', '0', '1', '颠覆英语之六：中国的英语教育现状和如何学习英语', 'admin/20201209/319c58b8b8b67987774ec54251127578.png', '颠覆英语之六：中国的英语教育现状和如何学习英语', '2', '0', '1607506473', '0', '0', '', '1', '1607506473', '<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">从对语言本质的再思考，英、汉语比较概论一直到相关英语语言现象的专题讨论，无非就是想说明一个问题，就是到底怎样才能学好英语，我想这可能是每一个中国的英语学习者或者将要考虑进行这种学习的读者所最关心的。当然，这也是本书所必须要回答的问题。其实，通过本书前面内容的讨论，细心的、独立思考的读者肯定已经形成了一套完整的想法，的确，我个人关于英语学习的观点已经展露无疑了。但出于方方面面的考虑，我觉得将这些观点进行一下系统的汇总和整理来结束本书还是很有必要的。</span></p><p style=\"white-space: normal; text-align: center;\"><br/><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/f558fd05d0a509a7ca802a9c01cb9cec.jpg\" title=\"u=3227362740,1120188207&amp;fm=26&amp;gp=0.jpg\" alt=\"u=3227362740,1120188207&amp;fm=26&amp;gp=0.jpg\"/></p><p><br/></p>', '<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">从对语言本质的再思考，英、汉语比较概论一直到相关英语语言现象的专题讨论，无非就是想说明一个问题，就是到底怎样才能学好英语，我想这可能是每一个中国的英语学习者或者将要考虑进行这种学习的读者所最关心的。当然，这也是本书所必须要回答的问题。其实，通过本书前面内容的讨论，细心的、独立思考的读者肯定已经形成了一套完整的想法，的确，我个人关于英语学习的观点已经展露无疑了。但出于方方面面的考虑，我觉得将这些观点进行一下系统的汇总和整理来结束本书还是很有必要的。</span></p><p style=\"white-space: normal; text-align: center;\"><br/><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/f558fd05d0a509a7ca802a9c01cb9cec.jpg\" title=\"u=3227362740,1120188207&amp;fm=26&amp;gp=0.jpg\" alt=\"u=3227362740,1120188207&amp;fm=26&amp;gp=0.jpg\"/></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '2', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('218', '1', '0', '1', '吃水不挖井人', 'admin/20201209/ab9f2f53b3a961aa3805148d43c09a44.png', '吃水不挖井人', '2', '0', '1607506550', '0', '0', '', '1', '1607506550', '<p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(248, 249, 250);\">吃水不挖井人</span></p>', '<p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(248, 249, 250);\">吃水不挖井人</span></p>', '0', '', '0', '0', '0', '0', '0.0', '', '2', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('219', '1', '0', '1', '古诗文背诵理解有技巧 ，孩子轻松学！', 'admin/20201209/68f060aaf03578c0b8226811399f8a15.png', '', '2', '0', '1607506627', '0', '0', '', '1', '1607506627', '<p><span style=\"color: rgb(25, 25, 25); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">古诗文是中华民族的文化瑰宝，凝聚着中华民族的智慧，闪耀着中华民族的善良、坚强和浪漫。而背诵是学习古诗文的主要方法，是理解古诗文内容、体会作者思想感情的有效途径。</span></p>', '<p style=\"text-align: justify; line-height: 1.75em;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><span style=\"font-weight: 700; border: 0px; color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px;\">好东西必须记下来，才会在心里生根。</span><span style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(25, 25, 25); background-color: rgb(255, 255, 255);\">当凉风乍起，梧叶飘黄，你便会突然知道什么是“老树呈秋色”，什么是“苒苒物华休”。</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">理解记忆法</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">理解是记忆的前提。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">要记忆一首古诗词，一定要理解这首诗词的内容，了解诗词的思想，把握内在的逻辑。这样在用到的时候，就容易还原成诗词的语言，使我们能够回忆起来。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">例如 “城阙辅三秦，风烟望五津。”这句诗，如果你不理解它的意思，是很难记住的。三秦，指长安城附近的关中之地，秦朝末年，项羽破秦，把关中分为三区，分别封给三个秦国的降将，所以称三秦；而五津，泛指四川。那么这句诗的意思就是，巍巍长安城，雄踞三秦之地，在风烟迷茫之中，遥望着四川。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">用“理解记忆法”背诗，不仅记住了《送杜少府之任蜀州》，还学会了历史、地理知识。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/76bf028ee76203a32ae7b99cf1e2747a.jpeg\" title=\"6b4a5a2f87384115b3483c08eb4a1012.jpeg\" alt=\"6b4a5a2f87384115b3483c08eb4a1012.jpeg\" width=\"600\" height=\"350\" style=\"width: 600px; height: 350px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">图画联想法</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">生动的形象和优美的意境是一首好诗的标志。因此，如果我们能在理解诗意的过程中展开丰富的想象，使一首诗所反映的画面在头脑中再现出来，记忆就会更加牢靠，背诵时就会流畅自如。这类方法尤其适合背诵景物类诗文。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">比如王维的诗，诗中有画，画中有诗。“空山新雨后”，寂静的，空荡荡的，山林里刚刚下过了雨；“天气晚来秋”，天气到了晚秋这个时候。“明月松间照，清泉石上流”，这情景简直是一个活的画面。</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '1', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('220', '1', '2', '1', '万岳在线教育, 停课不停学', 'admin/20201209/68f060aaf03578c0b8226811399f8a15.png', '', '2', '0', '1607565405', '1607565505', '1', '100', '1', '1607565405', '<p>万岳在线教育, 停课不停学</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '2', '1607590952', '1607590959', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('221', '1', '2', '1', '万岳在线教育精品', 'admin/20201209/8ce3a48037f70ace3d8060ac201741e5.png', '', '2', '1', '1607565487', '1683352982', '2', '123456', '1', '1607565487', '<p>万岳在线教育, 停课不停学</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '6', '2', '1607592231', '1608188180', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('222', '1', '0', '1', '音频课: 双语听力练习', 'admin/20201209/cab2921967576648ebe37ace19debd83.png', '', '2', '0', '1607565570', '1607565611', '2', '123456', '1', '1607565570', '<p><br/></p><p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(248, 249, 250);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 1em; box-sizing: border-box; text-overflow: ellipsis; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\"><strong style=\"box-sizing: border-box;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/f41a1d1c48792294d3b4837820b2faa4.jpg\" title=\"u=2168672476,955890954&amp;fm=26&amp;gp=0.jpg\" alt=\"u=2168672476,955890954&amp;fm=26&amp;gp=0.jpg\"/></strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; box-sizing: border-box; text-overflow: ellipsis; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 1em; box-sizing: border-box; text-overflow: ellipsis; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\"><strong style=\"box-sizing: border-box;\">小学英语口语入门<br style=\"box-sizing: border-box;\"/></strong></p><p style=\"margin-top: 0px; margin-bottom: 1em; box-sizing: border-box; text-overflow: ellipsis; padding: 0px; width: 800px; line-height: 1.8em; white-space: normal; overflow: hidden; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Helvetica Neue&quot;, STHeiti, &quot;Microsoft Yahei&quot;, Tahoma, sans-serif; background-color: rgb(255, 255, 255);\">图文并茂、以图助学<br style=\"box-sizing: border-box;\"/>纯正口语、轻松易学</p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">英语精粹<br style=\"box-sizing: border-box;\"/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1. The&nbsp;bell&nbsp;is ringing.<br style=\"box-sizing: border-box;\"/>2.&nbsp;Hurry&nbsp;up or we&#39;ll be late.<br style=\"box-sizing: border-box;\"/>3. Is everybody here?<br style=\"box-sizing: border-box;\"/>4. Would you please help me with Lesson 2?<br style=\"box-sizing: border-box;\"/>5. Let&#39;s read the&nbsp;dialogue&nbsp;first.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><br style=\"white-space: normal;\"/></p><p><span style=\"color: rgb(44, 62, 80); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 14px; background-color: rgb(248, 249, 250);\"><br/></span><br/></p>', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">场景一 上学</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Mary:&nbsp;Hey! The bell is ringing.<br style=\"box-sizing: border-box;\"/>Linda:&nbsp;Hurry up or we&#39;ll be late.<br style=\"box-sizing: border-box;\"/>Mary:&nbsp;Come on.<br style=\"box-sizing: border-box;\"/>Mary &amp; Linda:&nbsp;Sorry, Miss Green. We are late.<br style=\"box-sizing: border-box;\"/>Miss Green:&nbsp;Hi, Mary and Linda, you are late again. Please go to your seats, but don&#39;t be late next time. Is everybody here?<br style=\"box-sizing: border-box;\"/>Henry(monitor):&nbsp;Paul is&nbsp;absent. He&#39;s sick.<br style=\"box-sizing: border-box;\"/>Miss Green:&nbsp;All right. Sit down, Henry. Let&#39;s begin our class.</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">现在进行时主要用来表示正在进行或发生的动作。其一般形式为：主语+be(is/am/are)+动词的现在分词（即动词的ing形式）。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">场景二 上学</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">Paul:&nbsp;Hello, Henry.<br style=\"box-sizing: border-box;\"/>Henry:&nbsp;Hi, Paul.<br style=\"box-sizing: border-box;\"/>Paul:&nbsp;I missed the class last week. Would you please help me with Lesson 2?<br style=\"box-sizing: border-box;\"/>Henry:&nbsp;Sure, I would.<br style=\"box-sizing: border-box;\"/>Paul:&nbsp;Thank you.<br style=\"box-sizing: border-box;\"/>Henry:&nbsp;That&#39;s OK. Please open your book and&nbsp;turn&nbsp;to page18. Let&#39;s read the dialogue first.<br style=\"box-sizing: border-box;\"/>Paul:&nbsp;OK.</span></p><p><br style=\"white-space: normal;\"/></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '1', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('223', '1', '0', '1', '小学阶段孩子写好作文的三点技巧，一定要重视！', 'admin/20201209/975348dcde02c1e2c50eed4d8bb3543a.png', '', '2', '0', '1607565721', '0', '1', '100', '1', '1607565721', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">要有积累的意识</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify; line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">基础板块要踏实过关</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><br/></p>', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">小学作文一定要靠积累。</span>也许刚开始积累时不会进步飞跃，但一定会有提高。不积累，孩子的作文底子就会很弱，以后很难补上来。然而，很多人并不懂积累，以为积累就是多写。<br/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">其实，&nbsp;<span style=\"border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">小学阶段的积累主要是多读多背。</span>但凡是国学经典，都可以选择部分篇目来背背。读背时，做一些笔记，摘抄一下，或者写写心得，写写自己的质疑做到读书留痕迹。&nbsp;<span style=\"border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">不</span><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">要太强求，慢慢形成这样的习惯就好。</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-weight: 700; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">要有阅读意识<br/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-weight: 700; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200609/b09c768ec97393cc41c4d516b11e60e1.jpeg\" title=\"1cbb46b8d3fb46bf9f2e6e74a894bf8a.jpeg\" alt=\"1cbb46b8d3fb46bf9f2e6e74a894bf8a.jpeg\" width=\"600\" height=\"350\" style=\"width: 600px; height: 350px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">阅读就是厚积的过程</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">阅读和写作是相关能力，但不是等价的能力。这就是为什么，不少家长说孩子读书挺多，但不会写作。主要还是因为家长把阅读和写作划等号了。写作要踏实的写的训练，更需要落实修改。&nbsp;<span style=\"border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">就是每写完一篇文章，就要反复修改。</span>这样才能保证写作能力稳步提升。一旦让孩子改出好作文来，孩子找到了成就感，就自觉了。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">如果能够做到每周写好一篇文章，小孩的写作能力一定有改善。每周写好一篇作文就好，不用什么另外的练笔。&nbsp;<span style=\"border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">如果孩子实在写不出什么，摘抄一些好文也是可以的。</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"border: 0px; font-weight: 700; margin: 0px; padding: 0px;\">但，对于没有东西可写的孩子，就要启发，帮孩子回放自己的生活。</span>写作成功秘诀在于写熟悉的事，写具体的事，写感动自己的事，写自己喜欢的事，写自己体验尝试实践过的事。引导和促使孩子通过观察、调查、访谈、上网、阅读、思考等多种途径，运用各种方法搜集生活中的材料。</span></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('224', '1', '0', '1', '什么是《牛顿第一定律》？快速理解的小妙招有哪些？	', 'admin/20201209/c1694232886e97ec2704369b8d18ef9d.png', '什么是《牛顿第一定律》？快速理解的小妙招有哪些？	', '2', '0', '1607569416', '0', '1', '199', '1', '1607569416', '<p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">牛顿第一运动定律，简称牛顿第一定律。又称惯性</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">定律、惰性定律。常见的<span style=\"font-weight: 700;\">完整表述：任何物体都要保持匀速直线运动或静止状态，直到外力迫使它改变运动状态为止。</span><span class=\"sup--normal\" style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: pointer; padding: 0px 2px;\">&nbsp;</span></span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">英国物理学家艾萨克·牛顿于1687年，在巨著《自然哲学的数学原理》里，提出了牛顿运动定律，牛顿第一运动定律就是其中一条定律</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">。</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">牛顿第一定律与牛顿第二、第三定律构成了牛顿力学的完整体系。</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">牛顿第一定律给出了惯性系的概念，第二、第三定律以及由牛顿运动定律建立起来的质点力学体系只对惯性系成立。因此，牛顿第一定律是不可缺少的，是完全独立的一条重要的力学定律。</span></p><p><br/></p>', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">牛顿第一定律</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">古希腊物理学家<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">亚里士多德</span></span>得出一个结论:</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/eca3aba9a5e7a141281daede7940b19f.jpeg\" title=\"ff06e9581e7d4386b0cf64f20a73ac54.jpeg\" alt=\"ff06e9581e7d4386b0cf64f20a73ac54.jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">伽利略</span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">认为：</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/8b183d19a1144e63abdc6b37b946195c.jpeg\" title=\"05e82721c2ef4b58896adc1d9fc97ae9.jpeg\" alt=\"05e82721c2ef4b58896adc1d9fc97ae9.jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">在水平面上运动的物体之所以会停下来，是因为受到&nbsp;<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">摩擦阻力</span></span>的缘故；如果物体不受外力作用，就会保持自己的速度不变。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">为此，他设计了一个<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">理想实验</span></span>：</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/f0442189186daecc12803cb8437e6d92.jpeg\" title=\"bfb5728c478343b9ad70c50e0b5b5ca2 (1).jpeg\" alt=\"bfb5728c478343b9ad70c50e0b5b5ca2 (1).jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">法国科学家</span><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">笛卡尔</span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">补充和完善了</span><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">伽利略</span></span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">的论点：</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><img src=\"https://edu-qiniu.sdwanyue.com/default/20200608/da39fd20cfce69c5a9c804b5e8a9f53f.jpeg\" title=\"42ebd17f49404ad293aa03256681f7bf.jpeg\" alt=\"42ebd17f49404ad293aa03256681f7bf.jpeg\" width=\"600\" height=\"400\" style=\"width: 600px; height: 400px;\"/></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">牛顿</span></span><span style=\"border: 0px; margin: 0px; padding: 0px;\">在总结前人经验的基础上，概括出一条<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">基本定律</span></span>:即牛顿第一定律。</span></p><p><br/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('226', '1', '3', '5', '怎能被初一数学就难倒？', 'admin/20201210/df05de6bcc9e10a74c777ea245faccc1.jpg', '', '9', '0', '1607593973', '0', '2', '123456', '1', '1607593973', '<p>2213123</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '1', '2', '1607594041', '1608173696', '', '0', '10000', '0', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course` VALUES ('227', '1', '3', '5', '精诚在线教育精品', 'admin/20201209/319c58b8b8b67987774ec54251127578.png', '', '9', '0', '1607604338', '1609895756', '2', '123456', '1', '1607604338', '<p>在线教育精品</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '1', '2', '1609895700', '1609982100', '', '0', '10000', '0', '0', '0', '1', '0', '0');
INSERT INTO `cmf_course` VALUES ('235', '100', '3', '5', '万岳教育秋季班火热招生中', 'admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg', '', '9', '1', '1609896081', '1683967374', '2', '112233', '1', '1609896081', '<p>万岳老师</p>', null, '0', '', '0', '0', '0', '0', '0.0', '', '2', '2', '1609896204', '1609930434', '', '0', '10000', '0', '1', '0', '1', '0', '0');
INSERT INTO `cmf_course` VALUES ('241', '68', '0', '1', '图片测试1', 'admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg', '图片测试1', '17', '1', '1683966912', '1683966935', '0', '', '1', '1683966912', '<pre style=\"background-color:#2b2b2b;color:#a9b7c6;font-family:&#39;宋体&#39;,monospace;font-size:9.8pt;\">辅导老师ID</pre><p><img src=\"/upload/admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg\" title=\"迎迎.jpg\" alt=\"迎迎.jpg\" width=\"160\" height=\"177\" style=\"width: 160px; height: 177px;\"/></p>', '<p><img src=\"http://127.0.0.1/upload/admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg\" title=\"迎迎.jpg\" alt=\"迎迎.jpg\" width=\"160\" height=\"177\" style=\"white-space: normal; width: 160px; height: 177px;\"/></p><p><img src=\"http://127.0.0.1/upload/admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg\" title=\"迎迎.jpg\" alt=\"迎迎.jpg\" width=\"160\" height=\"177\" style=\"white-space: normal; width: 160px; height: 177px;\"/></p><p><img src=\"http://127.0.0.1/upload/admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg\" title=\"迎迎.jpg\" alt=\"迎迎.jpg\" width=\"160\" height=\"177\" style=\"white-space: normal; width: 160px; height: 177px;\"/></p>', '0', '', '0', '0', '0', '0', '0.0', '', '1', '0', '0', '0', '', '0', '10000', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for cmf_course_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_class`;
CREATE TABLE `cmf_course_class` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_class
-- ----------------------------
INSERT INTO `cmf_course_class` VALUES ('1', '微米班', 'admin/20201012/31a9d9c4913db1f6142a065e16601183.png', '1');
INSERT INTO `cmf_course_class` VALUES ('2', '米罗小小班', 'admin/20201012/905594c1f1fa58c3b671aabb82e124e8.png', '2');
INSERT INTO `cmf_course_class` VALUES ('3', '早稻工作室', 'admin/20201012/308817e37a16fa975ced5d81639cfd36.png', '3');
INSERT INTO `cmf_course_class` VALUES ('4', '书法班', 'admin/20201012/b6f03127dc98615593b35d132fadc951.png', '6');
INSERT INTO `cmf_course_class` VALUES ('5', '造型基础班', 'admin/20201012/feeb0cb1fc8293dbfa0b4216e3da6dc9.png', '5');
INSERT INTO `cmf_course_class` VALUES ('6', '毕加索少儿大师班', 'admin/20201012/f21ee86f0e147933db346a473c450da2.jpg', '4');
INSERT INTO `cmf_course_class` VALUES ('7', '小院士工作室', 'admin/20201012/31a9d9c4913db1f6142a065e16601183.png', '7');
INSERT INTO `cmf_course_class` VALUES ('8', '小时装设计班', 'admin/20201012/308817e37a16fa975ced5d81639cfd36.png', '8');
INSERT INTO `cmf_course_class` VALUES ('9', '原创动漫设计班', 'admin/20201012/905594c1f1fa58c3b671aabb82e124e8.png', '9');
INSERT INTO `cmf_course_class` VALUES ('10', '墨趣坊中国画班', 'admin/20201012/feeb0cb1fc8293dbfa0b4216e3da6dc9.png', '10');
INSERT INTO `cmf_course_class` VALUES ('12', '特色课', 'admin/20201012/31a9d9c4913db1f6142a065e16601183.png', '11');

-- ----------------------------
-- Table structure for cmf_course_com
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_com`;
CREATE TABLE `cmf_course_com` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类别，0内容1课程2直播',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessons` int(11) NOT NULL DEFAULT '0' COMMENT '课时数',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `star` int(11) NOT NULL DEFAULT '0' COMMENT '星级',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_com
-- ----------------------------
INSERT INTO `cmf_course_com` VALUES ('1', '27', '3', '223', '0', '', '4', '1609121198');
INSERT INTO `cmf_course_com` VALUES ('2', '27', '3', '223', '0', '非常好', '4', '1609121221');
INSERT INTO `cmf_course_com` VALUES ('3', '27', '3', '223', '0', '嘎嘎嘎非常刚刚还', '5', '1609121472');
INSERT INTO `cmf_course_com` VALUES ('4', '27', '3', '223', '0', '加哦加哦加哦急哦急哦哦急哦急哦就\n加哦加哦加哦为饿温热委屈热望\n委任为\n委任为\n温热未确认\n微软\n委屈热望\nwerewolf\n为亲热\n饿温热五七二\n五七二\n请问热热', '0', '1609122148');
INSERT INTO `cmf_course_com` VALUES ('5', '27', '3', '223', '0', '急哦急哦为额就欧文解耦金额我问问热舞急哦急哦就', '5', '1609122353');
INSERT INTO `cmf_course_com` VALUES ('6', '27', '3', '223', '0', '非常好 非常棒', '5', '1609125655');
INSERT INTO `cmf_course_com` VALUES ('7', '27', '0', '225', '0', '1112121委任为魏汝稳热望其二薇热望其二委屈热望其二微软委屈热望其二五七二五七二委屈热望去薇热望其二委屈二位魏汝稳确认委屈二位去薇热望其二薇热望其二委屈热望其二', '3', '1609137991');
INSERT INTO `cmf_course_com` VALUES ('8', '27', '0', '225', '0', '偶就围殴进入我奇偶位金融片尾曲今晚就沃尔金融危机哦我脾气就为金融危机耳机我怕人家我去金融沃尔沃加热我', '4', '1609138234');
INSERT INTO `cmf_course_com` VALUES ('9', '41', '0', '232', '0', '', '3', '1609470406');
INSERT INTO `cmf_course_com` VALUES ('10', '39', '2', '25', '0', '好', '5', '1609741967');
INSERT INTO `cmf_course_com` VALUES ('11', '27', '2', '25', '0', '喜欢啦啦啦里(✪▽✪)\n??', '5', '1609742174');
INSERT INTO `cmf_course_com` VALUES ('12', '27', '2', '25', '0', '三星试试，\n\n我不信\n\n喜欢老师\n\n讲的很好', '3', '1609742216');
INSERT INTO `cmf_course_com` VALUES ('13', '27', '2', '25', '0', '老师非常好', '5', '1609754168');

-- ----------------------------
-- Table structure for cmf_course_copy
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_copy`;
CREATE TABLE `cmf_course_copy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` int(1) NOT NULL DEFAULT '0' COMMENT '类别，0内容1课程2语音直播3视频直播',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '内容形式，1图文2视频3音频；\r\n语音直播形式，1语音ppt2语音视频3语音音频\r\n视频直播形式，5视频直播',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '封面',
  `des` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `gradeid` int(11) NOT NULL DEFAULT '0' COMMENT '学级ID',
  `classid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `uptime` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `paytype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '获取形式，0免费1收费2密码',
  `payval` varchar(255) NOT NULL DEFAULT '' COMMENT '获取形式对应值',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，-2被下架-1删除(暂时下架)0审核中1上架中2定时上架',
  `shelvestime` bigint(20) NOT NULL DEFAULT '0' COMMENT '上架时间',
  `info` longtext COMMENT '内容介绍',
  `content` longtext COMMENT '内容详情',
  `trialtype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '试学方式，0无1链接2时间进度',
  `trialval` varchar(255) NOT NULL DEFAULT '' COMMENT '试学方式对应值',
  `mode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '课程模式，0自有1解锁',
  `lessons` int(11) NOT NULL DEFAULT '0' COMMENT '课时数',
  `stars` int(11) NOT NULL DEFAULT '0' COMMENT '总星数',
  `comments` int(11) NOT NULL DEFAULT '0' COMMENT '评价数',
  `star` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '星级',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '视频或语音链接',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '学习过的人数',
  `islive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在直播，0否1是',
  `starttime` bigint(20) NOT NULL DEFAULT '0' COMMENT '直播时间',
  `endtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `intr` varchar(255) NOT NULL DEFAULT '' COMMENT '听课指南',
  `ispush` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推送，0否1是',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  `ismaterial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有教材,0否1是',
  `tutoruid` bigint(20) NOT NULL DEFAULT '0' COMMENT '辅导老师ID',
  `isshup` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁言，0否1是',
  `livemode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '直播模式，0摄像头1ppt2共享屏幕',
  `pptindex` int(11) DEFAULT '0' COMMENT 'ppt当前序号',
  `chatopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开放交流区 0否1是',
  `classroomid` int(11) NOT NULL DEFAULT '0' COMMENT '教室ID',
  PRIMARY KEY (`id`),
  KEY `status_time` (`status`,`shelvestime`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_copy
-- ----------------------------
INSERT INTO `cmf_course_copy` VALUES ('253', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683975600', '1683981000', '', '0', '10000', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `cmf_course_copy` VALUES ('268', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1684580400', '1684585800', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('269', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1685185200', '1685190600', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('270', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1685790000', '1685795400', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('271', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1686394800', '1686400200', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('272', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1686999600', '1687005000', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('273', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1687604400', '1687609800', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('274', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1688209200', '1688214600', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('275', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1688814000', '1688819400', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('276', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1689418800', '1689424200', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('277', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1690023600', '1690029000', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('278', '100', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1690628400', '1690633800', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('279', '68', '1', '0', '', '', '', '2', '8', '1', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1691233200', '1691238600', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('280', '100', '1', '0', '', '', '', '2', '2', '1683768664', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683802800', '1683808200', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('281', '100', '1', '0', '', '', '', '2', '3', '1683768901', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1684407600', '1684413000', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('282', '100', '1', '0', '', '', '', '20', '12', '1683904925', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683852300', '1683857700', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('283', '100', '1', '0', '', '', '', '20', '12', '1683905014', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683858600', '1683864000', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('284', '100', '1', '0', '', '', '', '20', '12', '1683905051', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683869400', '1683874800', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('285', '100', '1', '0', '', '', '', '20', '12', '1683905171', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683875700', '1683881100', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('286', '68', '1', '0', '', '', '', '20', '1', '1683907718', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1683938700', '1683944100', '', '0', '10000', '0', '0', '0', '0', '0', '0', '2');
INSERT INTO `cmf_course_copy` VALUES ('287', '100', '1', '0', '', '', '', '20', '1', '1683907817', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1684543500', '1684548900', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('288', '100', '1', '0', '', '', '', '20', '1', '1683907817', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1685148300', '1685153700', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('289', '100', '1', '0', '', '', '', '20', '1', '1683907817', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1685753100', '1685758500', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `cmf_course_copy` VALUES ('290', '100', '1', '0', '', '', '', '20', '1', '1683907817', '0', '0', '', '1', '0', null, null, '0', '', '0', '0', '0', '0', '0.0', '', '0', '0', '1686357900', '1686363300', '', '0', '10000', '0', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for cmf_course_copy_users
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_copy_users`;
CREATE TABLE `cmf_course_copy_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类别，0内容1课程2直播',
  `paytype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '获取形式，0免费1收费2密码',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式，1支付宝2微信',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `liveuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `orderno` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `trade_no` varchar(255) NOT NULL DEFAULT '' COMMENT '三方订单号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，0默认 1正常 -1删除',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `paytime` bigint(20) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `step` tinyint(1) NOT NULL DEFAULT '0' COMMENT '学习状态，-1未报名 0未学习 1学习中(已签到) 2已学完(已上传作品）',
  `lessons` int(11) NOT NULL DEFAULT '0' COMMENT '学习过的课时数',
  `ispack` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否套餐0否1是',
  `signtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_copy_users
-- ----------------------------
INSERT INTO `cmf_course_copy_users` VALUES ('161', '101', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683633132', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('162', '102', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683633129', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('163', '103', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683602863', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('164', '104', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683527346', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('165', '105', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683527337', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('166', '109', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683633125', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('167', '109', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683633626', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('168', '108', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683633627', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('169', '107', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683633627', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('170', '106', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683633628', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('171', '105', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683633629', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('172', '104', '0', '0', '0', '253', '0', '0.00', '', '', '-1', '1683644311', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('173', '103', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683644309', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('174', '109', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652579', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('175', '108', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652580', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('176', '107', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652582', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('177', '106', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652583', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('178', '105', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652585', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('179', '104', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652586', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('180', '103', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652587', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('181', '102', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652588', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('182', '101', '0', '0', '0', '279', '0', '0.00', '', '', '1', '1683652589', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('183', '109', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652798', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('184', '108', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652798', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('185', '107', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652799', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('186', '106', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652801', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('187', '105', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652802', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('188', '104', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652803', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('189', '103', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652805', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('190', '102', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652806', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('191', '101', '0', '0', '0', '278', '0', '0.00', '', '', '1', '1683652807', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('192', '109', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652838', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('193', '108', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652839', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('194', '107', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652841', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('195', '106', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652842', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('196', '105', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652843', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('197', '104', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652844', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('198', '103', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652845', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('199', '102', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652846', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('200', '101', '0', '0', '0', '277', '0', '0.00', '', '', '1', '1683652847', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('201', '109', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652859', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('202', '108', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652861', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('203', '107', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652862', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('204', '106', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652863', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('205', '105', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652864', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('206', '104', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652866', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('207', '103', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652867', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('208', '102', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652868', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('209', '101', '0', '0', '0', '276', '0', '0.00', '', '', '1', '1683652869', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('210', '109', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652883', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('211', '108', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652884', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('212', '107', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652885', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('213', '106', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652886', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('214', '105', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652887', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('215', '104', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652887', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('216', '103', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652888', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('217', '102', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652889', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('218', '101', '0', '0', '0', '275', '0', '0.00', '', '', '1', '1683652890', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('219', '109', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652901', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('220', '108', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652902', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('221', '107', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652903', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('222', '106', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652904', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('223', '105', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652905', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('224', '104', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652906', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('225', '103', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652907', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('226', '102', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652908', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('227', '101', '0', '0', '0', '274', '0', '0.00', '', '', '1', '1683652909', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('228', '109', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652936', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('229', '108', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652937', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('230', '107', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652938', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('231', '106', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652939', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('232', '105', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652940', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('233', '104', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652941', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('234', '103', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652943', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('235', '102', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652944', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('236', '101', '0', '0', '0', '273', '0', '0.00', '', '', '1', '1683652945', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('237', '104', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683652968', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('238', '102', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683652969', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('239', '101', '0', '0', '0', '253', '0', '0.00', '', '', '1', '1683652970', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('240', '109', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652982', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('241', '108', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652983', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('242', '107', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652984', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('243', '106', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652985', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('244', '105', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652986', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('245', '104', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652987', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('246', '103', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652988', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('247', '102', '0', '0', '0', '268', '0', '0.00', '', '', '1', '1683652989', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('248', '101', '0', '0', '0', '268', '0', '0.00', '', '', '-1', '1683735806', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('249', '101', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653008', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('250', '109', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653009', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('251', '108', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653011', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('252', '107', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653012', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('253', '106', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653012', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('254', '105', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653013', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('255', '104', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653014', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('256', '103', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653015', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('257', '102', '0', '0', '0', '269', '0', '0.00', '', '', '1', '1683653016', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('258', '109', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653033', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('259', '108', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653033', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('260', '107', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653034', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('261', '106', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653035', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('262', '105', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653036', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('263', '104', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653037', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('264', '103', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653038', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('265', '102', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653039', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('266', '101', '0', '0', '0', '270', '0', '0.00', '', '', '1', '1683653040', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('267', '109', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653054', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('268', '108', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653055', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('269', '107', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653056', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('270', '106', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653057', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('271', '105', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653058', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('272', '104', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653059', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('273', '103', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653060', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('274', '102', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653061', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('275', '101', '0', '0', '0', '271', '0', '0.00', '', '', '1', '1683653062', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('276', '109', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653080', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('277', '108', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653081', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('278', '107', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653081', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('279', '106', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653083', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('280', '105', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653084', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('281', '104', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653085', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('282', '103', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653086', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('283', '102', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653087', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('284', '101', '0', '0', '0', '272', '0', '0.00', '', '', '1', '1683653088', '0', '0', '0', '0', '1370016000');
INSERT INTO `cmf_course_copy_users` VALUES ('285', '108', '0', '0', '0', '285', '0', '0.00', '', '', '1', '1683905283', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('286', '107', '0', '0', '0', '285', '0', '0.00', '', '', '1', '1683905283', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('287', '106', '0', '0', '0', '285', '0', '0.00', '', '', '1', '1683905284', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('288', '109', '0', '0', '0', '282', '0', '0.00', '', '', '1', '1683907125', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('289', '108', '0', '0', '0', '282', '0', '0.00', '', '', '1', '1683907125', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('290', '107', '0', '0', '0', '282', '0', '0.00', '', '', '1', '1683907126', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('291', '106', '0', '0', '0', '282', '0', '0.00', '', '', '1', '1683907127', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('292', '101', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907729', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('293', '102', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907730', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('294', '103', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907731', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('295', '104', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907732', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('296', '105', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907732', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('297', '106', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907733', '0', '0', '0', '0', '0');
INSERT INTO `cmf_course_copy_users` VALUES ('298', '107', '0', '0', '0', '286', '0', '0.00', '', '', '1', '1683907734', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for cmf_course_grade
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_grade`;
CREATE TABLE `cmf_course_grade` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_course_grade
-- ----------------------------
INSERT INTO `cmf_course_grade` VALUES ('1', '0', '2022', '202201');
INSERT INTO `cmf_course_grade` VALUES ('2', '1', '春季班', '202202');
INSERT INTO `cmf_course_grade` VALUES ('3', '1', '秋季班', '202203');
INSERT INTO `cmf_course_grade` VALUES ('5', '1', '寒假班', '202204');
INSERT INTO `cmf_course_grade` VALUES ('6', '1', '暑假班', '202205');
INSERT INTO `cmf_course_grade` VALUES ('7', '1', '寒假游学营', '202206');
INSERT INTO `cmf_course_grade` VALUES ('8', '0', '2024', '202401');
INSERT INTO `cmf_course_grade` VALUES ('9', '8', '春季班', '202402');
INSERT INTO `cmf_course_grade` VALUES ('10', '8', '秋季班', '202403');
INSERT INTO `cmf_course_grade` VALUES ('15', '8', '寒假班', '202404');
INSERT INTO `cmf_course_grade` VALUES ('16', '0', '美术3', '1');
INSERT INTO `cmf_course_grade` VALUES ('17', '16', '小时装', '10000');
INSERT INTO `cmf_course_grade` VALUES ('19', '0', '2023', '202301');
INSERT INTO `cmf_course_grade` VALUES ('20', '19', '春季班', '202302');
INSERT INTO `cmf_course_grade` VALUES ('21', '19', '秋季班', '202303');
INSERT INTO `cmf_course_grade` VALUES ('22', '19', '寒假班', '202304');
INSERT INTO `cmf_course_grade` VALUES ('23', '19', '暑假班', '202305');
INSERT INTO `cmf_course_grade` VALUES ('24', '19', '暑假游学营', '202307');
INSERT INTO `cmf_course_grade` VALUES ('25', '19', '寒假游学营', '202306');
INSERT INTO `cmf_course_grade` VALUES ('27', '1', '暑假游学营', '202207');
INSERT INTO `cmf_course_grade` VALUES ('28', '8', '暑假班', '202405');
INSERT INTO `cmf_course_grade` VALUES ('29', '8', '寒假游学营', '202406');
INSERT INTO `cmf_course_grade` VALUES ('30', '8', '暑假游学营', '202407');

-- ----------------------------
-- Table structure for cmf_course_lesson
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_lesson`;
CREATE TABLE `cmf_course_lesson` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `pid` bigint(20) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '形式，1图文2视频3音频4语音ppt5语音视频6语音音频7授课直播（白板）8视频直播',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `des` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `content` longtext COMMENT '图文内容',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT '时长s',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  `istrial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否试学0否1是',
  `starttime` bigint(20) NOT NULL DEFAULT '0' COMMENT '直播开播时间',
  `endtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '预计结束时间',
  `islive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否直播，0否1是2已结束',
  `uuid` varchar(255) NOT NULL DEFAULT '' COMMENT 'netless白板房间标识符uuid',
  `roomtoken` text COMMENT 'netless白板房间token',
  `file_uuid` varchar(255) NOT NULL DEFAULT '' COMMENT '最后一个文档转图片的uuid',
  `isshup` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁言，0否1是',
  `intr` varchar(255) NOT NULL DEFAULT '' COMMENT '听课指南',
  `pptindex` int(11) DEFAULT '0' COMMENT 'ppt当前序号',
  `resourceid` text COMMENT '声网云录制resourceid',
  `sid` varchar(255) NOT NULL DEFAULT '' COMMENT '声网云录制sid',
  `chatopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开放交流区 0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_lesson
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_course_ppt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_ppt`;
CREATE TABLE `cmf_course_ppt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessonid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_ppt
-- ----------------------------
INSERT INTO `cmf_course_ppt` VALUES ('3', '1', '3', '0', 'admin/20201012/4297c99d16e2e536ca626683a23869cf.png', '10000', '1602660373');
INSERT INTO `cmf_course_ppt` VALUES ('4', '1', '3', '0', 'admin/20201014/a7248fcd5fd208d371085edfc2d11007.png', '10000', '1602660380');
INSERT INTO `cmf_course_ppt` VALUES ('5', '1', '214', '0', 'admin/20201015/bd070ff1c251c5eee2a44e63a639434d.jpg', '10000', '1603096181');
INSERT INTO `cmf_course_ppt` VALUES ('6', '1', '205', '0', 'admin/20201012/4297c99d16e2e536ca626683a23869cf.png', '10000', '1604288032');
INSERT INTO `cmf_course_ppt` VALUES ('7', '1', '205', '0', 'default/20201210/e1e7507a9e3ac001aa1ce3b406872292.jpg', '10000', '1607591991');
INSERT INTO `cmf_course_ppt` VALUES ('9', '1', '235', '0', 'default/20210106/a35316d370cdda01dcb07dc51aaaaa22.png', '10000', '1609897897');
INSERT INTO `cmf_course_ppt` VALUES ('10', '1', '235', '0', 'default/20210106/23ede4e2b933129ac3ae01e02d91d0b7.png', '10000', '1609897906');
INSERT INTO `cmf_course_ppt` VALUES ('11', '1', '235', '0', 'default/20210106/b9dc3d6b689030285e74d9265b0fb99c.png', '10000', '1609897911');

-- ----------------------------
-- Table structure for cmf_course_users
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_users`;
CREATE TABLE `cmf_course_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类别，0内容1课程2直播',
  `paytype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '获取形式，0免费1收费2密码',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式，1支付宝2微信',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `liveuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `orderno` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `trade_no` varchar(255) NOT NULL DEFAULT '' COMMENT '三方订单号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态，0待支付1已支付',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `paytime` bigint(20) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `step` tinyint(1) NOT NULL DEFAULT '0' COMMENT '学习状态，0未学习1学习中2已学完',
  `lessons` int(11) NOT NULL DEFAULT '0' COMMENT '学习过的课时数',
  `ispack` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否套餐0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_users
-- ----------------------------
INSERT INTO `cmf_course_users` VALUES ('1', '15', '2', '1', '0', '2', '1', '100.00', '', '', '1', '1602663896', '1602663896', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('2', '5', '2', '1', '0', '2', '1', '100.00', '', '', '1', '1602666635', '1602666635', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('3', '2', '2', '1', '0', '2', '1', '79.00', '', '', '1', '1602730886', '1602730886', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('4', '13', '2', '1', '0', '2', '1', '66.00', '', '', '1', '1602740874', '1602740874', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('5', '2', '4', '1', '0', '4', '1', '100.00', '', '', '1', '1602740874', '1602740874', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('6', '2', '3', '1', '0', '207', '1', '100.00', '', '', '1', '1602812432', '1602812432', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('7', '2', '2', '1', '0', '27', '1', '100.00', '', '', '1', '1602820162', '1602820162', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('8', '2', '0', '1', '0', '14', '1', '100.00', '', '', '1', '1603243500', '1603243500', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('9', '13', '3', '1', '0', '170', '1', '66.00', '', '', '1', '1603272245', '1604106653', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('10', '2', '3', '1', '0', '205', '1', '66.00', '', '', '1', '1603327272', '1604106253', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('11', '2', '2', '1', '0', '202', '1', '99.00', '', '', '1', '1604282131', '1604282131', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('12', '5', '2', '1', '0', '202', '1', '99.00', '', '', '1', '1604282131', '1604282131', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('13', '6', '2', '1', '0', '202', '1', '99.00', '', '', '1', '1604282131', '1604282131', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('14', '7', '2', '1', '0', '202', '1', '99.00', '', '', '1', '1604282131', '1604282131', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('15', '8', '2', '1', '0', '202', '1', '49.00', '', '', '1', '1604282131', '1604282131', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('16', '13', '3', '0', '0', '205', '1', '0.00', '', '', '1', '1606445658', '1606445658', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('17', '27', '2', '0', '0', '172', '1', '0.00', '', '', '1', '1606887562', '1606887562', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('18', '27', '0', '0', '0', '15', '1', '0.00', '', '', '1', '1606887615', '1606887615', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('19', '27', '2', '0', '0', '25', '1', '0.00', '', '', '1', '1606887670', '1606887670', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('20', '27', '2', '0', '0', '174', '1', '0.00', '', '', '1', '1606887711', '1606887711', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('21', '27', '3', '0', '0', '170', '1', '0.00', '', '', '1', '1606888050', '1606888050', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('22', '27', '3', '0', '0', '17', '1', '0.00', '', '', '1', '1606888234', '1606888234', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('23', '27', '3', '0', '0', '20', '1', '0.00', '', '', '1', '1606889637', '1606889637', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('24', '27', '2', '0', '0', '29', '1', '0.00', '', '', '1', '1606889659', '1606889659', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('25', '27', '2', '0', '0', '13', '1', '0.00', '', '', '1', '1606889694', '1606889694', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('26', '28', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1607584260', '1607584260', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('27', '27', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1607590197', '1607590197', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('28', '27', '3', '0', '0', '205', '1', '0.00', '', '', '1', '1607591051', '1607591051', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('29', '27', '0', '2', '0', '222', '1', '0.00', '', '', '1', '1607594219', '1607594219', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('30', '27', '2', '2', '0', '221', '1', '0.00', '', '', '1', '1607647870', '1607647870', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('31', '1', '2', '2', '0', '221', '1', '0.00', '', '', '1', '1607670149', '1609898366', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('32', '27', '0', '0', '0', '48', '1', '0.00', '', '', '1', '1607754168', '1607754168', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('33', '29', '2', '0', '0', '29', '1', '0.00', '', '', '1', '1607829602', '1607829602', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('34', '29', '0', '0', '0', '217', '1', '0.00', '', '', '1', '1607829628', '1607829628', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('35', '27', '0', '0', '0', '219', '1', '0.00', '', '', '1', '1608002610', '1608002610', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('36', '30', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1608017276', '1608017276', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('37', '31', '2', '2', '0', '221', '1', '0.00', '', '', '1', '1608173542', '1608173542', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('38', '31', '2', '0', '0', '171', '1', '0.00', '', '', '1', '1608174079', '1608174079', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('39', '31', '3', '0', '0', '170', '1', '0.00', '', '', '1', '1608174220', '1608174220', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('40', '27', '2', '0', '0', '171', '1', '0.00', '', '', '1', '1608183220', '1608183220', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('41', '27', '2', '0', '0', '202', '1', '0.00', '', '', '1', '1608476383', '1608476383', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('42', '27', '0', '0', '0', '217', '1', '0.00', '', '', '1', '1608528603', '1608528603', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('43', '27', '0', '0', '0', '218', '1', '0.00', '', '', '1', '1608641881', '1608641881', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('44', '27', '0', '0', '0', '216', '1', '0.00', '', '', '1', '1608642685', '1608642685', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('45', '27', '0', '0', '0', '215', '1', '0.00', '', '', '1', '1608642826', '1608642826', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('46', '32', '0', '0', '0', '216', '1', '0.00', '', '', '1', '1608699850', '1608699850', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('47', '27', '3', '2', '0', '229', '1', '0.00', '', '', '1', '1608719868', '1608719868', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('48', '27', '3', '0', '0', '228', '1', '0.00', '', '', '1', '1608793160', '1608793160', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('49', '27', '3', '0', '0', '10', '1', '0.00', '', '', '1', '1609139821', '1609139821', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('50', '27', '3', '0', '0', '16', '1', '0.00', '', '', '1', '1609144665', '1609144665', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('51', '27', '0', '0', '0', '232', '1', '0.00', '', '', '1', '1609206642', '1609206642', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('52', '34', '3', '0', '0', '228', '1', '0.00', '', '', '1', '1609230369', '1609230369', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('53', '35', '3', '0', '0', '228', '1', '0.00', '', '', '1', '1609230723', '1609230723', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('54', '37', '3', '0', '0', '228', '1', '0.00', '', '', '1', '1609232249', '1609232249', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('55', '38', '3', '0', '0', '228', '1', '0.00', '', '', '1', '1609234523', '1609234523', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('56', '38', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1609240384', '1609240384', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('57', '39', '2', '0', '0', '25', '1', '0.00', '', '', '1', '1609289078', '1609289078', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('58', '34', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1609290110', '1609290110', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('59', '37', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1609314202', '1609314202', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('60', '33', '2', '0', '0', '202', '1', '0.00', '', '', '1', '1609316544', '1609316544', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('61', '34', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609384860', '1609384860', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('62', '37', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609385076', '1609385076', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('63', '27', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609386252', '1609386252', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('64', '38', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609402953', '1609402953', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('65', '33', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609403228', '1609403228', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('66', '41', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609470348', '1609470348', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('67', '48', '2', '0', '0', '29', '1', '0.00', '', '', '1', '1609474132', '1609474132', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('68', '50', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609632139', '1609632139', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('69', '50', '2', '2', '0', '221', '1', '0.00', '', '', '1', '1609632227', '1609632227', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('70', '51', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609658425', '1609658425', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('71', '52', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609658536', '1609658536', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('72', '53', '3', '0', '0', '170', '1', '0.00', '', '', '1', '1609679010', '1609679010', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('73', '39', '3', '0', '0', '17', '1', '0.00', '', '', '1', '1609727595', '1609727595', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('74', '54', '3', '2', '0', '226', '1', '0.00', '', '', '1', '1609740337', '1609740337', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('75', '39', '3', '2', '0', '227', '1', '0.00', '', '', '1', '1609743781', '1609743848', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('76', '39', '2', '2', '0', '221', '1', '0.00', '', '', '1', '1609744213', '1609744213', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('77', '56', '2', '2', '0', '221', '1', '0.00', '', '', '1', '1609746249', '1609746249', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('78', '56', '0', '0', '0', '232', '1', '0.00', '', '', '1', '1609746294', '1609746294', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('79', '56', '0', '0', '0', '218', '1', '0.00', '', '', '1', '1609746305', '1609746305', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('80', '27', '2', '0', '0', '206', '1', '0.00', '', '', '1', '1609749490', '1609749490', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('81', '27', '2', '0', '0', '204', '1', '0.00', '', '', '1', '1609749501', '1609749501', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('82', '39', '2', '0', '0', '206', '1', '0.00', '', '', '1', '1609749806', '1609749806', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('83', '53', '2', '0', '0', '206', '1', '0.00', '', '', '1', '1609771319', '1609771319', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('84', '53', '3', '0', '0', '205', '1', '0.00', '', '', '1', '1609771331', '1609771331', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('85', '53', '2', '0', '0', '174', '1', '0.00', '', '', '1', '1609775107', '1609775107', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('86', '27', '3', '0', '0', '18', '1', '0.00', '', '', '1', '1609810614', '1609810614', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('87', '27', '2', '2', '0', '31', '1', '0.00', '', '', '1', '1609810827', '1609810901', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('88', '27', '2', '0', '0', '234', '1', '0.00', '', '', '1', '1609837677', '1609837677', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('89', '1', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609840957', '1609840957', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('90', '57', '2', '0', '0', '25', '1', '0.00', '', '', '1', '1609842572', '1609842572', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('91', '58', '3', '0', '0', '233', '1', '0.00', '', '', '1', '1609867136', '1609867136', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('92', '58', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1609867152', '1609867152', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('93', '27', '3', '0', '0', '190', '1', '0.00', '', '', '1', '1609867318', '1609867318', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('94', '27', '3', '2', '0', '235', '1', '0.00', '', '', '1', '1609896157', '1609897539', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('95', '39', '3', '2', '0', '235', '1', '0.00', '', '', '1', '1609897180', '1609897180', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('96', '27', '0', '0', '0', '49', '1', '0.00', '', '', '1', '1609914955', '1609914955', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('97', '59', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1609916806', '1609916806', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('98', '27', '2', '0', '0', '30', '1', '0.00', '', '', '1', '1609922678', '1609922678', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('99', '27', '3', '0', '0', '33', '1', '0.00', '', '', '1', '1609942956', '1609942956', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('100', '60', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1609950636', '1609950636', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('101', '62', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1610000131', '1610000131', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('102', '62', '2', '0', '0', '25', '1', '0.00', '', '', '1', '1610000257', '1610000257', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('103', '62', '3', '0', '0', '17', '1', '0.00', '', '', '1', '1610000276', '1610000276', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('104', '63', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1610004773', '1610004773', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('105', '27', '2', '0', '0', '27', '1', '0.00', '', '', '1', '1610010291', '1610010291', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('106', '64', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1610023629', '1610023629', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('107', '64', '2', '0', '0', '174', '1', '0.00', '', '', '1', '1610023643', '1610023643', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('108', '65', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1610028973', '1610028973', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('109', '65', '3', '0', '0', '16', '1', '0.00', '', '', '1', '1610029623', '1610029623', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('110', '67', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1610072275', '1610072275', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('111', '67', '3', '0', '0', '16', '1', '0.00', '', '', '1', '1610072297', '1610072297', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('112', '68', '0', '0', '0', '232', '1', '0.00', '', '', '1', '1682778139', '1682778139', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('113', '68', '0', '0', '0', '237', '1', '0.00', '', '', '1', '1682778736', '1682778736', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('114', '68', '2', '0', '0', '206', '1', '0.00', '', '', '1', '1682778865', '1682778865', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('115', '68', '3', '0', '0', '207', '1', '0.00', '', '', '1', '1682779004', '1682779004', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('116', '69', '0', '0', '0', '237', '68', '0.00', '', '', '1', '1682782469', '1682782469', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('117', '68', '0', '0', '0', '238', '68', '0.00', '', '', '1', '1682783153', '1682783153', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('118', '69', '0', '0', '0', '238', '68', '0.00', '', '', '1', '1682783209', '1682783209', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('119', '68', '0', '0', '0', '239', '68', '0.00', '', '', '1', '1682784443', '1682784443', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('120', '69', '0', '0', '0', '239', '68', '0.00', '', '', '1', '1682784466', '1682784466', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('121', '1', '0', '0', '0', '238', '68', '0.00', '', '', '1', '1682786266', '1682786266', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('122', '68', '0', '0', '0', '240', '68', '0.00', '', '', '1', '1683208095', '1683208095', '2', '0', '0');
INSERT INTO `cmf_course_users` VALUES ('123', '106', '0', '0', '0', '241', '68', '0.00', '', '', '1', '1683969467', '1683969467', '2', '0', '0');

-- ----------------------------
-- Table structure for cmf_course_views
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_views`;
CREATE TABLE `cmf_course_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类别，0内容1课程2直播',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessonid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_views
-- ----------------------------
INSERT INTO `cmf_course_views` VALUES ('1', '15', '2', '2', '0', '1602664107');
INSERT INTO `cmf_course_views` VALUES ('2', '5', '2', '2', '0', '1602667972');
INSERT INTO `cmf_course_views` VALUES ('3', '2', '2', '2', '0', '1602731802');
INSERT INTO `cmf_course_views` VALUES ('4', '13', '2', '2', '0', '1602740874');
INSERT INTO `cmf_course_views` VALUES ('5', '2', '3', '4', '0', '1602745023');
INSERT INTO `cmf_course_views` VALUES ('6', '2', '3', '207', '0', '1604284594');
INSERT INTO `cmf_course_views` VALUES ('7', '2', '2', '27', '0', '1603270236');
INSERT INTO `cmf_course_views` VALUES ('8', '2', '0', '14', '0', '1603243500');
INSERT INTO `cmf_course_views` VALUES ('9', '2', '3', '170', '0', '1603272245');
INSERT INTO `cmf_course_views` VALUES ('10', '2', '3', '205', '0', '1603331168');
INSERT INTO `cmf_course_views` VALUES ('11', '2', '2', '202', '0', '1603447362');
INSERT INTO `cmf_course_views` VALUES ('12', '13', '3', '205', '0', '1606447855');
INSERT INTO `cmf_course_views` VALUES ('13', '27', '2', '172', '0', '1610082971');
INSERT INTO `cmf_course_views` VALUES ('14', '27', '0', '15', '0', '1606887615');
INSERT INTO `cmf_course_views` VALUES ('15', '27', '2', '25', '0', '1610071491');
INSERT INTO `cmf_course_views` VALUES ('16', '27', '2', '174', '0', '1609894899');
INSERT INTO `cmf_course_views` VALUES ('17', '27', '3', '170', '0', '1610009782');
INSERT INTO `cmf_course_views` VALUES ('18', '27', '3', '17', '0', '1609754288');
INSERT INTO `cmf_course_views` VALUES ('19', '27', '3', '20', '0', '1606889637');
INSERT INTO `cmf_course_views` VALUES ('20', '27', '2', '29', '0', '1610074325');
INSERT INTO `cmf_course_views` VALUES ('21', '27', '2', '13', '0', '1610083001');
INSERT INTO `cmf_course_views` VALUES ('22', '28', '3', '207', '0', '1609290716');
INSERT INTO `cmf_course_views` VALUES ('23', '27', '3', '207', '0', '1610129469');
INSERT INTO `cmf_course_views` VALUES ('24', '27', '3', '205', '0', '1607593056');
INSERT INTO `cmf_course_views` VALUES ('25', '27', '0', '222', '0', '1609812425');
INSERT INTO `cmf_course_views` VALUES ('26', '27', '2', '221', '0', '1609929665');
INSERT INTO `cmf_course_views` VALUES ('27', '27', '0', '48', '0', '1610078307');
INSERT INTO `cmf_course_views` VALUES ('28', '29', '2', '29', '0', '1607829602');
INSERT INTO `cmf_course_views` VALUES ('29', '29', '0', '217', '0', '1607829628');
INSERT INTO `cmf_course_views` VALUES ('30', '27', '0', '219', '0', '1609547397');
INSERT INTO `cmf_course_views` VALUES ('31', '30', '3', '207', '0', '1608017276');
INSERT INTO `cmf_course_views` VALUES ('32', '31', '2', '221', '0', '1608173543');
INSERT INTO `cmf_course_views` VALUES ('33', '31', '2', '171', '0', '1608182959');
INSERT INTO `cmf_course_views` VALUES ('34', '31', '3', '170', '0', '1608182609');
INSERT INTO `cmf_course_views` VALUES ('35', '27', '2', '171', '0', '1610010274');
INSERT INTO `cmf_course_views` VALUES ('36', '27', '2', '202', '0', '1610078057');
INSERT INTO `cmf_course_views` VALUES ('37', '27', '0', '217', '0', '1609942970');
INSERT INTO `cmf_course_views` VALUES ('38', '27', '0', '218', '0', '1610082952');
INSERT INTO `cmf_course_views` VALUES ('39', '27', '0', '216', '0', '1609411744');
INSERT INTO `cmf_course_views` VALUES ('40', '27', '0', '215', '0', '1608642852');
INSERT INTO `cmf_course_views` VALUES ('41', '32', '0', '216', '0', '1608699850');
INSERT INTO `cmf_course_views` VALUES ('42', '27', '3', '229', '0', '1609224124');
INSERT INTO `cmf_course_views` VALUES ('43', '27', '3', '228', '0', '1609238838');
INSERT INTO `cmf_course_views` VALUES ('44', '27', '3', '10', '0', '1610070493');
INSERT INTO `cmf_course_views` VALUES ('45', '27', '3', '16', '0', '1610074555');
INSERT INTO `cmf_course_views` VALUES ('46', '27', '0', '232', '0', '1610082936');
INSERT INTO `cmf_course_views` VALUES ('47', '34', '3', '228', '0', '1609238678');
INSERT INTO `cmf_course_views` VALUES ('48', '35', '3', '228', '0', '1609230867');
INSERT INTO `cmf_course_views` VALUES ('49', '37', '3', '228', '0', '1609238548');
INSERT INTO `cmf_course_views` VALUES ('50', '38', '3', '228', '0', '1609239006');
INSERT INTO `cmf_course_views` VALUES ('51', '38', '3', '207', '0', '1609371095');
INSERT INTO `cmf_course_views` VALUES ('52', '39', '2', '25', '0', '1609754198');
INSERT INTO `cmf_course_views` VALUES ('53', '34', '3', '207', '0', '1610020594');
INSERT INTO `cmf_course_views` VALUES ('54', '37', '3', '207', '0', '1609380189');
INSERT INTO `cmf_course_views` VALUES ('55', '33', '2', '202', '0', '1609316544');
INSERT INTO `cmf_course_views` VALUES ('56', '34', '3', '233', '0', '1609668074');
INSERT INTO `cmf_course_views` VALUES ('57', '37', '3', '233', '0', '1609656436');
INSERT INTO `cmf_course_views` VALUES ('58', '27', '3', '233', '0', '1609861521');
INSERT INTO `cmf_course_views` VALUES ('59', '38', '3', '233', '0', '1609467269');
INSERT INTO `cmf_course_views` VALUES ('60', '33', '3', '233', '0', '1609406175');
INSERT INTO `cmf_course_views` VALUES ('61', '41', '3', '233', '0', '1609470353');
INSERT INTO `cmf_course_views` VALUES ('62', '48', '2', '29', '0', '1609474132');
INSERT INTO `cmf_course_views` VALUES ('63', '50', '3', '233', '0', '1609632139');
INSERT INTO `cmf_course_views` VALUES ('64', '50', '2', '221', '0', '1609632229');
INSERT INTO `cmf_course_views` VALUES ('65', '51', '3', '233', '0', '1609668075');
INSERT INTO `cmf_course_views` VALUES ('66', '52', '3', '233', '0', '1609659577');
INSERT INTO `cmf_course_views` VALUES ('67', '53', '3', '170', '0', '1609679010');
INSERT INTO `cmf_course_views` VALUES ('68', '39', '3', '17', '0', '1609727595');
INSERT INTO `cmf_course_views` VALUES ('69', '54', '3', '226', '0', '1609740338');
INSERT INTO `cmf_course_views` VALUES ('70', '39', '3', '227', '0', '1609743849');
INSERT INTO `cmf_course_views` VALUES ('71', '39', '2', '221', '0', '1609744213');
INSERT INTO `cmf_course_views` VALUES ('72', '56', '2', '221', '0', '1609746250');
INSERT INTO `cmf_course_views` VALUES ('73', '56', '0', '232', '0', '1609746294');
INSERT INTO `cmf_course_views` VALUES ('74', '56', '0', '218', '0', '1609746305');
INSERT INTO `cmf_course_views` VALUES ('75', '27', '2', '206', '0', '1610008222');
INSERT INTO `cmf_course_views` VALUES ('76', '27', '2', '204', '0', '1609749501');
INSERT INTO `cmf_course_views` VALUES ('77', '39', '2', '206', '0', '1609749806');
INSERT INTO `cmf_course_views` VALUES ('78', '53', '2', '206', '0', '1609771319');
INSERT INTO `cmf_course_views` VALUES ('79', '53', '3', '205', '0', '1609771340');
INSERT INTO `cmf_course_views` VALUES ('80', '53', '2', '174', '0', '1609775107');
INSERT INTO `cmf_course_views` VALUES ('81', '27', '3', '18', '0', '1610081571');
INSERT INTO `cmf_course_views` VALUES ('82', '27', '2', '31', '0', '1609942855');
INSERT INTO `cmf_course_views` VALUES ('83', '27', '2', '234', '0', '1609838932');
INSERT INTO `cmf_course_views` VALUES ('84', '1', '3', '233', '0', '1609840971');
INSERT INTO `cmf_course_views` VALUES ('85', '57', '2', '25', '0', '1609842581');
INSERT INTO `cmf_course_views` VALUES ('86', '58', '3', '233', '0', '1609867136');
INSERT INTO `cmf_course_views` VALUES ('87', '58', '3', '207', '0', '1609867152');
INSERT INTO `cmf_course_views` VALUES ('88', '27', '3', '190', '0', '1609895596');
INSERT INTO `cmf_course_views` VALUES ('89', '27', '3', '235', '0', '1610083037');
INSERT INTO `cmf_course_views` VALUES ('90', '39', '3', '235', '0', '1609897180');
INSERT INTO `cmf_course_views` VALUES ('91', '1', '2', '221', '0', '1609898367');
INSERT INTO `cmf_course_views` VALUES ('92', '27', '0', '49', '0', '1610072723');
INSERT INTO `cmf_course_views` VALUES ('93', '59', '3', '207', '0', '1609916812');
INSERT INTO `cmf_course_views` VALUES ('94', '27', '2', '30', '0', '1610082893');
INSERT INTO `cmf_course_views` VALUES ('95', '27', '3', '33', '0', '1609997800');
INSERT INTO `cmf_course_views` VALUES ('96', '60', '3', '207', '0', '1609950636');
INSERT INTO `cmf_course_views` VALUES ('97', '62', '3', '207', '0', '1610000131');
INSERT INTO `cmf_course_views` VALUES ('98', '62', '2', '25', '0', '1610000257');
INSERT INTO `cmf_course_views` VALUES ('99', '62', '3', '17', '0', '1610000276');
INSERT INTO `cmf_course_views` VALUES ('100', '63', '3', '207', '0', '1610004773');
INSERT INTO `cmf_course_views` VALUES ('101', '27', '2', '27', '0', '1610101160');
INSERT INTO `cmf_course_views` VALUES ('102', '64', '3', '207', '0', '1610023635');
INSERT INTO `cmf_course_views` VALUES ('103', '64', '2', '174', '0', '1610023643');
INSERT INTO `cmf_course_views` VALUES ('104', '65', '3', '207', '0', '1610028973');
INSERT INTO `cmf_course_views` VALUES ('105', '65', '3', '16', '0', '1610029623');
INSERT INTO `cmf_course_views` VALUES ('106', '67', '3', '207', '0', '1610072275');
INSERT INTO `cmf_course_views` VALUES ('107', '67', '3', '16', '0', '1610072311');
INSERT INTO `cmf_course_views` VALUES ('108', '68', '0', '232', '0', '1682778248');
INSERT INTO `cmf_course_views` VALUES ('109', '68', '0', '237', '0', '1682782310');
INSERT INTO `cmf_course_views` VALUES ('110', '68', '2', '206', '0', '1682778865');
INSERT INTO `cmf_course_views` VALUES ('111', '68', '3', '207', '0', '1682779004');
INSERT INTO `cmf_course_views` VALUES ('112', '69', '0', '237', '0', '1682782469');
INSERT INTO `cmf_course_views` VALUES ('113', '68', '0', '238', '0', '1683210355');
INSERT INTO `cmf_course_views` VALUES ('114', '69', '0', '238', '0', '1683181793');
INSERT INTO `cmf_course_views` VALUES ('115', '68', '0', '239', '0', '1683179679');
INSERT INTO `cmf_course_views` VALUES ('116', '69', '0', '239', '0', '1682784603');
INSERT INTO `cmf_course_views` VALUES ('117', '1', '0', '238', '0', '1682791072');
INSERT INTO `cmf_course_views` VALUES ('118', '68', '0', '240', '0', '1683208693');
INSERT INTO `cmf_course_views` VALUES ('119', '106', '0', '241', '0', '1683969467');

-- ----------------------------
-- Table structure for cmf_course_ware
-- ----------------------------
DROP TABLE IF EXISTS `cmf_course_ware`;
CREATE TABLE `cmf_course_ware` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessonid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  `size` varchar(255) NOT NULL DEFAULT '' COMMENT '文件大小',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_course_ware
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_feedback
-- ----------------------------
DROP TABLE IF EXISTS `cmf_feedback`;
CREATE TABLE `cmf_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `model` varchar(255) NOT NULL DEFAULT '' COMMENT '设备',
  `system` varchar(255) NOT NULL DEFAULT '' COMMENT '系统',
  `version` varchar(255) NOT NULL DEFAULT '' COMMENT 'App版本号',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '提交时间',
  `uptime` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，0处理中1已处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_feedback
-- ----------------------------
INSERT INTO `cmf_feedback` VALUES ('1', '27', 'https://zhaoliangceshi.sdwanyue.com/api/20201226/24f1ecb23ee7b294bdbde9a02b758424.png', 'jojojojo', '', '', '', '1608966896', '0', '0');
INSERT INTO `cmf_feedback` VALUES ('2', '27', '', '哦姐姐哦', '', '', '', '1608966989', '0', '0');
INSERT INTO `cmf_feedback` VALUES ('3', '27', '', '奇偶位就', '', '', '', '1608967077', '0', '0');
INSERT INTO `cmf_feedback` VALUES ('4', '27', '', '我了个去去去去去去', '', '', '', '1608967141', '0', '0');
INSERT INTO `cmf_feedback` VALUES ('5', '1', 'https://demo.sdwanyue.com/api/20210105/3771f088f17ef5de574da89d206f86e5.png', '222', '', '', '', '1609840593', '0', '0');

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES ('32', '2', '1', '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES ('33', '3', '0', '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES ('34', '1', '0', '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES ('35', '1', '1', '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES ('36', '1', '1', '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES ('37', '2', '1', '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES ('38', '2', '1', '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES ('39', '2', '1', '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES ('40', '2', '1', '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES ('41', '2', '1', '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES ('42', '2', '1', '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES ('43', '2', '1', '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES ('44', '2', '1', '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES ('49', '2', '1', '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES ('50', '2', '1', '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES ('51', '2', '1', '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES ('52', '2', '1', '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES ('53', '2', '1', '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES ('54', '2', '1', '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES ('55', '2', '1', '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES ('64', '2', '1', '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES ('65', '2', '1', '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES ('66', '2', '1', '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES ('67', '2', '1', '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES ('68', '2', '1', '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES ('69', '2', '1', '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES ('70', '2', '1', '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES ('71', '2', '1', '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');
INSERT INTO `cmf_hook` VALUES ('72', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES ('73', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES ('74', '2', '1', '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面');
INSERT INTO `cmf_hook` VALUES ('75', '2', '1', '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面');
INSERT INTO `cmf_hook` VALUES ('76', '2', '1', '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面');
INSERT INTO `cmf_hook` VALUES ('77', '2', '1', '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面');
INSERT INTO `cmf_hook` VALUES ('78', '2', '1', '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面');
INSERT INTO `cmf_hook` VALUES ('79', '2', '1', '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面');
INSERT INTO `cmf_hook` VALUES ('80', '2', '1', '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面');
INSERT INTO `cmf_hook` VALUES ('81', '2', '1', '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面');
INSERT INTO `cmf_hook` VALUES ('82', '2', '1', '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面');
INSERT INTO `cmf_hook` VALUES ('83', '2', '1', '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面');
INSERT INTO `cmf_hook` VALUES ('84', '4', '0', '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏');
INSERT INTO `cmf_hook` VALUES ('85', '4', '0', '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容');
INSERT INTO `cmf_hook` VALUES ('86', '1', '0', '应用调度', 'app_dispatch', 'cmf', '应用调度');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES ('2', '10000', '1', 'fetch_upload_view', 'Qiniu');

-- ----------------------------
-- Table structure for cmf_integral_record
-- ----------------------------
DROP TABLE IF EXISTS `cmf_integral_record`;
CREATE TABLE `cmf_integral_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型 1收入2支出',
  `action` tinyint(1) NOT NULL DEFAULT '0' COMMENT '方式  1消费返还2推广返还3购买课程抵扣 4订单超时退还',
  `integral` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '积分数',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `actionid` bigint(20) NOT NULL DEFAULT '0' COMMENT '方式对应ID',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_integral_record
-- ----------------------------
INSERT INTO `cmf_integral_record` VALUES ('3', '102', '1', '1', '99.89', '0.00', '128', '1610933892');
INSERT INTO `cmf_integral_record` VALUES ('4', '102', '2', '3', '1000.00', '10.00', '128', '1610767871');
INSERT INTO `cmf_integral_record` VALUES ('5', '340', '1', '1', '0.01', '1.00', '136', '1611025728');
INSERT INTO `cmf_integral_record` VALUES ('6', '340', '1', '1', '0.02', '0.01', '137', '1611039111');
INSERT INTO `cmf_integral_record` VALUES ('7', '511', '1', '1', '0.02', '0.01', '142', '1611039446');
INSERT INTO `cmf_integral_record` VALUES ('8', '539', '1', '1', '0.02', '0.01', '143', '1611039554');
INSERT INTO `cmf_integral_record` VALUES ('9', '340', '1', '2', '0.05', '0.01', '143', '1611039554');
INSERT INTO `cmf_integral_record` VALUES ('10', '39', '2', '3', '0.01', '0.01', '151', '1611047835');
INSERT INTO `cmf_integral_record` VALUES ('11', '39', '2', '3', '0.01', '0.01', '152', '1611047874');
INSERT INTO `cmf_integral_record` VALUES ('12', '39', '2', '3', '0.01', '0.01', '153', '1611047937');
INSERT INTO `cmf_integral_record` VALUES ('13', '39', '2', '3', '0.01', '0.01', '154', '1611047970');
INSERT INTO `cmf_integral_record` VALUES ('14', '340', '2', '3', '0.01', '0.01', '155', '1611048288');
INSERT INTO `cmf_integral_record` VALUES ('15', '47', '2', '3', '0.01', '0.01', '156', '1611048789');
INSERT INTO `cmf_integral_record` VALUES ('16', '511', '2', '3', '0.01', '0.01', '157', '1611050913');
INSERT INTO `cmf_integral_record` VALUES ('17', '563', '1', '1', '0.02', '0.01', '180', '1611195460');
INSERT INTO `cmf_integral_record` VALUES ('18', '491', '1', '1', '0.02', '0.01', '638', '1612753848');
INSERT INTO `cmf_integral_record` VALUES ('19', '575', '1', '1', '0.02', '0.01', '643', '1612756555');
INSERT INTO `cmf_integral_record` VALUES ('20', '638', '1', '1', '0.02', '0.01', '644', '1612764069');
INSERT INTO `cmf_integral_record` VALUES ('21', '47', '2', '3', '0.01', '0.01', '50', '1613783183');
INSERT INTO `cmf_integral_record` VALUES ('22', '215', '2', '3', '0.01', '0.01', '51', '1613783884');
INSERT INTO `cmf_integral_record` VALUES ('23', '47', '2', '3', '3.00', '3.00', '55', '1613790181');
INSERT INTO `cmf_integral_record` VALUES ('24', '47', '1', '4', '3.00', '3.00', '55', '1613791081');
INSERT INTO `cmf_integral_record` VALUES ('25', '47', '2', '3', '3.00', '3.00', '58', '1613793214');
INSERT INTO `cmf_integral_record` VALUES ('26', '47', '1', '4', '3.00', '3.00', '58', '1613794114');
INSERT INTO `cmf_integral_record` VALUES ('27', '47', '2', '3', '3.00', '3.00', '60', '1613805514');
INSERT INTO `cmf_integral_record` VALUES ('28', '47', '1', '4', '3.00', '3.00', '60', '1613806414');
INSERT INTO `cmf_integral_record` VALUES ('29', '557', '2', '3', '9.00', '9.00', '152', '1613895869');
INSERT INTO `cmf_integral_record` VALUES ('30', '557', '2', '3', '9.00', '9.00', '153', '1613895886');
INSERT INTO `cmf_integral_record` VALUES ('31', '557', '2', '3', '9.00', '9.00', '154', '1613896470');
INSERT INTO `cmf_integral_record` VALUES ('32', '557', '1', '4', '9.00', '9.00', '152', '1613896769');
INSERT INTO `cmf_integral_record` VALUES ('33', '557', '1', '4', '9.00', '9.00', '153', '1613896786');
INSERT INTO `cmf_integral_record` VALUES ('34', '557', '1', '4', '9.00', '9.00', '154', '1613897370');
INSERT INTO `cmf_integral_record` VALUES ('35', '557', '2', '3', '5.00', '5.00', '155', '1613897500');
INSERT INTO `cmf_integral_record` VALUES ('36', '47', '2', '3', '9.00', '9.00', '159', '1613903958');
INSERT INTO `cmf_integral_record` VALUES ('37', '47', '2', '3', '3.00', '3.00', '160', '1613904298');
INSERT INTO `cmf_integral_record` VALUES ('38', '47', '2', '3', '3.00', '3.00', '161', '1613904309');
INSERT INTO `cmf_integral_record` VALUES ('39', '47', '1', '4', '9.00', '9.00', '159', '1613904858');
INSERT INTO `cmf_integral_record` VALUES ('40', '47', '1', '4', '3.00', '3.00', '160', '1613905198');
INSERT INTO `cmf_integral_record` VALUES ('41', '47', '1', '4', '3.00', '3.00', '161', '1613905209');
INSERT INTO `cmf_integral_record` VALUES ('42', '47', '2', '3', '9.00', '9.00', '162', '1613954874');
INSERT INTO `cmf_integral_record` VALUES ('43', '47', '2', '3', '9.00', '9.00', '163', '1613954880');
INSERT INTO `cmf_integral_record` VALUES ('44', '47', '2', '3', '9.00', '9.00', '164', '1613954886');
INSERT INTO `cmf_integral_record` VALUES ('45', '47', '2', '3', '9.00', '9.00', '165', '1613954906');
INSERT INTO `cmf_integral_record` VALUES ('46', '47', '2', '3', '6.00', '6.00', '166', '1613954935');
INSERT INTO `cmf_integral_record` VALUES ('47', '47', '2', '3', '6.00', '6.00', '167', '1613955133');
INSERT INTO `cmf_integral_record` VALUES ('48', '47', '2', '3', '6.00', '6.00', '168', '1613955549');
INSERT INTO `cmf_integral_record` VALUES ('49', '47', '1', '4', '9.00', '9.00', '162', '1613955774');
INSERT INTO `cmf_integral_record` VALUES ('50', '47', '1', '4', '9.00', '9.00', '163', '1613955780');
INSERT INTO `cmf_integral_record` VALUES ('51', '47', '1', '4', '9.00', '9.00', '164', '1613955786');
INSERT INTO `cmf_integral_record` VALUES ('52', '47', '1', '4', '9.00', '9.00', '165', '1613955806');
INSERT INTO `cmf_integral_record` VALUES ('53', '47', '1', '4', '6.00', '6.00', '166', '1613955835');
INSERT INTO `cmf_integral_record` VALUES ('54', '47', '1', '4', '6.00', '6.00', '167', '1613956033');
INSERT INTO `cmf_integral_record` VALUES ('55', '47', '1', '4', '6.00', '6.00', '168', '1613956449');
INSERT INTO `cmf_integral_record` VALUES ('56', '557', '1', '1', '14.00', '7.00', '169', '1614060650');
INSERT INTO `cmf_integral_record` VALUES ('57', '557', '1', '1', '14.00', '7.00', '186', '1614072133');
INSERT INTO `cmf_integral_record` VALUES ('58', '390', '1', '1', '0.02', '0.01', '213', '1614130525');
INSERT INTO `cmf_integral_record` VALUES ('59', '557', '2', '3', '6.00', '6.00', '223', '1614148367');
INSERT INTO `cmf_integral_record` VALUES ('60', '47', '2', '3', '6.00', '6.00', '227', '1614160312');
INSERT INTO `cmf_integral_record` VALUES ('61', '47', '2', '3', '6.00', '6.00', '228', '1614160331');
INSERT INTO `cmf_integral_record` VALUES ('62', '390', '1', '1', '0.02', '0.01', '232', '1614223600');
INSERT INTO `cmf_integral_record` VALUES ('63', '557', '1', '4', '6.00', '0.00', '223', '1614225285');
INSERT INTO `cmf_integral_record` VALUES ('64', '47', '1', '4', '6.00', '0.00', '227', '1614225285');
INSERT INTO `cmf_integral_record` VALUES ('65', '47', '1', '4', '6.00', '0.00', '228', '1614225285');
INSERT INTO `cmf_integral_record` VALUES ('66', '47', '1', '1', '18.00', '9.00', '229', '1614232882');
INSERT INTO `cmf_integral_record` VALUES ('67', '588', '1', '1', '18.00', '9.00', '242', '1614232882');
INSERT INTO `cmf_integral_record` VALUES ('68', '588', '1', '1', '0.02', '0.01', '243', '1614233292');
INSERT INTO `cmf_integral_record` VALUES ('69', '588', '1', '1', '20.00', '10.00', '245', '1614234985');
INSERT INTO `cmf_integral_record` VALUES ('70', '588', '1', '1', '0.02', '0.01', '247', '1614236419');
INSERT INTO `cmf_integral_record` VALUES ('71', '588', '2', '3', '6.00', '6.00', '248', '1614236992');
INSERT INTO `cmf_integral_record` VALUES ('72', '588', '1', '4', '6.00', '6.00', '248', '1614237900');
INSERT INTO `cmf_integral_record` VALUES ('73', '588', '1', '4', '6.00', '0.00', '248', '1614244446');
INSERT INTO `cmf_integral_record` VALUES ('74', '588', '1', '4', '6.00', '0.00', '248', '1614244518');
INSERT INTO `cmf_integral_record` VALUES ('75', '588', '1', '4', '6.00', '0.00', '248', '1614244616');
INSERT INTO `cmf_integral_record` VALUES ('76', '588', '1', '4', '6.00', '0.00', '248', '1614244688');
INSERT INTO `cmf_integral_record` VALUES ('77', '588', '1', '4', '6.00', '0.00', '248', '1614244763');
INSERT INTO `cmf_integral_record` VALUES ('78', '47', '2', '3', '3.00', '3.00', '255', '1614245429');
INSERT INTO `cmf_integral_record` VALUES ('79', '47', '1', '1', '14.00', '7.00', '255', '1614246287');
INSERT INTO `cmf_integral_record` VALUES ('80', '47', '2', '3', '6.00', '6.00', '257', '1614247720');
INSERT INTO `cmf_integral_record` VALUES ('81', '47', '1', '1', '8.02', '4.01', '257', '1614247720');
INSERT INTO `cmf_integral_record` VALUES ('82', '390', '1', '1', '0.02', '0.01', '266', '1614304106');
INSERT INTO `cmf_integral_record` VALUES ('83', '390', '1', '1', '0.02', '0.01', '362', '1614312148');
INSERT INTO `cmf_integral_record` VALUES ('84', '557', '2', '3', '0.01', '0.01', '365', '1614320632');
INSERT INTO `cmf_integral_record` VALUES ('85', '557', '1', '1', '0.02', '0.01', '366', '1614320649');
INSERT INTO `cmf_integral_record` VALUES ('86', '494', '1', '1', '20.00', '10.00', '368', '1614387285');
INSERT INTO `cmf_integral_record` VALUES ('87', '494', '2', '3', '3.00', '3.00', '370', '1614388031');
INSERT INTO `cmf_integral_record` VALUES ('88', '494', '1', '4', '3.00', '0.00', '370', '1614391650');
INSERT INTO `cmf_integral_record` VALUES ('89', '36', '1', '1', '0.02', '0.01', '371', '1614395047');
INSERT INTO `cmf_integral_record` VALUES ('90', '340', '2', '3', '0.01', '0.01', '373', '1614395766');
INSERT INTO `cmf_integral_record` VALUES ('91', '511', '2', '3', '0.01', '0.01', '374', '1614395881');
INSERT INTO `cmf_integral_record` VALUES ('92', '340', '2', '3', '0.01', '0.01', '376', '1614406065');
INSERT INTO `cmf_integral_record` VALUES ('93', '507', '1', '1', '0.02', '0.01', '379', '1614407404');
INSERT INTO `cmf_integral_record` VALUES ('94', '340', '2', '3', '0.01', '0.01', '380', '1614408223');
INSERT INTO `cmf_integral_record` VALUES ('95', '507', '1', '1', '1.00', '0.01', '382', '1614409232');
INSERT INTO `cmf_integral_record` VALUES ('96', '557', '1', '1', '1.00', '0.01', '383', '1614409233');
INSERT INTO `cmf_integral_record` VALUES ('97', '507', '1', '1', '1.00', '0.01', '384', '1614409685');
INSERT INTO `cmf_integral_record` VALUES ('98', '511', '1', '1', '1.00', '0.01', '385', '1614409807');
INSERT INTO `cmf_integral_record` VALUES ('99', '511', '2', '3', '0.01', '0.01', '386', '1614409979');
INSERT INTO `cmf_integral_record` VALUES ('100', '507', '1', '1', '1.00', '0.01', '375', '1614409979');
INSERT INTO `cmf_integral_record` VALUES ('101', '340', '2', '3', '0.01', '0.01', '387', '1614410042');
INSERT INTO `cmf_integral_record` VALUES ('102', '588', '2', '3', '0.01', '0.01', '447', '1614418329');
INSERT INTO `cmf_integral_record` VALUES ('103', '494', '2', '3', '0.01', '0.01', '448', '1614419003');
INSERT INTO `cmf_integral_record` VALUES ('104', '494', '2', '3', '0.01', '0.01', '449', '1614419115');
INSERT INTO `cmf_integral_record` VALUES ('105', '507', '2', '3', '0.01', '0.01', '451', '1614559876');
INSERT INTO `cmf_integral_record` VALUES ('106', '494', '2', '3', '0.01', '0.01', '453', '1614563328');
INSERT INTO `cmf_integral_record` VALUES ('107', '47', '2', '3', '0.01', '0.01', '455', '1614563768');
INSERT INTO `cmf_integral_record` VALUES ('108', '494', '1', '4', '0.01', '0.00', '449', '1614564300');
INSERT INTO `cmf_integral_record` VALUES ('109', '507', '1', '4', '0.01', '0.00', '451', '1614564600');
INSERT INTO `cmf_integral_record` VALUES ('110', '494', '1', '4', '0.01', '0.00', '453', '1614564600');
INSERT INTO `cmf_integral_record` VALUES ('111', '507', '2', '3', '0.01', '0.01', '459', '1614577080');
INSERT INTO `cmf_integral_record` VALUES ('112', '507', '1', '1', '1109.98', '554.99', '459', '1614577080');
INSERT INTO `cmf_integral_record` VALUES ('113', '511', '2', '3', '0.01', '0.01', '462', '1614577490');
INSERT INTO `cmf_integral_record` VALUES ('114', '36', '1', '1', '0.02', '0.01', '461', '1614577524');
INSERT INTO `cmf_integral_record` VALUES ('115', '588', '2', '3', '0.01', '0.01', '463', '1614579177');
INSERT INTO `cmf_integral_record` VALUES ('116', '47', '2', '3', '0.01', '0.01', '464', '1614579836');
INSERT INTO `cmf_integral_record` VALUES ('117', '494', '2', '3', '0.01', '0.01', '465', '1614581473');
INSERT INTO `cmf_integral_record` VALUES ('118', '588', '2', '3', '0.01', '0.01', '466', '1614582758');
INSERT INTO `cmf_integral_record` VALUES ('119', '588', '2', '3', '0.01', '0.01', '467', '1614582888');
INSERT INTO `cmf_integral_record` VALUES ('120', '340', '1', '4', '0.01', '0.00', '376', '1614585600');
INSERT INTO `cmf_integral_record` VALUES ('121', '494', '2', '3', '9.00', '9.00', '469', '1614653179');
INSERT INTO `cmf_integral_record` VALUES ('122', '494', '1', '1', '1.80', '0.90', '469', '1614653179');
INSERT INTO `cmf_integral_record` VALUES ('123', '507', '1', '1', '46.00', '23.00', '470', '1614654787');
INSERT INTO `cmf_integral_record` VALUES ('124', '588', '2', '3', '5.00', '5.00', '471', '1614655131');
INSERT INTO `cmf_integral_record` VALUES ('125', '588', '1', '1', '19.60', '9.80', '471', '1614655131');
INSERT INTO `cmf_integral_record` VALUES ('126', '494', '2', '3', '3.00', '3.00', '472', '1614655199');
INSERT INTO `cmf_integral_record` VALUES ('127', '494', '1', '1', '14.00', '7.00', '472', '1614655199');
INSERT INTO `cmf_integral_record` VALUES ('128', '494', '2', '3', '7.00', '7.00', '473', '1614655358');
INSERT INTO `cmf_integral_record` VALUES ('129', '588', '2', '3', '7.00', '7.00', '477', '1614655574');
INSERT INTO `cmf_integral_record` VALUES ('130', '588', '1', '1', '128.46', '64.23', '477', '1614655574');
INSERT INTO `cmf_integral_record` VALUES ('131', '39', '2', '3', '0.01', '0.01', '503', '1614671441');
INSERT INTO `cmf_integral_record` VALUES ('132', '494', '2', '3', '9.00', '9.00', '504', '1614732759');
INSERT INTO `cmf_integral_record` VALUES ('133', '507', '2', '3', '0.01', '0.01', '506', '1614733267');
INSERT INTO `cmf_integral_record` VALUES ('134', '511', '2', '3', '9.00', '9.00', '511', '1614733615');
INSERT INTO `cmf_integral_record` VALUES ('135', '511', '1', '4', '9.00', '9.00', '511', '1614734520');
INSERT INTO `cmf_integral_record` VALUES ('136', '588', '2', '3', '6.00', '6.00', '513', '1614734883');
INSERT INTO `cmf_integral_record` VALUES ('137', '507', '1', '1', '0.02', '0.01', '507', '1614735005');
INSERT INTO `cmf_integral_record` VALUES ('138', '494', '1', '1', '0.02', '0.01', '514', '1614735005');
INSERT INTO `cmf_integral_record` VALUES ('139', '47', '2', '3', '9.00', '9.00', '516', '1614735685');
INSERT INTO `cmf_integral_record` VALUES ('140', '588', '1', '4', '6.00', '6.00', '513', '1614735810');
INSERT INTO `cmf_integral_record` VALUES ('141', '47', '1', '4', '9.00', '9.00', '516', '1614736590');
INSERT INTO `cmf_integral_record` VALUES ('142', '507', '1', '1', '0.02', '0.01', '518', '1614753328');
INSERT INTO `cmf_integral_record` VALUES ('143', '494', '1', '4', '7.00', '0.00', '473', '1614818700');
INSERT INTO `cmf_integral_record` VALUES ('144', '494', '1', '4', '9.00', '0.00', '504', '1614826200');
INSERT INTO `cmf_integral_record` VALUES ('145', '39', '2', '3', '3.00', '3.00', '525', '1614836695');
INSERT INTO `cmf_integral_record` VALUES ('146', '491', '2', '3', '0.02', '0.02', '527', '1614836997');
INSERT INTO `cmf_integral_record` VALUES ('147', '39', '1', '4', '3.00', '3.00', '525', '1614837600');
INSERT INTO `cmf_integral_record` VALUES ('148', '491', '1', '4', '0.02', '0.02', '527', '1614837900');
INSERT INTO `cmf_integral_record` VALUES ('149', '511', '2', '3', '22.00', '22.00', '529', '1614838827');
INSERT INTO `cmf_integral_record` VALUES ('150', '507', '2', '3', '22.00', '22.00', '530', '1614838839');
INSERT INTO `cmf_integral_record` VALUES ('151', '39', '2', '3', '9.00', '9.00', '531', '1614838847');
INSERT INTO `cmf_integral_record` VALUES ('152', '511', '1', '4', '22.00', '0.00', '529', '1614838937');
INSERT INTO `cmf_integral_record` VALUES ('153', '507', '1', '4', '22.00', '0.00', '530', '1614838937');
INSERT INTO `cmf_integral_record` VALUES ('154', '511', '2', '3', '22.00', '22.00', '533', '1614839428');
INSERT INTO `cmf_integral_record` VALUES ('155', '507', '2', '3', '22.00', '22.00', '534', '1614839448');
INSERT INTO `cmf_integral_record` VALUES ('156', '511', '1', '4', '22.00', '0.00', '533', '1614839700');
INSERT INTO `cmf_integral_record` VALUES ('157', '507', '1', '4', '22.00', '0.00', '534', '1614839730');
INSERT INTO `cmf_integral_record` VALUES ('158', '39', '1', '4', '9.00', '9.00', '531', '1614839760');
INSERT INTO `cmf_integral_record` VALUES ('159', '511', '2', '3', '44.00', '44.00', '536', '1614841761');
INSERT INTO `cmf_integral_record` VALUES ('160', '507', '2', '3', '44.00', '44.00', '537', '1614841762');
INSERT INTO `cmf_integral_record` VALUES ('161', '511', '1', '1', '108.02', '54.01', '536', '1614842013');
INSERT INTO `cmf_integral_record` VALUES ('162', '511', '2', '3', '9.00', '9.00', '538', '1614842466');
INSERT INTO `cmf_integral_record` VALUES ('163', '511', '1', '1', '138.82', '69.41', '538', '1614842466');
INSERT INTO `cmf_integral_record` VALUES ('164', '507', '1', '4', '44.00', '44.00', '537', '1614842670');

-- ----------------------------
-- Table structure for cmf_ip_garde
-- ----------------------------
DROP TABLE IF EXISTS `cmf_ip_garde`;
CREATE TABLE `cmf_ip_garde` (
  `ip` varchar(20) NOT NULL DEFAULT 'ip地址',
  `gardeid` int(11) DEFAULT '0' COMMENT '年级id',
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_ip_garde
-- ----------------------------
INSERT INTO `cmf_ip_garde` VALUES ('1.119.152.82', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.119.169.162', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.119.33.82', '9');
INSERT INTO `cmf_ip_garde` VALUES ('1.180.72.25', '2');
INSERT INTO `cmf_ip_garde` VALUES ('1.183.155.31', '2');
INSERT INTO `cmf_ip_garde` VALUES ('1.192.212.139', '9');
INSERT INTO `cmf_ip_garde` VALUES ('1.194.128.9', '10');
INSERT INTO `cmf_ip_garde` VALUES ('1.194.22.39', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.198.31.144', '2');
INSERT INTO `cmf_ip_garde` VALUES ('1.199.192.167', '2');
INSERT INTO `cmf_ip_garde` VALUES ('1.199.231.154', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.199.73.85', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.202.249.70', '15');
INSERT INTO `cmf_ip_garde` VALUES ('1.202.7.113', '7');
INSERT INTO `cmf_ip_garde` VALUES ('1.203.117.209', '9');
INSERT INTO `cmf_ip_garde` VALUES ('1.204.12.197', '2');
INSERT INTO `cmf_ip_garde` VALUES ('1.204.202.159', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.27.107.175', '2');
INSERT INTO `cmf_ip_garde` VALUES ('1.80.117.234', '5');
INSERT INTO `cmf_ip_garde` VALUES ('1.80.126.216', '4');
INSERT INTO `cmf_ip_garde` VALUES ('1.81.32.148', '3');
INSERT INTO `cmf_ip_garde` VALUES ('1.83.169.153', '7');
INSERT INTO `cmf_ip_garde` VALUES ('1.83.3.178', '10');
INSERT INTO `cmf_ip_garde` VALUES ('1.85.216.141', '7');
INSERT INTO `cmf_ip_garde` VALUES ('1.94.143.180', '3');
INSERT INTO `cmf_ip_garde` VALUES ('101.17.100.202', '10');
INSERT INTO `cmf_ip_garde` VALUES ('101.199.100.2', '2');
INSERT INTO `cmf_ip_garde` VALUES ('101.20.72.156', '2');
INSERT INTO `cmf_ip_garde` VALUES ('101.204.120.203', '2');
INSERT INTO `cmf_ip_garde` VALUES ('101.204.28.51', '9');
INSERT INTO `cmf_ip_garde` VALUES ('101.224.16.72', '2');
INSERT INTO `cmf_ip_garde` VALUES ('101.228.169.70', '2');
INSERT INTO `cmf_ip_garde` VALUES ('101.229.59.129', '3');
INSERT INTO `cmf_ip_garde` VALUES ('101.24.163.19', '9');
INSERT INTO `cmf_ip_garde` VALUES ('101.39.230.88', '7');
INSERT INTO `cmf_ip_garde` VALUES ('101.80.247.4', '4');
INSERT INTO `cmf_ip_garde` VALUES ('101.81.61.68', '9');
INSERT INTO `cmf_ip_garde` VALUES ('101.86.110.181', '3');
INSERT INTO `cmf_ip_garde` VALUES ('101.88.151.64', '2');
INSERT INTO `cmf_ip_garde` VALUES ('101.93.26.79', '3');
INSERT INTO `cmf_ip_garde` VALUES ('103.102.193.26', '9');
INSERT INTO `cmf_ip_garde` VALUES ('103.135.160.226', '3');
INSERT INTO `cmf_ip_garde` VALUES ('103.214.85.216', '3');
INSERT INTO `cmf_ip_garde` VALUES ('103.38.226.2', '3');
INSERT INTO `cmf_ip_garde` VALUES ('103.66.51.146', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.112.251.165', '9');
INSERT INTO `cmf_ip_garde` VALUES ('106.114.75.73', '10');
INSERT INTO `cmf_ip_garde` VALUES ('106.120.127.190', '6');
INSERT INTO `cmf_ip_garde` VALUES ('106.120.233.199', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.122.215.156', '3');
INSERT INTO `cmf_ip_garde` VALUES ('106.13.5.133', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.16.169.224', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.17.42.230', '15');
INSERT INTO `cmf_ip_garde` VALUES ('106.33.21.169', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.38.40.147', '3');
INSERT INTO `cmf_ip_garde` VALUES ('106.40.188.28', '3');
INSERT INTO `cmf_ip_garde` VALUES ('106.47.4.213', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.59.200.86', '6');
INSERT INTO `cmf_ip_garde` VALUES ('106.6.174.126', '2');
INSERT INTO `cmf_ip_garde` VALUES ('106.81.231.174', '3');
INSERT INTO `cmf_ip_garde` VALUES ('110.152.105.242', '3');
INSERT INTO `cmf_ip_garde` VALUES ('110.152.241.167', '6');
INSERT INTO `cmf_ip_garde` VALUES ('110.184.23.12', '3');
INSERT INTO `cmf_ip_garde` VALUES ('110.184.29.160', '2');
INSERT INTO `cmf_ip_garde` VALUES ('110.186.68.166', '2');
INSERT INTO `cmf_ip_garde` VALUES ('110.188.92.69', '3');
INSERT INTO `cmf_ip_garde` VALUES ('110.190.156.169', '2');
INSERT INTO `cmf_ip_garde` VALUES ('110.191.216.171', '3');
INSERT INTO `cmf_ip_garde` VALUES ('110.191.217.182', '7');
INSERT INTO `cmf_ip_garde` VALUES ('110.228.233.144', '2');
INSERT INTO `cmf_ip_garde` VALUES ('110.255.189.134', '10');
INSERT INTO `cmf_ip_garde` VALUES ('110.53.240.2', '2');
INSERT INTO `cmf_ip_garde` VALUES ('110.87.29.125', '6');
INSERT INTO `cmf_ip_garde` VALUES ('110.87.7.158', '2');
INSERT INTO `cmf_ip_garde` VALUES ('110.87.71.46', '10');
INSERT INTO `cmf_ip_garde` VALUES ('110.88.33.147', '9');
INSERT INTO `cmf_ip_garde` VALUES ('111.121.106.40', '3');
INSERT INTO `cmf_ip_garde` VALUES ('111.121.107.176', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.121.11.185', '6');
INSERT INTO `cmf_ip_garde` VALUES ('111.160.23.202', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.170.200.219', '7');
INSERT INTO `cmf_ip_garde` VALUES ('111.175.35.175', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.18.133.61', '6');
INSERT INTO `cmf_ip_garde` VALUES ('111.18.46.111', '3');
INSERT INTO `cmf_ip_garde` VALUES ('111.194.142.3', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.196.245.181', '9');
INSERT INTO `cmf_ip_garde` VALUES ('111.198.101.135', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.198.33.81', '15');
INSERT INTO `cmf_ip_garde` VALUES ('111.204.142.243', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.206.116.194', '9');
INSERT INTO `cmf_ip_garde` VALUES ('111.222.222.237', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.34.159.92', '3');
INSERT INTO `cmf_ip_garde` VALUES ('111.36.169.178', '2');
INSERT INTO `cmf_ip_garde` VALUES ('111.62.81.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.10.106.35', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.10.111.245', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.10.135.56', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.117.123.139', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.117.90.150', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.20.77.67', '6');
INSERT INTO `cmf_ip_garde` VALUES ('112.224.20.203', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.224.5.235', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.229.14.125', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.231.112.123', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.232.227.87', '15');
INSERT INTO `cmf_ip_garde` VALUES ('112.243.33.232', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.25.236.82', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.250.195.127', '4');
INSERT INTO `cmf_ip_garde` VALUES ('112.26.127.2', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.26.138.66', '4');
INSERT INTO `cmf_ip_garde` VALUES ('112.26.31.130', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.32.126.235', '7');
INSERT INTO `cmf_ip_garde` VALUES ('112.32.74.239', '7');
INSERT INTO `cmf_ip_garde` VALUES ('112.32.76.248', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.4.40.92', '9');
INSERT INTO `cmf_ip_garde` VALUES ('112.4.44.99', '7');
INSERT INTO `cmf_ip_garde` VALUES ('112.41.56.47', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.43.23.162', '11');
INSERT INTO `cmf_ip_garde` VALUES ('112.48.60.189', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.49.202.133', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.64.119.230', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.65.1.123', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.65.124.50', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.65.48.125', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.66.205.148', '6');
INSERT INTO `cmf_ip_garde` VALUES ('112.7.43.217', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.81.170.2', '9');
INSERT INTO `cmf_ip_garde` VALUES ('112.9.222.213', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.94.12.10', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.94.206.166', '15');
INSERT INTO `cmf_ip_garde` VALUES ('112.94.4.168', '7');
INSERT INTO `cmf_ip_garde` VALUES ('112.95.173.128', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.96.118.4', '10');
INSERT INTO `cmf_ip_garde` VALUES ('112.96.167.22', '2');
INSERT INTO `cmf_ip_garde` VALUES ('112.96.37.209', '3');
INSERT INTO `cmf_ip_garde` VALUES ('112.97.55.198', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.102.249.111', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.104.181.170', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.106.167.178', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.108.127.1', '9');
INSERT INTO `cmf_ip_garde` VALUES ('113.108.131.30', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.109.206.116', '9');
INSERT INTO `cmf_ip_garde` VALUES ('113.110.201.77', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.111.141.75', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.111.168.109', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.111.215.247', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.111.32.102', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.115.57.131', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.116.87.29', '9');
INSERT INTO `cmf_ip_garde` VALUES ('113.118.224.70', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.118.241.100', '4');
INSERT INTO `cmf_ip_garde` VALUES ('113.118.4.183', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.119.110.80', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.119.69.170', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.128.231.178', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.128.247.214', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.128.66.244', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.129.95.245', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.132.131.238', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.134.72.68', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.142.30.92', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.16.63.27', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.16.69.9', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.17.55.107', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.200.219.50', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.200.222.113', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.204.180.82', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.205.28.169', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.240.135.253', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.240.173.166', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.240.175.73', '10');
INSERT INTO `cmf_ip_garde` VALUES ('113.245.72.188', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.246.153.38', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.247.22.82', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.247.228.202', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.247.96.43', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.249.198.63', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.250.254.75', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.47.2.164', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.47.32.158', '10');
INSERT INTO `cmf_ip_garde` VALUES ('113.47.91.69', '6');
INSERT INTO `cmf_ip_garde` VALUES ('113.57.110.56', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.57.121.137', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.57.182.121', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.57.245.12', '13');
INSERT INTO `cmf_ip_garde` VALUES ('113.57.28.254', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.65.128.141', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.65.156.208', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.65.229.90', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.66.124.174', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.66.231.6', '9');
INSERT INTO `cmf_ip_garde` VALUES ('113.68.237.108', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.69.101.169', '9');
INSERT INTO `cmf_ip_garde` VALUES ('113.70.218.122', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.76.219.168', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.78.162.233', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.78.172.129', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.87.184.77', '5');
INSERT INTO `cmf_ip_garde` VALUES ('113.87.202.136', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.87.226.7', '4');
INSERT INTO `cmf_ip_garde` VALUES ('113.88.13.77', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.88.135.23', '15');
INSERT INTO `cmf_ip_garde` VALUES ('113.88.239.76', '7');
INSERT INTO `cmf_ip_garde` VALUES ('113.89.232.206', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.90.209.140', '2');
INSERT INTO `cmf_ip_garde` VALUES ('113.91.34.122', '3');
INSERT INTO `cmf_ip_garde` VALUES ('113.99.164.131', '3');
INSERT INTO `cmf_ip_garde` VALUES ('114.101.230.32', '9');
INSERT INTO `cmf_ip_garde` VALUES ('114.102.131.152', '9');
INSERT INTO `cmf_ip_garde` VALUES ('114.135.100.31', '2');
INSERT INTO `cmf_ip_garde` VALUES ('114.221.100.130', '2');
INSERT INTO `cmf_ip_garde` VALUES ('114.224.86.200', '3');
INSERT INTO `cmf_ip_garde` VALUES ('114.226.58.252', '9');
INSERT INTO `cmf_ip_garde` VALUES ('114.241.209.30', '3');
INSERT INTO `cmf_ip_garde` VALUES ('114.242.187.61', '7');
INSERT INTO `cmf_ip_garde` VALUES ('114.243.210.98', '2');
INSERT INTO `cmf_ip_garde` VALUES ('114.244.150.125', '15');
INSERT INTO `cmf_ip_garde` VALUES ('114.249.234.44', '2');
INSERT INTO `cmf_ip_garde` VALUES ('114.250.156.11', '13');
INSERT INTO `cmf_ip_garde` VALUES ('114.250.80.225', '3');
INSERT INTO `cmf_ip_garde` VALUES ('114.255.239.245', '3');
INSERT INTO `cmf_ip_garde` VALUES ('114.88.127.166', '10');
INSERT INTO `cmf_ip_garde` VALUES ('114.88.163.232', '7');
INSERT INTO `cmf_ip_garde` VALUES ('114.88.171.249', '7');
INSERT INTO `cmf_ip_garde` VALUES ('114.95.229.17', '2');
INSERT INTO `cmf_ip_garde` VALUES ('115.196.227.19', '3');
INSERT INTO `cmf_ip_garde` VALUES ('115.197.27.164', '4');
INSERT INTO `cmf_ip_garde` VALUES ('115.198.205.238', '2');
INSERT INTO `cmf_ip_garde` VALUES ('115.200.214.224', '10');
INSERT INTO `cmf_ip_garde` VALUES ('115.200.232.32', '3');
INSERT INTO `cmf_ip_garde` VALUES ('115.205.217.137', '3');
INSERT INTO `cmf_ip_garde` VALUES ('115.206.144.16', '5');
INSERT INTO `cmf_ip_garde` VALUES ('115.227.112.92', '2');
INSERT INTO `cmf_ip_garde` VALUES ('115.227.197.236', '7');
INSERT INTO `cmf_ip_garde` VALUES ('115.238.88.2', '9');
INSERT INTO `cmf_ip_garde` VALUES ('115.32.160.254', '10');
INSERT INTO `cmf_ip_garde` VALUES ('115.49.127.233', '15');
INSERT INTO `cmf_ip_garde` VALUES ('115.51.123.181', '3');
INSERT INTO `cmf_ip_garde` VALUES ('115.53.82.135', '2');
INSERT INTO `cmf_ip_garde` VALUES ('115.60.147.251', '9');
INSERT INTO `cmf_ip_garde` VALUES ('115.60.149.168', '3');
INSERT INTO `cmf_ip_garde` VALUES ('115.60.51.234', '5');
INSERT INTO `cmf_ip_garde` VALUES ('115.60.60.176', '9');
INSERT INTO `cmf_ip_garde` VALUES ('116.21.15.184', '5');
INSERT INTO `cmf_ip_garde` VALUES ('116.22.135.105', '7');
INSERT INTO `cmf_ip_garde` VALUES ('116.228.143.58', '2');
INSERT INTO `cmf_ip_garde` VALUES ('116.228.188.222', '4');
INSERT INTO `cmf_ip_garde` VALUES ('116.230.62.49', '15');
INSERT INTO `cmf_ip_garde` VALUES ('116.231.28.154', '3');
INSERT INTO `cmf_ip_garde` VALUES ('116.238.150.104', '2');
INSERT INTO `cmf_ip_garde` VALUES ('116.24.64.159', '11');
INSERT INTO `cmf_ip_garde` VALUES ('116.24.65.153', '2');
INSERT INTO `cmf_ip_garde` VALUES ('116.25.251.129', '3');
INSERT INTO `cmf_ip_garde` VALUES ('116.253.98.77', '3');
INSERT INTO `cmf_ip_garde` VALUES ('116.28.157.112', '3');
INSERT INTO `cmf_ip_garde` VALUES ('116.30.198.222', '3');
INSERT INTO `cmf_ip_garde` VALUES ('116.30.219.70', '2');
INSERT INTO `cmf_ip_garde` VALUES ('116.6.195.86', '3');
INSERT INTO `cmf_ip_garde` VALUES ('116.6.203.2', '2');
INSERT INTO `cmf_ip_garde` VALUES ('116.9.247.105', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.107.152.50', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.131.37.134', '9');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.28.107', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.30.114', '15');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.38.243', '10');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.44.188', '15');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.50.131', '15');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.50.139', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.65.121', '4');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.75.150', '9');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.78.26', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.79.59', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.136.86.25', '10');
INSERT INTO `cmf_ip_garde` VALUES ('117.139.198.223', '9');
INSERT INTO `cmf_ip_garde` VALUES ('117.151.251.99', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.159.88.36', '3');
INSERT INTO `cmf_ip_garde` VALUES ('117.160.134.154', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.165.40.74', '15');
INSERT INTO `cmf_ip_garde` VALUES ('117.173.226.225', '7');
INSERT INTO `cmf_ip_garde` VALUES ('117.176.229.86', '9');
INSERT INTO `cmf_ip_garde` VALUES ('117.176.231.99', '3');
INSERT INTO `cmf_ip_garde` VALUES ('117.183.166.70', '10');
INSERT INTO `cmf_ip_garde` VALUES ('117.188.42.142', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.22.144.87', '7');
INSERT INTO `cmf_ip_garde` VALUES ('117.22.182.47', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.28.132.159', '6');
INSERT INTO `cmf_ip_garde` VALUES ('117.28.206.142', '9');
INSERT INTO `cmf_ip_garde` VALUES ('117.29.126.170', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.37.224.86', '10');
INSERT INTO `cmf_ip_garde` VALUES ('117.37.58.115', '15');
INSERT INTO `cmf_ip_garde` VALUES ('117.43.162.157', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.60.16.72', '3');
INSERT INTO `cmf_ip_garde` VALUES ('117.61.0.204', '3');
INSERT INTO `cmf_ip_garde` VALUES ('117.61.18.171', '3');
INSERT INTO `cmf_ip_garde` VALUES ('117.67.156.38', '9');
INSERT INTO `cmf_ip_garde` VALUES ('117.71.53.38', '15');
INSERT INTO `cmf_ip_garde` VALUES ('117.81.39.154', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.85.39.72', '5');
INSERT INTO `cmf_ip_garde` VALUES ('117.85.97.76', '7');
INSERT INTO `cmf_ip_garde` VALUES ('117.89.133.18', '2');
INSERT INTO `cmf_ip_garde` VALUES ('117.89.198.145', '3');
INSERT INTO `cmf_ip_garde` VALUES ('118.112.112.242', '2');
INSERT INTO `cmf_ip_garde` VALUES ('118.112.73.66', '3');
INSERT INTO `cmf_ip_garde` VALUES ('118.113.76.126', '3');
INSERT INTO `cmf_ip_garde` VALUES ('118.113.96.3', '3');
INSERT INTO `cmf_ip_garde` VALUES ('118.114.189.28', '9');
INSERT INTO `cmf_ip_garde` VALUES ('118.114.245.21', '2');
INSERT INTO `cmf_ip_garde` VALUES ('118.212.210.117', '5');
INSERT INTO `cmf_ip_garde` VALUES ('119.123.133.82', '2');
INSERT INTO `cmf_ip_garde` VALUES ('119.123.68.144', '9');
INSERT INTO `cmf_ip_garde` VALUES ('119.131.182.111', '10');
INSERT INTO `cmf_ip_garde` VALUES ('119.139.196.245', '3');
INSERT INTO `cmf_ip_garde` VALUES ('119.163.197.220', '9');
INSERT INTO `cmf_ip_garde` VALUES ('119.166.13.81', '2');
INSERT INTO `cmf_ip_garde` VALUES ('119.167.47.120', '2');
INSERT INTO `cmf_ip_garde` VALUES ('119.179.52.13', '6');
INSERT INTO `cmf_ip_garde` VALUES ('119.183.163.223', '2');
INSERT INTO `cmf_ip_garde` VALUES ('119.183.192.35', '3');
INSERT INTO `cmf_ip_garde` VALUES ('119.79.228.23', '3');
INSERT INTO `cmf_ip_garde` VALUES ('119.85.101.176', '2');
INSERT INTO `cmf_ip_garde` VALUES ('119.86.23.196', '3');
INSERT INTO `cmf_ip_garde` VALUES ('119.97.197.5', '2');
INSERT INTO `cmf_ip_garde` VALUES ('119.97.242.46', '15');
INSERT INTO `cmf_ip_garde` VALUES ('119.98.220.2', '6');
INSERT INTO `cmf_ip_garde` VALUES ('119.98.220.73', '3');
INSERT INTO `cmf_ip_garde` VALUES ('119.98.223.239', '10');
INSERT INTO `cmf_ip_garde` VALUES ('120.192.6.42', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.204.76.171', '3');
INSERT INTO `cmf_ip_garde` VALUES ('120.224.52.80', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.228.234.85', '3');
INSERT INTO `cmf_ip_garde` VALUES ('120.229.31.90', '15');
INSERT INTO `cmf_ip_garde` VALUES ('120.229.70.226', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.230.137.101', '15');
INSERT INTO `cmf_ip_garde` VALUES ('120.235.168.153', '15');
INSERT INTO `cmf_ip_garde` VALUES ('120.235.224.25', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.237.160.2', '9');
INSERT INTO `cmf_ip_garde` VALUES ('120.239.183.113', '9');
INSERT INTO `cmf_ip_garde` VALUES ('120.244.142.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.244.216.222', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.245.102.105', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.245.102.255', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.245.67.52', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.253.220.184', '15');
INSERT INTO `cmf_ip_garde` VALUES ('120.36.225.151', '7');
INSERT INTO `cmf_ip_garde` VALUES ('120.36.3.41', '15');
INSERT INTO `cmf_ip_garde` VALUES ('120.36.38.99', '2');
INSERT INTO `cmf_ip_garde` VALUES ('120.41.162.114', '2');
INSERT INTO `cmf_ip_garde` VALUES ('121.12.147.251', '9');
INSERT INTO `cmf_ip_garde` VALUES ('121.13.108.41', '2');
INSERT INTO `cmf_ip_garde` VALUES ('121.13.226.98', '3');
INSERT INTO `cmf_ip_garde` VALUES ('121.13.42.54', '5');
INSERT INTO `cmf_ip_garde` VALUES ('121.15.12.211', '2');
INSERT INTO `cmf_ip_garde` VALUES ('121.19.69.245', '6');
INSERT INTO `cmf_ip_garde` VALUES ('121.193.178.54', '9');
INSERT INTO `cmf_ip_garde` VALUES ('121.204.50.145', '6');
INSERT INTO `cmf_ip_garde` VALUES ('121.207.215.64', '3');
INSERT INTO `cmf_ip_garde` VALUES ('121.237.185.42', '2');
INSERT INTO `cmf_ip_garde` VALUES ('121.32.98.18', '2');
INSERT INTO `cmf_ip_garde` VALUES ('121.33.144.205', '3');
INSERT INTO `cmf_ip_garde` VALUES ('121.57.252.139', '9');
INSERT INTO `cmf_ip_garde` VALUES ('121.60.40.126', '3');
INSERT INTO `cmf_ip_garde` VALUES ('121.69.39.70', '2');
INSERT INTO `cmf_ip_garde` VALUES ('121.69.77.50', '9');
INSERT INTO `cmf_ip_garde` VALUES ('122.140.245.186', '3');
INSERT INTO `cmf_ip_garde` VALUES ('122.194.184.9', '3');
INSERT INTO `cmf_ip_garde` VALUES ('122.224.247.218', '6');
INSERT INTO `cmf_ip_garde` VALUES ('122.227.29.235', '2');
INSERT INTO `cmf_ip_garde` VALUES ('122.231.246.53', '9');
INSERT INTO `cmf_ip_garde` VALUES ('122.233.134.20', '9');
INSERT INTO `cmf_ip_garde` VALUES ('122.5.84.110', '3');
INSERT INTO `cmf_ip_garde` VALUES ('122.96.30.1', '3');
INSERT INTO `cmf_ip_garde` VALUES ('123.112.22.221', '15');
INSERT INTO `cmf_ip_garde` VALUES ('123.117.160.142', '3');
INSERT INTO `cmf_ip_garde` VALUES ('123.12.218.139', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.120.199.234', '3');
INSERT INTO `cmf_ip_garde` VALUES ('123.122.88.162', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.123.216.22', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.123.220.216', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.124.21.163', '10');
INSERT INTO `cmf_ip_garde` VALUES ('123.131.95.69', '10');
INSERT INTO `cmf_ip_garde` VALUES ('123.135.81.231', '11');
INSERT INTO `cmf_ip_garde` VALUES ('123.138.150.5', '15');
INSERT INTO `cmf_ip_garde` VALUES ('123.139.171.252', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.139.28.160', '10');
INSERT INTO `cmf_ip_garde` VALUES ('123.139.38.34', '3');
INSERT INTO `cmf_ip_garde` VALUES ('123.160.166.142', '15');
INSERT INTO `cmf_ip_garde` VALUES ('123.168.220.134', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.168.88.92', '4');
INSERT INTO `cmf_ip_garde` VALUES ('123.181.203.133', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.185.200.224', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.185.77.87', '5');
INSERT INTO `cmf_ip_garde` VALUES ('123.191.156.10', '3');
INSERT INTO `cmf_ip_garde` VALUES ('123.196.130.109', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.232.126.185', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.232.187.124', '4');
INSERT INTO `cmf_ip_garde` VALUES ('123.232.96.37', '10');
INSERT INTO `cmf_ip_garde` VALUES ('123.233.120.51', '2');
INSERT INTO `cmf_ip_garde` VALUES ('123.235.48.146', '10');
INSERT INTO `cmf_ip_garde` VALUES ('124.117.91.241', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.118.155.121', '10');
INSERT INTO `cmf_ip_garde` VALUES ('124.126.148.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.130.165.77', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.133.23.45', '4');
INSERT INTO `cmf_ip_garde` VALUES ('124.133.43.122', '3');
INSERT INTO `cmf_ip_garde` VALUES ('124.160.214.116', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.200.38.42', '9');
INSERT INTO `cmf_ip_garde` VALUES ('124.202.197.6', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.204.62.130', '3');
INSERT INTO `cmf_ip_garde` VALUES ('124.205.133.18', '3');
INSERT INTO `cmf_ip_garde` VALUES ('124.228.95.247', '3');
INSERT INTO `cmf_ip_garde` VALUES ('124.234.202.107', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.237.174.142', '4');
INSERT INTO `cmf_ip_garde` VALUES ('124.238.223.113', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.239.172.189', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.64.16.69', '5');
INSERT INTO `cmf_ip_garde` VALUES ('124.64.17.182', '3');
INSERT INTO `cmf_ip_garde` VALUES ('124.64.19.178', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.65.8.189', '3');
INSERT INTO `cmf_ip_garde` VALUES ('124.72.36.26', '7');
INSERT INTO `cmf_ip_garde` VALUES ('124.76.145.32', '2');
INSERT INTO `cmf_ip_garde` VALUES ('124.79.219.36', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.119.86.55', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.123.94.59', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.211.72.93', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.33.160.137', '3');
INSERT INTO `cmf_ip_garde` VALUES ('125.33.193.187', '6');
INSERT INTO `cmf_ip_garde` VALUES ('125.33.196.90', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.33.197.155', '10');
INSERT INTO `cmf_ip_garde` VALUES ('125.33.197.171', '7');
INSERT INTO `cmf_ip_garde` VALUES ('125.33.198.159', '10');
INSERT INTO `cmf_ip_garde` VALUES ('125.34.5.98', '3');
INSERT INTO `cmf_ip_garde` VALUES ('125.35.89.186', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.37.126.82', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.37.188.67', '15');
INSERT INTO `cmf_ip_garde` VALUES ('125.45.167.253', '15');
INSERT INTO `cmf_ip_garde` VALUES ('125.46.12.154', '3');
INSERT INTO `cmf_ip_garde` VALUES ('125.46.74.3', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.47.85.225', '10');
INSERT INTO `cmf_ip_garde` VALUES ('125.69.14.104', '3');
INSERT INTO `cmf_ip_garde` VALUES ('125.70.194.157', '9');
INSERT INTO `cmf_ip_garde` VALUES ('125.73.82.3', '4');
INSERT INTO `cmf_ip_garde` VALUES ('125.74.115.39', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.78.205.75', '2');
INSERT INTO `cmf_ip_garde` VALUES ('125.82.243.117', '9');
INSERT INTO `cmf_ip_garde` VALUES ('125.84.158.77', '15');
INSERT INTO `cmf_ip_garde` VALUES ('125.84.182.7', '6');
INSERT INTO `cmf_ip_garde` VALUES ('125.91.237.59', '10');
INSERT INTO `cmf_ip_garde` VALUES ('127.0.0.1', '4');
INSERT INTO `cmf_ip_garde` VALUES ('139.210.135.123', '2');
INSERT INTO `cmf_ip_garde` VALUES ('14.104.203.203', '2');
INSERT INTO `cmf_ip_garde` VALUES ('14.105.186.152', '2');
INSERT INTO `cmf_ip_garde` VALUES ('14.121.144.238', '3');
INSERT INTO `cmf_ip_garde` VALUES ('14.127.81.113', '2');
INSERT INTO `cmf_ip_garde` VALUES ('14.145.145.149', '15');
INSERT INTO `cmf_ip_garde` VALUES ('14.155.112.132', '15');
INSERT INTO `cmf_ip_garde` VALUES ('14.156.24.55', '2');
INSERT INTO `cmf_ip_garde` VALUES ('14.18.234.140', '7');
INSERT INTO `cmf_ip_garde` VALUES ('14.204.11.157', '4');
INSERT INTO `cmf_ip_garde` VALUES ('14.222.47.100', '2');
INSERT INTO `cmf_ip_garde` VALUES ('14.23.92.186', '9');
INSERT INTO `cmf_ip_garde` VALUES ('14.24.144.156', '10');
INSERT INTO `cmf_ip_garde` VALUES ('140.206.114.206', '6');
INSERT INTO `cmf_ip_garde` VALUES ('140.207.90.254', '4');
INSERT INTO `cmf_ip_garde` VALUES ('141.164.58.230', '9');
INSERT INTO `cmf_ip_garde` VALUES ('144.123.36.206', '9');
INSERT INTO `cmf_ip_garde` VALUES ('144.255.138.77', '3');
INSERT INTO `cmf_ip_garde` VALUES ('149.129.69.252', '2');
INSERT INTO `cmf_ip_garde` VALUES ('158.247.199.90', '15');
INSERT INTO `cmf_ip_garde` VALUES ('163.125.98.15', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.109.252.162', '2');
INSERT INTO `cmf_ip_garde` VALUES ('171.113.240.167', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.117.201.248', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.117.40.8', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.117.45.66', '2');
INSERT INTO `cmf_ip_garde` VALUES ('171.127.149.199', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.15.109.102', '7');
INSERT INTO `cmf_ip_garde` VALUES ('171.15.16.189', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.15.164.141', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.212.9.56', '15');
INSERT INTO `cmf_ip_garde` VALUES ('171.214.164.64', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.214.218.18', '2');
INSERT INTO `cmf_ip_garde` VALUES ('171.215.206.76', '10');
INSERT INTO `cmf_ip_garde` VALUES ('171.221.219.50', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.221.238.16', '2');
INSERT INTO `cmf_ip_garde` VALUES ('171.221.247.41', '2');
INSERT INTO `cmf_ip_garde` VALUES ('171.221.254.254', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.34.169.122', '3');
INSERT INTO `cmf_ip_garde` VALUES ('171.34.178.167', '9');
INSERT INTO `cmf_ip_garde` VALUES ('171.43.139.49', '15');
INSERT INTO `cmf_ip_garde` VALUES ('171.43.167.221', '9');
INSERT INTO `cmf_ip_garde` VALUES ('171.43.252.35', '15');
INSERT INTO `cmf_ip_garde` VALUES ('171.8.129.142', '10');
INSERT INTO `cmf_ip_garde` VALUES ('171.83.3.70', '2');
INSERT INTO `cmf_ip_garde` VALUES ('171.83.99.8', '9');
INSERT INTO `cmf_ip_garde` VALUES ('171.88.55.211', '9');
INSERT INTO `cmf_ip_garde` VALUES ('171.93.88.154', '2');
INSERT INTO `cmf_ip_garde` VALUES ('172.93.42.186', '2');
INSERT INTO `cmf_ip_garde` VALUES ('175.0.54.53', '3');
INSERT INTO `cmf_ip_garde` VALUES ('175.0.56.108', '10');
INSERT INTO `cmf_ip_garde` VALUES ('175.10.146.27', '2');
INSERT INTO `cmf_ip_garde` VALUES ('175.11.216.207', '2');
INSERT INTO `cmf_ip_garde` VALUES ('175.11.64.162', '9');
INSERT INTO `cmf_ip_garde` VALUES ('175.13.102.78', '2');
INSERT INTO `cmf_ip_garde` VALUES ('175.168.133.217', '6');
INSERT INTO `cmf_ip_garde` VALUES ('175.19.143.94', '2');
INSERT INTO `cmf_ip_garde` VALUES ('175.19.209.242', '2');
INSERT INTO `cmf_ip_garde` VALUES ('175.190.122.169', '7');
INSERT INTO `cmf_ip_garde` VALUES ('175.9.123.168', '10');
INSERT INTO `cmf_ip_garde` VALUES ('180.109.111.54', '2');
INSERT INTO `cmf_ip_garde` VALUES ('180.109.20.46', '7');
INSERT INTO `cmf_ip_garde` VALUES ('180.111.218.1', '2');
INSERT INTO `cmf_ip_garde` VALUES ('180.111.34.93', '9');
INSERT INTO `cmf_ip_garde` VALUES ('180.113.62.46', '10');
INSERT INTO `cmf_ip_garde` VALUES ('180.130.2.241', '4');
INSERT INTO `cmf_ip_garde` VALUES ('180.140.66.159', '2');
INSERT INTO `cmf_ip_garde` VALUES ('180.165.228.40', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.165.230.42', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.167.193.50', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.167.219.186', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.167.31.18', '2');
INSERT INTO `cmf_ip_garde` VALUES ('180.169.101.3', '15');
INSERT INTO `cmf_ip_garde` VALUES ('180.169.146.114', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.169.254.2', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.174.209.171', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.175.203.193', '9');
INSERT INTO `cmf_ip_garde` VALUES ('180.213.5.202', '15');
INSERT INTO `cmf_ip_garde` VALUES ('180.91.178.241', '3');
INSERT INTO `cmf_ip_garde` VALUES ('180.96.28.100', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.101.60.22', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.101.61.187', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.110.20.225', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.119.37.96', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.134.218.7', '9');
INSERT INTO `cmf_ip_garde` VALUES ('182.135.64.241', '10');
INSERT INTO `cmf_ip_garde` VALUES ('182.138.241.182', '3');
INSERT INTO `cmf_ip_garde` VALUES ('182.148.123.179', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.148.53.137', '10');
INSERT INTO `cmf_ip_garde` VALUES ('182.149.73.59', '10');
INSERT INTO `cmf_ip_garde` VALUES ('182.150.112.220', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.150.20.6', '15');
INSERT INTO `cmf_ip_garde` VALUES ('182.150.28.226', '3');
INSERT INTO `cmf_ip_garde` VALUES ('182.150.53.132', '15');
INSERT INTO `cmf_ip_garde` VALUES ('182.200.179.154', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.200.7.193', '3');
INSERT INTO `cmf_ip_garde` VALUES ('182.47.184.81', '2');
INSERT INTO `cmf_ip_garde` VALUES ('182.50.118.228', '3');
INSERT INTO `cmf_ip_garde` VALUES ('182.85.214.35', '10');
INSERT INTO `cmf_ip_garde` VALUES ('182.97.174.208', '10');
INSERT INTO `cmf_ip_garde` VALUES ('183.129.254.162', '6');
INSERT INTO `cmf_ip_garde` VALUES ('183.129.61.57', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.134.133.186', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.134.160.133', '7');
INSERT INTO `cmf_ip_garde` VALUES ('183.14.24.188', '15');
INSERT INTO `cmf_ip_garde` VALUES ('183.14.77.113', '15');
INSERT INTO `cmf_ip_garde` VALUES ('183.15.178.120', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.15.178.207', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.158.73.240', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.159.183.227', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.160.238.162', '6');
INSERT INTO `cmf_ip_garde` VALUES ('183.160.26.25', '15');
INSERT INTO `cmf_ip_garde` VALUES ('183.17.124.40', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.17.125.58', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.17.228.22', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.17.228.78', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.184.184.44', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.191.3.43', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.192.87.77', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.193.116.176', '5');
INSERT INTO `cmf_ip_garde` VALUES ('183.195.74.250', '9');
INSERT INTO `cmf_ip_garde` VALUES ('183.196.84.249', '9');
INSERT INTO `cmf_ip_garde` VALUES ('183.199.185.7', '6');
INSERT INTO `cmf_ip_garde` VALUES ('183.200.102.160', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.200.132.117', '6');
INSERT INTO `cmf_ip_garde` VALUES ('183.200.70.44', '10');
INSERT INTO `cmf_ip_garde` VALUES ('183.202.109.40', '10');
INSERT INTO `cmf_ip_garde` VALUES ('183.211.169.152', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.213.181.210', '4');
INSERT INTO `cmf_ip_garde` VALUES ('183.213.78.123', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.223.222.61', '9');
INSERT INTO `cmf_ip_garde` VALUES ('183.224.225.221', '15');
INSERT INTO `cmf_ip_garde` VALUES ('183.226.206.174', '9');
INSERT INTO `cmf_ip_garde` VALUES ('183.230.8.19', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.236.177.171', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.236.230.229', '10');
INSERT INTO `cmf_ip_garde` VALUES ('183.24.90.174', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.242.4.146', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.26.112.158', '7');
INSERT INTO `cmf_ip_garde` VALUES ('183.28.31.188', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.3.151.42', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.30.179.207', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.31.94.139', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.42.47.128', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.47.50.44', '2');
INSERT INTO `cmf_ip_garde` VALUES ('183.52.208.246', '15');
INSERT INTO `cmf_ip_garde` VALUES ('183.6.127.183', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.62.192.183', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.66.214.218', '9');
INSERT INTO `cmf_ip_garde` VALUES ('183.66.216.98', '3');
INSERT INTO `cmf_ip_garde` VALUES ('183.8.12.89', '3');
INSERT INTO `cmf_ip_garde` VALUES ('202.101.234.88', '2');
INSERT INTO `cmf_ip_garde` VALUES ('202.103.208.66', '9');
INSERT INTO `cmf_ip_garde` VALUES ('202.111.152.10', '10');
INSERT INTO `cmf_ip_garde` VALUES ('203.112.82.1', '7');
INSERT INTO `cmf_ip_garde` VALUES ('203.190.99.49', '10');
INSERT INTO `cmf_ip_garde` VALUES ('203.80.171.249', '2');
INSERT INTO `cmf_ip_garde` VALUES ('203.86.25.1', '3');
INSERT INTO `cmf_ip_garde` VALUES ('210.12.194.136', '6');
INSERT INTO `cmf_ip_garde` VALUES ('210.21.62.108', '2');
INSERT INTO `cmf_ip_garde` VALUES ('211.142.128.229', '9');
INSERT INTO `cmf_ip_garde` VALUES ('211.142.86.252', '5');
INSERT INTO `cmf_ip_garde` VALUES ('211.150.95.50', '2');
INSERT INTO `cmf_ip_garde` VALUES ('211.160.73.253', '9');
INSERT INTO `cmf_ip_garde` VALUES ('218.107.200.163', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.13.14.209', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.16.129.84', '9');
INSERT INTO `cmf_ip_garde` VALUES ('218.17.112.191', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.17.21.118', '4');
INSERT INTO `cmf_ip_garde` VALUES ('218.19.138.131', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.2.97.91', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.203.152.142', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.22.63.14', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.28.104.230', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.29.152.202', '9');
INSERT INTO `cmf_ip_garde` VALUES ('218.4.248.226', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.56.58.82', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.57.175.63', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.57.233.147', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.58.60.38', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.58.76.22', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.59.136.235', '2');
INSERT INTO `cmf_ip_garde` VALUES ('218.69.51.209', '6');
INSERT INTO `cmf_ip_garde` VALUES ('218.82.145.44', '3');
INSERT INTO `cmf_ip_garde` VALUES ('218.88.142.177', '9');
INSERT INTO `cmf_ip_garde` VALUES ('218.88.24.215', '9');
INSERT INTO `cmf_ip_garde` VALUES ('218.89.128.246', '7');
INSERT INTO `cmf_ip_garde` VALUES ('218.9.159.167', '10');
INSERT INTO `cmf_ip_garde` VALUES ('219.137.141.72', '7');
INSERT INTO `cmf_ip_garde` VALUES ('219.141.55.94', '15');
INSERT INTO `cmf_ip_garde` VALUES ('219.142.103.232', '3');
INSERT INTO `cmf_ip_garde` VALUES ('219.142.14.162', '9');
INSERT INTO `cmf_ip_garde` VALUES ('219.142.146.22', '10');
INSERT INTO `cmf_ip_garde` VALUES ('219.142.253.114', '9');
INSERT INTO `cmf_ip_garde` VALUES ('219.144.189.240', '3');
INSERT INTO `cmf_ip_garde` VALUES ('219.152.152.239', '9');
INSERT INTO `cmf_ip_garde` VALUES ('219.155.84.15', '9');
INSERT INTO `cmf_ip_garde` VALUES ('219.157.255.88', '2');
INSERT INTO `cmf_ip_garde` VALUES ('219.239.110.14', '15');
INSERT INTO `cmf_ip_garde` VALUES ('220.115.189.203', '3');
INSERT INTO `cmf_ip_garde` VALUES ('220.163.53.72', '9');
INSERT INTO `cmf_ip_garde` VALUES ('220.172.186.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('220.172.31.207', '7');
INSERT INTO `cmf_ip_garde` VALUES ('220.175.71.131', '7');
INSERT INTO `cmf_ip_garde` VALUES ('220.176.42.4', '9');
INSERT INTO `cmf_ip_garde` VALUES ('220.194.144.206', '9');
INSERT INTO `cmf_ip_garde` VALUES ('220.197.188.43', '2');
INSERT INTO `cmf_ip_garde` VALUES ('220.200.57.102', '3');
INSERT INTO `cmf_ip_garde` VALUES ('220.200.58.164', '3');
INSERT INTO `cmf_ip_garde` VALUES ('220.202.233.78', '3');
INSERT INTO `cmf_ip_garde` VALUES ('220.248.56.50', '3');
INSERT INTO `cmf_ip_garde` VALUES ('220.249.88.235', '2');
INSERT INTO `cmf_ip_garde` VALUES ('220.249.90.225', '3');
INSERT INTO `cmf_ip_garde` VALUES ('221.0.238.170', '3');
INSERT INTO `cmf_ip_garde` VALUES ('221.1.149.176', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.1.149.219', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.176.140.211', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.192.180.109', '3');
INSERT INTO `cmf_ip_garde` VALUES ('221.214.59.82', '3');
INSERT INTO `cmf_ip_garde` VALUES ('221.214.61.166', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.217.59.146', '6');
INSERT INTO `cmf_ip_garde` VALUES ('221.217.89.218', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.217.90.134', '15');
INSERT INTO `cmf_ip_garde` VALUES ('221.221.137.142', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.221.151.176', '15');
INSERT INTO `cmf_ip_garde` VALUES ('221.221.160.30', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.224.37.162', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.226.105.122', '6');
INSERT INTO `cmf_ip_garde` VALUES ('221.226.125.133', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.227.185.39', '6');
INSERT INTO `cmf_ip_garde` VALUES ('221.234.236.229', '9');
INSERT INTO `cmf_ip_garde` VALUES ('221.239.137.138', '9');
INSERT INTO `cmf_ip_garde` VALUES ('221.4.210.164', '2');
INSERT INTO `cmf_ip_garde` VALUES ('221.8.23.10', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.128.103.82', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.129.129.218', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.129.51.148', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.129.51.17', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.129.55.49', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.129.56.44', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.130.241.90', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.132.61.161', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.134.12.158', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.134.242.208', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.134.87.66', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.138.222.163', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.143.23.42', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.161.64.114', '15');
INSERT INTO `cmf_ip_garde` VALUES ('222.173.37.162', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.173.38.98', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.173.59.2', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.175.118.94', '7');
INSERT INTO `cmf_ip_garde` VALUES ('222.190.105.75', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.190.61.127', '15');
INSERT INTO `cmf_ip_garde` VALUES ('222.209.91.59', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.211.204.143', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.211.212.64', '4');
INSERT INTO `cmf_ip_garde` VALUES ('222.218.253.166', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.221.156.36', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.240.116.83', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.244.196.32', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.244.93.144', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.247.143.225', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.247.218.16', '4');
INSERT INTO `cmf_ip_garde` VALUES ('222.247.37.166', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.249.173.12', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.35.145.24', '5');
INSERT INTO `cmf_ip_garde` VALUES ('222.37.230.188', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.64.182.60', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.65.212.192', '6');
INSERT INTO `cmf_ip_garde` VALUES ('222.69.142.199', '9');
INSERT INTO `cmf_ip_garde` VALUES ('222.74.4.66', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.76.112.41', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.79.37.74', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.83.134.224', '3');
INSERT INTO `cmf_ip_garde` VALUES ('222.85.29.65', '15');
INSERT INTO `cmf_ip_garde` VALUES ('222.90.57.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('222.90.60.159', '15');
INSERT INTO `cmf_ip_garde` VALUES ('222.91.199.195', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.100.215.129', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.102.69.76', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.103.190', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.105.52', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.111.81', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.148.115', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.159.248', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.175.132', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.175.160', '4');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.29.216', '5');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.39.202', '7');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.39.6', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.45.193', '15');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.64.134', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.104.96.90', '15');
INSERT INTO `cmf_ip_garde` VALUES ('223.11.120.149', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.11.217.65', '9');
INSERT INTO `cmf_ip_garde` VALUES ('223.11.38.187', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.167.94.10', '9');
INSERT INTO `cmf_ip_garde` VALUES ('223.199.163.74', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.21.157.11', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.70.141.138', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.70.242.6', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.71.166.85', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.72.74.47', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.74.47.169', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.85.203.162', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.86.26.10', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.88.37.120', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.88.59.78', '4');
INSERT INTO `cmf_ip_garde` VALUES ('223.90.40.118', '7');
INSERT INTO `cmf_ip_garde` VALUES ('223.90.40.143', '7');
INSERT INTO `cmf_ip_garde` VALUES ('223.91.4.191', '6');
INSERT INTO `cmf_ip_garde` VALUES ('223.99.161.234', '3');
INSERT INTO `cmf_ip_garde` VALUES ('223.99.166.194', '2');
INSERT INTO `cmf_ip_garde` VALUES ('223.99.217.214', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.10.251.130', '10');
INSERT INTO `cmf_ip_garde` VALUES ('27.115.107.86', '10');
INSERT INTO `cmf_ip_garde` VALUES ('27.12.184.121', '7');
INSERT INTO `cmf_ip_garde` VALUES ('27.153.133.165', '11');
INSERT INTO `cmf_ip_garde` VALUES ('27.155.168.100', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.17.107.250', '7');
INSERT INTO `cmf_ip_garde` VALUES ('27.17.164.188', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.17.229.232', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.17.87.123', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.184.143.185', '3');
INSERT INTO `cmf_ip_garde` VALUES ('27.184.189.72', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.187.252.139', '6');
INSERT INTO `cmf_ip_garde` VALUES ('27.20.243.229', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.201.182.112', '4');
INSERT INTO `cmf_ip_garde` VALUES ('27.201.89.249', '3');
INSERT INTO `cmf_ip_garde` VALUES ('27.218.139.200', '3');
INSERT INTO `cmf_ip_garde` VALUES ('27.22.62.170', '10');
INSERT INTO `cmf_ip_garde` VALUES ('27.221.49.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.227.9.242', '3');
INSERT INTO `cmf_ip_garde` VALUES ('27.29.50.86', '3');
INSERT INTO `cmf_ip_garde` VALUES ('27.38.112.27', '10');
INSERT INTO `cmf_ip_garde` VALUES ('27.38.252.245', '3');
INSERT INTO `cmf_ip_garde` VALUES ('27.38.97.74', '2');
INSERT INTO `cmf_ip_garde` VALUES ('27.46.13.199', '7');
INSERT INTO `cmf_ip_garde` VALUES ('3.34.178.113', '2');
INSERT INTO `cmf_ip_garde` VALUES ('36.112.12.189', '3');
INSERT INTO `cmf_ip_garde` VALUES ('36.112.173.253', '3');
INSERT INTO `cmf_ip_garde` VALUES ('36.113.11.33', '7');
INSERT INTO `cmf_ip_garde` VALUES ('36.113.34.217', '2');
INSERT INTO `cmf_ip_garde` VALUES ('36.152.160.66', '15');
INSERT INTO `cmf_ip_garde` VALUES ('36.157.213.48', '2');
INSERT INTO `cmf_ip_garde` VALUES ('36.26.41.154', '2');
INSERT INTO `cmf_ip_garde` VALUES ('36.46.0.171', '5');
INSERT INTO `cmf_ip_garde` VALUES ('36.46.87.213', '3');
INSERT INTO `cmf_ip_garde` VALUES ('36.48.125.5', '3');
INSERT INTO `cmf_ip_garde` VALUES ('36.48.59.90', '9');
INSERT INTO `cmf_ip_garde` VALUES ('36.5.147.2', '3');
INSERT INTO `cmf_ip_garde` VALUES ('36.57.167.24', '7');
INSERT INTO `cmf_ip_garde` VALUES ('36.63.71.188', '5');
INSERT INTO `cmf_ip_garde` VALUES ('36.7.136.208', '3');
INSERT INTO `cmf_ip_garde` VALUES ('36.7.152.182', '2');
INSERT INTO `cmf_ip_garde` VALUES ('36.98.204.171', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.128.15.243', '7');
INSERT INTO `cmf_ip_garde` VALUES ('39.128.16.111', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.130.118.59', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.149.15.47', '3');
INSERT INTO `cmf_ip_garde` VALUES ('39.155.165.190', '3');
INSERT INTO `cmf_ip_garde` VALUES ('39.164.105.102', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.185.202.79', '15');
INSERT INTO `cmf_ip_garde` VALUES ('39.190.16.116', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.71.85.14', '3');
INSERT INTO `cmf_ip_garde` VALUES ('39.78.247.70', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.82.155.82', '3');
INSERT INTO `cmf_ip_garde` VALUES ('39.82.231.41', '3');
INSERT INTO `cmf_ip_garde` VALUES ('39.82.250.67', '3');
INSERT INTO `cmf_ip_garde` VALUES ('39.82.36.23', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.82.94.2', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.85.110.53', '2');
INSERT INTO `cmf_ip_garde` VALUES ('39.85.83.138', '2');
INSERT INTO `cmf_ip_garde` VALUES ('40.83.89.47', '2');
INSERT INTO `cmf_ip_garde` VALUES ('42.101.64.227', '2');
INSERT INTO `cmf_ip_garde` VALUES ('42.236.219.228', '2');
INSERT INTO `cmf_ip_garde` VALUES ('42.238.178.211', '9');
INSERT INTO `cmf_ip_garde` VALUES ('42.48.146.45', '2');
INSERT INTO `cmf_ip_garde` VALUES ('42.48.47.171', '10');
INSERT INTO `cmf_ip_garde` VALUES ('42.80.160.46', '2');
INSERT INTO `cmf_ip_garde` VALUES ('42.90.90.207', '15');
INSERT INTO `cmf_ip_garde` VALUES ('42.91.144.173', '15');
INSERT INTO `cmf_ip_garde` VALUES ('42.92.155.168', '3');
INSERT INTO `cmf_ip_garde` VALUES ('43.227.136.108', '2');
INSERT INTO `cmf_ip_garde` VALUES ('43.227.252.112', '9');
INSERT INTO `cmf_ip_garde` VALUES ('43.243.95.239', '3');
INSERT INTO `cmf_ip_garde` VALUES ('47.240.33.233', '10');
INSERT INTO `cmf_ip_garde` VALUES ('47.242.229.32', '2');
INSERT INTO `cmf_ip_garde` VALUES ('47.242.25.176', '10');
INSERT INTO `cmf_ip_garde` VALUES ('49.74.164.194', '2');
INSERT INTO `cmf_ip_garde` VALUES ('49.74.217.106', '2');
INSERT INTO `cmf_ip_garde` VALUES ('49.82.122.237', '5');
INSERT INTO `cmf_ip_garde` VALUES ('49.84.132.60', '3');
INSERT INTO `cmf_ip_garde` VALUES ('52.231.53.113', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.16.225.251', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.17.161.254', '3');
INSERT INTO `cmf_ip_garde` VALUES ('58.18.253.162', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.20.12.194', '3');
INSERT INTO `cmf_ip_garde` VALUES ('58.20.23.64', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.206.176.195', '15');
INSERT INTO `cmf_ip_garde` VALUES ('58.208.4.108', '15');
INSERT INTO `cmf_ip_garde` VALUES ('58.213.31.58', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.240.254.162', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.246.142.90', '15');
INSERT INTO `cmf_ip_garde` VALUES ('58.247.201.150', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.248.113.37', '3');
INSERT INTO `cmf_ip_garde` VALUES ('58.248.2.29', '3');
INSERT INTO `cmf_ip_garde` VALUES ('58.33.59.18', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.44.43.233', '3');
INSERT INTO `cmf_ip_garde` VALUES ('58.48.131.104', '2');
INSERT INTO `cmf_ip_garde` VALUES ('58.56.120.194', '3');
INSERT INTO `cmf_ip_garde` VALUES ('58.57.156.186', '9');
INSERT INTO `cmf_ip_garde` VALUES ('58.62.53.10', '9');
INSERT INTO `cmf_ip_garde` VALUES ('59.172.206.50', '9');
INSERT INTO `cmf_ip_garde` VALUES ('59.173.183.61', '3');
INSERT INTO `cmf_ip_garde` VALUES ('59.173.240.186', '15');
INSERT INTO `cmf_ip_garde` VALUES ('59.33.111.129', '2');
INSERT INTO `cmf_ip_garde` VALUES ('59.33.234.169', '2');
INSERT INTO `cmf_ip_garde` VALUES ('59.33.235.22', '2');
INSERT INTO `cmf_ip_garde` VALUES ('59.33.31.202', '9');
INSERT INTO `cmf_ip_garde` VALUES ('59.42.206.25', '15');
INSERT INTO `cmf_ip_garde` VALUES ('59.42.24.131', '6');
INSERT INTO `cmf_ip_garde` VALUES ('59.46.169.82', '2');
INSERT INTO `cmf_ip_garde` VALUES ('59.57.152.13', '2');
INSERT INTO `cmf_ip_garde` VALUES ('59.57.156.205', '7');
INSERT INTO `cmf_ip_garde` VALUES ('59.57.171.34', '2');
INSERT INTO `cmf_ip_garde` VALUES ('59.57.199.185', '3');
INSERT INTO `cmf_ip_garde` VALUES ('59.61.164.38', '3');
INSERT INTO `cmf_ip_garde` VALUES ('59.61.216.124', '3');
INSERT INTO `cmf_ip_garde` VALUES ('60.0.210.231', '9');
INSERT INTO `cmf_ip_garde` VALUES ('60.1.180.161', '4');
INSERT INTO `cmf_ip_garde` VALUES ('60.12.185.170', '5');
INSERT INTO `cmf_ip_garde` VALUES ('60.166.88.183', '3');
INSERT INTO `cmf_ip_garde` VALUES ('60.168.130.72', '3');
INSERT INTO `cmf_ip_garde` VALUES ('60.173.195.178', '3');
INSERT INTO `cmf_ip_garde` VALUES ('60.176.133.233', '3');
INSERT INTO `cmf_ip_garde` VALUES ('60.190.26.38', '3');
INSERT INTO `cmf_ip_garde` VALUES ('60.191.98.36', '2');
INSERT INTO `cmf_ip_garde` VALUES ('60.208.116.146', '2');
INSERT INTO `cmf_ip_garde` VALUES ('60.208.23.10', '2');
INSERT INTO `cmf_ip_garde` VALUES ('60.209.214.108', '9');
INSERT INTO `cmf_ip_garde` VALUES ('60.216.178.103', '2');
INSERT INTO `cmf_ip_garde` VALUES ('60.223.134.81', '10');
INSERT INTO `cmf_ip_garde` VALUES ('60.233.1.217', '7');
INSERT INTO `cmf_ip_garde` VALUES ('60.24.88.40', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.140.181.90', '9');
INSERT INTO `cmf_ip_garde` VALUES ('61.140.236.89', '4');
INSERT INTO `cmf_ip_garde` VALUES ('61.144.157.93', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.155.85.78', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.157.54.199', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.157.56.218', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.158.152.153', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.158.208.146', '15');
INSERT INTO `cmf_ip_garde` VALUES ('61.158.208.160', '15');
INSERT INTO `cmf_ip_garde` VALUES ('61.158.208.216', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.162.221.156', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.162.51.234', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.174.24.142', '9');
INSERT INTO `cmf_ip_garde` VALUES ('61.178.118.14', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.178.209.87', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.179.24.43', '9');
INSERT INTO `cmf_ip_garde` VALUES ('61.183.117.38', '3');
INSERT INTO `cmf_ip_garde` VALUES ('61.183.140.34', '9');
INSERT INTO `cmf_ip_garde` VALUES ('61.183.151.86', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.183.68.246', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.185.148.221', '15');
INSERT INTO `cmf_ip_garde` VALUES ('61.185.160.18', '5');
INSERT INTO `cmf_ip_garde` VALUES ('61.190.70.8', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.243.43.208', '2');
INSERT INTO `cmf_ip_garde` VALUES ('61.50.111.78', '9');
INSERT INTO `cmf_ip_garde` VALUES ('61.52.17.28', '9');
INSERT INTO `cmf_ip_garde` VALUES ('89.208.244.248', '15');
INSERT INTO `cmf_ip_garde` VALUES ('91.204.255.25', '2');

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_live_chat
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_chat`;
CREATE TABLE `cmf_live_chat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `liveuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessonid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型，0文字1语音',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `length` int(11) NOT NULL DEFAULT '0' COMMENT '音频时长 秒',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  `toid` bigint(20) NOT NULL DEFAULT '0' COMMENT '回复对象chatid',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '形式，0普通1提问2回答',
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发布人身份，0学生1讲师2辅导',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=934 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_live_chat
-- ----------------------------
INSERT INTO `cmf_live_chat` VALUES ('1', '1', '1', '2', '0', '0', '我了个去', '', '0', '1602637784', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('2', '1', '1', '2', '0', '0', '我了个去我了个去', '', '0', '1602638122', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('3', '1', '1', '3', '0', '0', '哈哈哈', '', '0', '1602664176', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('4', '5', '1', '2', '0', '0', '哈哈哈', '', '0', '1602667028', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('5', '5', '1', '2', '0', '0', '哈哈哈哈哈', '', '0', '1602667035', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('6', '5', '1', '2', '0', '0', 'werewolf', '', '0', '1602667364', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('7', '1', '1', '2', '0', '0', '22', '', '0', '1602740655', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('8', '13', '1', '2', '0', '0', '哈哈', '', '0', '1602740880', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('9', '1', '1', '207', '0', '0', '22', '', '0', '1603070671', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('10', '1', '1', '214', '0', '0', '1', '', '0', '1603076719', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('11', '1', '1', '214', '0', '0', '222', '', '0', '1603076733', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('12', '1', '1', '214', '0', '0', '22', '', '0', '1603076762', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('13', '1', '1', '214', '0', '0', '111', '', '0', '1603076766', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('14', '1', '1', '214', '0', '0', '8888', '', '0', '1603076771', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('15', '1', '1', '214', '0', '0', '456', '', '0', '1603077164', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('16', '1', '1', '214', '0', '0', '55', '', '0', '1603077178', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('17', '1', '1', '214', '0', '0', '111', '', '0', '1603077367', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('18', '1', '1', '214', '0', '0', '22', '', '0', '1603077381', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('19', '1', '1', '214', '0', '0', '哈哈', '', '0', '1603096444', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('20', '1', '1', '214', '0', '0', '哈哈', '', '0', '1603096449', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('21', '1', '1', '214', '0', '0', '哈哈', '', '0', '1603096471', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('22', '1', '1', '214', '0', '0', '我了个去去去去去去去去', '', '0', '1603098180', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('23', '1', '1', '214', '0', '0', '11', '', '0', '1603098496', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('24', '1', '1', '214', '0', '0', '我了个去', '', '0', '1603099473', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('25', '1', '1', '214', '0', '0', '我靠靠靠靠靠靠', '', '0', '1603099483', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('26', '1', '1', '214', '0', '0', '哈哈哈哈哈哈哈', '', '0', '1603099502', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('27', '1', '1', '214', '0', '0', '饿热望热望我就欧文解耦为', '', '0', '1603099519', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('28', '1', '1', '214', '0', '0', '爱就爱山东我', '', '0', '1603099533', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('29', '1', '1', '214', '0', '0', '微软', '', '0', '1603101205', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('30', '1', '1', '214', '0', '0', '热天热问题', '', '0', '1603101207', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('31', '1', '1', '214', '0', '0', '22', '', '0', '1603259294', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('32', '1', '1', '214', '0', '0', '22', '', '0', '1603259297', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('33', '1', '1', '214', '0', '0', '22', '', '0', '1603259300', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('34', '2', '1', '205', '0', '0', '嘎嘎', '', '0', '1603328272', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('35', '1', '1', '205', '0', '0', '还是说', '', '0', '1603329206', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('36', '1', '1', '205', '0', '0', '222', '', '0', '1603329215', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('37', '1', '1', '205', '0', '0', '222', '', '0', '1603329369', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('38', '1', '1', '205', '0', '0', '333', '', '0', '1603329373', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('39', '1', '1', '205', '0', '0', '45 5454 54', '', '0', '1603329384', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('40', '1', '1', '205', '0', '0', '我沃尔沃人', '', '0', '1603329397', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('41', '1', '1', '205', '0', '0', '和维护认为', '', '0', '1603329439', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('42', '1', '1', '205', '0', '0', '围殴金融为', '', '0', '1603329447', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('43', '2', '1', '205', '0', '0', 'wwww', '', '0', '1603331212', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('44', '1', '1', '205', '0', '0', 'eee', '', '0', '1603331220', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('45', '1', '1', '205', '0', '0', '22222', '', '0', '1603331235', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('46', '1', '1', '205', '0', '0', '111', '', '0', '1604288024', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('47', '1', '1', '205', '0', '0', '11', '', '0', '1604288035', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('48', '1', '1', '205', '0', '0', '222', '', '0', '1604288038', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('49', '1', '1', '205', '0', '0', '111', '', '0', '1604288039', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('50', '1', '1', '205', '0', '0', '2323', '', '0', '1606445415', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('51', '1', '1', '205', '0', '0', '123', '', '0', '1606445582', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('52', '13', '1', '205', '0', '0', '456', '', '0', '1606445678', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('53', '27', '1', '25', '0', '0', '1', '', '0', '1606887672', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('54', '27', '1', '25', '0', '0', '1', '', '0', '1606887675', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('55', '27', '1', '25', '0', '0', '1', '', '0', '1606887678', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('56', '27', '1', '25', '0', '0', '1', '', '0', '1606887688', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('57', '27', '1', '25', '0', '0', '23123123', '', '0', '1606887691', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('58', '27', '1', '170', '0', '0', '1', '', '0', '1606888055', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('59', '27', '1', '17', '0', '0', '111', '', '0', '1606888238', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('60', '27', '1', '29', '0', '0', '1', '', '0', '1606889661', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('61', '27', '1', '29', '0', '0', '2213', '', '0', '1606889668', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('62', '1', '1', '220', '0', '0', '11', '', '0', '1607590890', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('63', '1', '1', '205', '0', '0', '11', '', '0', '1607591692', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('64', '27', '1', '205', '0', '0', '11', '', '0', '1607591749', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('65', '1', '1', '205', '0', '0', '11\n', '', '0', '1607591756', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('66', '27', '1', '205', '0', '0', '11', '', '0', '1607591800', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('67', '27', '1', '205', '0', '0', '11', '', '0', '1607591813', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('68', '27', '1', '205', '0', '0', '11511', '', '0', '1607592073', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('69', '1', '1', '205', '0', '0', '哈哈哈', '', '0', '1607592090', '68', '2', '1');
INSERT INTO `cmf_live_chat` VALUES ('70', '27', '1', '205', '0', '0', '不提问呢', '', '0', '1607592102', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('71', '27', '1', '205', '0', '0', '121', '', '0', '1607592145', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('72', '1', '1', '221', '0', '1', '', 'default/20201210/10230b34d592a13fd55fab22e5492cd3.mp3', '7', '1607592262', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('73', '27', '1', '205', '0', '0', '11\n', '', '0', '1607593123', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('74', '1', '1', '205', '0', '0', '22', '', '0', '1607593131', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('75', '27', '1', '221', '0', '0', '万老师好帅\n', '', '0', '1607670216', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('76', '1', '1', '227', '0', '0', 'shdlasdlas\n\n', '', '0', '1607755196', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('77', '1', '1', '226', '0', '0', '各位同学好', '', '0', '1608173569', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('78', '1', '1', '170', '0', '0', '2\n', '', '0', '1608174096', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('79', '27', '1', '170', '0', '0', '老师\n', '', '0', '1608174633', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('80', '27', '1', '170', '0', '0', '老师我有问题', '', '0', '1608178082', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('81', '1', '1', '170', '0', '0', '这是干啥呢\n', '', '0', '1608178106', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('82', '1', '1', '170', '0', '0', '干啥', '', '0', '1608183303', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('83', '27', '1', '170', '0', '0', '没事，老师', '', '0', '1608183675', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('84', '27', '1', '170', '0', '0', '我退下了', '', '0', '1608183688', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('85', '27', '1', '170', '0', '0', '塑料袋扩付军军军军', '', '0', '1608186171', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('86', '27', '1', '171', '0', '0', '你好', '', '0', '1608280022', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('87', '1', '1', '204', '0', '1', '', 'default/20201221/d9212ab0b8e0c132d5cb08b60fb49505.mp3', '3', '1608536481', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('88', '1', '1', '204', '0', '1', '', 'default/20201221/fded56d4d4e9fb1ada1270aaef5d2d3f.mp3', '2', '1608562411', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('89', '1', '1', '229', '0', '0', 'afsdfas ', '', '0', '1608774106', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('90', '1', '1', '229', '0', '0', '216514\n', '', '0', '1609224064', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('91', '1', '1', '229', '0', '0', '111\n', '', '0', '1609224134', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('92', '34', '1', '228', '0', '0', '123', '', '0', '1609230384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('93', '35', '1', '228', '0', '0', '123', '', '0', '1609230726', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('94', '35', '1', '228', '0', '0', '77777', '', '0', '1609230732', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('95', '34', '1', '228', '0', '0', '555', '', '0', '1609230747', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('96', '34', '1', '228', '0', '0', '哦啦啦啦啦', '', '0', '1609230751', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('97', '35', '1', '228', '0', '0', '123', '', '0', '1609230870', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('98', '37', '1', '228', '0', '0', 'ududu', '', '0', '1609232254', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('99', '37', '1', '228', '0', '0', 'djdjjd', '', '0', '1609232257', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('100', '1', '1', '228', '0', '0', '123', '', '0', '1609234602', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('101', '1', '1', '228', '0', '0', '456', '', '0', '1609234609', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('102', '38', '1', '228', '0', '0', '444', '', '0', '1609234612', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('103', '38', '1', '228', '0', '0', '666', '', '0', '1609234620', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('104', '37', '1', '228', '0', '0', '2333', '', '0', '1609234673', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('105', '37', '1', '228', '0', '0', 'dydudud', '', '0', '1609234988', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('106', '37', '1', '228', '0', '0', 'gkffjfj', '', '0', '1609235111', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('107', '1', '1', '228', '0', '0', '331313', '', '0', '1609235116', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('108', '1', '1', '228', '0', '0', '2222', '', '0', '1609235119', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('109', '1', '1', '228', '0', '0', '3333', '', '0', '1609235121', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('110', '1', '1', '228', '0', '0', '4444', '', '0', '1609235122', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('111', '1', '1', '228', '0', '0', '3131313', '', '0', '1609235125', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('112', '37', '1', '228', '0', '0', 'ffgg', '', '0', '1609235131', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('113', '1', '1', '228', '0', '0', '31231313', '', '0', '1609235139', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('114', '1', '1', '228', '0', '0', '12313132', '', '0', '1609235142', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('115', '38', '1', '228', '0', '0', '456', '', '0', '1609238168', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('116', '37', '1', '228', '0', '0', 'www', '', '0', '1609238700', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('117', '1', '1', '229', '0', '0', '33', '', '0', '1609239139', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('118', '28', '1', '207', '0', '0', '11', '', '0', '1609290727', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('119', '28', '1', '207', '0', '0', '111', '', '0', '1609290733', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('120', '34', '1', '207', '0', '0', 'dhhdhd', '', '0', '1609300271', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('121', '37', '1', '207', '0', '0', '1', '', '0', '1609314551', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('122', '37', '1', '207', '0', '0', '2', '', '0', '1609314554', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('123', '37', '1', '207', '0', '0', '3', '', '0', '1609314558', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('124', '37', '1', '207', '0', '0', '1', '', '0', '1609315258', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('125', '37', '1', '207', '0', '0', '2', '', '0', '1609315260', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('126', '37', '1', '207', '0', '0', '3', '', '0', '1609315260', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('127', '37', '1', '207', '0', '0', '4', '', '0', '1609315262', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('128', '37', '1', '207', '0', '0', '5', '', '0', '1609315263', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('129', '37', '1', '207', '0', '0', '6', '', '0', '1609315264', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('130', '37', '1', '207', '0', '0', '7', '', '0', '1609315266', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('131', '37', '1', '207', '0', '0', '8', '', '0', '1609315268', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('132', '37', '1', '207', '0', '0', '8', '', '0', '1609315269', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('133', '37', '1', '207', '0', '0', '9', '', '0', '1609315270', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('134', '37', '1', '207', '0', '0', '1', '', '0', '1609315273', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('135', '37', '1', '207', '0', '0', '1', '', '0', '1609315290', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('136', '37', '1', '207', '0', '0', '2', '', '0', '1609315291', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('137', '37', '1', '207', '0', '0', '3', '', '0', '1609315293', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('138', '37', '1', '207', '0', '0', '4', '', '0', '1609315294', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('139', '37', '1', '207', '0', '0', '1', '', '0', '1609315355', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('140', '37', '1', '207', '0', '0', '2', '', '0', '1609315355', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('141', '37', '1', '207', '0', '0', '3', '', '0', '1609315357', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('142', '37', '1', '207', '0', '0', '4', '', '0', '1609315359', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('143', '37', '1', '207', '0', '0', '1', '', '0', '1609315428', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('144', '37', '1', '207', '0', '0', '2', '', '0', '1609315429', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('145', '37', '1', '207', '0', '0', '3', '', '0', '1609315430', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('146', '37', '1', '207', '0', '0', '4', '', '0', '1609315431', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('147', '37', '1', '207', '0', '0', '5', '', '0', '1609315432', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('148', '37', '1', '207', '0', '0', '6', '', '0', '1609315434', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('149', '37', '1', '207', '0', '0', '7', '', '0', '1609315435', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('150', '37', '1', '207', '0', '0', '8', '', '0', '1609315435', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('151', '37', '1', '207', '0', '0', '9', '', '0', '1609315436', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('152', '37', '1', '207', '0', '0', '10', '', '0', '1609315437', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('153', '37', '1', '207', '0', '0', '11', '', '0', '1609315439', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('154', '37', '1', '207', '0', '0', '12', '', '0', '1609315440', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('155', '37', '1', '207', '0', '0', '13', '', '0', '1609315441', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('156', '37', '1', '207', '0', '0', '14', '', '0', '1609315441', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('157', '37', '1', '207', '0', '0', '15', '', '0', '1609315443', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('158', '37', '1', '207', '0', '0', '16', '', '0', '1609315450', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('159', '37', '1', '207', '0', '0', '17', '', '0', '1609315451', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('160', '37', '1', '207', '0', '0', '1', '', '0', '1609315483', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('161', '37', '1', '207', '0', '0', '2', '', '0', '1609315484', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('162', '37', '1', '207', '0', '0', '3', '', '0', '1609315485', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('163', '37', '1', '207', '0', '0', '4', '', '0', '1609315489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('164', '37', '1', '207', '0', '0', '5', '', '0', '1609315492', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('165', '37', '1', '207', '0', '0', '6', '', '0', '1609315493', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('166', '37', '1', '207', '0', '0', '1', '', '0', '1609315625', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('167', '37', '1', '207', '0', '0', '4', '', '0', '1609315626', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('168', '37', '1', '207', '0', '0', '6', '', '0', '1609315627', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('169', '37', '1', '207', '0', '0', '1', '', '0', '1609315869', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('170', '37', '1', '207', '0', '0', '2', '', '0', '1609315870', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('171', '37', '1', '207', '0', '0', '3', '', '0', '1609315871', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('172', '37', '1', '207', '0', '0', '4', '', '0', '1609315873', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('173', '37', '1', '207', '0', '0', '5', '', '0', '1609315877', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('174', '37', '1', '207', '0', '0', '1', '', '0', '1609315937', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('175', '37', '1', '207', '0', '0', '2', '', '0', '1609315938', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('176', '37', '1', '207', '0', '0', '1', '', '0', '1609315982', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('177', '37', '1', '207', '0', '0', '2', '', '0', '1609315987', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('178', '37', '1', '207', '0', '0', '3', '', '0', '1609315988', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('179', '37', '1', '207', '0', '0', '4', '', '0', '1609315989', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('180', '37', '1', '207', '0', '0', '5', '', '0', '1609315990', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('181', '37', '1', '207', '0', '0', '6', '', '0', '1609315991', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('182', '37', '1', '207', '0', '0', '7', '', '0', '1609315993', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('183', '37', '1', '207', '0', '0', '8', '', '0', '1609315995', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('184', '37', '1', '207', '0', '0', '9', '', '0', '1609316000', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('185', '37', '1', '207', '0', '0', '10', '', '0', '1609316001', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('186', '37', '1', '207', '0', '0', '11', '', '0', '1609316002', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('187', '37', '1', '207', '0', '0', '12', '', '0', '1609316003', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('188', '37', '1', '207', '0', '0', '13', '', '0', '1609316005', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('189', '37', '1', '207', '0', '0', '14', '', '0', '1609316006', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('190', '37', '1', '207', '0', '0', '1', '', '0', '1609316074', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('191', '37', '1', '207', '0', '0', '2', '', '0', '1609316074', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('192', '37', '1', '207', '0', '0', '3', '', '0', '1609316075', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('193', '37', '1', '207', '0', '0', '4', '', '0', '1609316076', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('194', '37', '1', '207', '0', '0', '5', '', '0', '1609316077', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('195', '37', '1', '207', '0', '0', '6', '', '0', '1609316079', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('196', '37', '1', '207', '0', '0', '7', '', '0', '1609316085', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('197', '37', '1', '207', '0', '0', '123', '', '0', '1609316187', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('198', '37', '1', '207', '0', '0', '22222', '', '0', '1609316438', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('199', '37', '1', '207', '0', '0', '3333', '', '0', '1609316440', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('200', '37', '1', '207', '0', '0', '55555', '', '0', '1609316443', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('201', '37', '1', '207', '0', '0', '6666', '', '0', '1609316446', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('202', '37', '1', '207', '0', '0', '23333', '', '0', '1609316449', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('203', '37', '1', '207', '0', '0', '123', '', '0', '1609316453', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('204', '37', '1', '207', '0', '0', '4844848848484848484', '', '0', '1609316458', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('205', '37', '1', '207', '0', '0', '1', '', '0', '1609316493', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('206', '37', '1', '207', '0', '0', '2', '', '0', '1609316494', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('207', '37', '1', '207', '0', '0', '3', '', '0', '1609316495', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('208', '37', '1', '207', '0', '0', '4', '', '0', '1609316495', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('209', '37', '1', '207', '0', '0', '5', '', '0', '1609316497', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('210', '37', '1', '207', '0', '0', '1', '', '0', '1609316558', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('211', '37', '1', '207', '0', '0', '2', '', '0', '1609316558', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('212', '37', '1', '207', '0', '0', '3', '', '0', '1609316560', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('213', '37', '1', '207', '0', '0', '4', '', '0', '1609316561', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('214', '37', '1', '207', '0', '0', '5', '', '0', '1609316562', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('215', '37', '1', '207', '0', '0', '6', '', '0', '1609316564', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('216', '37', '1', '207', '0', '0', '1', '', '0', '1609316619', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('217', '37', '1', '207', '0', '0', '2', '', '0', '1609316620', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('218', '37', '1', '207', '0', '0', '3', '', '0', '1609316621', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('219', '37', '1', '207', '0', '0', '2', '', '0', '1609316768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('220', '37', '1', '207', '0', '0', '123', '', '0', '1609320493', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('221', '37', '1', '207', '0', '0', '221', '', '0', '1609320499', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('222', '37', '1', '207', '0', '0', '123', '', '0', '1609320516', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('223', '37', '1', '207', '0', '0', '344', '', '0', '1609320524', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('224', '37', '1', '207', '0', '0', 'YYYYYGG', '', '0', '1609320577', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('225', '34', '1', '207', '0', '0', '13213213', '', '0', '1609377396', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('226', '34', '1', '207', '0', '0', '132132133123123', '', '0', '1609377403', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('227', '34', '1', '207', '0', '0', '111223', '', '0', '1609377421', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('228', '34', '1', '207', '0', '0', '44455', '', '0', '1609377425', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('229', '34', '1', '207', '0', '0', '44455555', '', '0', '1609377430', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('230', '34', '1', '207', '0', '0', '111', '', '0', '1609377452', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('231', '34', '1', '207', '0', '0', '2222', '', '0', '1609377455', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('232', '34', '1', '207', '0', '0', '2222333', '', '0', '1609377460', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('233', '34', '1', '207', '0', '0', '11122', '', '0', '1609377485', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('234', '34', '1', '207', '0', '0', '333', '', '0', '1609377490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('235', '34', '1', '207', '0', '0', '2222', '', '0', '1609377557', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('236', '34', '1', '207', '0', '0', '333', '', '0', '1609377560', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('237', '34', '1', '207', '0', '0', '123', '', '0', '1609377589', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('238', '34', '1', '207', '0', '0', '456', '', '0', '1609377599', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('239', '34', '1', '207', '0', '0', '45667', '', '0', '1609377688', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('240', '34', '1', '207', '0', '0', '45667888', '', '0', '1609377691', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('241', '34', '1', '207', '0', '0', '4566788899999', '', '0', '1609377694', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('242', '34', '1', '207', '0', '0', '111', '', '0', '1609377716', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('243', '34', '1', '207', '0', '0', '222', '', '0', '1609377719', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('244', '34', '1', '207', '0', '0', '123', '', '0', '1609377994', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('245', '34', '1', '207', '0', '0', '222', '', '0', '1609377998', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('246', '34', '1', '207', '0', '0', '222333', '', '0', '1609378000', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('247', '34', '1', '207', '0', '0', '7777', '', '0', '1609378099', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('248', '37', '1', '207', '0', '0', 'dididjdj', '', '0', '1609378104', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('249', '37', '1', '207', '0', '0', 'djdjdudujfjf', '', '0', '1609378108', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('250', '37', '1', '207', '0', '0', 'djdjdjdjfjfjfjfjfjdj', '', '0', '1609378111', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('251', '37', '1', '207', '0', '0', 'djjdjdjfjfhfhfjfjfjfj', '', '0', '1609378115', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('252', '34', '1', '207', '0', '0', '123', '', '0', '1609378219', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('253', '34', '1', '207', '0', '0', '123', '', '0', '1609378266', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('254', '37', '1', '207', '0', '0', 'dhdjdj', '', '0', '1609378270', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('255', '37', '1', '207', '0', '0', 'ffffff', '', '0', '1609378276', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('256', '37', '1', '207', '0', '0', 'fkfkffjfjjf', '', '0', '1609378279', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('257', '34', '1', '207', '0', '0', 'Uuuu', '', '0', '1609378292', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('258', '37', '1', '207', '0', '0', 'dffffffff', '', '0', '1609378296', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('259', '37', '1', '207', '0', '0', 'fhdjdhrhhrhrhurhfh jdueurifufu udururu', '', '0', '1609378303', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('260', '37', '1', '207', '0', '0', 'fjfjfjjfjfjjfjfjfjjf ehueudufhhfhfhhf duudufufufuf', '', '0', '1609378310', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('261', '34', '1', '207', '0', '0', '313131', '', '0', '1609378314', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('262', '34', '1', '207', '0', '0', '313131ewqeqeqeqewqeqeqeqeqeqeqe', '', '0', '1609378319', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('263', '34', '1', '207', '0', '0', '313131', '', '0', '1609378330', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('264', '34', '1', '207', '0', '0', '3123131313131313133', '', '0', '1609378334', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('265', '37', '1', '207', '0', '0', 'fjdjfjfhfjfjffhhfjfjj', '', '0', '1609378338', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('266', '37', '1', '207', '0', '0', 'fnfjjdjfjfjjfjfjj', '', '0', '1609378341', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('267', '37', '1', '207', '0', '0', 'djdjjdjdfjjfj', '', '0', '1609378343', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('268', '37', '1', '207', '0', '0', 'fhdjdjdjfj', '', '0', '1609378350', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('269', '37', '1', '207', '0', '0', 'dydyud', '', '0', '1609378539', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('270', '34', '1', '207', '0', '0', 'Jhhkhk', '', '0', '1609378586', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('271', '34', '1', '207', '0', '0', '3131313313', '', '0', '1609379987', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('272', '34', '1', '207', '0', '0', '31313131313123', '', '0', '1609379992', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('273', '34', '1', '207', '0', '0', '3131313131312331132', '', '0', '1609380068', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('274', '34', '1', '207', '0', '0', '312131231313213', '', '0', '1609380080', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('275', '34', '1', '207', '0', '0', '312131231313213ooo', '', '0', '1609380088', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('276', '34', '1', '207', '0', '0', '31313133', '', '0', '1609380096', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('277', '34', '1', '207', '0', '0', '3131313', '', '0', '1609380163', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('278', '37', '1', '207', '0', '0', 'duduufu', '', '0', '1609380192', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('279', '37', '1', '207', '0', '0', 'fnfnfnfnfn', '', '0', '1609380196', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('280', '37', '1', '207', '0', '0', 'fjdjjdjdj', '', '0', '1609380201', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('281', '37', '1', '207', '0', '0', 'cdvvs', '', '0', '1609380213', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('282', '34', '1', '207', '0', '0', '31133213', '', '0', '1609380225', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('283', '34', '1', '207', '0', '0', '123', '', '0', '1609380353', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('284', '34', '1', '207', '0', '0', '456', '', '0', '1609380358', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('285', '34', '1', '207', '0', '0', '123', '', '0', '1609380500', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('286', '37', '1', '207', '0', '0', 'dhhdhdh', '', '0', '1609380504', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('287', '37', '1', '207', '0', '0', 'fjfjjfj', '', '0', '1609380511', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('288', '34', '1', '207', '0', '0', '123', '', '0', '1609380679', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('289', '34', '1', '207', '0', '0', '132', '', '0', '1609380699', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('290', '34', '1', '207', '0', '0', '123', '', '0', '1609380713', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('291', '34', '1', '207', '0', '0', '22', '', '0', '1609380739', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('292', '34', '1', '207', '0', '0', '31313', '', '0', '1609380757', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('293', '34', '1', '207', '0', '0', '13213', '', '0', '1609380780', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('294', '34', '1', '207', '0', '0', '313123', '', '0', '1609380795', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('295', '34', '1', '207', '0', '0', '3123123', '', '0', '1609380818', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('296', '34', '1', '207', '0', '0', 'Jdahdjabdjhqwhdbhbdjahdbhbwhjbqhjbdhjasbhdjabhdjadasd', '', '0', '1609380839', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('297', '34', '1', '207', '0', '0', '313131231313', '', '0', '1609380854', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('298', '37', '1', '207', '0', '0', 'dhdjdhhdhdhh', '', '0', '1609380868', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('299', '37', '1', '207', '0', '0', 'djdjdjfjfjfjj', '', '0', '1609380876', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('300', '37', '1', '207', '0', '0', 'dydhhddhdh', '', '0', '1609380894', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('301', '37', '1', '207', '0', '0', 'djdhdhfhhfjf', '', '0', '1609380897', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('302', '37', '1', '207', '0', '0', 'fifjfjfjjfjfjjf;_;_;$;__', '', '0', '1609380981', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('303', '37', '1', '207', '0', '0', ':;__;;_;_;__;_', '', '0', '1609381003', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('304', '37', '1', '207', '0', '0', ';__;_;_', '', '0', '1609381007', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('305', '37', '1', '207', '0', '0', ';_;_;_', '', '0', '1609381010', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('306', '34', '1', '207', '0', '0', '313122312', '', '0', '1609381016', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('307', '37', '1', '207', '0', '0', 'djdjjdjdjdjfjjf', '', '0', '1609381054', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('308', '34', '1', '207', '0', '0', '313123123', '', '0', '1609381061', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('309', '37', '1', '207', '0', '0', 'reudidjdufufururj', '', '0', '1609381076', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('310', '34', '1', '207', '0', '0', 'Fffgg', '', '0', '1609381089', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('311', '37', '1', '207', '0', '0', 'ddjhdhfhfjf', '', '0', '1609381093', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('312', '37', '1', '207', '0', '0', 'fjjdjdjdj', '', '0', '1609381100', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('313', '37', '1', '207', '0', '0', 'djjdjdjd', '', '0', '1609381103', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('314', '37', '1', '207', '0', '0', 'dhdhhfhf', '', '0', '1609381179', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('315', '37', '1', '207', '0', '0', 'cjjffjjf', '', '0', '1609381186', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('316', '37', '1', '207', '0', '0', 'dhdhhdh', '', '0', '1609381190', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('317', '34', '1', '207', '0', '0', '311313', '', '0', '1609381195', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('318', '37', '1', '207', '0', '0', 'djdhdhhf', '', '0', '1609381199', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('319', '37', '1', '207', '0', '0', 'fbhfhfhfh', '', '0', '1609381201', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('320', '37', '1', '207', '0', '0', 'fnbfnfnfn', '', '0', '1609381203', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('321', '37', '1', '207', '0', '0', 'nfnfnfnfn', '', '0', '1609381205', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('322', '37', '1', '207', '0', '0', 'fnfnnfnfnnf', '', '0', '1609381207', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('323', '37', '1', '207', '0', '0', 'jfjfjfjfj jdjdjd', '', '0', '1609381212', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('324', '37', '1', '207', '0', '0', 'ehrhru', '', '0', '1609381246', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('325', '37', '1', '207', '0', '0', 'dhdjjdj', '', '0', '1609381260', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('326', '37', '1', '207', '0', '0', 'cjhdhdhfh', '', '0', '1609381266', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('327', '37', '1', '207', '0', '0', 'fhhdhdhdhhdhdhhdh', '', '0', '1609381269', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('328', '37', '1', '207', '0', '0', ' dbdhdhdh', '', '0', '1609381270', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('329', '37', '1', '207', '0', '0', ' dbdhdhdh ', '', '0', '1609381271', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('330', '37', '1', '207', '0', '0', ' dbdhdhdh djhdjdjdj djjdjdjd', '', '0', '1609381273', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('331', '37', '1', '207', '0', '0', 'dhhdhdhd', '', '0', '1609381275', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('332', '37', '1', '207', '0', '0', 'fsbbsbdbduub', '', '0', '1609381287', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('333', '37', '1', '207', '0', '0', 'dbbuubdubdu', '', '0', '1609381288', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('334', '37', '1', '207', '0', '0', 'duhubuniij', '', '0', '1609381290', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('335', '37', '1', '207', '0', '0', 'dnbibuubbuubub', '', '0', '1609381292', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('336', '37', '1', '207', '0', '0', 'dndbubbubu', '', '0', '1609381294', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('337', '34', '1', '207', '0', '0', '31231313', '', '0', '1609382174', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('338', '34', '1', '207', '0', '0', '3131313', '', '0', '1609382178', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('339', '34', '1', '207', '0', '0', '31123123', '', '0', '1609382252', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('340', '34', '1', '207', '0', '0', '311231233123123', '', '0', '1609382254', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('341', '34', '1', '207', '0', '0', '313123', '', '0', '1609382600', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('342', '34', '1', '207', '0', '0', '313131', '', '0', '1609382624', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('343', '34', '1', '213', '0', '0', '313132', '', '0', '1609383103', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('344', '34', '1', '213', '0', '0', '2223', '', '0', '1609383106', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('345', '34', '1', '213', '0', '0', '123', '', '0', '1609383169', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('346', '34', '1', '213', '0', '0', ' Edc', '', '0', '1609383185', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('347', '34', '1', '213', '0', '0', '3123', '', '0', '1609383216', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('348', '34', '1', '213', '0', '0', '333', '', '0', '1609383218', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('349', '34', '1', '213', '0', '0', '31313131313', '', '0', '1609383393', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('350', '34', '1', '213', '0', '0', '31313123', '', '0', '1609383397', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('351', '34', '1', '213', '0', '0', '31313123313131', '', '0', '1609383400', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('352', '34', '1', '213', '0', '0', '313131', '', '0', '1609383447', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('353', '34', '1', '213', '0', '0', '3123123', '', '0', '1609383449', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('354', '34', '1', '213', '0', '0', '312312331313', '', '0', '1609383452', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('355', '34', '1', '213', '0', '0', '123', '', '0', '1609383459', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('356', '34', '1', '207', '0', '0', '123', '', '0', '1609383798', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('357', '34', '1', '207', '0', '0', '123', '', '0', '1609383801', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('358', '34', '1', '207', '0', '0', '313131', '', '0', '1609384112', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('359', '34', '1', '207', '0', '0', '555', '', '0', '1609384116', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('360', '1', '1', '233', '0', '0', '11223', '', '0', '1609384906', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('361', '1', '1', '233', '0', '0', '8899', '', '0', '1609384916', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('362', '1', '1', '233', '0', '0', '99009988', '', '0', '1609384923', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('363', '34', '1', '233', '0', '0', '31313123', '', '0', '1609384991', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('364', '34', '1', '233', '0', '0', '31313123', '', '0', '1609385003', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('365', '34', '1', '233', '0', '0', '31313123313132', '', '0', '1609385006', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('366', '1', '1', '233', '0', '0', '123', '', '0', '1609385010', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('367', '34', '1', '233', '0', '0', '123', '', '0', '1609385105', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('368', '1', '1', '233', '0', '0', '123', '', '0', '1609385109', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('369', '1', '1', '233', '0', '0', '123123', '', '0', '1609385293', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('370', '1', '1', '233', '0', '0', '123', '', '0', '1609385307', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('371', '1', '1', '233', '0', '0', '123', '', '0', '1609385310', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('372', '1', '1', '233', '0', '0', '123', '', '0', '1609385311', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('373', '1', '1', '233', '0', '0', '123', '', '0', '1609385313', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('374', '34', '1', '233', '0', '0', '123', '', '0', '1609385356', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('375', '34', '1', '233', '0', '0', '456', '', '0', '1609385365', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('376', '34', '1', '233', '0', '0', '123', '', '0', '1609385789', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('377', '34', '1', '233', '0', '0', '13', '', '0', '1609386004', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('378', '34', '1', '233', '0', '0', '3123131313', '', '0', '1609386006', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('379', '34', '1', '233', '0', '0', '312313131333', '', '0', '1609386009', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('380', '34', '1', '233', '0', '0', '9999', '', '0', '1609389687', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('381', '34', '1', '233', '0', '0', '132123', '', '0', '1609392601', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('382', '34', '1', '233', '0', '0', '13', '', '0', '1609392664', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('383', '34', '1', '233', '0', '0', '13', '', '0', '1609392666', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('384', '34', '1', '233', '0', '0', '13', '', '0', '1609392667', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('385', '34', '1', '233', '0', '0', '17', '', '0', '1609392670', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('386', '1', '1', '233', '0', '0', '123', '', '0', '1609392931', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('387', '1', '1', '233', '0', '0', 'okj\n', '', '0', '1609392937', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('388', '1', '1', '233', '0', '0', 'hhahh ', '', '0', '1609392942', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('389', '1', '1', '233', '0', '0', 'nihao', '', '0', '1609392947', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('390', '1', '1', '233', '0', '0', 'zaima', '', '0', '1609392956', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('391', '1', '1', '233', '0', '0', '123', '', '0', '1609393323', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('392', '1', '1', '233', '0', '0', '456', '', '0', '1609393326', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('393', '1', '1', '233', '0', '0', '1313131313', '', '0', '1609393329', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('394', '34', '1', '233', '0', '0', '123456', '', '0', '1609393449', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('395', '34', '1', '233', '0', '0', '1', '', '0', '1609393459', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('396', '34', '1', '233', '0', '0', '123', '', '0', '1609393464', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('397', '34', '1', '233', '0', '0', '123456789', '', '0', '1609393468', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('398', '34', '1', '233', '0', '0', '1234567891255', '', '0', '1609393482', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('399', '34', '1', '233', '0', '0', '123456789125568', '', '0', '1609393488', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('400', '34', '1', '233', '0', '0', '1', '', '0', '1609393502', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('401', '34', '1', '233', '0', '0', '123', '', '0', '1609393509', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('402', '34', '1', '233', '0', '0', '1234', '', '0', '1609393512', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('403', '34', '1', '233', '0', '0', '12345', '', '0', '1609393514', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('404', '34', '1', '233', '0', '0', '1234567', '', '0', '1609393523', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('405', '34', '1', '233', '0', '0', '12345678', '', '0', '1609393526', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('406', '34', '1', '233', '0', '0', '123456789', '', '0', '1609393530', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('407', '34', '1', '233', '0', '0', '1', '', '0', '1609393552', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('408', '34', '1', '233', '0', '0', '12', '', '0', '1609393555', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('409', '34', '1', '233', '0', '0', '123', '', '0', '1609393559', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('410', '34', '1', '233', '0', '0', '1234', '', '0', '1609393561', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('411', '34', '1', '233', '0', '0', '1', '', '0', '1609393574', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('412', '34', '1', '233', '0', '0', '12', '', '0', '1609393577', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('413', '34', '1', '233', '0', '0', '123', '', '0', '1609393579', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('414', '34', '1', '233', '0', '0', '1234', '', '0', '1609393585', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('415', '34', '1', '233', '0', '0', '12345', '', '0', '1609393587', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('416', '34', '1', '233', '0', '0', '123456', '', '0', '1609393593', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('417', '37', '1', '233', '0', '0', '123', '', '0', '1609393744', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('418', '37', '1', '233', '0', '0', '123456', '', '0', '1609393747', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('419', '37', '1', '233', '0', '0', '123456', '', '0', '1609393750', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('420', '37', '1', '233', '0', '0', '123', '', '0', '1609393762', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('421', '37', '1', '233', '0', '0', '444', '', '0', '1609393765', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('422', '37', '1', '233', '0', '0', '22', '', '0', '1609393768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('423', '37', '1', '233', '0', '0', '1313', '', '0', '1609393967', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('424', '37', '1', '233', '0', '0', '123', '', '0', '1609393973', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('425', '37', '1', '233', '0', '0', '123', '', '0', '1609393973', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('426', '37', '1', '233', '0', '0', '123', '', '0', '1609393974', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('427', '37', '1', '233', '0', '0', '123', '', '0', '1609393975', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('428', '37', '1', '233', '0', '0', '123', '', '0', '1609393975', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('429', '37', '1', '233', '0', '0', '123', '', '0', '1609393976', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('430', '37', '1', '233', '0', '0', '123', '', '0', '1609393976', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('431', '37', '1', '233', '0', '0', '123', '', '0', '1609393976', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('432', '37', '1', '233', '0', '0', '123', '', '0', '1609393976', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('433', '37', '1', '233', '0', '0', '123', '', '0', '1609393976', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('434', '37', '1', '233', '0', '0', '123', '', '0', '1609393977', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('435', '37', '1', '233', '0', '0', '123', '', '0', '1609393977', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('436', '37', '1', '233', '0', '0', '123', '', '0', '1609393978', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('437', '37', '1', '233', '0', '0', '123', '', '0', '1609393978', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('438', '37', '1', '233', '0', '0', '123', '', '0', '1609393978', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('439', '37', '1', '233', '0', '0', '123', '', '0', '1609393980', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('440', '37', '1', '233', '0', '0', '123', '', '0', '1609393984', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('441', '37', '1', '233', '0', '0', '123', '', '0', '1609393984', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('442', '37', '1', '233', '0', '0', '123', '', '0', '1609393984', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('443', '37', '1', '233', '0', '0', '123', '', '0', '1609393987', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('444', '37', '1', '233', '0', '0', '123', '', '0', '1609393988', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('445', '37', '1', '233', '0', '0', '123', '', '0', '1609393988', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('446', '37', '1', '233', '0', '0', '123', '', '0', '1609393988', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('447', '37', '1', '233', '0', '0', '123', '', '0', '1609393988', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('448', '1', '1', '233', '0', '0', '1', '', '0', '1609393999', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('449', '1', '1', '233', '0', '0', '2', '', '0', '1609394000', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('450', '1', '1', '233', '0', '0', '3', '', '0', '1609394001', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('451', '1', '1', '233', '0', '0', '4', '', '0', '1609394002', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('452', '1', '1', '233', '0', '0', '5', '', '0', '1609394003', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('453', '1', '1', '233', '0', '0', '6', '', '0', '1609394004', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('454', '1', '1', '233', '0', '0', '7', '', '0', '1609394005', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('455', '37', '1', '233', '0', '0', '123456', '', '0', '1609395961', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('456', '37', '1', '233', '0', '0', '123456789', '', '0', '1609395967', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('457', '34', '1', '233', '0', '0', '123', '', '0', '1609396131', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('458', '34', '1', '233', '0', '0', '123456', '', '0', '1609396138', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('459', '1', '1', '233', '0', '0', '123', '', '0', '1609396790', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('460', '1', '1', '233', '0', '0', '5555', '', '0', '1609396801', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('461', '1', '1', '233', '0', '0', '887676767', '', '0', '1609396803', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('462', '34', '1', '233', '0', '0', '2222', '', '0', '1609397589', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('463', '34', '1', '233', '0', '0', '3333', '', '0', '1609397592', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('464', '34', '1', '233', '0', '0', '123123', '', '0', '1609397594', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('465', '34', '1', '233', '0', '0', '4565423', '', '0', '1609397597', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('466', '34', '1', '233', '0', '0', '123123', '', '0', '1609397601', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('467', '1', '1', '233', '0', '0', '撒打算大时代', '', '0', '1609398382', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('468', '1', '1', '233', '0', '0', '1234123', '', '0', '1609398390', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('469', '1', '1', '233', '0', '0', '00000000', '', '0', '1609400725', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('470', '1', '1', '233', '0', '0', '888', '', '0', '1609401353', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('471', '1', '1', '233', '0', '0', '000', '', '0', '1609401373', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('472', '1', '1', '233', '0', '0', '1', '', '0', '1609401493', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('473', '1', '1', '233', '0', '0', '313123', '', '0', '1609401494', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('474', '1', '1', '233', '0', '0', '312313', '', '0', '1609401498', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('475', '1', '1', '233', '0', '0', '3123123', '', '0', '1609401499', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('476', '1', '1', '233', '0', '0', '3123123', '', '0', '1609401501', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('477', '1', '1', '233', '0', '0', '3123123', '', '0', '1609401504', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('478', '1', '1', '233', '0', '0', '3123123', '', '0', '1609401743', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('479', '1', '1', '233', '0', '0', '123', '', '0', '1609401744', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('480', '1', '1', '233', '0', '0', '312313', '', '0', '1609401745', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('481', '1', '1', '233', '0', '0', '312313', '', '0', '1609401746', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('482', '1', '1', '233', '0', '0', '31231', '', '0', '1609401747', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('483', '1', '1', '233', '0', '0', '12313', '', '0', '1609401749', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('484', '1', '1', '233', '0', '0', '312313', '', '0', '1609401750', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('485', '34', '1', '233', '0', '0', '12313', '', '0', '1609402045', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('486', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402047', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('487', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402049', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('488', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402049', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('489', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402050', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('490', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402051', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('491', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402052', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('492', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402054', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('493', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402055', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('494', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402060', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('495', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402060', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('496', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402061', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('497', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402061', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('498', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402061', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('499', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402062', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('500', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402062', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('501', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402062', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('502', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402065', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('503', '34', '1', '233', '0', '0', '123133123', '', '0', '1609402065', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('504', '34', '1', '233', '0', '0', '1231331233333', '', '0', '1609402069', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('505', '34', '1', '233', '0', '0', '1231331233333', '', '0', '1609402070', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('506', '34', '1', '233', '0', '0', '1231331233333', '', '0', '1609402070', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('507', '1', '1', '233', '0', '0', '123', '', '0', '1609402404', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('508', '1', '1', '233', '0', '0', '1123', '', '0', '1609402406', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('509', '1', '1', '233', '0', '0', '312313', '', '0', '1609402409', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('510', '1', '1', '233', '0', '0', '313132', '', '0', '1609402411', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('511', '1', '1', '233', '0', '0', '312313', '', '0', '1609402413', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('512', '1', '1', '233', '0', '0', '313132', '', '0', '1609402415', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('513', '1', '1', '233', '0', '0', '3132313131313', '', '0', '1609402418', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('514', '1', '1', '233', '0', '0', '112', '', '0', '1609402447', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('515', '1', '1', '233', '0', '0', '112', '', '0', '1609402462', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('516', '1', '1', '233', '0', '0', '3123123', '', '0', '1609402465', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('517', '1', '1', '233', '0', '0', '312312', '', '0', '1609402476', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('518', '1', '1', '233', '0', '0', '223', '', '0', '1609402479', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('519', '1', '1', '233', '0', '0', '123', '', '0', '1609402675', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('520', '1', '1', '233', '0', '0', '3322', '', '0', '1609402680', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('521', '1', '1', '233', '0', '0', '3313124', '', '0', '1609402682', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('522', '1', '1', '233', '0', '0', '1432536', '', '0', '1609402685', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('523', '1', '1', '233', '0', '0', '31312', '', '0', '1609402693', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('524', '1', '1', '233', '0', '0', '31232', '', '0', '1609402694', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('525', '1', '1', '233', '0', '0', '1312', '', '0', '1609402701', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('526', '1', '1', '233', '0', '0', '312313', '', '0', '1609402705', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('527', '1', '1', '233', '0', '0', '3123213', '', '0', '1609402709', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('528', '1', '1', '233', '0', '0', '1', '', '0', '1609402720', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('529', '1', '1', '233', '0', '0', 'ooooo\n', '', '0', '1609402809', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('530', '1', '1', '233', '0', '0', 'iiii', '', '0', '1609402813', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('531', '1', '1', '233', '0', '0', 'opopopop', '', '0', '1609402817', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('532', '1', '1', '233', '0', '0', 'opp', '', '0', '1609402820', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('533', '1', '1', '233', '0', '0', 'kioko', '', '0', '1609402823', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('534', '34', '1', '233', '0', '0', '123', '', '0', '1609402826', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('535', '34', '1', '233', '0', '0', '123', '', '0', '1609402836', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('536', '34', '1', '233', '0', '0', '123', '', '0', '1609402837', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('537', '34', '1', '233', '0', '0', '123', '', '0', '1609402838', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('538', '34', '1', '233', '0', '0', '123', '', '0', '1609402838', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('539', '1', '1', '233', '0', '0', 'ooo', '', '0', '1609402963', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('540', '1', '1', '233', '0', '0', 'ooo', '', '0', '1609402966', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('541', '1', '1', '233', '0', '0', '7788', '', '0', '1609402973', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('542', '1', '1', '233', '0', '0', '555', '', '0', '1609403116', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('543', '1', '1', '233', '0', '0', '666', '', '0', '1609403119', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('544', '1', '1', '233', '0', '0', '777', '', '0', '1609403121', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('545', '34', '1', '233', '0', '0', '312313', '', '0', '1609403481', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('546', '34', '1', '233', '0', '0', '313123', '', '0', '1609403484', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('547', '1', '1', '233', '0', '0', '3131313', '', '0', '1609403493', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('548', '1', '1', '233', '0', '0', '3123123', '', '0', '1609403494', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('549', '1', '1', '233', '0', '0', '123', '', '0', '1609403689', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('550', '1', '1', '233', '0', '0', '11232', '', '0', '1609403693', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('551', '34', '1', '233', '0', '0', '3131', '', '0', '1609403867', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('552', '1', '1', '233', '0', '0', 'www\n', '', '0', '1609403895', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('553', '1', '1', '233', '0', '0', 'wwqq', '', '0', '1609403897', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('554', '1', '1', '233', '0', '0', 'werw', '', '0', '1609403900', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('555', '1', '1', '233', '0', '0', 'wew', '', '0', '1609403910', '466', '2', '1');
INSERT INTO `cmf_live_chat` VALUES ('556', '33', '1', '233', '0', '0', 'tfff', '', '0', '1609405103', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('557', '34', '1', '233', '0', '0', '456789', '', '0', '1609406061', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('558', '34', '1', '233', '0', '0', '4242424', '', '0', '1609406066', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('559', '37', '1', '233', '0', '0', '123', '', '0', '1609407186', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('560', '37', '1', '233', '0', '0', '123456', '', '0', '1609407193', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('561', '37', '1', '233', '0', '0', '123456', '', '0', '1609407287', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('562', '37', '1', '233', '0', '0', '123456', '', '0', '1609407289', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('563', '37', '1', '233', '0', '0', '123456', '', '0', '1609407291', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('564', '37', '1', '233', '0', '0', '123456', '', '0', '1609407295', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('565', '37', '1', '233', '0', '0', '123456', '', '0', '1609407299', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('566', '1', '1', '170', '0', '0', '同学们好\n', '', '0', '1609426488', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('567', '37', '1', '233', '0', '0', '123', '', '0', '1609649629', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('568', '37', '1', '233', '0', '0', '123123456', '', '0', '1609649634', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('569', '37', '1', '233', '0', '0', '123123456', '', '0', '1609649659', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('570', '37', '1', '233', '0', '0', '123123456', '', '0', '1609649660', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('571', '34', '1', '233', '0', '0', '1', '', '0', '1609652229', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('572', '34', '1', '233', '0', '0', '12', '', '0', '1609652233', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('573', '34', '1', '233', '0', '0', '12', '', '0', '1609652234', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('574', '34', '1', '233', '0', '0', '12', '', '0', '1609652234', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('575', '34', '1', '233', '0', '0', '12', '', '0', '1609652235', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('576', '34', '1', '233', '0', '0', '12', '', '0', '1609652235', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('577', '34', '1', '233', '0', '0', '12', '', '0', '1609652235', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('578', '34', '1', '233', '0', '0', '12', '', '0', '1609652237', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('579', '34', '1', '233', '0', '0', '12', '', '0', '1609652239', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('580', '34', '1', '233', '0', '0', '123', '', '0', '1609652242', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('581', '34', '1', '233', '0', '0', '123', '', '0', '1609652242', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('582', '34', '1', '233', '0', '0', '123', '', '0', '1609652244', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('583', '34', '1', '233', '0', '0', '123', '', '0', '1609652244', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('584', '34', '1', '233', '0', '0', '123', '', '0', '1609652245', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('585', '34', '1', '233', '0', '0', '1', '', '0', '1609652334', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('586', '34', '1', '233', '0', '0', '1', '', '0', '1609652425', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('587', '34', '1', '233', '0', '0', '1', '', '0', '1609653828', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('588', '34', '1', '233', '0', '0', '1', '', '0', '1609653829', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('589', '34', '1', '233', '0', '0', '1', '', '0', '1609653830', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('590', '34', '1', '233', '0', '0', '1', '', '0', '1609653830', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('591', '34', '1', '233', '0', '0', '1', '', '0', '1609653831', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('592', '34', '1', '233', '0', '0', '1', '', '0', '1609653831', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('593', '34', '1', '233', '0', '0', '1', '', '0', '1609653832', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('594', '34', '1', '233', '0', '0', '1', '', '0', '1609653832', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('595', '34', '1', '233', '0', '0', '1', '', '0', '1609653833', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('596', '34', '1', '233', '0', '0', '1', '', '0', '1609653835', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('597', '34', '1', '233', '0', '0', '1', '', '0', '1609653840', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('598', '34', '1', '233', '0', '0', '1', '', '0', '1609654356', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('599', '34', '1', '233', '0', '0', '1', '', '0', '1609654358', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('600', '34', '1', '233', '0', '0', '1', '', '0', '1609654361', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('601', '34', '1', '233', '0', '0', '1', '', '0', '1609654361', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('602', '34', '1', '233', '0', '0', '1', '', '0', '1609654363', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('603', '34', '1', '233', '0', '0', '1', '', '0', '1609654364', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('604', '34', '1', '233', '0', '0', '1', '', '0', '1609654364', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('605', '34', '1', '233', '0', '0', '1', '', '0', '1609654364', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('606', '34', '1', '233', '0', '0', '1', '', '0', '1609654364', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('607', '34', '1', '233', '0', '0', '1', '', '0', '1609654365', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('608', '34', '1', '233', '0', '0', '1', '', '0', '1609654365', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('609', '34', '1', '233', '0', '0', '1', '', '0', '1609654365', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('610', '34', '1', '233', '0', '0', '1', '', '0', '1609654365', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('611', '34', '1', '233', '0', '0', '1', '', '0', '1609654367', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('612', '34', '1', '233', '0', '0', '1', '', '0', '1609654367', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('613', '34', '1', '233', '0', '0', '1', '', '0', '1609654368', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('614', '34', '1', '233', '0', '0', '1', '', '0', '1609654368', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('615', '34', '1', '233', '0', '0', '1', '', '0', '1609654368', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('616', '34', '1', '233', '0', '0', '1', '', '0', '1609654500', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('617', '34', '1', '233', '0', '0', '12', '', '0', '1609654502', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('618', '34', '1', '233', '0', '0', '1', '', '0', '1609654560', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('619', '34', '1', '233', '0', '0', '1', '', '0', '1609654561', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('620', '34', '1', '233', '0', '0', '1', '', '0', '1609654561', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('621', '34', '1', '233', '0', '0', '1', '', '0', '1609654562', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('622', '34', '1', '233', '0', '0', '12', '', '0', '1609654565', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('623', '34', '1', '233', '0', '0', '12', '', '0', '1609654681', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('624', '34', '1', '233', '0', '0', '12', '', '0', '1609654687', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('625', '34', '1', '233', '0', '0', '12', '', '0', '1609654694', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('626', '34', '1', '233', '0', '0', '12', '', '0', '1609654696', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('627', '34', '1', '233', '0', '0', '12', '', '0', '1609654700', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('628', '34', '1', '233', '0', '0', '12', '', '0', '1609654703', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('629', '34', '1', '233', '0', '0', '12', '', '0', '1609654706', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('630', '34', '1', '233', '0', '0', '12', '', '0', '1609654712', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('631', '34', '1', '233', '0', '0', '12', '', '0', '1609654721', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('632', '34', '1', '233', '0', '0', '12', '', '0', '1609654760', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('633', '34', '1', '233', '0', '0', '12', '', '0', '1609654763', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('634', '34', '1', '233', '0', '0', '12', '', '0', '1609654767', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('635', '34', '1', '233', '0', '0', '12', '', '0', '1609654767', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('636', '34', '1', '233', '0', '0', '12', '', '0', '1609654767', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('637', '34', '1', '233', '0', '0', '12', '', '0', '1609654767', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('638', '34', '1', '233', '0', '0', '12', '', '0', '1609654767', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('639', '34', '1', '233', '0', '0', '12', '', '0', '1609654768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('640', '34', '1', '233', '0', '0', '12', '', '0', '1609654768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('641', '34', '1', '233', '0', '0', '12', '', '0', '1609654768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('642', '34', '1', '233', '0', '0', '12', '', '0', '1609654768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('643', '34', '1', '233', '0', '0', '12', '', '0', '1609654768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('644', '34', '1', '233', '0', '0', '12', '', '0', '1609654769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('645', '34', '1', '233', '0', '0', '12', '', '0', '1609654769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('646', '34', '1', '233', '0', '0', '12', '', '0', '1609654769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('647', '34', '1', '233', '0', '0', '12', '', '0', '1609654769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('648', '34', '1', '233', '0', '0', '12', '', '0', '1609654769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('649', '34', '1', '233', '0', '0', '12', '', '0', '1609654770', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('650', '34', '1', '233', '0', '0', '123', '', '0', '1609655654', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('651', '34', '1', '233', '0', '0', '123', '', '0', '1609655677', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('652', '37', '1', '233', '0', '0', '123', '', '0', '1609656353', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('653', '37', '1', '233', '0', '0', '123456', '', '0', '1609656357', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('654', '37', '1', '233', '0', '0', '123456789', '', '0', '1609656361', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('655', '34', '1', '233', '0', '0', 'hhg', '', '0', '1609658907', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('656', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660496', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('657', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660500', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('658', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660501', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('659', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660502', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('660', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660503', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('661', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660504', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('662', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660505', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('663', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660505', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('664', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660506', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('665', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660507', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('666', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660508', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('667', '34', '1', '233', '0', '0', 'haa', '', '0', '1609660509', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('668', '51', '1', '233', '0', '0', '1', '', '0', '1609660994', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('669', '51', '1', '233', '0', '0', '1', '', '0', '1609660998', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('670', '51', '1', '233', '0', '0', '1', '', '0', '1609661009', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('671', '51', '1', '233', '0', '0', '1', '', '0', '1609661011', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('672', '51', '1', '233', '0', '0', '1', '', '0', '1609661013', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('673', '51', '1', '233', '0', '0', '1', '', '0', '1609661015', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('674', '51', '1', '233', '0', '0', '1', '', '0', '1609661025', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('675', '51', '1', '233', '0', '0', '1', '', '0', '1609661027', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('676', '51', '1', '233', '0', '0', '1', '', '0', '1609661028', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('677', '51', '1', '233', '0', '0', '1', '', '0', '1609661031', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('678', '51', '1', '233', '0', '0', '2', '', '0', '1609661036', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('679', '51', '1', '233', '0', '0', '2', '', '0', '1609661039', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('680', '51', '1', '233', '0', '0', '2', '', '0', '1609661044', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('681', '51', '1', '233', '0', '0', '2', '', '0', '1609661045', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('682', '51', '1', '233', '0', '0', '2', '', '0', '1609661047', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('683', '51', '1', '233', '0', '0', '1', '', '0', '1609661083', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('684', '51', '1', '233', '0', '0', '1', '', '0', '1609661084', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('685', '51', '1', '233', '0', '0', '1', '', '0', '1609661088', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('686', '51', '1', '233', '0', '0', '1', '', '0', '1609661090', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('687', '51', '1', '233', '0', '0', '1', '', '0', '1609661092', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('688', '51', '1', '233', '0', '0', '1', '', '0', '1609661094', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('689', '51', '1', '233', '0', '0', '1', '', '0', '1609661096', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('690', '51', '1', '233', '0', '0', '1', '', '0', '1609661097', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('691', '51', '1', '233', '0', '0', '1', '', '0', '1609661098', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('692', '51', '1', '233', '0', '0', '1', '', '0', '1609661100', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('693', '51', '1', '233', '0', '0', '1', '', '0', '1609661102', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('694', '51', '1', '233', '0', '0', '1', '', '0', '1609661104', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('695', '51', '1', '233', '0', '0', '2', '', '0', '1609661106', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('696', '51', '1', '233', '0', '0', '2', '', '0', '1609661107', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('697', '51', '1', '233', '0', '0', '2', '', '0', '1609661108', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('698', '51', '1', '233', '0', '0', '2', '', '0', '1609661111', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('699', '51', '1', '233', '0', '0', '2', '', '0', '1609661112', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('700', '51', '1', '233', '0', '0', '2', '', '0', '1609661114', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('701', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661330', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('702', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661332', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('703', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661335', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('704', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661337', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('705', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661339', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('706', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661341', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('707', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661343', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('708', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661344', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('709', '51', '1', '233', '0', '0', '1', '', '0', '1609661656', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('710', '51', '1', '233', '0', '0', '1', '', '0', '1609661657', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('711', '51', '1', '233', '0', '0', '1', '', '0', '1609661660', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('712', '51', '1', '233', '0', '0', '1', '', '0', '1609661661', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('713', '51', '1', '233', '0', '0', '1', '', '0', '1609661664', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('714', '51', '1', '233', '0', '0', '1', '', '0', '1609661664', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('715', '51', '1', '233', '0', '0', '1', '', '0', '1609661665', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('716', '51', '1', '233', '0', '0', '1', '', '0', '1609661666', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('717', '51', '1', '233', '0', '0', '1', '', '0', '1609661667', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('718', '51', '1', '233', '0', '0', '1', '', '0', '1609661669', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('719', '51', '1', '233', '0', '0', '1', '', '0', '1609661671', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('720', '51', '1', '233', '0', '0', '1', '', '0', '1609661672', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('721', '51', '1', '233', '0', '0', '1', '', '0', '1609661672', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('722', '51', '1', '233', '0', '0', '1', '', '0', '1609661672', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('723', '51', '1', '233', '0', '0', '1', '', '0', '1609661673', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('724', '51', '1', '233', '0', '0', '1', '', '0', '1609661674', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('725', '51', '1', '233', '0', '0', '1', '', '0', '1609661678', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('726', '51', '1', '233', '0', '0', '1', '', '0', '1609661680', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('727', '51', '1', '233', '0', '0', '1', '', '0', '1609661680', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('728', '51', '1', '233', '0', '0', '2', '', '0', '1609661682', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('729', '51', '1', '233', '0', '0', '2', '', '0', '1609661683', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('730', '51', '1', '233', '0', '0', '2', '', '0', '1609661684', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('731', '51', '1', '233', '0', '0', '2', '', '0', '1609661684', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('732', '51', '1', '233', '0', '0', '1', '', '0', '1609661743', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('733', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661746', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('734', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661747', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('735', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661748', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('736', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661749', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('737', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661749', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('738', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661749', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('739', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661752', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('740', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661752', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('741', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661752', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('742', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661752', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('743', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661753', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('744', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661755', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('745', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661755', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('746', '34', '1', '233', '0', '0', 'haa', '', '0', '1609661755', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('747', '51', '1', '233', '0', '0', '123', '', '0', '1609663184', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('748', '51', '1', '233', '0', '0', '123', '', '0', '1609663185', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('749', '51', '1', '233', '0', '0', '123', '', '0', '1609663185', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('750', '51', '1', '233', '0', '0', '123', '', '0', '1609663185', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('751', '51', '1', '233', '0', '0', '123', '', '0', '1609663186', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('752', '51', '1', '233', '0', '0', '123', '', '0', '1609663186', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('753', '51', '1', '233', '0', '0', '123', '', '0', '1609663186', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('754', '51', '1', '233', '0', '0', '123', '', '0', '1609663186', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('755', '51', '1', '233', '0', '0', '123', '', '0', '1609663186', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('756', '51', '1', '233', '0', '0', '123', '', '0', '1609663189', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('757', '51', '1', '233', '0', '0', '123', '', '0', '1609663189', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('758', '51', '1', '233', '0', '0', '123', '', '0', '1609663189', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('759', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('760', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('761', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('762', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('763', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('764', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('765', '51', '1', '233', '0', '0', '123', '', '0', '1609663190', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('766', '51', '1', '233', '0', '0', '123', '', '0', '1609663191', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('767', '51', '1', '233', '0', '0', '123', '', '0', '1609663191', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('768', '51', '1', '233', '0', '0', '123', '', '0', '1609663192', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('769', '51', '1', '233', '0', '0', '123', '', '0', '1609663192', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('770', '51', '1', '233', '0', '0', '123', '', '0', '1609663192', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('771', '51', '1', '233', '0', '0', '123', '', '0', '1609663192', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('772', '51', '1', '233', '0', '0', '123', '', '0', '1609663193', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('773', '51', '1', '233', '0', '0', '123', '', '0', '1609663193', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('774', '51', '1', '233', '0', '0', '123', '', '0', '1609663193', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('775', '51', '1', '233', '0', '0', '123', '', '0', '1609663193', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('776', '51', '1', '233', '0', '0', '123', '', '0', '1609663193', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('777', '51', '1', '233', '0', '0', '456', '', '0', '1609663196', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('778', '51', '1', '233', '0', '0', '456', '', '0', '1609663198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('779', '51', '1', '233', '0', '0', '456', '', '0', '1609663198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('780', '51', '1', '233', '0', '0', '456', '', '0', '1609663198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('781', '51', '1', '233', '0', '0', '456', '', '0', '1609663199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('782', '51', '1', '233', '0', '0', '456', '', '0', '1609663199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('783', '51', '1', '233', '0', '0', '456', '', '0', '1609663199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('784', '51', '1', '233', '0', '0', '456', '', '0', '1609663199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('785', '51', '1', '233', '0', '0', '456', '', '0', '1609663199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('786', '51', '1', '233', '0', '0', '456', '', '0', '1609663199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('787', '51', '1', '233', '0', '0', '456', '', '0', '1609663200', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('788', '51', '1', '233', '0', '0', '456', '', '0', '1609663200', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('789', '51', '1', '233', '0', '0', '456', '', '0', '1609663201', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('790', '51', '1', '233', '0', '0', '456', '', '0', '1609663201', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('791', '34', '1', '233', '0', '0', '1', '', '0', '1609665042', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('792', '34', '1', '233', '0', '0', '12', '', '0', '1609665045', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('793', '34', '1', '233', '0', '0', '12', '', '0', '1609665095', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('794', '34', '1', '233', '0', '0', '12', '', '0', '1609665101', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('795', '34', '1', '233', '0', '0', '12', '', '0', '1609665102', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('796', '34', '1', '233', '0', '0', '12', '', '0', '1609665103', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('797', '34', '1', '233', '0', '0', '12', '', '0', '1609665103', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('798', '34', '1', '233', '0', '0', '12', '', '0', '1609665103', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('799', '34', '1', '233', '0', '0', '12', '', '0', '1609665105', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('800', '34', '1', '233', '0', '0', '12', '', '0', '1609665107', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('801', '34', '1', '233', '0', '0', '12', '', '0', '1609665198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('802', '34', '1', '233', '0', '0', '12', '', '0', '1609665198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('803', '34', '1', '233', '0', '0', '12', '', '0', '1609665198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('804', '34', '1', '233', '0', '0', '12', '', '0', '1609665198', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('805', '34', '1', '233', '0', '0', '12', '', '0', '1609665199', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('806', '34', '1', '233', '0', '0', '12', '', '0', '1609665200', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('807', '34', '1', '233', '0', '0', '12', '', '0', '1609665200', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('808', '34', '1', '233', '0', '0', '12', '', '0', '1609665200', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('809', '34', '1', '233', '0', '0', '12', '', '0', '1609665201', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('810', '34', '1', '233', '0', '0', '12', '', '0', '1609665204', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('811', '34', '1', '233', '0', '0', '12', '', '0', '1609665209', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('812', '34', '1', '233', '0', '0', '12', '', '0', '1609665258', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('813', '34', '1', '233', '0', '0', '12', '', '0', '1609665258', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('814', '34', '1', '233', '0', '0', '12', '', '0', '1609665258', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('815', '34', '1', '233', '0', '0', '12', '', '0', '1609665258', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('816', '34', '1', '233', '0', '0', '12', '', '0', '1609665259', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('817', '34', '1', '233', '0', '0', '12', '', '0', '1609665259', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('818', '34', '1', '233', '0', '0', '12', '', '0', '1609665260', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('819', '34', '1', '233', '0', '0', '12', '', '0', '1609665264', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('820', '34', '1', '233', '0', '0', '12', '', '0', '1609665265', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('821', '34', '1', '233', '0', '0', '12', '', '0', '1609665383', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('822', '34', '1', '233', '0', '0', '12', '', '0', '1609665383', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('823', '34', '1', '233', '0', '0', '12', '', '0', '1609665383', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('824', '34', '1', '233', '0', '0', '12', '', '0', '1609665384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('825', '34', '1', '233', '0', '0', '12', '', '0', '1609665384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('826', '34', '1', '233', '0', '0', '12', '', '0', '1609665384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('827', '34', '1', '233', '0', '0', '12', '', '0', '1609665384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('828', '34', '1', '233', '0', '0', '12', '', '0', '1609665384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('829', '34', '1', '233', '0', '0', '12', '', '0', '1609665384', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('830', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('831', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('832', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('833', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('834', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('835', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('836', '34', '1', '233', '0', '0', '12', '', '0', '1609665385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('837', '34', '1', '233', '0', '0', '12', '', '0', '1609665386', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('838', '34', '1', '233', '0', '0', '12', '', '0', '1609665386', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('839', '34', '1', '233', '0', '0', '12', '', '0', '1609665386', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('840', '34', '1', '233', '0', '0', '12', '', '0', '1609665387', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('841', '34', '1', '233', '0', '0', '12', '', '0', '1609665488', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('842', '34', '1', '233', '0', '0', '12', '', '0', '1609665488', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('843', '34', '1', '233', '0', '0', '12', '', '0', '1609665488', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('844', '34', '1', '233', '0', '0', '12', '', '0', '1609665488', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('845', '34', '1', '233', '0', '0', '12', '', '0', '1609665489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('846', '34', '1', '233', '0', '0', '12', '', '0', '1609665489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('847', '34', '1', '233', '0', '0', '12', '', '0', '1609665489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('848', '34', '1', '233', '0', '0', '12', '', '0', '1609665489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('849', '34', '1', '233', '0', '0', '12', '', '0', '1609665489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('850', '34', '1', '233', '0', '0', '12', '', '0', '1609665489', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('851', '34', '1', '233', '0', '0', '12', '', '0', '1609665490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('852', '34', '1', '233', '0', '0', '12', '', '0', '1609665490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('853', '34', '1', '233', '0', '0', '12', '', '0', '1609665490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('854', '34', '1', '233', '0', '0', '12', '', '0', '1609665490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('855', '34', '1', '233', '0', '0', '12', '', '0', '1609665490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('856', '34', '1', '233', '0', '0', '12', '', '0', '1609665490', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('857', '34', '1', '233', '0', '0', '12', '', '0', '1609665491', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('858', '34', '1', '233', '0', '0', '12', '', '0', '1609665491', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('859', '34', '1', '233', '0', '0', '12', '', '0', '1609665491', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('860', '34', '1', '233', '0', '0', '12', '', '0', '1609665760', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('861', '34', '1', '233', '0', '0', '12', '', '0', '1609665760', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('862', '34', '1', '233', '0', '0', '12', '', '0', '1609665761', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('863', '34', '1', '233', '0', '0', '12', '', '0', '1609665761', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('864', '34', '1', '233', '0', '0', '12', '', '0', '1609665761', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('865', '34', '1', '233', '0', '0', '12', '', '0', '1609665761', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('866', '34', '1', '233', '0', '0', '12', '', '0', '1609665761', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('867', '34', '1', '233', '0', '0', '12', '', '0', '1609665761', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('868', '34', '1', '233', '0', '0', '12', '', '0', '1609665766', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('869', '34', '1', '233', '0', '0', '12', '', '0', '1609665768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('870', '34', '1', '233', '0', '0', '12', '', '0', '1609665768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('871', '34', '1', '233', '0', '0', '12', '', '0', '1609665768', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('872', '34', '1', '233', '0', '0', '12', '', '0', '1609665769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('873', '34', '1', '233', '0', '0', '12', '', '0', '1609665769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('874', '34', '1', '233', '0', '0', '12', '', '0', '1609665769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('875', '34', '1', '233', '0', '0', '12', '', '0', '1609665769', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('876', '34', '1', '233', '0', '0', '12', '', '0', '1609665771', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('877', '34', '1', '233', '0', '0', '12', '', '0', '1609665771', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('878', '34', '1', '233', '0', '0', '12', '', '0', '1609665771', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('879', '34', '1', '233', '0', '0', '12', '', '0', '1609665771', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('880', '34', '1', '233', '0', '0', '12', '', '0', '1609665771', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('881', '34', '1', '233', '0', '0', '12', '', '0', '1609665772', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('882', '34', '1', '233', '0', '0', '12', '', '0', '1609665772', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('883', '34', '1', '233', '0', '0', '12', '', '0', '1609665772', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('884', '34', '1', '233', '0', '0', '12', '', '0', '1609666891', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('885', '27', '1', '29', '0', '0', '11', '', '0', '1609732830', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('886', '39', '1', '25', '0', '0', '1', '', '0', '1609743216', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('887', '27', '1', '25', '0', '0', '111', '', '0', '1609743478', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('888', '1', '1', '170', '0', '0', '1', '', '0', '1609745607', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('889', '27', '1', '25', '0', '0', 'hello', '', '0', '1609749150', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('890', '27', '1', '17', '0', '0', '999', '', '0', '1609754299', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('891', '1', '1', '190', '0', '0', '手动阀手动阀 ', '', '0', '1609809917', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('892', '1', '1', '190', '0', '0', '同学们好啊\n', '', '0', '1609809928', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('893', '1', '1', '234', '0', '0', '厅\n', '', '0', '1609839368', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('894', '1', '1', '190', '0', '0', '可以看到吗\n', '', '0', '1609867250', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('895', '27', '1', '190', '0', '0', '哈公司附近很尬手机号\n\n', '', '0', '1609867329', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('896', '27', '1', '190', '0', '0', '撒大', '', '0', '1609867341', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('897', '27', '1', '29', '0', '0', '45', '', '0', '1609894955', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('898', '27', '1', '29', '0', '0', '67', '', '0', '1609894962', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('899', '27', '1', '29', '0', '0', '89', '', '0', '1609894967', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('900', '1', '1', '235', '0', '0', '同学们好', '', '0', '1609896242', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('901', '27', '1', '235', '0', '0', '我说话呢', '', '0', '1609896350', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('902', '27', '1', '235', '0', '0', '哈哈哈', '', '0', '1609896356', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('903', '27', '1', '235', '0', '0', '不行', '', '0', '1609896361', '0', '1', '0');
INSERT INTO `cmf_live_chat` VALUES ('904', '1', '1', '235', '0', '0', '还可以', '', '0', '1609896383', '903', '2', '1');
INSERT INTO `cmf_live_chat` VALUES ('905', '1', '1', '235', '0', '0', '33333', '', '0', '1609896574', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('906', '1', '1', '235', '0', '0', '有新的老师在吗', '', '0', '1609896597', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('907', '27', '1', '235', '0', '0', 'qq', '', '0', '1609896995', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('908', '27', '1', '235', '0', '0', 'bbb ', '', '0', '1609897008', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('909', '27', '1', '235', '0', '0', 'bbb hjhv ', '', '0', '1609897029', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('910', '27', '1', '235', '0', '0', 'hjjj ', '', '0', '1609897069', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('911', '27', '1', '235', '0', '0', 'nih ', '', '0', '1609897077', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('912', '27', '1', '235', '0', '0', 'nih vbb ', '', '0', '1609897086', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('913', '27', '1', '235', '0', '0', 'nin ', '', '0', '1609897240', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('914', '1', '1', '235', '0', '0', '黄金大劫案\n\n', '', '0', '1609897372', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('915', '27', '1', '235', '0', '0', 'OK\n', '', '0', '1609897385', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('916', '27', '1', '235', '0', '0', 'OK', '', '0', '1609897392', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('917', '27', '1', '235', '0', '0', 'okok', '', '0', '1609897441', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('918', '1', '1', '235', '0', '0', '飒飒', '', '0', '1609913294', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('919', '1', '1', '235', '0', '0', '有人在的？\n', '', '0', '1609913308', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('920', '1', '1', '235', '0', '0', '我giao', '', '0', '1609913315', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('921', '1', '1', '235', '0', '0', '撒旦', '', '0', '1609913463', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('922', '1', '1', '235', '0', '0', '方法', '', '0', '1609922893', '903', '2', '1');
INSERT INTO `cmf_live_chat` VALUES ('923', '1', '1', '235', '0', '0', '好的\n', '', '0', '1609922905', '903', '2', '1');
INSERT INTO `cmf_live_chat` VALUES ('924', '1', '1', '235', '0', '0', '是啥', '', '0', '1609922911', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('925', '1', '1', '235', '0', '0', '订单', '', '0', '1609922914', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('926', '1', '1', '235', '0', '0', '666', '', '0', '1609926942', '0', '0', '1');
INSERT INTO `cmf_live_chat` VALUES ('927', '27', '1', '16', '0', '0', '6366', '', '0', '1609927043', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('928', '27', '1', '235', '0', '0', '5555', '', '0', '1609927111', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('929', '27', '1', '235', '0', '0', '111', '', '0', '1609927187', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('930', '27', '1', '235', '0', '0', '日头发', '', '0', '1609927213', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('931', '67', '1', '16', '0', '0', '222\n', '', '0', '1610072322', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('932', '27', '1', '18', '0', '0', 'cxd', '', '0', '1610081581', '0', '0', '0');
INSERT INTO `cmf_live_chat` VALUES ('933', '27', '1', '18', '0', '0', 'cxd', '', '0', '1610081586', '0', '0', '0');

-- ----------------------------
-- Table structure for cmf_live_kick
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_kick`;
CREATE TABLE `cmf_live_kick` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `liveuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessonid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  `operateuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作人ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_live_kick
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_live_shutup
-- ----------------------------
DROP TABLE IF EXISTS `cmf_live_shutup`;
CREATE TABLE `cmf_live_shutup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `liveuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '讲师ID',
  `courseid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `lessonid` bigint(20) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  `operateuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '操作人ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_live_shutup
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_message
-- ----------------------------
DROP TABLE IF EXISTS `cmf_message`;
CREATE TABLE `cmf_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型，0系统消息1课程动态2讲师动态',
  `touid` longtext COMMENT '推送对象',
  `adminid` bigint(20) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  `ip` bigint(20) NOT NULL DEFAULT '0' COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cmf_message
-- ----------------------------
INSERT INTO `cmf_message` VALUES ('1', '0', '', '1', 'admin', '1', '1609931831', '466204272');
INSERT INTO `cmf_message` VALUES ('2', '0', '', '1', 'admin', '23', '1609931881', '466204272');
INSERT INTO `cmf_message` VALUES ('3', '0', '', '1', 'admin', '1', '1609931911', '466204272');
INSERT INTO `cmf_message` VALUES ('4', '0', '', '1', 'admin', '123', '1609931985', '466204272');

-- ----------------------------
-- Table structure for cmf_news
-- ----------------------------
DROP TABLE IF EXISTS `cmf_news`;
CREATE TABLE `cmf_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '新闻标题',
  `content` text COMMENT '内容',
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(11) DEFAULT '0' COMMENT '修改时间',
  `thumb` varchar(255) DEFAULT '' COMMENT '图片地址',
  `list_order` int(11) DEFAULT '10000' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of cmf_news
-- ----------------------------
INSERT INTO `cmf_news` VALUES ('2', '迎迎小班子的服务指南1', '<table><colgroup><col width=\"65\" style=\"width: 65px;\"/><col width=\"71\" style=\"width: 71px;\"/><col width=\"72\" style=\"width: 72px;\"/><col width=\"72\" style=\"width: 72px;\"/><col width=\"644\" style=\"width: 644px;\"/></colgroup><tbody><tr style=\"height: 24px;\" class=\"firstRow\"><td colspan=\"1\" rowspan=\"37\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; white-space: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">迎迎<br/>培训班</td><td colspan=\"1\" rowspan=\"22\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">服务</td><td colspan=\"1\" rowspan=\"6\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">迎宾服务</td><td colspan=\"1\" rowspan=\"3\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">等位期间</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">接待热情/耐心程度</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">提供免费茶水、小吃</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">免费项目介绍、积极揽客</td></tr><tr style=\"height: 24px;\"><td colspan=\"1\" rowspan=\"3\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">迎客入座</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">有引领动作，介绍培训中心各个地点位置(卫生间、收银台、自助台等)</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">耐心程度(三步一回头、微笑服务)</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">自我介绍、帮提重物等</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"5\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">咨询服务</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">课程介绍、老师介绍(询问对什么课程感兴趣)</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">入座:茶水、客用品(纸巾、糖果)的齐全</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">协助选课:介绍最新活动与课程，根据小朋友爱好推荐</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">询问关注点:课程、价格、教学规划等</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">核对选课:是否有遗漏</td></tr><tr style=\"height: 24px;\"><td colspan=\"1\" rowspan=\"4\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">课程服务</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">上课提醒</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">报课名、课程进度通知、特殊课程的温馨提示(需家长配合、需自带工具等)</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">课程速度</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">语速、上课速度、学期结课速度</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">巡课服务</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">签到、废料的及时撤走、桌面卫生维护</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">正确上课</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">是否存在上错课/漏上课情况</td></tr><tr style=\"height: 24px;\"><td colspan=\"1\" rowspan=\"6\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">推销服务</td><td colspan=\"1\" rowspan=\"4\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">买单</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">账单正确性，付款方式的询问</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">核对账单的及时性</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">发票开具的主动性</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">结账过程的准确、高效性</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">课后服务</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">回复家长的及时性</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">送客服务</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">温馨提示、携带好随身物品</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">电话预定</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">接听速度、自我介绍、说话语气、留客意识、预约复述、礼貌用语</td></tr><tr style=\"height: 24px;\"><td colspan=\"1\" rowspan=\"4\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">产品</td><td colspan=\"2\" rowspan=\"4\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\"><br/></td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">出品材料无破损、表面整洁无污渍</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">材料工具摆放、外观、视觉、美感</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">课程口头评价</td></tr><tr style=\"height: 24px;\"><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">课程品质:无错误、缺点，时尚类没有不新鲜、过时、无趣等</td></tr><tr style=\"height: 24px;\"><td colspan=\"1\" rowspan=\"4\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">环境卫生</td><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">培训中心外部</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">地面、玻璃、海报、店铺招牌、灯光</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">客用区域</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">桌面、工具、墙面、传单、立柱、死角、室内装饰物、天花板卫生、植物旺盛度</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">洗手间</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">环境整洁干净度，设备(洗手台、便池等)供应充足，易耗品(擦手纸、卫生纸、洗手液供应充足）</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">舒适度</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">音乐声音大小、环境是否吵闹、灯光明亮、空气清新无明显害虫、温度适中、环境氛围</td></tr><tr style=\"height: 24px;\"><td colspan=\"1\" rowspan=\"7\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">员工行为</td><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">服务态度</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">积极、热情</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">及时服务</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">对要求及时回应、满足</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">搭档搭配</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">前台与老师、顾问与老师</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">员工仪表</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">面容、工牌、工衣整洁大气，精神程度</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">言行规范</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">粗口、脏话</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">服务专业性/用心程度</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">热情礼貌、微笑服务、用心程度、主动服务意识、增值性服务</td></tr><tr style=\"height: 24px;\"><td colspan=\"2\" rowspan=\"1\" style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0); text-align: center;\">行为举止</td><td style=\"empty-cells: show; line-height: normal; vertical-align: middle; outline-width: 0px; overflow-wrap: break-word; word-break: normal; font-size: 11pt; font-family: 宋体; border-width: 0.5pt; border-color: rgb(0, 0, 0);\">打闹嬉笑、扎堆聊天等</td></tr></tbody></table><p><br/></p>', '10', '1615022132', '0', 'admin/20201209/93ae74b4985410d370bf7fdaeeedd87e.png', '10000');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `option_name` (`option_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES ('1', '1', 'site_info', '{\"site_name\":\"\\u8fce\\u8fce\\u7684\\u5c0f\\u73ed\\u5b50\",\"site_seo_title\":\"\\u827a\\u672f\\u57f9\\u8bad\\u4e2d\\u5fc3\",\"site_seo_keywords\":\"\\u827a\\u672f\\u57f9\\u8bad\",\"site_seo_description\":\"\\u57f9\\u8bad\\u73ed\",\"site_icp\":\"\",\"site_gwa\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"site_url\":\"http:\\/\\/127.0.0.1\",\"copyright\":\"\\u9633\\u9633\\u5f00\\u53d1\\u8005\",\"apk_ver\":\"\",\"apk_url\":\"\",\"apk_des\":\"\\u7248\\u672c\\u66f4\\u65b0\\uff0c\\u662f\\u5426\\u524d\\u5f80\\u66f4\\u65b0\\uff1f\",\"ipa_ver\":\"\",\"ios_shelves\":\"\",\"ipa_url\":\"\",\"ipa_des\":\"\\u7248\\u672c\\u66f4\\u65b0\\uff0c\\u662f\\u5426\\u524d\\u5f80\\u66f4\\u65b0\\uff1f\",\"qr_url\":\"\",\"site_phone\":\"13716864516\",\"wx_url\":\"admin\\/20230504\\/4d316479e0d07a0616bd4091d479c3d3.jpg\"}');
INSERT INTO `cmf_option` VALUES ('2', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES ('3', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES ('4', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_theme\":\"admin_htcyltd\",\"admin_style\":\"flatadmin\"}');
INSERT INTO `cmf_option` VALUES ('5', '1', 'storage', '{\"storages\":{\"Qiniu\":{\"name\":\"\\u4e03\\u725b\\u4e91\\u5b58\\u50a8\",\"driver\":\"\\\\plugins\\\\qiniu\\\\lib\\\\Qiniu\"}},\"type\":\"Local\"}');
INSERT INTO `cmf_option` VALUES ('6', '1', 'upload_setting', '{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"10240000\",\"extensions\":\"mp4\"},\"audio\":{\"upload_max_filesize\":\"1024000\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"1024000\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar,php\"}}}');
INSERT INTO `cmf_option` VALUES ('7', '1', 'configpri', '{\"sendcode_switch\":\"0\",\"ccp_sid\":\"\",\"ccp_token\":\"\",\"ccp_appid\":\"\",\"ccp_tempid\":\"\",\"aliapp_switch\":\"1\",\"aliapp_partner\":\"\",\"aliapp_seller_id\":\"\",\"aliapp_key\":\"\",\"wx_switch\":\"1\",\"wx_appid\":\"\",\"wx_appsecret\":\"\",\"wx_mchid\":\"\",\"wx_key\":\"\",\"ios_switch\":\"0\",\"login_type\":\"QQ,wx\",\"share_type\":\"qq,qzone\",\"chatserver\":\"http:\\/\\/demo.sdwanyue.com:19967\",\"jpush_sandbox\":\"0\",\"jpush_key\":\"\",\"jpush_secret\":\"\",\"sound_appid\":\"\",\"netless_sdktoken\":\"\",\"wx_appid_pc\":\"wx7ead9f604df6637f\",\"wx_appsecret_pc\":\"53b115e28204a2672924abe459cb6efb\",\"tx_api_secretid\":\"\",\"tx_api_secretkey\":\"\",\"tx_sms_sdkappid\":\"\",\"tx_sms_sign\":\"\",\"tx_sms_tempid\":\"\",\"agora_api_id\":\"\",\"agora_api_key\":\"\",\"netless_appid\":\"\",\"app_key\":\"\",\"app_secret\":\"\",\"alipc_switch\":\"1\",\"wxpc_switch\":\"1\",\"aliapp_check\":\"\",\"pc_wx_appid\":\"\",\"pc_wx_appsecret\":\"\",\"pc_wx_mchid\":\"\",\"pc_wx_key\":\"\"}');

-- ----------------------------
-- Table structure for cmf_orders
-- ----------------------------
DROP TABLE IF EXISTS `cmf_orders`;
CREATE TABLE `cmf_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式，1支付宝2微信',
  `orderno` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `trade_no` varchar(255) NOT NULL DEFAULT '' COMMENT '三方订单号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态，0待支付1已支付',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `paytime` bigint(20) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `addr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人',
  `addr_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  `addr_province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `addr_city` varchar(255) NOT NULL DEFAULT '' COMMENT '市',
  `addr_area` varchar(255) NOT NULL DEFAULT '' COMMENT '区',
  `addr` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `issend` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '是否发货-1不需要0否1是',
  `sendtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '发货时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_orders
-- ----------------------------
INSERT INTO `cmf_orders` VALUES ('109', '27', '100.00', '2', '27_210108102442290', '', '0', '1610072682', '0', '', '', '', '', '', '', '-1', '0');
INSERT INTO `cmf_orders` VALUES ('110', '27', '100.00', '1', '27_210108102444962', '', '0', '1610072684', '0', '', '', '', '', '', '', '-1', '0');
INSERT INTO `cmf_orders` VALUES ('111', '27', '100.00', '1', '27_210108102933974', '', '0', '1610072973', '0', '', '', '', '', '', '', '-1', '0');
INSERT INTO `cmf_orders` VALUES ('112', '27', '100.00', '1', '27_210108222100445', '', '0', '1610115660', '0', '', '', '', '', '', '', '-1', '0');

-- ----------------------------
-- Table structure for cmf_orders_good
-- ----------------------------
DROP TABLE IF EXISTS `cmf_orders_good`;
CREATE TABLE `cmf_orders_good` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `orderno` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型，0课程1套餐',
  `typeid` bigint(20) NOT NULL DEFAULT '0' COMMENT '类型对应的ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_orders_good
-- ----------------------------
INSERT INTO `cmf_orders_good` VALUES ('1', '15', '15_201014165013749', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('2', '15', '15_201014165157382', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('3', '15', '15_201014165201721', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('4', '15', '15_201014165218854', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('5', '15', '15_201014165708918', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('6', '15', '15_201014165730599', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('7', '15', '15_201014165738583', '0', '3');
INSERT INTO `cmf_orders_good` VALUES ('8', '2', '2_201021172818921', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('9', '2', '2_201102110209422', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('10', '2', '2_201102110215689', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('11', '2', '2_201102110306688', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('12', '2', '2_201102110308933', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('13', '2', '2_201102110334204', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('14', '2', '2_201102110338819', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('15', '2', '2_201102110424356', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('16', '2', '2_201102110426447', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('17', '2', '2_201102111502282', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('18', '2', '2_201102111505747', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('19', '2', '2_201102111737112', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('20', '2', '2_201102111739314', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('21', '2', '2_201102111934554', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('22', '2', '2_201102111936527', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('23', '2', '2_201102112121975', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('24', '2', '2_201102112123772', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('25', '2', '2_201102112231914', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('26', '2', '2_201102112233339', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('27', '2', '2_201102112246516', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('28', '2', '2_201102112247396', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('29', '2', '2_201102112343573', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('30', '2', '2_201102112345272', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('31', '2', '2_201102112414440', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('32', '2', '2_201102112417515', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('33', '2', '2_201102112601178', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('34', '2', '2_201102112640610', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('35', '2', '2_201102112642882', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('36', '2', '2_201102112848422', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('37', '2', '2_201102112852261', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('38', '2', '2_201102113846779', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('39', '2', '2_201102113848103', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('40', '2', '2_201102114056440', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('41', '2', '2_201102114059558', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('42', '2', '2_201102164713534', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('43', '2', '2_201102164715947', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('44', '2', '2_201102164731684', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('45', '2', '2_201102164733408', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('46', '2', '2_201102164846777', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('47', '2', '2_201102164847869', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('48', '2', '2_201102164848731', '0', '50');
INSERT INTO `cmf_orders_good` VALUES ('49', '2', '2_201102164931651', '0', '44');
INSERT INTO `cmf_orders_good` VALUES ('50', '28', '28_201210151032611', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('51', '28', '28_201210151036739', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('52', '28', '28_201210151434414', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('53', '28', '28_201210151435670', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('54', '28', '28_201210151501728', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('55', '1', '1_201210152506541', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('56', '1', '1_201210152515706', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('57', '1', '1_201210152547217', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('58', '1', '1_201210154239415', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('59', '1', '1_201210154352704', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('60', '1', '1_201210154400624', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('61', '1', '1_201210154405823', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('62', '27', '27_201210170217801', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('63', '27', '27_201212145837665', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('64', '27', '27_201212145839573', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('65', '27', '27_201212151708236', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('66', '27', '27_201221132922243', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('67', '27', '27_201221203537438', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('68', '27', '27_201221203538745', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('69', '27', '27_201221203545841', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('70', '27', '27_201224101859664', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('71', '27', '27_201224101902285', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('72', '27', '27_201228151619480', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('73', '27', '27_201231084946820', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('74', '27', '27_201231161131771', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('75', '27', '27_201231165717719', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('76', '27', '27_201231165718662', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('77', '27', '27_210103092802826', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('78', '27', '27_210103151402879', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('79', '27', '27_210103192152646', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('80', '27', '27_210104095132613', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('81', '27', '27_210104095134324', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('82', '54', '54_210104140334362', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('83', '54', '54_210104140338375', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('84', '27', '27_210104143204726', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('85', '27', '27_210104143209261', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('86', '56', '56_210104154446659', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('87', '27', '27_210104162003360', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('88', '27', '27_210104162637204', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('89', '27', '27_210104162638318', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('90', '27', '27_210105092120267', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('91', '27', '27_210105100627809', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('92', '27', '27_210105101931335', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('93', '27', '27_210105102122649', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('94', '27', '27_210105160753380', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('95', '27', '27_210105160757337', '0', '224');
INSERT INTO `cmf_orders_good` VALUES ('96', '27', '27_210106085347703', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('97', '27', '27_210106085348640', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('98', '27', '27_210106113811113', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('99', '27', '27_210106164552850', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('100', '27', '27_210106205719468', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('101', '27', '27_210107122754883', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('102', '27', '27_210107122757814', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('103', '27', '27_210107165557310', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('104', '27', '27_210107165559496', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('105', '27', '27_210107180457296', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('106', '27', '27_210107180459915', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('107', '27', '27_210107202543566', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('108', '27', '27_210107202545850', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('109', '27', '27_210108102442290', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('110', '27', '27_210108102444962', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('111', '27', '27_210108102933974', '0', '220');
INSERT INTO `cmf_orders_good` VALUES ('112', '27', '27_210108222100445', '0', '220');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES ('2', '1', '0', '1', '0', 'Qiniu', '七牛云存储', '', '', 'ThinkCMF', '', '1.0.1', 'ThinkCMF七牛专享优惠码:507670e8', '{\"accessKey\":\"\",\"secretKey\":\"\",\"protocol\":\"http\",\"domain\":\"\",\"bucket\":\"\",\"zone\":\"http\"}');

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', '帮助中心', '讲师端帮助132', '0-1', '', '', '', 'list', 'article', '{\"thumbnail\":\"portal\\/20200415\\/6f735ef9841af07021491e56ac5f480f.jpg\"}');
INSERT INTO `cmf_portal_category` VALUES ('2', '0', '0', '1', '1587887691', '10000', '常见问题', '常见问题疑难解答', '0-2', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('3', '0', '0', '1', '0', '10001', '视频课程', '', '0-3', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('4', '0', '0', '1', '0', '10000', '运用支持', '运用方面的相关问题集', '0-4', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('5', '0', '0', '1', '1599794405', '10000', 'das', 'fsadc', '0-5', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('6', '0', '0', '1', '0', '10000', '爱神的箭', '123', '0-6', '', '', '', 'list', 'article', '{\"thumbnail\":\"admin\\/20201229\\/ec631e65562aa75eac117dccbd3fa824.jpg\"}');

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `term_taxonomy_id` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
INSERT INTO `cmf_portal_category_post` VALUES ('2', '5', '1', '10000', '0');
INSERT INTO `cmf_portal_category_post` VALUES ('3', '6', '1', '10000', '0');
INSERT INTO `cmf_portal_category_post` VALUES ('4', '4', '3', '10000', '0');
INSERT INTO `cmf_portal_category_post` VALUES ('5', '5', '3', '10000', '0');
INSERT INTO `cmf_portal_category_post` VALUES ('6', '6', '1', '10000', '0');
INSERT INTO `cmf_portal_category_post` VALUES ('7', '8', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('8', '9', '6', '10000', '1');

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型，0单页1关于我们',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES ('4', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1608540010', '1608540018', '1610005053', '1683965101', '光棍节和', '而特特', '特热', '委托人日e', '', '&lt;p&gt;儿童特特特特也ueytert&lt;img src=&quot;default/20201221/6d2398be551400381a4ea32fba1042fc.jpg&quot; title=&quot;u=3363295869,2467511306&amp;amp;fm=26&amp;amp;gp=0.jpg&quot; alt=&quot;u=3363295869,2467511306&amp;amp;fm=26&amp;amp;gp=0.jpg&quot;&gt;&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}', '0');
INSERT INTO `cmf_portal_post` VALUES ('5', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1609206260', '1609206260', '1609206292', '1609206311', '数学', '123', '123', '123', '', '&lt;p&gt;123&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}', '0');
INSERT INTO `cmf_portal_post` VALUES ('6', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1609983684', '1609983684', '1609948800', '1609983700', '123', '123', '13', '123', '', '&lt;p&gt;123&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}', '0');
INSERT INTO `cmf_portal_post` VALUES ('7', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1609991826', '1683274156', '1683216000', '0', '123', '', '', '', '', '&lt;p&gt;123123&lt;/p&gt;', null, '{\"thumbnail\":\"\",\"template\":\"\"}', '0');
INSERT INTO `cmf_portal_post` VALUES ('8', '0', '1', '1', '2', '1', '1', '0', '0', '0', '0', '0', '0', '1610027037', '1610027037', '1610095279', '0', 'qqqq', 'qqqq', 'qqq', 'qqq', '', '&lt;p&gt;qqqq&lt;/p&gt;', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\"}', '0');
INSERT INTO `cmf_portal_post` VALUES ('9', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1683965418', '1683965453', '1683965485', '0', '图片测试1', '图片1', '这是摘要1', '百度1', 'admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg', '\n&lt;p&gt;&lt;img src=&quot;admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg&quot; title=&quot;迎迎.jpg&quot; alt=&quot;迎迎.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;这是内容1&lt;/p&gt;\n', null, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"admin\\/20230429\\/fbed4627a194ea1ba9edffe3310ed0c8.jpg\"}', '0');

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------
INSERT INTO `cmf_portal_tag` VALUES ('1', '1', '0', '0', '化学');
INSERT INTO `cmf_portal_tag` VALUES ('2', '1', '0', '0', '语文');
INSERT INTO `cmf_portal_tag` VALUES ('3', '1', '0', '0', '英语');
INSERT INTO `cmf_portal_tag` VALUES ('4', '1', '0', '0', '66666');
INSERT INTO `cmf_portal_tag` VALUES ('5', '1', '0', '0', '疫情');
INSERT INTO `cmf_portal_tag` VALUES ('6', '1', '0', '0', '电商');
INSERT INTO `cmf_portal_tag` VALUES ('7', '1', '0', '0', '推广');
INSERT INTO `cmf_portal_tag` VALUES ('8', '1', '0', '0', '而特特');
INSERT INTO `cmf_portal_tag` VALUES ('9', '1', '0', '0', '123');
INSERT INTO `cmf_portal_tag` VALUES ('10', '1', '0', '0', 'qqqq');
INSERT INTO `cmf_portal_tag` VALUES ('11', '1', '0', '0', '图片');
INSERT INTO `cmf_portal_tag` VALUES ('12', '1', '0', '0', '图片1');

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `post_id` (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------
INSERT INTO `cmf_portal_tag_post` VALUES ('1', '8', '4', '0');
INSERT INTO `cmf_portal_tag_post` VALUES ('2', '9', '5', '0');
INSERT INTO `cmf_portal_tag_post` VALUES ('3', '9', '6', '0');
INSERT INTO `cmf_portal_tag_post` VALUES ('4', '10', '8', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('6', '12', '9', '1');

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------
INSERT INTO `cmf_recycle_bin` VALUES ('1', '1', '1604306538', 'slide', 'APP首页', '0');
INSERT INTO `cmf_recycle_bin` VALUES ('2', '4', '1604306543', 'slide', 'APP轮播', '0');
INSERT INTO `cmf_recycle_bin` VALUES ('3', '5', '1609206311', 'portal_post', '数学', '1');
INSERT INTO `cmf_recycle_bin` VALUES ('4', '6', '1609402555', 'slide', '抢购', '0');
INSERT INTO `cmf_recycle_bin` VALUES ('5', '6', '1609983700', 'portal_post', '123', '1');
INSERT INTO `cmf_recycle_bin` VALUES ('6', '4', '1683965101', 'portal_post', '光棍节和', '1');

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES ('2', '0', '1', '0', '0', '0', 'demo', '演示管理员');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------
INSERT INTO `cmf_role_user` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
INSERT INTO `cmf_route` VALUES ('1', '5000', '1', '2', 'portal/List/index?id=5', 'dsac');
INSERT INTO `cmf_route` VALUES ('2', '4999', '1', '2', 'portal/Article/index?cid=5', 'dsac/:id');
INSERT INTO `cmf_route` VALUES ('3', '5000', '1', '2', 'portal/List/index?id=6', '阿斯顿');
INSERT INTO `cmf_route` VALUES ('4', '4999', '1', '2', 'portal/Article/index?cid=6', '阿斯顿/:id');

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES ('1', '1', '1604306538', 'APP首页', '不可删除');
INSERT INTO `cmf_slide` VALUES ('2', '1', '1587438162', '幻灯片', '');
INSERT INTO `cmf_slide` VALUES ('3', '1', '1587460102', '幻灯片2', '不可删除');
INSERT INTO `cmf_slide` VALUES ('4', '1', '1604306543', 'APP轮播', '');
INSERT INTO `cmf_slide` VALUES ('5', '1', '0', 'PC首页', '不可删除!');
INSERT INTO `cmf_slide` VALUES ('6', '1', '1609402555', '抢购', '');
INSERT INTO `cmf_slide` VALUES ('7', '1', '0', 'uni幻灯片', 'uni 不可删除');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `slide_id` (`slide_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------
INSERT INTO `cmf_slide_item` VALUES ('1', '5', '1', '10000', 'banner1', 'admin/20201209/163a5f1427b2a2fd30999ed70da2793b.png', 'https://demo.sdwanyue.com/', '', '测试banner', '', null);
INSERT INTO `cmf_slide_item` VALUES ('2', '5', '1', '10000', 'banner2', 'admin/20201210/08fccd2976e271a05fcddfd6a887177b.png', 'https://demo.sdwanyue.com/', '', '测试banner2', '', null);
INSERT INTO `cmf_slide_item` VALUES ('3', '5', '1', '10000', 'banner3', 'admin/20201210/e2959a45b8ae12d3eb05c123042c6ccb.png', 'https://demo.sdwanyue.com/', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('4', '5', '1', '10000', 'banner4', 'admin/20201210/3d02172ad70acc1e2c2d00fd6cca8998.png', 'https://demo.sdwanyue.com/', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('5', '7', '0', '10000', '1', 'admin/20201209/163a5f1427b2a2fd30999ed70da2793b.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('6', '7', '0', '10000', '1', 'admin/20201210/08fccd2976e271a05fcddfd6a887177b.png', '', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('8', '7', '1', '10000', '学生作品', 'admin/20230430/edf2959593ea80acfa541410aa3ca5b0.jpg', 'https://www.ymmart.com/MWEB/#/detail/fd3d31f8eaf84b34acffea5918b3d4d2', '', '', '', null);
INSERT INTO `cmf_slide_item` VALUES ('9', '7', '1', '10000', '学生作品', 'admin/20230430/6ab8753bc43e41345a8a7c690a916f54.jpg', 'https://www.ymmart.com/MWEB/#/detail/fd3d31f8eaf84b34acffea5918b3d4d2', '', '', '', null);

-- ----------------------------
-- Table structure for cmf_student_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_student_log`;
CREATE TABLE `cmf_student_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL COMMENT '学生id',
  `ip` varchar(255) NOT NULL COMMENT '学生ip地址',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `course_id` int(11) DEFAULT '0' COMMENT '内容/大班课 id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=utf8 COMMENT='学生访问记录表';

-- ----------------------------
-- Records of cmf_student_log
-- ----------------------------
INSERT INTO `cmf_student_log` VALUES ('1', '2', '127.0.0.1', '1603296200', '0');
INSERT INTO `cmf_student_log` VALUES ('2', '2', '127.0.0.1', '1603844465', '5');
INSERT INTO `cmf_student_log` VALUES ('3', '2', '2130706433', '1603954438', '5');
INSERT INTO `cmf_student_log` VALUES ('4', '2', '127.0.0.1', '1603954640', '5');
INSERT INTO `cmf_student_log` VALUES ('5', '2', '127.0.0.1', '1603954640', '10');
INSERT INTO `cmf_student_log` VALUES ('6', '2', '127.0.0.1', '1603954645', '10');
INSERT INTO `cmf_student_log` VALUES ('7', '2', '127.0.0.1', '1603954645', '13');
INSERT INTO `cmf_student_log` VALUES ('8', '2', '127.0.0.1', '1604284592', '207');
INSERT INTO `cmf_student_log` VALUES ('9', '2', '127.0.0.1', '1604285333', '50');
INSERT INTO `cmf_student_log` VALUES ('10', '2', '127.0.0.1', '1604285421', '50');
INSERT INTO `cmf_student_log` VALUES ('11', '2', '127.0.0.1', '1604285447', '50');
INSERT INTO `cmf_student_log` VALUES ('12', '2', '127.0.0.1', '1604285658', '50');
INSERT INTO `cmf_student_log` VALUES ('13', '2', '127.0.0.1', '1604285923', '50');
INSERT INTO `cmf_student_log` VALUES ('14', '2', '127.0.0.1', '1604286211', '50');
INSERT INTO `cmf_student_log` VALUES ('15', '2', '127.0.0.1', '1604286899', '50');
INSERT INTO `cmf_student_log` VALUES ('16', '2', '127.0.0.1', '1604287049', '50');
INSERT INTO `cmf_student_log` VALUES ('17', '2', '127.0.0.1', '1604287055', '50');
INSERT INTO `cmf_student_log` VALUES ('18', '2', '127.0.0.1', '1604287167', '50');
INSERT INTO `cmf_student_log` VALUES ('19', '2', '127.0.0.1', '1604287172', '50');
INSERT INTO `cmf_student_log` VALUES ('20', '2', '127.0.0.1', '1604287278', '50');
INSERT INTO `cmf_student_log` VALUES ('21', '2', '127.0.0.1', '1604287348', '50');
INSERT INTO `cmf_student_log` VALUES ('22', '2', '127.0.0.1', '1604287363', '50');
INSERT INTO `cmf_student_log` VALUES ('23', '2', '127.0.0.1', '1604287421', '44');
INSERT INTO `cmf_student_log` VALUES ('24', '2', '127.0.0.1', '1604287444', '44');
INSERT INTO `cmf_student_log` VALUES ('25', '2', '127.0.0.1', '1604287445', '44');
INSERT INTO `cmf_student_log` VALUES ('26', '2', '127.0.0.1', '1604287451', '44');
INSERT INTO `cmf_student_log` VALUES ('27', '2', '127.0.0.1', '1604287451', '44');
INSERT INTO `cmf_student_log` VALUES ('28', '2', '127.0.0.1', '1604287462', '44');
INSERT INTO `cmf_student_log` VALUES ('29', '2', '127.0.0.1', '1604287558', '44');
INSERT INTO `cmf_student_log` VALUES ('30', '2', '127.0.0.1', '1604287598', '50');
INSERT INTO `cmf_student_log` VALUES ('31', '2', '127.0.0.1', '1604287717', '50');
INSERT INTO `cmf_student_log` VALUES ('32', '2', '127.0.0.1', '1604287723', '50');
INSERT INTO `cmf_student_log` VALUES ('33', '2', '127.0.0.1', '1604287724', '50');
INSERT INTO `cmf_student_log` VALUES ('34', '2', '127.0.0.1', '1604287725', '50');
INSERT INTO `cmf_student_log` VALUES ('35', '2', '127.0.0.1', '1604287725', '50');
INSERT INTO `cmf_student_log` VALUES ('36', '2', '127.0.0.1', '1604287725', '50');
INSERT INTO `cmf_student_log` VALUES ('37', '2', '127.0.0.1', '1604287726', '50');
INSERT INTO `cmf_student_log` VALUES ('38', '2', '127.0.0.1', '1604287726', '50');
INSERT INTO `cmf_student_log` VALUES ('39', '2', '127.0.0.1', '1604287726', '50');
INSERT INTO `cmf_student_log` VALUES ('40', '2', '127.0.0.1', '1604287803', '50');
INSERT INTO `cmf_student_log` VALUES ('41', '2', '127.0.0.1', '1604288203', '50');
INSERT INTO `cmf_student_log` VALUES ('42', '2', '127.0.0.1', '1604288235', '50');
INSERT INTO `cmf_student_log` VALUES ('43', '2', '127.0.0.1', '1604288268', '50');
INSERT INTO `cmf_student_log` VALUES ('44', '2', '127.0.0.1', '1604288294', '50');
INSERT INTO `cmf_student_log` VALUES ('45', '2', '127.0.0.1', '1604288295', '50');
INSERT INTO `cmf_student_log` VALUES ('46', '2', '127.0.0.1', '1604288295', '50');
INSERT INTO `cmf_student_log` VALUES ('47', '2', '127.0.0.1', '1604288295', '50');
INSERT INTO `cmf_student_log` VALUES ('48', '2', '127.0.0.1', '1604288296', '50');
INSERT INTO `cmf_student_log` VALUES ('49', '2', '127.0.0.1', '1604288297', '50');
INSERT INTO `cmf_student_log` VALUES ('50', '2', '127.0.0.1', '1604288321', '50');
INSERT INTO `cmf_student_log` VALUES ('51', '2', '127.0.0.1', '1604288454', '50');
INSERT INTO `cmf_student_log` VALUES ('52', '2', '127.0.0.1', '1604288488', '50');
INSERT INTO `cmf_student_log` VALUES ('53', '2', '127.0.0.1', '1604288490', '50');
INSERT INTO `cmf_student_log` VALUES ('54', '2', '127.0.0.1', '1604303469', '202');
INSERT INTO `cmf_student_log` VALUES ('55', '2', '127.0.0.1', '1604303474', '27');
INSERT INTO `cmf_student_log` VALUES ('56', '2', '127.0.0.1', '1604303567', '14');
INSERT INTO `cmf_student_log` VALUES ('57', '2', '127.0.0.1', '1604303595', '2');
INSERT INTO `cmf_student_log` VALUES ('58', '2', '127.0.0.1', '1604306830', '50');
INSERT INTO `cmf_student_log` VALUES ('59', '2', '127.0.0.1', '1604306846', '50');
INSERT INTO `cmf_student_log` VALUES ('60', '2', '127.0.0.1', '1604306848', '50');
INSERT INTO `cmf_student_log` VALUES ('61', '2', '127.0.0.1', '1604306924', '50');
INSERT INTO `cmf_student_log` VALUES ('62', '2', '127.0.0.1', '1604306968', '44');
INSERT INTO `cmf_student_log` VALUES ('63', '13', '27.201.182.112', '1606445543', '207');
INSERT INTO `cmf_student_log` VALUES ('64', '13', '27.201.182.112', '1606445568', '205');
INSERT INTO `cmf_student_log` VALUES ('65', '13', '27.201.182.112', '1606445572', '205');
INSERT INTO `cmf_student_log` VALUES ('66', '13', '27.201.182.112', '1606445600', '205');
INSERT INTO `cmf_student_log` VALUES ('67', '13', '27.201.182.112', '1606445633', '205');
INSERT INTO `cmf_student_log` VALUES ('68', '13', '27.201.182.112', '1606445657', '205');
INSERT INTO `cmf_student_log` VALUES ('69', '13', '27.201.182.112', '1606447854', '205');
INSERT INTO `cmf_student_log` VALUES ('70', '27', '27.201.182.112', '1606887560', '172');
INSERT INTO `cmf_student_log` VALUES ('71', '27', '27.201.182.112', '1606887607', '171');
INSERT INTO `cmf_student_log` VALUES ('72', '27', '27.201.182.112', '1606887613', '15');
INSERT INTO `cmf_student_log` VALUES ('73', '27', '27.201.182.112', '1606887668', '25');
INSERT INTO `cmf_student_log` VALUES ('74', '27', '27.201.182.112', '1606887709', '174');
INSERT INTO `cmf_student_log` VALUES ('75', '27', '27.201.182.112', '1606888049', '170');
INSERT INTO `cmf_student_log` VALUES ('76', '27', '27.201.182.112', '1606888208', '170');
INSERT INTO `cmf_student_log` VALUES ('77', '27', '27.201.182.112', '1606888232', '17');
INSERT INTO `cmf_student_log` VALUES ('78', '27', '27.201.182.112', '1606889091', '171');
INSERT INTO `cmf_student_log` VALUES ('79', '27', '27.201.182.112', '1606889636', '20');
INSERT INTO `cmf_student_log` VALUES ('80', '27', '27.201.182.112', '1606889651', '20');
INSERT INTO `cmf_student_log` VALUES ('81', '27', '27.201.182.112', '1606889657', '29');
INSERT INTO `cmf_student_log` VALUES ('82', '27', '27.201.182.112', '1606889687', '171');
INSERT INTO `cmf_student_log` VALUES ('83', '27', '27.201.182.112', '1606889692', '13');
INSERT INTO `cmf_student_log` VALUES ('84', '27', '27.201.182.112', '1606889711', '14');
INSERT INTO `cmf_student_log` VALUES ('85', '27', '27.201.182.112', '1607572579', '219');
INSERT INTO `cmf_student_log` VALUES ('86', '27', '27.201.182.112', '1607580134', '221');
INSERT INTO `cmf_student_log` VALUES ('87', '27', '27.201.182.112', '1607580139', '170');
INSERT INTO `cmf_student_log` VALUES ('88', '28', '27.201.182.112', '1607584226', '220');
INSERT INTO `cmf_student_log` VALUES ('89', '28', '27.201.182.112', '1607584245', '221');
INSERT INTO `cmf_student_log` VALUES ('90', '28', '27.201.182.112', '1607584254', '207');
INSERT INTO `cmf_student_log` VALUES ('91', '28', '27.201.182.112', '1607584469', '220');
INSERT INTO `cmf_student_log` VALUES ('92', '1', '27.201.182.112', '1607585102', '220');
INSERT INTO `cmf_student_log` VALUES ('93', '1', '27.201.182.112', '1607586153', '220');
INSERT INTO `cmf_student_log` VALUES ('94', '27', '27.201.182.112', '1607590195', '207');
INSERT INTO `cmf_student_log` VALUES ('95', '27', '27.201.182.112', '1607590933', '220');
INSERT INTO `cmf_student_log` VALUES ('96', '27', '27.201.182.112', '1607591050', '205');
INSERT INTO `cmf_student_log` VALUES ('97', '27', '27.201.182.112', '1607591796', '205');
INSERT INTO `cmf_student_log` VALUES ('98', '27', '27.201.182.112', '1607593055', '205');
INSERT INTO `cmf_student_log` VALUES ('99', '27', '27.201.182.112', '1607593713', '225');
INSERT INTO `cmf_student_log` VALUES ('100', '27', '27.201.182.112', '1607593774', '225');
INSERT INTO `cmf_student_log` VALUES ('101', '27', '27.201.182.112', '1607593814', '225');
INSERT INTO `cmf_student_log` VALUES ('102', '27', '27.201.182.112', '1607593817', '225');
INSERT INTO `cmf_student_log` VALUES ('103', '27', '27.201.182.112', '1607594033', '226');
INSERT INTO `cmf_student_log` VALUES ('104', '27', '27.201.182.112', '1607594057', '226');
INSERT INTO `cmf_student_log` VALUES ('105', '27', '27.201.182.112', '1607594155', '226');
INSERT INTO `cmf_student_log` VALUES ('106', '27', '27.201.182.112', '1607594163', '226');
INSERT INTO `cmf_student_log` VALUES ('107', '27', '27.201.182.112', '1607594207', '226');
INSERT INTO `cmf_student_log` VALUES ('108', '27', '27.201.182.112', '1607594216', '222');
INSERT INTO `cmf_student_log` VALUES ('109', '27', '27.201.182.112', '1607594232', '30');
INSERT INTO `cmf_student_log` VALUES ('110', '27', '27.201.182.112', '1607594236', '221');
INSERT INTO `cmf_student_log` VALUES ('111', '27', '27.201.182.112', '1607594269', '31');
INSERT INTO `cmf_student_log` VALUES ('112', '27', '27.201.182.112', '1607594282', '221');
INSERT INTO `cmf_student_log` VALUES ('113', '27', '27.201.182.112', '1607594296', '207');
INSERT INTO `cmf_student_log` VALUES ('114', '27', '27.201.182.112', '1607594309', '29');
INSERT INTO `cmf_student_log` VALUES ('115', '27', '124.130.165.77', '1607604036', '220');
INSERT INTO `cmf_student_log` VALUES ('116', '27', '124.130.165.77', '1607604062', '170');
INSERT INTO `cmf_student_log` VALUES ('117', '27', '124.130.165.77', '1607604102', '222');
INSERT INTO `cmf_student_log` VALUES ('118', '27', '124.130.165.77', '1607604109', '222');
INSERT INTO `cmf_student_log` VALUES ('119', '27', '124.130.165.77', '1607604129', '221');
INSERT INTO `cmf_student_log` VALUES ('120', '27', '124.130.165.77', '1607604255', '217');
INSERT INTO `cmf_student_log` VALUES ('121', '27', '124.130.165.77', '1607604354', '227');
INSERT INTO `cmf_student_log` VALUES ('122', '27', '124.130.165.77', '1607604435', '227');
INSERT INTO `cmf_student_log` VALUES ('123', '27', '124.130.165.77', '1607604440', '227');
INSERT INTO `cmf_student_log` VALUES ('124', '27', '124.130.165.77', '1607604440', '227');
INSERT INTO `cmf_student_log` VALUES ('125', '27', '124.130.165.77', '1607604441', '227');
INSERT INTO `cmf_student_log` VALUES ('126', '27', '124.130.165.77', '1607604441', '227');
INSERT INTO `cmf_student_log` VALUES ('127', '27', '124.130.165.77', '1607604442', '227');
INSERT INTO `cmf_student_log` VALUES ('128', '27', '124.130.165.77', '1607604443', '227');
INSERT INTO `cmf_student_log` VALUES ('129', '27', '124.130.165.77', '1607604443', '227');
INSERT INTO `cmf_student_log` VALUES ('130', '27', '124.130.165.77', '1607604477', '227');
INSERT INTO `cmf_student_log` VALUES ('131', '27', '124.130.165.77', '1607604510', '227');
INSERT INTO `cmf_student_log` VALUES ('132', '27', '124.130.165.77', '1607604592', '227');
INSERT INTO `cmf_student_log` VALUES ('133', '27', '124.130.165.77', '1607604740', '220');
INSERT INTO `cmf_student_log` VALUES ('134', '27', '124.130.165.77', '1607604751', '223');
INSERT INTO `cmf_student_log` VALUES ('135', '27', '124.130.165.77', '1607604757', '220');
INSERT INTO `cmf_student_log` VALUES ('136', '27', '124.130.165.77', '1607604800', '220');
INSERT INTO `cmf_student_log` VALUES ('137', '27', '124.130.165.77', '1607604823', '207');
INSERT INTO `cmf_student_log` VALUES ('138', '27', '124.130.165.77', '1607604826', '220');
INSERT INTO `cmf_student_log` VALUES ('139', '27', '124.130.165.77', '1607604836', '207');
INSERT INTO `cmf_student_log` VALUES ('140', '27', '124.130.165.77', '1607604838', '220');
INSERT INTO `cmf_student_log` VALUES ('141', '27', '124.130.165.77', '1607604843', '220');
INSERT INTO `cmf_student_log` VALUES ('142', '27', '124.130.165.77', '1607604845', '207');
INSERT INTO `cmf_student_log` VALUES ('143', '27', '27.201.182.112', '1607647427', '221');
INSERT INTO `cmf_student_log` VALUES ('144', '27', '27.201.182.112', '1607647568', '221');
INSERT INTO `cmf_student_log` VALUES ('145', '27', '27.201.182.112', '1607647602', '221');
INSERT INTO `cmf_student_log` VALUES ('146', '27', '27.201.182.112', '1607647861', '221');
INSERT INTO `cmf_student_log` VALUES ('147', '1', '182.101.61.187', '1607670038', '221');
INSERT INTO `cmf_student_log` VALUES ('148', '1', '182.101.61.187', '1607670063', '221');
INSERT INTO `cmf_student_log` VALUES ('149', '1', '182.101.61.187', '1607670178', '170');
INSERT INTO `cmf_student_log` VALUES ('150', '27', '182.101.61.187', '1607670196', '221');
INSERT INTO `cmf_student_log` VALUES ('151', '27', '117.61.0.204', '1607685819', '207');
INSERT INTO `cmf_student_log` VALUES ('152', '27', '116.30.198.222', '1607754160', '48');
INSERT INTO `cmf_student_log` VALUES ('153', '27', '116.30.198.222', '1607756247', '221');
INSERT INTO `cmf_student_log` VALUES ('154', '27', '116.30.198.222', '1607756310', '220');
INSERT INTO `cmf_student_log` VALUES ('155', '27', '123.232.96.37', '1607757422', '220');
INSERT INTO `cmf_student_log` VALUES ('156', '29', '36.46.87.213', '1607829601', '29');
INSERT INTO `cmf_student_log` VALUES ('157', '29', '36.46.87.213', '1607829625', '217');
INSERT INTO `cmf_student_log` VALUES ('158', '29', '36.46.87.213', '1607829632', '217');
INSERT INTO `cmf_student_log` VALUES ('159', '27', '113.110.201.77', '1607846252', '221');
INSERT INTO `cmf_student_log` VALUES ('160', '27', '27.201.182.112', '1607994073', '170');
INSERT INTO `cmf_student_log` VALUES ('161', '27', '59.57.156.205', '1607996193', '221');
INSERT INTO `cmf_student_log` VALUES ('162', '27', '117.89.133.18', '1608000891', '221');
INSERT INTO `cmf_student_log` VALUES ('163', '27', '117.89.133.18', '1608000914', '222');
INSERT INTO `cmf_student_log` VALUES ('164', '27', '117.89.133.18', '1608000920', '222');
INSERT INTO `cmf_student_log` VALUES ('165', '27', '117.89.133.18', '1608000928', '172');
INSERT INTO `cmf_student_log` VALUES ('166', '27', '117.89.133.18', '1608000948', '174');
INSERT INTO `cmf_student_log` VALUES ('167', '27', '124.133.23.45', '1608002592', '207');
INSERT INTO `cmf_student_log` VALUES ('168', '27', '124.133.23.45', '1608002608', '219');
INSERT INTO `cmf_student_log` VALUES ('169', '27', '124.133.23.45', '1608002616', '219');
INSERT INTO `cmf_student_log` VALUES ('170', '27', '124.133.23.45', '1608002634', '29');
INSERT INTO `cmf_student_log` VALUES ('171', '27', '27.201.182.112', '1608012682', '207');
INSERT INTO `cmf_student_log` VALUES ('172', '30', '182.85.214.35', '1608017274', '207');
INSERT INTO `cmf_student_log` VALUES ('173', '30', '182.85.214.35', '1608017292', '220');
INSERT INTO `cmf_student_log` VALUES ('174', '31', '175.19.209.242', '1608173538', '221');
INSERT INTO `cmf_student_log` VALUES ('175', '31', '175.19.209.242', '1608174075', '171');
INSERT INTO `cmf_student_log` VALUES ('176', '31', '175.19.209.242', '1608174218', '170');
INSERT INTO `cmf_student_log` VALUES ('177', '27', '175.19.209.242', '1608174566', '170');
INSERT INTO `cmf_student_log` VALUES ('178', '27', '175.19.209.242', '1608174605', '170');
INSERT INTO `cmf_student_log` VALUES ('179', '27', '175.19.209.242', '1608177943', '170');
INSERT INTO `cmf_student_log` VALUES ('180', '27', '175.19.209.242', '1608178013', '170');
INSERT INTO `cmf_student_log` VALUES ('181', '31', '175.19.209.242', '1608178309', '221');
INSERT INTO `cmf_student_log` VALUES ('182', '31', '175.19.209.242', '1608181862', '221');
INSERT INTO `cmf_student_log` VALUES ('183', '31', '175.19.209.242', '1608181878', '170');
INSERT INTO `cmf_student_log` VALUES ('184', '31', '175.19.209.242', '1608182630', '171');
INSERT INTO `cmf_student_log` VALUES ('185', '31', '175.19.209.242', '1608182958', '171');
INSERT INTO `cmf_student_log` VALUES ('186', '27', '175.19.209.242', '1608183218', '171');
INSERT INTO `cmf_student_log` VALUES ('187', '27', '175.19.209.242', '1608183249', '171');
INSERT INTO `cmf_student_log` VALUES ('188', '27', '175.19.209.242', '1608183259', '170');
INSERT INTO `cmf_student_log` VALUES ('189', '27', '124.79.219.36', '1608186910', '220');
INSERT INTO `cmf_student_log` VALUES ('190', '27', '124.64.17.182', '1608255241', '221');
INSERT INTO `cmf_student_log` VALUES ('191', '27', '124.64.17.182', '1608255253', '219');
INSERT INTO `cmf_student_log` VALUES ('192', '27', '124.64.17.182', '1608255262', '219');
INSERT INTO `cmf_student_log` VALUES ('193', '27', '124.64.17.182', '1608255268', '224');
INSERT INTO `cmf_student_log` VALUES ('194', '27', '124.64.17.182', '1608255278', '207');
INSERT INTO `cmf_student_log` VALUES ('195', '27', '117.139.198.223', '1608280002', '171');
INSERT INTO `cmf_student_log` VALUES ('196', '27', '117.139.198.223', '1608280065', '48');
INSERT INTO `cmf_student_log` VALUES ('197', '1', '117.139.198.223', '1608280109', '221');
INSERT INTO `cmf_student_log` VALUES ('198', '1', '117.139.198.223', '1608280126', '220');
INSERT INTO `cmf_student_log` VALUES ('199', '1', '117.139.198.223', '1608280130', '221');
INSERT INTO `cmf_student_log` VALUES ('200', '27', '175.168.133.217', '1608476367', '220');
INSERT INTO `cmf_student_log` VALUES ('201', '27', '175.168.133.217', '1608476381', '202');
INSERT INTO `cmf_student_log` VALUES ('202', '27', '112.26.138.66', '1608519957', '221');
INSERT INTO `cmf_student_log` VALUES ('203', '27', '112.26.138.66', '1608519974', '13');
INSERT INTO `cmf_student_log` VALUES ('204', '27', '3.34.178.113', '1608522104', '207');
INSERT INTO `cmf_student_log` VALUES ('205', '27', '3.34.178.113', '1608522165', '221');
INSERT INTO `cmf_student_log` VALUES ('206', '27', '61.185.160.18', '1608528554', '220');
INSERT INTO `cmf_student_log` VALUES ('207', '27', '61.185.160.18', '1608528581', '218');
INSERT INTO `cmf_student_log` VALUES ('208', '27', '61.185.160.18', '1608528589', '220');
INSERT INTO `cmf_student_log` VALUES ('209', '27', '61.185.160.18', '1608528602', '217');
INSERT INTO `cmf_student_log` VALUES ('210', '27', '61.185.160.18', '1608528608', '220');
INSERT INTO `cmf_student_log` VALUES ('211', '27', '61.185.160.18', '1608528619', '221');
INSERT INTO `cmf_student_log` VALUES ('212', '27', '182.138.241.182', '1608536295', '202');
INSERT INTO `cmf_student_log` VALUES ('213', '27', '119.183.163.223', '1608540361', '221');
INSERT INTO `cmf_student_log` VALUES ('214', '27', '119.183.163.223', '1608540368', '220');
INSERT INTO `cmf_student_log` VALUES ('215', '27', '119.183.163.223', '1608540372', '207');
INSERT INTO `cmf_student_log` VALUES ('216', '27', '119.183.163.223', '1608540387', '221');
INSERT INTO `cmf_student_log` VALUES ('217', '27', '39.82.36.23', '1608541829', '220');
INSERT INTO `cmf_student_log` VALUES ('218', '27', '113.47.32.158', '1608554131', '220');
INSERT INTO `cmf_student_log` VALUES ('219', '27', '113.47.32.158', '1608554153', '222');
INSERT INTO `cmf_student_log` VALUES ('220', '27', '113.47.32.158', '1608554181', '220');
INSERT INTO `cmf_student_log` VALUES ('221', '27', '113.47.32.158', '1608554199', '174');
INSERT INTO `cmf_student_log` VALUES ('222', '27', '223.11.120.149', '1608641852', '228');
INSERT INTO `cmf_student_log` VALUES ('223', '27', '223.11.120.149', '1608641876', '218');
INSERT INTO `cmf_student_log` VALUES ('224', '27', '223.11.120.149', '1608642250', '219');
INSERT INTO `cmf_student_log` VALUES ('225', '27', '223.11.120.149', '1608642257', '219');
INSERT INTO `cmf_student_log` VALUES ('226', '27', '223.11.120.149', '1608642261', '224');
INSERT INTO `cmf_student_log` VALUES ('227', '27', '223.11.120.149', '1608642677', '216');
INSERT INTO `cmf_student_log` VALUES ('228', '27', '223.11.120.149', '1608642739', '216');
INSERT INTO `cmf_student_log` VALUES ('229', '27', '223.11.120.149', '1608642743', '223');
INSERT INTO `cmf_student_log` VALUES ('230', '27', '223.11.120.149', '1608642801', '218');
INSERT INTO `cmf_student_log` VALUES ('231', '27', '223.11.120.149', '1608642808', '218');
INSERT INTO `cmf_student_log` VALUES ('232', '27', '223.11.120.149', '1608642813', '217');
INSERT INTO `cmf_student_log` VALUES ('233', '27', '223.11.120.149', '1608642820', '217');
INSERT INTO `cmf_student_log` VALUES ('234', '27', '223.11.120.149', '1608642824', '215');
INSERT INTO `cmf_student_log` VALUES ('235', '27', '223.11.120.149', '1608642856', '215');
INSERT INTO `cmf_student_log` VALUES ('236', '27', '223.11.120.149', '1608643021', '221');
INSERT INTO `cmf_student_log` VALUES ('237', '32', '106.59.200.86', '1608699806', '222');
INSERT INTO `cmf_student_log` VALUES ('238', '32', '106.59.200.86', '1608699825', '217');
INSERT INTO `cmf_student_log` VALUES ('239', '32', '106.59.200.86', '1608699846', '216');
INSERT INTO `cmf_student_log` VALUES ('240', '27', '112.43.23.162', '1608717108', '229');
INSERT INTO `cmf_student_log` VALUES ('241', '27', '112.43.23.162', '1608717129', '229');
INSERT INTO `cmf_student_log` VALUES ('242', '27', '112.43.23.162', '1608719920', '220');
INSERT INTO `cmf_student_log` VALUES ('243', '27', '14.24.144.156', '1608776290', '229');
INSERT INTO `cmf_student_log` VALUES ('244', '27', '14.24.144.156', '1608776335', '224');
INSERT INTO `cmf_student_log` VALUES ('245', '27', '14.24.144.156', '1608776364', '217');
INSERT INTO `cmf_student_log` VALUES ('246', '27', '14.24.144.156', '1608776374', '217');
INSERT INTO `cmf_student_log` VALUES ('247', '27', '182.148.53.137', '1608791827', '228');
INSERT INTO `cmf_student_log` VALUES ('248', '27', '175.11.64.162', '1608793158', '228');
INSERT INTO `cmf_student_log` VALUES ('249', '27', '171.127.149.199', '1608872682', '229');
INSERT INTO `cmf_student_log` VALUES ('250', '27', '183.17.125.58', '1609049168', '228');
INSERT INTO `cmf_student_log` VALUES ('251', '27', '183.17.125.58', '1609049189', '228');
INSERT INTO `cmf_student_log` VALUES ('252', '27', '183.17.125.58', '1609049191', '228');
INSERT INTO `cmf_student_log` VALUES ('253', '27', '182.47.184.81', '1609139739', '229');
INSERT INTO `cmf_student_log` VALUES ('254', '27', '182.47.184.81', '1609139755', '221');
INSERT INTO `cmf_student_log` VALUES ('255', '27', '182.47.184.81', '1609139771', '224');
INSERT INTO `cmf_student_log` VALUES ('256', '27', '182.47.184.81', '1609139789', '222');
INSERT INTO `cmf_student_log` VALUES ('257', '27', '182.47.184.81', '1609139819', '10');
INSERT INTO `cmf_student_log` VALUES ('258', '27', '175.190.122.169', '1609144650', '29');
INSERT INTO `cmf_student_log` VALUES ('259', '27', '175.190.122.169', '1609144655', '16');
INSERT INTO `cmf_student_log` VALUES ('260', '27', '125.33.193.187', '1609204721', '229');
INSERT INTO `cmf_student_log` VALUES ('261', '27', '124.64.19.178', '1609206640', '232');
INSERT INTO `cmf_student_log` VALUES ('262', '27', '124.64.19.178', '1609206645', '232');
INSERT INTO `cmf_student_log` VALUES ('263', '1', '125.46.74.3', '1609222997', '228');
INSERT INTO `cmf_student_log` VALUES ('264', '1', '125.46.74.3', '1609223011', '170');
INSERT INTO `cmf_student_log` VALUES ('265', '27', '223.11.217.65', '1609224117', '229');
INSERT INTO `cmf_student_log` VALUES ('266', '27', '180.175.203.193', '1609238830', '229');
INSERT INTO `cmf_student_log` VALUES ('267', '27', '180.175.203.193', '1609238836', '228');
INSERT INTO `cmf_student_log` VALUES ('268', '27', '180.175.203.193', '1609238864', '174');
INSERT INTO `cmf_student_log` VALUES ('269', '27', '113.57.28.254', '1609314388', '221');
INSERT INTO `cmf_student_log` VALUES ('270', '27', '125.46.12.154', '1609320010', '221');
INSERT INTO `cmf_student_log` VALUES ('271', '27', '125.46.12.154', '1609320034', '29');
INSERT INTO `cmf_student_log` VALUES ('272', '27', '183.17.228.78', '1609324047', '221');
INSERT INTO `cmf_student_log` VALUES ('273', '27', '110.152.105.242', '1609347935', '221');
INSERT INTO `cmf_student_log` VALUES ('274', '27', '222.129.129.218', '1609371236', '220');
INSERT INTO `cmf_student_log` VALUES ('275', '27', '222.129.129.218', '1609371244', '207');
INSERT INTO `cmf_student_log` VALUES ('276', '27', '222.129.129.218', '1609371263', '217');
INSERT INTO `cmf_student_log` VALUES ('277', '27', '222.129.129.218', '1609371274', '217');
INSERT INTO `cmf_student_log` VALUES ('278', '27', '222.129.129.218', '1609371287', '216');
INSERT INTO `cmf_student_log` VALUES ('279', '27', '222.129.129.218', '1609371391', '222');
INSERT INTO `cmf_student_log` VALUES ('280', '27', '222.129.129.218', '1609371410', '218');
INSERT INTO `cmf_student_log` VALUES ('281', '27', '116.24.64.159', '1609375760', '220');
INSERT INTO `cmf_student_log` VALUES ('282', '27', '116.24.64.159', '1609375793', '207');
INSERT INTO `cmf_student_log` VALUES ('283', '27', '116.24.64.159', '1609375878', '221');
INSERT INTO `cmf_student_log` VALUES ('284', '27', '116.24.64.159', '1609375906', '232');
INSERT INTO `cmf_student_log` VALUES ('285', '27', '116.24.64.159', '1609375924', '170');
INSERT INTO `cmf_student_log` VALUES ('286', '27', '60.208.116.146', '1609378050', '232');
INSERT INTO `cmf_student_log` VALUES ('287', '27', '60.208.116.146', '1609378057', '232');
INSERT INTO `cmf_student_log` VALUES ('288', '27', '60.208.116.146', '1609378061', '217');
INSERT INTO `cmf_student_log` VALUES ('289', '27', '115.200.232.32', '1609379861', '207');
INSERT INTO `cmf_student_log` VALUES ('290', '27', '115.200.232.32', '1609379877', '224');
INSERT INTO `cmf_student_log` VALUES ('291', '27', '222.79.37.74', '1609380164', '221');
INSERT INTO `cmf_student_log` VALUES ('292', '27', '222.79.37.74', '1609380190', '13');
INSERT INTO `cmf_student_log` VALUES ('293', '27', '115.227.112.92', '1609380813', '221');
INSERT INTO `cmf_student_log` VALUES ('294', '27', '115.196.227.19', '1609381405', '221');
INSERT INTO `cmf_student_log` VALUES ('295', '27', '115.196.227.19', '1609381418', '220');
INSERT INTO `cmf_student_log` VALUES ('296', '27', '115.196.227.19', '1609381428', '170');
INSERT INTO `cmf_student_log` VALUES ('297', '27', '222.247.143.225', '1609381891', '221');
INSERT INTO `cmf_student_log` VALUES ('298', '27', '222.247.143.225', '1609381916', '220');
INSERT INTO `cmf_student_log` VALUES ('299', '27', '222.247.143.225', '1609381921', '207');
INSERT INTO `cmf_student_log` VALUES ('300', '27', '222.247.143.225', '1609381929', '202');
INSERT INTO `cmf_student_log` VALUES ('301', '27', '222.247.143.225', '1609381933', '29');
INSERT INTO `cmf_student_log` VALUES ('302', '27', '222.247.143.225', '1609381947', '170');
INSERT INTO `cmf_student_log` VALUES ('303', '27', '222.247.143.225', '1609381962', '29');
INSERT INTO `cmf_student_log` VALUES ('304', '27', '222.247.143.225', '1609381974', '232');
INSERT INTO `cmf_student_log` VALUES ('305', '27', '222.247.143.225', '1609381981', '232');
INSERT INTO `cmf_student_log` VALUES ('306', '27', '110.88.33.147', '1609386249', '233');
INSERT INTO `cmf_student_log` VALUES ('307', '27', '221.4.210.164', '1609393680', '233');
INSERT INTO `cmf_student_log` VALUES ('308', '27', '221.4.210.164', '1609393689', '172');
INSERT INTO `cmf_student_log` VALUES ('309', '27', '121.193.178.54', '1609395479', '233');
INSERT INTO `cmf_student_log` VALUES ('310', '27', '113.57.121.137', '1609397069', '221');
INSERT INTO `cmf_student_log` VALUES ('311', '27', '171.214.164.64', '1609398009', '221');
INSERT INTO `cmf_student_log` VALUES ('312', '27', '39.128.16.111', '1609400324', '221');
INSERT INTO `cmf_student_log` VALUES ('313', '27', '61.50.111.78', '1609400331', '221');
INSERT INTO `cmf_student_log` VALUES ('314', '27', '61.50.111.78', '1609400372', '207');
INSERT INTO `cmf_student_log` VALUES ('315', '27', '180.96.28.100', '1609401950', '172');
INSERT INTO `cmf_student_log` VALUES ('316', '27', '180.96.28.100', '1609401970', '233');
INSERT INTO `cmf_student_log` VALUES ('317', '27', '180.96.28.100', '1609401993', '202');
INSERT INTO `cmf_student_log` VALUES ('318', '27', '180.96.28.100', '1609402026', '232');
INSERT INTO `cmf_student_log` VALUES ('319', '27', '180.96.28.100', '1609402034', '232');
INSERT INTO `cmf_student_log` VALUES ('320', '27', '180.96.28.100', '1609402078', '220');
INSERT INTO `cmf_student_log` VALUES ('321', '27', '220.249.90.225', '1609402270', '233');
INSERT INTO `cmf_student_log` VALUES ('322', '27', '220.249.90.225', '1609402287', '220');
INSERT INTO `cmf_student_log` VALUES ('323', '27', '123.185.77.87', '1609403831', '233');
INSERT INTO `cmf_student_log` VALUES ('324', '27', '218.59.136.235', '1609404114', '207');
INSERT INTO `cmf_student_log` VALUES ('325', '27', '218.59.136.235', '1609404114', '207');
INSERT INTO `cmf_student_log` VALUES ('326', '27', '123.232.187.124', '1609405027', '221');
INSERT INTO `cmf_student_log` VALUES ('327', '27', '123.232.187.124', '1609405034', '220');
INSERT INTO `cmf_student_log` VALUES ('328', '27', '113.87.202.136', '1609407666', '174');
INSERT INTO `cmf_student_log` VALUES ('329', '27', '113.87.202.136', '1609407684', '13');
INSERT INTO `cmf_student_log` VALUES ('330', '27', '113.87.202.136', '1609407694', '221');
INSERT INTO `cmf_student_log` VALUES ('331', '27', '183.17.228.22', '1609411703', '221');
INSERT INTO `cmf_student_log` VALUES ('332', '27', '183.17.228.22', '1609411714', '233');
INSERT INTO `cmf_student_log` VALUES ('333', '27', '183.17.228.22', '1609411729', '232');
INSERT INTO `cmf_student_log` VALUES ('334', '27', '183.17.228.22', '1609411733', '232');
INSERT INTO `cmf_student_log` VALUES ('335', '27', '183.17.228.22', '1609411739', '216');
INSERT INTO `cmf_student_log` VALUES ('336', '1', '27.12.184.121', '1609412093', '233');
INSERT INTO `cmf_student_log` VALUES ('337', '1', '27.12.184.121', '1609412097', '172');
INSERT INTO `cmf_student_log` VALUES ('338', '27', '61.158.208.216', '1609419313', '233');
INSERT INTO `cmf_student_log` VALUES ('339', '27', '42.80.160.46', '1609421943', '233');
INSERT INTO `cmf_student_log` VALUES ('340', '27', '42.80.160.46', '1609421950', '220');
INSERT INTO `cmf_student_log` VALUES ('341', '27', '42.80.160.46', '1609421954', '207');
INSERT INTO `cmf_student_log` VALUES ('342', '27', '42.80.160.46', '1609421962', '232');
INSERT INTO `cmf_student_log` VALUES ('343', '27', '42.80.160.46', '1609421967', '232');
INSERT INTO `cmf_student_log` VALUES ('344', '27', '183.158.73.240', '1609426342', '233');
INSERT INTO `cmf_student_log` VALUES ('345', '27', '183.158.73.240', '1609426365', '232');
INSERT INTO `cmf_student_log` VALUES ('346', '27', '183.158.73.240', '1609426388', '29');
INSERT INTO `cmf_student_log` VALUES ('347', '27', '183.158.73.240', '1609426528', '16');
INSERT INTO `cmf_student_log` VALUES ('348', '27', '183.158.73.240', '1609426566', '170');
INSERT INTO `cmf_student_log` VALUES ('349', '48', '58.206.176.195', '1609474098', '221');
INSERT INTO `cmf_student_log` VALUES ('350', '48', '58.206.176.195', '1609474128', '29');
INSERT INTO `cmf_student_log` VALUES ('351', '48', '58.206.176.195', '1609474159', '221');
INSERT INTO `cmf_student_log` VALUES ('352', '27', '115.60.147.251', '1609485860', '233');
INSERT INTO `cmf_student_log` VALUES ('353', '27', '219.141.55.94', '1609487066', '233');
INSERT INTO `cmf_student_log` VALUES ('354', '27', '113.245.72.188', '1609490382', '221');
INSERT INTO `cmf_student_log` VALUES ('355', '27', '113.245.72.188', '1609490407', '233');
INSERT INTO `cmf_student_log` VALUES ('356', '27', '113.245.72.188', '1609490415', '220');
INSERT INTO `cmf_student_log` VALUES ('357', '27', '113.245.72.188', '1609490418', '220');
INSERT INTO `cmf_student_log` VALUES ('358', '27', '113.245.72.188', '1609490431', '13');
INSERT INTO `cmf_student_log` VALUES ('359', '27', '113.129.95.245', '1609547368', '221');
INSERT INTO `cmf_student_log` VALUES ('360', '27', '113.129.95.245', '1609547390', '219');
INSERT INTO `cmf_student_log` VALUES ('361', '27', '182.200.7.193', '1609553946', '221');
INSERT INTO `cmf_student_log` VALUES ('362', '27', '182.200.7.193', '1609553959', '218');
INSERT INTO `cmf_student_log` VALUES ('363', '27', '182.200.7.193', '1609553963', '218');
INSERT INTO `cmf_student_log` VALUES ('364', '27', '182.200.7.193', '1609553981', '29');
INSERT INTO `cmf_student_log` VALUES ('365', '27', '114.101.230.32', '1609554302', '221');
INSERT INTO `cmf_student_log` VALUES ('366', '27', '183.196.84.249', '1609559957', '233');
INSERT INTO `cmf_student_log` VALUES ('367', '27', '183.196.84.249', '1609560111', '233');
INSERT INTO `cmf_student_log` VALUES ('368', '27', '183.196.84.249', '1609560113', '233');
INSERT INTO `cmf_student_log` VALUES ('369', '27', '183.196.84.249', '1609560115', '233');
INSERT INTO `cmf_student_log` VALUES ('370', '27', '121.32.98.18', '1609565328', '233');
INSERT INTO `cmf_student_log` VALUES ('371', '27', '121.32.98.18', '1609565353', '31');
INSERT INTO `cmf_student_log` VALUES ('372', '27', '121.32.98.18', '1609565396', '31');
INSERT INTO `cmf_student_log` VALUES ('373', '27', '121.32.98.18', '1609565409', '218');
INSERT INTO `cmf_student_log` VALUES ('374', '27', '123.112.22.221', '1609568423', '221');
INSERT INTO `cmf_student_log` VALUES ('375', '27', '123.112.22.221', '1609568444', '218');
INSERT INTO `cmf_student_log` VALUES ('376', '27', '123.112.22.221', '1609568451', '217');
INSERT INTO `cmf_student_log` VALUES ('377', '27', '120.41.162.114', '1609580957', '221');
INSERT INTO `cmf_student_log` VALUES ('378', '27', '120.41.162.114', '1609580974', '233');
INSERT INTO `cmf_student_log` VALUES ('379', '27', '101.20.72.156', '1609588416', '221');
INSERT INTO `cmf_student_log` VALUES ('380', '27', '218.57.175.63', '1609591704', '220');
INSERT INTO `cmf_student_log` VALUES ('381', '27', '218.57.175.63', '1609591717', '16');
INSERT INTO `cmf_student_log` VALUES ('382', '27', '218.57.175.63', '1609591731', '29');
INSERT INTO `cmf_student_log` VALUES ('383', '27', '218.57.175.63', '1609591738', '207');
INSERT INTO `cmf_student_log` VALUES ('384', '27', '218.57.175.63', '1609591748', '172');
INSERT INTO `cmf_student_log` VALUES ('385', '27', '113.47.2.164', '1609595889', '221');
INSERT INTO `cmf_student_log` VALUES ('386', '27', '113.65.156.208', '1609597532', '221');
INSERT INTO `cmf_student_log` VALUES ('387', '27', '113.65.156.208', '1609597535', '221');
INSERT INTO `cmf_student_log` VALUES ('388', '27', '113.65.156.208', '1609597546', '233');
INSERT INTO `cmf_student_log` VALUES ('389', '27', '36.98.204.171', '1609601857', '170');
INSERT INTO `cmf_student_log` VALUES ('390', '27', '112.32.74.239', '1609602525', '221');
INSERT INTO `cmf_student_log` VALUES ('391', '27', '112.32.74.239', '1609602561', '170');
INSERT INTO `cmf_student_log` VALUES ('392', '50', '123.139.28.160', '1609632129', '233');
INSERT INTO `cmf_student_log` VALUES ('393', '50', '123.139.28.160', '1609632173', '224');
INSERT INTO `cmf_student_log` VALUES ('394', '50', '123.139.28.160', '1609632195', '218');
INSERT INTO `cmf_student_log` VALUES ('395', '50', '123.139.28.160', '1609632209', '174');
INSERT INTO `cmf_student_log` VALUES ('396', '50', '123.139.28.160', '1609632217', '221');
INSERT INTO `cmf_student_log` VALUES ('397', '50', '123.139.28.160', '1609632265', '220');
INSERT INTO `cmf_student_log` VALUES ('398', '27', '116.228.188.222', '1609637278', '220');
INSERT INTO `cmf_student_log` VALUES ('399', '27', '113.116.87.29', '1609643725', '221');
INSERT INTO `cmf_student_log` VALUES ('400', '27', '113.68.237.108', '1609652279', '233');
INSERT INTO `cmf_student_log` VALUES ('401', '27', '180.109.111.54', '1609656888', '221');
INSERT INTO `cmf_student_log` VALUES ('402', '27', '222.129.56.44', '1609658038', '220');
INSERT INTO `cmf_student_log` VALUES ('403', '27', '222.129.56.44', '1609658048', '233');
INSERT INTO `cmf_student_log` VALUES ('404', '27', '42.48.47.171', '1609658539', '232');
INSERT INTO `cmf_student_log` VALUES ('405', '27', '42.48.47.171', '1609658546', '232');
INSERT INTO `cmf_student_log` VALUES ('406', '27', '42.48.47.171', '1609658555', '207');
INSERT INTO `cmf_student_log` VALUES ('407', '27', '42.48.47.171', '1609658630', '170');
INSERT INTO `cmf_student_log` VALUES ('408', '27', '183.191.3.43', '1609668077', '202');
INSERT INTO `cmf_student_log` VALUES ('409', '27', '58.248.113.37', '1609672890', '233');
INSERT INTO `cmf_student_log` VALUES ('410', '27', '58.248.113.37', '1609672901', '221');
INSERT INTO `cmf_student_log` VALUES ('411', '27', '58.248.113.37', '1609672909', '220');
INSERT INTO `cmf_student_log` VALUES ('412', '53', '112.32.126.235', '1609679008', '170');
INSERT INTO `cmf_student_log` VALUES ('413', '27', '121.13.42.54', '1609681536', '221');
INSERT INTO `cmf_student_log` VALUES ('414', '27', '121.13.42.54', '1609681548', '207');
INSERT INTO `cmf_student_log` VALUES ('415', '27', '220.172.186.46', '1609695505', '233');
INSERT INTO `cmf_student_log` VALUES ('416', '27', '220.172.186.46', '1609695518', '170');
INSERT INTO `cmf_student_log` VALUES ('417', '27', '220.172.186.46', '1609695529', '221');
INSERT INTO `cmf_student_log` VALUES ('418', '27', '183.42.47.128', '1609718703', '232');
INSERT INTO `cmf_student_log` VALUES ('419', '27', '183.42.47.128', '1609718719', '172');
INSERT INTO `cmf_student_log` VALUES ('420', '27', '219.157.255.88', '1609721221', '221');
INSERT INTO `cmf_student_log` VALUES ('421', '27', '219.157.255.88', '1609721593', '233');
INSERT INTO `cmf_student_log` VALUES ('422', '27', '58.246.142.90', '1609721983', '233');
INSERT INTO `cmf_student_log` VALUES ('423', '27', '110.53.240.2', '1609722311', '232');
INSERT INTO `cmf_student_log` VALUES ('424', '27', '117.107.152.50', '1609725080', '221');
INSERT INTO `cmf_student_log` VALUES ('425', '27', '117.107.152.50', '1609725088', '220');
INSERT INTO `cmf_student_log` VALUES ('426', '27', '117.107.152.50', '1609725101', '207');
INSERT INTO `cmf_student_log` VALUES ('427', '27', '122.231.246.53', '1609729769', '221');
INSERT INTO `cmf_student_log` VALUES ('428', '27', '122.231.246.53', '1609729786', '221');
INSERT INTO `cmf_student_log` VALUES ('429', '27', '61.162.221.156', '1609729818', '221');
INSERT INTO `cmf_student_log` VALUES ('430', '27', '61.162.221.156', '1609729899', '174');
INSERT INTO `cmf_student_log` VALUES ('431', '27', '218.88.142.177', '1609730092', '221');
INSERT INTO `cmf_student_log` VALUES ('432', '27', '183.196.84.249', '1609731740', '233');
INSERT INTO `cmf_student_log` VALUES ('433', '27', '222.129.51.148', '1609731856', '207');
INSERT INTO `cmf_student_log` VALUES ('434', '27', '171.117.45.66', '1609732808', '29');
INSERT INTO `cmf_student_log` VALUES ('435', '54', '219.152.152.239', '1609740206', '220');
INSERT INTO `cmf_student_log` VALUES ('436', '27', '124.65.8.189', '1609741918', '220');
INSERT INTO `cmf_student_log` VALUES ('437', '27', '124.65.8.189', '1609741931', '220');
INSERT INTO `cmf_student_log` VALUES ('438', '27', '124.65.8.189', '1609741950', '221');
INSERT INTO `cmf_student_log` VALUES ('439', '27', '124.65.8.189', '1609741950', '221');
INSERT INTO `cmf_student_log` VALUES ('440', '27', '124.65.8.189', '1609741956', '207');
INSERT INTO `cmf_student_log` VALUES ('441', '27', '124.65.8.189', '1609741978', '218');
INSERT INTO `cmf_student_log` VALUES ('442', '27', '61.183.140.34', '1609742392', '207');
INSERT INTO `cmf_student_log` VALUES ('443', '27', '203.112.82.1', '1609742794', '174');
INSERT INTO `cmf_student_log` VALUES ('444', '27', '218.29.152.202', '1609743164', '233');
INSERT INTO `cmf_student_log` VALUES ('445', '27', '218.29.152.202', '1609743174', '172');
INSERT INTO `cmf_student_log` VALUES ('446', '27', '218.29.152.202', '1609743189', '48');
INSERT INTO `cmf_student_log` VALUES ('447', '27', '218.29.152.202', '1609743196', '48');
INSERT INTO `cmf_student_log` VALUES ('448', '27', '218.29.152.202', '1609743205', '232');
INSERT INTO `cmf_student_log` VALUES ('449', '27', '218.29.152.202', '1609743210', '15');
INSERT INTO `cmf_student_log` VALUES ('450', '27', '121.15.12.211', '1609743668', '221');
INSERT INTO `cmf_student_log` VALUES ('451', '27', '121.15.12.211', '1609743693', '172');
INSERT INTO `cmf_student_log` VALUES ('452', '27', '121.15.12.211', '1609743720', '233');
INSERT INTO `cmf_student_log` VALUES ('453', '56', '58.248.2.29', '1609746233', '221');
INSERT INTO `cmf_student_log` VALUES ('454', '56', '58.248.2.29', '1609746275', '172');
INSERT INTO `cmf_student_log` VALUES ('455', '56', '58.248.2.29', '1609746281', '220');
INSERT INTO `cmf_student_log` VALUES ('456', '56', '58.248.2.29', '1609746292', '232');
INSERT INTO `cmf_student_log` VALUES ('457', '56', '58.248.2.29', '1609746297', '232');
INSERT INTO `cmf_student_log` VALUES ('458', '56', '58.248.2.29', '1609746304', '218');
INSERT INTO `cmf_student_log` VALUES ('459', '56', '58.248.2.29', '1609746311', '233');
INSERT INTO `cmf_student_log` VALUES ('460', '56', '58.248.2.29', '1609746314', '170');
INSERT INTO `cmf_student_log` VALUES ('461', '27', '171.15.164.141', '1609747768', '172');
INSERT INTO `cmf_student_log` VALUES ('462', '27', '211.150.95.50', '1609748378', '221');
INSERT INTO `cmf_student_log` VALUES ('463', '27', '211.150.95.50', '1609748395', '220');
INSERT INTO `cmf_student_log` VALUES ('464', '27', '211.150.95.50', '1609748410', '207');
INSERT INTO `cmf_student_log` VALUES ('465', '27', '101.17.100.202', '1609748794', '220');
INSERT INTO `cmf_student_log` VALUES ('466', '27', '101.17.100.202', '1609748812', '172');
INSERT INTO `cmf_student_log` VALUES ('467', '27', '42.91.144.173', '1609749323', '221');
INSERT INTO `cmf_student_log` VALUES ('468', '27', '42.91.144.173', '1609749344', '221');
INSERT INTO `cmf_student_log` VALUES ('469', '27', '42.91.144.173', '1609749355', '16');
INSERT INTO `cmf_student_log` VALUES ('470', '27', '42.91.144.173', '1609749394', '16');
INSERT INTO `cmf_student_log` VALUES ('471', '27', '42.91.144.173', '1609749407', '13');
INSERT INTO `cmf_student_log` VALUES ('472', '27', '42.91.144.173', '1609749417', '217');
INSERT INTO `cmf_student_log` VALUES ('473', '27', '114.249.234.44', '1609749822', '221');
INSERT INTO `cmf_student_log` VALUES ('474', '27', '124.204.62.130', '1609751511', '221');
INSERT INTO `cmf_student_log` VALUES ('475', '27', '106.114.75.73', '1609752235', '170');
INSERT INTO `cmf_student_log` VALUES ('476', '27', '125.37.188.67', '1609760064', '233');
INSERT INTO `cmf_student_log` VALUES ('477', '27', '125.37.188.67', '1609760141', '221');
INSERT INTO `cmf_student_log` VALUES ('478', '27', '113.247.22.82', '1609764097', '202');
INSERT INTO `cmf_student_log` VALUES ('479', '27', '183.159.183.227', '1609773720', '233');
INSERT INTO `cmf_student_log` VALUES ('480', '27', '183.159.183.227', '1609773743', '224');
INSERT INTO `cmf_student_log` VALUES ('481', '27', '183.159.183.227', '1609773750', '207');
INSERT INTO `cmf_student_log` VALUES ('482', '27', '183.159.183.227', '1609773761', '216');
INSERT INTO `cmf_student_log` VALUES ('483', '27', '183.159.183.227', '1609773801', '221');
INSERT INTO `cmf_student_log` VALUES ('484', '27', '183.159.183.227', '1609773833', '10');
INSERT INTO `cmf_student_log` VALUES ('485', '27', '60.216.178.103', '1609809487', '221');
INSERT INTO `cmf_student_log` VALUES ('486', '27', '60.216.178.103', '1609809676', '224');
INSERT INTO `cmf_student_log` VALUES ('487', '27', '118.112.112.242', '1609811438', '31');
INSERT INTO `cmf_student_log` VALUES ('488', '27', '110.188.92.69', '1609811700', '207');
INSERT INTO `cmf_student_log` VALUES ('489', '27', '110.188.92.69', '1609811713', '233');
INSERT INTO `cmf_student_log` VALUES ('490', '27', '223.99.166.194', '1609812368', '202');
INSERT INTO `cmf_student_log` VALUES ('491', '27', '223.99.166.194', '1609812382', '224');
INSERT INTO `cmf_student_log` VALUES ('492', '27', '223.99.166.194', '1609812397', '220');
INSERT INTO `cmf_student_log` VALUES ('493', '27', '223.99.166.194', '1609812415', '222');
INSERT INTO `cmf_student_log` VALUES ('494', '27', '223.99.166.194', '1609812430', '222');
INSERT INTO `cmf_student_log` VALUES ('495', '27', '124.239.172.189', '1609812840', '232');
INSERT INTO `cmf_student_log` VALUES ('496', '27', '124.239.172.189', '1609812867', '232');
INSERT INTO `cmf_student_log` VALUES ('497', '27', '123.117.160.142', '1609813135', '221');
INSERT INTO `cmf_student_log` VALUES ('498', '27', '123.117.160.142', '1609813165', '224');
INSERT INTO `cmf_student_log` VALUES ('499', '27', '123.117.160.142', '1609813212', '13');
INSERT INTO `cmf_student_log` VALUES ('500', '27', '1.202.7.113', '1609816825', '233');
INSERT INTO `cmf_student_log` VALUES ('501', '27', '112.81.170.2', '1609823465', '215');
INSERT INTO `cmf_student_log` VALUES ('502', '27', '125.82.243.117', '1609827415', '233');
INSERT INTO `cmf_student_log` VALUES ('503', '27', '222.37.230.188', '1609830294', '221');
INSERT INTO `cmf_student_log` VALUES ('504', '27', '222.37.230.188', '1609830315', '29');
INSERT INTO `cmf_student_log` VALUES ('505', '27', '222.37.230.188', '1609830319', '29');
INSERT INTO `cmf_student_log` VALUES ('506', '27', '222.37.230.188', '1609830319', '29');
INSERT INTO `cmf_student_log` VALUES ('507', '27', '223.104.103.190', '1609834053', '221');
INSERT INTO `cmf_student_log` VALUES ('508', '27', '223.104.103.190', '1609834069', '224');
INSERT INTO `cmf_student_log` VALUES ('509', '27', '223.104.103.190', '1609834085', '224');
INSERT INTO `cmf_student_log` VALUES ('510', '27', '223.104.103.190', '1609834089', '202');
INSERT INTO `cmf_student_log` VALUES ('511', '27', '116.231.28.154', '1609838930', '234');
INSERT INTO `cmf_student_log` VALUES ('512', '27', '116.231.28.154', '1609838950', '220');
INSERT INTO `cmf_student_log` VALUES ('513', '27', '183.184.184.44', '1609839296', '25');
INSERT INTO `cmf_student_log` VALUES ('514', '27', '183.184.184.44', '1609839310', '233');
INSERT INTO `cmf_student_log` VALUES ('515', '27', '183.184.184.44', '1609839326', '174');
INSERT INTO `cmf_student_log` VALUES ('516', '27', '141.164.58.230', '1609840449', '221');
INSERT INTO `cmf_student_log` VALUES ('517', '27', '180.140.66.159', '1609841545', '221');
INSERT INTO `cmf_student_log` VALUES ('518', '27', '112.229.14.125', '1609842225', '233');
INSERT INTO `cmf_student_log` VALUES ('519', '27', '110.255.189.134', '1609867314', '190');
INSERT INTO `cmf_student_log` VALUES ('520', '27', '117.85.97.76', '1609894009', '221');
INSERT INTO `cmf_student_log` VALUES ('521', '27', '218.28.104.230', '1609894423', '220');
INSERT INTO `cmf_student_log` VALUES ('522', '27', '113.240.135.253', '1609894880', '221');
INSERT INTO `cmf_student_log` VALUES ('523', '27', '113.240.135.253', '1609894896', '174');
INSERT INTO `cmf_student_log` VALUES ('524', '27', '113.240.135.253', '1609894935', '29');
INSERT INTO `cmf_student_log` VALUES ('525', '27', '221.226.105.122', '1609895582', '190');
INSERT INTO `cmf_student_log` VALUES ('526', '27', '27.201.182.112', '1609896196', '235');
INSERT INTO `cmf_student_log` VALUES ('527', '27', '221.226.105.122', '1609897324', '235');
INSERT INTO `cmf_student_log` VALUES ('528', '27', '27.201.182.112', '1609897366', '235');
INSERT INTO `cmf_student_log` VALUES ('529', '27', '144.123.36.206', '1609897411', '207');
INSERT INTO `cmf_student_log` VALUES ('530', '27', '114.221.100.130', '1609904285', '220');
INSERT INTO `cmf_student_log` VALUES ('531', '27', '113.240.173.166', '1609904479', '221');
INSERT INTO `cmf_student_log` VALUES ('532', '1', '144.123.36.206', '1609905711', '221');
INSERT INTO `cmf_student_log` VALUES ('533', '1', '144.123.36.206', '1609905714', '221');
INSERT INTO `cmf_student_log` VALUES ('534', '27', '144.123.36.206', '1609905777', '221');
INSERT INTO `cmf_student_log` VALUES ('535', '27', '218.82.145.44', '1609911813', '220');
INSERT INTO `cmf_student_log` VALUES ('536', '27', '175.0.56.108', '1609913204', '221');
INSERT INTO `cmf_student_log` VALUES ('537', '27', '175.0.56.108', '1609913216', '202');
INSERT INTO `cmf_student_log` VALUES ('538', '27', '175.0.56.108', '1609913224', '218');
INSERT INTO `cmf_student_log` VALUES ('539', '27', '175.0.56.108', '1609913233', '218');
INSERT INTO `cmf_student_log` VALUES ('540', '27', '61.158.152.153', '1609913462', '221');
INSERT INTO `cmf_student_log` VALUES ('541', '27', '61.158.152.153', '1609913509', '29');
INSERT INTO `cmf_student_log` VALUES ('542', '27', '61.158.152.153', '1609913543', '224');
INSERT INTO `cmf_student_log` VALUES ('543', '27', '61.158.152.153', '1609913556', '232');
INSERT INTO `cmf_student_log` VALUES ('544', '27', '58.17.161.254', '1609914181', '221');
INSERT INTO `cmf_student_log` VALUES ('545', '27', '111.62.81.46', '1609914913', '174');
INSERT INTO `cmf_student_log` VALUES ('546', '27', '111.62.81.46', '1609914936', '232');
INSERT INTO `cmf_student_log` VALUES ('547', '27', '111.62.81.46', '1609914943', '232');
INSERT INTO `cmf_student_log` VALUES ('548', '27', '111.62.81.46', '1609914953', '49');
INSERT INTO `cmf_student_log` VALUES ('549', '27', '111.62.81.46', '1609914971', '49');
INSERT INTO `cmf_student_log` VALUES ('550', '27', '116.228.143.58', '1609915946', '221');
INSERT INTO `cmf_student_log` VALUES ('551', '27', '111.62.81.46', '1609915975', '221');
INSERT INTO `cmf_student_log` VALUES ('552', '27', '101.199.100.2', '1609922132', '221');
INSERT INTO `cmf_student_log` VALUES ('553', '27', '101.199.100.2', '1609922189', '220');
INSERT INTO `cmf_student_log` VALUES ('554', '27', '101.199.100.2', '1609922196', '207');
INSERT INTO `cmf_student_log` VALUES ('555', '27', '118.114.189.28', '1609922748', '220');
INSERT INTO `cmf_student_log` VALUES ('556', '27', '118.114.189.28', '1609922758', '202');
INSERT INTO `cmf_student_log` VALUES ('557', '27', '222.190.61.127', '1609925284', '172');
INSERT INTO `cmf_student_log` VALUES ('558', '27', '218.17.21.118', '1609925459', '220');
INSERT INTO `cmf_student_log` VALUES ('559', '27', '119.98.223.239', '1609925477', '207');
INSERT INTO `cmf_student_log` VALUES ('560', '27', '119.98.223.239', '1609925499', '232');
INSERT INTO `cmf_student_log` VALUES ('561', '27', '121.13.108.41', '1609925575', '221');
INSERT INTO `cmf_student_log` VALUES ('562', '27', '121.13.108.41', '1609925612', '221');
INSERT INTO `cmf_student_log` VALUES ('563', '27', '218.56.58.82', '1609926827', '207');
INSERT INTO `cmf_student_log` VALUES ('564', '27', '218.56.58.82', '1609926843', '232');
INSERT INTO `cmf_student_log` VALUES ('565', '27', '218.56.58.82', '1609926854', '207');
INSERT INTO `cmf_student_log` VALUES ('566', '27', '218.56.58.82', '1609926890', '207');
INSERT INTO `cmf_student_log` VALUES ('567', '27', '218.56.58.82', '1609926891', '232');
INSERT INTO `cmf_student_log` VALUES ('568', '27', '218.56.58.82', '1609926892', '207');
INSERT INTO `cmf_student_log` VALUES ('569', '27', '218.56.58.82', '1609927031', '172');
INSERT INTO `cmf_student_log` VALUES ('570', '27', '218.56.58.82', '1609927034', '16');
INSERT INTO `cmf_student_log` VALUES ('571', '27', '218.56.58.82', '1609927077', '235');
INSERT INTO `cmf_student_log` VALUES ('572', '27', '218.56.58.82', '1609927176', '235');
INSERT INTO `cmf_student_log` VALUES ('573', '27', '111.170.200.219', '1609928025', '221');
INSERT INTO `cmf_student_log` VALUES ('574', '27', '111.170.200.219', '1609928025', '221');
INSERT INTO `cmf_student_log` VALUES ('575', '27', '111.170.200.219', '1609928052', '13');
INSERT INTO `cmf_student_log` VALUES ('576', '27', '61.158.208.146', '1609929658', '221');
INSERT INTO `cmf_student_log` VALUES ('577', '27', '223.104.111.81', '1609930426', '220');
INSERT INTO `cmf_student_log` VALUES ('578', '27', '221.221.151.176', '1609931478', '49');
INSERT INTO `cmf_student_log` VALUES ('579', '27', '221.221.151.176', '1609931482', '49');
INSERT INTO `cmf_student_log` VALUES ('580', '27', '221.221.151.176', '1609931490', '221');
INSERT INTO `cmf_student_log` VALUES ('581', '27', '221.221.151.176', '1609931494', '220');
INSERT INTO `cmf_student_log` VALUES ('582', '27', '203.190.99.49', '1609932185', '220');
INSERT INTO `cmf_student_log` VALUES ('583', '27', '115.60.149.168', '1609937835', '220');
INSERT INTO `cmf_student_log` VALUES ('584', '27', '113.246.153.38', '1609938906', '220');
INSERT INTO `cmf_student_log` VALUES ('585', '27', '113.246.153.38', '1609938921', '232');
INSERT INTO `cmf_student_log` VALUES ('586', '27', '106.122.215.156', '1609940959', '224');
INSERT INTO `cmf_student_log` VALUES ('587', '27', '120.245.102.105', '1609942657', '16');
INSERT INTO `cmf_student_log` VALUES ('588', '27', '120.245.102.105', '1609942768', '29');
INSERT INTO `cmf_student_log` VALUES ('589', '27', '120.245.102.105', '1609942820', '202');
INSERT INTO `cmf_student_log` VALUES ('590', '27', '120.245.102.105', '1609942850', '31');
INSERT INTO `cmf_student_log` VALUES ('591', '27', '120.245.102.105', '1609942879', '18');
INSERT INTO `cmf_student_log` VALUES ('592', '27', '120.245.102.105', '1609942955', '33');
INSERT INTO `cmf_student_log` VALUES ('593', '27', '120.245.102.105', '1609942968', '217');
INSERT INTO `cmf_student_log` VALUES ('594', '27', '120.245.102.105', '1609942975', '217');
INSERT INTO `cmf_student_log` VALUES ('595', '27', '58.20.23.64', '1609943043', '220');
INSERT INTO `cmf_student_log` VALUES ('596', '27', '58.20.23.64', '1609943054', '29');
INSERT INTO `cmf_student_log` VALUES ('597', '27', '120.244.216.222', '1609944931', '220');
INSERT INTO `cmf_student_log` VALUES ('598', '60', '183.193.116.176', '1609950621', '207');
INSERT INTO `cmf_student_log` VALUES ('599', '27', '119.98.220.2', '1609983460', '207');
INSERT INTO `cmf_student_log` VALUES ('600', '27', '119.98.220.2', '1609983475', '29');
INSERT INTO `cmf_student_log` VALUES ('601', '27', '119.98.220.2', '1609983526', '16');
INSERT INTO `cmf_student_log` VALUES ('602', '27', '119.98.220.2', '1609983563', '172');
INSERT INTO `cmf_student_log` VALUES ('603', '27', '119.98.220.2', '1609983569', '13');
INSERT INTO `cmf_student_log` VALUES ('604', '27', '115.227.197.236', '1609990610', '220');
INSERT INTO `cmf_student_log` VALUES ('605', '27', '122.227.29.235', '1609993669', '220');
INSERT INTO `cmf_student_log` VALUES ('606', '27', '183.6.127.183', '1609994316', '207');
INSERT INTO `cmf_student_log` VALUES ('607', '27', '117.67.156.38', '1609997785', '33');
INSERT INTO `cmf_student_log` VALUES ('608', '27', '117.67.156.38', '1609997817', '235');
INSERT INTO `cmf_student_log` VALUES ('609', '62', '116.28.157.112', '1610000127', '207');
INSERT INTO `cmf_student_log` VALUES ('610', '27', '58.16.225.251', '1610004951', '220');
INSERT INTO `cmf_student_log` VALUES ('611', '27', '58.16.225.251', '1610004962', '29');
INSERT INTO `cmf_student_log` VALUES ('612', '27', '112.250.195.127', '1610006933', '49');
INSERT INTO `cmf_student_log` VALUES ('613', '27', '113.88.239.76', '1610007284', '224');
INSERT INTO `cmf_student_log` VALUES ('614', '27', '222.190.105.75', '1610008200', '220');
INSERT INTO `cmf_student_log` VALUES ('615', '27', '222.190.105.75', '1610008217', '206');
INSERT INTO `cmf_student_log` VALUES ('616', '27', '222.190.105.75', '1610008250', '207');
INSERT INTO `cmf_student_log` VALUES ('617', '27', '222.190.105.75', '1610008271', '224');
INSERT INTO `cmf_student_log` VALUES ('618', '27', '222.190.105.75', '1610008280', '174');
INSERT INTO `cmf_student_log` VALUES ('619', '27', '39.128.15.243', '1610008300', '207');
INSERT INTO `cmf_student_log` VALUES ('620', '27', '111.34.159.92', '1610009700', '207');
INSERT INTO `cmf_student_log` VALUES ('621', '27', '111.34.159.92', '1610009754', '220');
INSERT INTO `cmf_student_log` VALUES ('622', '27', '111.34.159.92', '1610009779', '170');
INSERT INTO `cmf_student_log` VALUES ('623', '27', '124.202.197.6', '1610013891', '220');
INSERT INTO `cmf_student_log` VALUES ('624', '27', '218.2.97.91', '1610022338', '220');
INSERT INTO `cmf_student_log` VALUES ('625', '27', '112.49.202.133', '1610022406', '220');
INSERT INTO `cmf_student_log` VALUES ('626', '27', '120.245.102.105', '1610027736', '220');
INSERT INTO `cmf_student_log` VALUES ('627', '65', '120.245.102.105', '1610028972', '207');
INSERT INTO `cmf_student_log` VALUES ('628', '65', '120.245.102.105', '1610029485', '31');
INSERT INTO `cmf_student_log` VALUES ('629', '65', '120.245.102.105', '1610029621', '16');
INSERT INTO `cmf_student_log` VALUES ('630', '66', '116.253.98.77', '1610034699', '16');
INSERT INTO `cmf_student_log` VALUES ('631', '27', '183.236.230.229', '1610064848', '207');
INSERT INTO `cmf_student_log` VALUES ('632', '27', '183.236.230.229', '1610064885', '207');
INSERT INTO `cmf_student_log` VALUES ('633', '27', '106.6.174.126', '1610067468', '220');
INSERT INTO `cmf_student_log` VALUES ('634', '27', '106.6.174.126', '1610067474', '207');
INSERT INTO `cmf_student_log` VALUES ('635', '27', '211.142.128.229', '1610069249', '220');
INSERT INTO `cmf_student_log` VALUES ('636', '27', '27.221.49.46', '1610070292', '220');
INSERT INTO `cmf_student_log` VALUES ('637', '27', '114.88.163.232', '1610070375', '207');
INSERT INTO `cmf_student_log` VALUES ('638', '27', '114.88.163.232', '1610070388', '202');
INSERT INTO `cmf_student_log` VALUES ('639', '27', '121.204.50.145', '1610070455', '207');
INSERT INTO `cmf_student_log` VALUES ('640', '27', '121.204.50.145', '1610070488', '10');
INSERT INTO `cmf_student_log` VALUES ('641', '27', '171.34.178.167', '1610070513', '219');
INSERT INTO `cmf_student_log` VALUES ('642', '27', '121.204.50.145', '1610070528', '29');
INSERT INTO `cmf_student_log` VALUES ('643', '27', '180.167.193.50', '1610070837', '207');
INSERT INTO `cmf_student_log` VALUES ('644', '27', '114.135.100.31', '1610071918', '207');
INSERT INTO `cmf_student_log` VALUES ('645', '27', '114.135.100.31', '1610071993', '16');
INSERT INTO `cmf_student_log` VALUES ('646', '27', '114.135.100.31', '1610072049', '29');
INSERT INTO `cmf_student_log` VALUES ('647', '27', '114.135.100.31', '1610072088', '29');
INSERT INTO `cmf_student_log` VALUES ('648', '27', '117.71.53.38', '1610072108', '220');
INSERT INTO `cmf_student_log` VALUES ('649', '27', '117.71.53.38', '1610072258', '202');
INSERT INTO `cmf_student_log` VALUES ('650', '67', '117.89.198.145', '1610072273', '207');
INSERT INTO `cmf_student_log` VALUES ('651', '67', '117.89.198.145', '1610072296', '16');
INSERT INTO `cmf_student_log` VALUES ('652', '67', '117.89.198.145', '1610072347', '16');
INSERT INTO `cmf_student_log` VALUES ('653', '67', '117.89.198.145', '1610072349', '207');
INSERT INTO `cmf_student_log` VALUES ('654', '27', '117.89.198.145', '1610072388', '27');
INSERT INTO `cmf_student_log` VALUES ('655', '27', '111.121.107.176', '1610072676', '220');
INSERT INTO `cmf_student_log` VALUES ('656', '27', '111.121.107.176', '1610072704', '207');
INSERT INTO `cmf_student_log` VALUES ('657', '27', '111.121.107.176', '1610072721', '49');
INSERT INTO `cmf_student_log` VALUES ('658', '27', '111.121.107.176', '1610072730', '49');
INSERT INTO `cmf_student_log` VALUES ('659', '27', '101.229.59.129', '1610072969', '220');
INSERT INTO `cmf_student_log` VALUES ('660', '27', '101.229.59.129', '1610072982', '202');
INSERT INTO `cmf_student_log` VALUES ('661', '27', '110.191.216.171', '1610074323', '29');
INSERT INTO `cmf_student_log` VALUES ('662', '27', '110.191.216.171', '1610074342', '207');
INSERT INTO `cmf_student_log` VALUES ('663', '27', '110.191.216.171', '1610074355', '232');
INSERT INTO `cmf_student_log` VALUES ('664', '27', '110.191.216.171', '1610074360', '232');
INSERT INTO `cmf_student_log` VALUES ('665', '27', '110.191.216.171', '1610074363', '224');
INSERT INTO `cmf_student_log` VALUES ('666', '27', '52.231.53.113', '1610074517', '232');
INSERT INTO `cmf_student_log` VALUES ('667', '27', '52.231.53.113', '1610074548', '16');
INSERT INTO `cmf_student_log` VALUES ('668', '27', '14.155.112.132', '1610075563', '232');
INSERT INTO `cmf_student_log` VALUES ('669', '27', '202.103.208.66', '1610078010', '207');
INSERT INTO `cmf_student_log` VALUES ('670', '27', '202.103.208.66', '1610078033', '202');
INSERT INTO `cmf_student_log` VALUES ('671', '27', '202.103.208.66', '1610078042', '172');
INSERT INTO `cmf_student_log` VALUES ('672', '27', '202.103.208.66', '1610078054', '202');
INSERT INTO `cmf_student_log` VALUES ('673', '27', '183.223.222.61', '1610078185', '220');
INSERT INTO `cmf_student_log` VALUES ('674', '27', '183.223.222.61', '1610078290', '48');
INSERT INTO `cmf_student_log` VALUES ('675', '27', '183.223.222.61', '1610078313', '48');
INSERT INTO `cmf_student_log` VALUES ('676', '27', '111.34.159.92', '1610081500', '207');
INSERT INTO `cmf_student_log` VALUES ('677', '27', '183.26.112.158', '1610082879', '30');
INSERT INTO `cmf_student_log` VALUES ('678', '27', '183.26.112.158', '1610082934', '232');
INSERT INTO `cmf_student_log` VALUES ('679', '27', '183.26.112.158', '1610082950', '218');
INSERT INTO `cmf_student_log` VALUES ('680', '27', '183.26.112.158', '1610082968', '172');
INSERT INTO `cmf_student_log` VALUES ('681', '27', '183.26.112.158', '1610082996', '13');
INSERT INTO `cmf_student_log` VALUES ('682', '27', '183.26.112.158', '1610083033', '235');
INSERT INTO `cmf_student_log` VALUES ('683', '27', '111.198.33.81', '1610090097', '207');
INSERT INTO `cmf_student_log` VALUES ('684', '27', '183.129.254.162', '1610097210', '220');
INSERT INTO `cmf_student_log` VALUES ('685', '27', '180.165.228.40', '1610101158', '27');
INSERT INTO `cmf_student_log` VALUES ('686', '27', '125.78.205.75', '1610108494', '220');
INSERT INTO `cmf_student_log` VALUES ('687', '27', '125.78.205.75', '1610108500', '207');
INSERT INTO `cmf_student_log` VALUES ('688', '27', '112.48.60.189', '1610115657', '220');
INSERT INTO `cmf_student_log` VALUES ('689', '27', '220.200.57.102', '1610129466', '207');

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES ('1', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES ('1', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('2', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('3', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('4', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('5', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('6', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('7', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('8', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_login` (`user_login`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES ('1', '1', '2', '762969600', '1683175168', '0', '0', '0.00', '1582608854', '1', 'admin', '###700e2fbc38527c1128675f1fd0beae2c', '迎迎', 'admin@qq.com', '', '', '', '127.0.0.1', '', '', null);

-- ----------------------------
-- Table structure for cmf_users
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users`;
CREATE TABLE `cmf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` bigint(20) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `coin` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '金币',
  `consumption` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计消费',
  `create_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `avatar_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '用户小头像，200X200以下',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `login_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '第三方标识,0PC，1QQ，2微信，3新浪，4facebook，5twitter',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '三方openid',
  `school` varchar(255) NOT NULL DEFAULT '' COMMENT '院校',
  `experience` longtext COMMENT '教育经历',
  `feature` longtext COMMENT '教育特点',
  `source` tinyint(1) NOT NULL DEFAULT '0' COMMENT '注册设备，0web1android2IOS3小程序',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会员类型，0学员1教师',
  `signoryid` int(11) NOT NULL DEFAULT '0' COMMENT '专长ID',
  `identity` varchar(255) NOT NULL DEFAULT '' COMMENT '身份标识',
  `courses` int(11) NOT NULL DEFAULT '0' COMMENT '课程数',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '序号',
  `gradeid` bigint(20) NOT NULL DEFAULT '0' COMMENT '学级分类ID',
  `integral` decimal(20,2) DEFAULT '0.00' COMMENT '积分',
  `student_number` varchar(15) DEFAULT '' COMMENT '学号',
  `father_mobile` varchar(25) NOT NULL DEFAULT '' COMMENT '爸爸手机号',
  `mother_mobile` varchar(25) NOT NULL DEFAULT '' COMMENT '妈妈手机号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_login` (`user_login`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of cmf_users
-- ----------------------------
INSERT INTO `cmf_users` VALUES ('1', '1', '1370016000', '1683705257', '0.00', '0.00', '1603331730', '1', '13716864521', '###700e2fbc38527c1128675f1fd0beae2c', '齐阳', 'admin/20230429/c33c395b8891497a7782006b38711fab.jpg', 'admin/20230429/c33c395b8891497a7782006b38711fab.jpg', '', '127.0.0.1', '13716864521', '0', '', '忘记哦金融网', '大学', '急哦急哦怕为为', '0', '1', '0', '', '0', '10000', '9', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('27', '1', '1370016000', '1610129455', '0.00', '0.00', '1606887529', '1', '13800000000', '###700e2fbc38527c1128675f1fd0beae2c', '陈同学', 'https://demo.sdwanyue.com/api/20210106/5bc6c89d50b5bc59f50eaa4cce4b77e3.jpg', 'https://demo.sdwanyue.com/api/20210106/5bc6c89d50b5bc59f50eaa4cce4b77e3.jpg', '', '220.200.57.102', '13800000000', '0', '', '', null, null, '0', '0', '0', '', '0', '10000', '3', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('68', '1', '1370016000', '1683704073', '0.00', '0.00', '1682746594', '1', '13716864520', '###700e2fbc38527c1128675f1fd0beae2c', '阳阳老师', 'admin/20230429/c33c395b8891497a7782006b38711fab.jpg', 'admin/20230429/c33c395b8891497a7782006b38711fab.jpg', '', '127.0.0.1', '13716864520', '0', '', '', null, null, '3', '1', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('69', '1', '1370016000', '1683181788', '0.00', '0.00', '1682782457', '1', '13631650414', '###700e2fbc38527c1128675f1fd0beae2c', '用户415', 'admin/20230513/ef3b2d019f3868f48ccadedffee2deec.jpeg', 'admin/20230513/ef3b2d019f3868f48ccadedffee2deec.jpeg', '', '127.0.0.1', '13631650414', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('100', '2', '1683734400', '1683961188', '0.00', '0.00', '1682782457', '1', '13631650415', '###700e2fbc38527c1128675f1fd0beae2c', '迎迎老师', 'admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg', 'admin/20230429/fbed4627a194ea1ba9edffe3310ed0c8.jpg', '', '127.0.0.1', '13631650415', '0', '', '浙江大学', '我之前写的呢', '可爱活泼', '3', '1', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('101', '1', '1370016000', '1683539385', '0.00', '0.00', '1683269827', '1', '13716864511', '###700e2fbc38527c1128675f1fd0beae2c', '童靴1', 'admin/20230513/c285857038239c5593b2f3a0b7c7ec89.jpeg', 'admin/20230513/c285857038239c5593b2f3a0b7c7ec89.jpeg', '', '127.0.0.1', '13716864511', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('102', '1', '1370016000', '1683269854', '0.00', '0.00', '1683269854', '1', '13716864512', '###700e2fbc38527c1128675f1fd0beae2c', '童靴2', 'admin/20230513/31157cd1373ef3b53e0cd88192ccb1c2.jpeg', 'admin/20230513/31157cd1373ef3b53e0cd88192ccb1c2.jpeg', '', '127.0.0.1', '13716864512', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('103', '1', '1370016000', '1683269880', '0.00', '0.00', '1683269880', '1', '13716864513', '###700e2fbc38527c1128675f1fd0beae2c', '童靴3', 'admin/20230513/fa70270b3d6e1a2a1b585cce72e45aca.jpeg', 'admin/20230513/fa70270b3d6e1a2a1b585cce72e45aca.jpeg', '', '127.0.0.1', '13716864513', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('104', '2', '1370016000', '1683269954', '0.00', '0.00', '1683269954', '1', '13716864514', '###700e2fbc38527c1128675f1fd0beae2c', '童靴4', 'admin/20230513/5be62e50e1f5acb1481630133d07306a.jpeg', 'admin/20230513/5be62e50e1f5acb1481630133d07306a.jpeg', '', '127.0.0.1', '13716864514', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('105', '2', '1370016000', '1683269972', '0.00', '0.00', '1683269972', '1', '13716864515', '###700e2fbc38527c1128675f1fd0beae2c', '童靴5', 'admin/20230513/77b3dff2087ea30598f6e9ab8cf8402c.jpeg', 'admin/20230513/77b3dff2087ea30598f6e9ab8cf8402c.jpeg', '', '127.0.0.1', '13716864515', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('106', '2', '1370016000', '1683962823', '0.00', '0.00', '1683270019', '1', '13716864516', '###700e2fbc38527c1128675f1fd0beae2c', '童靴6', 'admin/20230513/ab97ca7056f45f184bd67bace91839b7.jpeg', 'admin/20230513/ab97ca7056f45f184bd67bace91839b7.jpeg', '', '127.0.0.1', '13716864516', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('107', '2', '1370016000', '1683270035', '0.00', '0.00', '1683270035', '1', '13716864517', '###700e2fbc38527c1128675f1fd0beae2c', '童靴7', 'admin/20230513/2e8b31aa748b9a4e1016235c024aaa5b.jpeg', 'admin/20230513/2e8b31aa748b9a4e1016235c024aaa5b.jpeg', '', '127.0.0.1', '13716864517', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('108', '2', '1370016000', '1683270055', '0.00', '0.00', '1683270055', '1', '13716864518', '###700e2fbc38527c1128675f1fd0beae2c', '童靴8', 'admin/20230513/d28380c99e25a543852c9ad24a004f82.jpeg', 'admin/20230513/d28380c99e25a543852c9ad24a004f82.jpeg', '', '127.0.0.1', '13716864518', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('109', '2', '1370016000', '1683270088', '0.00', '0.00', '1683270088', '1', '13716864519', '###700e2fbc38527c1128675f1fd0beae2c', '童靴9', 'admin/20230513/200fe1473d8ac3cf9a5f29b681dc3f69.jpeg', 'admin/20230513/200fe1473d8ac3cf9a5f29b681dc3f69.jpeg', '', '127.0.0.1', '13716864519', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '137168645', '13716864516', '13716864517');
INSERT INTO `cmf_users` VALUES ('110', '2', '1368374400', '1683953522', '0.00', '0.00', '1683947896', '1', '13716864522', '###700e2fbc38527c1128675f1fd0beae2c', '测试用户', 'admin/20230513/5468196ea2adc86211949d4a14a2a6d0.jpeg', 'admin/20230513/5468196ea2adc86211949d4a14a2a6d0.jpeg', '', '127.0.0.1', '13716864522', '0', '', '', null, null, '3', '0', '0', '', '0', '10000', '0', '0.00', '111', '222', '333');
INSERT INTO `cmf_users` VALUES ('111', '2', '0', '0', '0.00', '0.00', '1683958275', '1', '13716864523', '###700e2fbc38527c1128675f1fd0beae2c', '测试用户2', 'admin/20230513/e61277ad3041e2d20291988396ed0f8a.jpeg', 'admin/20230513/e61277ad3041e2d20291988396ed0f8a.jpeg', '', '', '13716864523', '0', '', '', null, null, '0', '0', '0', '', '0', '10000', '0', '0.00', '', '', '');

-- ----------------------------
-- Table structure for cmf_users_addrs
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users_addrs`;
CREATE TABLE `cmf_users_addrs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '市',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '区',
  `addr` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `isdef` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址，0否1是',
  `addtime` bigint(20) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_users_addrs
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_users_attention
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users_attention`;
CREATE TABLE `cmf_users_attention` (
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `touid` bigint(20) NOT NULL DEFAULT '0' COMMENT '对方ID',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_users_attention
-- ----------------------------
INSERT INTO `cmf_users_attention` VALUES ('39', '1', '1609742431');
INSERT INTO `cmf_users_attention` VALUES ('101', '100', '1683546601');
INSERT INTO `cmf_users_attention` VALUES ('101', '68', '1683546604');
INSERT INTO `cmf_users_attention` VALUES ('101', '1', '1683546605');

-- ----------------------------
-- Table structure for cmf_users_auth
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users_auth`;
CREATE TABLE `cmf_users_auth` (
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `cer_no` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证号',
  `front_view` varchar(255) NOT NULL DEFAULT '' COMMENT '证件正面',
  `back_view` varchar(255) NOT NULL DEFAULT '' COMMENT '证件反面',
  `handset_view` varchar(255) NOT NULL DEFAULT '' COMMENT '手持证件正面照',
  `reason` text COMMENT '原因',
  `addtime` int(12) NOT NULL DEFAULT '0' COMMENT '提交时间',
  `uptime` int(12) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，0审核中1通过2拒绝',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_users_auth
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_users_coinrecord
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users_coinrecord`;
CREATE TABLE `cmf_users_coinrecord` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '收支类型,0支出，1收入',
  `action` tinyint(4) NOT NULL DEFAULT '0' COMMENT '收支行为，1余额下单2订单退回3赠送礼物',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `touid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '对方ID',
  `actionid` int(11) NOT NULL DEFAULT '0' COMMENT '行为对应ID',
  `nums` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '总价',
  `addtime` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `action_uid_addtime` (`action`,`uid`,`addtime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_users_coinrecord
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_users_pushid
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users_pushid`;
CREATE TABLE `cmf_users_pushid` (
  `uid` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `pushid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户对应极光registration_id',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cmf_users_pushid
-- ----------------------------
INSERT INTO `cmf_users_pushid` VALUES ('1', '');
INSERT INTO `cmf_users_pushid` VALUES ('28', '');
INSERT INTO `cmf_users_pushid` VALUES ('33', '');
INSERT INTO `cmf_users_pushid` VALUES ('34', '');
INSERT INTO `cmf_users_pushid` VALUES ('35', '');
INSERT INTO `cmf_users_pushid` VALUES ('36', '');
INSERT INTO `cmf_users_pushid` VALUES ('37', '');
INSERT INTO `cmf_users_pushid` VALUES ('38', '');
INSERT INTO `cmf_users_pushid` VALUES ('39', '');
INSERT INTO `cmf_users_pushid` VALUES ('40', '');
INSERT INTO `cmf_users_pushid` VALUES ('41', '');
INSERT INTO `cmf_users_pushid` VALUES ('42', '');
INSERT INTO `cmf_users_pushid` VALUES ('43', '');
INSERT INTO `cmf_users_pushid` VALUES ('44', '');
INSERT INTO `cmf_users_pushid` VALUES ('45', '');
INSERT INTO `cmf_users_pushid` VALUES ('46', '');
INSERT INTO `cmf_users_pushid` VALUES ('47', '');
INSERT INTO `cmf_users_pushid` VALUES ('49', '');
INSERT INTO `cmf_users_pushid` VALUES ('51', '');
INSERT INTO `cmf_users_pushid` VALUES ('52', '');
INSERT INTO `cmf_users_pushid` VALUES ('53', '');
INSERT INTO `cmf_users_pushid` VALUES ('54', '');
INSERT INTO `cmf_users_pushid` VALUES ('55', '');
INSERT INTO `cmf_users_pushid` VALUES ('57', '');
INSERT INTO `cmf_users_pushid` VALUES ('58', '');
INSERT INTO `cmf_users_pushid` VALUES ('59', '');
INSERT INTO `cmf_users_pushid` VALUES ('61', '');
INSERT INTO `cmf_users_pushid` VALUES ('62', '');
INSERT INTO `cmf_users_pushid` VALUES ('63', '');
INSERT INTO `cmf_users_pushid` VALUES ('64', '');
INSERT INTO `cmf_users_pushid` VALUES ('68', '');
INSERT INTO `cmf_users_pushid` VALUES ('69', '');
INSERT INTO `cmf_users_pushid` VALUES ('70', '');
INSERT INTO `cmf_users_pushid` VALUES ('100', '');
INSERT INTO `cmf_users_pushid` VALUES ('101', '');
INSERT INTO `cmf_users_pushid` VALUES ('102', '');
INSERT INTO `cmf_users_pushid` VALUES ('103', '');
INSERT INTO `cmf_users_pushid` VALUES ('104', '');
INSERT INTO `cmf_users_pushid` VALUES ('105', '');
INSERT INTO `cmf_users_pushid` VALUES ('106', '');
INSERT INTO `cmf_users_pushid` VALUES ('107', '');
INSERT INTO `cmf_users_pushid` VALUES ('108', '');
INSERT INTO `cmf_users_pushid` VALUES ('109', '');
INSERT INTO `cmf_users_pushid` VALUES ('110', '');

-- ----------------------------
-- Table structure for cmf_users_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_users_token`;
CREATE TABLE `cmf_users_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_users_token
-- ----------------------------
INSERT INTO `cmf_users_token` VALUES ('1', '1', '1696665257', '1683705257', '3783d76a3ed36fc3996004149dfa99e9', '');
INSERT INTO `cmf_users_token` VALUES ('15', '27', '1636049455', '1610129455', '790d27d909c2dc584f401177564b46ee', '');
INSERT INTO `cmf_users_token` VALUES ('23', '35', '1622193872', '1609233872', '754a9c51d87fab31e856c32521d2c91c', '');
INSERT INTO `cmf_users_token` VALUES ('41', '1', '1696665257', '1683705257', '3783d76a3ed36fc3996004149dfa99e9', '');
INSERT INTO `cmf_users_token` VALUES ('62', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('63', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('64', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('65', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('66', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('67', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('68', '69', '1696141788', '1683181788', '12d82c874b2896e388606599426410e5', '');
INSERT INTO `cmf_users_token` VALUES ('69', '69', '1696141788', '1683181788', '12d82c874b2896e388606599426410e5', '');
INSERT INTO `cmf_users_token` VALUES ('70', '70', '1695746131', '1682786131', 'a51e610cec115487cd179fd0703d25fa', '');
INSERT INTO `cmf_users_token` VALUES ('71', '69', '1696141788', '1683181788', '12d82c874b2896e388606599426410e5', '');
INSERT INTO `cmf_users_token` VALUES ('72', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('73', '69', '1696141788', '1683181788', '12d82c874b2896e388606599426410e5', '');
INSERT INTO `cmf_users_token` VALUES ('74', '69', '1696141788', '1683181788', '12d82c874b2896e388606599426410e5', '');
INSERT INTO `cmf_users_token` VALUES ('75', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('76', '68', '1696664073', '1683704073', '29ce74e5989a8947559d2ca19a4387d9', '');
INSERT INTO `cmf_users_token` VALUES ('77', '101', '1696499385', '1683539385', 'a8fa77a87451d4fdb87639ab712ab8ef', '');
INSERT INTO `cmf_users_token` VALUES ('78', '102', '1696229854', '1683269854', '26a679bfe48afb597ea1c238863cf2d6', '');
INSERT INTO `cmf_users_token` VALUES ('79', '103', '1696229880', '1683269880', 'a827c3024f7921ee4767dbdc27dc3acc', '');
INSERT INTO `cmf_users_token` VALUES ('80', '104', '1696229954', '1683269954', '7edbd77450d54cfd48c915b47dce3f35', '');
INSERT INTO `cmf_users_token` VALUES ('81', '105', '1696229972', '1683269972', '3a673d672101c7a37c5d80ebd7fb18ea', '');
INSERT INTO `cmf_users_token` VALUES ('82', '106', '1696922823', '1683962823', '93d44a71fe3c0a96a61aa961c31c1620', '');
INSERT INTO `cmf_users_token` VALUES ('83', '107', '1696230035', '1683270035', 'a3f592328bf73b2cd8c20ca10f4d54f3', '');
INSERT INTO `cmf_users_token` VALUES ('84', '108', '1696230055', '1683270055', '45d662aea7461c7790feb80898d8cbf6', '');
INSERT INTO `cmf_users_token` VALUES ('85', '109', '1696230088', '1683270088', '2218f2e3f582286597bbf6ee73a79fd3', '');
INSERT INTO `cmf_users_token` VALUES ('86', '100', '1696921188', '1683961188', '9a86ef46b65279f429ad4468f62f095d', '');
INSERT INTO `cmf_users_token` VALUES ('88', '110', '1696913522', '1683953522', '4faa6c12f1b1ee270aa50278dbdbd317', '');

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('1', '1', '1698296608', '1682744608', '99f2e22061a9bb03bce7fdc23f4eb62e8e8e41d9eb97e5f17c28496e0834f1ec', 'web');
INSERT INTO `cmf_user_token` VALUES ('2', '2', '1621997836', '1606445836', '7d87072b1d6b100d93d12649d51d84d53080f4e396c55f90abbc355d5214d42c', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------
INSERT INTO `cmf_verification_code` VALUES ('1', '0', '1609230575', '1609230875', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('2', '0', '1609230921', '1609231221', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('3', '0', '1609230928', '1609231228', '123456', '18660886118');
INSERT INTO `cmf_verification_code` VALUES ('4', '0', '1609230991', '1609231291', '123456', '18660886118');
INSERT INTO `cmf_verification_code` VALUES ('5', '0', '1609231062', '1609231362', '123456', '18660886118');
INSERT INTO `cmf_verification_code` VALUES ('6', '0', '1609231479', '1609231779', '123456', '18660886118');
INSERT INTO `cmf_verification_code` VALUES ('7', '0', '1609231564', '1609231864', '123456', '18660886118');
INSERT INTO `cmf_verification_code` VALUES ('8', '0', '1609231704', '1609232004', '123456', '18364883266');
INSERT INTO `cmf_verification_code` VALUES ('9', '0', '1609231793', '1609232093', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('10', '0', '1609231796', '1609232096', '123456', '18364883266');
INSERT INTO `cmf_verification_code` VALUES ('11', '0', '1609232752', '1609233052', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('12', '0', '1609232818', '1609233118', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('13', '0', '1609233194', '1609233494', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('14', '0', '1609233529', '1609233829', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('15', '0', '1609234971', '1609235271', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('16', '0', '1609238284', '1609238584', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('17', '0', '1609289112', '1609289412', '123456', '18660886119');
INSERT INTO `cmf_verification_code` VALUES ('18', '0', '1609384503', '1609384803', '123456', '18660886225');
INSERT INTO `cmf_verification_code` VALUES ('19', '0', '1609384841', '1609385141', '123456', '18660886221');
INSERT INTO `cmf_verification_code` VALUES ('20', '0', '1609385731', '1609386031', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('21', '0', '1609385768', '1609386068', '123456', '18660886223');
INSERT INTO `cmf_verification_code` VALUES ('22', '0', '1609385989', '1609386289', '123456', '18660886226');
INSERT INTO `cmf_verification_code` VALUES ('23', '0', '1609386073', '1609386373', '123456', '18660886237');
INSERT INTO `cmf_verification_code` VALUES ('24', '0', '1609393856', '1609394156', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('25', '0', '1609396962', '1609397262', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('26', '0', '1609398349', '1609398649', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('27', '0', '1609401652', '1609401952', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('28', '0', '1609402619', '1609402919', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('29', '0', '1609402619', '1609402919', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('30', '0', '1609403216', '1609403516', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('31', '0', '1609403805', '1609404105', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('32', '0', '1609405014', '1609405314', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('33', '0', '1609405226', '1609405526', '123456', '18364883268');
INSERT INTO `cmf_verification_code` VALUES ('34', '0', '1609406167', '1609406467', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('35', '0', '1609667615', '1609667915', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('36', '0', '1609741929', '1609742229', '123456', '13800000000');
INSERT INTO `cmf_verification_code` VALUES ('37', '0', '1609742627', '1609742927', '123456', '18364883627');
INSERT INTO `cmf_verification_code` VALUES ('38', '0', '1609817335', '1609817635', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('39', '0', '1609833558', '1609833858', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('40', '0', '1609838635', '1609838935', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('41', '0', '1609840100', '1609840400', '123456', '13866666666');
INSERT INTO `cmf_verification_code` VALUES ('42', '0', '1609842528', '1609842828', '123456', '18727460740');
INSERT INTO `cmf_verification_code` VALUES ('43', '0', '1609867119', '1609867419', '123456', '15110261535');
INSERT INTO `cmf_verification_code` VALUES ('44', '0', '1609894098', '1609894398', '123456', '18660886114');
INSERT INTO `cmf_verification_code` VALUES ('45', '0', '1609916759', '1609917059', '123456', '15210203157');
INSERT INTO `cmf_verification_code` VALUES ('46', '0', '1609998162', '1609998462', '123456', '13854863592');
INSERT INTO `cmf_verification_code` VALUES ('47', '0', '1610000244', '1610000544', '123456', '15900001920');
INSERT INTO `cmf_verification_code` VALUES ('48', '0', '1610023611', '1610023911', '123456', '13167953001');
