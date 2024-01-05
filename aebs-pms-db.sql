/*
 Navicat MySQL Data Transfer

 Source Server         : 112.124.57.156.23125
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43-log)
 Source Host           : 112.124.57.156:23125
 Source Schema         : aebs-pms-db

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43-log)
 File Encoding         : 65001

 Date: 05/01/2024 17:18:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `detail_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家/地区',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for application_information
-- ----------------------------
DROP TABLE IF EXISTS `application_information`;
CREATE TABLE `application_information`  (
  `application_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '申请信息ID',
  `applicant` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `application_date` datetime NULL DEFAULT NULL COMMENT '申请日期',
  `application_department` bigint(11) NULL DEFAULT NULL COMMENT '申请部门',
  `applicant_company` bigint(11) NULL DEFAULT NULL COMMENT '申请公司',
  `related_contracts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目相关合同',
  `related_project` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关项目',
  `is_contract` bigint(11) NULL DEFAULT NULL COMMENT '是否主子合同',
  `main_contract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联主合同',
  `relateds_contracts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预算相关合同',
  `cost_center` decimal(10, 2) NULL DEFAULT NULL COMMENT '成本中心',
  PRIMARY KEY (`application_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同申请信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of application_information
-- ----------------------------

-- ----------------------------
-- Table structure for attachment_information
-- ----------------------------
DROP TABLE IF EXISTS `attachment_information`;
CREATE TABLE `attachment_information`  (
  `annex_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '附件信息序号',
  `annex_upload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件上传',
  `uploaded_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传人',
  `uploaded_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`annex_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attachment_information
-- ----------------------------

-- ----------------------------
-- Table structure for attachment_table
-- ----------------------------
DROP TABLE IF EXISTS `attachment_table`;
CREATE TABLE `attachment_table`  (
  `attachment_table_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '附件表id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件路径',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件名称',
  PRIMARY KEY (`attachment_table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attachment_table
-- ----------------------------

-- ----------------------------
-- Table structure for attend_supplier
-- ----------------------------
DROP TABLE IF EXISTS `attend_supplier`;
CREATE TABLE `attend_supplier`  (
  `attend_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '参评id',
  `supplier_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `category_code` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类编码',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `evaluation_id` bigint(20) NULL DEFAULT NULL COMMENT '考评id',
  `summary_score` double(10, 0) NULL DEFAULT NULL COMMENT '汇总得分',
  `score` double(10, 2) NULL DEFAULT NULL COMMENT '得分',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级',
  `evaluation_ranking` int(10) NULL DEFAULT NULL COMMENT '考评排行',
  `strategy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建议策略',
  PRIMARY KEY (`attend_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参评供应商' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attend_supplier
-- ----------------------------
INSERT INTO `attend_supplier` VALUES (55, 'GYS2023112414331791', '福厚互联网科技公司', '1002-1', '智能设备', 31, 82, 81.80, '', 1, '');
INSERT INTO `attend_supplier` VALUES (56, 'GYS20241414438968', '上海红双喜股份有限公司', '1003-1', '大家电', 31, 58, 58.20, '', 2, '');
INSERT INTO `attend_supplier` VALUES (58, 'GYS2023122914458436', '国网湖南省电力有限公司', '1001-2', '文具', 33, 60, 59.80, '', 1, '');
INSERT INTO `attend_supplier` VALUES (59, 'GYS20241414419621', '李宁（中国）体育用品有限公司', '1002-1', '智能设备', 34, 64, 63.80, '', 1, '');
INSERT INTO `attend_supplier` VALUES (60, 'GYS2023122914432913', '湖南英虎信息传播有限公司', '1018', '工业品', 35, 86, 85.70, '', 1, '');
INSERT INTO `attend_supplier` VALUES (61, 'GYS20241414419621', '李宁（中国）体育用品有限公司', '100111', '服装', 36, 86, 86.00, '', 1, '');
INSERT INTO `attend_supplier` VALUES (62, 'GYS20241416572093', '鸿星尔克（厦门）实业有限公司', '100111', '服装', 36, 65, 64.60, '', 2, '');

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `bank_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '银行序号',
  `bank_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行编码',
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行名称',
  `bank_abbreviation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行简称',
  `bank_type` bigint(11) NULL DEFAULT NULL COMMENT '银行类型',
  `enable` bigint(20) NULL DEFAULT NULL COMMENT '是否启用 0：停用 1：启用',
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (1, 'PSBC', '中国邮政储蓄银行', '邮政银行', 1, 1);
INSERT INTO `bank` VALUES (2, 'ABC', '中国农业银行', '农行', 1, 1);
INSERT INTO `bank` VALUES (3, 'EIBC', '中国进出口银行', '进出口银行', 1, 1);
INSERT INTO `bank` VALUES (4, 'SHRCCNSH', '上海农商银行', '上海农商银行', 1, 1);
INSERT INTO `bank` VALUES (5, 'SPDB', '上海浦东发展银行', '浦东银行', 2, 1);
INSERT INTO `bank` VALUES (6, 'PBC', '中国人民银行', '央行', 3, 1);

-- ----------------------------
-- Table structure for bank_type
-- ----------------------------
DROP TABLE IF EXISTS `bank_type`;
CREATE TABLE `bank_type`  (
  `bank_type_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '银行类型ID',
  `bank_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行类型',
  PRIMARY KEY (`bank_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bank_type
-- ----------------------------
INSERT INTO `bank_type` VALUES (1, '商业银行');
INSERT INTO `bank_type` VALUES (2, '邮政储蓄');
INSERT INTO `bank_type` VALUES (3, '中国政策性银行');
INSERT INTO `bank_type` VALUES (4, '非银行金融机构');
INSERT INTO `bank_type` VALUES (5, '信用社');
INSERT INTO `bank_type` VALUES (6, '中国中央银行');

-- ----------------------------
-- Table structure for basic_information_contract
-- ----------------------------
DROP TABLE IF EXISTS `basic_information_contract`;
CREATE TABLE `basic_information_contract`  (
  `contract_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联合同名称',
  `contract_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联合同编号',
  `type` bigint(11) NULL DEFAULT NULL COMMENT '类型',
  `classification` bigint(11) NULL DEFAULT NULL COMMENT '密级',
  `begin_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `contract_amount` decimal(10, 0) NULL DEFAULT NULL COMMENT '合同金额',
  `capitalization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大写',
  `stamp_duty` decimal(10, 2) NULL DEFAULT NULL COMMENT '印花税金额',
  `money_laundering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反洗钱识别',
  `tpsa_identification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'TPSA识别',
  `connected_transaction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联交易',
  `contract_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同情况说明',
  PRIMARY KEY (`contract_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同基本信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of basic_information_contract
-- ----------------------------

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch`  (
  `branch_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '分行序号',
  `branch_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分行代码',
  `interbank_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联行行号',
  `branch_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分行名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `enable` bigint(11) NULL DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '银行分行表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of branch
-- ----------------------------

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer`  (
  `purchaserId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '采购员Id',
  `security_Level` bigint(20) NULL DEFAULT NULL COMMENT '安全级别',
  `loginId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'LOGINID',
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`purchaserId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES (1, 10, 'zcc', '倪威', '男');
INSERT INTO `buyer` VALUES (2, 12, 'ywy', '杨文元', '女');
INSERT INTO `buyer` VALUES (3, 10, 'zs', '张三', '男');
INSERT INTO `buyer` VALUES (4, 12, 'xx', '小小', '女');

-- ----------------------------
-- Table structure for calculation_unit_type
-- ----------------------------
DROP TABLE IF EXISTS `calculation_unit_type`;
CREATE TABLE `calculation_unit_type`  (
  `unit_type_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '单位类型ID',
  `unit_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位类型代码',
  `unit_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位类型名称',
  `enable` bigint(20) NULL DEFAULT NULL COMMENT '是否启用 0：停用 1：启用',
  PRIMARY KEY (`unit_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of calculation_unit_type
-- ----------------------------
INSERT INTO `calculation_unit_type` VALUES (1, '52', '质量', 1);
INSERT INTO `calculation_unit_type` VALUES (2, '1', '无计量单位', 1);
INSERT INTO `calculation_unit_type` VALUES (3, '2', '比例', 1);
INSERT INTO `calculation_unit_type` VALUES (4, '3', '长度', 1);
INSERT INTO `calculation_unit_type` VALUES (5, '4', '频率', 1);
INSERT INTO `calculation_unit_type` VALUES (6, '5', '传导性', 1);
INSERT INTO `calculation_unit_type` VALUES (7, '6', '克分子量', 1);
INSERT INTO `calculation_unit_type` VALUES (8, '7', '功率', 1);
INSERT INTO `calculation_unit_type` VALUES (9, '8', '加速度', 1);
INSERT INTO `calculation_unit_type` VALUES (10, '9', '动态粘滞度', 1);
INSERT INTO `calculation_unit_type` VALUES (11, '10', '区域', 1);
INSERT INTO `calculation_unit_type` VALUES (12, '11', '压力', 1);
INSERT INTO `calculation_unit_type` VALUES (13, '12', '发光强度', 1);
INSERT INTO `calculation_unit_type` VALUES (14, '13', '容量', 1);
INSERT INTO `calculation_unit_type` VALUES (15, '14', '容量比例', 1);
INSERT INTO `calculation_unit_type` VALUES (16, '15', '密度', 1);
INSERT INTO `calculation_unit_type` VALUES (17, '16', '导热系数', 1);
INSERT INTO `calculation_unit_type` VALUES (18, '17', '强制', 1);
INSERT INTO `calculation_unit_type` VALUES (19, '18', '批量', 1);
INSERT INTO `calculation_unit_type` VALUES (20, '19', '摩尔能量', 1);
INSERT INTO `calculation_unit_type` VALUES (21, '20', '摩尔质量', 1);
INSERT INTO `calculation_unit_type` VALUES (22, '21', '时间', 1);
INSERT INTO `calculation_unit_type` VALUES (23, '22', '水解速度', 1);
INSERT INTO `calculation_unit_type` VALUES (24, '23', '流量', 1);
INSERT INTO `calculation_unit_type` VALUES (25, '24', '温度', 1);
INSERT INTO `calculation_unit_type` VALUES (26, '25', '温度变化率', 1);
INSERT INTO `calculation_unit_type` VALUES (27, '26', '灰尘爆燃比', 1);
INSERT INTO `calculation_unit_type` VALUES (28, '27', '点', 1);
INSERT INTO `calculation_unit_type` VALUES (29, '28', '物质流', 1);
INSERT INTO `calculation_unit_type` VALUES (30, '29', '特定热容量', 1);
INSERT INTO `calculation_unit_type` VALUES (31, '30', '特定电阻', 1);
INSERT INTO `calculation_unit_type` VALUES (32, '31', '特定等价物', 1);
INSERT INTO `calculation_unit_type` VALUES (33, '32', '特殊能量', 1);
INSERT INTO `calculation_unit_type` VALUES (34, '33', '电压', 1);
INSERT INTO `calculation_unit_type` VALUES (35, '34', '电容', 1);
INSERT INTO `calculation_unit_type` VALUES (36, '35', '电流', 1);
INSERT INTO `calculation_unit_type` VALUES (37, '36', '电阻', 1);
INSERT INTO `calculation_unit_type` VALUES (38, '37', '磁体字段密度', 1);
INSERT INTO `calculation_unit_type` VALUES (39, '38', '粒子浓度', 1);
INSERT INTO `calculation_unit_type` VALUES (40, '39', '能源', 1);
INSERT INTO `calculation_unit_type` VALUES (41, '40', '蒸发速度', 1);
INSERT INTO `calculation_unit_type` VALUES (42, '41', '表面张力', 1);
INSERT INTO `calculation_unit_type` VALUES (43, '42', '质量有效范围', 1);
INSERT INTO `calculation_unit_type` VALUES (44, '43', '质量比例', 1);
INSERT INTO `calculation_unit_type` VALUES (45, '44', '运动粘滞度', 1);
INSERT INTO `calculation_unit_type` VALUES (46, '45', '逆转范围', 1);
INSERT INTO `calculation_unit_type` VALUES (47, '46', '速度', 1);
INSERT INTO `calculation_unit_type` VALUES (48, '47', '酸/基本容量', 1);
INSERT INTO `calculation_unit_type` VALUES (49, '48', '时间', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `categoryid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '品类序号',
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类代码',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `enable` bigint(20) NULL DEFAULT NULL COMMENT '是否启用',
  `is_no` bigint(11) NULL DEFAULT NULL COMMENT '是否允许超量送货',
  `superior_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级品类',
  `creation_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `l_updated` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后更新人',
  `l_update_time` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  `company` bigint(20) NULL DEFAULT NULL COMMENT '公司',
  `metering_unit` bigint(220) NULL DEFAULT NULL COMMENT '计量单位',
  `source_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源系统',
  `introduction_requirements` bigint(11) NULL DEFAULT NULL COMMENT '引入要求 1:严格 0：一般',
  `assign_purchaser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分配采购人',
  PRIMARY KEY (`categoryid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (80, '12-1', '导轨', 1, 1, '1017', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 2, 22, 'SRM', 0, '');
INSERT INTO `category` VALUES (81, '1001', '电脑/办公', 1, 0, '12-1', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, '', 0, '');
INSERT INTO `category` VALUES (82, '1002', '手机/数码', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (83, '1003', '家用电器', 1, 1, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (84, '1004', '家居/家装/厨具', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (85, '1005', '食品/生鲜', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '0000-00-00 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (86, '1006', '美妆/个护', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (87, '1007', '礼品/箱包/珠宝/钟表', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (88, '1008', '医药/保健', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (89, '1009', '运动/户外', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (90, '1010', '母婴/玩具/乐器', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (91, '1011', '劳保/安防、标识', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (92, '1012', '办公/清洁/制冷、暖通', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (93, '1013', '手工具/动力工具及附件', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (94, '1014', '服饰/鞋帽', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, 'SRM', 0, '');
INSERT INTO `category` VALUES (95, '1017', '绿植/鲜花', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, '', 0, '');
INSERT INTO `category` VALUES (96, '1016', '汽车用品', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, '', 0, '');
INSERT INTO `category` VALUES (97, '1015', '图书/文娱/教育', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, '', 0, '');
INSERT INTO `category` VALUES (98, '1018', '工业品', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, '', 0, '');
INSERT INTO `category` VALUES (99, '1019', '胶黏/润滑/车间化学品', 1, 0, '0', '2022-10-13 00:00:00', '邱军强', '2022-10-13 00:00:00', 0, 0, '', 0, '');
INSERT INTO `category` VALUES (100, '1001-1', '外设产品', 1, 0, '1001', '2022-10-13 00:00:00', '杨文元', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (101, '1002-1', '智能设备', 1, 0, '1002', '2022-10-13 00:00:00', '杨文元', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (102, '1003-1', '大家电', 1, 0, '1003', '2022-10-13 00:00:00', '杨文元', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (103, '1001-2', '文具', 1, 0, '1001', '2022-10-13 00:00:00', '杨文元', '2022-10-13 00:00:00', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (104, '1001-3', '办公设备', 1, 1, '1002', '2022-10-13 00:00:00', '杨文文', '2024-01-04 09:12:40', 0, 0, 'SRM', 1, '');
INSERT INTO `category` VALUES (130, '100111', '服装', 0, 0, '1001-1', '2024-01-04 00:00:00', '杨文元', '2024-01-04 16:54:27', 7, 23, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for category_information
-- ----------------------------
DROP TABLE IF EXISTS `category_information`;
CREATE TABLE `category_information`  (
  `category_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '品类序号',
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类代码',
  `category_name` bigint(11) NULL DEFAULT NULL COMMENT '品类名称',
  `is_host` bigint(11) NULL DEFAULT NULL COMMENT '是否主品类',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品类信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category_information
-- ----------------------------

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `companies_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `companies_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `credit_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `companies_abbreviation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司简称',
  `isgroup` bigint(11) NULL DEFAULT NULL COMMENT '是否集团',
  `companies_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司编码',
  `registration_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业注册登记号',
  `enterprise_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业类型',
  `registered_country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册国家',
  `representative` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法定代表人',
  `registered_capital` decimal(8, 2) NULL DEFAULT NULL COMMENT '注册资本（万）',
  `establishment_date` date NULL DEFAULT NULL COMMENT '成立日期',
  `operating_period` decimal(8, 2) NULL DEFAULT NULL COMMENT '经营期限',
  `basic_division` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应基础分部',
  `business_license` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传营业执照',
  `taxpayer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纳税人标识',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `currency_id2` bigint(11) NULL DEFAULT NULL COMMENT '   ',
  `deng_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邓白氏编码',
  `profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司简介',
  PRIMARY KEY (`companies_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES (1, '腾讯科技有限公司', NULL, NULL, NULL, 'GS20231207001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (2, '阿里巴巴集团控股有限公司', NULL, NULL, NULL, 'GS20231207002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (3, '百度(中国)有限公司', NULL, NULL, NULL, 'GS20240104001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (4, '上海寻梦信息技术有限公司', NULL, NULL, NULL, 'GS20240104002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (5, '上海蔚来汽车有限公司', NULL, NULL, NULL, 'GS20240104003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (6, '上汽通用汽车有限公司', NULL, NULL, NULL, 'GS20240104004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (7, '中铁十五局集团有限公司', NULL, NULL, NULL, 'GS20240104005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (8, '上海哈啰普惠科技有限公司', NULL, NULL, NULL, 'GS20240104006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (9, '中铁上海工程局集团有限公司', NULL, NULL, NULL, 'GS20240104007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `companies` VALUES (10, '中国二十冶集团有限公司', NULL, NULL, NULL, 'GS20240104008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `contacts_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '联系人编号',
  `contacts_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `contacts_call` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '称呼',
  `contacts_post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位',
  `contacts_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `contacts_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公电话',
  `contacts_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `supplier_no` bigint(11) NULL DEFAULT NULL COMMENT '供应商编号',
  PRIMARY KEY (`contacts_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '联系人信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for contract_information
-- ----------------------------
DROP TABLE IF EXISTS `contract_information`;
CREATE TABLE `contract_information`  (
  `contractInformation_Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品服务名称',
  `contractline_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '框架合同行项目编号',
  `specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格型号',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `including_tax` decimal(20, 2) NULL DEFAULT NULL COMMENT '含税单价',
  `number` decimal(20, 2) NULL DEFAULT NULL COMMENT '数量',
  `subtotal` decimal(30, 2) NULL DEFAULT NULL COMMENT '小计',
  PRIMARY KEY (`contractInformation_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contract_information
-- ----------------------------

-- ----------------------------
-- Table structure for contract_management
-- ----------------------------
DROP TABLE IF EXISTS `contract_management`;
CREATE TABLE `contract_management`  (
  `contract_management_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '合同管理ID',
  `contract_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `contract_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同编号',
  `project_related_contracts` bigint(11) NULL DEFAULT NULL COMMENT '项目相关合同',
  `applicant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `application_date` datetime NULL DEFAULT NULL COMMENT '申请日期',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请部门',
  `companies` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请公司',
  `related_projects` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关项目',
  `is_main_contract` bigint(20) NULL DEFAULT NULL COMMENT '是否主子合同',
  `related_main_contract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联主合同',
  `budget_related_contracts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预算相关合同',
  `cost_center` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成本中心',
  `head` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `signing_date` date NULL DEFAULT NULL COMMENT '签订日期',
  `payment_proportion` decimal(20, 2) NULL DEFAULT NULL COMMENT '付款比例(%)',
  `contractstatus_id` bigint(11) NULL DEFAULT NULL COMMENT '合同状态ID',
  `sd_id` bigint(20) NULL DEFAULT NULL COMMENT '供应商',
  `total_project_budget` bigint(10) NULL DEFAULT NULL COMMENT '项目总预算',
  `project_available_budget` bigint(20) NULL DEFAULT NULL COMMENT '项目可用预算',
  `contract_type` bigint(20) NULL DEFAULT NULL COMMENT '类型',
  `dense` bigint(10) NULL DEFAULT NULL COMMENT '密集',
  `begin_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `contract_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '合同金额',
  `capitalization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大写',
  `stamp_duty_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '印花税金额',
  `contract_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同情况说明',
  `purchasing_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购清单',
  `purchase_order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购订单号',
  PRIMARY KEY (`contract_management_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购合同管理表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contract_management
-- ----------------------------
INSERT INTO `contract_management` VALUES (59, '一般采购合同', 'WS-CG20240102001', 1, '杨文元', '2024-01-02 11:38:14', '华恒-产品技术部', '华恒', '上海亘岩集团电子档案项目', 1, '维森+2020办公设备采购合同', '1', '维森集团行政共享中心项目', '杨文元', '2024-01-02', 64.00, 4, 8, 10000000, 10000000, NULL, 1, '2024-01-03 00:00:00', '2024-05-31 00:00:00', 5550000.00, '伍佰伍拾伍万元整', NULL, NULL, 'PO20231229001', 'CGDD20240102001');
INSERT INTO `contract_management` VALUES (60, '一般采购合同', 'WS-CG20240102002', 1, '王欣畅', '2024-01-02 11:56:31', '董事长办公室', '维森集团股份有限公司', '上海亘岩集团电子档案项目', 1, '维森+2020办公设备采购合同', '1', '维森集团行政共享中心项目', '王欣畅', '2024-01-02', 10.00, 5, 1, 10000000, 10000000, NULL, 1, '2024-01-02 00:00:00', '2024-05-04 00:00:00', 1870000.00, '壹佰捌拾柒万元整', NULL, NULL, 'PO20231228002', 'CGDD20240102002');
INSERT INTO `contract_management` VALUES (64, '一般采购合同', 'WS-CG20240104001', 1, '杨文元', '2024-01-04 17:09:49', '采购部', '华恒', '上海亘岩集团电子档案项目', 1, '维森+2020办公设备采购合同', '1', '维森集团行政共享中心项目', '杨文元', '2024-01-04', 81.00, 4, 15, 10000000, 10000000, NULL, 1, '2024-01-04 00:00:00', '2024-01-20 00:00:00', 1870000.00, '壹佰捌拾柒万元整', NULL, NULL, 'PO20231228002', 'CGDD20240104001');

-- ----------------------------
-- Table structure for contract_status
-- ----------------------------
DROP TABLE IF EXISTS `contract_status`;
CREATE TABLE `contract_status`  (
  `contractstatus_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '合同状态ID',
  `contract_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同状态',
  PRIMARY KEY (`contractstatus_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同状态' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contract_status
-- ----------------------------

-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency`  (
  `currency_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '币种ID',
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种编码',
  `currency_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种名称',
  `country_region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家/地区',
  `financial_accuracy` decimal(10, 2) NULL DEFAULT NULL COMMENT '财务精度',
  `accuracy` decimal(10, 2) NULL DEFAULT NULL COMMENT '精度',
  `currency_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货币符号',
  `enable` bigint(11) NULL DEFAULT NULL COMMENT '启用(1:代表启动,0:代表停用)',
  PRIMARY KEY (`currency_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of currency
-- ----------------------------
INSERT INTO `currency` VALUES (83, 'AUD', '澳大利亚元', '阿拉伯联合酋长国', 2.00, 10.00, '$', 1);
INSERT INTO `currency` VALUES (84, 'BDT', '塔卡', '孟加拉国', 1.00, 1.00, '?', 1);
INSERT INTO `currency` VALUES (85, 'BRL', '雷阿而', '巴西', 1.00, 1.00, 'R$', 1);
INSERT INTO `currency` VALUES (86, 'BYR', '白俄罗斯卢布', '白俄罗斯', 0.00, 10.00, 'Br', 1);
INSERT INTO `currency` VALUES (87, 'CFP', '法国法郎 (Pac)', '中非共和国', 1.00, 1.00, '?', 1);
INSERT INTO `currency` VALUES (88, 'CNY', '人民币', '中国', 3.00, 10.00, '￥', 1);
INSERT INTO `currency` VALUES (89, 'CZK', '捷克 克朗', '捷克共和国', 2.00, 10.00, 'K?', 1);
INSERT INTO `currency` VALUES (90, 'DKK', '丹麦克朗', '丹麦', 2.00, 10.00, 'kr', 1);
INSERT INTO `currency` VALUES (91, 'EGP', '镑', '埃及', 2.00, 10.00, '￡', 1);
INSERT INTO `currency` VALUES (92, 'GBP', '英镑', '英国', 2.00, 10.00, '￡', 1);
INSERT INTO `currency` VALUES (93, 'HKD', '港币', '中国香港', 2.00, 10.00, '$', 1);
INSERT INTO `currency` VALUES (94, 'INR', '印度 卢比', '印度', 2.00, 10.00, '?', 1);
INSERT INTO `currency` VALUES (95, 'JPY', '日元', '日本', 0.00, 10.00, '￥', 1);
INSERT INTO `currency` VALUES (96, 'KPW', '北朝鲜 圜', '北朝鲜', 1.00, 1.00, '?', 1);
INSERT INTO `currency` VALUES (97, 'KRW', '南朝鲜 圜', '韩国', 1.00, 10.00, '?', 1);
INSERT INTO `currency` VALUES (98, 'KZT', '腾格', '哈萨克斯坦', 2.00, 10.00, 'Т', 1);
INSERT INTO `currency` VALUES (99, 'MNT', '土格瑞克', '蒙古', 1.00, 1.00, '?', 1);
INSERT INTO `currency` VALUES (100, 'MOP', '澳元', '中国澳门', 1.00, 1.00, 'P', 1);
INSERT INTO `currency` VALUES (101, 'MYR', '马来西亚元', '马来西亚', 2.00, 10.00, 'RM', 1);
INSERT INTO `currency` VALUES (102, 'PHP', '菲律宾比索', '菲律宾', 1.00, 1.00, '?', 1);
INSERT INTO `currency` VALUES (103, 'PLN', '兹罗提', '波兰', 2.00, 10.00, 'z?', 1);
INSERT INTO `currency` VALUES (104, 'RUB', '俄罗斯 卢布', '俄罗斯联邦', 2.00, 10.00, 'р.', 1);
INSERT INTO `currency` VALUES (105, 'SAR', '里奥', '沙特阿拉伯', 2.00, 10.00, '?.?', 1);
INSERT INTO `currency` VALUES (106, 'SGD', '新加坡元', '新加坡', 2.00, 10.00, '$', 1);
INSERT INTO `currency` VALUES (107, 'TWD', '新台湾元', '中国台湾', 0.00, 10.00, 'NT$', 1);
INSERT INTO `currency` VALUES (108, 'USD', '美元', '美国', 2.00, 10.00, '$', 1);
INSERT INTO `currency` VALUES (109, 'VEB', '博利瓦', '委内瑞拉', 1.00, 1.00, 'Bs', 1);
INSERT INTO `currency` VALUES (110, 'VND', '盾', '越南', 1.00, 1.00, '?', 1);
INSERT INTO `currency` VALUES (111, 'RMB', '人民币', '中国', 2.00, 10.00, 'RMB', 1);
INSERT INTO `currency` VALUES (112, 'EUR', '欧元', '欧盟', 2.00, 10.00, '€', 1);
INSERT INTO `currency` VALUES (113, 'DEM', '马克', '德国', 1.00, 1.00, 'DM', 1);
INSERT INTO `currency` VALUES (114, 'CAD', '加元', '加拿大', 2.00, 10.00, 'C$', 1);
INSERT INTO `currency` VALUES (115, 'CHF', '法郎', '法国', 2.00, 10.00, 'CHF', 1);
INSERT INTO `currency` VALUES (116, 'QWE', '港元', '南极洲', 3.00, 3.00, '#', 1);
INSERT INTO `currency` VALUES (117, 'IDR', '印度尼西亚卢比', '印度尼西亚', 2.00, 2.00, 'Rp', 1);
INSERT INTO `currency` VALUES (118, 'ZWL', '津巴布韦元', '津巴布韦', 1.00, 1.00, 'Z$', 1);
INSERT INTO `currency` VALUES (119, 'AED', '阿联酋迪拉姆', '阿拉伯联合酋长国', 2.00, 5.00, 'DHS', 1);
INSERT INTO `currency` VALUES (120, 'MXN', '墨西哥比索', '墨西哥', 2.00, 2.00, 'Mex$', 1);
INSERT INTO `currency` VALUES (121, 'THB', '泰铢', '泰国', 2.00, 2.00, 'THB', 1);
INSERT INTO `currency` VALUES (122, 'SEK', '瑞典克朗', '瑞典', 2.00, 2.00, 'SEK', 1);
INSERT INTO `currency` VALUES (123, 'FIRE', '火星币', '亚美尼亚', 2.00, 3.00, '()', 1);

-- ----------------------------
-- Table structure for decection_result
-- ----------------------------
DROP TABLE IF EXISTS `decection_result`;
CREATE TABLE `decection_result`  (
  `decection_result_id` int(11) NOT NULL COMMENT '检测结果id',
  `decection_result_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检测结果',
  PRIMARY KEY (`decection_result_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '检测结果' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of decection_result
-- ----------------------------

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `delivery_id` int(11) NULL DEFAULT 0 COMMENT '送货单id',
  `product_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品信息',
  `product_specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品规格',
  `required_quantity` int(11) NULL DEFAULT NULL COMMENT '需求数量',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `remaining_delivery_quantity` int(11) NULL DEFAULT NULL COMMENT '剩余送货数量',
  `current_delivery_quantity` int(11) NULL DEFAULT NULL COMMENT '本次送货数量',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注释',
  `source_order_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源单号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES (2, '232', '', NULL, '', NULL, NULL, '', '');
INSERT INTO `delivery` VALUES (0, '主机设备', '1', 100, '台', 30, 50, NULL, 'CGDD20231211001');
INSERT INTO `delivery` VALUES (0, '212', '1', 1, '1', 1, 1, '1', 'CGDD20231211001');
INSERT INTO `delivery` VALUES (7, '惠普HP ZHAN99 G2', '8vCPUs | 32GiB | 500GiB', NULL, '台', 50, 30, NULL, NULL);
INSERT INTO `delivery` VALUES (6, '联想ThinkPadP15v', '8vCPUs | 32GiB | 500GiB', 100, '台', 50, 30, NULL, 'CGDD20231211001');
INSERT INTO `delivery` VALUES (6, '笔记本', 'Thinkpad T480s', 100, '台', 50, 30, '50', 'CGDD20231211001');
INSERT INTO `delivery` VALUES (6, '联想 550双路塔式GPU服务器主', '8vCPUs | 32GiB | 500GiB', 1, '台', 50, 30, '1', 'CGDD20231211001');
INSERT INTO `delivery` VALUES (6, '服务器', 'Thinkpad XEON 3850', 100, '台', 50, 30, NULL, 'CGDD20231211001');
INSERT INTO `delivery` VALUES (6, '设计咨询服务', '二级设计咨询', 100, '次', 50, 30, '50', 'CGDD20231211001');
INSERT INTO `delivery` VALUES (6, '网络安全服务', '局域网故障检测', 1, '项', 50, 30, '1', 'CGDD20231211001');
INSERT INTO `delivery` VALUES (8, '联想 550双路塔式GPU服务器主', '8vCPUs | 32GiB | 500GiB', NULL, '台', 50, 30, NULL, NULL);

-- ----------------------------
-- Table structure for delivery_note_state
-- ----------------------------
DROP TABLE IF EXISTS `delivery_note_state`;
CREATE TABLE `delivery_note_state`  (
  `delivery_note_state_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '送货单状态id',
  `delivery_note_state_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送货单状态名称',
  PRIMARY KEY (`delivery_note_state_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '送货单状态' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of delivery_note_state
-- ----------------------------

-- ----------------------------
-- Table structure for delivery_service_scope
-- ----------------------------
DROP TABLE IF EXISTS `delivery_service_scope`;
CREATE TABLE `delivery_service_scope`  (
  `region_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '地区ID',
  `region_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区名称',
  `region_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`region_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '送货服务范围表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of delivery_service_scope
-- ----------------------------
INSERT INTO `delivery_service_scope` VALUES (1, '安庆', '246800');
INSERT INTO `delivery_service_scope` VALUES (2, '中国', 'China');
INSERT INTO `delivery_service_scope` VALUES (3, '南极洲', 'Antarctica');
INSERT INTO `delivery_service_scope` VALUES (4, '大洋洲', 'Oceania');
INSERT INTO `delivery_service_scope` VALUES (5, '非洲', 'Africa');
INSERT INTO `delivery_service_scope` VALUES (6, '南美洲', 'South America');
INSERT INTO `delivery_service_scope` VALUES (7, '欧洲', 'Europe');
INSERT INTO `delivery_service_scope` VALUES (8, '亚洲', 'Asia');
INSERT INTO `delivery_service_scope` VALUES (9, '全球', 'Global');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `referred` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全称',
  `department_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门负责人',
  `branch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分部',
  `post` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位',
  `superior` bigint(11) NULL DEFAULT NULL COMMENT '上级部门',
  `department_code` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号',
  `department_type` bigint(11) NULL DEFAULT NULL COMMENT '部门类型',
  `organizer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '协办人',
  `display_order` decimal(8, 2) NULL DEFAULT NULL COMMENT '显示顺序',
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '董事长办公室', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `department` VALUES (2, '集团办公室', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `department` VALUES (3, '人事部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `department` VALUES (4, '\r\n资产部', '\r\n资产部', NULL, NULL, '\r\n维森集团股份有限公司', NULL, NULL, NULL, NULL, NULL, 4.00);

-- ----------------------------
-- Table structure for distribution_list
-- ----------------------------
DROP TABLE IF EXISTS `distribution_list`;
CREATE TABLE `distribution_list`  (
  `distribution_list_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '分配列表id',
  `contacts_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `supplier_code` bigint(11) NULL DEFAULT NULL COMMENT '供应商编码',
  `allocate_divisions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分配分部',
  `assigned_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分配人',
  `assign_date` datetime NULL DEFAULT NULL COMMENT '分配日期',
  `approval_status` bigint(11) NULL DEFAULT NULL COMMENT '审批状态',
  PRIMARY KEY (`distribution_list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分配列表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distribution_list
-- ----------------------------

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `employees_id` bigint(20) NOT NULL COMMENT '员工ID',
  `employees_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `department_id1` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `employees_status` bigint(20) NULL DEFAULT NULL COMMENT '状态',
  `employees_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `employees_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `employees_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`employees_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employees
-- ----------------------------

-- ----------------------------
-- Table structure for execution_status
-- ----------------------------
DROP TABLE IF EXISTS `execution_status`;
CREATE TABLE `execution_status`  (
  `execution_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '签署执行状态Id',
  `signatories` bigint(20) NULL DEFAULT NULL COMMENT '签署方数',
  `our_entity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '我方主体',
  `supplier_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方供应商',
  `person_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方联系人',
  `phone_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方联系方式',
  `bank_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方开户行',
  `account_opening_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方开户行账号',
  `contract_amount` decimal(30, 2) NULL DEFAULT NULL COMMENT '合同方金额',
  `currencyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币别',
  `paid_amount` decimal(30, 2) NULL DEFAULT NULL COMMENT '已支付金额',
  `lock_in_amount` decimal(30, 2) NULL DEFAULT NULL COMMENT '锁定金额',
  `remaining_amount` decimal(30, 2) NULL DEFAULT NULL COMMENT '剩余金额',
  `contract_management_id` bigint(20) NULL DEFAULT NULL COMMENT '合同Id',
  `both_sides` bigint(20) NULL DEFAULT NULL COMMENT '双方',
  PRIMARY KEY (`execution_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of execution_status
-- ----------------------------
INSERT INTO `execution_status` VALUES (97, 2, '腾讯科技有限公司', '福厚互联网科技公司', '徐千', '021-22257000', '中国建设银行', '31022600040769766777', 5550000.00, '人民币', 15000.00, 23000.00, 5512000.00, 42, 1);
INSERT INTO `execution_status` VALUES (98, 2, '腾讯科技有限公司', '福厚互联网科技公司', '胡厚', '13572456832', '上海银行徐汇支行', '6228 4807 1122 0260', 450000.00, '人民币', 13000.00, 120000.00, 317000.00, 42, 2);
INSERT INTO `execution_status` VALUES (99, 1, '小小', '福厚互联网科技公司', '胡维兵', '021-22130888', '上海银行徐汇支行', '6228 4807 1122 0260', 1638000.00, '人民币', 15000.00, 45000.00, 1578000.00, 51, 1);
INSERT INTO `execution_status` VALUES (100, 1, '腾讯科技有限公司', '福厚互联网科技公司', '李四', '021-22130888', '中国建设银行', '31000000007410744433', 5550000.00, '人民币', 15000.00, 45000.00, 5490000.00, 52, 1);
INSERT INTO `execution_status` VALUES (101, 1, '腾讯科技有限公司', '福厚互联网科技公司', '1', '1', '1', '1', 5550000.00, '人民币', 4112000.00, 1111110.00, 326890.00, 53, 1);
INSERT INTO `execution_status` VALUES (102, 2, '小小', '讯疼互联网科技公司', '2', '2', '2', '2', 22250000.00, '人民币', 2222000.00, 2222200.00, 17805800.00, 54, 2);
INSERT INTO `execution_status` VALUES (103, 2, '小小', '福厚互联网科技公司', '胡厚', '13572456832', '222', '2', 222222.00, '人民币', 222.00, 2222.00, 219778.00, 54, NULL);
INSERT INTO `execution_status` VALUES (104, 1, '小小', '福厚互联网科技公司', '3', '3', '3', '3', 1638000.00, '人民币', 300000.00, 300000.00, 1038000.00, 55, 1);
INSERT INTO `execution_status` VALUES (105, 1, '腾讯科技有限公司', '福厚互联网科技公司', '1', '1', '1', '1', 20.00, '人民币', 1.00, 1.00, 18.00, 56, 1);
INSERT INTO `execution_status` VALUES (106, 2, '腾讯科技有限公司', '讯疼互联网科技公司', '2', '2', '2', '22', 1870000.00, '人民币', 222222.00, 2222.00, 1645556.00, 57, 2);
INSERT INTO `execution_status` VALUES (107, 2, '腾讯科技有限公司', '百度公司', '何东', '17463810496', '2', '2', 1500000.00, '人民币', 22222.00, 22222.00, 1455556.00, 57, NULL);
INSERT INTO `execution_status` VALUES (108, 1, '阿里巴巴集团控股有限公司', '百度公司', '12', '12', '12', '1222', 1870000.00, '人民币', 1412212.00, 212121.00, 245667.00, 58, 1);
INSERT INTO `execution_status` VALUES (109, 1, '腾讯科技有限公司', '百度公司', '张三', '13578453698', '中国银行浦东支行', '6228 4807 1122 0266', 5550000.00, '人民币', 3500000.00, 450000.00, 1600000.00, 59, 1);
INSERT INTO `execution_status` VALUES (110, 2, '腾讯科技有限公司', '百度公司', '颜志荣', '18822334455', '6228 4807 1122 0266', '中国银行浦东支行', 1870000.00, '人民币', 550000.00, 140000.00, 1180000.00, 60, 2);
INSERT INTO `execution_status` VALUES (111, 2, '腾讯科技有限公司', '福厚互联网科技公司', '胡厚', '13572456832', '长沙招商银行', '31022600040769766777', 150000.00, '人民币', 45000.00, 25000.00, 80000.00, 60, NULL);
INSERT INTO `execution_status` VALUES (112, 1, '腾讯科技有限公司', '湖南英虎信息传播有限公司', '秦青林', '1234567890', '民生银行徐汇支行', '6228 4807 1122 0270', 1870000.00, '人民币', 170000.00, 850000.00, 850000.00, 61, 1);
INSERT INTO `execution_status` VALUES (113, 2, '腾讯科技有限公司', '福厚互联网科技公司', '李资', '15575021587', '中国银行浦东支行', '6228 4807 1122 0266', 1870000.00, '人民币', 150000.00, 158000.00, 1562000.00, 62, 2);
INSERT INTO `execution_status` VALUES (114, 2, '腾讯科技有限公司', '讯疼互联网科技公司', '胡厚3', '13572456832', '中国银行浦东支行', '6228 4807 1122 0266', 750000.00, '人民币', 150000.00, 45000.00, 555000.00, 62, NULL);
INSERT INTO `execution_status` VALUES (115, 1, '百度(中国)有限公司', '国网湖南省电力有限公司', '1', '1', '1', '1', 1870000.00, '人民币', 311111.00, 181111.00, 1377778.00, 63, 1);
INSERT INTO `execution_status` VALUES (116, 1, '腾讯科技有限公司', '北京赛格立诺科技股份有限公司', '小小', '18754123698', '长沙招商银行', '60000000000001', 1870000.00, '人民币', 1500000.00, 5400.00, 364600.00, 64, 1);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (11, 'material_requirement', '采购需求申请', NULL, NULL, 'MaterialRequirement', 'crud', 'com.hh.pms', 'procure', 'requirement', '采购需求申请', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1088\"}', 'admin', '2023-11-21 17:45:52', '', '2023-12-20 14:46:31', NULL);
INSERT INTO `gen_table` VALUES (22, 'supplier_details', '供应商详细', NULL, NULL, 'SupplierDetails', 'crud', 'com.hh.pms', 'supplierpms', 'details', '供应商列表', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1087\"}', 'admin', '2023-11-24 09:59:09', '', '2023-12-13 10:44:37', NULL);
INSERT INTO `gen_table` VALUES (23, 'tax_rate', '税率表', NULL, NULL, 'TaxRate', 'crud', 'com.hh.pms.mast', 'mast', 'rate', '税率', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1083\"}', 'admin', '2023-11-24 11:13:48', '', '2023-11-24 11:30:29', NULL);
INSERT INTO `gen_table` VALUES (24, 'bank_type', '银行类型表', NULL, NULL, 'BankType', 'crud', 'com.hh.pms.mast', 'mast', 'bank_type', '银行类型', 'ruoyi', '0', '/', '{\"parentMenuId\":1082}', 'admin', '2023-11-24 11:37:25', '', '2023-11-24 11:47:26', NULL);
INSERT INTO `gen_table` VALUES (27, 'order_manager', '采购订单管理', 'order_material', 'or_id', 'OrderManager', 'sub', 'com.hh.pms', 'pms', 'manager', '采购订单管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-11-24 14:38:39', '', '2023-12-29 11:32:56', NULL);
INSERT INTO `gen_table` VALUES (28, 'bank', '银行表', NULL, NULL, 'Bank', 'crud', 'com.hh.pms.mast', 'mast', 'bank', '银行', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1082\"}', 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15', NULL);
INSERT INTO `gen_table` VALUES (29, 'order_material', '订单物料明细表', NULL, NULL, 'OrderMaterial', 'crud', 'com.hh.pms', 'pms', 'material', '订单物料明细', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-11-27 14:42:45', '', '2023-12-04 14:42:46', NULL);
INSERT INTO `gen_table` VALUES (30, 'order_type_running', '订单类型', NULL, NULL, 'OrderTypeRunning', 'crud', 'com.hh.pms', 'pms', 'running', '订单类型', 'ruoyi', '0', '/', NULL, 'admin', '2023-11-27 14:42:47', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (33, 'currency', '币种表', NULL, NULL, 'Currency', 'crud', 'com.hh.pms', 'procure', 'currency', '币种', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1155\"}', 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:31', NULL);
INSERT INTO `gen_table` VALUES (34, 'material_information', '物料信息表', '', '', 'MaterialInformation', 'crud', 'com.hh.pms', 'procure', 'information', '采购需求池', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1088\"}', 'admin', '2023-11-27 16:43:26', '', '2023-12-07 11:35:48', NULL);
INSERT INTO `gen_table` VALUES (35, 'procurement_task', '需求任务表', NULL, NULL, 'ProcurementTask', 'crud', 'com.hh.pms', 'procure', 'task', '我的需求任务', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1088\"}', 'admin', '2023-11-27 17:16:57', '', '2023-12-13 14:52:20', NULL);
INSERT INTO `gen_table` VALUES (37, 'supplier_classification', '供应商分类', NULL, NULL, 'SupplierClassification', 'crud', 'com.hh.pms', 'supplierpms', 'classification', '供应商分类定义', 'ruoyi', '0', '/', '{\"parentMenuId\":1169}', 'admin', '2023-11-28 09:33:43', '', '2023-11-28 09:36:30', NULL);
INSERT INTO `gen_table` VALUES (39, 'calculation_unit_type', '计量单位类型表', NULL, NULL, 'CalculationUnitType', 'crud', 'com.hh.pms.mast', 'mast', 'unit_type', '计量单位类型定义', 'ruoyi', '0', '/', '{\"parentMenuId\":1085}', 'admin', '2023-11-28 09:58:41', '', '2023-11-28 10:47:49', NULL);
INSERT INTO `gen_table` VALUES (41, 'unit_of_account', '计算单位表', NULL, NULL, 'UnitOfAccount', 'crud', 'com.hh.pms.mast', 'mast', 'account', '计算单位定义', 'ruoyi', '0', '/', '{\"parentMenuId\":1085}', 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:10', NULL);
INSERT INTO `gen_table` VALUES (42, 'category', '品类表', 'category', 'categoryid', 'Category', 'sub', 'com.hh.pms.mast', 'mast', 'category', '品类', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1081\"}', 'admin', '2023-11-29 09:43:42', '', '2023-12-06 14:17:59', NULL);
INSERT INTO `gen_table` VALUES (43, 'industry_type', '行业类型', NULL, NULL, 'IndustryType', 'crud', 'com.hh.pms.mast', 'mast', 'industry_type', '行业类型', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1086\"}', 'admin', '2023-11-29 11:19:17', '', '2023-11-29 11:23:53', NULL);
INSERT INTO `gen_table` VALUES (44, 'material', '物料表', 'unit_of_account', 'unit_id', 'Material', 'sub', 'com.hh.pms', 'procure', 'material', '物料维护', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1081\"}', 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01', NULL);
INSERT INTO `gen_table` VALUES (45, 'companies', '公司表', NULL, NULL, 'Companies', 'crud', 'com.hh.pms.mast', 'mast', 'companies', '公司表', 'ruoyi', '0', '/', '{}', 'admin', '2023-11-29 16:43:46', '', '2023-12-05 11:59:27', NULL);
INSERT INTO `gen_table` VALUES (46, 'category_information', '品类信息表', NULL, NULL, 'CategoryInformation', 'crud', 'com.ruoyi.system', 'system', 'information', '品类信息', 'ruoyi', '0', '/', '{}', 'admin', '2023-11-29 17:07:53', '', '2023-11-29 17:08:08', NULL);
INSERT INTO `gen_table` VALUES (47, 'contract_management', '采购合同管理表', NULL, NULL, 'ContractManagement', 'crud', 'com.hh.pms', 'procure', 'management', '采购合同管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1167\"}', 'admin', '2023-11-30 17:32:44', '', '2023-12-18 15:06:41', NULL);
INSERT INTO `gen_table` VALUES (48, 'requirement_table', '需求类型表', NULL, NULL, 'RequirementTable', 'crud', 'com.hh.pms', 'procure', 'table', '需求类型', 'ruoyi', '0', '/', '{\"parentMenuId\":1088}', 'admin', '2023-12-01 15:07:08', '', '2023-12-01 15:08:10', NULL);
INSERT INTO `gen_table` VALUES (49, 'order_delivery_note', '订单送货审批管理', 'delivery', 'delivery_id', 'OrderDeliveryNote', 'sub', 'com.hh.pms', 'pms', 'note', '订单送货管理', 'yt', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-12-04 17:15:02', '', '2023-12-12 21:37:34', NULL);
INSERT INTO `gen_table` VALUES (50, 'supplier_lifecycle', '供应商生命周期', '', '', 'SupplierLifecycle', 'crud', 'com.hh.pms', 'supplierpms', 'lifecycle', '生命周期维护', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1250\"}', 'admin', '2023-12-06 11:23:55', '', '2023-12-12 21:20:05', NULL);
INSERT INTO `gen_table` VALUES (51, 'supply', '供货管理', 'supplier_material_list', 'supply_id', 'Supply', 'sub', 'com.hh.pms', 'supplierpms', 'supply', '供货管理', 'ruoyi', '0', '/', '{\"treeCode\":\"sd_id\",\"parentMenuId\":\"1168\"}', 'admin', '2023-12-06 14:16:08', '', '2023-12-11 11:44:13', NULL);
INSERT INTO `gen_table` VALUES (52, 'buyer', '采购员表', NULL, NULL, 'Buyer', 'crud', 'com.hh.pms', 'procure', 'buyer', '采购员', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-08 10:59:29', '', '2023-12-13 14:49:22', NULL);
INSERT INTO `gen_table` VALUES (53, 'delivery', '产品明细表', NULL, NULL, 'Delivery', 'crud', 'com.hh.pms', 'pms', 'delivery', '产品明细', 'ruoyi', '0', '/', NULL, 'admin', '2023-12-08 14:53:37', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (54, 'products', ' 产品信息表', NULL, NULL, 'Products', 'crud', 'com.hh.pms', 'pms', 'products', ' 产品信息', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-08 14:53:37', '', '2023-12-14 17:01:40', NULL);
INSERT INTO `gen_table` VALUES (55, 'supplier_material_list', '供应商物料表', '', '', 'SupplierMaterialList', 'crud', 'com.ruoyi.system.api', 'supplierpms', 'list', '供应商物料', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-11 11:28:13', '', '2023-12-12 19:36:23', NULL);
INSERT INTO `gen_table` VALUES (56, 'order_execution_details', '采购订单执行明细', NULL, NULL, 'OrderExecutionDetails', 'crud', 'com.hh.pms', 'pms', 'orderDetail', 'mingxi', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:24', NULL);
INSERT INTO `gen_table` VALUES (57, 'supplier_on_site_inspection', '供应商现场考察', 'supplier_material_list', 'soi_id', 'SupplierOnSiteInspection', 'sub', 'com.hh.pms', 'supplierpms', 'inspection', '现场考察', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1250\"}', 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:20', NULL);
INSERT INTO `gen_table` VALUES (58, 'statement_account', '对账单', NULL, NULL, 'StatementAccount', 'crud', 'com.hh.pms.mast', 'mast', 'reconciliation', '对账单', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-12-18 09:31:29', '', '2023-12-18 10:42:26', NULL);
INSERT INTO `gen_table` VALUES (60, 'execution_status', '签署执行状态表', NULL, NULL, 'ExecutionStatus', 'crud', 'com.hh.pms', 'procure', 'status', '签署执行状态表', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1167\"}', 'admin', '2023-12-18 10:41:49', '', '2023-12-18 14:19:52', NULL);
INSERT INTO `gen_table` VALUES (61, 'questionnaire', '调查表', 'information', 'questionnaire_id', 'Questionnaire', 'sub', 'com.hh.pms', 'supplierpms', 'questionnaire', '调查表', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1250\"}', 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:17:34', NULL);
INSERT INTO `gen_table` VALUES (62, 'information', '企业基本信息', NULL, NULL, 'Information', 'crud', 'com.ruoyi.system', 'system', 'information', '企业基本信息', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:11', NULL);
INSERT INTO `gen_table` VALUES (63, 'order_receipt', '订单收货管理', 'receipt_details', 'deliveryNoteNo', 'OrderReceipt', 'sub', 'com.hh.pms', 'pms', 'receipt', '订单收货管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:58:59', NULL);
INSERT INTO `gen_table` VALUES (64, 'receipt_details', '收货明细信息', NULL, NULL, 'ReceiptDetails', 'crud', 'com.hh.pms', 'pms', 'details', '收货明细信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-12-20 10:57:40', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (65, 'sample_sending', '送样信息', 'supplier_material_list', 'sample_id', 'SampleSending', 'sub', 'com.hh.pms', 'supplierpms', 'sending', '送样', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1250\"}', 'admin', '2023-12-20 17:46:41', '', '2023-12-21 14:23:30', NULL);
INSERT INTO `gen_table` VALUES (66, 'execution_statusc', '签署执行状态丙方', NULL, NULL, 'ExecutionStatusc', 'crud', 'com.hh.pms', 'procure', 'statusc', '签署执行状态丙方', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59', NULL);
INSERT INTO `gen_table` VALUES (67, 'quality_order', '质检单', NULL, NULL, 'QualityOrder', 'crud', 'com.hh.pms', 'pms', 'orderQuanlity', '质检单', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-21 17:14:09', '', '2023-12-25 14:32:09', NULL);
INSERT INTO `gen_table` VALUES (68, 'quality_task_list', '质检任务单', NULL, NULL, 'QualityTaskList', 'crud', 'com.hh.pms', 'pms', 'orderQuality', '到货质检', 'yangtao', '0', '/', '{\"parentMenuId\":\"1288\"}', 'admin', '2023-12-21 17:14:12', '', '2023-12-21 20:04:49', NULL);
INSERT INTO `gen_table` VALUES (69, 'attend_supplier', '参评供应商', NULL, NULL, 'AttendSupplier', 'crud', 'com.ruoyi.system', 'system', 'supplier', '参评供应商', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-22 14:49:32', '', '2023-12-26 09:39:33', NULL);
INSERT INTO `gen_table` VALUES (70, 'performance_appraisal', '绩效考评', 'attend_supplier', 'evaluation_id', 'PerformanceAppraisal', 'sub', 'com.hh.pms', 'supplierpms', 'performance', '绩效考评', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1295\"}', 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:27', NULL);
INSERT INTO `gen_table` VALUES (71, 'scoring_template', '评分模板', 'scoring_details', 'scoring_template_id', 'ScoringTemplate', 'sub', 'com.hh.pms', 'supplierpms', 'template', '考评模板', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1295\"}', 'admin', '2023-12-22 16:45:32', '', '2023-12-27 10:44:16', NULL);
INSERT INTO `gen_table` VALUES (72, 'scoring_details', '评分明细', NULL, NULL, 'ScoringDetails', 'crud', 'com.ruoyi.system', 'system', 'details', '评分明细', 'ruoyi', '0', '/', '{}', 'admin', '2023-12-25 11:47:01', '', '2023-12-26 17:12:37', NULL);
INSERT INTO `gen_table` VALUES (73, 'inbound_material', '入库单物料', NULL, NULL, 'InboundMaterial', 'crud', 'com.hh.pms', 'pms', 'material', '入库单物料', 'ruoyi', '0', '/', NULL, 'admin', '2023-12-25 20:52:11', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (74, 'inbound_note', '入库单基本信息', 'inbound_material', 'id', 'InboundNote', 'sub', 'com.hh.pms', 'pms', 'stockIn', '订单入库管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1073\"}', 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13', NULL);
INSERT INTO `gen_table` VALUES (76, 'indicators', '考评指标', 'scoring_details', 'scoring_template_id', 'Indicators', 'sub', 'com.hh.pms', 'supplierpms', 'indicators', '考评指标', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1295\"}', 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:19', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1333 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (245, 11, 'requirement_id', '需求申请ID', 'bigint(20)', 'Long', 'requirementId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:31');
INSERT INTO `gen_table_column` VALUES (246, 11, 'requirement_code', '需求编号', 'varchar(20)', 'String', 'requirementCode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:31');
INSERT INTO `gen_table_column` VALUES (247, 11, 'requirement_creator', '需求创建人', 'varchar(20)', 'String', 'requirementCreator', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:31');
INSERT INTO `gen_table_column` VALUES (248, 11, 'requirement_title', '需求标题', 'varchar(50)', 'String', 'requirementTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (249, 11, 'create_department', '创建部门', 'varchar(20)', 'String', 'createDepartment', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (250, 11, 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', '0', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (251, 11, 'demander', '需求人', 'varchar(20)', 'String', 'demander', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (252, 11, 'demand_department', '需求部门', 'varchar(20)', 'String', 'demandDepartment', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (253, 11, 'requirement_type', '需求类型', 'bigint(20)', 'Long', 'requirementType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 9, 'admin', '2023-11-21 17:45:53', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (254, 11, 'companies_id', '公司ID', 'varchar(50)', 'Long', 'companiesId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:32');
INSERT INTO `gen_table_column` VALUES (255, 11, 'total_amount', '预估总金额', 'decimal(8,2)', 'BigDecimal', 'totalAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (256, 11, 'contact_person', '收货联系人', 'varchar(20)', 'String', 'contactPerson', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (257, 11, 'expense_department', '费用部门', 'varchar(20)', 'String', 'expenseDepartment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (258, 11, 'description', '主要用途及说明', 'varchar(255)', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (260, 11, 'phone', '联系方式', 'varchar(50)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (262, 11, 'currency_id', '币种ID', 'bigint(20)', 'Long', 'currencyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-21 17:45:54', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (263, 11, 'related_projects', '相关项目', 'varchar(255)', 'String', 'relatedProjects', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-11-21 17:45:55', '', '2023-12-20 14:46:34');
INSERT INTO `gen_table_column` VALUES (264, 11, 'material_id', '需求物料ID', 'bigint(20)', 'String', 'materialId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-11-21 17:45:55', '', '2023-12-20 14:46:34');
INSERT INTO `gen_table_column` VALUES (466, 11, 'annex', '附件', 'varchar(255)', 'String', 'annex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, '', '2023-11-22 15:08:30', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (468, 11, 'address', '地址', 'varchar(255)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, '', '2023-11-22 15:33:39', '', '2023-12-20 14:46:33');
INSERT INTO `gen_table_column` VALUES (534, 22, 'sd_id', '供应商id', 'int(11)', 'Long', 'sdId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (535, 22, 'sd_time', '邀请时间', 'datetime', 'Date', 'sdTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (536, 22, 'sd_code', '供应商详细编码', 'varchar(255)', 'String', 'sdCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (537, 22, 'sbi_name', '供应商名称', 'varchar(255)', 'String', 'sbiName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (538, 22, 'sd_uscc', '统一社会信用代码', 'varchar(255)', 'String', 'sdUscc', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (539, 22, 'sbi_abbreviation', '简称', 'varchar(255)', 'String', 'sbiAbbreviation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (540, 22, 'sbi_serve', '服务范围', 'varchar(255)', 'String', 'sbiServe', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'checkbox', 'service_scope', 7, 'admin', '2023-11-24 09:59:10', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (541, 22, 'sd_industry', '行业', 'varchar(255)', 'String', 'sdIndustry', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-11-24 09:59:11', '', '2023-12-13 10:44:37');
INSERT INTO `gen_table_column` VALUES (542, 22, 'sd_en', '企业性质', 'varchar(255)', 'String', 'sdEn', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-11-24 09:59:11', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (543, 22, 'sd_rt', '注册时间', 'datetime', 'Date', 'sdRt', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2023-11-24 09:59:11', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (544, 22, 'sd_head', '负责人', 'varchar(255)', 'String', 'sdHead', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-11-24 09:59:11', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (545, 22, 'sd_head_phone', '负责人手机', 'varchar(255)', 'String', 'sdHeadPhone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-11-24 09:59:11', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (546, 22, 'sd_pcn', '主要联系人姓名', 'varchar(255)', 'String', 'sdPcn', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-24 09:59:11', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (547, 22, 'sd_pce', '主要联系人邮箱', 'varchar(255)', 'String', 'sdPce', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (548, 22, 'sd_pcp', '主要联系人手机号', 'varchar(255)', 'String', 'sdPcp', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (549, 22, 'sd_pcg', '主要联系人性别', 'varchar(255)', 'String', 'sdPcg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'sys_user_sex', 16, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (550, 22, 'sd_mct', '主要联系人职务', 'varchar(255)', 'String', 'sdMct', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:38');
INSERT INTO `gen_table_column` VALUES (551, 22, 'sd_country', '国家地区', 'varchar(255)', 'String', 'sdCountry', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (552, 22, 'sd_region', '所在区域', 'varchar(255)', 'String', 'sdRegion', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (553, 22, 'sd_website', '网址', 'varchar(255)', 'String', 'sdWebsite', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2023-11-24 09:59:12', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (554, 22, 'sd_brief', '简介', 'varchar(255)', 'String', 'sdBrief', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (555, 22, 'sd_legal', '法定代表', 'varchar(255)', 'String', 'sdLegal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (556, 22, 'sd_ri', '注册信息', 'varchar(255)', 'String', 'sdRi', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (557, 22, 'sd_br', '工商注册号', 'varchar(255)', 'String', 'sdBr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (558, 22, 'sd_rc', '注册资本', 'varchar(255)', 'String', 'sdRc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (559, 22, 'sd_status', '注册状态', 'varchar(255)', 'String', 'sdStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'registration', 27, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (560, 22, 'sd_phone', '单位电话', 'varchar(255)', 'String', 'sdPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2023-11-24 09:59:13', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (561, 22, 'sd_email', '单位邮箱', 'varchar(255)', 'String', 'sdEmail', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (562, 22, 'sd_fax', '传真', 'varchar(255)', 'String', 'sdFax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (563, 22, 'sd_save', '省', 'varchar(255)', 'String', 'sdSave', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (564, 22, 'sd_city', '市', 'varchar(255)', 'String', 'sdCity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 32, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (565, 22, 'sd_county', '区(县)', 'varchar(255)', 'String', 'sdCounty', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (566, 22, 'sd_sm', '结算方式', 'varchar(255)', 'String', 'sdSm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (567, 22, 'sd_bank', '开户行', 'varchar(255)', 'String', 'sdBank', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2023-11-24 09:59:14', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (568, 22, 'sd_currency', '币种', 'varchar(255)', 'String', 'sdCurrency', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 36, 'admin', '2023-11-24 09:59:15', '', '2023-12-13 10:44:40');
INSERT INTO `gen_table_column` VALUES (569, 22, 'sd_account', '账号', 'varchar(255)', 'String', 'sdAccount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 37, 'admin', '2023-11-24 09:59:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (570, 22, 'id_code', '证件编码', 'varchar(255)', 'String', 'idCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 38, 'admin', '2023-11-24 09:59:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (571, 22, 'certificate_name', '证件名称', 'varchar(255)', 'String', 'certificateName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 39, 'admin', '2023-11-24 09:59:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (572, 22, 'filing_date', '存档日期', 'datetime', 'Date', 'filingDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 40, 'admin', '2023-11-24 09:59:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (573, 22, 'filing', '文件', 'varchar(255)', 'String', 'filing', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 41, 'admin', '2023-11-24 09:59:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (574, 22, 'data_tatus', '数据状态', 'varchar(255)', 'String', 'dataTatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 42, 'admin', '2023-11-24 09:59:16', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (575, 23, 'tax_type_id', '税种序号', 'bigint(11)', 'Long', 'taxTypeId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-24 11:13:48', '', '2023-11-24 11:30:29');
INSERT INTO `gen_table_column` VALUES (576, 23, 'tax_code', '税种代码', 'varchar(255)', 'String', 'taxCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-11-24 11:13:48', '', '2023-11-24 11:30:30');
INSERT INTO `gen_table_column` VALUES (577, 23, 'describes', '描述', 'varchar(255)', 'String', 'describes', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-11-24 11:13:48', '', '2023-11-24 11:30:30');
INSERT INTO `gen_table_column` VALUES (578, 23, 'tax_rate', '税率', 'decimal(10,2)', 'BigDecimal', 'taxRate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-24 11:13:48', '', '2023-11-24 11:30:30');
INSERT INTO `gen_table_column` VALUES (579, 23, 'enable', '是否启用', 'bigint(20)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', '', 5, 'admin', '2023-11-24 11:13:48', '', '2023-11-24 11:30:30');
INSERT INTO `gen_table_column` VALUES (580, 24, 'bank_type_id', '银行类型ID', 'bigint(11)', 'Long', 'bankTypeId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-24 11:37:25', '', '2023-11-24 11:47:26');
INSERT INTO `gen_table_column` VALUES (581, 24, 'bank_type', '银行类型', 'varchar(255)', 'String', 'bankType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', '', 2, 'admin', '2023-11-24 11:37:25', '', '2023-11-24 11:47:26');
INSERT INTO `gen_table_column` VALUES (612, 27, 'order_id', '采购订单id', 'bigint(20)', 'Long', 'orderId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:56');
INSERT INTO `gen_table_column` VALUES (613, 27, 'order_code', '采购订单编号', 'varchar(255)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:56');
INSERT INTO `gen_table_column` VALUES (614, 27, 'company', '公司', 'bigint(20)', 'Long', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (615, 27, 'order_type', '订单类型', 'bigint(20)', 'Long', 'orderType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'order_type', 4, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (616, 27, 'order_source', '订单来源', 'varchar(255)', 'String', 'orderSource', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'order_source', 5, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (617, 27, 'pur_organization', '采购组织', 'bigint(20)', 'Long', 'purOrganization', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'procure', 6, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (618, 27, 'annex', '附件', 'bigint(20)', 'String', 'annex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (619, 27, 'is_self_pickup', '是否自提', 'bigint(20)', 'Long', 'isSelfPickup', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'self_pickup', 8, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (620, 27, 'license_plate_number', '自提车牌号', 'varchar(255)', 'String', 'licensePlateNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (621, 27, 'concat_infomation', '自提司机联系方式', 'varchar(255)', 'String', 'concatInfomation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (622, 27, 'contract_code', '关联合同编号', 'varchar(255)', 'String', 'contractCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (623, 27, 'contract_name', '关联合同名称', 'varchar(255)', 'String', 'contractName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:57');
INSERT INTO `gen_table_column` VALUES (624, 27, 'order_description', '订单说明', 'varchar(255)', 'String', 'orderDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (625, 27, 'total_demand', '需求总数量', 'decimal(10,2)', 'BigDecimal', 'totalDemand', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (626, 27, 'purchaser', '采购员', 'bigint(20)', 'Long', 'purchaser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (627, 27, 'order_state', '采购审批状态', 'bigint(255)', 'Long', 'orderState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'order_status', 16, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (629, 27, 'currency_id', '币种', 'bigint(20)', 'Long', 'currencyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (630, 27, 'supplier', '供应商名称', 'bigint(20)', 'Long', 'supplier', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (631, 27, 'contacts', '联系人', 'varchar(255)', 'String', 'contacts', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (632, 27, 'phone', '联系电话', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:59');
INSERT INTO `gen_table_column` VALUES (633, 27, 'invoice_method', '供应商发票方式', 'bigint(20)', 'Long', 'invoiceMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'invoice_method', 22, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:59');
INSERT INTO `gen_table_column` VALUES (634, 27, 'create_time', '采购订单创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, '1', NULL, 'EQ', 'datetime', '', 23, 'admin', '2023-11-24 14:38:40', '', '2023-12-29 11:32:59');
INSERT INTO `gen_table_column` VALUES (635, 27, 'material_id', '物料信息ID', 'varchar(90)', 'String', 'materialId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2023-11-24 14:38:41', '', '2023-12-29 11:32:59');
INSERT INTO `gen_table_column` VALUES (636, 28, 'bank_id', '银行序号', 'bigint(11)', 'Long', 'bankId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15');
INSERT INTO `gen_table_column` VALUES (637, 28, 'bank_code', '银行编码', 'varchar(255)', 'String', 'bankCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15');
INSERT INTO `gen_table_column` VALUES (638, 28, 'bank_name', '银行名称', 'varchar(255)', 'String', 'bankName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 3, 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15');
INSERT INTO `gen_table_column` VALUES (639, 28, 'bank_abbreviation', '银行简称', 'varchar(255)', 'String', 'bankAbbreviation', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15');
INSERT INTO `gen_table_column` VALUES (640, 28, 'bank_type', '银行类型', 'bigint(11)', 'Long', 'bankType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', '', 5, 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15');
INSERT INTO `gen_table_column` VALUES (641, 28, 'enable', '是否启用', 'bigint(20)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', '', 6, 'admin', '2023-11-24 15:11:22', '', '2023-11-24 15:19:15');
INSERT INTO `gen_table_column` VALUES (642, 29, 'or_id', '主键ID', 'bigint(11)', 'Long', 'orId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-27 14:42:45', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (643, 29, 'or_code', '物料编码', 'varchar(255)', 'String', 'orCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-27 14:42:45', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (644, 29, 'or_name', '物料名称', 'varchar(255)', 'String', 'orName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-11-27 14:42:45', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (645, 29, 'category_code', '品类编码', 'varchar(255)', 'String', 'categoryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-27 14:42:45', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (646, 29, 'material_category', '物料品类', 'varchar(255)', 'String', 'materialCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-11-27 14:42:45', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (647, 29, 'material_specification', '物料规格', 'varchar(255)', 'String', 'materialSpecification', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (648, 29, 'material_model', '物料型号', 'varchar(255)', 'String', 'materialModel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:05');
INSERT INTO `gen_table_column` VALUES (649, 29, 'material_unit', '物料单位', 'varchar(255)', 'String', 'materialUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (650, 29, 'require_number', '需求数量', 'decimal(8,2)', 'BigDecimal', 'requireNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (651, 29, 'require_time', '需求日期', 'datetime', 'Date', 'requireTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (652, 29, 'lower_price', '历史最低价', 'decimal(8,2)', 'BigDecimal', 'lowerPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (653, 29, 'new_price', '最新价格', 'decimal(8,2)', 'BigDecimal', 'newPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (654, 29, 'no_tax_price', '不含税单价', 'decimal(8,0)', 'Long', 'noTaxPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (655, 29, 'tax_code', '税率代码', 'varchar(255)', 'String', 'taxCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (656, 29, 'tax', '税率', 'decimal(8,2)', 'BigDecimal', 'tax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (657, 29, 'tax_price', '含税单价', 'decimal(8,0)', 'Long', 'taxPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (658, 29, 'line_tax_amount', '行含税金额', 'decimal(8,2)', 'BigDecimal', 'lineTaxAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (659, 29, 'consignee', '收货人', 'bigint(11)', 'String', 'consignee', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (660, 29, 'receiving_phone', '收货电话', 'char(11)', 'String', 'receivingPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-11-27 14:42:46', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (661, 29, 'receiving_address', '收货地址', 'varchar(255)', 'String', 'receivingAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2023-11-27 14:42:47', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (662, 29, 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2023-11-27 14:42:47', '', '2023-12-13 15:33:07');
INSERT INTO `gen_table_column` VALUES (663, 30, 'ort_id', '订单类型id', 'bigint(20)', 'Long', 'ortId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-27 14:42:47', '', NULL);
INSERT INTO `gen_table_column` VALUES (664, 30, 'ort_name', '订单类型名称', 'varchar(255)', 'String', 'ortName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-27 14:42:47', '', NULL);
INSERT INTO `gen_table_column` VALUES (681, 33, 'currency_id', '币种ID', 'bigint(11)', 'Long', 'currencyId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:31');
INSERT INTO `gen_table_column` VALUES (682, 33, 'currency_code', '币种编码', 'varchar(255)', 'String', 'currencyCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:31');
INSERT INTO `gen_table_column` VALUES (683, 33, 'currency_name', '币种名称', 'varchar(255)', 'String', 'currencyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:31');
INSERT INTO `gen_table_column` VALUES (684, 33, 'country_region', '国家/地区', 'varchar(255)', 'String', 'countryRegion', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:31');
INSERT INTO `gen_table_column` VALUES (685, 33, 'financial_accuracy', '财务精度', 'varchar(255)', 'String', 'financialAccuracy', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:32');
INSERT INTO `gen_table_column` VALUES (686, 33, 'accuracy', '精度', 'varchar(255)', 'String', 'accuracy', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-11-27 15:49:27', '', '2023-12-04 10:58:32');
INSERT INTO `gen_table_column` VALUES (687, 33, 'currency_symbol', '货币符号', 'varchar(255)', 'String', 'currencySymbol', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-11-27 15:49:28', '', '2023-12-04 10:58:32');
INSERT INTO `gen_table_column` VALUES (688, 33, 'enable', '启用(1:代表启动,0:代表停用)', 'varchar(255)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', '', 8, 'admin', '2023-11-27 15:49:28', '', '2023-12-04 10:58:32');
INSERT INTO `gen_table_column` VALUES (689, 34, 'mi_id', '序号', 'bigint(8)', 'Integer', 'miId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-27 16:43:26', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (691, 34, 'must_number', '需求数量', 'bigint(20)', 'Long', 'mustNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (692, 34, 'must_date', '需求日期', 'datetime', 'Date', 'mustDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (695, 34, 'unit_price', '预算单价(不含税)', 'decimal(10,2)', 'BigDecimal', 'unitPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (696, 34, 'rate_value', '税率值', 'varchar(255)', 'String', 'rateValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (697, 34, 'budget_amount', '行预算金额', 'varchar(255)', 'String', 'budgetAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (698, 34, 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (699, 34, 'annex', '附件', 'varchar(255)', 'String', 'annex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-27 16:43:27', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (700, 35, 'task_id', '任务ID', 'bigint(20)', 'Long', 'taskId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (701, 35, 'task_code', '任务单号', 'varchar(20)', 'String', 'taskCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (702, 35, 'procurement_strategy', '采购策略', 'varchar(50)', 'String', 'procurementStrategy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (703, 35, 'task_total', '任务总金额', 'decimal(8,2)', 'BigDecimal', 'taskTotal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (704, 35, 'requirement_id1', '需求申请ID', 'bigint(11)', 'Long', 'requirementId1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (705, 35, 'companies_id1', '公司ID', 'varchar(50)', 'String', 'companiesId1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'companies', 6, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (706, 35, 'purchaser', '采购员', 'varchar(50)', 'String', 'purchaser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'buyer', 7, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (707, 35, 'material_id2', '物料ID', 'bigint(11)', 'Long', 'materialId2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (708, 35, 'currency_id2', '币种ID', 'bigint(11)', 'Long', 'currencyId2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:20');
INSERT INTO `gen_table_column` VALUES (709, 35, 'acceptance_strategy', '受理策略', 'varchar(50)', 'String', 'acceptanceStrategy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'acceptance_strategy', 10, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (710, 35, 'task_number', '任务总数量', 'decimal(8,2)', 'BigDecimal', 'taskNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (711, 35, 'accepted_quantity', '已受理数量', 'decimal(8,2)', 'BigDecimal', 'acceptedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (712, 35, 'task_occupied', '占用任务数量', 'decimal(8,2)', 'BigDecimal', 'taskOccupied', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (713, 35, 'task_accepted', '待受理数量', 'decimal(8,2)', 'BigDecimal', 'taskAccepted', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-11-27 17:16:58', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (714, 35, 'merge_orders', '是否自动合单', 'bigint(20)', 'Long', 'mergeOrders', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-27 17:16:59', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (715, 35, 'task_status', '状态', 'bigint(11)', 'Long', 'taskStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 16, 'admin', '2023-11-27 17:16:59', '', '2023-12-13 14:52:21');
INSERT INTO `gen_table_column` VALUES (720, 37, 'class_id', '分类id', 'int(11)', 'Long', 'classId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-28 09:33:43', '', '2023-11-28 09:36:30');
INSERT INTO `gen_table_column` VALUES (721, 37, 'class_code', '分类编码', 'varchar(255)', 'String', 'classCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-28 09:33:43', '', '2023-11-28 09:36:31');
INSERT INTO `gen_table_column` VALUES (722, 37, 'class_describe', '分类描述', 'varchar(255)', 'String', 'classDescribe', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-28 09:33:43', '', '2023-11-28 09:36:31');
INSERT INTO `gen_table_column` VALUES (745, 39, 'unit_type_id', '单位类型ID', 'bigint(11)', 'Long', 'unitTypeId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-28 09:58:41', '', '2023-11-28 10:47:49');
INSERT INTO `gen_table_column` VALUES (746, 39, 'unit_type_code', '单位类型代码', 'varchar(255)', 'String', 'unitTypeCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-11-28 09:58:41', '', '2023-11-28 10:47:50');
INSERT INTO `gen_table_column` VALUES (747, 39, 'unit_type_name', '单位类型名称', 'varchar(255)', 'String', 'unitTypeName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 3, 'admin', '2023-11-28 09:58:41', '', '2023-11-28 10:47:50');
INSERT INTO `gen_table_column` VALUES (748, 39, 'enable', '是否启用 0：停用 1：启用', 'bigint(20)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', '', 4, 'admin', '2023-11-28 09:58:42', '', '2023-11-28 10:47:50');
INSERT INTO `gen_table_column` VALUES (758, 41, 'unit_id', '单位ID', 'bigint(11)', 'Long', 'unitId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:10');
INSERT INTO `gen_table_column` VALUES (759, 41, 'unit_type_name', '单位类型名称', 'bigint(255)', 'Long', 'unitTypeName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'select', '', 2, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:10');
INSERT INTO `gen_table_column` VALUES (760, 41, 'calculation_unit_code', '计算单位编码', 'varchar(255)', 'String', 'calculationUnitCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:11');
INSERT INTO `gen_table_column` VALUES (761, 41, 'metering_unit', '计量单位', 'varchar(50)', 'String', 'meteringUnit', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:11');
INSERT INTO `gen_table_column` VALUES (762, 41, 'source_system', '来源系统', 'varchar(255)', 'String', 'sourceSystem', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:11');
INSERT INTO `gen_table_column` VALUES (763, 41, 'unit_conversion_rate', '单位转换率', 'decimal(10,2)', 'BigDecimal', 'unitConversionRate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:11');
INSERT INTO `gen_table_column` VALUES (764, 41, 'accuracy', '精度', 'decimal(10,2)', 'BigDecimal', 'accuracy', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-11-28 11:06:18', '', '2023-11-28 11:08:11');
INSERT INTO `gen_table_column` VALUES (765, 41, 'enable', '是否启用 0：启用 1：停用', 'bigint(20)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', '', 8, 'admin', '2023-11-28 11:06:19', '', '2023-11-28 11:08:11');
INSERT INTO `gen_table_column` VALUES (766, 42, 'categoryid', '品类序号', 'bigint(11)', 'Long', 'categoryid', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-29 09:43:42', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (767, 42, 'category_code', '品类代码', 'varchar(255)', 'String', 'categoryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-29 09:43:42', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (768, 42, 'category_name', '品类名称', 'varchar(255)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-29 09:43:42', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (769, 42, 'enable', '是否启用', 'bigint(20)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-11-29 09:43:42', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (770, 42, 'is_no', '是否允许超量送货', 'bigint(11)', 'Long', 'isNo', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (771, 42, 'superior_category', '上级品类', 'bigint(60)', 'Long', 'superiorCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (772, 42, 'creation_time', '创建时间', 'datetime', 'Date', 'creationTime', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (773, 42, 'l_updated', '最后更新人', 'varchar(255)', 'String', 'lUpdated', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (774, 42, 'l_update_time', '最后更新时间', 'datetime', 'Date', 'lUpdateTime', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (775, 42, 'company', '公司', 'bigint(20)', 'Long', 'company', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 10, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (776, 42, 'metering_unit', '计量单位', 'bigint(220)', 'Long', 'meteringUnit', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 11, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (777, 42, 'source_system', '来源系统', 'varchar(255)', 'String', 'sourceSystem', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 12, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (778, 42, 'introduction_requirements', '引入要求 1:严格 0：一般', 'bigint(11)', 'Long', 'introductionRequirements', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 13, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (779, 42, 'assign_purchaser', '分配采购人', 'varchar(255)', 'String', 'assignPurchaser', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 14, 'admin', '2023-11-29 09:43:43', '', '2023-12-06 14:17:59');
INSERT INTO `gen_table_column` VALUES (780, 43, 'industry_type_id', '行业类型ID', 'bigint(20)', 'Long', 'industryTypeId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-29 11:19:17', '', '2023-11-29 11:23:53');
INSERT INTO `gen_table_column` VALUES (781, 43, 'industry_type_Code', '行业类型编码', 'varchar(255)', 'String', 'industryTypeCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-29 11:19:17', '', '2023-11-29 11:23:53');
INSERT INTO `gen_table_column` VALUES (782, 43, 'industry_type_name', '行业类型名称', 'varchar(255)', 'String', 'industryTypeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-29 11:19:17', '', '2023-11-29 11:23:53');
INSERT INTO `gen_table_column` VALUES (783, 43, 'superior_industry', '上级行业', 'varchar(255)', 'String', 'superiorIndustry', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-29 11:19:17', '', '2023-11-29 11:23:53');
INSERT INTO `gen_table_column` VALUES (784, 43, 'enable', '启用', 'bigint(11)', 'Long', 'enable', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-29 11:19:17', '', '2023-11-29 11:23:53');
INSERT INTO `gen_table_column` VALUES (785, 27, 'or_id', '订单执行状态', 'bigint(11)', 'Long', 'orId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'or_id', 17, '', '2023-11-29 12:23:14', '', '2023-12-29 11:32:58');
INSERT INTO `gen_table_column` VALUES (786, 44, 'material_id', '物料序号', 'bigint(20)', 'Long', 'materialId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (787, 44, 'material_code', '物料编码', 'varchar(255)', 'String', 'materialCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (788, 44, 'material_name', '物料名称', 'varchar(255)', 'String', 'materialName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (789, 44, 'calculation_unit', '基本计算单位', 'bigint(10)', 'Integer', 'calculationUnit', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (790, 44, 'purchaser', '采购员', 'varchar(255)', 'String', 'purchaser', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (791, 44, 'l_updated', '最后更新人', 'varchar(255)', 'String', 'lUpdated', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (792, 44, 'l_update_time', '最后更新时间', 'date', 'Date', 'lUpdateTime', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (793, 44, 'source_system', '来源系统', 'varchar(255)', 'String', 'sourceSystem', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (794, 44, 'enable', '是否启用', 'bigint(20)', 'Long', 'enable', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 9, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:01');
INSERT INTO `gen_table_column` VALUES (795, 44, 'm_category', '主品类', 'bigint(11)', 'Long', 'mCategory', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (796, 44, 'specifications', '规格', 'varchar(255)', 'String', 'specifications', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 11, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (797, 44, 'model', '型号', 'varchar(255)', 'String', 'model', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 12, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (798, 44, 'brand', '品牌', 'varchar(255)', 'String', 'brand', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 13, 'admin', '2023-11-29 14:17:04', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (799, 44, 'categories_taxes', '默认税种/税率', 'bigint(10)', 'Integer', 'categoriesTaxes', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 14, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (800, 44, 'image', '物料图片', 'varchar(255)', 'String', 'image', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'imageUpload', '', 15, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (801, 44, 'g_weight', '毛重', 'decimal(10,2)', 'BigDecimal', 'gWeight', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 16, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (802, 44, 'n_weight', '净重', 'decimal(10,2)', 'BigDecimal', 'nWeight', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 17, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (803, 44, 'weight', '重量单位', 'bigint(20)', 'Long', 'weight', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 18, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (804, 44, 'volume', '体积', 'decimal(10,2)', 'BigDecimal', 'volume', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 19, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (805, 44, 'v_unit', '体积单位', 'bigint(10)', 'Integer', 'vUnit', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 20, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (806, 44, 'abc_attribute', '物料ABC属性', 'varchar(255)', 'String', 'abcAttribute', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 21, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (807, 44, 'avoid_inspect', '是否免检', 'bigint(20)', 'Long', 'avoidInspect', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'select', '', 22, 'admin', '2023-11-29 14:17:05', '', '2023-11-29 17:17:02');
INSERT INTO `gen_table_column` VALUES (808, 34, 'reference_price', '参考价格', 'decimal(10,2)', 'BigDecimal', 'referencePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '', '2023-11-29 14:37:30', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (809, 29, 'order_code', '所属订单号', 'varchar(255)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, '', '2023-11-29 15:50:05', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (810, 45, 'companies_id', '公司ID', 'bigint(11)', 'Long', 'companiesId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-29 16:43:47', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (811, 45, 'companies_name', '企业名称', 'varchar(50)', 'String', 'companiesName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-29 16:43:47', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (812, 45, 'credit_code', '统一社会信用代码', 'varchar(50)', 'String', 'creditCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-29 16:43:47', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (813, 45, 'companies_abbreviation', '公司简称', 'varchar(50)', 'String', 'companiesAbbreviation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-11-29 16:43:47', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (814, 45, 'isgroup', '是否集团', 'bigint(11)', 'Long', 'isgroup', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-29 16:43:47', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (815, 45, 'companies_code', '公司编码', 'varchar(20)', 'String', 'companiesCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (816, 45, 'registration_number', '企业注册登记号', 'varchar(50)', 'String', 'registrationNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (817, 45, 'enterprise_type', '企业类型', 'varchar(50)', 'String', 'enterpriseType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (818, 45, 'registered_country', '注册国家', 'varchar(50)', 'String', 'registeredCountry', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (819, 45, 'representative', '法定代表人', 'varchar(50)', 'String', 'representative', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (820, 45, 'registered_capital', '注册资本（万）', 'decimal(8,2)', 'BigDecimal', 'registeredCapital', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (821, 45, 'establishment_date', '成立日期', 'date', 'Date', 'establishmentDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (822, 45, 'operating_period', '经营期限', 'decimal(8,2)', 'BigDecimal', 'operatingPeriod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-11-29 16:43:48', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (823, 45, 'basic_division', '对应基础分部', 'varchar(50)', 'String', 'basicDivision', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-11-29 16:43:49', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (824, 45, 'business_license', '上传营业执照', 'varchar(50)', 'String', 'businessLicense', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-29 16:43:49', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (825, 45, 'taxpayer', '纳税人标识', 'varchar(50)', 'String', 'taxpayer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-11-29 16:43:49', '', '2023-12-05 11:59:27');
INSERT INTO `gen_table_column` VALUES (826, 45, 'province', '省份', 'varchar(20)', 'String', 'province', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-11-29 16:43:49', '', '2023-12-05 11:59:28');
INSERT INTO `gen_table_column` VALUES (827, 45, 'address', '详细地址', 'varchar(50)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-29 16:43:50', '', '2023-12-05 11:59:28');
INSERT INTO `gen_table_column` VALUES (828, 45, 'currency_id2', '币种ID', 'bigint(11)', 'Long', 'currencyId2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-11-29 16:43:50', '', '2023-12-05 11:59:28');
INSERT INTO `gen_table_column` VALUES (829, 45, 'deng_code', '邓白氏编码', 'varchar(50)', 'String', 'dengCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-11-29 16:43:50', '', '2023-12-05 11:59:28');
INSERT INTO `gen_table_column` VALUES (830, 45, 'profile', '公司简介', 'varchar(255)', 'String', 'profile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'fileUpload', '', 21, 'admin', '2023-11-29 16:43:50', '', '2023-12-05 11:59:28');
INSERT INTO `gen_table_column` VALUES (831, 46, 'category_id', '品类序号', 'bigint(11)', 'Long', 'categoryId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-29 17:07:53', '', '2023-11-29 17:08:08');
INSERT INTO `gen_table_column` VALUES (832, 46, 'category_code', '品类代码', 'varchar(255)', 'String', 'categoryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-11-29 17:07:53', '', '2023-11-29 17:08:08');
INSERT INTO `gen_table_column` VALUES (833, 46, 'category_name', '品类名称', 'bigint(11)', 'Long', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-29 17:07:53', '', '2023-11-29 17:08:08');
INSERT INTO `gen_table_column` VALUES (834, 46, 'is_host', '是否主品类', 'bigint(11)', 'Long', 'isHost', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-11-29 17:07:53', '', '2023-11-29 17:08:09');
INSERT INTO `gen_table_column` VALUES (835, 34, 'material_code', '物料编码', 'varchar(255)', 'String', 'materialCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-11-30 15:48:45', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (836, 34, 'material_name', '物料名称', 'varchar(255)', 'String', 'materialName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '', '2023-11-30 15:48:46', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (837, 34, 'material_category', '物料品类', 'varchar(255)', 'String', 'materialCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-11-30 15:48:46', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (838, 34, 'material_specification', '物料规格', 'varchar(255)', 'String', 'materialSpecification', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2023-11-30 15:48:46', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (839, 34, 'material_model', '物料型号', 'varchar(255)', 'String', 'materialModel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-11-30 15:48:46', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (840, 34, 'material_brand', '物料品牌', 'varchar(255)', 'String', 'materialBrand', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '', '2023-11-30 15:48:47', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (841, 34, 'material_unit', '物料单位', 'varchar(255)', 'String', 'materialUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-11-30 15:48:47', '', '2023-12-07 11:35:48');
INSERT INTO `gen_table_column` VALUES (842, 34, 'currency_name', '币种', 'bigint(20)', 'Long', 'currencyName', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2023-11-30 15:48:47', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (843, 34, 'tax', '税率', 'varchar(255)', 'String', 'tax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2023-11-30 15:48:48', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (844, 34, 'purchaser', '采购员', 'varchar(255)', 'String', 'purchaser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, '', '2023-11-30 15:48:48', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (845, 47, 'contract_management_id', '合同管理ID', 'bigint(11)', 'Long', 'contractManagementId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-30 17:32:44', '', '2023-12-18 15:06:41');
INSERT INTO `gen_table_column` VALUES (846, 47, 'related_projects', '相关项目', 'varchar(50)', 'String', 'relatedProjects', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-11-30 17:32:45', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (847, 47, 'contract_name', '合同名称', 'varchar(255)', 'String', 'contractName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-30 17:32:45', '', '2023-12-18 15:06:41');
INSERT INTO `gen_table_column` VALUES (848, 47, 'contract_code', '合同编号', 'varchar(255)', 'String', 'contractCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-30 17:32:45', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (849, 47, 'head', '负责人', 'varchar(20)', 'String', 'head', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-11-30 17:32:45', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (850, 47, 'signing_date', '签订日期', 'date', 'Date', 'signingDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, 'admin', '2023-11-30 17:32:45', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (851, 47, 'total_amount', '合同总金额', 'decimal(10,2)', 'BigDecimal', 'totalAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-11-30 17:32:45', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (852, 47, 'payment_proportion', '付款比例(%)', 'decimal(8,2)', 'String', 'paymentProportion', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-11-30 17:32:46', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (853, 47, 'contractstatus_id', '合同状态ID', 'bigint(11)', 'Long', 'contractstatusId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'contract_status', 19, 'admin', '2023-11-30 17:32:46', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (854, 48, 'requirement_id', '需求类型ID', 'bigint(20)', 'Long', 'requirementId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-01 15:07:10', '', '2023-12-01 15:08:10');
INSERT INTO `gen_table_column` VALUES (855, 48, 'requirement_type', '需求类型名称', 'varchar(255)', 'String', 'requirementType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2023-12-01 15:07:10', '', '2023-12-01 15:08:10');
INSERT INTO `gen_table_column` VALUES (856, 27, 'tax_total', '含税总金额', 'decimal(10,2)', 'BigDecimal', 'taxTotal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, '', '2023-12-04 10:50:27', '', '2023-12-29 11:32:59');
INSERT INTO `gen_table_column` VALUES (857, 29, 'om_state', '订单明细执行状态', 'bigint(11)', 'Long', 'omState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'om_state', 24, '', '2023-12-04 14:37:30', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (859, 49, 'order_delivery_note_id', '送货单Id', 'bigint(20)', 'Long', 'orderDeliveryNoteId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-04 17:15:03', '', '2023-12-12 21:37:34');
INSERT INTO `gen_table_column` VALUES (860, 49, 'order_connection_id', '关联订单', 'varchar(255)', 'String', 'orderConnectionId', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 3, 'admin', '2023-12-04 17:15:03', '', '2023-12-12 21:37:34');
INSERT INTO `gen_table_column` VALUES (861, 49, 'delivery_note_state', '送货单状态', 'bigint(20)', 'Long', 'deliveryNoteState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'delivery_state', 4, 'admin', '2023-12-04 17:15:03', '', '2023-12-12 21:37:34');
INSERT INTO `gen_table_column` VALUES (862, 49, 'delivery_address', '收货地址', 'varchar(255)', 'String', 'deliveryAddress', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 5, 'admin', '2023-12-04 17:15:03', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (863, 49, 'consignee', '收货人', 'varchar(255)', 'String', 'consignee', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-12-04 17:15:03', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (864, 49, 'company_name', '收货公司名', 'varchar(255)', 'String', 'companyName', '0', '0', NULL, '1', '1', '0', '0', 'LIKE', 'input', '', 7, 'admin', '2023-12-04 17:15:03', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (865, 49, 'consignee_phone', '收货人联系方式', 'varchar(255)', 'String', 'consigneePhone', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 8, 'admin', '2023-12-04 17:15:04', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (866, 49, 'shipper', '发货人', 'varchar(255)', 'String', 'shipper', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 9, 'admin', '2023-12-04 17:15:04', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (867, 49, 'shipper_phone', '发货人联系方式', 'varchar(255)', 'String', 'shipperPhone', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-12-04 17:15:04', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (868, 49, 'supplier', '供应商名称', 'bigint(20)', 'Long', 'supplier', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-12-04 17:15:04', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (869, 49, 'carrier', '承运人', 'varchar(255)', 'String', 'carrier', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 12, 'admin', '2023-12-04 17:15:04', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (870, 49, 'carrier_phone', '承运人联系方式', 'varchar(255)', 'String', 'carrierPhone', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-12-04 17:15:04', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (871, 49, 'delivery_method', '送货方式', 'varchar(255)', 'String', 'deliveryMethod', '0', '0', NULL, '1', '1', '0', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-04 17:15:05', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (872, 49, 'tracking_number', '快递/物流单号', 'varchar(255)', 'String', 'trackingNumber', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', '2023-12-04 17:15:05', '', '2023-12-12 21:37:35');
INSERT INTO `gen_table_column` VALUES (873, 49, 'delivery_date', '预计发货日期', 'datetime', 'Date', 'deliveryDate', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'datetime', '', 16, 'admin', '2023-12-04 17:15:05', '', '2023-12-12 21:37:36');
INSERT INTO `gen_table_column` VALUES (874, 49, 'arrival_date', '预计到货日期', 'datetime', 'Date', 'arrivalDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 17, 'admin', '2023-12-04 17:15:05', '', '2023-12-12 21:37:36');
INSERT INTO `gen_table_column` VALUES (875, 49, 'note', '备注', 'varchar(255)', 'String', 'note', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 18, 'admin', '2023-12-04 17:15:05', '', '2023-12-12 21:37:36');
INSERT INTO `gen_table_column` VALUES (876, 49, 'annex', '附件', 'bigint(20)', 'Long', 'annex', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'fileUpload', '', 19, 'admin', '2023-12-04 17:15:05', '', '2023-12-12 21:37:36');
INSERT INTO `gen_table_column` VALUES (877, 11, 'status', '状态', 'bigint(20)', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 21, '', '2023-12-05 11:04:33', '', '2023-12-20 14:46:34');
INSERT INTO `gen_table_column` VALUES (879, 11, 'task_code', '任务单号', 'varchar(255)', 'String', 'taskCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, '', '2023-12-05 11:04:34', '', '2023-12-20 14:46:34');
INSERT INTO `gen_table_column` VALUES (880, 34, 'requirement_code', '需求编号', 'varchar(255)', 'String', 'requirementCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, '', '2023-12-06 10:46:45', '', '2023-12-07 11:35:49');
INSERT INTO `gen_table_column` VALUES (881, 50, 'lifecycle_id', '生命周期id', 'bigint(11)', 'Long', 'lifecycleId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-06 11:23:55', '', '2023-12-12 21:20:05');
INSERT INTO `gen_table_column` VALUES (883, 50, 'blacklisted', '加入黑名单', 'bigint(11)', 'Long', 'blacklisted', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-06 11:23:55', '', '2023-12-12 21:20:06');
INSERT INTO `gen_table_column` VALUES (886, 50, 'cycle', '生命周期', 'varchar(255)', 'String', 'cycle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, '', '2023-12-06 11:26:36', '', '2023-12-12 21:20:05');
INSERT INTO `gen_table_column` VALUES (887, 22, 'sd_class', '供应商分类', 'varchar(255)', 'String', 'sdClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, '', '2023-12-06 11:42:12', '', '2023-12-13 10:44:39');
INSERT INTO `gen_table_column` VALUES (888, 22, 'lifecycle_id', '生命周期id', 'bigint(11)', 'Long', 'lifecycleId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 43, '', '2023-12-06 11:42:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (889, 22, 'sl_status', '升降级状态', 'bigint(11)', 'Long', 'slStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'ud_status', 44, '', '2023-12-06 11:42:15', '', '2023-12-13 10:44:41');
INSERT INTO `gen_table_column` VALUES (890, 51, 'supply_id', '供货id', 'bigint(11)', 'Long', 'supplyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-06 14:16:08', '', '2023-12-12 09:29:16');
INSERT INTO `gen_table_column` VALUES (893, 51, 'founder', '创建人', 'varchar(255)', 'String', 'founder', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-06 14:16:09', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (894, 51, 'creation_time', '创建时间', 'datetime', 'Date', 'creationTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-12-06 14:16:09', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (895, 51, 'last_updated_by', '最后更新人', 'varchar(255)', 'String', 'lastUpdatedBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-06 14:16:09', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (896, 51, 'last_update_time', '最后更新时间', 'datetime', 'Date', 'lastUpdateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-12-06 14:16:09', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (897, 51, 'notes', '备注', 'varchar(255)', 'String', 'notes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-06 14:16:09', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (898, 51, 'created_by_epartment', '创建人部门', 'varchar(255)', 'String', 'createdByEpartment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-06 14:16:09', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (899, 51, 'sd_id', '供应商id', 'bigint(11)', 'Long', 'sdId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-06 14:27:05', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (900, 51, 'companies_id', '公司id', 'bigint(11)', 'Long', 'companiesId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-12-07 11:40:46', '', '2023-12-12 09:29:17');
INSERT INTO `gen_table_column` VALUES (901, 52, 'purchaserId', '采购员Id', 'bigint(20)', 'Long', 'purchaserId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-08 10:59:29', '', '2023-12-13 14:49:22');
INSERT INTO `gen_table_column` VALUES (902, 52, 'security_Level', '安全级别', 'bigint(20)', 'Long', 'securityLevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-08 10:59:29', '', '2023-12-13 14:49:22');
INSERT INTO `gen_table_column` VALUES (903, 52, 'LOGINID', 'LOGINID', 'varchar(255)', 'String', 'LOGINID', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-08 10:59:30', '', '2023-12-13 14:49:22');
INSERT INTO `gen_table_column` VALUES (904, 52, 'login_name', '登录名', 'varchar(255)', 'String', 'loginName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'select', '', 4, 'admin', '2023-12-08 10:59:30', '', '2023-12-13 14:49:22');
INSERT INTO `gen_table_column` VALUES (905, 52, 'sex', '性别', 'varchar(255)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-12-08 10:59:30', '', '2023-12-13 14:49:22');
INSERT INTO `gen_table_column` VALUES (906, 53, 'delivery_id', '送货单id', 'int(11)', 'Long', 'deliveryId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (907, 53, 'product_info', '产品信息', 'varchar(255)', 'String', 'productInfo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (908, 53, 'product_specifications', '产品规格', 'varchar(255)', 'String', 'productSpecifications', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (909, 53, 'required_quantity', '需求数量', 'int(11)', 'Long', 'requiredQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (910, 53, 'unit', '单位', 'varchar(10)', 'String', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (911, 53, 'remaining_delivery_quantity', '剩余送货数量', 'int(11)', 'Long', 'remainingDeliveryQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (912, 53, 'current_delivery_quantity', '本次送货数量', 'int(11)', 'Long', 'currentDeliveryQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (913, 53, 'remarks', '注释', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (914, 53, 'source_order_number', '来源单号', 'varchar(50)', 'String', 'sourceOrderNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-08 14:53:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (915, 54, 'product_id', '产品id', 'int(11)', 'Long', 'productId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-08 14:53:37', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (916, 54, 'product_name', '产品名称', 'varchar(255)', 'String', 'productName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-12-08 14:53:38', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (917, 54, 'product_code', '产品编码', 'varchar(20)', 'String', 'productCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-08 14:53:38', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (918, 54, 'specifications', '产品规格', 'varchar(255)', 'String', 'specifications', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-08 14:53:38', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (919, 54, 'unit', '单位', 'varchar(50)', 'String', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-08 14:53:38', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (920, 54, 'price', '价格', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-08 14:53:38', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (921, 54, 'tax_rate', '税率', 'decimal(5,2)', 'BigDecimal', 'taxRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-08 14:53:38', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (922, 49, 'delivery_id', '产品订单明细', 'int(18)', 'Long', 'deliveryId', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 20, '', '2023-12-08 14:55:54', '', '2023-12-12 21:37:36');
INSERT INTO `gen_table_column` VALUES (923, 49, 'order_delivery_code', '送货单号', 'varchar(255)', 'String', 'orderDeliveryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-08 14:59:40', '', '2023-12-12 21:37:34');
INSERT INTO `gen_table_column` VALUES (924, 47, 'purchasing_code', '采购订单号', 'varchar(255)', 'String', 'purchasingCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (925, 47, 'project_related_contracts', '项目相关合同', 'varchar(255)', 'Long', 'projectRelatedContracts', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'project_related_contracts', 5, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (926, 47, 'applicant', '申请人', 'varchar(255)', 'String', 'applicant', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (927, 47, 'application_date', '申请日期', 'datetime', 'Date', 'applicationDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (928, 47, 'department_id', '申请部门', 'bigint(20)', 'Long', 'departmentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (929, 47, 'companies_id', '申请公司', 'bigint(20)', 'Long', 'companiesId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (930, 47, 'is_main_contract', '是否主子合同', 'bigint(20)', 'Long', 'isMainContract', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'is_main_contract', 11, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:42');
INSERT INTO `gen_table_column` VALUES (931, 47, 'related_main_contract', '关联主合同', 'varchar(255)', 'String', 'relatedMainContract', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (932, 47, 'budget_related_contracts', '预算相关合同', 'varchar(255)', 'String', 'budgetRelatedContracts', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'total_project_budget', 13, '', '2023-12-08 15:32:22', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (933, 47, 'cost_center', '成本中心', 'varchar(255)', 'String', 'costCenter', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:43');
INSERT INTO `gen_table_column` VALUES (934, 47, 'sd_id', '供应商', 'bigint(20)', 'Long', 'sdId', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 20, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (935, 47, 'total_project_budget', '项目总预算', 'decimal(10,2)', 'Integer', 'totalProjectBudget', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'total_project_budget', 21, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (936, 47, 'project_available_budget', '项目可用预算', 'bigint(20)', 'Long', 'projectAvailableBudget', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (937, 47, 'contract_type', '类型', 'bigint(20)', 'Long', 'contractType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 23, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (938, 47, 'dense', '密集', 'varchar(255)', 'Integer', 'dense', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'dense', 24, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (939, 47, 'begin_time', '开始时间', 'datetime', 'Date', 'beginTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 25, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (940, 47, 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 26, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (941, 47, 'contract_price', '合同金额', 'decimal(10,2)', 'BigDecimal', 'contractPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (942, 47, 'capitalization', '大写', 'varchar(255)', 'String', 'capitalization', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:44');
INSERT INTO `gen_table_column` VALUES (943, 47, 'stamp_duty_amount', '印花税金额', 'varchar(255)', 'String', 'stampDutyAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:45');
INSERT INTO `gen_table_column` VALUES (944, 47, 'contract_description', '合同情况说明', 'varchar(255)', 'String', 'contractDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:45');
INSERT INTO `gen_table_column` VALUES (947, 47, 'purchasing_list', '采购清单', 'varchar(255)', 'String', 'purchasingList', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, '', '2023-12-08 15:32:23', '', '2023-12-18 15:06:45');
INSERT INTO `gen_table_column` VALUES (948, 55, 'supplier_material_id', '供应商物料id', 'bigint(11)', 'Long', 'supplierMaterialId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-11 11:28:13', '', '2023-12-20 17:39:44');
INSERT INTO `gen_table_column` VALUES (951, 55, 'manufacturer', '生产厂家', 'bigint(11)', 'Long', 'manufacturer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-11 11:28:14', '', '2023-12-20 17:39:45');
INSERT INTO `gen_table_column` VALUES (952, 55, 'supply_capacity', '供货能力评级', 'varchar(255)', 'String', 'supplyCapacity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-11 11:28:14', '', '2023-12-20 17:39:45');
INSERT INTO `gen_table_column` VALUES (953, 55, 'notes', '备注', 'varchar(255)', 'String', 'notes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-11 11:28:14', '', '2023-12-20 17:39:45');
INSERT INTO `gen_table_column` VALUES (954, 55, 'upload', '文件上传', 'varchar(255)', 'String', 'upload', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-11 11:28:14', '', '2023-12-20 17:39:45');
INSERT INTO `gen_table_column` VALUES (955, 55, 'supply_id', '供货id', 'bigint(11)', 'Long', 'supplyId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-12-11 11:44:00', '', '2023-12-20 17:39:44');
INSERT INTO `gen_table_column` VALUES (956, 55, 'material_code', '物料编码', 'varchar(255)', 'String', 'materialCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-12 09:28:10', '', '2023-12-20 17:39:44');
INSERT INTO `gen_table_column` VALUES (957, 29, 'delivery_num_note', '发货单号', 'varchar(255)', 'String', 'deliveryNumNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, '', '2023-12-13 10:51:16', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (958, 29, 'shipment_quantity', '发货数量', 'decimal(8,2)', 'BigDecimal', 'shipmentQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, '', '2023-12-13 10:51:16', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (959, 29, 'rejected_quantity', '拒收数量', 'decimal(8,2)', 'BigDecimal', 'rejectedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, '', '2023-12-13 10:51:16', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (960, 29, 'rejected_info', '拒收原因', 'varchar(255)', 'String', 'rejectedInfo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, '', '2023-12-13 10:51:16', '', '2023-12-13 15:33:06');
INSERT INTO `gen_table_column` VALUES (962, 29, 'line_number', '行号', 'int(30)', 'Long', 'lineNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-13 15:33:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (963, 56, 'id', '自增ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:24');
INSERT INTO `gen_table_column` VALUES (964, 56, 'orderCode', '订单编号', 'varchar(20)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:24');
INSERT INTO `gen_table_column` VALUES (965, 56, 'orderStatus', '订单执行状态', 'varchar(20)', 'String', 'orderStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'om_state', 5, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (966, 56, 'totalDemand', '总需求量', 'decimal(10,2)', 'BigDecimal', 'totalDemand', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (967, 56, 'deliveryQuantity', '发货数量', 'decimal(10,2)', 'BigDecimal', 'deliveryQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (968, 56, 'receivedQuantity', '已收货数量', 'decimal(10,2)', 'BigDecimal', 'receivedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (969, 56, 'inStockQuantity', '库存数量', 'decimal(10,2)', 'BigDecimal', 'inStockQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (970, 56, 'taxTotal', '税后总金额', 'decimal(10,2)', 'BigDecimal', 'taxTotal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (971, 56, 'receivedAmount', '已收款金额', 'decimal(10,2)', 'BigDecimal', 'receivedAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-13 20:14:20', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (972, 56, 'awaitingDeliveryQuantity', '待发货数量', 'decimal(10,2)', 'BigDecimal', 'awaitingDeliveryQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (973, 56, 'awaitingDeliveryAmount', '待发货金额', 'decimal(10,2)', 'BigDecimal', 'awaitingDeliveryAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (974, 56, 'orderLineNo', '订单行号', 'varchar(20)', 'String', 'orderLineNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (975, 56, 'materialCode', '物料编码', 'varchar(20)', 'String', 'materialCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (976, 56, 'materialName', '物料名称', 'varchar(50)', 'String', 'materialName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 16, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (977, 56, 'materialUnit', '物料单位', 'varchar(10)', 'String', 'materialUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (978, 56, 'requiredQuantity', '需求数量', 'decimal(10,2)', 'BigDecimal', 'requiredQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (979, 56, 'requiredDate', '需求日期', 'date', 'Date', 'requiredDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 19, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (980, 56, 'deliveryNoteNo', '发货单号', 'varchar(20)', 'String', 'deliveryNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (981, 56, 'deliveryNoteLineNo', '发货单行号', 'varchar(20)', 'String', 'deliveryNoteLineNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (982, 56, 'deliveredQuantity', '已发货数量', 'decimal(10,2)', 'BigDecimal', 'deliveredQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:26');
INSERT INTO `gen_table_column` VALUES (983, 56, 'supplier', '供应商', 'varchar(50)', 'String', 'supplier', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (984, 56, 'deliveryDate', '交货日期', 'date', 'Date', 'deliveryDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 26, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (985, 56, 'receiptNoteNo', '收货单号', 'varchar(20)', 'String', 'receiptNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (986, 56, 'receiptNoteLineNo', '收货单行号', 'varchar(20)', 'String', 'receiptNoteLineNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (987, 56, 'rejectedQuantity', '拒收数量', 'decimal(10,2)', 'BigDecimal', 'rejectedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2023-12-13 20:14:21', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (988, 56, 'receiveQuantity', '已收货数量（第二列）', 'decimal(10,2)', 'BigDecimal', 'receiveQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (989, 56, 'receiver', '收货人', 'varchar(50)', 'String', 'receiver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (990, 56, 'receivedDate', '收货日期', 'date', 'Date', 'receivedDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 32, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (991, 56, 'stockInNoteNo', '入库单号', 'varchar(20)', 'String', 'stockInNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (992, 56, 'stockInNoteLineNo', '入库单行号', 'varchar(20)', 'String', 'stockInNoteLineNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (993, 56, 'returnedQuantity', '退回数量', 'decimal(10,2)', 'BigDecimal', 'returnedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (994, 56, 'stockInQuantity', '入库数量', 'decimal(10,2)', 'BigDecimal', 'stockInQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 37, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (995, 56, 'stockInPerson', '入库人员', 'varchar(50)', 'String', 'stockInPerson', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 38, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (996, 56, 'stockInDate', '入库日期', 'date', 'Date', 'stockInDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 39, 'admin', '2023-12-13 20:14:22', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (997, 54, 'number', '数量', 'decimal(20,2)', 'BigDecimal', 'number', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-12-14 17:01:28', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (998, 54, 'subtotal', '小计', 'decimal(20,2)', 'BigDecimal', 'subtotal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '', '2023-12-14 17:01:28', '', '2023-12-14 17:01:40');
INSERT INTO `gen_table_column` VALUES (999, 57, 'soi_id', '考察id', 'bigint(11)', 'Long', 'soiId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:20');
INSERT INTO `gen_table_column` VALUES (1000, 57, 'soi_title', '考察标题', 'varchar(255)', 'String', 'soiTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:20');
INSERT INTO `gen_table_column` VALUES (1001, 57, 'soi_type', '考察类型', 'bigint(11)', 'Long', 'soiType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'inspection_type', 4, 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:20');
INSERT INTO `gen_table_column` VALUES (1002, 57, 'company', '公司', 'varchar(255)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:20');
INSERT INTO `gen_table_column` VALUES (1003, 57, 'inspection_date_from', '考察日期从', 'datetime', 'Date', 'inspectionDateFrom', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:20');
INSERT INTO `gen_table_column` VALUES (1004, 57, 'inspection_date_to', '考察日期至', 'datetime', 'Date', 'inspectionDateTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-12-15 11:02:58', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1005, 57, 'scoring_method', '评分方式', 'bigint(11)', 'Long', 'scoringMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'scoring_method', 8, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1006, 57, 'supplier_contact', '供应商联系人', 'varchar(30)', 'String', 'supplierContact', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1007, 57, 'supplier_contact_phone', '供应商联系电话', 'varchar(255)', 'String', 'supplierContactPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1008, 57, 'supplier_contact_email', '供应商联系邮箱', 'varchar(255)', 'String', 'supplierContactEmail', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1009, 57, 'actual_address', '实际考察地址', 'varchar(255)', 'String', 'actualAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1010, 57, 'inspection_results', '考察结果', 'bigint(11)', 'Long', 'inspectionResults', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'inspection_results', 14, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1011, 57, 'final_score', '最终得分', 'decimal(10,2)', 'BigDecimal', 'finalScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1012, 57, 'level', '等级', 'bigint(11)', 'Long', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-12-15 11:02:59', '', '2023-12-18 14:14:22');
INSERT INTO `gen_table_column` VALUES (1013, 57, 'comprehensive_opinions', '综合意见', 'varchar(255)', 'String', 'comprehensiveOpinions', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-12-15 11:03:00', '', '2023-12-18 14:14:22');
INSERT INTO `gen_table_column` VALUES (1014, 57, 'applicant', '申请人', 'varchar(255)', 'String', 'applicant', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-12-15 11:03:00', '', '2023-12-18 14:14:22');
INSERT INTO `gen_table_column` VALUES (1015, 55, 'category_code', '品类编码', 'varchar(255)', 'String', 'categoryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-12-15 11:18:09', '', '2023-12-20 17:39:44');
INSERT INTO `gen_table_column` VALUES (1016, 55, 'soi_id', '考察id', 'int(11)', 'Long', 'soiId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2023-12-15 11:18:09', '', '2023-12-20 17:39:45');
INSERT INTO `gen_table_column` VALUES (1018, 57, 'examine', '审批状态', 'int(11)', 'Long', 'examine', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'examine_status', 19, '', '2023-12-15 14:20:53', '', '2023-12-18 14:14:22');
INSERT INTO `gen_table_column` VALUES (1019, 58, 'statement_account_id', '对账单id', 'bigint(11)', 'Long', 'statementAccountId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-18 09:31:29', '', '2023-12-18 10:42:26');
INSERT INTO `gen_table_column` VALUES (1020, 58, 'company', '公司', 'bigint(11)', 'Long', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-18 09:31:29', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1021, 58, 'supplier', '供应商名称', 'bigint(11)', 'Long', 'supplier', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-18 09:31:30', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1022, 58, 'total_account', '对账总数量', 'decimal(10,2)', 'BigDecimal', 'totalAccount', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 4, 'admin', '2023-12-18 09:31:30', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1023, 58, 'actual_tax', '实对含税金额', 'decimal(10,2)', 'BigDecimal', 'actualTax', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-12-18 09:31:30', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1024, 58, 'not_actual_tax', '实对不含税金额', 'decimal(10,2)', 'BigDecimal', 'notActualTax', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-12-18 09:31:30', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1025, 58, 'actual_tax_amount', '实对税额', 'decimal(10,2)', 'BigDecimal', 'actualTaxAmount', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 7, 'admin', '2023-12-18 09:31:30', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1026, 58, 'adjustment_amount', '调整金额', 'decimal(10,2)', 'BigDecimal', 'adjustmentAmount', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 8, 'admin', '2023-12-18 09:31:31', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1027, 58, 'generate_reconciliation_date', '生成对账日期', 'datetime', 'Date', 'generateReconciliationDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2023-12-18 09:31:31', '', '2023-12-18 10:42:27');
INSERT INTO `gen_table_column` VALUES (1028, 58, 'reconciler', '对账人', 'bigint(11)', 'Long', 'reconciler', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-12-18 09:31:31', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1029, 58, 'currency_id', '币种', 'bigint(11)', 'Long', 'currencyId', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 11, 'admin', '2023-12-18 09:31:31', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1030, 58, 'notes', '采购对账单备注', 'varchar(255)', 'String', 'notes', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 12, 'admin', '2023-12-18 09:31:31', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1031, 58, 'annex', '附件', 'bigint(11)', 'Long', 'annex', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 13, 'admin', '2023-12-18 09:31:31', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1032, 58, 'statement_id', '对账明细id', 'bigint(11)', 'Long', 'statementId', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 14, 'admin', '2023-12-18 09:31:32', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1033, 58, 'receive_code', '收货编号', 'varchar(255)', 'String', 'receiveCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-18 09:31:32', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1034, 58, 'order_code', '采购订单编号', 'varchar(255)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-12-18 09:31:32', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1035, 58, 'statement_account_code', '对账单号', 'varchar(255)', 'String', 'statementAccountCode', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 17, 'admin', '2023-12-18 09:31:32', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1036, 58, 'status', '状态', 'bigint(11)', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', '', 18, 'admin', '2023-12-18 09:31:32', '', '2023-12-18 10:42:28');
INSERT INTO `gen_table_column` VALUES (1037, 58, 'statement_account_state_id', '对账类型id', 'bigint(11)', 'Long', 'statementAccountStateId', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 19, 'admin', '2023-12-18 09:31:32', '', '2023-12-18 10:42:29');
INSERT INTO `gen_table_column` VALUES (1057, 57, 'sd_name', '供应商名称', 'varchar(255)', 'String', 'sdName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, '', '2023-12-18 09:32:14', '', '2023-12-18 14:14:21');
INSERT INTO `gen_table_column` VALUES (1058, 58, 'material_name', '物料名称', 'bigint(20)', 'Long', 'materialName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 20, '', '2023-12-18 09:40:14', '', '2023-12-18 10:42:29');
INSERT INTO `gen_table_column` VALUES (1059, 58, 'consignee', '收货人', 'varchar(255)', 'String', 'consignee', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, '', '2023-12-18 09:42:55', '', '2023-12-18 10:42:29');
INSERT INTO `gen_table_column` VALUES (1060, 60, 'execution_id', '签署执行状态Id', 'bigint(20)', 'Long', 'executionId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-18 10:41:49', '', '2023-12-18 14:19:52');
INSERT INTO `gen_table_column` VALUES (1061, 60, 'signatories', '签署方数', 'bigint(20)', 'Long', 'signatories', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'signatories', 2, 'admin', '2023-12-18 10:41:49', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1062, 60, 'our_entity', '我方主体', 'varchar(255)', 'String', 'ourEntity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1063, 60, 'supplier_b', '乙方供应商', 'bigint(20)', 'Long', 'supplierB', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1064, 60, 'person_b', '乙方联系人', 'varchar(255)', 'String', 'personB', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1065, 60, 'phone_b', '乙方联系方式', 'varchar(255)', 'String', 'phoneB', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1066, 60, 'bank_b', '乙方开户行', 'varchar(255)', 'String', 'bankB', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1067, 60, 'account_opening_b', '乙方开户行账号', 'varchar(255)', 'String', 'accountOpeningB', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:53');
INSERT INTO `gen_table_column` VALUES (1068, 60, 'contract_amount', '合同方金额', 'decimal(30,2)', 'BigDecimal', 'contractAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:54');
INSERT INTO `gen_table_column` VALUES (1069, 60, 'currencyName', '币别', 'varchar(255)', 'String', 'currencyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:54');
INSERT INTO `gen_table_column` VALUES (1070, 60, 'paid_amount', '已支付金额', 'decimal(30,2)', 'BigDecimal', 'paidAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-18 10:41:50', '', '2023-12-18 14:19:54');
INSERT INTO `gen_table_column` VALUES (1071, 60, 'lock_in_amount', '锁定金额', 'decimal(30,2)', 'BigDecimal', 'lockInAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-18 10:41:51', '', '2023-12-18 14:19:54');
INSERT INTO `gen_table_column` VALUES (1072, 60, 'remaining_amount', '剩余金额', 'decimal(30,2)', 'BigDecimal', 'remainingAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-18 10:41:51', '', '2023-12-18 14:19:54');
INSERT INTO `gen_table_column` VALUES (1073, 60, 'contract_management_id', '合同Id', 'bigint(20)', 'Long', 'contractManagementId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2023-12-18 10:43:13', '', '2023-12-18 14:19:54');
INSERT INTO `gen_table_column` VALUES (1074, 57, 'soi_code', '考察编码', 'varchar(255)', 'String', 'soiCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-18 14:14:08', '', '2023-12-18 14:14:20');
INSERT INTO `gen_table_column` VALUES (1075, 61, 'questionnaire_id', '调查id', 'bigint(11)', 'Long', 'questionnaireId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:29');
INSERT INTO `gen_table_column` VALUES (1076, 61, 'questionnaire_title', '调查标题', 'varchar(255)', 'String', 'questionnaireTitle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1077, 61, 'questionnaire_state', '调查状态', 'bigint(11)', 'Long', 'questionnaireState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'investigation_status', 4, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1078, 61, 'questionnaire_type', '调查类型', 'bigint(11)', 'Long', 'questionnaireType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'questionnaire_type', 5, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1079, 61, 'company', '公司', 'varchar(255)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1080, 61, 'survey_classification', '调查分类', 'bigint(11)', 'Long', 'surveyClassification', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'survey_classification', 7, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1081, 61, 'supplier_contact', '供应商联系人', 'varchar(255)', 'String', 'supplierContact', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1082, 61, 'supplier_supplier_contact_information', '供应商联系方式', 'varchar(255)', 'String', 'supplierSupplierContactInformation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-18 15:26:04', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1083, 61, 'supplier_contact_email', '供应商联系邮箱', 'varchar(255)', 'String', 'supplierContactEmail', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-18 15:26:05', '', '2023-12-19 15:18:31');
INSERT INTO `gen_table_column` VALUES (1084, 61, 'survey_response_time', '调查回复时间', 'datetime', 'Date', 'surveyResponseTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2023-12-18 15:26:05', '', '2023-12-19 15:18:31');
INSERT INTO `gen_table_column` VALUES (1085, 61, 'survey_description', '采方调查说明', 'varchar(255)', 'String', 'surveyDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-18 15:26:05', '', '2023-12-19 15:18:31');
INSERT INTO `gen_table_column` VALUES (1086, 61, 'questionnaire_code', '调查编码', 'varchar(255)', 'String', 'questionnaireCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-18 15:27:10', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1087, 61, 'supplier_name', '供应商名称', 'varchar(255)', 'String', 'supplierName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, '', '2023-12-18 17:25:19', '', '2023-12-19 15:18:30');
INSERT INTO `gen_table_column` VALUES (1088, 61, 'status', '状态', 'int(11)', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 14, '', '2023-12-18 17:25:19', '', '2023-12-19 15:18:31');
INSERT INTO `gen_table_column` VALUES (1090, 62, 'enterprise_id', '企业id', 'bigint(20)', 'Long', 'enterpriseId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:11');
INSERT INTO `gen_table_column` VALUES (1091, 62, 'chairman', '董事长', 'varchar(255)', 'String', 'chairman', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:11');
INSERT INTO `gen_table_column` VALUES (1092, 62, 'president', '总经理', 'varchar(255)', 'String', 'president', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:11');
INSERT INTO `gen_table_column` VALUES (1093, 62, 'listed', '是否上市', 'bigint(20)', 'Long', 'listed', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_yes_no', 4, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:11');
INSERT INTO `gen_table_column` VALUES (1094, 62, 'stock_code', '股票代码', 'varchar(255)', 'String', 'stockCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:11');
INSERT INTO `gen_table_column` VALUES (1095, 62, 'attachment', '股权结构附件', 'varchar(255)', 'String', 'attachment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1096, 62, 'industry_ranking', '行业排名', 'bigint(20)', 'Long', 'industryRanking', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-18 17:28:18', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1097, 62, 'cooperate_with', '是否愿意配合审计', 'bigint(20)', 'Long', 'cooperateWith', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'sys_yes_no', 8, 'admin', '2023-12-18 17:28:19', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1098, 62, 'number_of_employees', '公司员工数量', 'bigint(20)', 'Long', 'numberOfEmployees', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-18 17:28:19', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1099, 62, 'administrative_number', '管理人员数量', 'bigint(20)', 'Long', 'administrativeNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-18 17:28:19', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1100, 62, 'Structure', '组织架构附件', 'varchar(255)', 'String', 'Structure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-18 17:28:19', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1101, 62, 'major_competitors', '经主要竞争对手营范围', 'varchar(255)', 'String', 'majorCompetitors', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-18 17:28:19', '', '2023-12-19 15:18:12');
INSERT INTO `gen_table_column` VALUES (1102, 62, 'business_scope', '经营范围', 'varchar(255)', 'String', 'businessScope', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-18 17:28:19', '', '2023-12-19 15:18:13');
INSERT INTO `gen_table_column` VALUES (1103, 56, 'deliveredAmount', '已发货金额', 'decimal(10,2)', 'BigDecimal', 'deliveredAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, '', '2023-12-18 18:56:09', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (1104, 56, 'create_time', '创建日期', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 40, '', '2023-12-18 18:56:09', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (1105, 62, 'questionnaire_id', '调查表id', 'bigint(11)', 'Long', 'questionnaireId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2023-12-19 09:15:52', '', '2023-12-19 15:18:13');
INSERT INTO `gen_table_column` VALUES (1106, 56, 'order_handle', '订单处理状态', 'int(11)', 'Long', 'orderHandle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'order_handle', 3, '', '2023-12-19 14:25:22', '', '2023-12-26 10:00:24');
INSERT INTO `gen_table_column` VALUES (1107, 56, 'order_quanlity', '质检状态', 'int(11)', 'Long', 'orderQuanlity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'order_quanlity', 4, '', '2023-12-19 14:25:22', '', '2023-12-26 10:00:25');
INSERT INTO `gen_table_column` VALUES (1108, 56, 'stockInAmount', '入库金额', 'decimal(10,2)', 'BigDecimal', 'stockInAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 36, '', '2023-12-19 14:50:32', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (1109, 63, 'receipt_id', '收货单Id', 'bigint(20)', 'Long', 'receiptId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:58:59');
INSERT INTO `gen_table_column` VALUES (1110, 63, 'receipt_code', '收货单号', 'varchar(255)', 'String', 'receiptCode', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 2, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1112, 63, 'receipt_name', '收货人', 'bigint(20)', 'Long', 'receiptName', '0', '0', NULL, '1', '1', '0', '0', 'LIKE', 'input', '', 3, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1113, 63, 'recepit_number', '收货总数量', 'decimal(10,2)', 'BigDecimal', 'recepitNumber', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 4, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1114, 63, 'recepit_amount_tax', '收货含税金额', 'decimal(10,2)', 'BigDecimal', 'recepitAmountTax', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 5, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1115, 63, 'receipt_remarks', '收货备注', 'varchar(255)', 'String', 'receiptRemarks', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1116, 63, 'annex', '附件', 'bigint(20)', 'Long', 'annex', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 7, 'admin', '2023-12-19 21:45:58', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1117, 63, 'inspector', '质检人', 'varchar(255)', 'String', 'inspector', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 8, 'admin', '2023-12-19 21:45:59', '', '2023-12-20 10:59:00');
INSERT INTO `gen_table_column` VALUES (1118, 63, 'supplier', '供应商名称', 'varchar(50)', 'String', 'supplier', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 9, 'admin', '2023-12-19 21:45:59', '', '2023-12-20 10:59:01');
INSERT INTO `gen_table_column` VALUES (1119, 63, 'receipt_concat', '联系人', 'varchar(255)', 'String', 'receiptConcat', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 10, 'admin', '2023-12-19 21:45:59', '', '2023-12-20 10:59:01');
INSERT INTO `gen_table_column` VALUES (1120, 63, 'receipt_phone', '联系电话', 'varchar(255)', 'String', 'receiptPhone', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'input', '', 11, 'admin', '2023-12-19 21:45:59', '', '2023-12-20 10:59:01');
INSERT INTO `gen_table_column` VALUES (1121, 63, 'receipt_state', '收货状态', 'bigint(20)', 'Long', 'receiptState', '0', '0', NULL, '1', '1', '0', '0', 'EQ', 'select', 'delivery_state', 12, 'admin', '2023-12-19 21:45:59', '', '2023-12-20 10:59:01');
INSERT INTO `gen_table_column` VALUES (1124, 64, 'id', '主键，自增ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-20 10:57:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (1125, 64, 'serial_number', '序号', 'int(11)', 'Long', 'serialNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-20 10:57:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (1126, 64, 'order_code', '订单号', 'varchar(255)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-20 10:57:40', '', NULL);
INSERT INTO `gen_table_column` VALUES (1127, 64, 'deliveryNoteNo', '发货单号', 'varchar(255)', 'String', 'deliveryNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1128, 64, 'or_code', '物料编号', 'varchar(255)', 'String', 'orCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1129, 64, 'or_name', '物料名称', 'varchar(255)', 'String', 'orName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1130, 64, 'material_category', '物料分类', 'varchar(255)', 'String', 'materialCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1131, 64, 'material_specification', '物料规格', 'varchar(255)', 'String', 'materialSpecification', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1132, 64, 'material_unit', '物料单位', 'varchar(255)', 'String', 'materialUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1133, 64, 'require_number', '需求数量', 'decimal(10,2)', 'BigDecimal', 'requireNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1134, 64, 'require_time', '需求日期', 'datetime', 'Date', 'requireTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2023-12-20 10:57:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (1135, 64, 'deliveryQuantity', '发货数量', 'decimal(10,2)', 'BigDecimal', 'deliveryQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1136, 64, 'rejected_quantity', '拒收数量', 'decimal(10,2)', 'BigDecimal', 'rejectedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1137, 64, 'rejection_reason', '拒收原因', 'varchar(255)', 'String', 'rejectionReason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1138, 64, 'received_quantity', '收货数量', 'decimal(11,0)', 'Long', 'receivedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1139, 64, 'no_tax_price', '不含税单价（元）', 'decimal(10,2)', 'BigDecimal', 'noTaxPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1140, 64, 'tax_code', '税率', 'varchar(50)', 'String', 'taxCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1141, 64, 'tax', '税率值（%）', 'decimal(5,2)', 'BigDecimal', 'tax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1142, 64, 'tax_price', '含税单价', 'decimal(10,2)', 'BigDecimal', 'taxPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-12-20 10:57:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (1143, 64, 'receiver', '收货人', 'varchar(255)', 'String', 'receiver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-12-20 10:57:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (1144, 64, 'recipient_phone', '收货电话', 'varchar(255)', 'String', 'recipientPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2023-12-20 10:57:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (1145, 64, 'warehouse', '库房', 'varchar(255)', 'String', 'warehouse', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2023-12-20 10:57:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (1146, 64, 'exempt_from_supply_capacity_check', '供货能力免检', 'int(11)', 'Long', 'exemptFromSupplyCapacityCheck', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2023-12-20 10:57:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (1147, 64, 'exempt_from_material_inspection', '物料免检', 'int(11)', 'Long', 'exemptFromMaterialInspection', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2023-12-20 10:57:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (1148, 64, 'note', '备注', 'text', 'String', 'note', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 25, 'admin', '2023-12-20 10:57:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (1149, 56, 'company', '公司', 'varchar(50)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, '', '2023-12-20 11:02:55', '', '2023-12-26 10:00:27');
INSERT INTO `gen_table_column` VALUES (1150, 56, 'reconciliation_status', '业务对账状态', 'bigint(11)', 'Long', 'reconciliationStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'reconciliation_status', 41, '', '2023-12-20 11:02:55', '', '2023-12-26 10:00:28');
INSERT INTO `gen_table_column` VALUES (1151, 55, 'sample_id', '送样id', 'bigint(11)', 'Long', 'sampleId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-12-20 17:39:45', '', NULL);
INSERT INTO `gen_table_column` VALUES (1152, 65, 'sample_id', '送样单号', 'bigint(11)', 'Long', 'sampleId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-20 17:46:41', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1153, 65, 'sample_code', '送样编号', 'varchar(255)', 'String', 'sampleCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-20 17:46:41', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1154, 65, 'sample_name', '送样单标题', 'varchar(255)', 'String', 'sampleName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-12-20 17:46:41', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1155, 65, 'company', '公司', 'varchar(255)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1156, 65, 'purchasing', '采购组织', 'varchar(255)', 'String', 'purchasing', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1157, 65, 'purchasing_by', '采购员', 'varchar(255)', 'String', 'purchasingBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1158, 65, 'sample_type', '送样类型', 'bigint(11)', 'Long', 'sampleType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sample_type', 7, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1159, 65, 'state', '状态', 'bigint(11)', 'Long', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sample_delivery_status', 8, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1160, 65, 'acquirer_attachments', '采方附件', 'varchar(255)', 'String', 'acquirerAttachments', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1161, 65, 'sample_delivery_note', '送样单说明', 'varchar(255)', 'String', 'sampleDeliveryNote', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1162, 65, 'release_time', '发布时间', 'datetime', 'Date', 'releaseTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1163, 65, 'current_operator', '当前操作人', 'varchar(255)', 'String', 'currentOperator', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1164, 65, 'contacts', '联系人', 'varchar(255)', 'String', 'contacts', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1165, 65, 'telephone', '联系电话', 'varchar(255)', 'String', 'telephone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-20 17:46:42', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1166, 65, 'sbi_name', '供应商名称', 'varchar(255)', 'String', 'sbiName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, '', '2023-12-21 10:52:27', '', '2023-12-21 14:23:30');
INSERT INTO `gen_table_column` VALUES (1167, 66, 'executionc_id', '签署执行状态Id', 'bigint(20)', 'Long', 'executioncId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59');
INSERT INTO `gen_table_column` VALUES (1168, 66, 'supplier_c', '丙方供应商', 'bigint(20)', 'Long', 'supplierC', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59');
INSERT INTO `gen_table_column` VALUES (1169, 66, 'person_c', '丙方联系人', 'varchar(255)', 'String', 'personC', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59');
INSERT INTO `gen_table_column` VALUES (1170, 66, 'phone_c', '丙方联系方式', 'varchar(255)', 'String', 'phoneC', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59');
INSERT INTO `gen_table_column` VALUES (1171, 66, 'bank_c', '丙方开户行', 'varchar(255)', 'String', 'bankC', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59');
INSERT INTO `gen_table_column` VALUES (1172, 66, 'account_opening_c', '丙方开户行账号', 'varchar(255)', 'String', 'accountOpeningC', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:32:59');
INSERT INTO `gen_table_column` VALUES (1173, 66, 'contract_amount', '合同方金额', 'decimal(30,2)', 'BigDecimal', 'contractAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-21 14:31:53', '', '2023-12-21 14:33:00');
INSERT INTO `gen_table_column` VALUES (1174, 66, 'currencyName', '币别', 'varchar(255)', 'String', 'currencyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2023-12-21 14:31:54', '', '2023-12-21 14:33:00');
INSERT INTO `gen_table_column` VALUES (1175, 66, 'paid_amount', '已支付金额', 'decimal(30,2)', 'BigDecimal', 'paidAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-21 14:31:54', '', '2023-12-21 14:33:00');
INSERT INTO `gen_table_column` VALUES (1176, 66, 'lock_in_amount', '锁定金额', 'decimal(30,2)', 'BigDecimal', 'lockInAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-21 14:31:54', '', '2023-12-21 14:33:00');
INSERT INTO `gen_table_column` VALUES (1177, 66, 'remaining_amount', '剩余金额', 'decimal(30,2)', 'BigDecimal', 'remainingAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-21 14:31:54', '', '2023-12-21 14:33:00');
INSERT INTO `gen_table_column` VALUES (1178, 66, 'contract_management_id', '合同Id', 'bigint(20)', 'Long', 'contractManagementId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-21 14:31:54', '', '2023-12-21 14:33:00');
INSERT INTO `gen_table_column` VALUES (1179, 67, 'quality_id', '质检单Id', 'bigint(11)', 'Long', 'qualityId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-21 17:14:09', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1180, 67, 'orderCode', '采购订单编号', 'varchar(255)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1181, 67, 'quality_code', '质检编号', 'varchar(255)', 'String', 'qualityCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1182, 67, 'receiptNoteNo', '收货编号', 'varchar(255)', 'String', 'receiptNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1183, 67, 'deliveryNoteNo', '发货单号', 'varchar(255)', 'String', 'deliveryNoteNo', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1184, 67, 'founder', '创建人', 'bigint(11)', 'Long', 'founder', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1185, 67, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1186, 67, 'receivedDate', '到货日期', 'datetime', 'Date', 'receivedDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1187, 67, 'quality_date', '检验日期', 'datetime', 'Date', 'qualityDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1188, 67, 'inspect_order_type', '检验单类型', 'bigint(11)', 'Long', 'inspectOrderType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'inspect_order_type', 10, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1189, 67, 'supplier', '供应商名称', 'varchar(255)', 'String', 'supplier', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-12-21 17:14:10', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1190, 67, 'or_code', '物料编号', 'varchar(255)', 'String', 'orCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1191, 67, 'or_name', '物料名称', 'varchar(255)', 'String', 'orName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1192, 67, 'material_unit', '物料单位', 'varchar(255)', 'String', 'materialUnit', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 14, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1193, 67, 'material_category', '物料品类', 'varchar(255)', 'String', 'materialCategory', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:09');
INSERT INTO `gen_table_column` VALUES (1194, 67, 'received_quantity', '收货数量', 'decimal(10,2)', 'BigDecimal', 'receivedQuantity', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 16, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1195, 67, 'inspection_quantity', '送检数量', 'decimal(10,2)', 'BigDecimal', 'inspectionQuantity', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1196, 67, 'quality_type', '质检类型', 'bigint(11)', 'Long', 'qualityType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', '', 18, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1197, 67, 'inspect_type', '检验类型', 'bigint(11)', 'Long', 'inspectType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'inspect_type', 19, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1198, 67, 'inspect_start_date', '检验开始日期', 'datetime', 'Date', 'inspectStartDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 20, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1199, 67, 'inspect_end_date', '检验结束日期', 'datetime', 'Date', 'inspectEndDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 21, 'admin', '2023-12-21 17:14:11', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1200, 67, 'qualified_number', '质检损耗数量', 'decimal(10,2)', 'BigDecimal', 'qualifiedNumber', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 22, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1201, 67, 'inspect_qualified_number', '检验合格数量', 'decimal(10,2)', 'BigDecimal', 'inspectQualifiedNumber', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 23, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1202, 67, 'inspect_non_conforming_number', '检验不合格品数量', 'decimal(10,2)', 'BigDecimal', 'inspectNonConformingNumber', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 24, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1203, 67, 'non_conforming', '不合格品比例', 'varchar(255)', 'String', 'nonConforming', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 25, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1204, 67, 'decection_result_name', '检测结果', 'bigint(255)', 'Long', 'decectionResultName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'select', 'decection_result_name', 26, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1205, 67, 'handling_measures_name', '处理措施', 'bigint(255)', 'Long', 'handlingMeasuresName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'select', 'handling_measures_name', 27, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1206, 67, 'remarks', '说明', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 28, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1207, 67, 'inspecter', '检验员', 'varchar(50)', 'String', 'inspecter', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 29, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1208, 67, 'status', '状态', 'int(11)', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'quality_status', 30, 'admin', '2023-12-21 17:14:12', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1209, 68, 'quality_task_list_id', '质检任务单Id', 'bigint(11)', 'Long', 'qualityTaskListId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:49');
INSERT INTO `gen_table_column` VALUES (1210, 68, 'orderCode', '采购订单编号', 'varchar(255)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:49');
INSERT INTO `gen_table_column` VALUES (1211, 68, 'receiptNoteNo', '收货单号', 'varchar(255)', 'String', 'receiptNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:49');
INSERT INTO `gen_table_column` VALUES (1212, 68, 'or_name', '物料名称', 'varchar(255)', 'String', 'orName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1213, 68, 'or_code', '物料编号', 'varchar(255)', 'String', 'orCode', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1214, 68, 'company', '公司', 'bigint(11)', 'Long', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1215, 68, 'receiveQuantity', '收货数量', 'decimal(10,2)', 'BigDecimal', 'receiveQuantity', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1216, 68, 'receive_date', '收货日期', 'datetime', 'Date', 'receiveDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1217, 68, 'consignee', '收货人', 'varchar(255)', 'String', 'consignee', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-12-21 17:14:13', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1218, 68, 'quality_status', '状态', 'bigint(11)', 'Long', 'qualityStatus', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'quality_status', 10, 'admin', '2023-12-21 17:14:14', '', '2023-12-21 20:04:50');
INSERT INTO `gen_table_column` VALUES (1219, 69, 'attend_id', '参评id', 'bigint(11)', 'Long', 'attendId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-22 14:49:32', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1220, 69, 'supplier_code', '供应商编码', 'bigint(11)', 'String', 'supplierCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-22 14:49:32', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1221, 69, 'category_code', '品类编码', 'bigint(11)', 'Long', 'categoryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-22 14:49:32', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1222, 69, 'category_name', '品类名称', 'varchar(255)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2023-12-22 14:49:32', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1223, 69, 'evaluation_id', '考评id', 'bigint(20)', 'Long', 'evaluationId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-22 14:49:32', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1224, 70, 'evaluation_id', '考评id', 'bigint(20)', 'Long', 'evaluationId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:27');
INSERT INTO `gen_table_column` VALUES (1225, 70, 'evaluation_code', '考评编码', 'bigint(20)', 'String', 'evaluationCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:27');
INSERT INTO `gen_table_column` VALUES (1226, 70, 'evaluation_name', '考评名称', 'varchar(255)', 'String', 'evaluationName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1227, 70, 'evaluation_state', '考评状态', 'bigint(20)', 'Long', 'evaluationState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'assessment_status', 4, 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1228, 70, 'evaluation_template_code', '考评模板编码', 'varchar(255)', 'String', 'evaluationTemplateCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1229, 70, 'evaluation_template_name', '考评模板名称', 'varchar(255)', 'String', 'evaluationTemplateName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2023-12-22 14:49:32', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1230, 70, 'evaluation_method', '考评方式', 'varchar(255)', 'String', 'evaluationMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'evaluation_method', 7, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1231, 70, 'evaluation_head', '考评负责人', 'varchar(255)', 'String', 'evaluationHead', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1232, 70, 'branch', '分部', 'varchar(255)', 'String', 'branch', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1233, 70, 'contacts_department', '部门', 'varchar(255)', 'String', 'contactsDepartment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1234, 70, 'evaluation_cycle', '考评周期', 'varchar(255)', 'String', 'evaluationCycle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'cycle', 11, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1235, 70, 'evaluation_date_from', '考评日期从', 'datetime', 'Date', 'evaluationDateFrom', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1236, 70, 'evaluation_date_to', '考评日期至', 'datetime', 'Date', 'evaluationDateTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1237, 70, 'evaluation_description', '考评说明', 'varchar(255)', 'String', 'evaluationDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1238, 70, 'creation_time', '创建时间', 'datetime', 'Date', 'creationTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 15, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1239, 70, 'assessment_attachment', '考评附件', 'varchar(255)', 'String', 'assessmentAttachment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-12-22 14:49:33', '', '2023-12-27 10:51:28');
INSERT INTO `gen_table_column` VALUES (1242, 71, 'template_state', '模板状态', 'bigint(11)', 'Long', 'templateState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'release', 4, 'admin', '2023-12-22 16:45:33', '', '2023-12-27 10:44:16');
INSERT INTO `gen_table_column` VALUES (1243, 71, 'template_type', '模板类型', 'bigint(11)', 'Long', 'templateType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'template_type', 5, 'admin', '2023-12-22 16:45:33', '', '2023-12-27 10:44:16');
INSERT INTO `gen_table_column` VALUES (1244, 71, 'scoring_template_id', '评分模板id', 'bigint(11)', 'Long', 'scoringTemplateId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, '', '2023-12-22 16:46:49', '', '2023-12-27 10:44:16');
INSERT INTO `gen_table_column` VALUES (1245, 71, 'scoring_template_code', '评分模板编码', 'varchar(255)', 'String', 'scoringTemplateCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-12-22 16:46:49', '', '2023-12-27 10:44:16');
INSERT INTO `gen_table_column` VALUES (1246, 71, 'scoring_template_name', '评分模板名称', 'varchar(255)', 'String', 'scoringTemplateName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '', '2023-12-22 16:46:49', '', '2023-12-27 10:44:16');
INSERT INTO `gen_table_column` VALUES (1247, 69, 'supplier_name', '供应商名称', 'varchar(255)', 'String', 'supplierName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '', '2023-12-22 17:35:03', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1248, 72, 'scoring_details_id', '评分明细id', 'int(11)', 'Long', 'scoringDetailsId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:25');
INSERT INTO `gen_table_column` VALUES (1249, 72, 'supplier_code', '供应商编码', 'varchar(255)', 'String', 'supplierCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:25');
INSERT INTO `gen_table_column` VALUES (1250, 72, 'supplier_name', '供应商名称', 'varchar(255)', 'String', 'supplierName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:25');
INSERT INTO `gen_table_column` VALUES (1251, 72, 'category_code', '品类编码', 'varchar(255)', 'String', 'categoryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:26');
INSERT INTO `gen_table_column` VALUES (1253, 72, 'indicator_description', '指标描述', 'varchar(255)', 'String', 'indicatorDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:26');
INSERT INTO `gen_table_column` VALUES (1254, 72, 'indicator_code', '指标编码', 'varchar(255)', 'String', 'indicatorCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:26');
INSERT INTO `gen_table_column` VALUES (1255, 72, 'scoring_criteria', '评分标准', 'varchar(255)', 'String', 'scoringCriteria', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:26');
INSERT INTO `gen_table_column` VALUES (1256, 72, 'weight', '权重(%)', 'double', 'Long', 'weight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-25 11:47:02', '', '2023-12-27 09:00:26');
INSERT INTO `gen_table_column` VALUES (1257, 72, 'scoring_method', '评分方式', 'varchar(255)', 'String', 'scoringMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1258, 72, 'rater', '评分人', 'varchar(255)', 'String', 'rater', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1259, 72, 'indicator_type', '指标类型', 'varchar(255)', 'String', 'indicatorType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'indicator_type', 12, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1260, 72, 'rating_status', '评分状态', 'varchar(255)', 'String', 'ratingStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'rating_status', 13, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1261, 72, 'score', '得分', 'varchar(255)', 'String', 'score', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1262, 72, 'selectivity', '选择项', 'varchar(255)', 'String', 'selectivity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1263, 72, 'score_from', '分值从', 'varchar(255)', 'String', 'scoreFrom', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:27');
INSERT INTO `gen_table_column` VALUES (1264, 72, 'score_to', '分值至', 'varchar(255)', 'String', 'scoreTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:28');
INSERT INTO `gen_table_column` VALUES (1265, 72, 'feedback', '反馈备注', 'varchar(255)', 'String', 'feedback', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-12-25 11:47:03', '', '2023-12-27 09:00:28');
INSERT INTO `gen_table_column` VALUES (1266, 72, 'evaluation_id', '考评id', 'bigint(11)', 'Long', 'evaluationId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, '', '2023-12-25 11:50:27', '', '2023-12-27 09:00:28');
INSERT INTO `gen_table_column` VALUES (1267, 67, 'inventory', '库存组织', 'varchar(255)', 'String', 'inventory', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'inventory', 31, '', '2023-12-25 14:25:53', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1268, 67, 'company', '公司', 'varchar(255)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 32, '', '2023-12-25 14:31:15', '', '2023-12-25 14:32:10');
INSERT INTO `gen_table_column` VALUES (1269, 73, 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1270, 73, 'orderCode', '订单号', 'varchar(50)', 'String', 'orderCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1271, 73, 'line_number', '行号', 'int(11)', 'Long', 'lineNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1272, 73, 'or_code', '物料编号', 'varchar(50)', 'String', 'orCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273, 73, 'or_name', '物料名称', 'varchar(100)', 'String', 'orName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1274, 73, 'material_category', '物料类别', 'varchar(50)', 'String', 'materialCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1275, 73, 'material_specification', '物料规格', 'varchar(100)', 'String', 'materialSpecification', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1276, 73, 'material_unit', '物料单位', 'varchar(50)', 'String', 'materialUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1277, 73, 'required_quantity', '需求数量', 'decimal(10,2)', 'BigDecimal', 'requiredQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1278, 73, 'delivery_date', '需求日期', 'date', 'Date', 'deliveryDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1279, 73, 'received_quantity', '收货数量', 'decimal(10,2)', 'BigDecimal', 'receivedQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1280, 73, 'handling_measures_name', '质检处理措施', 'varchar(100)', 'String', 'handlingMeasuresName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2023-12-25 20:52:11', '', NULL);
INSERT INTO `gen_table_column` VALUES (1281, 73, 'inspect_qualified_number', '质检合格数量', 'decimal(10,2)', 'BigDecimal', 'inspectQualifiedNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1282, 73, 'stockInQuantity', '入库数量', 'decimal(10,2)', 'BigDecimal', 'stockInQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1283, 73, 'return_exchange_quantity', '退换货数量', 'decimal(10,2)', 'BigDecimal', 'returnExchangeQuantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1284, 73, 'return_exchange_reason', '退换货原因', 'varchar(200)', 'String', 'returnExchangeReason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1285, 73, 'consignee', '收货人', 'varchar(100)', 'String', 'consignee', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1286, 73, 'receiving_phone', '收货人电话号码', 'varchar(20)', 'String', 'receivingPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1287, 73, 'inventory', '库房', 'varchar(100)', 'String', 'inventory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1288, 73, 'remarks', '备注', 'varchar(200)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2023-12-25 20:52:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (1289, 74, 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1290, 74, 'stockInNoteNo', '入库单号', 'varchar(50)', 'String', 'stockInNoteNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1291, 74, 'inbound_date', '入库日期', 'date', 'Date', 'inboundDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 3, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1292, 74, 'stockInPerson', '入库人', 'varchar(100)', 'String', 'stockInPerson', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1293, 74, 'stockInQuantity', '入库总数量', 'decimal(10,2)', 'BigDecimal', 'stockInQuantity', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1294, 74, 'stockInAmount', '入库总金额', 'decimal(10,2)', 'BigDecimal', 'stockInAmount', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1295, 74, 'tax_amount', '入库税额', 'decimal(10,2)', 'BigDecimal', 'taxAmount', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1296, 74, 'remarks', '入库备注', 'varchar(200)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-12-25 20:52:12', '', '2023-12-26 14:24:13');
INSERT INTO `gen_table_column` VALUES (1297, 74, 'annex', '附件', 'varchar(200)', 'String', 'annex', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-12-25 20:52:13', '', '2023-12-26 14:24:14');
INSERT INTO `gen_table_column` VALUES (1298, 74, 'return_quantity', '退货总数量', 'decimal(10,2)', 'BigDecimal', 'returnQuantity', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-12-25 20:52:13', '', '2023-12-26 14:24:14');
INSERT INTO `gen_table_column` VALUES (1299, 74, 'return_tax_included_amount', '退货含税金额', 'decimal(10,2)', 'BigDecimal', 'returnTaxIncludedAmount', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-12-25 20:52:13', '', '2023-12-26 14:24:14');
INSERT INTO `gen_table_column` VALUES (1300, 74, 'return_tax_excluded_amount', '退货不含税金额', 'decimal(10,2)', 'BigDecimal', 'returnTaxExcludedAmount', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-12-25 20:52:13', '', '2023-12-26 14:24:14');
INSERT INTO `gen_table_column` VALUES (1301, 74, 'created_time', '创建时间', 'timestamp', 'Date', 'createdTime', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 13, 'admin', '2023-12-25 20:52:13', '', '2023-12-26 14:24:14');
INSERT INTO `gen_table_column` VALUES (1302, 74, 'updated_at', '更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 14, 'admin', '2023-12-25 20:52:13', '', '2023-12-26 14:24:14');
INSERT INTO `gen_table_column` VALUES (1303, 69, 'summary_score', '汇总得分', 'varchar(255)', 'String', 'summaryScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, '', '2023-12-26 09:37:01', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1304, 69, 'score', '得分', 'varchar(255)', 'String', 'score', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-12-26 09:37:01', '', '2023-12-26 09:39:33');
INSERT INTO `gen_table_column` VALUES (1305, 69, 'grade', '等级', 'varchar(255)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'grade', 9, '', '2023-12-26 09:37:01', '', '2023-12-26 09:39:34');
INSERT INTO `gen_table_column` VALUES (1306, 69, 'evaluation_ranking', '考评排名', 'varchar(255)', 'String', 'evaluationRanking', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '', '2023-12-26 09:37:02', '', '2023-12-26 09:39:34');
INSERT INTO `gen_table_column` VALUES (1307, 69, 'strategy', '建议策略', 'varchar(255)', 'String', 'strategy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2023-12-26 09:37:02', '', '2023-12-26 09:39:34');
INSERT INTO `gen_table_column` VALUES (1319, 76, 'indicator_id', '指标id', 'bigint(11)', 'Long', 'indicatorId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:31');
INSERT INTO `gen_table_column` VALUES (1320, 76, 'indicator_code', '指标编码', 'varchar(255)', 'String', 'indicatorCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:31');
INSERT INTO `gen_table_column` VALUES (1321, 76, 'scoring_method', '评分方式', 'varchar(255)', 'String', 'scoringMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1322, 76, 'Indicator_type', '指标类型', 'varchar(255)', 'String', 'indicatorType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'indicator_type', 5, 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1323, 76, 'score_from', '分值从', 'varchar(255)', 'String', 'scoreFrom', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1324, 76, 'score_to', '分值至', 'varchar(255)', 'String', 'scoreTo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-12-26 14:24:33', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1325, 76, 'benchmark_score', '基准分值', 'varchar(255)', 'String', 'benchmarkScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-12-26 14:24:34', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1326, 76, 'rater', '评分人信息', 'varchar(255)', 'String', 'rater', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-12-26 14:24:34', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1327, 76, 'scoring_criteria', '评分标准', 'varchar(255)', 'String', 'scoringCriteria', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-12-26 14:24:34', '', '2023-12-27 09:00:33');
INSERT INTO `gen_table_column` VALUES (1328, 76, 'configuration', '配置', 'varchar(255)', 'String', 'configuration', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-12-26 14:24:34', '', '2023-12-27 09:00:33');
INSERT INTO `gen_table_column` VALUES (1329, 76, 'state', '状态', 'varchar(255)', 'String', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-12-26 14:24:34', '', '2023-12-27 09:00:33');
INSERT INTO `gen_table_column` VALUES (1330, 76, 'indicator_name', '指标名称', 'varchar(255)', 'String', 'indicatorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, '', '2023-12-26 14:28:51', '', '2023-12-27 09:00:32');
INSERT INTO `gen_table_column` VALUES (1331, 72, 'category_name', '品类名称', 'varchar(255)', 'String', 'categoryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, '', '2023-12-26 17:12:14', '', '2023-12-27 09:00:26');
INSERT INTO `gen_table_column` VALUES (1332, 72, 'scoring_template_id', '模板id', 'bigint(11)', 'Long', 'scoringTemplateId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, '', '2023-12-26 17:12:15', '', '2023-12-27 09:00:28');

-- ----------------------------
-- Table structure for grouping
-- ----------------------------
DROP TABLE IF EXISTS `grouping`;
CREATE TABLE `grouping`  (
  `group_id` bigint(20) NOT NULL COMMENT '分组ID',
  `group_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组名称',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of grouping
-- ----------------------------

-- ----------------------------
-- Table structure for handling_measures
-- ----------------------------
DROP TABLE IF EXISTS `handling_measures`;
CREATE TABLE `handling_measures`  (
  `handling_measures_id` bigint(20) NOT NULL COMMENT '处理措施id',
  `handling_measures_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理措施',
  PRIMARY KEY (`handling_measures_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '处理措施' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of handling_measures
-- ----------------------------

-- ----------------------------
-- Table structure for inbound_material
-- ----------------------------
DROP TABLE IF EXISTS `inbound_material`;
CREATE TABLE `inbound_material`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `line_number` int(11) NULL DEFAULT NULL COMMENT '行号',
  `or_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编号',
  `or_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `material_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料类别',
  `material_specification` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料规格',
  `material_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料单位',
  `required_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '需求数量',
  `delivery_date` date NULL DEFAULT NULL COMMENT '需求日期',
  `received_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货数量',
  `handling_measures_name` bigint(11) NULL DEFAULT NULL COMMENT '质检处理措施',
  `inspect_qualified_number` decimal(10, 2) NULL DEFAULT NULL COMMENT '质检合格数量',
  `stockInQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库数量',
  `return_exchange_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '退换货数量',
  `return_exchange_reason` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退换货原因',
  `consignee` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receiving_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人电话号码',
  `inventory` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库房',
  `remarks` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库单物料' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inbound_material
-- ----------------------------
INSERT INTO `inbound_material` VALUES (1, 'PO20231224001', NULL, '000039', '物理服务器', '运动/户外', NULL, '台', NULL, '2023-12-24', 50.00, 3, NULL, 50.00, NULL, NULL, '张三', '15211617194', '1', '');
INSERT INTO `inbound_material` VALUES (2, 'PO20231225001', NULL, '000018', '羽毛球拍', '图书/文娱/教育', NULL, 'mm/a', NULL, '2023-12-25', 100.00, 3, NULL, 100.00, NULL, NULL, '张三', '15211617194', '1', '');
INSERT INTO `inbound_material` VALUES (3, 'PO20231226008', NULL, '000014', '手提商务包', '工业品', NULL, '立方厘米', NULL, '2023-12-26', 100.00, 4, 100.00, 100.00, NULL, NULL, '张三', '15211617194', '1', NULL);
INSERT INTO `inbound_material` VALUES (4, 'PO20231226008', NULL, '000013', '帆布袋', '工业品', NULL, '立方厘米', NULL, '2023-12-26', 100.00, 4, 100.00, 100.00, NULL, NULL, '张三', '15211617194', '2', NULL);
INSERT INTO `inbound_material` VALUES (6, 'PO20231227002', NULL, '000015', '碘伏', '医药/保健', NULL, 'mm/s', NULL, '2023-12-27', 1000.00, 4, 1000.00, 1000.00, NULL, NULL, '尹兰芳', '15569586598', '1', NULL);
INSERT INTO `inbound_material` VALUES (7, 'PO20231222003', NULL, '000038', '工业润滑剂', '导轨', NULL, 'KG', NULL, '2023-12-22', 50.00, 3, NULL, 10.00, NULL, NULL, '张三', '15211617194', '1', '');

-- ----------------------------
-- Table structure for inbound_note
-- ----------------------------
DROP TABLE IF EXISTS `inbound_note`;
CREATE TABLE `inbound_note`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockInNoteNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库单号',
  `inbound_date` date NULL DEFAULT NULL COMMENT '入库日期',
  `stockInPerson` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库人',
  `stockInQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库总数量',
  `stockInNoTaxAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库不含税金额',
  `stockInAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库总金额',
  `tax_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库税额',
  `remarks` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库备注',
  `annex` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `return_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '退货总数量',
  `return_tax_included_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退货含税金额',
  `return_tax_excluded_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退货不含税金额',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库单基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inbound_note
-- ----------------------------
INSERT INTO `inbound_note` VALUES (11, 'RK20231227001', '2023-12-27', 'admin', 100.00, 11400.00, 10900.00, 500.00, NULL, NULL, 0.00, 0.00, 0.00, '2023-12-27 09:48:36', '2023-12-27 09:48:36');
INSERT INTO `inbound_note` VALUES (13, 'RK20231228001', '2023-12-28', 'admin', 1000.00, 10000.00, 10000.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, '2023-12-28 09:30:54', '2023-12-28 09:30:54');

-- ----------------------------
-- Table structure for indicators
-- ----------------------------
DROP TABLE IF EXISTS `indicators`;
CREATE TABLE `indicators`  (
  `indicator_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '指标id',
  `indicator_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标编码',
  `indicator_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标名称',
  `scoring_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分方式',
  `Indicator_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标类型',
  `score_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分值从',
  `score_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分值至',
  `benchmark_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基准分值',
  `rater` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分人信息',
  `scoring_criteria` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分标准',
  `configuration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`indicator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考评指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of indicators
-- ----------------------------
INSERT INTO `indicators` VALUES (1, 'ZB202312265631', '企业信誉', '手工打分', '1', '0', '100', '60', 'admin', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', '0', '0');
INSERT INTO `indicators` VALUES (2, 'ZB202312265432', '企业规模', '手工打分', '1', '0', '100', '60', 'admin', '主要指企业的营业额规模、人员规模以及固定资产投入规模', '0', '0');
INSERT INTO `indicators` VALUES (3, 'ZB202312262344', '整体员工素质', '手工评分', '1', '0', '100', '60', 'admin', '合作服务过程中员工的整体素质表现', '0', '0');
INSERT INTO `indicators` VALUES (4, 'ZB20241416225160', '额外供货任务承担', '手工打分', '1', '0', '100', '60', 'admin', '是否承担特殊或者额外的供货任务', '0', '0');
INSERT INTO `indicators` VALUES (5, 'ZB20241416235364', '核心技术', '手工评分', '1', '0', '100', '60', 'admin', '是否拥有独特的核心技术，在行业所处地位', '0', '0');

-- ----------------------------
-- Table structure for industry_type
-- ----------------------------
DROP TABLE IF EXISTS `industry_type`;
CREATE TABLE `industry_type`  (
  `industry_type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '行业类型ID',
  `industry_type_Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业类型编码',
  `industry_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业类型名称',
  `superior_industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级行业',
  `enable` bigint(11) NULL DEFAULT NULL COMMENT '启用',
  PRIMARY KEY (`industry_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 241 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行业类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of industry_type
-- ----------------------------
INSERT INTO `industry_type` VALUES (228, '10001', '原材料', '直接物料', NULL);
INSERT INTO `industry_type` VALUES (229, '10002', '塑胶', '直接物料', NULL);
INSERT INTO `industry_type` VALUES (230, '10003', '五金', '直接物料', NULL);
INSERT INTO `industry_type` VALUES (231, '10004', '电子', '直接物料', NULL);
INSERT INTO `industry_type` VALUES (232, '10005', '机电', '直接物料', NULL);
INSERT INTO `industry_type` VALUES (233, '10006', '包材', '直接物料', NULL);
INSERT INTO `industry_type` VALUES (234, '20001', '设备', '间接物料', NULL);
INSERT INTO `industry_type` VALUES (235, '20002', '维修类', '间接物料', NULL);
INSERT INTO `industry_type` VALUES (236, '20003', '装修', '间接物料', NULL);
INSERT INTO `industry_type` VALUES (237, '20004', '办公用品', '间接物料', NULL);
INSERT INTO `industry_type` VALUES (238, '30001', '软件服务', '服务类', NULL);
INSERT INTO `industry_type` VALUES (239, '30002', '技术支持', '服务类', NULL);
INSERT INTO `industry_type` VALUES (240, '30003', '培训', '服务类', NULL);

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `enterprise_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '企业id',
  `chairman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '董事长',
  `president` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总经理',
  `listed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否上市',
  `stock_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '股票代码',
  `attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '股权结构附件',
  `industry_ranking` bigint(20) NULL DEFAULT NULL COMMENT '行业排名',
  `cooperate_with` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否愿意配合审计',
  `number_of_employees` bigint(20) NULL DEFAULT NULL COMMENT '公司员工数量',
  `administrative_number` bigint(20) NULL DEFAULT NULL COMMENT '管理人员数量',
  `Structure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织架构附件',
  `major_competitors` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经主要竞争对手营范围',
  `business_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `questionnaire_id` bigint(11) NULL DEFAULT NULL COMMENT '调查表id',
  PRIMARY KEY (`enterprise_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业基本信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (29, '', '', '', '', '', NULL, '', NULL, NULL, NULL, '', '', 12);
INSERT INTO `information` VALUES (32, '', '', '', '', '', NULL, '', NULL, NULL, NULL, '', '', 13);
INSERT INTO `information` VALUES (33, '', '', '', '', '', NULL, '', NULL, NULL, NULL, '', '', 14);
INSERT INTO `information` VALUES (35, '杨小涛', '范小厚', 'Y', '', '', NULL, '', NULL, NULL, NULL, '', '', 15);
INSERT INTO `information` VALUES (38, '杨小涛', '胡小厚', 'Y', '', '', NULL, '', NULL, NULL, NULL, '', '', 16);

-- ----------------------------
-- Table structure for inspect_order_type
-- ----------------------------
DROP TABLE IF EXISTS `inspect_order_type`;
CREATE TABLE `inspect_order_type`  (
  `inspect_order_type_id` bigint(20) NOT NULL COMMENT '检验单类型id',
  `inspect_order_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检验单类型名称',
  PRIMARY KEY (`inspect_order_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '检验单类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inspect_order_type
-- ----------------------------

-- ----------------------------
-- Table structure for inspect_type
-- ----------------------------
DROP TABLE IF EXISTS `inspect_type`;
CREATE TABLE `inspect_type`  (
  `inspect_type_id` bigint(20) NOT NULL COMMENT '检验类型id',
  `inspect_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检验类型名称',
  PRIMARY KEY (`inspect_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '检验类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inspect_type
-- ----------------------------

-- ----------------------------
-- Table structure for main_categories
-- ----------------------------
DROP TABLE IF EXISTS `main_categories`;
CREATE TABLE `main_categories`  (
  `main_category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主营品类ID',
  `main_category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主营品类编码',
  `main_category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主营品类名称',
  `industry_type` bigint(20) NULL DEFAULT NULL COMMENT '行业类型',
  PRIMARY KEY (`main_category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1348 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主营品类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of main_categories
-- ----------------------------
INSERT INTO `main_categories` VALUES (1, '60102040', '房地产服务', 0);
INSERT INTO `main_categories` VALUES (2, '60102030', '房地产开发', 0);
INSERT INTO `main_categories` VALUES (3, '60102020', '房地产经营公司', 0);
INSERT INTO `main_categories` VALUES (4, '60102010', '多样化房地产活动', 0);
INSERT INTO `main_categories` VALUES (5, '60101080', '特种房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (6, '60101070', '零售业房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (7, '60101060', '住宅房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (8, '60101050', '医疗保健房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (9, '60101040', '办公房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (10, '60101030', '酒店及度假村房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (11, '60101020', '工业房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (12, '60101010', '多样化房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (13, '55105020', '新能源发电业者', 0);
INSERT INTO `main_categories` VALUES (14, '55105010', '独立电力生产商与能源贸易商', 0);
INSERT INTO `main_categories` VALUES (15, '55104010', '水公用事业', 0);
INSERT INTO `main_categories` VALUES (16, '55103010', '复合型公用事业', 0);
INSERT INTO `main_categories` VALUES (17, '55102010', '燃气公用事业', 0);
INSERT INTO `main_categories` VALUES (18, '55101010', '电力公用事业', 0);
INSERT INTO `main_categories` VALUES (19, '50203010', '互动媒体与服务', 0);
INSERT INTO `main_categories` VALUES (20, '50202020', '互动家庭娱乐', 0);
INSERT INTO `main_categories` VALUES (21, '50202010', '电影和娱乐', 0);
INSERT INTO `main_categories` VALUES (22, '50201040', '出版', 0);
INSERT INTO `main_categories` VALUES (23, '50201030', '有线和卫星', 0);
INSERT INTO `main_categories` VALUES (24, '50201020', '广播', 0);
INSERT INTO `main_categories` VALUES (25, '50201010', '广告', 0);
INSERT INTO `main_categories` VALUES (26, '50102010', '无线电信业务', 0);
INSERT INTO `main_categories` VALUES (27, '50101020', '综合电信业务', 0);
INSERT INTO `main_categories` VALUES (28, '50101010', '非传统电信运营商', 0);
INSERT INTO `main_categories` VALUES (29, '45301020', '半导体产品', 0);
INSERT INTO `main_categories` VALUES (30, '45301010', '半导体设备', 0);
INSERT INTO `main_categories` VALUES (31, '45203030', '技术产品经销商', 0);
INSERT INTO `main_categories` VALUES (32, '45203020', '电子制造服务', 0);
INSERT INTO `main_categories` VALUES (33, '45203015', '电子元件', 0);
INSERT INTO `main_categories` VALUES (34, '45203010', '电子设备和仪器', 0);
INSERT INTO `main_categories` VALUES (35, '45202030', '电脑硬件、储存设备及电脑周边', 0);
INSERT INTO `main_categories` VALUES (36, '45201020', '通信设备', 0);
INSERT INTO `main_categories` VALUES (37, '45103020', '系统软件', 0);
INSERT INTO `main_categories` VALUES (38, '45103010', '应用软件', 0);
INSERT INTO `main_categories` VALUES (39, '45102030', '互联网服务与基础架构', 0);
INSERT INTO `main_categories` VALUES (40, '45102020', '数据处理与外包服务', 0);
INSERT INTO `main_categories` VALUES (41, '45102010', '信息科技咨询与其它服务', 0);
INSERT INTO `main_categories` VALUES (42, '40301050', '再保险', 0);
INSERT INTO `main_categories` VALUES (43, '40301040', '财产与意外伤害保险', 0);
INSERT INTO `main_categories` VALUES (44, '40301030', '多元化保险', 0);
INSERT INTO `main_categories` VALUES (45, '40301020', '人寿与健康保险', 0);
INSERT INTO `main_categories` VALUES (46, '40301010', '保险经纪商', 0);
INSERT INTO `main_categories` VALUES (47, '40204010', '抵押房地产投资信托', 0);
INSERT INTO `main_categories` VALUES (48, '40203040', '金融交易所和数据', 0);
INSERT INTO `main_categories` VALUES (49, '40203030', '综合性资本市场', 0);
INSERT INTO `main_categories` VALUES (50, '40203020', '投资银行业与经纪业', 0);
INSERT INTO `main_categories` VALUES (51, '40203010', '资产管理与托管银行', 0);
INSERT INTO `main_categories` VALUES (52, '40202010', '消费信贷', 0);
INSERT INTO `main_categories` VALUES (53, '40201040', '特殊金融服务', 0);
INSERT INTO `main_categories` VALUES (54, '40201030', '多领域控股', 0);
INSERT INTO `main_categories` VALUES (55, '40201020', '其它综合性金融服务', 0);
INSERT INTO `main_categories` VALUES (56, '40102010', '互助储蓄与抵押信贷金融服务', 0);
INSERT INTO `main_categories` VALUES (57, '40101015', '区域性银行', 0);
INSERT INTO `main_categories` VALUES (58, '40101010', '综合性银行', 0);
INSERT INTO `main_categories` VALUES (59, '35203010', '生命科学工具和服务', 0);
INSERT INTO `main_categories` VALUES (60, '35202010', '制药', 0);
INSERT INTO `main_categories` VALUES (61, '35201010', '生物科技', 0);
INSERT INTO `main_categories` VALUES (62, '35103010', '医疗保健技术', 0);
INSERT INTO `main_categories` VALUES (63, '35102030', '管理型保健护理', 0);
INSERT INTO `main_categories` VALUES (64, '35102020', '保健护理机构', 0);
INSERT INTO `main_categories` VALUES (65, '35102015', '保健护理服务', 0);
INSERT INTO `main_categories` VALUES (66, '35102010', '保健护理产品经销商', 0);
INSERT INTO `main_categories` VALUES (67, '35101020', '医疗保健用品', 0);
INSERT INTO `main_categories` VALUES (68, '35101010', '医疗保健设备', 0);
INSERT INTO `main_categories` VALUES (69, '30302010', '个人用品', 0);
INSERT INTO `main_categories` VALUES (70, '30301010', '居家用品', 0);
INSERT INTO `main_categories` VALUES (71, '30203010', '烟草', 0);
INSERT INTO `main_categories` VALUES (72, '30202030', '包装食品与肉类', 0);
INSERT INTO `main_categories` VALUES (73, '30202010', '农产品', 0);
INSERT INTO `main_categories` VALUES (74, '30201030', '软饮料', 0);
INSERT INTO `main_categories` VALUES (75, '30201020', '酿酒商与葡萄酒商', 0);
INSERT INTO `main_categories` VALUES (76, '30201010', '啤酒酿造商', 0);
INSERT INTO `main_categories` VALUES (77, '30101040', '大卖场与超市', 0);
INSERT INTO `main_categories` VALUES (78, '30101030', '食品零售', 0);
INSERT INTO `main_categories` VALUES (79, '30101020', '食品分销商', 0);
INSERT INTO `main_categories` VALUES (80, '30101010', '药品零售', 0);
INSERT INTO `main_categories` VALUES (81, '25504060', '家庭装饰零售', 0);
INSERT INTO `main_categories` VALUES (82, '25504050', '汽车零售', 0);
INSERT INTO `main_categories` VALUES (83, '25504040', '专卖店', 0);
INSERT INTO `main_categories` VALUES (84, '25504030', '家庭装潢零售', 0);
INSERT INTO `main_categories` VALUES (85, '25504020', '电脑与电子产品零售', 0);
INSERT INTO `main_categories` VALUES (86, '25504010', '服装零售', 0);
INSERT INTO `main_categories` VALUES (87, '25503020', '综合货品商店', 0);
INSERT INTO `main_categories` VALUES (88, '25503010', '百货商店', 0);
INSERT INTO `main_categories` VALUES (89, '25502020', '互联网与直销零售', 0);
INSERT INTO `main_categories` VALUES (90, '25501010', '经销商', 0);
INSERT INTO `main_categories` VALUES (91, '25302020', '特殊消费者服务', 0);
INSERT INTO `main_categories` VALUES (92, '25302010', '教育服务', 0);
INSERT INTO `main_categories` VALUES (93, '25301040', '餐馆', 0);
INSERT INTO `main_categories` VALUES (94, '25301030', '消闲设施', 0);
INSERT INTO `main_categories` VALUES (95, '25301020', '酒店、度假村与豪华游轮', 0);
INSERT INTO `main_categories` VALUES (96, '25301010', '赌场与赌博', 0);
INSERT INTO `main_categories` VALUES (97, '25203030', '纺织品', 0);
INSERT INTO `main_categories` VALUES (98, '25203020', '鞋类', 0);
INSERT INTO `main_categories` VALUES (99, '25203010', '服装、服饰与奢侈品', 0);
INSERT INTO `main_categories` VALUES (100, '25202010', '消闲用品', 0);
INSERT INTO `main_categories` VALUES (101, '25201050', '家用器具与特殊消费品', 0);
INSERT INTO `main_categories` VALUES (102, '25201040', '家用电器', 0);
INSERT INTO `main_categories` VALUES (103, '25201030', '住宅建筑', 0);
INSERT INTO `main_categories` VALUES (104, '25201020', '家庭装饰品', 0);
INSERT INTO `main_categories` VALUES (105, '25201010', '消费电子产品', 0);
INSERT INTO `main_categories` VALUES (106, '25102020', '摩托车制造商', 0);
INSERT INTO `main_categories` VALUES (107, '25102010', '汽车制造商', 0);
INSERT INTO `main_categories` VALUES (108, '25101020', '轮胎与橡胶', 0);
INSERT INTO `main_categories` VALUES (109, '25101010', '机动车零配件与设备', 0);
INSERT INTO `main_categories` VALUES (110, '20305030', '海港与服务', 0);
INSERT INTO `main_categories` VALUES (111, '20305020', '公路与铁路', 0);
INSERT INTO `main_categories` VALUES (112, '20305010', '机场服务', 0);
INSERT INTO `main_categories` VALUES (113, '20304020', '陆运', 0);
INSERT INTO `main_categories` VALUES (114, '20304010', '铁路', 0);
INSERT INTO `main_categories` VALUES (115, '20303010', '海运', 0);
INSERT INTO `main_categories` VALUES (116, '20302010', '航空公司', 0);
INSERT INTO `main_categories` VALUES (117, '20301010', '航空货运与物流', 0);
INSERT INTO `main_categories` VALUES (118, '20202020', '调查和咨询服务', 0);
INSERT INTO `main_categories` VALUES (119, '20202010', '人力资源与就业服务', 0);
INSERT INTO `main_categories` VALUES (120, '20201080', '安全和报警服务', 0);
INSERT INTO `main_categories` VALUES (121, '20201070', '综合支持服务', 0);
INSERT INTO `main_categories` VALUES (122, '20201060', '办公服务与用品', 0);
INSERT INTO `main_categories` VALUES (123, '20201050', '环境与设施服务', 0);
INSERT INTO `main_categories` VALUES (124, '20201010', '商业印刷', 0);
INSERT INTO `main_categories` VALUES (125, '20107010', '贸易公司与经销商', 0);
INSERT INTO `main_categories` VALUES (126, '20106020', '工业机械', 0);
INSERT INTO `main_categories` VALUES (127, '20106015', '农用农业机械', 0);
INSERT INTO `main_categories` VALUES (128, '20106010', '建筑机械与重型卡车', 0);
INSERT INTO `main_categories` VALUES (129, '20105010', '工业集团企业', 0);
INSERT INTO `main_categories` VALUES (130, '20104020', '重型电气设备', 0);
INSERT INTO `main_categories` VALUES (131, '20104010', '电气部件与设备', 0);
INSERT INTO `main_categories` VALUES (132, '20103010', '建筑与工程', 0);
INSERT INTO `main_categories` VALUES (133, '20102010', '建筑产品', 0);
INSERT INTO `main_categories` VALUES (134, '20101010', '航天航空与国防', 0);
INSERT INTO `main_categories` VALUES (135, '15105020', '纸制品', 0);
INSERT INTO `main_categories` VALUES (136, '15105010', '林业产品', 0);
INSERT INTO `main_categories` VALUES (137, '15104050', '钢铁', 0);
INSERT INTO `main_categories` VALUES (138, '15104045', '白银', 0);
INSERT INTO `main_categories` VALUES (139, '15104040', '贵重金属与矿石', 0);
INSERT INTO `main_categories` VALUES (140, '15104030', '黄金', 0);
INSERT INTO `main_categories` VALUES (141, '15104025', '铜', 0);
INSERT INTO `main_categories` VALUES (142, '15104020', '多种金属与采矿', 0);
INSERT INTO `main_categories` VALUES (143, '15104010', '铝', 0);
INSERT INTO `main_categories` VALUES (144, '15103020', '纸材料包装', 0);
INSERT INTO `main_categories` VALUES (145, '15103010', '金属与玻璃容器', 0);
INSERT INTO `main_categories` VALUES (146, '15102010', '建筑材料', 0);
INSERT INTO `main_categories` VALUES (147, '15101050', '特种化学制品', 0);
INSERT INTO `main_categories` VALUES (148, '15101040', '工业气体', 0);
INSERT INTO `main_categories` VALUES (149, '15101030', '化肥与农用药剂', 0);
INSERT INTO `main_categories` VALUES (150, '15101020', '多种化学制品', 0);
INSERT INTO `main_categories` VALUES (151, '15101010', '商品化工', 0);
INSERT INTO `main_categories` VALUES (152, '10102050', '煤与消费用燃料', 0);
INSERT INTO `main_categories` VALUES (153, '10102040', '石油与天然气的储存和运输', 0);
INSERT INTO `main_categories` VALUES (154, '10102030', '石油与天然气的炼制和营销', 0);
INSERT INTO `main_categories` VALUES (155, '10102020', '石油与天然气的勘探与生产', 0);
INSERT INTO `main_categories` VALUES (156, '10102010', '综合性石油与天然气企业', 0);
INSERT INTO `main_categories` VALUES (157, '10101020', '石油天然气设备与服务', 0);
INSERT INTO `main_categories` VALUES (158, '10101010', '石油与天然气钻井', 0);
INSERT INTO `main_categories` VALUES (159, 'A10101', '药材', 0);
INSERT INTO `main_categories` VALUES (160, 'M0312', '创业空间服务', 0);
INSERT INTO `main_categories` VALUES (161, 'T0104', '联合国机构服务', 0);
INSERT INTO `main_categories` VALUES (162, 'T0103', '外国政府驻华机构服务', 0);
INSERT INTO `main_categories` VALUES (163, 'T0102', '地区性国际组织服务', 0);
INSERT INTO `main_categories` VALUES (164, 'T0101', '其他国际组织服务', 0);
INSERT INTO `main_categories` VALUES (165, 'S0602', '村民自治组织', 0);
INSERT INTO `main_categories` VALUES (166, 'S0601', '社区居民自治组织', 0);
INSERT INTO `main_categories` VALUES (167, 'S0510', '宗教活动场所服务', 0);
INSERT INTO `main_categories` VALUES (168, 'S0509', '宗教团体服务', 0);
INSERT INTO `main_categories` VALUES (169, 'S0508', '基金会', 0);
INSERT INTO `main_categories` VALUES (170, 'S0507', '其他社会团体', 0);
INSERT INTO `main_categories` VALUES (171, 'S0506', '行业性团体', 0);
INSERT INTO `main_categories` VALUES (172, 'S0505', '专业性团体', 0);
INSERT INTO `main_categories` VALUES (173, 'S0504', '其他群众团体', 0);
INSERT INTO `main_categories` VALUES (174, 'S0503', '共青团', 0);
INSERT INTO `main_categories` VALUES (175, 'S0502', '妇联', 0);
INSERT INTO `main_categories` VALUES (176, 'S0501', '工会', 0);
INSERT INTO `main_categories` VALUES (177, 'S0408', '其他社会保障服务', 0);
INSERT INTO `main_categories` VALUES (178, 'S0407', '补充保险服务', 0);
INSERT INTO `main_categories` VALUES (179, 'S0406', '其他基本保险服务', 0);
INSERT INTO `main_categories` VALUES (180, 'S0405', '生育保险服务', 0);
INSERT INTO `main_categories` VALUES (181, 'S0404', '工伤保险服务', 0);
INSERT INTO `main_categories` VALUES (182, 'S0403', '失业保险服务', 0);
INSERT INTO `main_categories` VALUES (183, 'S0402', '基本医疗保险服务', 0);
INSERT INTO `main_categories` VALUES (184, 'S0401', '基本养老保险服务', 0);
INSERT INTO `main_categories` VALUES (185, 'S0302', '民主党派', 0);
INSERT INTO `main_categories` VALUES (186, 'S0301', '人民政协', 0);
INSERT INTO `main_categories` VALUES (187, 'S0211', '其他未列明国家机构', 0);
INSERT INTO `main_categories` VALUES (188, 'S0210', '消防管理机构', 0);
INSERT INTO `main_categories` VALUES (189, 'S0209', '人民检察院', 0);
INSERT INTO `main_categories` VALUES (190, 'S0208', '人民法院', 0);
INSERT INTO `main_categories` VALUES (191, 'S0207', '行政监督检查机构', 0);
INSERT INTO `main_categories` VALUES (192, 'S0206', '经济事务管理机构', 0);
INSERT INTO `main_categories` VALUES (193, 'S0205', '社会事务管理机构', 0);
INSERT INTO `main_categories` VALUES (194, 'S0204', '公共安全管理机构', 0);
INSERT INTO `main_categories` VALUES (195, 'S0203', '对外事务管理机构', 0);
INSERT INTO `main_categories` VALUES (196, 'S0202', '综合事务管理机构', 0);
INSERT INTO `main_categories` VALUES (197, 'S0201', '国家权力机构', 0);
INSERT INTO `main_categories` VALUES (198, 'S0101', '中国共产党机关', 0);
INSERT INTO `main_categories` VALUES (199, 'R0505', '电子游戏、游艺厅娱乐服务', 0);
INSERT INTO `main_categories` VALUES (200, 'R0504', '歌舞厅娱乐服务', 0);
INSERT INTO `main_categories` VALUES (201, 'R0503', '手工制作，相关室内娱乐服务', 0);
INSERT INTO `main_categories` VALUES (202, 'R0502', '大型娱乐设施服务', 0);
INSERT INTO `main_categories` VALUES (203, 'R0501', '其他娱乐服务', 0);
INSERT INTO `main_categories` VALUES (204, 'R0405', '其他体育服务', 0);
INSERT INTO `main_categories` VALUES (205, 'R0404', '体育组织服务', 0);
INSERT INTO `main_categories` VALUES (206, 'R0403', '体育科技管理服务', 0);
INSERT INTO `main_categories` VALUES (207, 'R0402', '体育场馆服务', 0);
INSERT INTO `main_categories` VALUES (208, 'R0401', '休闲健身服务', 0);
INSERT INTO `main_categories` VALUES (209, 'R0311', '艺术表演场馆服务', 0);
INSERT INTO `main_categories` VALUES (210, 'R0310', '群众文化服务', 0);
INSERT INTO `main_categories` VALUES (211, 'R0309', '烈士陵园、纪念馆服务', 0);
INSERT INTO `main_categories` VALUES (212, 'R0308', '档案馆管理服务', 0);
INSERT INTO `main_categories` VALUES (213, 'R0307', '文艺创作与表演服务', 0);
INSERT INTO `main_categories` VALUES (214, 'R0306', '文物遗址保护服务', 0);
INSERT INTO `main_categories` VALUES (215, 'R0305', '文化遗产保护服务', 0);
INSERT INTO `main_categories` VALUES (216, 'R0304', '文化艺术经纪代理服务', 0);
INSERT INTO `main_categories` VALUES (217, 'R0303', '图书馆管理服务', 0);
INSERT INTO `main_categories` VALUES (218, 'R0302', '博物馆服务', 0);
INSERT INTO `main_categories` VALUES (219, 'R0301', '其他文化艺术服务', 0);
INSERT INTO `main_categories` VALUES (220, 'R0205', '音像制作服务', 0);
INSERT INTO `main_categories` VALUES (221, 'R0204', '电视服务', 0);
INSERT INTO `main_categories` VALUES (222, 'R0203', '电影放映服务', 0);
INSERT INTO `main_categories` VALUES (223, 'R0202', '电影制作与发行服务', 0);
INSERT INTO `main_categories` VALUES (224, 'R0201', '广播服务', 0);
INSERT INTO `main_categories` VALUES (225, 'R0108', '其他出版服务', 0);
INSERT INTO `main_categories` VALUES (226, 'R0107', '数字出版服务', 0);
INSERT INTO `main_categories` VALUES (227, 'R0106', '电子出版物出版服务', 0);
INSERT INTO `main_categories` VALUES (228, 'R0105', '音像制品出版服务', 0);
INSERT INTO `main_categories` VALUES (229, 'R0104', '期刊出版服务', 0);
INSERT INTO `main_categories` VALUES (230, 'R0103', '报纸出版服务', 0);
INSERT INTO `main_categories` VALUES (231, 'R0102', '图书出版服务', 0);
INSERT INTO `main_categories` VALUES (232, 'R0101', '新闻服务', 0);
INSERT INTO `main_categories` VALUES (233, 'Q0209', '康复辅具适配服务', 0);
INSERT INTO `main_categories` VALUES (234, 'Q0208', '社会看护与帮助服务', 0);
INSERT INTO `main_categories` VALUES (235, 'Q0207', '其他提供住宿社会救助', 0);
INSERT INTO `main_categories` VALUES (236, 'Q0206', '孤残儿童收养和庇护服务', 0);
INSERT INTO `main_categories` VALUES (237, 'Q0205', '临终关怀服务', 0);
INSERT INTO `main_categories` VALUES (238, 'Q0204', '老年人、残疾人养护服务', 0);
INSERT INTO `main_categories` VALUES (239, 'Q0203', '精神康复服务', 0);
INSERT INTO `main_categories` VALUES (240, 'Q0202', '护理机构服务', 0);
INSERT INTO `main_categories` VALUES (241, 'Q0201', '干部休养所服务', 0);
INSERT INTO `main_categories` VALUES (242, 'Q0120', '其他未列明卫生服务', 0);
INSERT INTO `main_categories` VALUES (243, 'Q0119', '临床检验服务', 0);
INSERT INTO `main_categories` VALUES (244, 'Q0118', '健康体检服务', 0);
INSERT INTO `main_categories` VALUES (245, 'Q0117', '计划生育技术服务活动', 0);
INSERT INTO `main_categories` VALUES (246, 'Q0116', '采供血机构服务', 0);
INSERT INTO `main_categories` VALUES (247, 'Q0115', '急救中心（站）服务', 0);
INSERT INTO `main_categories` VALUES (248, 'Q0114', '妇幼保健院（所、站）服务', 0);
INSERT INTO `main_categories` VALUES (249, 'Q0113', '专科疾病防治院（所、站）服务', 0);
INSERT INTO `main_categories` VALUES (250, 'Q0112', '疾病预防控制中心服务', 0);
INSERT INTO `main_categories` VALUES (251, 'Q0111', '门诊部（所）服务', 0);
INSERT INTO `main_categories` VALUES (252, 'Q0110', '村卫生室服务', 0);
INSERT INTO `main_categories` VALUES (253, 'Q0109', '乡镇卫生院服务', 0);
INSERT INTO `main_categories` VALUES (254, 'Q0108', '街道卫生院服务', 0);
INSERT INTO `main_categories` VALUES (255, 'Q0107', '社区卫生服务中心（站）服务', 0);
INSERT INTO `main_categories` VALUES (256, 'Q0106', '疗养院服务', 0);
INSERT INTO `main_categories` VALUES (257, 'Q0105', '专科医院服务', 0);
INSERT INTO `main_categories` VALUES (258, 'Q0104', '民族医院服务', 0);
INSERT INTO `main_categories` VALUES (259, 'Q0103', '中西医结合医院服务', 0);
INSERT INTO `main_categories` VALUES (260, 'Q0102', '中医医院服务', 0);
INSERT INTO `main_categories` VALUES (261, 'Q0101', '综合医院服务', 0);
INSERT INTO `main_categories` VALUES (262, 'P0109', '高等教育服务', 0);
INSERT INTO `main_categories` VALUES (263, 'P0108', '职业培训服务', 0);
INSERT INTO `main_categories` VALUES (264, 'P0107', '特殊教育服务', 0);
INSERT INTO `main_categories` VALUES (265, 'P0106', '学生课外教育服务', 0);
INSERT INTO `main_categories` VALUES (266, 'P0105', '学前教育服务', 0);
INSERT INTO `main_categories` VALUES (267, 'P0104', '初等教育服务', 0);
INSERT INTO `main_categories` VALUES (268, 'P0103', '其他教育服务', 0);
INSERT INTO `main_categories` VALUES (269, 'P0102', '党政教育服务', 0);
INSERT INTO `main_categories` VALUES (270, 'P0101', '中等教育服务', 0);
INSERT INTO `main_categories` VALUES (271, 'O0308', '其他未列明服务', 0);
INSERT INTO `main_categories` VALUES (272, 'O0307', '其他宠物服务', 0);
INSERT INTO `main_categories` VALUES (273, 'O0306', '宠物寄托收养服务', 0);
INSERT INTO `main_categories` VALUES (274, 'O0305', '宠物美容服务', 0);
INSERT INTO `main_categories` VALUES (275, 'O0304', '宠物医院服务', 0);
INSERT INTO `main_categories` VALUES (276, 'O0303', '宠物饲养服务', 0);
INSERT INTO `main_categories` VALUES (277, 'O0302', '其他清洁服务', 0);
INSERT INTO `main_categories` VALUES (278, 'O0301', '建筑物清洁服务', 0);
INSERT INTO `main_categories` VALUES (279, 'O0213', '其他未列明日用产品修理服务', 0);
INSERT INTO `main_categories` VALUES (280, 'O0212', '家具和相关物品修理服务', 0);
INSERT INTO `main_categories` VALUES (281, 'O0211', '鞋和皮革修理服务', 0);
INSERT INTO `main_categories` VALUES (282, 'O0210', '自行车修理服务', 0);
INSERT INTO `main_categories` VALUES (283, 'O0209', '日用电器修理服务', 0);
INSERT INTO `main_categories` VALUES (284, 'O0208', '家用电子产品修理服务', 0);
INSERT INTO `main_categories` VALUES (285, 'O0207', '其他办公设备维修服务', 0);
INSERT INTO `main_categories` VALUES (286, 'O0206', '通讯设备修理服务', 0);
INSERT INTO `main_categories` VALUES (287, 'O0205', '计算机和辅助设备修理服务', 0);
INSERT INTO `main_categories` VALUES (288, 'O0204', '助动车等修理与维护服务', 0);
INSERT INTO `main_categories` VALUES (289, 'O0203', '摩托车修理与维护服务', 0);
INSERT INTO `main_categories` VALUES (290, 'O0202', '大型车辆装备修理与维护服务', 0);
INSERT INTO `main_categories` VALUES (291, 'O0201', '汽车修理与维护服务', 0);
INSERT INTO `main_categories` VALUES (292, 'O0111', '其他居民服务业', 0);
INSERT INTO `main_categories` VALUES (293, 'O0110', '殡葬服务', 0);
INSERT INTO `main_categories` VALUES (294, 'O0109', '婚姻服务', 0);
INSERT INTO `main_categories` VALUES (295, 'O0108', '摄影扩印服务', 0);
INSERT INTO `main_categories` VALUES (296, 'O0107', '养生保健服务', 0);
INSERT INTO `main_categories` VALUES (297, 'O0106', '足浴服务', 0);
INSERT INTO `main_categories` VALUES (298, 'O0105', '洗浴服务', 0);
INSERT INTO `main_categories` VALUES (299, 'O0104', '理发及美容服务', 0);
INSERT INTO `main_categories` VALUES (300, 'O0103', '洗染服务', 0);
INSERT INTO `main_categories` VALUES (301, 'O0102', '托儿所服务', 0);
INSERT INTO `main_categories` VALUES (302, 'O0101', '家庭服务', 0);
INSERT INTO `main_categories` VALUES (303, 'N0313', '其他土地管理服务', 0);
INSERT INTO `main_categories` VALUES (304, 'N0312', '土地登记代理服务', 0);
INSERT INTO `main_categories` VALUES (305, 'N0311', '土地登记服务', 0);
INSERT INTO `main_categories` VALUES (306, 'N0310', '土地调查评估服务', 0);
INSERT INTO `main_categories` VALUES (307, 'N0309', '土地整治服务', 0);
INSERT INTO `main_categories` VALUES (308, 'N0308', '其他游览景区管理服务', 0);
INSERT INTO `main_categories` VALUES (309, 'N0307', '森林公园管理服务', 0);
INSERT INTO `main_categories` VALUES (310, 'N0306', '名胜风景区管理服务', 0);
INSERT INTO `main_categories` VALUES (311, 'N0305', '城市公园管理服务', 0);
INSERT INTO `main_categories` VALUES (312, 'N0304', '绿化管理服务', 0);
INSERT INTO `main_categories` VALUES (313, 'N0303', '城乡市容管理服务', 0);
INSERT INTO `main_categories` VALUES (314, 'N0302', '环境卫生管理服务', 0);
INSERT INTO `main_categories` VALUES (315, 'N0301', '市政设施管理服务', 0);
INSERT INTO `main_categories` VALUES (316, 'N0214', '其他污染治理服务', 0);
INSERT INTO `main_categories` VALUES (317, 'N0213', '噪声与振动控制服务', 0);
INSERT INTO `main_categories` VALUES (318, 'N0212', '土壤污染治理与修复服务', 0);
INSERT INTO `main_categories` VALUES (319, 'N0211', '放射性废物治理服务', 0);
INSERT INTO `main_categories` VALUES (320, 'N0210', '危险废物治理服务', 0);
INSERT INTO `main_categories` VALUES (321, 'N0209', '固体废物治理服务', 0);
INSERT INTO `main_categories` VALUES (322, 'N0208', '大气污染治理服务', 0);
INSERT INTO `main_categories` VALUES (323, 'N0207', '水污染治理服务', 0);
INSERT INTO `main_categories` VALUES (324, 'N0206', '植物园管理服务', 0);
INSERT INTO `main_categories` VALUES (325, 'N0205', '动物园、水族馆管理服务', 0);
INSERT INTO `main_categories` VALUES (326, 'N0204', '野生植物保护服务', 0);
INSERT INTO `main_categories` VALUES (327, 'N0203', '野生动物保护服务', 0);
INSERT INTO `main_categories` VALUES (328, 'N0202', '自然遗迹保护管理服务', 0);
INSERT INTO `main_categories` VALUES (329, 'N0201', '自然生态系统保护管理服务', 0);
INSERT INTO `main_categories` VALUES (330, 'N0105', '其他水利管理服务', 0);
INSERT INTO `main_categories` VALUES (331, 'N0104', '水文服务', 0);
INSERT INTO `main_categories` VALUES (332, 'N0103', '天然水收集与分配服务', 0);
INSERT INTO `main_categories` VALUES (333, 'N0102', '水资源管理服务', 0);
INSERT INTO `main_categories` VALUES (334, 'N0101', '防洪除涝设施管理服务', 0);
INSERT INTO `main_categories` VALUES (335, 'M0313', '其他科技推广服务', 0);
INSERT INTO `main_categories` VALUES (336, 'M0311', '创业空间服务', 0);
INSERT INTO `main_categories` VALUES (337, 'M0310', '科技中介服务', 0);
INSERT INTO `main_categories` VALUES (338, 'M0309', '知识产权服务', 0);
INSERT INTO `main_categories` VALUES (339, 'M0308', '其他技术推广服务', 0);
INSERT INTO `main_categories` VALUES (340, 'M0307', '三维（3D）打印技术推广服务', 0);
INSERT INTO `main_categories` VALUES (341, 'M0306', '环保技术推广服务', 0);
INSERT INTO `main_categories` VALUES (342, 'M0305', '新能源技术推广服务', 0);
INSERT INTO `main_categories` VALUES (343, 'M0304', '节能技术推广服务', 0);
INSERT INTO `main_categories` VALUES (344, 'M0303', '新材料技术推广服务', 0);
INSERT INTO `main_categories` VALUES (345, 'M0302', '生物技术推广服务', 0);
INSERT INTO `main_categories` VALUES (346, 'M0301', '农林牧渔技术推广服务', 0);
INSERT INTO `main_categories` VALUES (347, 'M0229', '其他未列明专业技术服务', 0);
INSERT INTO `main_categories` VALUES (348, 'M0228', '兽医服务', 0);
INSERT INTO `main_categories` VALUES (349, 'M0227', '专业设计服务', 0);
INSERT INTO `main_categories` VALUES (350, 'M0226', '工业设计服务', 0);
INSERT INTO `main_categories` VALUES (351, 'M0225', '土地规划服务', 0);
INSERT INTO `main_categories` VALUES (352, 'M0224', '规划设计管理服务', 0);
INSERT INTO `main_categories` VALUES (353, 'M0223', '工程监理服务', 0);
INSERT INTO `main_categories` VALUES (354, 'M0222', '工程管理服务', 0);
INSERT INTO `main_categories` VALUES (355, 'M0221', '地质勘查技术服务', 0);
INSERT INTO `main_categories` VALUES (356, 'M0220', '基础地质勘查', 0);
INSERT INTO `main_categories` VALUES (357, 'M0219', '水、二氧化碳等矿产地质勘查', 0);
INSERT INTO `main_categories` VALUES (358, 'M0218', '固体矿产地质勘查', 0);
INSERT INTO `main_categories` VALUES (359, 'M0217', '能源矿产地质勘查', 0);
INSERT INTO `main_categories` VALUES (360, 'M0216', '野生动物疫源疫病防控监测', 0);
INSERT INTO `main_categories` VALUES (361, 'M0215', '生态资源监测服务', 0);
INSERT INTO `main_categories` VALUES (362, 'M0214', '环境保护监测服务', 0);
INSERT INTO `main_categories` VALUES (363, 'M0213', '其他质检技术服务', 0);
INSERT INTO `main_categories` VALUES (364, 'M0212', '认证认可服务', 0);
INSERT INTO `main_categories` VALUES (365, 'M0211', '标准化服务', 0);
INSERT INTO `main_categories` VALUES (366, 'M0210', '计量服务', 0);
INSERT INTO `main_categories` VALUES (367, 'M0209', '检测服务', 0);
INSERT INTO `main_categories` VALUES (368, 'M0208', '检验检疫服务', 0);
INSERT INTO `main_categories` VALUES (369, 'M0207', '其他测绘地理信息服务', 0);
INSERT INTO `main_categories` VALUES (370, 'M0206', '遥感测绘服务', 0);
INSERT INTO `main_categories` VALUES (371, 'M0205', '其他海洋服务', 0);
INSERT INTO `main_categories` VALUES (372, 'M0204', '海洋环境服务', 0);
INSERT INTO `main_categories` VALUES (373, 'M0203', '海洋气象服务', 0);
INSERT INTO `main_categories` VALUES (374, 'M0202', '地震服务', 0);
INSERT INTO `main_categories` VALUES (375, 'M0201', '气象服务', 0);
INSERT INTO `main_categories` VALUES (376, 'M0105', '社会人文科学研究服务', 0);
INSERT INTO `main_categories` VALUES (377, 'M0104', '医学研究和试验发展服务', 0);
INSERT INTO `main_categories` VALUES (378, 'M0103', '农业科学研究和试验发展服务', 0);
INSERT INTO `main_categories` VALUES (379, 'M0102', '工程和技术研究和试验发展服务', 0);
INSERT INTO `main_categories` VALUES (380, 'M0101', '自然科学研究和试验发展服务', 0);
INSERT INTO `main_categories` VALUES (381, 'L0243', '其他未列明商务服务业', 0);
INSERT INTO `main_categories` VALUES (382, 'L0242', '票务代理服务', 0);
INSERT INTO `main_categories` VALUES (383, 'L0241', '商务代理代办服务', 0);
INSERT INTO `main_categories` VALUES (384, 'L0240', '非融资担保服务', 0);
INSERT INTO `main_categories` VALUES (385, 'L0239', '信用服务', 0);
INSERT INTO `main_categories` VALUES (386, 'L0238', '翻译服务', 0);
INSERT INTO `main_categories` VALUES (387, 'L0237', '办公服务', 0);
INSERT INTO `main_categories` VALUES (388, 'L0236', '包装服务', 0);
INSERT INTO `main_categories` VALUES (389, 'L0235', '旅行社及相关服务', 0);
INSERT INTO `main_categories` VALUES (390, 'L0234', '其他会议、展览及相关服务', 0);
INSERT INTO `main_categories` VALUES (391, 'L0233', '文化会展服务', 0);
INSERT INTO `main_categories` VALUES (392, 'L0232', '体育会展服务', 0);
INSERT INTO `main_categories` VALUES (393, 'L0231', '旅游会展服务', 0);
INSERT INTO `main_categories` VALUES (394, 'L0230', '科技会展服务', 0);
INSERT INTO `main_categories` VALUES (395, 'L0229', '其他安全保护服务', 0);
INSERT INTO `main_categories` VALUES (396, 'L0228', '安全系统监控服务', 0);
INSERT INTO `main_categories` VALUES (397, 'L0227', '安全服务', 0);
INSERT INTO `main_categories` VALUES (398, 'L0226', '其他人力资源服务', 0);
INSERT INTO `main_categories` VALUES (399, 'L0225', '创业指导服务', 0);
INSERT INTO `main_categories` VALUES (400, 'L0224', '劳务派遣服务', 0);
INSERT INTO `main_categories` VALUES (401, 'L0223', '职业中介服务', 0);
INSERT INTO `main_categories` VALUES (402, 'L0222', '公共就业服务', 0);
INSERT INTO `main_categories` VALUES (403, 'L0221', '其他广告服务', 0);
INSERT INTO `main_categories` VALUES (404, 'L0220', '互联网广告服务', 0);
INSERT INTO `main_categories` VALUES (405, 'L0219', '其他专业咨询与调查服务', 0);
INSERT INTO `main_categories` VALUES (406, 'L0218', '体育咨询服务', 0);
INSERT INTO `main_categories` VALUES (407, 'L0217', '环保咨询服务', 0);
INSERT INTO `main_categories` VALUES (408, 'L0216', '健康咨询服务', 0);
INSERT INTO `main_categories` VALUES (409, 'L0215', '社会经济咨询服务', 0);
INSERT INTO `main_categories` VALUES (410, 'L0214', '市场调查服务', 0);
INSERT INTO `main_categories` VALUES (411, 'L0213', '会计、审计及税务服务', 0);
INSERT INTO `main_categories` VALUES (412, 'L0212', '其他法律服务', 0);
INSERT INTO `main_categories` VALUES (413, 'L0211', '公证服务', 0);
INSERT INTO `main_categories` VALUES (414, 'L0210', '律师及相关法律服务', 0);
INSERT INTO `main_categories` VALUES (415, 'L0209', '其他综合管理服务', 0);
INSERT INTO `main_categories` VALUES (416, 'L0208', '供应链管理服务', 0);
INSERT INTO `main_categories` VALUES (417, 'L0207', '市场管理服务', 0);
INSERT INTO `main_categories` VALUES (418, 'L0206', '商业综合体管理服务', 0);
INSERT INTO `main_categories` VALUES (419, 'L0205', '园区管理服务', 0);
INSERT INTO `main_categories` VALUES (420, 'L0204', '其他组织管理服务', 0);
INSERT INTO `main_categories` VALUES (421, 'L0203', '单位后勤管理服务', 0);
INSERT INTO `main_categories` VALUES (422, 'L0202', '资源与产权交易服务', 0);
INSERT INTO `main_categories` VALUES (423, 'L0201', '投资与资产管理服务', 0);
INSERT INTO `main_categories` VALUES (424, 'L0113', '日用品出租服务', 0);
INSERT INTO `main_categories` VALUES (425, 'L0112', '其他文体设备和用品出租服务', 0);
INSERT INTO `main_categories` VALUES (426, 'L0111', '音像制品出租服务', 0);
INSERT INTO `main_categories` VALUES (427, 'L0110', '图书出租服务', 0);
INSERT INTO `main_categories` VALUES (428, 'L0109', '文化用品设备出租服务', 0);
INSERT INTO `main_categories` VALUES (429, 'L0108', '体育用品设备出租服务', 0);
INSERT INTO `main_categories` VALUES (430, 'L0107', '休闲娱乐用品设备出租服务', 0);
INSERT INTO `main_categories` VALUES (431, 'L0106', '其他机械与设备经营租赁服务', 0);
INSERT INTO `main_categories` VALUES (432, 'L0105', '医疗设备经营租赁服务', 0);
INSERT INTO `main_categories` VALUES (433, 'L0104', '计算机及通讯设备经营租赁服务', 0);
INSERT INTO `main_categories` VALUES (434, 'L0103', '建筑工程机械与设备经营租赁服务', 0);
INSERT INTO `main_categories` VALUES (435, 'L0102', '农业机械经营租赁服务', 0);
INSERT INTO `main_categories` VALUES (436, 'L0101', '汽车租赁服务', 0);
INSERT INTO `main_categories` VALUES (437, 'K0105', '其他房地产业服务', 0);
INSERT INTO `main_categories` VALUES (438, 'K0104', '房地产租赁经营服务', 0);
INSERT INTO `main_categories` VALUES (439, 'K0103', '房地产中介服务', 0);
INSERT INTO `main_categories` VALUES (440, 'K0102', '物业管理服务', 0);
INSERT INTO `main_categories` VALUES (441, 'K0101', '房地产开发经营服务', 0);
INSERT INTO `main_categories` VALUES (442, 'J0406', '其他未包括金融业服务', 0);
INSERT INTO `main_categories` VALUES (443, 'J0405', '货币经纪公司服务', 0);
INSERT INTO `main_categories` VALUES (444, 'J0404', '金融信息服务', 0);
INSERT INTO `main_categories` VALUES (445, 'J0403', '非金融机构支付服务', 0);
INSERT INTO `main_categories` VALUES (446, 'J0402', '控股公司服务', 0);
INSERT INTO `main_categories` VALUES (447, 'J0401', '其他金融信托与管理服务', 0);
INSERT INTO `main_categories` VALUES (448, 'J0313', '其他保险活动服务', 0);
INSERT INTO `main_categories` VALUES (449, 'J0312', '保险监管服务', 0);
INSERT INTO `main_categories` VALUES (450, 'J0311', '保险资产管理', 0);
INSERT INTO `main_categories` VALUES (451, 'J0310', '保险公估服务', 0);
INSERT INTO `main_categories` VALUES (452, 'J0309', '保险代理服务', 0);
INSERT INTO `main_categories` VALUES (453, 'J0308', '保险经纪服务', 0);
INSERT INTO `main_categories` VALUES (454, 'J0307', '商业养老金', 0);
INSERT INTO `main_categories` VALUES (455, 'J0306', '再保险', 0);
INSERT INTO `main_categories` VALUES (456, 'J0305', '财产保险', 0);
INSERT INTO `main_categories` VALUES (457, 'J0304', '意外伤害保险', 0);
INSERT INTO `main_categories` VALUES (458, 'J0303', '健康保险', 0);
INSERT INTO `main_categories` VALUES (459, 'J0302', '年金保险', 0);
INSERT INTO `main_categories` VALUES (460, 'J0301', '人寿保险', 0);
INSERT INTO `main_categories` VALUES (461, 'J0211', '其他资本市场服务', 0);
INSERT INTO `main_categories` VALUES (462, 'J0210', '资本投资服务', 0);
INSERT INTO `main_categories` VALUES (463, 'J0209', '证券期货监管服务', 0);
INSERT INTO `main_categories` VALUES (464, 'J0208', '其他期货市场服务', 0);
INSERT INTO `main_categories` VALUES (465, 'J0207', '期货市场管理服务', 0);
INSERT INTO `main_categories` VALUES (466, 'J0206', '其他非公开募集证券投资基金', 0);
INSERT INTO `main_categories` VALUES (467, 'J0205', '天使投资', 0);
INSERT INTO `main_categories` VALUES (468, 'J0204', '创业投资基金', 0);
INSERT INTO `main_categories` VALUES (469, 'J0203', '公开募集证券投资基金', 0);
INSERT INTO `main_categories` VALUES (470, 'J0202', '证券经纪交易服务', 0);
INSERT INTO `main_categories` VALUES (471, 'J0201', '证券市场管理服务', 0);
INSERT INTO `main_categories` VALUES (472, 'J0116', '银行监管服务', 0);
INSERT INTO `main_categories` VALUES (473, 'J0115', '银行理财服务', 0);
INSERT INTO `main_categories` VALUES (474, 'J0114', '其他非货币银行服务', 0);
INSERT INTO `main_categories` VALUES (475, 'J0113', '网络借贷服务', 0);
INSERT INTO `main_categories` VALUES (476, 'J0112', '消费金融公司服务', 0);
INSERT INTO `main_categories` VALUES (477, 'J0111', '小额贷款公司服务', 0);
INSERT INTO `main_categories` VALUES (478, 'J0110', '汽车金融公司服务', 0);
INSERT INTO `main_categories` VALUES (479, 'J0109', '典当', 0);
INSERT INTO `main_categories` VALUES (480, 'J0108', '财务公司服务', 0);
INSERT INTO `main_categories` VALUES (481, 'J0107', '融资租赁服务', 0);
INSERT INTO `main_categories` VALUES (482, 'J0106', '其他货币银行服务', 0);
INSERT INTO `main_categories` VALUES (483, 'J0105', '农村资金互助社服务', 0);
INSERT INTO `main_categories` VALUES (484, 'J0104', '信用合作社服务', 0);
INSERT INTO `main_categories` VALUES (485, 'J0103', '政策性银行服务', 0);
INSERT INTO `main_categories` VALUES (486, 'J0102', '商业银行服务', 0);
INSERT INTO `main_categories` VALUES (487, 'J0101', '中央银行服务', 0);
INSERT INTO `main_categories` VALUES (488, 'I0315', '其他未列明信息技术服务业', 0);
INSERT INTO `main_categories` VALUES (489, 'I0314', '呼叫中心服务', 0);
INSERT INTO `main_categories` VALUES (490, 'I0313', '其他数字内容服务', 0);
INSERT INTO `main_categories` VALUES (491, 'I0312', '动漫、游戏数字内容服务', 0);
INSERT INTO `main_categories` VALUES (492, 'I0311', '地理遥感信息服务', 0);
INSERT INTO `main_categories` VALUES (493, 'I0310', '信息技术咨询服务', 0);
INSERT INTO `main_categories` VALUES (494, 'I0309', '信息处理和存储支持服务', 0);
INSERT INTO `main_categories` VALUES (495, 'I0308', '运行维护服务', 0);
INSERT INTO `main_categories` VALUES (496, 'I0307', '物联网技术服务', 0);
INSERT INTO `main_categories` VALUES (497, 'I0306', '信息系统集成服务', 0);
INSERT INTO `main_categories` VALUES (498, 'I0305', '集成电路设计服务', 0);
INSERT INTO `main_categories` VALUES (499, 'I0304', '其他软件开发服务', 0);
INSERT INTO `main_categories` VALUES (500, 'I0303', '应用软件开发服务', 0);
INSERT INTO `main_categories` VALUES (501, 'I0302', '支撑软件开发服务', 0);
INSERT INTO `main_categories` VALUES (502, 'I0301', '基础软件开发服务', 0);
INSERT INTO `main_categories` VALUES (503, 'I0212', '其他互联网服务', 0);
INSERT INTO `main_categories` VALUES (504, 'I0211', '互联网数据服务', 0);
INSERT INTO `main_categories` VALUES (505, 'I0210', '互联网安全服务', 0);
INSERT INTO `main_categories` VALUES (506, 'I0209', '其他互联网平台', 0);
INSERT INTO `main_categories` VALUES (507, 'I0208', '互联网公共服务平台', 0);
INSERT INTO `main_categories` VALUES (508, 'I0207', '互联网科技创新平台', 0);
INSERT INTO `main_categories` VALUES (509, 'I0206', '互联网生活服务平台', 0);
INSERT INTO `main_categories` VALUES (510, 'I0205', '互联网生产服务平台', 0);
INSERT INTO `main_categories` VALUES (511, 'I0204', '互联网其他信息服务', 0);
INSERT INTO `main_categories` VALUES (512, 'I0203', '互联网游戏服务', 0);
INSERT INTO `main_categories` VALUES (513, 'I0202', '互联网搜索服务', 0);
INSERT INTO `main_categories` VALUES (514, 'I0201', '互联网接入及相关服务', 0);
INSERT INTO `main_categories` VALUES (515, 'I0107', '其他卫星传输服务', 0);
INSERT INTO `main_categories` VALUES (516, 'I0106', '广播电视卫星传输服务', 0);
INSERT INTO `main_categories` VALUES (517, 'I0105', '无线广播电视传输服务', 0);
INSERT INTO `main_categories` VALUES (518, 'I0104', '有线广播电视传输服务', 0);
INSERT INTO `main_categories` VALUES (519, 'I0103', '其他电信服务', 0);
INSERT INTO `main_categories` VALUES (520, 'I0102', '移动电信服务', 0);
INSERT INTO `main_categories` VALUES (521, 'I0101', '固定电信服务', 0);
INSERT INTO `main_categories` VALUES (522, 'H0210', '其他未列明餐饮业服务', 0);
INSERT INTO `main_categories` VALUES (523, 'H0209', '小吃服务', 0);
INSERT INTO `main_categories` VALUES (524, 'H0208', '外卖送餐服务', 0);
INSERT INTO `main_categories` VALUES (525, 'H0207', '餐饮配送服务', 0);
INSERT INTO `main_categories` VALUES (526, 'H0206', '其他饮料及冷饮服务', 0);
INSERT INTO `main_categories` VALUES (527, 'H0205', '酒吧服务', 0);
INSERT INTO `main_categories` VALUES (528, 'H0204', '咖啡馆服务', 0);
INSERT INTO `main_categories` VALUES (529, 'H0203', '茶馆服务', 0);
INSERT INTO `main_categories` VALUES (530, 'H0202', '快餐服务', 0);
INSERT INTO `main_categories` VALUES (531, 'H0201', '正餐服务', 0);
INSERT INTO `main_categories` VALUES (532, 'H0106', '其他住宿业', 0);
INSERT INTO `main_categories` VALUES (533, 'H0105', '露营地服务', 0);
INSERT INTO `main_categories` VALUES (534, 'H0104', '民宿服务', 0);
INSERT INTO `main_categories` VALUES (535, 'H0103', '其他一般旅馆服务', 0);
INSERT INTO `main_categories` VALUES (536, 'H0102', '经济型连锁酒店服务', 0);
INSERT INTO `main_categories` VALUES (537, 'H0101', '旅游饭店服务', 0);
INSERT INTO `main_categories` VALUES (538, 'G0803', '其他寄递服务', 0);
INSERT INTO `main_categories` VALUES (539, 'G0802', '快递服务', 0);
INSERT INTO `main_categories` VALUES (540, 'G0801', '邮政基本服务', 0);
INSERT INTO `main_categories` VALUES (541, 'G0704', '其他仓储服务', 0);
INSERT INTO `main_categories` VALUES (542, 'G0703', '专业仓储服务', 0);
INSERT INTO `main_categories` VALUES (543, 'G0702', '运输代理服务', 0);
INSERT INTO `main_categories` VALUES (544, 'G0701', '装卸搬运服务', 0);
INSERT INTO `main_categories` VALUES (545, 'G0604', '其他运输代理服务', 0);
INSERT INTO `main_categories` VALUES (546, 'G0603', '旅客票务代理服务', 0);
INSERT INTO `main_categories` VALUES (547, 'G0602', '货物运输代理服务', 0);
INSERT INTO `main_categories` VALUES (548, 'G0601', '多式联运服务', 0);
INSERT INTO `main_categories` VALUES (549, 'G0503', '液体管道运输服务', 0);
INSERT INTO `main_categories` VALUES (550, 'G0502', '气体管道运输服务', 0);
INSERT INTO `main_categories` VALUES (551, 'G0501', '其他管道运输服务', 0);
INSERT INTO `main_categories` VALUES (552, 'G0410', '其他通用航空服务', 0);
INSERT INTO `main_categories` VALUES (553, 'G0409', '体育航空运动服务', 0);
INSERT INTO `main_categories` VALUES (554, 'G0408', '观光游览航空服务', 0);
INSERT INTO `main_categories` VALUES (555, 'G0407', '通用航空生产服务', 0);
INSERT INTO `main_categories` VALUES (556, 'G0406', '通用航空服务', 0);
INSERT INTO `main_categories` VALUES (557, 'G0405', '航空运输辅助服务', 0);
INSERT INTO `main_categories` VALUES (558, 'G0404', '航空客货运输服务', 0);
INSERT INTO `main_categories` VALUES (559, 'G0303', '水路运输辅助服务', 0);
INSERT INTO `main_categories` VALUES (560, 'G0302', '水路货物运输服务', 0);
INSERT INTO `main_categories` VALUES (561, 'G0301', '水路旅客运输服务', 0);
INSERT INTO `main_categories` VALUES (562, 'G0206', '道路货物运输服务', 0);
INSERT INTO `main_categories` VALUES (563, 'G0205', '客运汽车站服务', 0);
INSERT INTO `main_categories` VALUES (564, 'G0204', '其他道路运输服务', 0);
INSERT INTO `main_categories` VALUES (565, 'G0203', '公路管理与养护服务', 0);
INSERT INTO `main_categories` VALUES (566, 'G0202', '公路旅客运输服务', 0);
INSERT INTO `main_categories` VALUES (567, 'G0105', '铁路货运站服务', 0);
INSERT INTO `main_categories` VALUES (568, 'G0104', '铁路货物运输服务', 0);
INSERT INTO `main_categories` VALUES (569, 'G0103', '铁路旅客运输服务', 0);
INSERT INTO `main_categories` VALUES (570, 'G0102', '铁路客运站服务', 0);
INSERT INTO `main_categories` VALUES (571, 'G0101', '其他铁路运输服务', 0);
INSERT INTO `main_categories` VALUES (572, 'F1708', '其他', 0);
INSERT INTO `main_categories` VALUES (573, 'F1707', '宠物食品用品', 0);
INSERT INTO `main_categories` VALUES (574, 'F1706', '生活用燃料', 0);
INSERT INTO `main_categories` VALUES (575, 'F1705', '旧货', 0);
INSERT INTO `main_categories` VALUES (576, 'F1704', '自动售货机', 0);
INSERT INTO `main_categories` VALUES (577, 'F1703', '邮购及电视、电话', 0);
INSERT INTO `main_categories` VALUES (578, 'F1702', '互联网产品', 0);
INSERT INTO `main_categories` VALUES (579, 'F1701', '流动货摊产品及服务', 0);
INSERT INTO `main_categories` VALUES (580, 'F1608', '其他室内装饰材料', 0);
INSERT INTO `main_categories` VALUES (581, 'F1607', '陶瓷、石材装饰材料', 0);
INSERT INTO `main_categories` VALUES (582, 'F1606', '木质装饰材料', 0);
INSERT INTO `main_categories` VALUES (583, 'F1605', '卫生洁具', 0);
INSERT INTO `main_categories` VALUES (584, 'F1604', '涂料', 0);
INSERT INTO `main_categories` VALUES (585, 'F1603', '家具', 0);
INSERT INTO `main_categories` VALUES (586, 'F1602', '灯具', 0);
INSERT INTO `main_categories` VALUES (587, 'F1601', '五金', 0);
INSERT INTO `main_categories` VALUES (588, 'F1505', '其他电子产品', 0);
INSERT INTO `main_categories` VALUES (589, 'F1504', '通信设备', 0);
INSERT INTO `main_categories` VALUES (590, 'F1503', '计算机、软件及辅助设备', 0);
INSERT INTO `main_categories` VALUES (591, 'F1502', '日用家电', 0);
INSERT INTO `main_categories` VALUES (592, 'F1501', '家用视听设备', 0);
INSERT INTO `main_categories` VALUES (593, 'F1406', '机动车燃气', 0);
INSERT INTO `main_categories` VALUES (594, 'F1405', '机动车燃油', 0);
INSERT INTO `main_categories` VALUES (595, 'F1404', '摩托车及零配件', 0);
INSERT INTO `main_categories` VALUES (596, 'F1403', '汽车零配件', 0);
INSERT INTO `main_categories` VALUES (597, 'F1402', '汽车旧车', 0);
INSERT INTO `main_categories` VALUES (598, 'F1401', '汽车新车', 0);
INSERT INTO `main_categories` VALUES (599, 'F1305', '保健辅助治疗器材', 0);
INSERT INTO `main_categories` VALUES (600, 'F1304', '医疗用品及器材', 0);
INSERT INTO `main_categories` VALUES (601, 'F1303', '动物用药品', 0);
INSERT INTO `main_categories` VALUES (602, 'F1302', '中药', 0);
INSERT INTO `main_categories` VALUES (603, 'F1301', '西药', 0);
INSERT INTO `main_categories` VALUES (604, 'F1209', '其他文化用品', 0);
INSERT INTO `main_categories` VALUES (605, 'F1208', '照相器材', 0);
INSERT INTO `main_categories` VALUES (606, 'F1207', '乐器', 0);
INSERT INTO `main_categories` VALUES (607, 'F1206', '工艺美术品及收藏品', 0);
INSERT INTO `main_categories` VALUES (608, 'F1205', '珠宝首饰', 0);
INSERT INTO `main_categories` VALUES (609, 'F1204', '音像制品、电子和数字出版物', 0);
INSERT INTO `main_categories` VALUES (610, 'F1203', '图书、报刊', 0);
INSERT INTO `main_categories` VALUES (611, 'F1202', '体育用品及器材', 0);
INSERT INTO `main_categories` VALUES (612, 'F1201', '文具用品', 0);
INSERT INTO `main_categories` VALUES (613, 'F1109', '其他日用品', 0);
INSERT INTO `main_categories` VALUES (614, 'F1108', '自行车等代步设备', 0);
INSERT INTO `main_categories` VALUES (615, 'F1107', '箱包', 0);
INSERT INTO `main_categories` VALUES (616, 'F1106', '钟表、眼镜', 0);
INSERT INTO `main_categories` VALUES (617, 'F1105', '厨具卫具及日用杂品', 0);
INSERT INTO `main_categories` VALUES (618, 'F1104', '化妆品及卫生用品', 0);
INSERT INTO `main_categories` VALUES (619, 'F1103', '鞋帽', 0);
INSERT INTO `main_categories` VALUES (620, 'F1102', '服装', 0);
INSERT INTO `main_categories` VALUES (621, 'F1101', '纺织品及针织品', 0);
INSERT INTO `main_categories` VALUES (622, 'F1008', '其他食品', 0);
INSERT INTO `main_categories` VALUES (623, 'F1007', '烟草制品', 0);
INSERT INTO `main_categories` VALUES (624, 'F1006', '酒、饮料及茶叶', 0);
INSERT INTO `main_categories` VALUES (625, 'F1005', '营养和保健品', 0);
INSERT INTO `main_categories` VALUES (626, 'F1004', '肉、禽、蛋、奶及水产品', 0);
INSERT INTO `main_categories` VALUES (627, 'F1003', '果品、蔬菜', 0);
INSERT INTO `main_categories` VALUES (628, 'F1002', '糕点、面包', 0);
INSERT INTO `main_categories` VALUES (629, 'F1001', '粮油', 0);
INSERT INTO `main_categories` VALUES (630, 'F0904', '其他', 0);
INSERT INTO `main_categories` VALUES (631, 'F0903', '便利店', 0);
INSERT INTO `main_categories` VALUES (632, 'F0902', '超级市场', 0);
INSERT INTO `main_categories` VALUES (633, 'F0901', '百货', 0);
INSERT INTO `main_categories` VALUES (634, 'F0804', '其他', 0);
INSERT INTO `main_categories` VALUES (635, 'F0803', '互联网批发服务', 0);
INSERT INTO `main_categories` VALUES (636, 'F0802', '宠物食品用品', 0);
INSERT INTO `main_categories` VALUES (637, 'F0801', '再生物资回收与批发服务', 0);
INSERT INTO `main_categories` VALUES (638, 'F0709', '其他机械设备及电子产品', 0);
INSERT INTO `main_categories` VALUES (639, 'F0708', '广播影视设备', 0);
INSERT INTO `main_categories` VALUES (640, 'F0707', '通讯设备', 0);
INSERT INTO `main_categories` VALUES (641, 'F0706', '计算机、软件及辅助设备', 0);
INSERT INTO `main_categories` VALUES (642, 'F0705', '电气设备', 0);
INSERT INTO `main_categories` VALUES (643, 'F0704', '五金产品', 0);
INSERT INTO `main_categories` VALUES (644, 'F0703', '摩托车及零配', 0);
INSERT INTO `main_categories` VALUES (645, 'F0702', '汽车及零配件', 0);
INSERT INTO `main_categories` VALUES (646, 'F0701', '农业机械', 0);
INSERT INTO `main_categories` VALUES (647, 'F0609', '其他化工产品', 0);
INSERT INTO `main_categories` VALUES (648, 'F0608', '农用薄膜', 0);
INSERT INTO `main_categories` VALUES (649, 'F0607', '农药', 0);
INSERT INTO `main_categories` VALUES (650, 'F0606', '化肥', 0);
INSERT INTO `main_categories` VALUES (651, 'F0605', '建材', 0);
INSERT INTO `main_categories` VALUES (652, 'F0604', '金属及金属矿', 0);
INSERT INTO `main_categories` VALUES (653, 'F0603', '非金属矿及制品', 0);
INSERT INTO `main_categories` VALUES (654, 'F0602', '石油及制品', 0);
INSERT INTO `main_categories` VALUES (655, 'F0601', '煤炭及制品', 0);
INSERT INTO `main_categories` VALUES (656, 'F0504', '医疗用品及器材', 0);
INSERT INTO `main_categories` VALUES (657, 'F0503', '动物用药品', 0);
INSERT INTO `main_categories` VALUES (658, 'F0502', '中药', 0);
INSERT INTO `main_categories` VALUES (659, 'F0501', '西药', 0);
INSERT INTO `main_categories` VALUES (660, 'F0408', '其他文化用品', 0);
INSERT INTO `main_categories` VALUES (661, 'F0407', '乐器', 0);
INSERT INTO `main_categories` VALUES (662, 'F0406', '首饰、工艺品及收藏品', 0);
INSERT INTO `main_categories` VALUES (663, 'F0405', '音像制品、电子和数字出版物', 0);
INSERT INTO `main_categories` VALUES (664, 'F0404', '报刊', 0);
INSERT INTO `main_categories` VALUES (665, 'F0403', '图书', 0);
INSERT INTO `main_categories` VALUES (666, 'F0402', '体育用品及器材', 0);
INSERT INTO `main_categories` VALUES (667, 'F0401', '文具用品', 0);
INSERT INTO `main_categories` VALUES (668, 'F0309', '其他家庭用品', 0);
INSERT INTO `main_categories` VALUES (669, 'F0308', '日用家电', 0);
INSERT INTO `main_categories` VALUES (670, 'F0307', '家用视听设备', 0);
INSERT INTO `main_categories` VALUES (671, 'F0306', '灯具、装饰物品', 0);
INSERT INTO `main_categories` VALUES (672, 'F0305', '厨具卫具及日用杂品', 0);
INSERT INTO `main_categories` VALUES (673, 'F0304', '化妆品及卫生用品', 0);
INSERT INTO `main_categories` VALUES (674, 'F0303', '鞋帽', 0);
INSERT INTO `main_categories` VALUES (675, 'F0302', '服装', 0);
INSERT INTO `main_categories` VALUES (676, 'F0301', '纺织品、针织品及原料', 0);
INSERT INTO `main_categories` VALUES (677, 'F0209', '其他食品', 0);
INSERT INTO `main_categories` VALUES (678, 'F0208', '烟草制品', 0);
INSERT INTO `main_categories` VALUES (679, 'F0207', '酒、饮料及茶叶', 0);
INSERT INTO `main_categories` VALUES (680, 'F0206', '营养和保健品', 0);
INSERT INTO `main_categories` VALUES (681, 'F0205', '盐及调味品', 0);
INSERT INTO `main_categories` VALUES (682, 'F0204', '肉、禽、蛋、奶及水产品', 0);
INSERT INTO `main_categories` VALUES (683, 'F0203', '果品、蔬菜', 0);
INSERT INTO `main_categories` VALUES (684, 'F0202', '糕点、糖果及糖', 0);
INSERT INTO `main_categories` VALUES (685, 'F0201', '米、面制品及食用油', 0);
INSERT INTO `main_categories` VALUES (686, 'F0108', '其他农牧产品', 0);
INSERT INTO `main_categories` VALUES (687, 'F0107', '渔业产品', 0);
INSERT INTO `main_categories` VALUES (688, 'F0106', '牲畜', 0);
INSERT INTO `main_categories` VALUES (689, 'F0105', '林业产品', 0);
INSERT INTO `main_categories` VALUES (690, 'F0104', '棉、麻', 0);
INSERT INTO `main_categories` VALUES (691, 'F0103', '畜牧渔业饲料', 0);
INSERT INTO `main_categories` VALUES (692, 'F0102', '种子', 0);
INSERT INTO `main_categories` VALUES (693, 'F0101', '谷物、豆及薯类', 0);
INSERT INTO `main_categories` VALUES (694, 'E0407', '其他未列明建筑业服务', 0);
INSERT INTO `main_categories` VALUES (695, 'E0406', '提供施工设备服务', 0);
INSERT INTO `main_categories` VALUES (696, 'E0405', '场地准备服务', 0);
INSERT INTO `main_categories` VALUES (697, 'E0404', '建筑物拆除服务', 0);
INSERT INTO `main_categories` VALUES (698, 'E0403', '建筑幕墙装饰和装修产品及服务', 0);
INSERT INTO `main_categories` VALUES (699, 'E0402', '住宅装饰和装修产品及服务', 0);
INSERT INTO `main_categories` VALUES (700, 'E0401', '公共建筑装饰和装修产品及服务', 0);
INSERT INTO `main_categories` VALUES (701, 'E0304', '其他建筑安装服务', 0);
INSERT INTO `main_categories` VALUES (702, 'E0303', '体育场地设施安装服务', 0);
INSERT INTO `main_categories` VALUES (703, 'E0302', '管道和设备安装服务', 0);
INSERT INTO `main_categories` VALUES (704, 'E0301', '电气安装服务', 0);
INSERT INTO `main_categories` VALUES (705, 'E0230', '其他土木工程建筑施工', 0);
INSERT INTO `main_categories` VALUES (706, 'E0229', '游乐设施工程施工', 0);
INSERT INTO `main_categories` VALUES (707, 'E0228', '体育场地设施工程施工', 0);
INSERT INTO `main_categories` VALUES (708, 'E0227', '园林绿化工程施工', 0);
INSERT INTO `main_categories` VALUES (709, 'E0226', '其他电力工程施工', 0);
INSERT INTO `main_categories` VALUES (710, 'E0225', '太阳能发电工程施工', 0);
INSERT INTO `main_categories` VALUES (711, 'E0224', '风能发电工程施工', 0);
INSERT INTO `main_categories` VALUES (712, 'E0223', '核电工程施工', 0);
INSERT INTO `main_categories` VALUES (713, 'E0222', '水力发电工程施工', 0);
INSERT INTO `main_categories` VALUES (714, 'E0221', '火力发电工程施工', 0);
INSERT INTO `main_categories` VALUES (715, 'E0220', '生态保护工程施工', 0);
INSERT INTO `main_categories` VALUES (716, 'E0219', '环保工程施工', 0);
INSERT INTO `main_categories` VALUES (717, 'E0218', '节能工程施工', 0);
INSERT INTO `main_categories` VALUES (718, 'E0217', '地下综合管廊工程建筑', 0);
INSERT INTO `main_categories` VALUES (719, 'E0216', '管道工程建筑', 0);
INSERT INTO `main_categories` VALUES (720, 'E0215', '架线及设备工程建筑', 0);
INSERT INTO `main_categories` VALUES (721, 'E0214', '工矿工程建筑', 0);
INSERT INTO `main_categories` VALUES (722, 'E0213', '其他海洋工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (723, 'E0212', '海底设施铺设工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (724, 'E0211', '海底隧道工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (725, 'E0210', '海洋能源开发利用工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (726, 'E0209', '海洋油气资源开发利用工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (727, 'E0208', '港口及航运设施工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (728, 'E0207', '河湖治理及防洪设施工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (729, 'E0206', '水源及供水设施工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (730, 'E0205', '其他道路、隧道和桥梁工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (731, 'E0204', '城市轨道交通工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (732, 'E0203', '市政道路工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (733, 'E0202', '公路工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (734, 'E0201', '铁路工程建筑服务', 0);
INSERT INTO `main_categories` VALUES (735, 'E0103', '其他房屋建筑业服务', 0);
INSERT INTO `main_categories` VALUES (736, 'E0102', '体育场馆建筑服务', 0);
INSERT INTO `main_categories` VALUES (737, 'E0101', '住宅房屋建筑服务', 0);
INSERT INTO `main_categories` VALUES (738, 'D0302', '水生产量', 0);
INSERT INTO `main_categories` VALUES (739, 'D0301', '水供应量', 0);
INSERT INTO `main_categories` VALUES (740, 'D0204', '生物质燃气生产和供应业', 0);
INSERT INTO `main_categories` VALUES (741, 'D0203', '煤气生产和供应业', 0);
INSERT INTO `main_categories` VALUES (742, 'D0202', '液化石油气生产和供应业', 0);
INSERT INTO `main_categories` VALUES (743, 'D0201', '天然气生产和供应业', 0);
INSERT INTO `main_categories` VALUES (744, 'D0110', '热力生产和供应', 0);
INSERT INTO `main_categories` VALUES (745, 'D0109', '电力供应', 0);
INSERT INTO `main_categories` VALUES (746, 'D0108', '其他电力', 0);
INSERT INTO `main_categories` VALUES (747, 'D0107', '生物质能', 0);
INSERT INTO `main_categories` VALUES (748, 'D0106', '太阳能', 0);
INSERT INTO `main_categories` VALUES (749, 'D0105', '风力', 0);
INSERT INTO `main_categories` VALUES (750, 'D0104', '核力', 0);
INSERT INTO `main_categories` VALUES (751, 'D0103', '水力', 0);
INSERT INTO `main_categories` VALUES (752, 'D0102', '热电', 0);
INSERT INTO `main_categories` VALUES (753, 'D0101', '火力', 0);
INSERT INTO `main_categories` VALUES (754, 'C3110', '其他机械和设备', 0);
INSERT INTO `main_categories` VALUES (755, 'C3109', '仪器仪表', 0);
INSERT INTO `main_categories` VALUES (756, 'C3108', '电气设备', 0);
INSERT INTO `main_categories` VALUES (757, 'C3107', '其他运输设备', 0);
INSERT INTO `main_categories` VALUES (758, 'C3106', '航空航天器', 0);
INSERT INTO `main_categories` VALUES (759, 'C3105', '船舶', 0);
INSERT INTO `main_categories` VALUES (760, 'C3104', '铁路运输设备', 0);
INSERT INTO `main_categories` VALUES (761, 'C3103', '专用设备', 0);
INSERT INTO `main_categories` VALUES (762, 'C3102', '通用设备', 0);
INSERT INTO `main_categories` VALUES (763, 'C3101', '金属制品', 0);
INSERT INTO `main_categories` VALUES (764, 'C3002', '非金属废料和碎屑', 0);
INSERT INTO `main_categories` VALUES (765, 'C3001', '金属废料和碎屑', 0);
INSERT INTO `main_categories` VALUES (766, 'C2903', '其他', 0);
INSERT INTO `main_categories` VALUES (767, 'C2902', '其他日用杂品', 0);
INSERT INTO `main_categories` VALUES (768, 'C2901', '鬃毛加工、制刷及清扫工具', 0);
INSERT INTO `main_categories` VALUES (769, 'C2820', '其他仪器仪表', 0);
INSERT INTO `main_categories` VALUES (770, 'C2819', '衡器', 0);
INSERT INTO `main_categories` VALUES (771, 'C2818', '光学仪器', 0);
INSERT INTO `main_categories` VALUES (772, 'C2817', '钟表与计时仪器', 0);
INSERT INTO `main_categories` VALUES (773, 'C2816', '其他专用仪器', 0);
INSERT INTO `main_categories` VALUES (774, 'C2815', '电子测量仪器', 0);
INSERT INTO `main_categories` VALUES (775, 'C2814', '核子及核辐射测量仪器', 0);
INSERT INTO `main_categories` VALUES (776, 'C2813', '教学专用仪器', 0);
INSERT INTO `main_categories` VALUES (777, 'C2812', '地质勘探和地震专用仪器', 0);
INSERT INTO `main_categories` VALUES (778, 'C2811', '农林牧渔专用仪器仪表', 0);
INSERT INTO `main_categories` VALUES (779, 'C2810', '导航、测绘、气象及海洋专用仪器', 0);
INSERT INTO `main_categories` VALUES (780, 'C2809', '运输设备及生产用计数仪表', 0);
INSERT INTO `main_categories` VALUES (781, 'C2808', '环境监测专用仪器仪表', 0);
INSERT INTO `main_categories` VALUES (782, 'C2807', '其他通用仪器', 0);
INSERT INTO `main_categories` VALUES (783, 'C2806', '供应用仪器仪表', 0);
INSERT INTO `main_categories` VALUES (784, 'C2805', '试验机', 0);
INSERT INTO `main_categories` VALUES (785, 'C2804', '实验分析仪器', 0);
INSERT INTO `main_categories` VALUES (786, 'C2803', '绘图、计算及测量仪器', 0);
INSERT INTO `main_categories` VALUES (787, 'C2802', '电工仪器仪表', 0);
INSERT INTO `main_categories` VALUES (788, 'C2801', '工业自动控制系统装置', 0);
INSERT INTO `main_categories` VALUES (789, 'C2736', '其他电子设备', 0);
INSERT INTO `main_categories` VALUES (790, 'C2735', '其他电子元件', 0);
INSERT INTO `main_categories` VALUES (791, 'C2734', '电子专用材料', 0);
INSERT INTO `main_categories` VALUES (792, 'C2733', '电声器件及零件', 0);
INSERT INTO `main_categories` VALUES (793, 'C2732', '敏感元件及传感器', 0);
INSERT INTO `main_categories` VALUES (794, 'C2731', '电子电路', 0);
INSERT INTO `main_categories` VALUES (795, 'C2730', '电阻电容电感元件', 0);
INSERT INTO `main_categories` VALUES (796, 'C2729', '其他电子器件', 0);
INSERT INTO `main_categories` VALUES (797, 'C2728', '光电子器件', 0);
INSERT INTO `main_categories` VALUES (798, 'C2727', '半导体照明器件', 0);
INSERT INTO `main_categories` VALUES (799, 'C2726', '显示器件', 0);
INSERT INTO `main_categories` VALUES (800, 'C2725', '集成电路', 0);
INSERT INTO `main_categories` VALUES (801, 'C2724', '半导体分立器件', 0);
INSERT INTO `main_categories` VALUES (802, 'C2723', '电子真空器件', 0);
INSERT INTO `main_categories` VALUES (803, 'C2722', '其他智能消费设备', 0);
INSERT INTO `main_categories` VALUES (804, 'C2721', '服务消费机器人', 0);
INSERT INTO `main_categories` VALUES (805, 'C2720', '智能无人飞行器', 0);
INSERT INTO `main_categories` VALUES (806, 'C2719', '智能车载设备', 0);
INSERT INTO `main_categories` VALUES (807, 'C2718', '可穿戴智能设备', 0);
INSERT INTO `main_categories` VALUES (808, 'C2717', '影视录放设备', 0);
INSERT INTO `main_categories` VALUES (809, 'C2716', '音响设备', 0);
INSERT INTO `main_categories` VALUES (810, 'C2715', '电视机', 0);
INSERT INTO `main_categories` VALUES (811, 'C2714', '雷达及配套设备', 0);
INSERT INTO `main_categories` VALUES (812, 'C2713', '应用电视设备及其他广播电视设备', 0);
INSERT INTO `main_categories` VALUES (813, 'C2712', '专业音响设备', 0);
INSERT INTO `main_categories` VALUES (814, 'C2711', '广播电视专用配件', 0);
INSERT INTO `main_categories` VALUES (815, 'C2710', '广播电视接收设备', 0);
INSERT INTO `main_categories` VALUES (816, 'C2709', '广播电视节目制作及发射设备', 0);
INSERT INTO `main_categories` VALUES (817, 'C2708', '通信终端设备', 0);
INSERT INTO `main_categories` VALUES (818, 'C2707', '通信系统设备', 0);
INSERT INTO `main_categories` VALUES (819, 'C2706', '其他计算机', 0);
INSERT INTO `main_categories` VALUES (820, 'C2705', '信息安全设备', 0);
INSERT INTO `main_categories` VALUES (821, 'C2704', '工业控制计算机及系统', 0);
INSERT INTO `main_categories` VALUES (822, 'C2703', '计算机外围设备', 0);
INSERT INTO `main_categories` VALUES (823, 'C2702', '计算机零部件', 0);
INSERT INTO `main_categories` VALUES (824, 'C2701', '计算机整机', 0);
INSERT INTO `main_categories` VALUES (825, 'C2638', '其他未列明电气机械及器材', 0);
INSERT INTO `main_categories` VALUES (826, 'C2637', '电气信号设备装置', 0);
INSERT INTO `main_categories` VALUES (827, 'C2636', '灯用电器附件及其他照明器具', 0);
INSERT INTO `main_categories` VALUES (828, 'C2635', '智能照明器具', 0);
INSERT INTO `main_categories` VALUES (829, 'C2634', '舞台及场地用灯', 0);
INSERT INTO `main_categories` VALUES (830, 'C2633', '照明灯具', 0);
INSERT INTO `main_categories` VALUES (831, 'C2632', '电光源', 0);
INSERT INTO `main_categories` VALUES (832, 'C2631', '其他非电力家用器具', 0);
INSERT INTO `main_categories` VALUES (833, 'C2630', '太阳能器具', 0);
INSERT INTO `main_categories` VALUES (834, 'C2629', '燃气及类似能源家用器具', 0);
INSERT INTO `main_categories` VALUES (835, 'C2628', '其他家用电力器具', 0);
INSERT INTO `main_categories` VALUES (836, 'C2627', '家用电力器具专用配件', 0);
INSERT INTO `main_categories` VALUES (837, 'C2626', '家用美容、保健护理电器具', 0);
INSERT INTO `main_categories` VALUES (838, 'C2625', '家用清洁卫生电器具', 0);
INSERT INTO `main_categories` VALUES (839, 'C2624', '家用厨房电器具', 0);
INSERT INTO `main_categories` VALUES (840, 'C2623', '家用通风电器具', 0);
INSERT INTO `main_categories` VALUES (841, 'C2622', '家用空气调节器', 0);
INSERT INTO `main_categories` VALUES (842, 'C2621', '家用制冷电器具', 0);
INSERT INTO `main_categories` VALUES (843, 'C2620', '其他电池', 0);
INSERT INTO `main_categories` VALUES (844, 'C2619', '锌锰电池', 0);
INSERT INTO `main_categories` VALUES (845, 'C2618', '铅蓄电池', 0);
INSERT INTO `main_categories` VALUES (846, 'C2617', '镍氢电池', 0);
INSERT INTO `main_categories` VALUES (847, 'C2616', '锂离子电池', 0);
INSERT INTO `main_categories` VALUES (848, 'C2615', '其他电工器材', 0);
INSERT INTO `main_categories` VALUES (849, 'C2614', '绝缘制品', 0);
INSERT INTO `main_categories` VALUES (850, 'C2613', '光缆', 0);
INSERT INTO `main_categories` VALUES (851, 'C2612', '光纤', 0);
INSERT INTO `main_categories` VALUES (852, 'C2611', '电线、电缆', 0);
INSERT INTO `main_categories` VALUES (853, 'C2610', '其他输配电及控制设备', 0);
INSERT INTO `main_categories` VALUES (854, 'C2609', '光伏设备及元器件', 0);
INSERT INTO `main_categories` VALUES (855, 'C2608', '电力电子元器件', 0);
INSERT INTO `main_categories` VALUES (856, 'C2607', '配电开关控制设备', 0);
INSERT INTO `main_categories` VALUES (857, 'C2606', '电容器及其配套设备', 0);
INSERT INTO `main_categories` VALUES (858, 'C2605', '变压器、整流器和电感器', 0);
INSERT INTO `main_categories` VALUES (859, 'C2604', '其他电机', 0);
INSERT INTO `main_categories` VALUES (860, 'C2603', '微特电机及组件', 0);
INSERT INTO `main_categories` VALUES (861, 'C2602', '电动机', 0);
INSERT INTO `main_categories` VALUES (862, 'C2601', '发电机及发电机组', 0);
INSERT INTO `main_categories` VALUES (863, 'C2530', '其他未列明运输设备', 0);
INSERT INTO `main_categories` VALUES (864, 'C2529', '水下救捞装备', 0);
INSERT INTO `main_categories` VALUES (865, 'C2528', '潜水装备', 0);
INSERT INTO `main_categories` VALUES (866, 'C2527', '非公路休闲车及零配件', 0);
INSERT INTO `main_categories` VALUES (867, 'C2526', '助动车', 0);
INSERT INTO `main_categories` VALUES (868, 'C2525', '残疾人座车', 0);
INSERT INTO `main_categories` VALUES (869, 'C2524', '自行车', 0);
INSERT INTO `main_categories` VALUES (870, 'C2523', '摩托车零部件及配件', 0);
INSERT INTO `main_categories` VALUES (871, 'C2522', '摩托车整车', 0);
INSERT INTO `main_categories` VALUES (872, 'C2521', '其他航空航天器', 0);
INSERT INTO `main_categories` VALUES (873, 'C2520', '航空相关设备', 0);
INSERT INTO `main_categories` VALUES (874, 'C2519', '航天相关设备', 0);
INSERT INTO `main_categories` VALUES (875, 'C2518', '航天器及运载火箭', 0);
INSERT INTO `main_categories` VALUES (876, 'C2517', '飞机', 0);
INSERT INTO `main_categories` VALUES (877, 'C2516', '航标器材及其他相关装置', 0);
INSERT INTO `main_categories` VALUES (878, 'C2515', '海洋工程装备', 0);
INSERT INTO `main_categories` VALUES (879, 'C2514', '船舶拆除', 0);
INSERT INTO `main_categories` VALUES (880, 'C2513', '船舶改装', 0);
INSERT INTO `main_categories` VALUES (881, 'C2512', '船用配套设备', 0);
INSERT INTO `main_categories` VALUES (882, 'C2511', '娱乐船和运动船', 0);
INSERT INTO `main_categories` VALUES (883, 'C2510', '非金属船舶', 0);
INSERT INTO `main_categories` VALUES (884, 'C2509', '金属船舶', 0);
INSERT INTO `main_categories` VALUES (885, 'C2508', '城市轨道交通设备', 0);
INSERT INTO `main_categories` VALUES (886, 'C2507', '其他铁路运输设备', 0);
INSERT INTO `main_categories` VALUES (887, 'C2506', '铁路专用设备及器材、配件', 0);
INSERT INTO `main_categories` VALUES (888, 'C2505', '铁路机车车辆配件', 0);
INSERT INTO `main_categories` VALUES (889, 'C2504', '高铁设备、配件', 0);
INSERT INTO `main_categories` VALUES (890, 'C2503', '窄轨机车车辆', 0);
INSERT INTO `main_categories` VALUES (891, 'C2502', '铁路机车车辆', 0);
INSERT INTO `main_categories` VALUES (892, 'C2501', '高铁车组', 0);
INSERT INTO `main_categories` VALUES (893, 'C2408', '汽车零部件及配件', 0);
INSERT INTO `main_categories` VALUES (894, 'C2407', '汽车车身、挂车', 0);
INSERT INTO `main_categories` VALUES (895, 'C2406', '电车', 0);
INSERT INTO `main_categories` VALUES (896, 'C2405', '低速汽车', 0);
INSERT INTO `main_categories` VALUES (897, 'C2404', '改装汽车', 0);
INSERT INTO `main_categories` VALUES (898, 'C2403', '汽车用发动机', 0);
INSERT INTO `main_categories` VALUES (899, 'C2402', '新能源车整车', 0);
INSERT INTO `main_categories` VALUES (900, 'C2401', '汽柴油车整车', 0);
INSERT INTO `main_categories` VALUES (901, 'C2358', '饲料生产专用设备', 0);
INSERT INTO `main_categories` VALUES (902, 'C2357', '食品制造机械', 0);
INSERT INTO `main_categories` VALUES (903, 'C2356', '食品、饮料、烟草专用生产设备零件', 0);
INSERT INTO `main_categories` VALUES (904, 'C2355', '非金属相关成型、加工机械', 0);
INSERT INTO `main_categories` VALUES (905, 'C2354', '金属处理机械', 0);
INSERT INTO `main_categories` VALUES (906, 'C2353', '酒及饮料加工机械', 0);
INSERT INTO `main_categories` VALUES (907, 'C2352', '邮政专用机械及器材', 0);
INSERT INTO `main_categories` VALUES (908, 'C2351', '营林及木竹采伐机械', 0);
INSERT INTO `main_categories` VALUES (909, 'C2350', '航空、航天设备，相关专用设备', 0);
INSERT INTO `main_categories` VALUES (910, 'C2349', '纺织专用设备', 0);
INSERT INTO `main_categories` VALUES (911, 'C2348', '社会公共安全设备及器材', 0);
INSERT INTO `main_categories` VALUES (912, 'C2347', '硬质材料加工机床及其零件', 0);
INSERT INTO `main_categories` VALUES (913, 'C2346', '矿山专用设备', 0);
INSERT INTO `main_categories` VALUES (914, 'C2345', '石油钻探、开采专用设备', 0);
INSERT INTO `main_categories` VALUES (915, 'C2344', '皮革、毛皮及其制品加工专用设备', 0);
INSERT INTO `main_categories` VALUES (916, 'C2343', '畜牧机械', 0);
INSERT INTO `main_categories` VALUES (917, 'C2342', '电工机械专用设备', 0);
INSERT INTO `main_categories` VALUES (918, 'C2341', '电子工业专用设备', 0);
INSERT INTO `main_categories` VALUES (919, 'C2340', '玻璃、陶瓷制品生产专用设备', 0);
INSERT INTO `main_categories` VALUES (920, 'C2339', '环境污染防治专用设备', 0);
INSERT INTO `main_categories` VALUES (921, 'C2338', '照明器具生产专用设备', 0);
INSERT INTO `main_categories` VALUES (922, 'C2337', '烟草、盐加工机械', 0);
INSERT INTO `main_categories` VALUES (923, 'C2336', '炼油、化工生产专用设备', 0);
INSERT INTO `main_categories` VALUES (924, 'C2335', '渔业捕捞养殖机械', 0);
INSERT INTO `main_categories` VALUES (925, 'C2334', '水资源专用机械', 0);
INSERT INTO `main_categories` VALUES (926, 'C2333', '武器、弹药及其零件', 0);
INSERT INTO `main_categories` VALUES (927, 'C2332', '橡胶加工专用设备', 0);
INSERT INTO `main_categories` VALUES (928, 'C2331', '模具', 0);
INSERT INTO `main_categories` VALUES (929, 'C2330', '机械治疗及病房护理设备', 0);
INSERT INTO `main_categories` VALUES (930, 'C2329', '机械化农业及园艺机具', 0);
INSERT INTO `main_categories` VALUES (931, 'C2328', '机器人及具有独立功能专用机械', 0);
INSERT INTO `main_categories` VALUES (932, 'C2327', '木材加工、处理机械', 0);
INSERT INTO `main_categories` VALUES (933, 'C2326', '服装、鞋帽加工机械', 0);
INSERT INTO `main_categories` VALUES (934, 'C2325', '日用化工专用设备', 0);
INSERT INTO `main_categories` VALUES (935, 'C2324', '搪瓷制品，相关日用品生产设备', 0);
INSERT INTO `main_categories` VALUES (936, 'C2323', '拖拉机及农林牧渔用挂车', 0);
INSERT INTO `main_categories` VALUES (937, 'C2322', '建筑材料及制品专用生产机械', 0);
INSERT INTO `main_categories` VALUES (938, 'C2321', '建筑工程用机械', 0);
INSERT INTO `main_categories` VALUES (939, 'C2320', '塑料加工专用设备', 0);
INSERT INTO `main_categories` VALUES (940, 'C2319', '地质勘查专用设备', 0);
INSERT INTO `main_categories` VALUES (941, 'C2318', '商业、饮食、服务专用设备', 0);
INSERT INTO `main_categories` VALUES (942, 'C2317', '口腔科用设备及器具', 0);
INSERT INTO `main_categories` VALUES (943, 'C2316', '印刷专用设备', 0);
INSERT INTO `main_categories` VALUES (944, 'C2315', '医疗仪器设备及器械', 0);
INSERT INTO `main_categories` VALUES (945, 'C2314', '医疗、外科及兽医用器械', 0);
INSERT INTO `main_categories` VALUES (946, 'C2313', '医疗、外科、牙科或兽医用家具', 0);
INSERT INTO `main_categories` VALUES (947, 'C2312', '医用消毒灭菌设备', 0);
INSERT INTO `main_categories` VALUES (948, 'C2311', '制药专用设备', 0);
INSERT INTO `main_categories` VALUES (949, 'C2310', '制浆和造纸专用设备', 0);
INSERT INTO `main_categories` VALUES (950, 'C2309', '冶金专用设备', 0);
INSERT INTO `main_categories` VALUES (951, 'C2308', '农林牧渔机械零配件', 0);
INSERT INTO `main_categories` VALUES (952, 'C2307', '农产品加工专用设备', 0);
INSERT INTO `main_categories` VALUES (953, 'C2306', '农产品初加工机械', 0);
INSERT INTO `main_categories` VALUES (954, 'C2305', '其他专用设备及零部件', 0);
INSERT INTO `main_categories` VALUES (955, 'C2304', '假肢、人工器官及植（介）入器械', 0);
INSERT INTO `main_categories` VALUES (956, 'C2303', '信息化学品生产设备', 0);
INSERT INTO `main_categories` VALUES (957, 'C2302', '交通安全及管制专用设备', 0);
INSERT INTO `main_categories` VALUES (958, 'C2301', '乳品加工机械', 0);
INSERT INTO `main_categories` VALUES (959, 'C2240', '齿轮、传动轴和驱动部件', 0);
INSERT INTO `main_categories` VALUES (960, 'C2239', '风机、风扇及类似设备', 0);
INSERT INTO `main_categories` VALUES (961, 'C2238', '风动和电动工具', 0);
INSERT INTO `main_categories` VALUES (962, 'C2237', '非电力相关原动机', 0);
INSERT INTO `main_categories` VALUES (963, 'C2236', '阀门和龙头', 0);
INSERT INTO `main_categories` VALUES (964, 'C2235', '锻件、粉末冶金件', 0);
INSERT INTO `main_categories` VALUES (965, 'C2234', '锅炉及辅助设备', 0);
INSERT INTO `main_categories` VALUES (966, 'C2233', '金属非切削、成形加工机械', 0);
INSERT INTO `main_categories` VALUES (967, 'C2232', '金属铸件', 0);
INSERT INTO `main_categories` VALUES (968, 'C2231', '金属成形机床', 0);
INSERT INTO `main_categories` VALUES (969, 'C2230', '金属切削机床', 0);
INSERT INTO `main_categories` VALUES (970, 'C2229', '连续搬运设备', 0);
INSERT INTO `main_categories` VALUES (971, 'C2228', '轻小型起重设备', 0);
INSERT INTO `main_categories` VALUES (972, 'C2227', '轴承及其零件', 0);
INSERT INTO `main_categories` VALUES (973, 'C2226', '起重机', 0);
INSERT INTO `main_categories` VALUES (974, 'C2225', '衡器（秤）', 0);
INSERT INTO `main_categories` VALUES (975, 'C2224', '衡器零配件', 0);
INSERT INTO `main_categories` VALUES (976, 'C2223', '立体仓库设备，相关物料搬运设备', 0);
INSERT INTO `main_categories` VALUES (977, 'C2222', '窑炉、熔炉及电炉', 0);
INSERT INTO `main_categories` VALUES (978, 'C2221', '真空应用设备', 0);
INSERT INTO `main_categories` VALUES (979, 'C2220', '电梯、自动扶梯及升降机', 0);
INSERT INTO `main_categories` VALUES (980, 'C2219', '焊接设备', 0);
INSERT INTO `main_categories` VALUES (981, 'C2218', '液压元件、系统及装置', 0);
INSERT INTO `main_categories` VALUES (982, 'C2217', '液体气体过滤、净化机械', 0);
INSERT INTO `main_categories` VALUES (983, 'C2216', '泵及液体提升机', 0);
INSERT INTO `main_categories` VALUES (984, 'C2215', '汽轮机、燃气轮机', 0);
INSERT INTO `main_categories` VALUES (985, 'C2214', '水轮机及辅机', 0);
INSERT INTO `main_categories` VALUES (986, 'C2213', '气动元件、系统及装置', 0);
INSERT INTO `main_categories` VALUES (987, 'C2212', '气体压缩机', 0);
INSERT INTO `main_categories` VALUES (988, 'C2211', '气体分离及液化设备', 0);
INSERT INTO `main_categories` VALUES (989, 'C2210', '机床附件及辅助装置', 0);
INSERT INTO `main_categories` VALUES (990, 'C2209', '数控机床及加工机械', 0);
INSERT INTO `main_categories` VALUES (991, 'C2208', '工商用制冷、空调设备', 0);
INSERT INTO `main_categories` VALUES (992, 'C2207', '工业车辆', 0);
INSERT INTO `main_categories` VALUES (993, 'C2206', '密封垫及类似接合衬垫', 0);
INSERT INTO `main_categories` VALUES (994, 'C2205', '喷枪及类似器具', 0);
INSERT INTO `main_categories` VALUES (995, 'C2204', '发动机', 0);
INSERT INTO `main_categories` VALUES (996, 'C2203', '包装专用设备', 0);
INSERT INTO `main_categories` VALUES (997, 'C2202', '利用温度变化加工机械', 0);
INSERT INTO `main_categories` VALUES (998, 'C2201', '其他通用设备和零件', 0);
INSERT INTO `main_categories` VALUES (999, 'C2129', '其他未列明金属制品', 0);
INSERT INTO `main_categories` VALUES (1000, 'C2128', '交通及公共管理用金属标牌', 0);
INSERT INTO `main_categories` VALUES (1001, 'C2127', '锻件及粉末冶金制品', 0);
INSERT INTO `main_categories` VALUES (1002, 'C2126', '有色金属', 0);
INSERT INTO `main_categories` VALUES (1003, 'C2125', '黑色金属', 0);
INSERT INTO `main_categories` VALUES (1004, 'C2124', '其他金属制日用品', 0);
INSERT INTO `main_categories` VALUES (1005, 'C2123', '金属制卫生器具', 0);
INSERT INTO `main_categories` VALUES (1006, 'C2122', '金属制餐具和器皿', 0);
INSERT INTO `main_categories` VALUES (1007, 'C2121', '金属制厨房用器具', 0);
INSERT INTO `main_categories` VALUES (1008, 'C2120', '搪瓷日用品及其他搪瓷制品', 0);
INSERT INTO `main_categories` VALUES (1009, 'C2119', '搪瓷卫生洁具', 0);
INSERT INTO `main_categories` VALUES (1010, 'C2118', '建筑装饰搪瓷制品', 0);
INSERT INTO `main_categories` VALUES (1011, 'C2117', '生产专用搪瓷制品', 0);
INSERT INTO `main_categories` VALUES (1012, 'C2116', '金属表面处理及热处理', 0);
INSERT INTO `main_categories` VALUES (1013, 'C2115', '其他建筑、安全用金属制品', 0);
INSERT INTO `main_categories` VALUES (1014, 'C2114', '安全、消防用金属制品', 0);
INSERT INTO `main_categories` VALUES (1015, 'C2113', '建筑装饰及水暖管道零件', 0);
INSERT INTO `main_categories` VALUES (1016, 'C2112', '建筑、家具用金属配件', 0);
INSERT INTO `main_categories` VALUES (1017, 'C2111', '金属丝绳及其制品', 0);
INSERT INTO `main_categories` VALUES (1018, 'C2110', '金属包装容器及材料', 0);
INSERT INTO `main_categories` VALUES (1019, 'C2109', '金属压力容器', 0);
INSERT INTO `main_categories` VALUES (1020, 'C2108', '集装箱', 0);
INSERT INTO `main_categories` VALUES (1021, 'C2107', '其他金属工具', 0);
INSERT INTO `main_categories` VALUES (1022, 'C2106', '刀剪及类似日用金属工具', 0);
INSERT INTO `main_categories` VALUES (1023, 'C2105', '农用及园林用金属工具', 0);
INSERT INTO `main_categories` VALUES (1024, 'C2104', '手工具', 0);
INSERT INTO `main_categories` VALUES (1025, 'C2103', '切削工具', 0);
INSERT INTO `main_categories` VALUES (1026, 'C2102', '金属门窗', 0);
INSERT INTO `main_categories` VALUES (1027, 'C2101', '金属结构', 0);
INSERT INTO `main_categories` VALUES (1028, 'C2016', '有色金属合金', 0);
INSERT INTO `main_categories` VALUES (1029, 'C2015', '其他稀有金属', 0);
INSERT INTO `main_categories` VALUES (1030, 'C2014', '稀土金属', 0);
INSERT INTO `main_categories` VALUES (1031, 'C2013', '钨钼', 0);
INSERT INTO `main_categories` VALUES (1032, 'C2012', '其他贵金属', 0);
INSERT INTO `main_categories` VALUES (1033, 'C2011', '银', 0);
INSERT INTO `main_categories` VALUES (1034, 'C2010', '金', 0);
INSERT INTO `main_categories` VALUES (1035, 'C2009', '其他常用有色金属', 0);
INSERT INTO `main_categories` VALUES (1036, 'C2008', '硅', 0);
INSERT INTO `main_categories` VALUES (1037, 'C2007', '镁', 0);
INSERT INTO `main_categories` VALUES (1038, 'C2006', '铝', 0);
INSERT INTO `main_categories` VALUES (1039, 'C2005', '锑', 0);
INSERT INTO `main_categories` VALUES (1040, 'C2004', '锡', 0);
INSERT INTO `main_categories` VALUES (1041, 'C2003', '镍钴', 0);
INSERT INTO `main_categories` VALUES (1042, 'C2002', '铅锌', 0);
INSERT INTO `main_categories` VALUES (1043, 'C2001', '铜', 0);
INSERT INTO `main_categories` VALUES (1044, 'C1904', '铁合金', 0);
INSERT INTO `main_categories` VALUES (1045, 'C1903', '钢压延', 0);
INSERT INTO `main_categories` VALUES (1046, 'C1902', '钢', 0);
INSERT INTO `main_categories` VALUES (1047, 'C1901', '铁', 0);
INSERT INTO `main_categories` VALUES (1048, 'C1837', '其他非金属矿物制品', 0);
INSERT INTO `main_categories` VALUES (1049, 'C1836', '石墨及碳素制品', 0);
INSERT INTO `main_categories` VALUES (1050, 'C1835', '耐火陶瓷制品及其他耐火材料', 0);
INSERT INTO `main_categories` VALUES (1051, 'C1834', '云母制品', 0);
INSERT INTO `main_categories` VALUES (1052, 'C1833', '石棉制品', 0);
INSERT INTO `main_categories` VALUES (1053, 'C1832', '其他陶瓷制品', 0);
INSERT INTO `main_categories` VALUES (1054, 'C1831', '园艺陶瓷', 0);
INSERT INTO `main_categories` VALUES (1055, 'C1830', '陈设艺术陶瓷', 0);
INSERT INTO `main_categories` VALUES (1056, 'C1829', '日用陶瓷制品', 0);
INSERT INTO `main_categories` VALUES (1057, 'C1828', '特种陶瓷制品', 0);
INSERT INTO `main_categories` VALUES (1058, 'C1827', '卫生陶瓷制品', 0);
INSERT INTO `main_categories` VALUES (1059, 'C1826', '建筑陶瓷制品', 0);
INSERT INTO `main_categories` VALUES (1060, 'C1825', '玻璃纤维增强塑料制品', 0);
INSERT INTO `main_categories` VALUES (1061, 'C1824', '玻璃纤维及制品', 0);
INSERT INTO `main_categories` VALUES (1062, 'C1823', '其他玻璃制品', 0);
INSERT INTO `main_categories` VALUES (1063, 'C1822', '制镜及类似品', 0);
INSERT INTO `main_categories` VALUES (1064, 'C1821', '玻璃保温容器', 0);
INSERT INTO `main_categories` VALUES (1065, 'C1820', '玻璃包装容器', 0);
INSERT INTO `main_categories` VALUES (1066, 'C1819', '日用玻璃', 0);
INSERT INTO `main_categories` VALUES (1067, 'C1818', '玻璃仪器', 0);
INSERT INTO `main_categories` VALUES (1068, 'C1817', '光学玻璃', 0);
INSERT INTO `main_categories` VALUES (1069, 'C1816', '技术玻璃制品', 0);
INSERT INTO `main_categories` VALUES (1070, 'C1815', '其他玻璃', 0);
INSERT INTO `main_categories` VALUES (1071, 'C1814', '特种玻璃', 0);
INSERT INTO `main_categories` VALUES (1072, 'C1813', '平板玻璃', 0);
INSERT INTO `main_categories` VALUES (1073, 'C1812', '其他建筑材料', 0);
INSERT INTO `main_categories` VALUES (1074, 'C1811', '隔热和隔音材料', 0);
INSERT INTO `main_categories` VALUES (1075, 'C1810', '防水建筑材料', 0);
INSERT INTO `main_categories` VALUES (1076, 'C1809', '建筑用石', 0);
INSERT INTO `main_categories` VALUES (1077, 'C1808', '粘土砖瓦及建筑砌块', 0);
INSERT INTO `main_categories` VALUES (1078, 'C1807', '其他水泥类似制品', 0);
INSERT INTO `main_categories` VALUES (1079, 'C1806', '轻质建筑材料', 0);
INSERT INTO `main_categories` VALUES (1080, 'C1805', '石棉水泥', 0);
INSERT INTO `main_categories` VALUES (1081, 'C1804', '砼结构构件', 0);
INSERT INTO `main_categories` VALUES (1082, 'C1803', '水泥制品', 0);
INSERT INTO `main_categories` VALUES (1083, 'C1802', '石灰和石膏', 0);
INSERT INTO `main_categories` VALUES (1084, 'C1801', '水泥', 0);
INSERT INTO `main_categories` VALUES (1085, 'C1716', '塑料零件及其他塑料制品', 0);
INSERT INTO `main_categories` VALUES (1086, 'C1715', '人造草坪', 0);
INSERT INTO `main_categories` VALUES (1087, 'C1714', '日用塑料制品', 0);
INSERT INTO `main_categories` VALUES (1088, 'C1713', '塑料包装箱及容器', 0);
INSERT INTO `main_categories` VALUES (1089, 'C1712', '塑料人造革、合成革', 0);
INSERT INTO `main_categories` VALUES (1090, 'C1711', '泡沫塑料', 0);
INSERT INTO `main_categories` VALUES (1091, 'C1710', '塑料丝、绳及编织品', 0);
INSERT INTO `main_categories` VALUES (1092, 'C1709', '塑料板、管、型材', 0);
INSERT INTO `main_categories` VALUES (1093, 'C1708', '塑料薄膜', 0);
INSERT INTO `main_categories` VALUES (1094, 'C1707', '其他橡胶制品', 0);
INSERT INTO `main_categories` VALUES (1095, 'C1706', '运动场地用塑胶', 0);
INSERT INTO `main_categories` VALUES (1096, 'C1705', '日用及医用橡胶', 0);
INSERT INTO `main_categories` VALUES (1097, 'C1704', '再生橡胶', 0);
INSERT INTO `main_categories` VALUES (1098, 'C1703', '橡胶零件', 0);
INSERT INTO `main_categories` VALUES (1099, 'C1702', '橡胶板、管、带', 0);
INSERT INTO `main_categories` VALUES (1100, 'C1701', '轮胎', 0);
INSERT INTO `main_categories` VALUES (1101, 'C1605', '生物基材料', 0);
INSERT INTO `main_categories` VALUES (1102, 'C1604', '合成纤维', 0);
INSERT INTO `main_categories` VALUES (1103, 'C1603', '化学纤维用浆粕', 0);
INSERT INTO `main_categories` VALUES (1104, 'C1602', '化学纤维加工丝', 0);
INSERT INTO `main_categories` VALUES (1105, 'C1601', '人造纤维（纤维素纤维）', 0);
INSERT INTO `main_categories` VALUES (1106, 'C1508', '生物化学药品', 0);
INSERT INTO `main_categories` VALUES (1107, 'C1507', '生物化学制品', 0);
INSERT INTO `main_categories` VALUES (1108, 'C1506', '医用材料', 0);
INSERT INTO `main_categories` VALUES (1109, 'C1505', '化学药品原药', 0);
INSERT INTO `main_categories` VALUES (1110, 'C1504', '化学药品制剂', 0);
INSERT INTO `main_categories` VALUES (1111, 'C1503', '兽用药品', 0);
INSERT INTO `main_categories` VALUES (1112, 'C1502', '中药饮片', 0);
INSERT INTO `main_categories` VALUES (1113, 'C1501', '中成药', 0);
INSERT INTO `main_categories` VALUES (1114, 'C1427', '香精', 0);
INSERT INTO `main_categories` VALUES (1115, 'C1426', '香料', 0);
INSERT INTO `main_categories` VALUES (1116, 'C1425', '颜料', 0);
INSERT INTO `main_categories` VALUES (1117, 'C1424', '贵金属化合物，相关基础化学品', 0);
INSERT INTO `main_categories` VALUES (1118, 'C1423', '肥皂及合成洗涤剂', 0);
INSERT INTO `main_categories` VALUES (1119, 'C1422', '美容、护肤、护发产品', 0);
INSERT INTO `main_categories` VALUES (1120, 'C1421', '生物农药及微生物农药', 0);
INSERT INTO `main_categories` VALUES (1121, 'C1420', '环境污染处理专用药剂材料', 0);
INSERT INTO `main_categories` VALUES (1122, 'C1419', '焊接用制品', 0);
INSERT INTO `main_categories` VALUES (1123, 'C1418', '炸药、烟火及火工产品', 0);
INSERT INTO `main_categories` VALUES (1124, 'C1417', '涂料', 0);
INSERT INTO `main_categories` VALUES (1125, 'C1416', '油墨及类似产品', 0);
INSERT INTO `main_categories` VALUES (1126, 'C1415', '染料类', 0);
INSERT INTO `main_categories` VALUES (1127, 'C1414', '林产化学产品', 0);
INSERT INTO `main_categories` VALUES (1128, 'C1413', '有机肥料及微生物肥料', 0);
INSERT INTO `main_categories` VALUES (1129, 'C1412', '有机化学原料', 0);
INSERT INTO `main_categories` VALUES (1130, 'C1411', '无机基础化学原料', 0);
INSERT INTO `main_categories` VALUES (1131, 'C1410', '密封用填料及类似品', 0);
INSERT INTO `main_categories` VALUES (1132, 'C1409', '合成材料', 0);
INSERT INTO `main_categories` VALUES (1133, 'C1408', '口腔清洁护理用品', 0);
INSERT INTO `main_categories` VALUES (1134, 'C1407', '化学试剂和助剂', 0);
INSERT INTO `main_categories` VALUES (1135, 'C1406', '化学肥料', 0);
INSERT INTO `main_categories` VALUES (1136, 'C1405', '化学农药', 0);
INSERT INTO `main_categories` VALUES (1137, 'C1404', '动物炭黑、动物胶及其衍生物', 0);
INSERT INTO `main_categories` VALUES (1138, 'C1403', '其他化学制品', 0);
INSERT INTO `main_categories` VALUES (1139, 'C1402', '信息化学品', 0);
INSERT INTO `main_categories` VALUES (1140, 'C1401', '专项化学用品', 0);
INSERT INTO `main_categories` VALUES (1141, 'C1310', '生物质致密成型燃料', 0);
INSERT INTO `main_categories` VALUES (1142, 'C1309', '生物质液体燃料', 0);
INSERT INTO `main_categories` VALUES (1143, 'C1308', '核燃料', 0);
INSERT INTO `main_categories` VALUES (1144, 'C1307', '其他煤炭', 0);
INSERT INTO `main_categories` VALUES (1145, 'C1306', '煤制品', 0);
INSERT INTO `main_categories` VALUES (1146, 'C1305', '煤制液体燃料', 0);
INSERT INTO `main_categories` VALUES (1147, 'C1304', '煤制合成气', 0);
INSERT INTO `main_categories` VALUES (1148, 'C1303', '炼焦', 0);
INSERT INTO `main_categories` VALUES (1149, 'C1302', '其他原油', 0);
INSERT INTO `main_categories` VALUES (1150, 'C1301', '原油加工及石油制品', 0);
INSERT INTO `main_categories` VALUES (1151, 'C1213', '雕塑工艺品', 0);
INSERT INTO `main_categories` VALUES (1152, 'C1212', '金属工艺品', 0);
INSERT INTO `main_categories` VALUES (1153, 'C1211', '花画工艺品', 0);
INSERT INTO `main_categories` VALUES (1154, 'C1210', '珠宝首饰及有关物品', 0);
INSERT INTO `main_categories` VALUES (1155, 'C1209', '漆器工艺品', 0);
INSERT INTO `main_categories` VALUES (1156, 'C1208', '日用杂品', 0);
INSERT INTO `main_categories` VALUES (1157, 'C1207', '抽纱刺绣工艺品', 0);
INSERT INTO `main_categories` VALUES (1158, 'C1206', '宠物用品', 0);
INSERT INTO `main_categories` VALUES (1159, 'C1205', '天然植物纤维及人造纤维编织工艺品', 0);
INSERT INTO `main_categories` VALUES (1160, 'C1204', '地毯、挂毯类工艺品', 0);
INSERT INTO `main_categories` VALUES (1161, 'C1203', '剧装道具，相关工艺美术品', 0);
INSERT INTO `main_categories` VALUES (1162, 'C1202', '其他未列明制造产品', 0);
INSERT INTO `main_categories` VALUES (1163, 'C1201', '保健休闲用品', 0);
INSERT INTO `main_categories` VALUES (1164, 'C1103', '记录媒介复制', 0);
INSERT INTO `main_categories` VALUES (1165, 'C1102', '装订及印刷相关服务', 0);
INSERT INTO `main_categories` VALUES (1166, 'C1101', '印刷', 0);
INSERT INTO `main_categories` VALUES (1167, 'C1007', '其他纸制品', 0);
INSERT INTO `main_categories` VALUES (1168, 'C1006', '纸和纸板容器', 0);
INSERT INTO `main_categories` VALUES (1169, 'C1005', '加工纸', 0);
INSERT INTO `main_categories` VALUES (1170, 'C1004', '手工纸', 0);
INSERT INTO `main_categories` VALUES (1171, 'C1003', '机制纸及纸板', 0);
INSERT INTO `main_categories` VALUES (1172, 'C1002', '非木竹浆', 0);
INSERT INTO `main_categories` VALUES (1173, 'C1001', '木竹浆', 0);
INSERT INTO `main_categories` VALUES (1174, 'C0902', '家具配件', 0);
INSERT INTO `main_categories` VALUES (1175, 'C0901', '家具', 0);
INSERT INTO `main_categories` VALUES (1176, 'C0810', '锯材', 0);
INSERT INTO `main_categories` VALUES (1177, 'C0809', '软木及软木制品', 0);
INSERT INTO `main_categories` VALUES (1178, 'C0808', '竹制品', 0);
INSERT INTO `main_categories` VALUES (1179, 'C0807', '棕、藤、草及类似制品', 0);
INSERT INTO `main_categories` VALUES (1180, 'C0806', '木片、木粒加工产品', 0);
INSERT INTO `main_categories` VALUES (1181, 'C0805', '木容器', 0);
INSERT INTO `main_categories` VALUES (1182, 'C0804', '木制餐具，相关木制品', 0);
INSERT INTO `main_categories` VALUES (1183, 'C0803', '建筑用木料及加工木材组件', 0);
INSERT INTO `main_categories` VALUES (1184, 'C0802', '人造板', 0);
INSERT INTO `main_categories` VALUES (1185, 'C0801', '二次加工材，相关板材', 0);
INSERT INTO `main_categories` VALUES (1186, 'C0705', '鞋', 0);
INSERT INTO `main_categories` VALUES (1187, 'C0704', '羽毛（绒）', 0);
INSERT INTO `main_categories` VALUES (1188, 'C0703', '毛皮鞣制及制品', 0);
INSERT INTO `main_categories` VALUES (1189, 'C0702', '皮革制品', 0);
INSERT INTO `main_categories` VALUES (1190, 'C0701', '皮革', 0);
INSERT INTO `main_categories` VALUES (1191, 'C0603', '服饰', 0);
INSERT INTO `main_categories` VALUES (1192, 'C0602', '针织或钩针编织服装', 0);
INSERT INTO `main_categories` VALUES (1193, 'C0601', '机织服装', 0);
INSERT INTO `main_categories` VALUES (1194, 'C0515', '麻纺织品', 0);
INSERT INTO `main_categories` VALUES (1195, 'C0514', '针织、编织物', 0);
INSERT INTO `main_categories` VALUES (1196, 'C0513', '针织、编织制品', 0);
INSERT INTO `main_categories` VALUES (1197, 'C0512', '纤维纺制线、绳、索、缆', 0);
INSERT INTO `main_categories` VALUES (1198, 'C0511', '浸渍、涂布或包覆处理纺织物', 0);
INSERT INTO `main_categories` VALUES (1199, 'C0510', '油苫布、天篷、遮阳篷及类似品', 0);
INSERT INTO `main_categories` VALUES (1200, 'C0509', '毡呢、包装用织物制品', 0);
INSERT INTO `main_categories` VALUES (1201, 'C0508', '毛纺织、染整加工产品', 0);
INSERT INTO `main_categories` VALUES (1202, 'C0507', '棉、化纤纺织及印染产品', 0);
INSERT INTO `main_categories` VALUES (1203, 'C0506', '日用织物制品', 0);
INSERT INTO `main_categories` VALUES (1204, 'C0505', '无纺布及其制品', 0);
INSERT INTO `main_categories` VALUES (1205, 'C0504', '床上用织物制品', 0);
INSERT INTO `main_categories` VALUES (1206, 'C0503', '围巾、领带、手帕', 0);
INSERT INTO `main_categories` VALUES (1207, 'C0502', '其他纺织产品', 0);
INSERT INTO `main_categories` VALUES (1208, 'C0501', '丝绢纺织及精加工产品', 0);
INSERT INTO `main_categories` VALUES (1209, 'C0403', '其他烟草制品', 0);
INSERT INTO `main_categories` VALUES (1210, 'C0402', '卷烟', 0);
INSERT INTO `main_categories` VALUES (1211, 'C0401', '烟叶复烤', 0);
INSERT INTO `main_categories` VALUES (1212, 'C0313', '精制茶', 0);
INSERT INTO `main_categories` VALUES (1213, 'C0312', '茶饮料及其他饮料', 0);
INSERT INTO `main_categories` VALUES (1214, 'C0311', '固体饮料', 0);
INSERT INTO `main_categories` VALUES (1215, 'C0310', '含乳饮料和植物蛋白饮料', 0);
INSERT INTO `main_categories` VALUES (1216, 'C0309', '果菜汁及果菜汁饮料', 0);
INSERT INTO `main_categories` VALUES (1217, 'C0308', '瓶（罐）装饮用水', 0);
INSERT INTO `main_categories` VALUES (1218, 'C0307', '碳酸饮料', 0);
INSERT INTO `main_categories` VALUES (1219, 'C0306', '其他酒', 0);
INSERT INTO `main_categories` VALUES (1220, 'C0305', '葡萄酒', 0);
INSERT INTO `main_categories` VALUES (1221, 'C0304', '黄酒', 0);
INSERT INTO `main_categories` VALUES (1222, 'C0303', '啤酒', 0);
INSERT INTO `main_categories` VALUES (1223, 'C0302', '白酒', 0);
INSERT INTO `main_categories` VALUES (1224, 'C0301', '酒精', 0);
INSERT INTO `main_categories` VALUES (1225, 'C0224', '其他未列明食品', 0);
INSERT INTO `main_categories` VALUES (1226, 'C0223', '食品及饲料添加剂', 0);
INSERT INTO `main_categories` VALUES (1227, 'C0222', '盐加工', 0);
INSERT INTO `main_categories` VALUES (1228, 'C0221', '冷冻饮品及食用冰', 0);
INSERT INTO `main_categories` VALUES (1229, 'C0220', '保健食品', 0);
INSERT INTO `main_categories` VALUES (1230, 'C0219', '营养食品', 0);
INSERT INTO `main_categories` VALUES (1231, 'C0218', '其他调味品、发酵制品', 0);
INSERT INTO `main_categories` VALUES (1232, 'C0217', '酱油、食醋及类似制品', 0);
INSERT INTO `main_categories` VALUES (1233, 'C0216', '味精', 0);
INSERT INTO `main_categories` VALUES (1234, 'C0215', '其他罐头食品', 0);
INSERT INTO `main_categories` VALUES (1235, 'C0214', '蔬菜、水果罐头', 0);
INSERT INTO `main_categories` VALUES (1236, 'C0213', '水产品罐头', 0);
INSERT INTO `main_categories` VALUES (1237, 'C0212', '肉、禽类罐头', 0);
INSERT INTO `main_categories` VALUES (1238, 'C0211', '其他乳制品', 0);
INSERT INTO `main_categories` VALUES (1239, 'C0210', '乳粉', 0);
INSERT INTO `main_categories` VALUES (1240, 'C0209', '液体乳', 0);
INSERT INTO `main_categories` VALUES (1241, 'C0208', '其他方便食品', 0);
INSERT INTO `main_categories` VALUES (1242, 'C0207', '方便面', 0);
INSERT INTO `main_categories` VALUES (1243, 'C0206', '速冻食品', 0);
INSERT INTO `main_categories` VALUES (1244, 'C0205', '米、面制品', 0);
INSERT INTO `main_categories` VALUES (1245, 'C0204', '蜜饯', 0);
INSERT INTO `main_categories` VALUES (1246, 'C0203', '糖果、巧克力', 0);
INSERT INTO `main_categories` VALUES (1247, 'C0202', '饼干及其他焙烤食品', 0);
INSERT INTO `main_categories` VALUES (1248, 'C0201', '糕点、面包', 0);
INSERT INTO `main_categories` VALUES (1249, 'C0118', '其他未列明农副食品', 0);
INSERT INTO `main_categories` VALUES (1250, 'C0117', '蛋品', 0);
INSERT INTO `main_categories` VALUES (1251, 'C0116', '豆制品制造', 0);
INSERT INTO `main_categories` VALUES (1252, 'C0115', '淀粉及淀粉制品制造', 0);
INSERT INTO `main_categories` VALUES (1253, 'C0114', '水果和坚果', 0);
INSERT INTO `main_categories` VALUES (1254, 'C0113', '食用菌', 0);
INSERT INTO `main_categories` VALUES (1255, 'C0112', '蔬菜', 0);
INSERT INTO `main_categories` VALUES (1256, 'C0111', '水产品', 0);
INSERT INTO `main_categories` VALUES (1257, 'C0110', '肉制品及副产品', 0);
INSERT INTO `main_categories` VALUES (1258, 'C0109', '禽类屠宰', 0);
INSERT INTO `main_categories` VALUES (1259, 'C0108', '牲畜屠宰', 0);
INSERT INTO `main_categories` VALUES (1260, 'C0107', '制糖业', 0);
INSERT INTO `main_categories` VALUES (1261, 'C0106', '非食用植物油', 0);
INSERT INTO `main_categories` VALUES (1262, 'C0105', '食用植物油', 0);
INSERT INTO `main_categories` VALUES (1263, 'C0104', '其他饲料', 0);
INSERT INTO `main_categories` VALUES (1264, 'C0103', '宠物饲料', 0);
INSERT INTO `main_categories` VALUES (1265, 'C0102', '其他谷物磨制', 0);
INSERT INTO `main_categories` VALUES (1266, 'C0101', '谷物', 0);
INSERT INTO `main_categories` VALUES (1267, 'B0703', '天然水', 0);
INSERT INTO `main_categories` VALUES (1268, 'B0702', '地热', 0);
INSERT INTO `main_categories` VALUES (1269, 'B0701', '其他未列明矿产品', 0);
INSERT INTO `main_categories` VALUES (1270, 'B0603', '其他开采专业及辅助性活动', 0);
INSERT INTO `main_categories` VALUES (1271, 'B0602', '石油和天然气开采专业及辅助性活动', 0);
INSERT INTO `main_categories` VALUES (1272, 'B0601', '煤炭开采和洗选专业及辅助性活动', 0);
INSERT INTO `main_categories` VALUES (1273, 'B0510', '其他未列明非金属矿采选', 0);
INSERT INTO `main_categories` VALUES (1274, 'B0509', '宝石、玉石采选', 0);
INSERT INTO `main_categories` VALUES (1275, 'B0508', '石墨、滑石采选', 0);
INSERT INTO `main_categories` VALUES (1276, 'B0507', '石棉、云母矿采选', 0);
INSERT INTO `main_categories` VALUES (1277, 'B0506', '采盐', 0);
INSERT INTO `main_categories` VALUES (1278, 'B0505', '化学矿开采', 0);
INSERT INTO `main_categories` VALUES (1279, 'B0504', '粘土及其他土砂石开采', 0);
INSERT INTO `main_categories` VALUES (1280, 'B0503', '耐火土石开采', 0);
INSERT INTO `main_categories` VALUES (1281, 'B0502', '建筑装饰用石开采', 0);
INSERT INTO `main_categories` VALUES (1282, 'B0501', '石灰石、石膏开采', 0);
INSERT INTO `main_categories` VALUES (1283, 'B0415', '其他稀有金属矿采选', 0);
INSERT INTO `main_categories` VALUES (1284, 'B0414', '放射性金属矿采选', 0);
INSERT INTO `main_categories` VALUES (1285, 'B0413', '稀土金属矿采选', 0);
INSERT INTO `main_categories` VALUES (1286, 'B0412', '钨钼矿采选', 0);
INSERT INTO `main_categories` VALUES (1287, 'B0411', '其他贵金属矿采选', 0);
INSERT INTO `main_categories` VALUES (1288, 'B0410', '银矿采选', 0);
INSERT INTO `main_categories` VALUES (1289, 'B0409', '金矿采选', 0);
INSERT INTO `main_categories` VALUES (1290, 'B0408', '其他常用有色金属矿采选', 0);
INSERT INTO `main_categories` VALUES (1291, 'B0407', '镁矿采选', 0);
INSERT INTO `main_categories` VALUES (1292, 'B0406', '铝矿采选', 0);
INSERT INTO `main_categories` VALUES (1293, 'B0405', '锑矿采选', 0);
INSERT INTO `main_categories` VALUES (1294, 'B0404', '锡矿采选', 0);
INSERT INTO `main_categories` VALUES (1295, 'B0403', '镍钴矿采选', 0);
INSERT INTO `main_categories` VALUES (1296, 'B0402', '铅锌矿采选', 0);
INSERT INTO `main_categories` VALUES (1297, 'B0401', '铜矿采选', 0);
INSERT INTO `main_categories` VALUES (1298, 'B0303', '锰矿', 0);
INSERT INTO `main_categories` VALUES (1299, 'B0302', '铬矿石', 0);
INSERT INTO `main_categories` VALUES (1300, 'B0301', '铁矿石', 0);
INSERT INTO `main_categories` VALUES (1301, 'B0206', '煤层气（煤田）', 0);
INSERT INTO `main_categories` VALUES (1302, 'B0205', '液化天然气', 0);
INSERT INTO `main_categories` VALUES (1303, 'B0204', '油页岩', 0);
INSERT INTO `main_categories` VALUES (1304, 'B0203', '天然气水合物', 0);
INSERT INTO `main_categories` VALUES (1305, 'B0202', '天然气', 0);
INSERT INTO `main_categories` VALUES (1306, 'B0201', '原油', 0);
INSERT INTO `main_categories` VALUES (1307, 'B0103', '洗煤', 0);
INSERT INTO `main_categories` VALUES (1308, 'B0102', '原煤', 0);
INSERT INTO `main_categories` VALUES (1309, 'B0101', '其他煤炭采选产品（低热值燃料）', 0);
INSERT INTO `main_categories` VALUES (1310, 'A0504', '渔业服务', 0);
INSERT INTO `main_categories` VALUES (1311, 'A0503', '畜牧服务', 0);
INSERT INTO `main_categories` VALUES (1312, 'A0502', '林业服务', 0);
INSERT INTO `main_categories` VALUES (1313, 'A0501', '农业服务', 0);
INSERT INTO `main_categories` VALUES (1314, 'A0405', '畜禽产品', 0);
INSERT INTO `main_categories` VALUES (1315, 'A0404', '活牲畜', 0);
INSERT INTO `main_categories` VALUES (1316, 'A0403', '活家禽', 0);
INSERT INTO `main_categories` VALUES (1317, 'A0402', '捕获野生动物', 0);
INSERT INTO `main_categories` VALUES (1318, 'A0401', '其他饲养动物', 0);
INSERT INTO `main_categories` VALUES (1319, 'A0306', '淡水捕捞产品', 0);
INSERT INTO `main_categories` VALUES (1320, 'A0305', '淡水养殖产品种苗', 0);
INSERT INTO `main_categories` VALUES (1321, 'A0304', '淡水养殖产品', 0);
INSERT INTO `main_categories` VALUES (1322, 'A0303', '海水捕捞产品', 0);
INSERT INTO `main_categories` VALUES (1323, 'A0302', '海水养殖产品种苗', 0);
INSERT INTO `main_categories` VALUES (1324, 'A0301', '海水养殖产品', 0);
INSERT INTO `main_categories` VALUES (1325, 'A0204', '育种和育苗', 0);
INSERT INTO `main_categories` VALUES (1326, 'A0203', '竹材采伐产品', 0);
INSERT INTO `main_categories` VALUES (1327, 'A0202', '林产品', 0);
INSERT INTO `main_categories` VALUES (1328, 'A0201', '木材采伐产品', 0);
INSERT INTO `main_categories` VALUES (1329, 'A0119', '香料原料', 0);
INSERT INTO `main_categories` VALUES (1330, 'A0118', '饲料作物', 0);
INSERT INTO `main_categories` VALUES (1331, 'A0117', '豆类', 0);
INSERT INTO `main_categories` VALUES (1332, 'A0116', '谷物', 0);
INSERT INTO `main_categories` VALUES (1333, 'A0115', '薯类', 0);
INSERT INTO `main_categories` VALUES (1334, 'A0114', '蔬菜及食用菌', 0);
INSERT INTO `main_categories` VALUES (1335, 'A0113', '茶及饮料原料', 0);
INSERT INTO `main_categories` VALUES (1336, 'A0112', '花草种', 0);
INSERT INTO `main_categories` VALUES (1337, 'A0111', '花卉', 0);
INSERT INTO `main_categories` VALUES (1338, 'A0110', '糖料', 0);
INSERT INTO `main_categories` VALUES (1339, 'A0109', '盆景及园艺产品', 0);
INSERT INTO `main_categories` VALUES (1340, 'A0108', '生麻', 0);
INSERT INTO `main_categories` VALUES (1341, 'A0107', '油料', 0);
INSERT INTO `main_categories` VALUES (1342, 'A0106', '水生植物类', 0);
INSERT INTO `main_categories` VALUES (1343, 'A0105', '水果及坚果', 0);
INSERT INTO `main_categories` VALUES (1344, 'A0104', '棉花', 0);
INSERT INTO `main_categories` VALUES (1345, 'A0103', '未加工烟草', 0);
INSERT INTO `main_categories` VALUES (1346, 'A0102', '农作物副产品', 0);
INSERT INTO `main_categories` VALUES (1347, 'A0101', '中草药材', 0);

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `material_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物料序号',
  `material_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `calculation_unit` bigint(10) NULL DEFAULT NULL COMMENT '基本计算单位',
  `purchaser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购员',
  `l_updated` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后更新人',
  `l_update_time` date NULL DEFAULT NULL COMMENT '最后更新时间',
  `source_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源系统',
  `enable` bigint(20) NULL DEFAULT NULL COMMENT '是否启用',
  `m_category` bigint(11) NULL DEFAULT NULL COMMENT '主品类',
  `specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `categories_taxes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认税种/税率',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料图片',
  `g_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '毛重',
  `n_weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '净重',
  `weight` bigint(11) NULL DEFAULT NULL COMMENT '重量单位',
  `volume` decimal(10, 2) NULL DEFAULT NULL COMMENT '体积',
  `v_unit` bigint(10) NULL DEFAULT NULL COMMENT '体积单位',
  `abc_attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料ABC属性',
  `avoid_inspect` bigint(20) NULL DEFAULT NULL COMMENT '是否免检',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物料表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (88, '000040', '云服务器', 24, '杨文元', '杨文元', '2023-02-14', '', 1, 80, '2*16GB', '阿里云', '阿里云', NULL, NULL, NULL, NULL, 26, NULL, 36, NULL, 1);
INSERT INTO `material` VALUES (89, '000039', '物理服务器', 24, '杨文元', '杨文元', '2023-02-14', '', 1, 89, '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '戴尔', NULL, NULL, NULL, NULL, 26, NULL, 37, NULL, NULL);
INSERT INTO `material` VALUES (90, '000038', '工业润滑剂', 25, '杨文元', '杨文元', '2023-02-14', 'SRM', 1, 80, '256GB', 'Mobilith SHC 220', 'Shell', NULL, NULL, NULL, NULL, 26, NULL, 38, NULL, NULL);
INSERT INTO `material` VALUES (91, '000037', '聚酯切片', 25, '杨文元', '杨文元', '2023-02-14', 'SRM', 1, 99, '58GB', 'PETG', 'DuPont', NULL, NULL, NULL, NULL, 26, NULL, 38, NULL, NULL);
INSERT INTO `material` VALUES (92, '000036', '复合丝', 25, '杨文元', '杨文元', '2023-02-14', 'SRM', 1, 99, 'DDR3', 'Nylon/Polyeste', 'Lycra（莱卡）', NULL, NULL, NULL, NULL, 26, NULL, 39, NULL, NULL);
INSERT INTO `material` VALUES (93, '000035', '聚乙烯', 25, '杨文元', '杨文元', '2022-12-19', 'SRM', 1, 99, '2400MHz', 'HDPE', 'ExxonMobil', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (94, '000034', '标签打印机', 24, '倪威', '杨文元', '2022-10-13', 'SRM', 1, 104, 'DDR3', 'Zebra GK420d', 'Zebra', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (95, '000033', '白板笔', 22, '倪威', '倪威', '2023-02-14', 'SRM', 1, 103, '35V', 'Expo Dry Erase Markers', 'Expo', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (96, '000032', '空调', 24, '倪威', '杨文元', '2023-02-14', 'SRM', 1, 102, '240-pin', '格力', '格力', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (97, '000031', '转换器', 22, '杨文元', '倪威', '2023-02-19', 'SAP', 1, 100, '2400MHz', 'HDMI转VGA转换器', 'Anker', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, 0);
INSERT INTO `material` VALUES (98, '000030', '无人机', 24, '倪威', '杨文元', '2023-02-19', 'SRM', 1, 101, 'ECC', 'DJI Mavic系列', 'DJI', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (99, '000028', '涡轮机油', 25, '杨文元', '倪威', '2023-02-19', 'SAP', 1, 104, '240-pin', '5W-30', 'Castrol', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (100, '000027', '充电桩', 24, '刘冲', '倪威', '2023-02-19', 'SAP', 1, 98, 'DDR3', 'ABB Terra 53', 'Tesla', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (101, '000026', '绿植', 23, '杨文元', '倪威', '2023-02-13', 'SRM', 1, 95, 'CL14', '吊兰', 'The Sill', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (102, '000025', '车载充电器', 33, '杨文元', '倪威', '2023-02-13', 'SRM', 1, 96, '2400MHz', NULL, 'Anker', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (103, '000024', '聚丙烯', 32, '杨文元', '倪威', '2023-02-13', 'SRM', 1, 97, 'ECC', 'PP-H', '东丽集团', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (104, '000023', '保洁服装', 32, '刘冲', '倪威', '2023-02-13', 'SRM', 1, 91, 'DDR3', 'L', '3M', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (105, '000022', '汽车诊断仪', 34, '刘冲', '倪威', '2023-02-13', 'SRM', 1, 101, '35V', 'Launch X431 V+', '朗科', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (106, '000021', '办公桌', 24, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 104, 'DDR3', 'L型办公桌', '赫曼米勒', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (107, '000020', '一次性口罩', 24, '杨文元', '杨文元', '2023-02-13', 'SRM', 1, 91, '240-pin', '医用一次性口罩', '3M', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (108, '000019', '儿童车模', 33, '杨文元', '杨文元', '2023-02-13', 'SRM', 1, 97, '35V', 'Fisher-Price Power Wheels Wild Thing', '宝路高', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (109, '000018', '羽毛球拍', 32, '杨文元', '杨文元', '2023-02-13', 'SRM', 1, 97, '2400MHz', '初学者拍', '尤尼克斯', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (110, '000017', '乒乓球', 36, '杨文元', '杨文元', '2023-02-13', 'SRM', 1, 97, 'CL14', '三星乒乓球', '三星', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (111, '000016', '风油精', 36, '刘冲', '杨文元', '2023-02-13', 'SRM', 1, 88, 'ECC', '神经酸痛风油', '白芷', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (112, '000015', '碘伏', 34, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 88, 'DDR3', '10%碘伏液', '医必达', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (113, '000014', '手提商务包', 36, '刘冲', '杨文元', '2023-02-13', 'SAP', 1, 98, 'ECC', '手提公文包', '新秀丽', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (114, '000013', '帆布袋', 36, '刘冲', '杨文元', '2023-02-13', 'SAP', 1, 98, '35V', '手提帆布袋', '赫歇尔', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (115, '000012', '湿巾', 36, '刘冲', '倪威', '2023-02-13', 'SAP', 1, 104, '240-pin', '婴儿湿巾', '帮宝适', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (116, '000011', '抽纸', 36, '刘冲', '倪威', '2023-02-13', 'SAP', 1, 104, 'DDR3', NULL, '清风', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (117, '000010', '绿茶', 32, '刘冲', '倪威', '2023-02-13', 'SAP', 1, 85, '2400MHz', NULL, '康师傅', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (118, '000009', '白茶', 34, '刘冲', '倪威', '2023-02-13', 'SAP', 1, 85, '35V', NULL, '银针白茶', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (119, '000008', '地毯', 36, '倪威', '倪威', '2023-02-13', 'SAP', 1, 104, 'CL14', '印花地毯', 'Mohawk', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (120, '000007', 'U型枕', 29, '刘冲', '倪威', '2023-02-13', 'SAP', 1, 104, '240-pin', '基础款', '特拉维斯特', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (121, '000006', '电热吹地机', 36, '倪威', '倪威', '2023-02-13', 'SRM', 1, 102, 'DDR3', 'DHG 系列', 'Bosch', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (122, '000005', '冰柜', 29, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 102, '35V', '双门式冰柜', '海尔', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (123, '000004', '无线话筒', 28, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 103, '3200MHz', 'Shure SM58 Wireless', 'Shure', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (124, '000003', '话筒三脚架', 28, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 104, '3200MHz', 'MS-220', '曼富图', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (125, '000002', 'U盘', 42, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 104, '35V', NULL, '金士顿', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (126, '000001', 'HDMI线', 38, '倪威', '杨文元', '2023-02-13', 'SRM', 1, 104, 'CL14', 'HDMI 1.4', 'Belkin', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (127, '100012', '汽轮机轮盘', 41, '杨文元', '邱军强', '2023-02-13', 'SAP', 1, 104, 'CL14', 'Siemens', 'GE', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (128, '12-2', '导轨-T75', 26, '杨文元', '邱军强', '2023-02-13', 'SAP', 1, 80, 'DDR3', '', NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL);
INSERT INTO `material` VALUES (129, '12-1', '导轨-T89', 26, '杨文元', '邱军强', '2023-02-13', 'SAP', 1, 80, 'CL14', NULL, NULL, '', 'http://127.0.0.1:9300/statics/2023/12/11/mmexport1697180661775_20231211142838A001.png', NULL, NULL, 26, NULL, 28, 'B', NULL);
INSERT INTO `material` VALUES (130, '000899', '达科技技术', 25, '小小', '大大', '2023-12-04', 'SRM', 1, 81, '傻狗', '大侠', 'band', '', 'http://127.0.0.1:9300/statics/2023/12/11/t01716ba776c7d6305b_20231211174739A001.jpg', 10.00, 9.00, 26, 12.00, 37, 'B', NULL);
INSERT INTO `material` VALUES (134, '1021', '羽绒服', 23, '杨文元', 'admim', '2024-01-04', 'SRM', 0, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for material_information
-- ----------------------------
DROP TABLE IF EXISTS `material_information`;
CREATE TABLE `material_information`  (
  `mi_id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `material_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `material_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `material_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料品类',
  `material_specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料规格',
  `material_model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料型号',
  `material_brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料品牌',
  `material_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料单位',
  `must_number` decimal(20, 2) NULL DEFAULT NULL COMMENT '需求数量',
  `must_date` datetime NULL DEFAULT NULL COMMENT '需求日期',
  `currency_name` bigint(20) NULL DEFAULT NULL COMMENT '币种',
  `reference_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '参考价格',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '预算单价(不含税)',
  `tax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税率',
  `rate_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税率值',
  `budget_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行预算金额',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `annex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `purchaser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购员',
  `requirement_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求编号',
  `status` bigint(20) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`mi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material_information
-- ----------------------------
INSERT INTO `material_information` VALUES (216, '000040', '云服务器', '导轨', '2*16GB', '阿里云', '阿里云', '台', 200.00, '2024-02-10 00:00:00', 87, 200.00, 120.00, 'J2', '13.00', '40000', '尽快', NULL, '张三', 'SCXCG20231115001', 1);
INSERT INTO `material_information` VALUES (217, '000038', '工业润滑剂', '家居/家装/厨具', '256GB', 'Mobilith SHC 220', 'Shell', 'KG', 400.00, '2024-04-05 00:00:00', 87, 200.00, 200.00, 'J2', '13.00', '80000', '快', NULL, '张三', 'SCXCG20231115001', 3);
INSERT INTO `material_information` VALUES (218, '000038', '工业润滑剂', '手机/数码', '256GB', 'Mobilith SHC 220', 'Shell', 'KG', 100.00, '2024-06-03 00:00:00', 89, 500.00, 500.00, 'J2', '13.00', '50000', NULL, NULL, '李四', 'SCXCG20231120002', 4);
INSERT INTO `material_information` VALUES (219, '000033', '白板笔', '文具', '35V', 'Expo Dry Erase Markers', 'Expo', '盒', 1000.00, '2024-11-02 00:00:00', 88, 15.00, 15.00, 'J1', '16.00', '15000', '暂无', '暂无', '杨文元', 'SCXCG20240102003', 3);
INSERT INTO `material_information` VALUES (220, '000039', '物理服务器', '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '戴尔', '台', 10.00, '2024-01-02 00:00:00', 88, 120.00, 120.00, 'J1', '16.00', '1200', '暂无', NULL, '刘冲', 'SCXCG20240102004', 4);
INSERT INTO `material_information` VALUES (221, '000035', '聚乙烯', '胶黏/润滑/车间化学品', '2400MHz', 'HDPE', 'ExxonMobil', 'KG', 200.00, '2024-12-02 00:00:00', 88, 120.00, 120.00, 'J2', '13.00', '24000', '暂无', NULL, '杨文元', 'SCXCG20240102005', 3);
INSERT INTO `material_information` VALUES (222, '000040', '云服务器', '电脑/办公', '2*16GB', '阿里云', '阿里云', '台', 2300.00, '2024-02-09 00:00:00', 85, 230.00, 230.00, 'J1', '16.00', '529000', NULL, NULL, '杨文元', 'SCXCG20240102006', 3);
INSERT INTO `material_information` VALUES (223, '000039', '物理服务器', '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '戴尔', '台', 200.00, '2024-01-02 00:00:00', 88, 1200.00, 1200.00, 'J3', '7.00', '240000', '暂无', NULL, '小小', 'SCXCG20240102007', 3);
INSERT INTO `material_information` VALUES (226, '000039', '物理服务器', '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '戴尔', '台', 10.00, '2024-01-03 00:00:00', 88, 200.00, 2000.00, 'J1', '16.00', '2000', '暂无', NULL, '琳达', 'SCXCG20240103001', 1);
INSERT INTO `material_information` VALUES (228, '1021', '羽绒服', '服装', NULL, NULL, NULL, '箱', 20.00, '2024-01-04 00:00:00', 122, 200.00, 4000.00, 'X1', '17.00', '4000', NULL, NULL, '小小', 'SCXCG20240104001', 3);

-- ----------------------------
-- Table structure for material_requirement
-- ----------------------------
DROP TABLE IF EXISTS `material_requirement`;
CREATE TABLE `material_requirement`  (
  `requirement_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '需求申请ID',
  `requirement_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求编号',
  `requirement_creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求创建人',
  `requirement_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求标题',
  `create_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建部门',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `demander` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求人',
  `demand_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求部门',
  `requirement_type` bigint(20) NULL DEFAULT NULL COMMENT '需求类型',
  `companies_id` bigint(20) NULL DEFAULT NULL COMMENT '公司ID',
  `total_amount` decimal(8, 2) NULL DEFAULT NULL COMMENT '预估总金额',
  `contact_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货联系人',
  `expense_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '费用部门',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要用途及说明',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `annex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `currency_id` bigint(20) NULL DEFAULT NULL COMMENT '币种ID',
  `related_projects` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关项目',
  `task_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务单号',
  PRIMARY KEY (`requirement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material_requirement
-- ----------------------------
INSERT INTO `material_requirement` VALUES (132, 'SCXCG20231115001', '杨文元', '采购需求审批流程1804199457464', '资产部', '2023-11-15 11:16:36', '杨文元', '产品技术部', 1, 1, 120000.00, '张三', '产品技术部', '公司需要', '长沙市', '15521347895', NULL, 85, '上海亘岩集团OA项目', 'RW20231115001');
INSERT INTO `material_requirement` VALUES (133, 'SCXCG20231120002', '倪威', '采购需求审批流程1904192456363', '采购部', '2023-11-20 11:29:33', '李四', '产品技术部', 2, 2, 50000.00, '李四', '产品技术部', '生产原材料', '上海市', '15575213658', 'http://127.0.0.1:9300/statics/2024/01/02/202310201548264826_20240102112837A001.xls', 85, '上海亘岩网络科技有限公司OA协同办公系统项目', 'RW20231120002');
INSERT INTO `material_requirement` VALUES (134, 'SCXCG20240102003', '杨文元', '采购需求审批流程1704159437463', '资产部', '2024-01-02 11:47:57', '杨文元', '产品技术部', 3, 1, 15000.00, '杨文元', '产品技术部', '公司-白板笔', '北京市', '18705147895', NULL, 83, '2023年专项公司产品发布会', 'RW20240102003');
INSERT INTO `material_requirement` VALUES (135, 'SCXCG20240102004', '刘冲', '采购需求审批流程1103129456463', '资产部', '2024-01-02 11:52:02', '刘冲', '资产部', 4, 2, 1200.00, '刘冲', '产品技术部', '暂无', '长沙市雨花区', '18745213698', NULL, 86, '软件园装修工程', 'RW20240102004');
INSERT INTO `material_requirement` VALUES (136, 'SCXCG20240102005', '王欣畅', '采购需求审批流程1207199436463', '产品技术部', '2024-01-02 14:48:39', '王欣畅', '产品技术部', 2, 2, 24000.00, '张三', '产品技术部', '暂无', '上海市闵行区', '0730-125789654', 'http://127.0.0.1:9300/statics/2024/01/02/202310201548264826_20240102144603A001.xls', 88, '上海亘岩集团OA项目', 'RW20240102005');
INSERT INTO `material_requirement` VALUES (137, 'SCXCG20240102006', '李四', '采购需求审批流程1504199446463', '采购部', '2024-01-02 19:55:07', '倪伟', '产品技术部', 2, 1, 529000.00, '李四', '产品技术部', '暂无', '开福区蔡锷北路司马里38号', '15523456789', NULL, 85, '', 'RW20240102006');
INSERT INTO `material_requirement` VALUES (138, 'SCXCG20240102007', '罗琳', '采购需求审批流程1306199457463', '采购部', '2024-01-02 20:37:03', '罗兰', '产品技术部', 1, 2, 240000.00, '罗兰', '产品技术部', '暂无', '长沙市司马里', '15575021367', NULL, 88, NULL, 'RW20240102007');
INSERT INTO `material_requirement` VALUES (141, 'SCXCG20240103001', '林达', '采购需求审批流程1704253609518', '华恒-采购部', '2024-01-03 11:46:49', '琳达', '产品技术部', 1, 2, 2000.00, '琳达', '产品技术部', '暂无', '上海市闵行区', '19278546985', NULL, 88, '暂无', 'RW20240103001');
INSERT INTO `material_requirement` VALUES (143, 'SCXCG20240104001', '倪伟', '采购需求审批流程1704359235196', '华恒——采购部', '2024-01-04 17:07:15', '杨文元', '产品技术部', 1, 3, 4000.00, '杨文元', '产品技术部', '暂无', '开福区蔡锷北路司马里38号', '15578541236', NULL, 121, '暂无', 'RW20240104001');

-- ----------------------------
-- Table structure for material_type
-- ----------------------------
DROP TABLE IF EXISTS `material_type`;
CREATE TABLE `material_type`  (
  `materialtype_id` bigint(20) NOT NULL COMMENT '物料品类ID',
  `materialtype_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料品类代码',
  `materialtype_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料品类名称',
  PRIMARY KEY (`materialtype_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material_type
-- ----------------------------

-- ----------------------------
-- Table structure for order_delivery_note
-- ----------------------------
DROP TABLE IF EXISTS `order_delivery_note`;
CREATE TABLE `order_delivery_note`  (
  `order_delivery_note_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '送货单Id',
  `order_delivery_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送货单号',
  `order_connection_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联订单',
  `delivery_note_state` bigint(20) NULL DEFAULT NULL COMMENT '送货单状态',
  `delivery_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货公司名',
  `consignee_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人联系方式',
  `shipper` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货人',
  `shipper_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货人联系方式',
  `supplier` bigint(20) NULL DEFAULT NULL COMMENT '供应商名称',
  `carrier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '承运人',
  `carrier_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '承运人联系方式',
  `delivery_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送货方式',
  `tracking_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递/物流单号',
  `delivery_date` datetime NULL DEFAULT NULL COMMENT '预计发货日期',
  `arrival_date` datetime NULL DEFAULT NULL COMMENT '预计到货日期',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `annex` bigint(20) NULL DEFAULT NULL COMMENT '附件',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_delivery_note_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单送货审批管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_delivery_note
-- ----------------------------
INSERT INTO `order_delivery_note` VALUES (6, 'SHD20231212002', 'CGDD20231211001', 1, '长沙市', '张三', '维森集团股份有限公司', '18116372198', '杨先生', '0642-167285', 6, '张经理', '1886543210', NULL, 'SF2023121252000', '2023-12-13 00:00:00', '2023-12-14 00:00:00', NULL, NULL, '2023-12-12 21:30:58');
INSERT INTO `order_delivery_note` VALUES (7, 'SHD20240104001', 'CGDD20240102002', 1, NULL, NULL, '维森集团股份有限公司', '18116372198', '杨先生', '0642-167285', 12, '张经理', '1886543210', '', 'JD2024010483363', '2024-01-04 00:00:00', '2024-01-04 00:00:00', '', NULL, '2024-01-04 13:50:20');
INSERT INTO `order_delivery_note` VALUES (8, 'SHD20240104401', 'CGDD20240102001', 2, NULL, NULL, '维森集团股份有限公司', '18116372198', '杨先生', '0642-167285', 13, '张经理', '1886543210', NULL, 'JD2024010493931', '2024-01-04 00:00:00', '2024-01-04 00:00:00', NULL, NULL, '2024-01-04 16:39:59');

-- ----------------------------
-- Table structure for order_execution_details
-- ----------------------------
DROP TABLE IF EXISTS `order_execution_details`;
CREATE TABLE `order_execution_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `orderCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `order_handle` bigint(11) NULL DEFAULT NULL COMMENT '订单处理状态',
  `order_quanlity` bigint(11) NULL DEFAULT NULL COMMENT '质检状态',
  `orderStatus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单执行状态',
  `totalDemand` decimal(10, 2) NULL DEFAULT NULL COMMENT '总需求量',
  `deliveryQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '发货数量',
  `receivedQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '已收货数量',
  `inStockQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '库存数量',
  `taxTotal` decimal(10, 2) NULL DEFAULT NULL COMMENT '税后总金额',
  `receivedAmount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '已收款金额',
  `awaitingDeliveryQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '待发货数量',
  `awaitingDeliveryAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '待发货金额',
  `orderLineNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单行号',
  `materialCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `materialName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `materialUnit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料单位',
  `requiredQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '需求数量',
  `requiredDate` date NULL DEFAULT NULL COMMENT '需求日期',
  `deliveryNoteNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货单号',
  `deliveryNoteLineNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货单行号',
  `deliveredQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '已发货数量',
  `deliveredAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '已发货金额',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `supplier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商',
  `deliveryDate` date NULL DEFAULT NULL COMMENT '交货日期',
  `receiptNoteNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货单号',
  `receiptNoteLineNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货单行号',
  `rejectedQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '拒收数量',
  `receiveQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '已收货数量（第二列）',
  `recepit_amount_tax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货总金额',
  `receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receivedDate` date NULL DEFAULT NULL COMMENT '收货日期',
  `stockInNoteNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库单号',
  `stockInNoteLineNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库单行号',
  `returnedQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '退回数量',
  `stockInAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库金额',
  `stockInQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '入库数量',
  `stockInPerson` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库人员',
  `stockInDate` date NULL DEFAULT NULL COMMENT '入库日期',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `reconciliation_status` bigint(11) NULL DEFAULT 1 COMMENT '业务对账状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_execution_details
-- ----------------------------
INSERT INTO `order_execution_details` VALUES (14, 'PO20231218002', 2, 2, '4', 200.00, 20.00, NULL, NULL, 25800.00, 0.00, 180.00, 2480.00, 'PO20231218002-2', '000033', '白板笔', '盒', 100.00, '2023-12-19', 'ASN20231218001', 'ASN20231218001-1', NULL, 2680.00, '长沙实力科技有限公司', '湖南虎英信息传播有限公司', '2023-12-19', 'GR20231221003', NULL, NULL, NULL, NULL, '小小大', '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-18 22:20:36', 4);
INSERT INTO `order_execution_details` VALUES (15, 'PO20231215001', 2, 2, '4', 100.00, 50.00, NULL, NULL, 1000.00, 0.00, 50.00, NULL, 'PO20231215001-1', '000039', '物理服务器', '台', 100.00, '2023-12-15', 'ASN20231220001', 'ASN20231220001-1', NULL, 500.00, '长沙实力科技有限公司', '国网湖南省电力有限公司', '2023-12-20', 'GR20231221002', NULL, NULL, NULL, NULL, 'admin', '2023-12-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-20 11:25:41', 5);
INSERT INTO `order_execution_details` VALUES (16, 'PO20231218001', 2, 2, '2', 200.00, 50.00, NULL, NULL, 40000.00, 0.00, 150.00, 10000.00, 'PO20231218001-2', '000037', '聚酯切片', 'KG', 100.00, '2023-12-19', 'ASN20231220003', 'ASN20231220002-1', NULL, 10000.00, '长沙实力科技有限公司', '国网湖南省电力有限公司', '2023-12-20', 'GR20231221001', NULL, NULL, NULL, NULL, 'admin', '2023-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-20 11:29:00', 5);
INSERT INTO `order_execution_details` VALUES (17, 'PO20231218001', 2, 1, '2', 200.00, 50.00, NULL, NULL, 40000.00, 0.00, NULL, 10000.00, 'PO20231218001-2', '000037', '聚酯切片', 'KG', 100.00, '2023-12-19', 'ASN20231220003', 'ASN20231220003-2', NULL, 10000.00, '长沙实力科技有限公司', '湖南虎英信息传播有限公司', '2023-12-20', 'GR20231221001', NULL, NULL, NULL, NULL, 'admin', '2023-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-20 14:06:49', 1);
INSERT INTO `order_execution_details` VALUES (18, 'PO20231221003', 2, 1, '4', 6.00, 6.00, NULL, NULL, 51353.58, 0.00, 0.00, NULL, 'PO20231221003-1', '000005', '冰柜', 'cm/h', 6.00, '2023-12-21', 'ASN20231221001', 'ASN20231221001-1', NULL, 51354.00, '长沙实力科技有限公司', '国网湖南省电力有限公司', '2023-12-21', 'GR20231221001', NULL, NULL, NULL, NULL, 'admin', '2023-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-21 15:00:35', 1);
INSERT INTO `order_execution_details` VALUES (19, 'PO20231222001', 2, 1, '4', 11.00, 11.00, NULL, NULL, 25727.13, 0.00, 0.00, NULL, 'PO20231222001-1', '000032', '空调', '台', 11.00, '2023-12-22', 'ASN20231222001', 'ASN20231222001-1', NULL, 25729.00, '长沙实力科技有限公司', '湖南虎英信息传播有限公司', '2023-12-22', 'GR20231222001', NULL, NULL, NULL, NULL, 'admin', '2023-12-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-22 11:11:32', 1);
INSERT INTO `order_execution_details` VALUES (20, 'PO20231222002', 2, 1, '4', 55.00, 55.00, NULL, NULL, 294191.15, 0.00, 33.00, NULL, 'PO20231222002-1', '000022', '汽车诊断仪', 'mm/s', 55.00, '2023-12-22', 'ASN20231222003', 'ASN20231222002-1', NULL, 117678.00, '长沙实力科技有限公司', '福厚互联网科技公司', '2023-12-22', 'GR20231225003', NULL, NULL, 55.00, '294195.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-22 11:38:57', 1);
INSERT INTO `order_execution_details` VALUES (22, 'PO20231222003', 2, 1, '4', 100.00, 10.00, NULL, NULL, 5811.30, 0.00, 70.00, 3180.00, 'PO20231222003-2', '000034', '标签打印机', 'KG', 50.00, '2023-12-22', 'ASN20231224002', 'ASN20231222004-1', NULL, 300.00, '长沙实力科技有限公司', '福厚互联网科技公司', '2023-12-22', 'GR20231225001', NULL, NULL, 10.00, '1060.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-22 16:46:55', 1);
INSERT INTO `order_execution_details` VALUES (23, 'PO20231222003', 2, 1, '4', 100.00, 10.00, NULL, NULL, 5811.30, 0.00, NULL, 3180.00, 'PO20231222003-2', '000034', '标签打印机', 'KG', 50.00, '2023-12-22', 'ASN20231224002', 'ASN20231222005-2', NULL, 300.00, '长沙实力科技有限公司', '福厚互联网科技公司', '2023-12-22', 'GR20231225001', NULL, NULL, 10.00, '1060.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-22 16:47:14', 1);
INSERT INTO `order_execution_details` VALUES (24, 'PO20231222003', 2, 1, '4', 100.00, 10.00, NULL, NULL, 5811.30, 0.00, 40.00, 100.00, 'PO20231222003-1', '000038', '工业润滑剂', 'KG', 50.00, '2023-12-22', 'ASN20231224002', 'ASN20231224001-3', NULL, 1060.00, '长沙实力科技有限公司', '福厚互联网科技公司', '2023-12-22', 'GR20231225001', NULL, NULL, 10.00, '1060.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-24 22:25:20', 1);
INSERT INTO `order_execution_details` VALUES (25, 'PO20231222003', 2, 1, '4', 100.00, 10.00, NULL, NULL, 5811.30, 0.00, 40.00, 100.00, 'PO20231222003-1', '000038', '工业润滑剂', 'KG', 50.00, '2023-12-22', 'ASN20231224002', 'ASN20231224002-4', NULL, 1060.00, '长沙实力科技有限公司', '福厚互联网科技公司', '2023-12-24', 'GR20231225001', NULL, NULL, 10.00, '1060.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-24 22:40:50', 1);
INSERT INTO `order_execution_details` VALUES (26, 'PO20231224001', 2, 1, '4', 100.00, 10.00, NULL, NULL, 86790.50, 0.00, 50.00, 33850.00, 'PO20231224001-1', '000039', '物理服务器', '米', 50.00, '2023-12-24', 'ASN20231225001', 'ASN20231224003-1', NULL, 52950.00, '0', '福厚互联网科技公司', '2023-12-24', 'GR20231225004', NULL, NULL, 10.00, '6770.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-24 23:09:10', 1);
INSERT INTO `order_execution_details` VALUES (27, 'PO20231224001', 2, 1, '4', 100.00, 10.00, NULL, NULL, 86790.50, 0.00, 0.00, 10590.00, 'PO20231224001-2', '12-2', '导轨-T75', '米', 50.00, '2023-12-24', 'ASN20231225001', 'ASN20231225001-2', NULL, 6770.00, NULL, '福厚互联网科技公司', '2023-12-25', 'GR20231225004', NULL, NULL, 10.00, '6770.00', 'admin', '2023-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-25 19:55:47', 1);
INSERT INTO `order_execution_details` VALUES (30, 'PO20231225001', 2, 1, '4', 300.00, 100.00, NULL, NULL, 136710.00, 0.00, 200.00, 72700.00, 'PO20231225001-1', '000032', '空调', 'mm/a', 100.00, '2023-12-25', 'ASN20231225003', 'ASN20231225002-1', NULL, 63500.00, NULL, '福厚互联网科技公司', '2023-12-25', 'GR20231226001', NULL, NULL, 100.00, '500.00', 'admin', '2023-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-25 20:05:28', 1);
INSERT INTO `order_execution_details` VALUES (31, 'PO20231225001', 2, 1, '4', 300.00, 100.00, NULL, NULL, 136710.00, 0.00, 100.00, 72700.00, 'PO20231225001-2', '000018', '羽毛球拍', 'mm/a', 100.00, '2023-12-25', 'ASN20231225004', 'ASN20231225003-2', NULL, 500.00, NULL, '福厚互联网科技公司', '2023-12-25', 'GR20231226002', NULL, NULL, 100.00, '500.00', 'admin', '2023-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-25 20:05:35', 1);
INSERT INTO `order_execution_details` VALUES (32, 'PO20231225001', 2, 1, '4', 300.00, 100.00, NULL, NULL, 136710.00, 0.00, 100.00, 500.00, 'PO20231225001-3', '000017', '乒乓球', 'mm/a', 100.00, '2023-12-25', 'ASN20231225005', 'ASN20231225004-3', NULL, 72700.00, NULL, '福厚互联网科技公司', '2023-12-25', 'GR20231226003', NULL, NULL, 100.00, '500.00', 'admin', '2023-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-25 20:05:42', 1);
INSERT INTO `order_execution_details` VALUES (33, 'PO20231226008', 2, 2, '2', 200.00, 100.00, NULL, NULL, 17345.00, 0.00, 100.00, 5900.00, 'PO20231226008-1', '000014', '手提商务包', '立方厘米', 100.00, '2023-12-26', 'ASN20231226002', 'ASN20231226001-1', NULL, 11400.00, NULL, '福厚互联网科技公司', '2023-12-26', 'GR20231226004', NULL, NULL, 0.00, '5900.00', 'admin', '2023-12-26', 'RK20231227001', NULL, NULL, 11400.00, 100.00, 'admin', '2023-12-27', '2023-12-26 17:51:46', 1);
INSERT INTO `order_execution_details` VALUES (34, 'PO20231226008', 2, 1, '4', 200.00, 100.00, NULL, NULL, 17345.00, 0.00, 0.00, 11400.00, 'PO20231226008-2', '000013', '帆布袋', '立方厘米', 100.00, '2023-12-26', 'ASN20231226002', 'ASN20231226002-2', NULL, 5900.00, NULL, '福厚互联网科技公司', '2023-12-26', 'GR20231226005', NULL, NULL, 100.00, '5900.00', 'admin', '2023-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-26 19:55:55', 1);
INSERT INTO `order_execution_details` VALUES (35, 'PO20231227002', 2, 2, '2', 2000.00, 1000.00, NULL, NULL, 12900.00, 0.00, 1000.00, 3000.00, 'PO20231227002-1', '000015', '碘伏', 'mm/s', 1000.00, '2023-12-27', 'ASN20231227001', 'ASN20231227001-1', NULL, 10000.00, NULL, '讯疼互联网科技公司', '2023-12-27', 'GR20231227004', NULL, NULL, 0.00, '10000.00', 'admin', '2023-12-27', 'RK20231228001', NULL, NULL, 10000.00, 1000.00, 'admin', '2023-12-28', '2023-12-27 19:10:41', 4);

-- ----------------------------
-- Table structure for order_manager
-- ----------------------------
DROP TABLE IF EXISTS `order_manager`;
CREATE TABLE `order_manager`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '采购订单id',
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `order_type` bigint(20) NULL DEFAULT NULL COMMENT '订单类型',
  `order_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单来源',
  `pur_organization` bigint(20) NULL DEFAULT NULL COMMENT '采购组织',
  `annex` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `is_self_pickup` bigint(20) NULL DEFAULT NULL COMMENT '是否自提',
  `license_plate_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自提车牌号',
  `concat_infomation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自提司机联系方式',
  `contract_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联合同编号',
  `contract_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联合同名称',
  `order_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单说明',
  `total_demand` decimal(10, 2) NULL DEFAULT NULL COMMENT '需求总数量',
  `purchaser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购员',
  `order_state` bigint(255) NULL DEFAULT NULL COMMENT '采购审批状态',
  `or_id` bigint(11) NULL DEFAULT NULL COMMENT '订单执行状态',
  `currency_id` bigint(20) NULL DEFAULT NULL COMMENT '币种',
  `supplier` bigint(20) NULL DEFAULT NULL COMMENT '供应商名称',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `invoice_method` bigint(20) NULL DEFAULT NULL COMMENT '供应商发票方式',
  `create_time` datetime NULL DEFAULT NULL COMMENT '采购订单创建日期',
  `material_id` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料信息名称',
  `tax_total` decimal(14, 2) NULL DEFAULT NULL COMMENT '含税总金额',
  `product_id` bigint(20) NULL DEFAULT NULL COMMENT '产品Id',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采购订单管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_manager
-- ----------------------------
INSERT INTO `order_manager` VALUES (28, 'PO20231213001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '7ac8639279134', NULL, '正常交付', 300.00, '张可可', 1, 1, 88, 1, NULL, NULL, 2, '2023-12-13 11:40:52', '16,17', 38200.00, NULL);
INSERT INTO `order_manager` VALUES (29, 'PO20231213002', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'd023961a4eb44', '测试1213', '正常', 410.00, '王虎', NULL, 1, 88, 1, '胡厚', '13572456832', 2, '2023-12-13 16:01:49', '18,19', 65000.00, NULL);
INSERT INTO `order_manager` VALUES (30, 'PO20231213003', '长沙实力信息有限公司', 2, '3', 1, NULL, 2, NULL, NULL, 'bc03118e10f14', '测试1213123', '正常', 1000.00, '杨文元', NULL, 1, NULL, 1, '胡厚', '13572456832', 3, '2023-12-13 16:06:11', '20', 1000.00, NULL);
INSERT INTO `order_manager` VALUES (32, 'PO20231214001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '05d74c3a1be14', '消毒准备', NULL, 100.00, '杨文元', 1, 1, 88, 1, '胡厚', '13572456832', 2, '2023-12-14 11:15:32', '23', 17000.00, NULL);
INSERT INTO `order_manager` VALUES (33, 'PO20231214002', '长沙实力信息有限公司', 1, '1', 1, NULL, NULL, NULL, NULL, '3b5c9efdf4d94', NULL, NULL, 11.00, '马非', 1, 1, NULL, NULL, NULL, NULL, NULL, '2023-12-14 11:27:33', '24', 220.00, NULL);
INSERT INTO `order_manager` VALUES (34, 'PO20231214003', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'f2e9a60d49654', '增强服务安全', NULL, 100.00, '马非', 1, 1, 88, 1, '胡厚', '13572456832', 2, '2023-12-14 12:01:51', '25', 100000.00, NULL);
INSERT INTO `order_manager` VALUES (36, 'PO20231214005', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'cdd82f026aea4', '测试1214123', '正常', 200.00, '杨涛', 1, 1, 88, 1, '胡厚', '13572456832', 2, '2023-12-14 14:06:33', '27,28', 160000.00, NULL);
INSERT INTO `order_manager` VALUES (37, 'PO20231214006', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '6f9116590b474', '测试1312335', '正常', 6.00, 'admin', 1, 1, 88, 6, '胡厚', '13572456832', 2, '2023-12-14 14:10:08', '29', 4200.00, NULL);
INSERT INTO `order_manager` VALUES (41, 'PO20231214010', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'b21233541e484', '1达瓦大', '达瓦大', 100.00, 'admin', 1, 1, 88, 6, '胡厚', '13572456832', 2, '2023-12-14 14:30:39', '31', 28000.00, NULL);
INSERT INTO `order_manager` VALUES (43, 'PO20231214012', '长沙实力信息有限公司', 2, '1', 1, NULL, 2, NULL, NULL, '2b1ab46b93ed4', '没有用的只能终于', '达瓦大', 100.00, '王虎', 1, 1, NULL, 1, '胡厚', '13572456832', 2, '2023-12-14 15:14:53', '33', 700000.00, NULL);
INSERT INTO `order_manager` VALUES (44, 'PO20231214013', '长沙实力信息有限公司', 3, '1', 1, NULL, 2, NULL, NULL, '4dbf26ce77e84', '丢件啊哈我丢合格iu啊过表达', '带五个好丢阿伟哥迪欧v', 200.00, '杨文元', 1, 1, 88, 1, '胡厚', '13572456832', 2, '2023-12-14 15:25:31', '34,35', 30000.00, NULL);
INSERT INTO `order_manager` VALUES (45, 'PO20231215001', '长沙实力信息有限公司', 2, '1', 1, NULL, 2, NULL, NULL, '540a6bad49f54', NULL, NULL, 100.00, '张可可', 3, 1, 88, 6, '胡厚', '13572456832', 2, '2023-12-15 15:56:45', '36', 1000.00, NULL);
INSERT INTO `order_manager` VALUES (46, 'PO20231218001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '88b212759fcc4', '测试1218112', '采购新建测试', 200.00, '杨涛', 3, 1, 88, 6, '胡厚', '13572456832', 2, '2023-12-18 14:19:36', '42,43', 40000.00, NULL);
INSERT INTO `order_manager` VALUES (47, 'PO20231218002', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'cb058c79933a4', '测试121812125', '测试说明', 200.00, '杨文元', 3, 1, 88, 4, '胡厚', '13572456832', 2, '2023-12-18 14:49:14', '聚酯切片,白板笔', 25800.00, NULL);
INSERT INTO `order_manager` VALUES (55, 'PO20231221003', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'a918043650584', '测试1221114', '测试', 6.00, '杨文元', 3, 1, 87, 4, '胡厚', '13572456832', 2, '2023-12-21 14:42:12', '冰柜', 51353.58, NULL);
INSERT INTO `order_manager` VALUES (56, 'PO20231222001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '977a96bba15f4', '测试1222112', '测试', 11.00, '杨文元', 3, 5, 88, 6, '胡厚', '13572456832', 2, '2023-12-22 11:06:37', '空调', 25727.13, NULL);
INSERT INTO `order_manager` VALUES (57, 'PO20231222002', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'cb3127fa8d934', '测试1222113', '测试', 55.00, '马非', 3, 5, 88, 1, '胡厚', '13572456832', 2, '2023-12-22 11:38:29', '汽车诊断仪', 294191.15, NULL);
INSERT INTO `order_manager` VALUES (58, 'PO20231222003', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'c190eb448dab4', '测试1222115', '测试', 100.00, '张可可', 3, 5, 88, 1, '胡厚', '13572456832', 2, '2023-12-22 16:43:03', '工业润滑剂,标签打印机', 5811.30, NULL);
INSERT INTO `order_manager` VALUES (59, 'PO20231224001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '3848ab01dc074', '测试1224111', '测试', 100.00, '张可可', 3, 5, 88, 1, '胡厚', '13572456832', 2, '2023-12-24 23:05:27', '物理服务器,导轨-T75', 86790.50, NULL);
INSERT INTO `order_manager` VALUES (60, 'PO20231225001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '45c0cde58aa24', '测试1225111', '测试', 300.00, '杨涛', 3, 5, 88, 1, '胡厚', '13572456832', 2, '2023-12-25 20:04:49', '空调,羽毛球拍,乒乓球', 136710.00, NULL);
INSERT INTO `order_manager` VALUES (89, 'PO20231226008', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '84d88919ec064', '测试送货单', '测试', 200.00, '马非', 3, 6, 88, 1, '胡厚', '13572456832', 2, '2023-12-26 00:00:00', '手提商务包,帆布袋', 17345.00, NULL);
INSERT INTO `order_manager` VALUES (91, 'PO20231227002', '长沙实力信息有限公司', 4, '3', 1, NULL, 2, NULL, NULL, NULL, '测试1227111', '测试', 2344.00, 'admin', 3, 7, 88, 6, '胡厚3', '13572456832', 2, '2023-12-27 00:00:00', NULL, 50161.60, NULL);
INSERT INTO `order_manager` VALUES (92, 'PO20231227002', '长沙实力信息有限公司', 4, '3', 1, NULL, 2, NULL, NULL, NULL, '测试1227112', '测试', 2344.00, '杨涛', 3, 7, 88, 6, '胡厚3', '13572456832', 2, '2023-12-27 00:00:00', '云服务器', 50161.60, NULL);
INSERT INTO `order_manager` VALUES (93, 'PO20231227002', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '0a81e3b4b0474', '测试', '测试1227', 2000.00, '杨文元', 3, 7, 88, 6, '胡厚3', '13572456832', 2, '2023-12-27 00:00:00', '碘伏,风油精', 12900.00, NULL);
INSERT INTO `order_manager` VALUES (94, 'PO20231228001', '长沙实力信息有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'eed61179a7b94', '上海亘岩网络科技有限公司OA协同办公系统项目', '测试', 1000.00, 'admin', 3, 1, 88, 1, '胡厚', '13572456832', 2, '2023-12-28 00:00:00', '抽纸', 7383.00, NULL);
INSERT INTO `order_manager` VALUES (95, 'PO20231228002', '长沙实力信息科技有限公司', 1, '1', 1, 'http://127.0.0.1:9300/statics/2023/12/28/solr_20231228192447A002.txt,http://127.0.0.1:9300/statics/2023/12/28/nginx面试题_20231228192514A004.txt,http://127.0.0.1:9300/statics/2023/12/28/WebSocket笔记_20231228192729A005.txt,http://127.0.0.1:9300/statics/2023/12/28/thymeleaf_20231228192816A006.txt', 2, NULL, NULL, 'f7a5e71004d94', '上海浦东大道管道电路铺设', '测试', 100.00, 'admin', 3, 1, 88, 6, '胡厚3', '13572456832', 2, '2023-12-28 00:00:00', '标签打印机', 95123.00, NULL);
INSERT INTO `order_manager` VALUES (96, 'PO20231228002', '长沙实力信息科技有限公司', 1, '1', 1, 'http://112.124.57.156/images/2023/12/28/springmvc_20231228195923A001.txt,http://112.124.57.156/images/2023/12/28/redis集群_20231228195931A002.txt', 2, NULL, NULL, 'ac5cdcc095ed4', '测试机', '测试', 5.00, 'admin', 3, 2, 88, 8, '何东', '17463810496', 2, '2023-12-28 00:00:00', '空调', 10394.80, NULL);
INSERT INTO `order_manager` VALUES (97, 'PO20231229001', '维森集团股份有限公司', 4, '3', 1, NULL, 2, NULL, NULL, '06f11531f19e4', '环普软件园二期改造工程', '紧急物料直接下单，后续以盖章订单为准', 6700.00, 'admin', 4, 2, 88, 9, ' 罗琳', '18275631326', 2, '2023-12-29 00:00:00', '工业润滑剂,复合丝,聚乙烯,聚酯切片', 361804.00, NULL);
INSERT INTO `order_manager` VALUES (149, 'PO20240104003', NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, 'WS-CG20240104001', '一般采购合同', NULL, 5000.00, '1', 1, 2, NULL, 10, ' 明煦', '1745312567324', NULL, '2024-01-04 10:08:30', '云服务器,工业润滑剂', 1870000.00, NULL);
INSERT INTO `order_manager` VALUES (150, 'PO20240104004', '国网湖南省电力有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '501d7288cbe14', NULL, NULL, 100.00, 'admin', 1, NULL, 111, 1, '胡厚', '18274631626', 2, '2024-01-04 16:44:31', 'HDMI线', 2069.60, NULL);
INSERT INTO `order_manager` VALUES (151, 'PO20240104005', '国网湖南省电力有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'c24de060367d4', NULL, NULL, 100.00, 'admin', 1, NULL, 111, 1, '胡厚', '18274631626', 2, '2024-01-04 16:44:40', 'HDMI线', 2069.60, NULL);
INSERT INTO `order_manager` VALUES (152, 'PO20240104006', '百度(中国)有限公司', 2, '采购需求', NULL, NULL, 2, NULL, NULL, NULL, '暂无', '暂无', 5000.00, '杨文元', 1, 2, 121, 14, '谢小豪', '17384256872', 1, '2024-01-04 17:09:31', '云服务器,工业润滑剂', 5198.00, NULL);
INSERT INTO `order_manager` VALUES (153, 'PO20240104007', NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, 'WS-CG20240104001', '一般采购合同', NULL, 5000.00, '杨文元', 1, 2, NULL, 15, '刘至盎', '15717266899', NULL, '2024-01-04 17:11:30', '云服务器,工业润滑剂', 1870000.00, NULL);
INSERT INTO `order_manager` VALUES (154, 'PO20240104008', '长沙实力信息科技有限公司', 2, '1', 1, NULL, 2, NULL, NULL, 'fb0fb2cd5d254', NULL, NULL, 300.00, 'admin', 1, NULL, NULL, 9, ' 罗琳', '18275631326', 2, '2024-01-04 17:14:42', '汽轮机轮盘,冰柜,U盘', 34806.60, NULL);
INSERT INTO `order_manager` VALUES (155, 'PO20240104009', '长沙实力信息科技有限公司', 1, '1', 1, NULL, 2, NULL, NULL, '6c4eb59bf4c44', NULL, NULL, 100.00, 'admin', 1, NULL, 88, NULL, NULL, NULL, 2, '2024-01-04 17:32:30', '聚酯切片', 1059.30, NULL);
INSERT INTO `order_manager` VALUES (156, 'PO20240104010', '长沙实力信息科技有限公司', 1, '1', 1, NULL, 2, NULL, NULL, 'ca0b77b469ce4', NULL, NULL, 100.00, 'admin', 1, NULL, NULL, 17, '胡小厚', '15211617194', NULL, '2024-01-04 17:47:41', '汽轮机轮盘', 1118.70, NULL);
INSERT INTO `order_manager` VALUES (157, 'PO20240105001', NULL, NULL, NULL, 1, NULL, 2, NULL, NULL, 'e4de09c330484', NULL, NULL, 100.00, 'admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 11:29:32', '汽轮机轮盘', 1118.70, NULL);
INSERT INTO `order_manager` VALUES (158, 'PO20240105002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f285fa86db494', NULL, NULL, 0.00, 'admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 16:08:26', '导轨-T75', 0.00, NULL);
INSERT INTO `order_manager` VALUES (159, 'PO20240105003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9f6fd67114764', NULL, NULL, 0.00, 'admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 17:02:43', '导轨-T75', 0.00, NULL);
INSERT INTO `order_manager` VALUES (160, 'PO20240105004', NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, 'f55997e7665b4', NULL, NULL, 0.00, 'admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 17:06:50', '话筒三脚架', 0.00, NULL);
INSERT INTO `order_manager` VALUES (161, 'PO20240105005', NULL, 1, '1', NULL, NULL, NULL, NULL, NULL, '74ef5bfbc95f4', NULL, NULL, 0.00, 'admin', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 17:14:41', '话筒三脚架', 0.00, NULL);

-- ----------------------------
-- Table structure for order_material
-- ----------------------------
DROP TABLE IF EXISTS `order_material`;
CREATE TABLE `order_material`  (
  `or_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `line_number` bigint(30) NULL DEFAULT NULL COMMENT '行号',
  `or_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `or_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '品类编码',
  `material_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物料品类',
  `material_specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物料规格',
  `material_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物料型号',
  `material_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物料单位',
  `require_number` decimal(8, 2) NULL DEFAULT NULL COMMENT '需求数量',
  `require_time` datetime NULL DEFAULT NULL COMMENT '需求日期',
  `lower_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '历史最低价',
  `new_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '最新价格',
  `no_tax_price` decimal(8, 0) NULL DEFAULT NULL COMMENT '不含税单价',
  `tax_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '税率代码',
  `tax` decimal(8, 2) NULL DEFAULT NULL COMMENT '税率',
  `tax_price` decimal(8, 0) NULL DEFAULT NULL COMMENT '含税单价',
  `line_tax_amount` decimal(8, 2) NULL DEFAULT NULL COMMENT '行含税金额',
  `consignee` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receiving_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `receiving_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属订单号',
  `delivery_num_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货单号',
  `om_state` bigint(11) NULL DEFAULT NULL COMMENT '订单明细执行状态',
  `shipment_quantity` decimal(8, 2) NULL DEFAULT NULL COMMENT '发货数量',
  `rejected_quantity` decimal(8, 2) NULL DEFAULT NULL COMMENT '拒收数量',
  `rejected_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拒收原因',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`or_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单物料明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_material
-- ----------------------------
INSERT INTO `order_material` VALUES (1, NULL, '000031', '转换器', NULL, '外设产品', NULL, NULL, '22', 1000.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', 'RW20231211001', NULL, 1, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (2, NULL, '000036', '复合丝', NULL, '胶黏/润滑/车间化学品', NULL, NULL, '25', 1000.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', 'RW20231211001', NULL, 2, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (3, NULL, '000003', '话筒三脚架', NULL, '办公设备', NULL, NULL, '28', 1000.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', 'PO20231129002', NULL, 1, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (4, NULL, '000001', 'HDMI线', NULL, '办公设备', NULL, NULL, '38', 1000.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', 'PO20231129002', NULL, 1, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (7, NULL, '000007', 'U型枕', NULL, NULL, NULL, NULL, '29', 2.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', 'PO20231129003', NULL, 2, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (8, NULL, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 200.00, '2023-12-01 00:00:00', NULL, NULL, NULL, 'J0', 0.00, NULL, NULL, '王五', '15266448844', '陕西省', 'PO20231130001', NULL, 1, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (9, NULL, '000037', '聚酯切片', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 200.00, '2023-12-01 00:00:00', NULL, NULL, NULL, 'L1', 5.00, NULL, NULL, '王五', '15266448844', '陕西省', 'PO20231130001', NULL, 3, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (10, NULL, '000039', '物理服务器', '办公设备', '办公设备', NULL, NULL, '台', 52.00, '2023-12-06 00:00:00', NULL, NULL, NULL, 'J0', 0.00, NULL, NULL, '张三', '15289586584', '长沙市', 'RW1589648225', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (11, NULL, '000039', '物理服务器', '办公设备', '办公设备', NULL, NULL, '台', 52.00, '2023-12-06 00:00:00', NULL, NULL, NULL, 'J0', 0.00, NULL, NULL, '张三', '15289586584', '长沙市', 'PO20231206001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (12, NULL, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', 0.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', '', 'PO20231206001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (13, NULL, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 50.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', '', 'PO20231206009', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (14, NULL, '000039', '物理服务器', '办公设备', '办公设别', NULL, NULL, NULL, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, NULL, NULL, 'RW5685958457', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (15, NULL, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', 50.00, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', '', 'PO20231206011', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (16, NULL, '000038', '工业润滑剂', '导轨', '导轨', NULL, NULL, 'KG', 100.00, '2023-12-20 00:00:00', 20.00, 20.00, 25, 'J2', 13.00, 28, 2825.00, '张三', '15268958452', '长沙市', 'PO20231213001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (17, NULL, '000036', '复合丝', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 200.00, '2023-12-20 00:00:00', 23.00, 26.00, 51, 'X0', 0.00, 51, 10200.00, '张三', '15268958452', '长沙市', 'PO20231213001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (18, 1, '000023', '保洁服装', '劳保/安防、标识', '劳保/安防、标识', NULL, NULL, 'mm/a', 200.00, '2023-12-14 00:00:00', 100.00, 150.00, 160, 'J0', 0.00, 160, 32000.00, '张三', '15262568598', '长沙市', 'PO20231213002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (19, 2, '000026', '绿植', '绿植/鲜花', '绿植/鲜花', NULL, NULL, '箱', 200.00, '2023-12-14 00:00:00', 100.00, 160.00, 165, 'X0', 0.00, 165, 33000.00, '张三', '15262568598', '长沙市', 'PO20231213002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (20, 1, '000020', '一次性口罩', '劳保/安防、标识', '劳保/安防、标识', NULL, NULL, '台', 1000.00, NULL, 0.50, 1.00, 1, 'X0', 0.00, 1, 1000.00, '张三', '13758112235', '长沙市', 'PO20231213003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (21, 1, '000030', '无人机', '智能设备', '智能设备', NULL, NULL, '台', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20231213004', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (22, 2, '000028', '涡轮机油', '办公设备', '办公设备', NULL, NULL, 'KG', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20231213004', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (23, 1, '000015', '碘伏', '医药/保健', '医药/保健', NULL, NULL, 'mm/s', 100.00, '2023-12-14 00:00:00', 10.00, 10.00, 10, 'J1', 16.00, 12, 1160.00, '张三', '15211615895', '长沙市天心区', 'PO20231214001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (24, 1, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', 11.00, '2023-12-14 00:00:00', 20.00, 20.00, 20, 'J0', 0.00, 20, 220.00, '', '', '', 'PO20231214002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (25, 1, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 100.00, '2023-12-14 00:00:00', 1000.00, 1000.00, 1000, 'X0', 0.00, 1000, 100000.00, '张三', '15268956958', '长沙市天心区', 'PO20231214003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (26, 1, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20231214004', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (27, 1, '000033', '白板笔', '文具', '文具', NULL, NULL, '盒', 100.00, '2023-12-14 00:00:00', 1000.00, 1000.00, 1000, 'J0', 0.00, 1000, 100000.00, '', '', '', 'PO20231214005', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (28, 2, '000034', '标签打印机', '办公设备', '办公设备', NULL, NULL, '台', 100.00, '2023-12-21 00:00:00', 100.00, 100.00, 110, 'L1', 5.00, 116, 11550.00, '', '', '', 'PO20231214005', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (29, 1, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', 6.00, '2023-12-14 00:00:00', 100.00, 100.00, 100, 'J4', 6.00, 106, 636.00, '张三', '15268958695', '长沙市天心区', 'PO20231214006', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (30, 1, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20231214007', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (31, 1, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 100.00, NULL, 20.00, 20.00, 20, 'J2', 13.00, 23, 2260.00, '', '', '', 'PO20231214010', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (32, 1, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20231214011', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (33, 1, '000040', '云服务器', '导轨', '导轨', '2*16GB', '阿里云', '台', 100.00, '2023-12-15 00:00:00', 1000.00, 1000.00, 100, 'J4', 6.00, 106, 10600.00, '', '', '', 'PO20231214012', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (34, 1, '000038', '工业润滑剂', '导轨', '导轨', NULL, NULL, 'KG', 100.00, '2023-12-14 00:00:00', 100.00, 20.00, 100, 'J3', 7.00, 107, 10700.00, '张三', '15258695825', '', 'PO20231214013', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (35, 2, '000033', '白板笔', '文具', '文具', NULL, NULL, '盒', 100.00, '2023-12-14 00:00:00', 100.00, 20.00, 100, 'J4', 6.00, 106, 10600.00, '李四', '13721213659', '', 'PO20231214013', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (36, 1, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 100.00, '2023-12-15 00:00:00', NULL, 10.00, 10, 'X0', 0.00, 10, 1000.00, '', '', '', 'PO20231215001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (40, 1, '000038', '工业润滑剂', '导轨', '导轨', NULL, NULL, 'KG', 100.00, '2023-12-18 00:00:00', NULL, 20.00, 20, 'X0', 0.00, 0, 0.00, '', '', '', 'PO20231128001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (41, 2, '000036', '复合丝', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20231128001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (42, 1, '000036', '复合丝', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 100.00, '2023-12-19 00:00:00', 10.00, 100.00, 200, 'J0', 0.00, 200, 20000.00, '张三', '15211617194', '长沙市', 'PO20231218001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (43, 2, '000037', '聚酯切片', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 100.00, '2023-12-19 00:00:00', 10.00, 100.00, 200, 'J0', 0.00, 200, 20000.00, '张三', '15211617194', '长沙市', 'PO20231218001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (44, 1, '000037', '聚酯切片', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 100.00, '2023-12-19 00:00:00', 112.00, 100.00, 124, 'J0', 0.00, 124, 12400.00, '李四', '15211617194', '永州市', 'PO20231218002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (45, 2, '000033', '白板笔', '文具', '文具', NULL, NULL, '盒', 100.00, '2023-12-19 00:00:00', 112.00, 100.00, 134, 'X0', 0.00, 134, 13400.00, '李四', '15211617194', '永州市', 'PO20231218002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (46, 1, '000015', '碘伏', '医药/保健', '医药/保健', NULL, NULL, 'mm/s', 200.00, '2023-12-20 00:00:00', NULL, NULL, 11, 'X0', 0.00, 11, 2200.00, '张三', '15211617194', '永州市', 'PO20231219001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (47, 2, '000013', '帆布袋', '工业品', '工业品', NULL, NULL, '立方厘米', 200.00, '2023-12-20 00:00:00', NULL, NULL, 57, 'X0', 0.00, 57, 11400.00, '张三', '15211617194', '永州市', 'PO20231219001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (48, 1, '000034', '标签打印机', '办公设备', '办公设备', NULL, NULL, '台', 5.00, '2023-12-19 00:00:00', NULL, 586.00, 599, 'J5', 4.00, 623, 3114.80, '', '', '', 'PO20231219002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (49, 1, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 2.00, '2023-12-19 00:00:00', NULL, 1099.00, 999, 'J4', 6.00, 1059, 2117.88, '', '', '', 'PO20231219003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (50, 1, '000036', '复合丝', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 540.00, '2023-12-19 00:00:00', NULL, 22.50, 21, 'X0', 0.00, 21, 11556.00, '', '', '', 'PO20231219004', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (51, 1, '000036', '复合丝', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 100.00, '2023-12-19 00:00:00', NULL, 22.00, 22, 'LX001', 7.00, 24, 2364.70, '李四', '15211617194', '长沙市', 'PO20231219005', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (52, 2, '000001', 'HDMI线', '办公设备', '办公设备', NULL, NULL, '厘升', 100.00, '2023-12-19 00:00:00', NULL, 21.00, 23, 'LX001', 7.00, 24, 2407.50, '李四', '15211617194', '长沙市', 'PO20231219005', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (53, NULL, '000039', '物理服务器', NULL, '运动/户外', NULL, NULL, '台', 45000.00, '2023-12-21 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231221001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (54, NULL, '000039', '物理服务器', NULL, '运动/户外', NULL, NULL, '台', 45000.00, '2023-12-21 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231221001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (55, 1, '000040', '云服务器', NULL, '导轨', '2*16GB', '阿里云', '台', 2344.00, '2023-12-21 00:00:00', NULL, NULL, 20, 'J3', 7.00, 21, 50161.60, '张三', '15211617194', '长沙市', 'RW20231221002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (56, 1, '000019', '儿童车模', '图书/文娱/教育', '图书/文娱/教育', NULL, NULL, 'mm/h', 50.00, '2023-12-21 00:00:00', NULL, 20.00, 26, 'X0', 0.00, 26, 1280.00, '李四', '13759682774', '长沙市', 'PO20231221001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (57, 2, '000015', '碘伏', '医药/保健', '医药/保健', NULL, NULL, 'mm/s', 50.00, '2023-12-21 00:00:00', NULL, 20.00, 15, 'X0', 0.00, 15, 765.00, '李四', '13759682774', '长沙市', 'PO20231221001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (58, 1, '000001', 'HDMI线', '办公设备', '办公设备', NULL, NULL, '厘升', 50.00, '2023-12-21 00:00:00', NULL, 10.00, 18, 'J4', 6.00, 19, 948.70, '赵六', '13754248659', '长沙市', 'PO20231221002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (59, 2, '000006', '电热吹地机', '大家电', '大家电', NULL, NULL, '立方厘米', 50.00, '2023-12-21 00:00:00', NULL, 4098.00, 4000, 'X0', 0.00, 4000, 199990.00, '赵六', '13754248659', '长沙市', 'PO20231221002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (60, 1, '000005', '冰柜', '大家电', '大家电', NULL, NULL, 'cm/h', 6.00, '2023-12-21 00:00:00', NULL, NULL, 7999, 'J3', 7.00, 8559, 51353.58, '李四', '18923565577', '长沙市天心区', 'PO20231221003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (61, 1, '000032', '空调', '大家电', '大家电', NULL, NULL, '台', 11.00, '2023-12-22 00:00:00', NULL, NULL, 1999, 'X1', 17.00, 2339, 25727.13, '张三', '18959667847', '长沙市', 'PO20231222001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (62, 1, '000022', '汽车诊断仪', '智能设备', '智能设备', NULL, NULL, 'mm/s', 55.00, '2023-12-22 00:00:00', NULL, NULL, 4999, 'J3', 7.00, 5349, 294191.15, '李四', '', '', 'PO20231222002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (63, 1, '000038', '工业润滑剂', '导轨', '导轨', NULL, NULL, 'KG', 50.00, '2023-12-22 00:00:00', NULL, NULL, 99, 'J3', 7.00, 106, 5296.50, '张三', '15211617194', '长沙市', 'PO20231222003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (64, 2, '000034', '标签打印机', '办公设备', '办公设备', NULL, NULL, '台', 50.00, '2023-12-22 00:00:00', NULL, NULL, 10, 'J5', 4.00, 10, 514.80, '张三', '15211617194', '长沙市', 'PO20231222003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (65, 1, '000039', '物理服务器', '运动/户外', '运动/户外', NULL, NULL, '台', 50.00, '2023-12-24 00:00:00', NULL, NULL, 999, 'J4', 6.00, 1059, 52947.00, '张三', '15211617194', '长沙市', 'PO20231224001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (66, 2, '12-2', '导轨-T75', '导轨', '导轨', NULL, NULL, '米', 50.00, '2023-12-24 00:00:00', NULL, NULL, 599, 'J2', 13.00, 677, 33843.50, '张三', '15211617194', '长沙市', 'PO20231224001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (67, 1, '000032', '空调', '大家电', '大家电', NULL, NULL, '台', 100.00, '2023-12-25 00:00:00', NULL, NULL, 599, 'J4', 6.00, 635, 63494.00, '张三', '15211617194', '长沙市', 'PO20231225001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (68, 2, '000018', '羽毛球拍', '图书/文娱/教育', '图书/文娱/教育', NULL, NULL, 'mm/a', 100.00, '2023-12-25 00:00:00', NULL, NULL, 5, 'J5', 4.00, 5, 520.00, '张三', '15211617194', '长沙市', 'PO20231225001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (69, 3, '000017', '乒乓球', '图书/文娱/教育', '图书/文娱/教育', NULL, NULL, '立方厘米', 100.00, '2023-12-25 00:00:00', NULL, NULL, 699, 'J5', 4.00, 727, 72696.00, '张三', '15211617194', '长沙市', 'PO20231225001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (70, NULL, '000040', '云服务器', NULL, '电脑/办公', '2*16GB', '阿里云', '台', 200.00, '2023-12-26 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231226001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (71, 1, '000014', '手提商务包', '工业品', '工业品', NULL, NULL, '立方厘米', 100.00, '2023-12-26 00:00:00', NULL, NULL, 109, 'L1', 5.00, 114, 11445.00, '张三', '15211617194', '长沙市', 'PO20231226008', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (72, 2, '000013', '帆布袋', '工业品', '工业品', NULL, NULL, '立方厘米', 100.00, '2023-12-26 00:00:00', NULL, NULL, 59, 'X0', 0.00, 59, 5900.00, '张三', '15211617194', '长沙市', 'PO20231226008', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (73, 1, '000015', '碘伏', '医药/保健', '医药/保健', NULL, NULL, 'mm/s', 1000.00, '2023-12-27 00:00:00', NULL, NULL, 10, 'X0', 0.00, 10, 9900.00, '尹兰芳', '15569586598', '长沙市天心区', 'PO20231227002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (74, 2, '000016', '风油精', '医药/保健', '医药/保健', NULL, NULL, '立方厘米', 1000.00, '2023-12-27 00:00:00', NULL, NULL, 3, 'X0', 0.00, 3, 3000.00, '尹兰芳', '15569586598', '长沙市天心区', 'PO20231227002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (75, NULL, '000040', '云服务器', NULL, '导轨', '2*16GB', '阿里云', '台', 11.00, '2023-12-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231227001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (76, NULL, '000040', '云服务器', NULL, '家居/家装/厨具', '2*16GB', '阿里云', '台', 22.00, '2023-12-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231227002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (77, NULL, '000032', '空调', NULL, NULL, NULL, NULL, '台', 2.00, '2023-12-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231227003', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (78, NULL, '000034', '标签打印机', NULL, '医药/保健', NULL, NULL, '台', 4.00, '2023-12-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231227004', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (80, NULL, '000031', '转换器', NULL, '运动/户外', '说的', NULL, '盒', 23.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (81, NULL, '000039', '物理服务器', NULL, '电脑/办公', NULL, NULL, '台', 4500.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (82, NULL, '000039', '物理服务器', NULL, '手机/数码', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '台', 20.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (83, NULL, '000035', '聚乙烯', NULL, '礼品/箱包/珠宝/钟表', '1', NULL, 'KG', 1.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228003', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (84, NULL, '000039', '物理服务器', NULL, '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '台', 12.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (85, NULL, '000038', '工业润滑剂', NULL, '家用电器', NULL, NULL, 'KG', 12.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (86, NULL, '000039', '物理服务器', NULL, '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '台', 2.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (87, NULL, '000040', '云服务器', NULL, '电脑/办公', '2*16GB', '阿里云', '台', 46.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (90, NULL, '000037', '聚酯切片', NULL, '手机/数码', NULL, NULL, 'KG', 44.00, '2023-12-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231228003', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (91, NULL, '000038', '工业润滑剂', NULL, '家用电器', NULL, NULL, 'KG', 22.00, '2023-12-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20231229001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (92, 1, '000038', '工业润滑剂', '导轨', '导轨', NULL, NULL, 'KG', 1000.00, '2023-12-29 00:00:00', NULL, NULL, 55, 'J1', 16.00, 64, 63800.00, '王汐', '18822334455', '长沙市天心区', 'PO20231229001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (93, 2, '000036', '复合丝', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 2500.00, '2023-12-29 00:00:00', NULL, NULL, 37, 'J1', 16.00, 43, 107300.00, '王汐', '18822334455', '长沙市天心区', 'PO20231229001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (94, 3, '000035', '聚乙烯', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 2000.00, '2023-12-29 00:00:00', NULL, NULL, 48, 'J1', 16.00, 56, 111360.00, '王汐', '18822334455', '长沙市天心区', 'PO20231229001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (95, 4, '000037', '聚酯切片', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', NULL, NULL, 'KG', 1200.00, '2023-12-29 00:00:00', NULL, NULL, 57, 'J1', 16.00, 66, 79344.00, '王汐', '18822334455', '长沙市天心区', 'PO20231229001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (96, NULL, '000038', '工业润滑剂', NULL, '家用电器', '256GB', 'Mobilith SHC 220', 'KG', 60.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (97, NULL, '000038', '工业润滑剂', NULL, '家居/家装/厨具', '256GB', 'Mobilith SHC 220', 'KG', 800.00, '2024-04-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (98, NULL, '000038', '工业润滑剂', NULL, '手机/数码', '256GB', 'Mobilith SHC 220', 'KG', 200.00, '2024-05-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102002', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (99, NULL, '000033', '白板笔', NULL, '文具', '35V', 'Expo Dry Erase Markers', '盒', 2000.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102003', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (100, NULL, '000039', '物理服务器', NULL, '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '台', 20.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102004', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (101, NULL, '000035', '聚乙烯', NULL, '胶黏/润滑/车间化学品', '2400MHz', 'HDPE', 'KG', 400.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102005', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (102, NULL, '000040', '云服务器', NULL, '电脑/办公', '2*16GB', '阿里云', '台', 4600.00, '2024-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102006', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (103, NULL, '000039', '物理服务器', NULL, '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '台', 400.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102007', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (104, NULL, '000038', '工业润滑剂', NULL, '手机/数码', '256GB', 'Mobilith SHC 220', 'KG', 22.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102008', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (105, NULL, '000034', '标签打印机', NULL, '家用电器', 'DDR3', 'Zebra GK420d', '台', 4.00, '2024-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240102009', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (106, NULL, '000039', '物理服务器', NULL, '电脑/办公', '4309Y 处理器, 2*16GB 内存, 2*1.2TB SAS 硬盘', 'PowerEdge R750xs 机架式服务器', '台', 20.00, '2024-01-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240103001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (107, 1, '000011', '抽纸', '办公设备', '办公设备', NULL, NULL, '立方厘米', 1000.00, NULL, NULL, NULL, 7, 'LX001', 7.00, 7, 7490.00, '胡福厚', '17307456383', '长沙市开福区', 'PO20231228001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (108, 1, '000034', '标签打印机', '办公设备', '办公设备', NULL, NULL, '台', 100.00, '2023-12-28 00:00:00', NULL, NULL, 889, 'J3', 7.00, 951, 95123.00, '李四', '15211617194', '长沙市', 'PO20231228002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (109, 2, '000032', '空调', '大家电', '大家电', NULL, NULL, '台', 5.00, NULL, NULL, NULL, 1999, 'J5', 4.00, 2079, 10394.80, '张三', '15211617194', '长沙市', 'PO20231228002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (110, 3, '000034', '标签打印机', '办公设备', '办公设备', NULL, NULL, '台', 100.00, '2023-12-28 00:00:00', NULL, NULL, 889, 'J3', 7.00, 951, 95123.00, '李四', '15211617194', '长沙市', 'PO20231228002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (111, 4, '000032', '空调', '大家电', '大家电', NULL, NULL, '台', 5.00, NULL, NULL, NULL, 1999, 'J5', 4.00, 2079, 10394.80, '张三', '15211617194', '长沙市', 'PO20231228002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (112, NULL, '100012', '汽轮机轮盘', NULL, '汽车用品', 'CL14', 'Siemens', '百公升', 2.00, '2024-01-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240104001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (113, 1, '000001', 'HDMI线', '办公设备', '办公设备', 'CL14', 'HDMI 1.4', '厘升', 100.00, '2024-01-04 00:00:00', NULL, NULL, 20, 'J5', 4.00, 21, 2069.60, '涛涛', '18274631626', '开福区蔡锷北路司马里38号', 'PO20240104004', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (114, 1, '000001', 'HDMI线', '办公设备', '办公设备', 'CL14', 'HDMI 1.4', '厘升', 100.00, '2024-01-04 00:00:00', NULL, NULL, 20, 'J5', 4.00, 21, 2069.60, '涛涛', '18274631626', '开福区蔡锷北路司马里38号', 'PO20240104005', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (115, NULL, '1021', '羽绒服', NULL, '服装', NULL, NULL, '箱', 40.00, '2024-01-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RW20240104001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_material` VALUES (116, 1, '100012', '汽轮机轮盘', '办公设备', '办公设备', 'CL14', 'Siemens', '百公升', 100.00, '2024-01-04 00:00:00', NULL, NULL, 10, 'J5', 4.00, 10, 1029.60, '将其杨', '15211617194', '长沙市天心区', 'PO20240104008', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (117, 2, '000005', '冰柜', '大家电', '大家电', '35V', '双门式冰柜', 'cm/h', 100.00, '2024-01-04 00:00:00', NULL, NULL, 99, 'J4', 6.00, 105, 10494.00, '将其杨', '15211617194', '长沙市天心区', 'PO20240104008', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (118, 3, '000002', 'U盘', '办公设备', '办公设备', '35V', NULL, '秒', 100.00, '2024-01-04 00:00:00', NULL, NULL, 199, 'JA', 17.00, 233, 23283.00, '将其杨', '15211617194', '长沙市天心区', 'PO20240104008', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (119, 1, '000037', '聚酯切片', '胶黏/润滑/车间化学品', '胶黏/润滑/车间化学品', '58GB', 'PETG', 'KG', 100.00, '2024-01-04 00:00:00', NULL, NULL, 10, 'J3', 7.00, 11, 1059.30, '', '', '', 'PO20240104009', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (120, 1, '100012', '汽轮机轮盘', '办公设备', '办公设备', 'CL14', 'Siemens', '百公升', 100.00, '2024-01-04 00:00:00', NULL, NULL, 10, 'X2', 13.00, 11, 1118.70, '张三', '15211617194', '长沙市天心区', 'PO20240104010', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (121, 1, '100012', '汽轮机轮盘', '办公设备', '办公设备', 'CL14', 'Siemens', '百公升', 100.00, '2024-01-05 00:00:00', NULL, NULL, 10, 'X2', 13.00, 11, 1118.70, '', '', '', 'PO20240105001', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (122, 1, '12-2', '导轨-T75', '导轨', '导轨', 'DDR3', '', '米', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20240105002', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (123, 1, '12-2', '导轨-T75', '导轨', '导轨', 'DDR3', '', '米', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20240105003', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (124, 1, '000003', '话筒三脚架', '办公设备', '办公设备', '3200MHz', 'MS-220', 'm/min', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20240105004', NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `order_material` VALUES (125, 1, '000003', '话筒三脚架', '办公设备', '办公设备', '3200MHz', 'MS-220', 'm/min', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0.00, '', '', '', 'PO20240105005', NULL, NULL, NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for order_receipt
-- ----------------------------
DROP TABLE IF EXISTS `order_receipt`;
CREATE TABLE `order_receipt`  (
  `receipt_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收货单Id',
  `receiptNoteNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货单号',
  `receiver` bigint(20) NULL DEFAULT NULL COMMENT '收货人',
  `receiveQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货总数量',
  `recepit_amount_tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货含税金额',
  `receipt_remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货备注',
  `annex` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `inspector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '质检人',
  `supplier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `receipt_concat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `receipt_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `receipt_state` bigint(20) NULL DEFAULT NULL COMMENT '收货状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`receipt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单收货管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_receipt
-- ----------------------------
INSERT INTO `order_receipt` VALUES (1, 'GR20231221001', NULL, NULL, 10000.00, NULL, NULL, 'admin', '测试3', '胡厚', '13572456832', NULL, NULL);
INSERT INTO `order_receipt` VALUES (7, 'GR20231221001', NULL, NULL, 10000.00, NULL, NULL, 'admin', '测试3', '胡厚', '13572456832', NULL, NULL);
INSERT INTO `order_receipt` VALUES (8, 'GR20231221001', NULL, NULL, 51354.00, NULL, NULL, 'admin', '测试1', '胡厚', '13572456832', NULL, '2023-12-21 17:33:27');
INSERT INTO `order_receipt` VALUES (9, 'GR20231222001', NULL, NULL, 25729.00, NULL, NULL, 'admin', '测试3', '胡厚', '13572456832', NULL, '2023-12-22 11:35:06');
INSERT INTO `order_receipt` VALUES (10, 'GR20231222002', NULL, 11.00, 117678.00, NULL, NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-22 14:33:44');
INSERT INTO `order_receipt` VALUES (11, 'GR20231225001', NULL, 10.00, 1060.00, NULL, NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-25 12:03:52');
INSERT INTO `order_receipt` VALUES (12, 'GR20231225002', NULL, 50.00, 52950.00, '测试', NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-25 12:21:59');
INSERT INTO `order_receipt` VALUES (13, 'GR20231225003', NULL, 55.00, 294195.00, NULL, NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-25 15:06:57');
INSERT INTO `order_receipt` VALUES (14, 'GR20231225004', NULL, 10.00, 6770.00, '测试1225', NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-25 20:00:03');
INSERT INTO `order_receipt` VALUES (15, 'GR20231226001', NULL, 100.00, 500.00, NULL, NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-26 17:25:37');
INSERT INTO `order_receipt` VALUES (16, 'GR20231226002', NULL, 100.00, 11400.00, '哈哈哈', NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-26 17:53:28');
INSERT INTO `order_receipt` VALUES (17, 'GR20231226003', NULL, 100.00, 5900.00, NULL, NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-26 19:58:03');
INSERT INTO `order_receipt` VALUES (18, 'GR20231226004', NULL, 100.00, 5900.00, NULL, NULL, 'admin', '福厚互联网科技公司', '胡厚', '13572456832', NULL, '2023-12-26 20:08:17');
INSERT INTO `order_receipt` VALUES (19, 'GR20231227001', NULL, 1000.00, 10000.00, NULL, NULL, 'admin', '讯疼互联网科技公司', '胡厚3', '13572456832', NULL, '2023-12-27 19:21:33');
INSERT INTO `order_receipt` VALUES (20, 'GR20231227002', NULL, 1000.00, 10000.00, NULL, NULL, 'admin', '讯疼互联网科技公司', '胡厚3', '13572456832', NULL, '2023-12-27 19:38:18');
INSERT INTO `order_receipt` VALUES (21, 'GR20231227003', NULL, 1000.00, 10000.00, NULL, NULL, 'admin', '讯疼互联网科技公司', '胡厚3', '13572456832', NULL, '2023-12-27 19:57:18');
INSERT INTO `order_receipt` VALUES (22, 'GR20231227004', NULL, 1000.00, 10000.00, NULL, NULL, 'admin', '讯疼互联网科技公司', '胡厚3', '13572456832', NULL, '2023-12-27 20:07:11');

-- ----------------------------
-- Table structure for order_reconciliation
-- ----------------------------
DROP TABLE IF EXISTS `order_reconciliation`;
CREATE TABLE `order_reconciliation`  (
  `reconciliation_id` bigint(11) NOT NULL COMMENT '对账单号',
  `receipt_number` bigint(20) NULL DEFAULT NULL COMMENT '收货单号',
  `order_num` bigint(11) NULL DEFAULT NULL COMMENT '订单号',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `material_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `reconciliation_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对账类型',
  `pending_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '待对金额',
  `receiving_date` datetime NULL DEFAULT NULL COMMENT '收货日期',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`reconciliation_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_reconciliation
-- ----------------------------

-- ----------------------------
-- Table structure for order_type_running
-- ----------------------------
DROP TABLE IF EXISTS `order_type_running`;
CREATE TABLE `order_type_running`  (
  `ort_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单类型id',
  `ort_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单类型名称',
  PRIMARY KEY (`ort_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_type_running
-- ----------------------------
INSERT INTO `order_type_running` VALUES (1, '订单审批');
INSERT INTO `order_type_running` VALUES (2, '订单待确认');
INSERT INTO `order_type_running` VALUES (3, '订单已确认');
INSERT INTO `order_type_running` VALUES (4, '订单已拒绝');
INSERT INTO `order_type_running` VALUES (5, '执行中');
INSERT INTO `order_type_running` VALUES (6, '订单已关闭');
INSERT INTO `order_type_running` VALUES (7, '订单已完成');

-- ----------------------------
-- Table structure for performance_appraisal
-- ----------------------------
DROP TABLE IF EXISTS `performance_appraisal`;
CREATE TABLE `performance_appraisal`  (
  `evaluation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '考评id',
  `evaluation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评编码',
  `evaluation_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评名称',
  `evaluation_state` bigint(20) NULL DEFAULT NULL COMMENT '考评状态',
  `evaluation_template_id` bigint(20) NULL DEFAULT NULL COMMENT '考评模板id',
  `evaluation_template_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评模板编码',
  `evaluation_template_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评模板名称',
  `evaluation_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评方式',
  `evaluation_head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评负责人',
  `branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分部',
  `contacts_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `evaluation_cycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评周期',
  `evaluation_date_from` datetime NULL DEFAULT NULL COMMENT '考评日期从',
  `evaluation_date_to` datetime NULL DEFAULT NULL COMMENT '考评日期至',
  `evaluation_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评说明',
  `creation_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `assessment_attachment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评附件',
  PRIMARY KEY (`evaluation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绩效考评' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of performance_appraisal
-- ----------------------------
INSERT INTO `performance_appraisal` VALUES (31, 'JXKP20241416261598', '考评20240104001', 3, 4, 'KPMB20241416236655', '半年度考核模板', '1', 'admin', NULL, NULL, '3', '2024-01-04 00:00:00', '2024-01-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `performance_appraisal` VALUES (33, 'JXKP2024141629402', '考评20240104002', 3, 2, 'KPMB2023122717478573', '战略供应商考评模板', '1', 'admin', NULL, NULL, '1', '2024-01-01 00:00:00', '2024-01-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `performance_appraisal` VALUES (34, 'JXKP20241416318068', '考评20240104003', 3, 1, 'KPMB2023122710406153', '供应商年度考评', '1', 'admin', NULL, NULL, '1', '2024-01-01 00:00:00', '2024-01-31 00:00:00', NULL, NULL, NULL);
INSERT INTO `performance_appraisal` VALUES (35, 'JXKP20241416337044', '考评20240104004', 3, 2, 'KPMB2023122717478573', '战略供应商考评模板', '1', 'admin', NULL, NULL, '3', '2024-01-01 00:00:00', '2024-02-29 00:00:00', NULL, NULL, NULL);
INSERT INTO `performance_appraisal` VALUES (36, 'JXKP2024141738188', '考评20240104005', 3, 1, 'KPMB2023122710406153', '供应商年度考评', '1', 'admin', NULL, NULL, '1', '2024-01-04 00:00:00', '2024-01-31 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for procurement_method
-- ----------------------------
DROP TABLE IF EXISTS `procurement_method`;
CREATE TABLE `procurement_method`  (
  `method_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '采购方式ID',
  `procurement_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购方式',
  `bidding_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招投标信息',
  `framework_agreements` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关框架协议',
  `order_id1` bigint(20) NULL DEFAULT NULL COMMENT '采购订单号',
  PRIMARY KEY (`method_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同采购方式表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of procurement_method
-- ----------------------------

-- ----------------------------
-- Table structure for procurement_task
-- ----------------------------
DROP TABLE IF EXISTS `procurement_task`;
CREATE TABLE `procurement_task`  (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `task_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务单号',
  `procurement_strategy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购策略',
  `task_total` decimal(30, 2) NULL DEFAULT NULL COMMENT '任务总金额',
  `requirement_id` bigint(11) NULL DEFAULT NULL COMMENT '需求申请ID',
  `companies_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司ID',
  `purchaser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购员',
  `currency_id` bigint(11) NULL DEFAULT NULL COMMENT '币种ID',
  `acceptance_strategy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '受理策略',
  `task_number` decimal(20, 2) NULL DEFAULT NULL COMMENT '任务总数量',
  `accepted_quantity` decimal(20, 2) NULL DEFAULT NULL COMMENT '已受理数量',
  `task_occupied` decimal(20, 2) NULL DEFAULT NULL COMMENT '占用任务数量',
  `task_accepted` decimal(20, 2) NULL DEFAULT NULL COMMENT '待受理数量',
  `task_status` bigint(11) NULL DEFAULT NULL COMMENT '状态',
  `requirement_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求申请编号',
  `description_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of procurement_task
-- ----------------------------
INSERT INTO `procurement_task` VALUES (53, 'RW20231115001', '待转订单,待询价', 2760.00, 131, '2', '张三', 89, '转订单', 60.00, 0.00, 0.00, 60.00, 1, 'SCXCG20231115001', '工业润滑剂');
INSERT INTO `procurement_task` VALUES (54, 'RW20231115001', '待转订单,待询价', 320000.00, 132, '1', '倪威', 87, '转订单', 800.00, 0.00, 0.00, 800.00, 1, 'SCXCG20231115001', '云服务器,工业润滑剂');
INSERT INTO `procurement_task` VALUES (55, 'RW20231120002', '待转订单,待询价', 200000.00, 133, '2', '李四', 89, '转订单', 200.00, 0.00, 0.00, 200.00, 4, 'SCXCG20231120002', '工业润滑剂');
INSERT INTO `procurement_task` VALUES (56, 'RW20240102003', '待转订单,待询价', 60000.00, 134, '1', '倪威', 88, '转订单', 2000.00, 0.00, 0.00, 2000.00, 1, 'SCXCG20240102003', '白板笔');
INSERT INTO `procurement_task` VALUES (57, 'RW20240102004', '待转订单,待询价', 4800.00, 135, '2', '刘冲', 88, '转订单', 20.00, 0.00, 0.00, 20.00, 4, 'SCXCG20240102004', '物理服务器');
INSERT INTO `procurement_task` VALUES (58, 'RW20240102005', '待转订单,待询价', 96000.00, 136, '2', '杨文元', 88, '转订单', 400.00, 200.00, 200.00, 200.00, 2, 'SCXCG20240102005', '聚乙烯');
INSERT INTO `procurement_task` VALUES (59, 'RW20240102006', '待转订单,待询价', 2116000.00, 137, '1', '倪威', 85, '转订单', 4600.00, 2300.00, 2300.00, 2300.00, 2, 'SCXCG20240102006', '云服务器');
INSERT INTO `procurement_task` VALUES (60, 'RW20240102007', '待转订单,待询价', 960000.00, 138, '2', '小小', 88, '转订单', 400.00, 0.00, 0.00, 400.00, 1, 'SCXCG20240102007', '物理服务器');
INSERT INTO `procurement_task` VALUES (61, 'RW20240102008', '待转订单,待询价', 44.00, 139, '1', '1', 85, '转订单', 22.00, 0.00, 0.00, 22.00, 4, 'SCXCG20240102008', '工业润滑剂');
INSERT INTO `procurement_task` VALUES (62, 'RW20240102009', '待转订单,待询价', 16.00, 140, '1', '2', 85, '转订单', 4.00, 0.00, 0.00, 4.00, 4, 'SCXCG20240102009', '标签打印机');
INSERT INTO `procurement_task` VALUES (63, 'RW20240103001', '待转订单,待询价', 8000.00, 141, '2', '琳达', 88, '转订单', 20.00, 0.00, 0.00, 20.00, 4, 'SCXCG20240103001', '物理服务器');
INSERT INTO `procurement_task` VALUES (65, 'RW20240104001', '待转订单,待询价', 16000.00, 143, '3', '杨文元', 122, '转订单', 40.00, 20.00, 20.00, 20.00, 2, 'SCXCG20240104001', '羽绒服');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `product_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品编码',
  `specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品规格',
  `unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `price` decimal(20, 2) NULL DEFAULT NULL COMMENT '价格',
  `tax_rate` decimal(20, 2) NULL DEFAULT NULL COMMENT '税率',
  `number` decimal(20, 2) NULL DEFAULT NULL COMMENT '数量',
  `subtotal` decimal(20, 2) NULL DEFAULT NULL COMMENT '小计',
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' 产品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '联想服务器主机（ThinkServe) TS80X', 'CP/FW202203006', '8vCPUs | 32GiB | 500GiB', '台', 5000.00, 0.67, 500.00, 2500000.00, 'PO20231229001');
INSERT INTO `products` VALUES (2, '联想ThinkPadP15v', 'CP/FW202203005', '8vCPUs | 32GiB | 500GiB', '台', 5000.00, 0.67, 600.00, 3000000.00, 'PO20231213002');
INSERT INTO `products` VALUES (3, '惠普HP ZHAN99 G2', 'CP/FW202203004', '8vCPUs | 32GiB | 500GiB', '台', 5000.00, 0.67, 10.00, 50000.00, 'PO20231229001');
INSERT INTO `products` VALUES (4, '惠普TG01-178ccn', 'CP/FW202203003', '8vCPUs | 32GiB | 500GiB', '台', 5000.00, 0.67, 300.00, 1500000.00, 'PO20231228002');
INSERT INTO `products` VALUES (5, '联想 550双路塔式GPU服务器主', 'CP/FW202203002', '8vCPUs | 32GiB | 500GiB', '台', 5000.00, 0.67, 50.00, 250000.00, 'PO20231228002');
INSERT INTO `products` VALUES (6, 'NF33213123280M5英信服务器 2', 'CP/FW202203001', '8vCPUs | 32GiB | 500GiB', '台', 5000.00, 0.67, 300.00, 1500000.00, 'PO20231129001');
INSERT INTO `products` VALUES (7, '桌子', 'CP/FW201912005', '办公桌200cm', '张', 3000.00, 17.00, 40.00, 120000.00, 'PO20231228002');
INSERT INTO `products` VALUES (8, '椅子', 'CP/FW201912004', '会议椅 60cm', '张', 1200.00, 17.00, 500.00, 600000.00, 'PO20231206011');
INSERT INTO `products` VALUES (9, '内存', 'CP/FW201912003', '8G DDR4', '条', 400.00, 17.00, 345.00, 138000.00, 'PO20231122005');
INSERT INTO `products` VALUES (10, '设计咨询服务', 'CP/FW201912002', '二级设计咨询', '次', 50000.00, 6.00, 445.00, 22250000.00, 'PO20231213002');
INSERT INTO `products` VALUES (11, '服务器', 'CP/FW201912001', 'Thinkpad XEON 3850', '台', 250000.00, 17.00, 555.00, 138750000.00, 'PO20231206011');
INSERT INTO `products` VALUES (12, '网络安全服务', 'CP/FW201911002', '局域网故障检测', '项', 100000.00, 6.00, 35.00, 3500000.00, 'PO20231213002');
INSERT INTO `products` VALUES (13, '笔记本', 'CP/FW201911001', 'Thinkpad T480s', '台', 9800.00, 17.00, 40.00, 392000.00, 'PO20231213002');

-- ----------------------------
-- Table structure for quality_order
-- ----------------------------
DROP TABLE IF EXISTS `quality_order`;
CREATE TABLE `quality_order`  (
  `quality_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '质检单Id',
  `orderCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `quality_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '质检编号',
  `receiptNoteNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货编号',
  `deliveryNoteNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货单号',
  `founder` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `receivedDate` datetime NULL DEFAULT NULL COMMENT '到货日期',
  `quality_date` datetime NULL DEFAULT NULL COMMENT '检验日期',
  `inspect_order_type` bigint(11) NULL DEFAULT NULL COMMENT '检验单类型',
  `supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `or_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编号',
  `or_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `material_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料单位',
  `material_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料品类',
  `received_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货数量',
  `inspection_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '送检数量',
  `quality_type` bigint(11) NULL DEFAULT NULL COMMENT '质检类型',
  `inspect_type` bigint(11) NULL DEFAULT NULL COMMENT '检验类型',
  `inspect_start_date` datetime NULL DEFAULT NULL COMMENT '检验开始日期',
  `inspect_end_date` datetime NULL DEFAULT NULL COMMENT '检验结束日期',
  `qualified_number` decimal(10, 2) NULL DEFAULT NULL COMMENT '质检损耗数量',
  `inspect_qualified_number` decimal(10, 2) NULL DEFAULT NULL COMMENT '检验合格数量',
  `inspect_non_conforming_number` decimal(10, 2) NULL DEFAULT NULL COMMENT '检验不合格品数量',
  `non_conforming` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不合格品比例',
  `decection_result_name` bigint(255) NULL DEFAULT NULL COMMENT '检测结果',
  `handling_measures_name` bigint(255) NULL DEFAULT NULL COMMENT '处理措施',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `inspecter` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检验员',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `inventory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库存组织',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  PRIMARY KEY (`quality_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '质检单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quality_order
-- ----------------------------
INSERT INTO `quality_order` VALUES (3, 'PO20231222002', 'IQC20231225001', 'GR20231225003', 'ASN20231222003', 'admin', '2023-12-25 19:46:07', '2023-12-25 00:00:00', '2023-12-25 00:00:00', 2, '福厚互联网科技公司', '000022', '汽车诊断仪', 'mm/s', '智能设备', 55.00, 55.00, NULL, 2, '2023-12-25 00:00:00', '2023-12-25 00:00:00', 0.00, 50.00, 5.00, '10.00%', 1, 4, NULL, 'admin', 4, '2', '长沙实力科技有限公');
INSERT INTO `quality_order` VALUES (4, 'PO20231226008', 'IQC20231226001', 'GR20231226002', 'ASN20231226001', 'admin', '2023-12-26 17:58:14', '2023-12-26 00:00:00', '2023-12-26 00:00:00', 2, '福厚互联网科技公司', '000014', '手提商务包', '立方厘米', '工业品', 100.00, 100.00, NULL, 2, '2023-12-26 00:00:00', '2023-12-26 00:00:00', 0.00, 100.00, 0.00, '900.00%', 1, 4, NULL, 'admin', 4, '1', '长沙实力信息科技有限公司');
INSERT INTO `quality_order` VALUES (5, 'PO20231226008', 'IQC20231226002', 'GR20231226004', 'ASN20231226002', 'admin', '2023-12-26 20:11:01', '2023-12-26 00:00:00', '2023-12-26 00:00:00', 1, '福厚互联网科技公司', '000013', '帆布袋', '立方厘米', '工业品', 100.00, 100.00, NULL, 2, '2023-12-26 00:00:00', '2023-12-26 00:00:00', NULL, 100.00, 0.00, '900.00%', 1, 4, NULL, 'admin', 4, '2', '长沙实力信息科技有限公司');
INSERT INTO `quality_order` VALUES (6, 'PO20231227002', 'IQC20231228001', 'GR20231227004', 'ASN20231227001', 'admin', '2023-12-28 09:19:43', '2023-12-27 00:00:00', '2023-12-28 00:00:00', 1, '讯疼互联网科技公司', '000015', '碘伏', 'mm/s', '医药/保健', 1000.00, 1000.00, NULL, 2, '2023-12-28 00:00:00', '2023-12-28 00:00:00', 0.00, 1000.00, 0.00, '900.00%', 1, 4, NULL, 'admin', 4, '1', '长沙实力信息科技有限公司');

-- ----------------------------
-- Table structure for quality_task_list
-- ----------------------------
DROP TABLE IF EXISTS `quality_task_list`;
CREATE TABLE `quality_task_list`  (
  `quality_task_list_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '质检任务单Id',
  `orderCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `receiptNoteNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货单号',
  `or_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `or_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编号',
  `company` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `receiveQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货数量',
  `receive_date` datetime NULL DEFAULT NULL COMMENT '收货日期',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `quality_status` bigint(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`quality_task_list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '质检任务单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quality_task_list
-- ----------------------------
INSERT INTO `quality_task_list` VALUES (1, 'PO20231222003', 'GR20231225001', '工业润滑剂', '000038', '长沙实力科技有限公', 10.00, '2023-12-25 00:00:00', NULL, 3);
INSERT INTO `quality_task_list` VALUES (2, 'PO20231224001', 'GR20231225002', '物理服务器', '000039', '长沙实力科技有限公', 50.00, '2023-12-25 00:00:00', NULL, 3);
INSERT INTO `quality_task_list` VALUES (3, 'PO20231222002', 'GR20231225003', '汽车诊断仪', '000022', '长沙实力科技有限公', 55.00, '2023-12-25 15:06:57', '李四', 4);
INSERT INTO `quality_task_list` VALUES (4, 'PO20231224001', 'GR20231225004', '导轨-T75', '12-2', NULL, 10.00, '2023-12-25 00:00:00', '张三', 3);
INSERT INTO `quality_task_list` VALUES (5, 'PO20231225001', 'GR20231226001', '羽毛球拍', '000018', NULL, 100.00, '2023-12-26 00:00:00', '张三', 3);
INSERT INTO `quality_task_list` VALUES (6, 'PO20231226008', 'GR20231226002', '手提商务包', '000014', NULL, 100.00, '2023-12-26 17:53:28', '张三', 4);
INSERT INTO `quality_task_list` VALUES (7, 'PO20231226008', 'GR20231226003', '帆布袋', '000013', NULL, 100.00, '2023-12-26 00:00:00', '张三', 3);
INSERT INTO `quality_task_list` VALUES (8, 'PO20231226008', 'GR20231226004', '帆布袋', '000013', NULL, 100.00, '2023-12-26 20:08:17', '张三', 4);
INSERT INTO `quality_task_list` VALUES (12, 'PO20231227002', 'GR20231227004', '碘伏', '000015', NULL, 1000.00, '2023-12-27 20:07:11', '尹兰芳', 4);

-- ----------------------------
-- Table structure for quality_type
-- ----------------------------
DROP TABLE IF EXISTS `quality_type`;
CREATE TABLE `quality_type`  (
  `quality_type_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '质检类型id',
  `quality_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '质检类型名称',
  PRIMARY KEY (`quality_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '质检类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of quality_type
-- ----------------------------

-- ----------------------------
-- Table structure for questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire`  (
  `questionnaire_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '调查id',
  `questionnaire_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调查编码',
  `questionnaire_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调查标题',
  `questionnaire_state` bigint(11) NULL DEFAULT NULL COMMENT '调查状态',
  `questionnaire_type` bigint(11) NULL DEFAULT NULL COMMENT '调查类型',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `survey_classification` bigint(11) NULL DEFAULT NULL COMMENT '调查分类',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `supplier_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商联系人',
  `supplier_supplier_contact_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商联系方式',
  `supplier_contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商联系邮箱',
  `survey_response_time` datetime NULL DEFAULT NULL COMMENT '调查回复时间',
  `survey_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采方调查说明',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`questionnaire_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调查表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------
INSERT INTO `questionnaire` VALUES (12, 'DCB20241415421698', '调查20240104001', 2, 1, '上海寻梦信息技术有限公司', 2, '国网湖南省电力有限公司', ' 明煦', '1745312567324', '1745312567324@163.com', '2024-01-04 00:00:00', NULL, NULL);
INSERT INTO `questionnaire` VALUES (13, 'DCB20241415432936', '调查20240104002', 6, 4, '上汽通用汽车有限公司', 2, '上海红双喜股份有限公司', '谢小豪', '13987654321', '13987654321@163.com', '2024-01-09 00:00:00', NULL, NULL);
INSERT INTO `questionnaire` VALUES (14, 'DCB20241415434326', '调查20240104003', 2, 3, '上海哈啰普惠科技有限公司', 2, '湖南英虎信息传播有限公司', ' 罗琳', '18275631326', '18275631326@163.com', '2024-01-03 00:00:00', NULL, NULL);
INSERT INTO `questionnaire` VALUES (15, 'DCB20241415442951', '调查20240104004', 4, 3, '中国二十冶集团有限公司', 2, '李宁（中国）体育用品有限公司', '欧阳宇', '13987654321', '13987654321@163.com', '2024-01-03 00:00:00', NULL, NULL);
INSERT INTO `questionnaire` VALUES (16, 'DCB2024141717734', '调查20240104005', 6, 1, '上海寻梦信息技术有限公司', 2, '鸿星尔克（厦门）实业有限公司', '胡小厚', '17384256872', '17384256872@163.com', '2024-01-12 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for receipt_details
-- ----------------------------
DROP TABLE IF EXISTS `receipt_details`;
CREATE TABLE `receipt_details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，自增ID',
  `serial_number` int(11) NULL DEFAULT NULL COMMENT '序号',
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `deliveryNoteNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货单号',
  `or_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编号',
  `or_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料名称',
  `material_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料分类',
  `material_specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料规格',
  `material_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料单位',
  `require_number` decimal(10, 2) NULL DEFAULT NULL COMMENT '需求数量',
  `require_time` datetime NULL DEFAULT NULL COMMENT '需求日期',
  `deliveryQuantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '发货数量',
  `rejected_quantity` decimal(10, 2) NULL DEFAULT NULL COMMENT '拒收数量',
  `rejection_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拒收原因',
  `received_quantity` decimal(11, 0) NULL DEFAULT NULL COMMENT '收货数量',
  `no_tax_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '不含税单价（元）',
  `tax_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税率',
  `tax` decimal(5, 2) NULL DEFAULT NULL COMMENT '税率值（%）',
  `tax_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '含税单价',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receiving_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `warehouse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库房',
  `exempt_from_supply_capacity_check` int(11) NULL DEFAULT NULL COMMENT '供货能力免检',
  `exempt_from_material_inspection` int(11) NULL DEFAULT NULL COMMENT '物料免检',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货明细信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receipt_details
-- ----------------------------
INSERT INTO `receipt_details` VALUES (1, NULL, 'PO20231218001', 'ASN20231220002', '000037', '聚酯切片', '胶黏/润滑/车间化学品', NULL, 'KG', 100.00, '2023-12-19 00:00:00', 50.00, NULL, NULL, 50, 200.00, 'J0', 0.00, 200.00, NULL, NULL, NULL, 1, 1, NULL, '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (2, NULL, 'PO20231218001', 'ASN20231220003', '000037', '聚酯切片', '胶黏/润滑/车间化学品', NULL, 'KG', 100.00, '2023-12-19 00:00:00', 50.00, NULL, NULL, 50, 200.00, 'J0', 0.00, 200.00, NULL, NULL, NULL, 1, 1, NULL, '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (3, NULL, 'PO20231221003', 'ASN20231221001', '000005', '冰柜', '大家电', NULL, 'cm/h', 6.00, '2023-12-21 00:00:00', 6.00, NULL, NULL, NULL, 7999.00, 'J3', 7.00, 8559.00, '李四', '18923565577', NULL, 1, 1, NULL, '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (4, NULL, 'PO20231222001', 'ASN20231222001', '000032', '空调', '大家电', NULL, '台', 11.00, '2023-12-22 00:00:00', 11.00, NULL, NULL, NULL, 1999.00, 'X1', 17.00, 2339.00, '张三', '18959667847', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (5, NULL, 'PO20231222002', 'ASN20231222002', '000022', '汽车诊断仪', '智能设备', NULL, 'mm/s', 55.00, '2023-12-22 00:00:00', 22.00, NULL, NULL, NULL, 4999.00, 'J3', 7.00, 5349.00, '李四', '', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (6, NULL, 'PO20231222002', 'ASN20231222003', '000022', '汽车诊断仪', '智能设备', NULL, 'mm/s', 55.00, '2023-12-22 00:00:00', 55.00, NULL, NULL, NULL, 4999.00, 'J3', 7.00, 5349.00, '李四', '', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (7, NULL, 'PO20231222003', 'ASN20231222004', '000034', '标签打印机', '办公设备', NULL, '台', 50.00, '2023-12-22 00:00:00', 30.00, NULL, NULL, NULL, 10.00, 'J5', 4.00, 10.00, '张三', '15211617194', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (8, NULL, 'PO20231222003', 'ASN20231222005', '000034', '标签打印机', '办公设备', NULL, '台', 50.00, '2023-12-22 00:00:00', 30.00, NULL, NULL, NULL, 10.00, 'J5', 4.00, 10.00, '张三', '15211617194', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (18, NULL, 'PO20231222003', 'ASN20231224001', '000038', '工业润滑剂', '导轨', NULL, 'KG', 50.00, '2023-12-22 00:00:00', 10.00, NULL, NULL, NULL, 99.00, 'J3', 7.00, 106.00, '张三', '15211617194', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (19, NULL, 'PO20231222003', 'ASN20231224002', '000038', '工业润滑剂', '导轨', NULL, 'KG', 50.00, '2023-12-22 00:00:00', 10.00, NULL, NULL, NULL, 99.00, 'J3', 7.00, 106.00, '张三', '15211617194', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (20, NULL, 'PO20231224001', 'ASN20231224003', '000039', '物理服务器', '运动/户外', NULL, '台', 50.00, '2023-12-24 00:00:00', 50.00, NULL, NULL, NULL, 999.00, 'J4', 6.00, 1059.00, '张三', '15211617194', NULL, 1, 1, '', '长沙实力科技有限公司');
INSERT INTO `receipt_details` VALUES (21, NULL, 'PO20231224001', 'ASN20231225001', '12-2', '导轨-T75', '导轨', NULL, '米', 50.00, '2023-12-24 00:00:00', 10.00, NULL, NULL, NULL, 599.00, 'J2', 13.00, 677.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (22, NULL, 'PO20231224001', 'ASN20231225002', '12-2', '导轨-T75', '导轨', NULL, '米', 50.00, '2023-12-24 00:00:00', 10.00, NULL, NULL, NULL, 599.00, 'J2', 13.00, 677.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (23, NULL, 'PO20231224001', 'ASN20231225003', '12-2', '导轨-T75', '导轨', NULL, '米', 50.00, '2023-12-24 00:00:00', 10.00, NULL, NULL, NULL, 599.00, 'J2', 13.00, 677.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (24, NULL, 'PO20231225001', 'ASN20231225002', '000032', '空调', '大家电', NULL, '台', 100.00, '2023-12-25 00:00:00', 100.00, NULL, NULL, NULL, 599.00, 'J4', 6.00, 635.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (25, NULL, 'PO20231225001', 'ASN20231225003', '000018', '羽毛球拍', '图书/文娱/教育', NULL, 'mm/a', 100.00, '2023-12-25 00:00:00', 100.00, NULL, NULL, NULL, 5.00, 'J5', 4.00, 5.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (26, NULL, 'PO20231225001', 'ASN20231225004', '000017', '乒乓球', '图书/文娱/教育', NULL, '立方厘米', 100.00, '2023-12-25 00:00:00', 100.00, NULL, NULL, NULL, 699.00, 'J5', 4.00, 727.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (27, NULL, 'PO20231226008', 'ASN20231226001', '000014', '手提商务包', '工业品', NULL, '立方厘米', 100.00, '2023-12-26 00:00:00', 100.00, NULL, NULL, NULL, 109.00, 'L1', 5.00, 114.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (28, NULL, 'PO20231226008', 'ASN20231226002', '000013', '帆布袋', '工业品', NULL, '立方厘米', 100.00, '2023-12-26 00:00:00', 100.00, NULL, NULL, NULL, 59.00, 'X0', 0.00, 59.00, '张三', '15211617194', NULL, 1, 1, '', NULL);
INSERT INTO `receipt_details` VALUES (29, NULL, 'PO20231227002', 'ASN20231227001', '000015', '碘伏', '医药/保健', NULL, 'mm/s', 1000.00, '2023-12-27 00:00:00', 1000.00, NULL, NULL, NULL, 10.00, 'X0', 0.00, 10.00, '尹兰芳', '15569586598', NULL, 1, 1, '', NULL);

-- ----------------------------
-- Table structure for receipt_state
-- ----------------------------
DROP TABLE IF EXISTS `receipt_state`;
CREATE TABLE `receipt_state`  (
  `receipt_state_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '收货状态Id',
  `receipt_state_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货状态名称',
  PRIMARY KEY (`receipt_state_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_state
-- ----------------------------

-- ----------------------------
-- Table structure for receipt_status
-- ----------------------------
DROP TABLE IF EXISTS `receipt_status`;
CREATE TABLE `receipt_status`  (
  `receipt_status_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '入库单状态id',
  `receipt_status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库单状态名称',
  PRIMARY KEY (`receipt_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receipt_status
-- ----------------------------

-- ----------------------------
-- Table structure for requirement_table
-- ----------------------------
DROP TABLE IF EXISTS `requirement_table`;
CREATE TABLE `requirement_table`  (
  `requirement_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '需求类型ID',
  `requirement_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '需求类型名称',
  PRIMARY KEY (`requirement_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of requirement_table
-- ----------------------------
INSERT INTO `requirement_table` VALUES (1, '生产性采购');
INSERT INTO `requirement_table` VALUES (2, '项目性采购');
INSERT INTO `requirement_table` VALUES (3, '\r\n服务性采购');
INSERT INTO `requirement_table` VALUES (4, '一般用品采购');

-- ----------------------------
-- Table structure for review_materials
-- ----------------------------
DROP TABLE IF EXISTS `review_materials`;
CREATE TABLE `review_materials`  (
  `rm_id` int(11) NOT NULL COMMENT '考察物料id',
  `material_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类编码',
  PRIMARY KEY (`rm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of review_materials
-- ----------------------------

-- ----------------------------
-- Table structure for sample_sending
-- ----------------------------
DROP TABLE IF EXISTS `sample_sending`;
CREATE TABLE `sample_sending`  (
  `sample_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '送样单号',
  `sample_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送样编号',
  `sample_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送样单标题',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `purchasing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购组织',
  `purchasing_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购员',
  `sample_type` bigint(11) NULL DEFAULT NULL COMMENT '送样类型',
  `state` bigint(11) NULL DEFAULT NULL COMMENT '状态',
  `acquirer_attachments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采方附件',
  `sample_delivery_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送样单说明',
  `release_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `sbi_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `current_operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前操作人',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`sample_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '送样信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sample_sending
-- ----------------------------
INSERT INTO `sample_sending` VALUES (4, 'SYB2024149215435', '送样20240104001', '上海寻梦信息技术有限公司', NULL, NULL, 1, 4, NULL, NULL, '2024-01-04 15:49:39', '福厚互联网科技公司', 'admin', '胡厚', '13572456832');
INSERT INTO `sample_sending` VALUES (6, 'SYB20241415489286', '送样20240104003', '上海哈啰普惠科技有限公司', '采购组织部', '小芳', 2, 4, NULL, NULL, '2024-01-04 15:49:46', '上海红双喜股份有限公司', '张丽', '谢小豪', '13987654321');
INSERT INTO `sample_sending` VALUES (7, 'SYB20241415501833', '送样20240104004', '上海寻梦信息技术有限公司', '采购组织部', '小红', 1, 4, NULL, NULL, '2024-01-04 15:50:49', '上海红双喜股份有限公司', 'admin', '谢小豪', '13987654321');

-- ----------------------------
-- Table structure for sample_square
-- ----------------------------
DROP TABLE IF EXISTS `sample_square`;
CREATE TABLE `sample_square`  (
  `sample_square_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '送样方编码',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `sample_square_sort` bigint(11) NULL DEFAULT NULL COMMENT '送样方分类',
  PRIMARY KEY (`sample_square_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '送样方' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sample_square
-- ----------------------------

-- ----------------------------
-- Table structure for score_summary
-- ----------------------------
DROP TABLE IF EXISTS `score_summary`;
CREATE TABLE `score_summary`  (
  `summary_id` bigint(11) NOT NULL COMMENT '汇总id',
  `supplier_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `evaluation_id` int(11) NULL DEFAULT NULL COMMENT '考评id',
  `summary_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '汇总得分',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '得分',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级',
  `evaluation_ranking` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评排名',
  `strategy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建议策略',
  PRIMARY KEY (`summary_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评分汇总' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score_summary
-- ----------------------------

-- ----------------------------
-- Table structure for scoring_details
-- ----------------------------
DROP TABLE IF EXISTS `scoring_details`;
CREATE TABLE `scoring_details`  (
  `scoring_details_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评分明细id',
  `supplier_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类编码',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类名称',
  `indicator_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标描述',
  `indicator_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标编码',
  `scoring_criteria` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分标准',
  `weight` double NULL DEFAULT NULL COMMENT '权重(%)',
  `scoring_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分方式',
  `rater` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分人',
  `indicator_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指标类型',
  `rating_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分状态',
  `score` double(10, 2) NULL DEFAULT NULL COMMENT '得分',
  `selectivity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择项',
  `score_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分值从',
  `score_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分值至',
  `feedback` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '反馈备注',
  `evaluation_id` bigint(11) NULL DEFAULT NULL COMMENT '考评id',
  `scoring_template_id` bigint(11) NULL DEFAULT NULL COMMENT '模板id',
  PRIMARY KEY (`scoring_details_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 333 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评分明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scoring_details
-- ----------------------------
INSERT INTO `scoring_details` VALUES (4, '', '', '', '', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 80, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 1);
INSERT INTO `scoring_details` VALUES (5, '', '', '', '', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 20, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 1);
INSERT INTO `scoring_details` VALUES (36, '', '', '', '', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 30, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 2);
INSERT INTO `scoring_details` VALUES (37, '', '', '', '', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 40, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 2);
INSERT INTO `scoring_details` VALUES (38, '', '', '', '', '整体员工素质', 'ZB202312262344', '合作服务过程中员工的整体素质表现', 30, '手工评分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 2);
INSERT INTO `scoring_details` VALUES (272, '', '', '', '', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 60, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 4);
INSERT INTO `scoring_details` VALUES (273, '', '', '', '', '额外供货任务承担', 'ZB20241416225160', '是否承担特殊或者额外的供货任务', 40, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 4);
INSERT INTO `scoring_details` VALUES (282, 'GYS2023112414331791', '福厚互联网科技公司', '1002-1', '智能设备', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 60, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 31, 4);
INSERT INTO `scoring_details` VALUES (283, 'GYS2023112414331791', '福厚互联网科技公司', '1002-1', '智能设备', '额外供货任务承担', 'ZB20241416225160', '是否承担特殊或者额外的供货任务', 40, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 31, 4);
INSERT INTO `scoring_details` VALUES (284, 'GYS20241414438968', '上海红双喜股份有限公司', '1003-1', '大家电', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 60, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 31, 4);
INSERT INTO `scoring_details` VALUES (285, 'GYS20241414438968', '上海红双喜股份有限公司', '1003-1', '大家电', '额外供货任务承担', 'ZB20241416225160', '是否承担特殊或者额外的供货任务', 40, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 31, 4);
INSERT INTO `scoring_details` VALUES (301, 'GYS2023122914458436', '国网湖南省电力有限公司', '1001-2', '文具', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 30, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 33, 2);
INSERT INTO `scoring_details` VALUES (302, 'GYS2023122914458436', '国网湖南省电力有限公司', '1001-2', '文具', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 40, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 33, 2);
INSERT INTO `scoring_details` VALUES (303, 'GYS2023122914458436', '国网湖南省电力有限公司', '1001-2', '文具', '整体员工素质', 'ZB202312262344', '合作服务过程中员工的整体素质表现', 30, '手工评分', 'admin', '1', '', 0.00, '', '0', '100', '', 33, 2);
INSERT INTO `scoring_details` VALUES (308, 'GYS20241414419621', '李宁（中国）体育用品有限公司', '1002-1', '智能设备', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 80, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 34, 1);
INSERT INTO `scoring_details` VALUES (309, 'GYS20241414419621', '李宁（中国）体育用品有限公司', '1002-1', '智能设备', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 20, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 34, 1);
INSERT INTO `scoring_details` VALUES (316, 'GYS2023122914432913', '湖南英虎信息传播有限公司', '1018', '工业品', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 30, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 35, 2);
INSERT INTO `scoring_details` VALUES (317, 'GYS2023122914432913', '湖南英虎信息传播有限公司', '1018', '工业品', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 40, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 35, 2);
INSERT INTO `scoring_details` VALUES (318, 'GYS2023122914432913', '湖南英虎信息传播有限公司', '1018', '工业品', '整体员工素质', 'ZB202312262344', '合作服务过程中员工的整体素质表现', 30, '手工评分', 'admin', '1', '', 0.00, '', '0', '100', '', 35, 2);
INSERT INTO `scoring_details` VALUES (319, '', '', '', '', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 78, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 5);
INSERT INTO `scoring_details` VALUES (320, '', '', '', '', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 22, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', NULL, 5);
INSERT INTO `scoring_details` VALUES (329, 'GYS20241414419621', '李宁（中国）体育用品有限公司', '100111', '服装', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 80, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 36, 1);
INSERT INTO `scoring_details` VALUES (330, 'GYS20241414419621', '李宁（中国）体育用品有限公司', '100111', '服装', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 20, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 36, 1);
INSERT INTO `scoring_details` VALUES (331, 'GYS20241416572093', '鸿星尔克（厦门）实业有限公司', '100111', '服装', '企业信誉', 'ZB202312265631', '主要指企业的银行信誉、合同履行信誉、质量信誉等商业信誉', 80, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 36, 1);
INSERT INTO `scoring_details` VALUES (332, 'GYS20241416572093', '鸿星尔克（厦门）实业有限公司', '100111', '服装', '企业规模', 'ZB202312265432', '主要指企业的营业额规模、人员规模以及固定资产投入规模', 20, '手工打分', 'admin', '1', '', 0.00, '', '0', '100', '', 36, 1);

-- ----------------------------
-- Table structure for scoring_template
-- ----------------------------
DROP TABLE IF EXISTS `scoring_template`;
CREATE TABLE `scoring_template`  (
  `scoring_template_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '评分模板id',
  `scoring_template_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分模板编码',
  `scoring_template_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分模板名称',
  `template_state` bigint(11) NULL DEFAULT NULL COMMENT '模板状态',
  `template_type` bigint(11) NULL DEFAULT NULL COMMENT '模板类型',
  PRIMARY KEY (`scoring_template_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评分模板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scoring_template
-- ----------------------------
INSERT INTO `scoring_template` VALUES (1, 'KPMB2023122710406153', '供应商年度考评', 2, 1);
INSERT INTO `scoring_template` VALUES (2, 'KPMB2023122717478573', '战略供应商考评模板', 2, 1);
INSERT INTO `scoring_template` VALUES (4, 'KPMB20241416236655', '半年度考核模板', 2, 1);
INSERT INTO `scoring_template` VALUES (5, 'KPMB202414173569', '绩效考评模板', 2, 1);

-- ----------------------------
-- Table structure for statement_account
-- ----------------------------
DROP TABLE IF EXISTS `statement_account`;
CREATE TABLE `statement_account`  (
  `statement_account_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '对账单id',
  `company` bigint(11) NULL DEFAULT NULL COMMENT '公司',
  `supplier` bigint(11) NULL DEFAULT NULL COMMENT '供应商名称',
  `total_account` decimal(10, 2) NULL DEFAULT NULL COMMENT '对账总数量',
  `actual_tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '实对含税金额',
  `not_actual_tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '实对不含税金额',
  `actual_tax_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '实对税额',
  `adjustment_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '调整金额',
  `generate_reconciliation_date` datetime NULL DEFAULT NULL COMMENT '生成对账日期',
  `reconciler` bigint(11) NULL DEFAULT NULL COMMENT '对账人',
  `currency_id` bigint(11) NULL DEFAULT NULL COMMENT '币种',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购对账单备注',
  `annex` bigint(11) NULL DEFAULT NULL COMMENT '附件',
  `statement_id` bigint(11) NULL DEFAULT NULL COMMENT '对账明细id',
  `receive_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货编号',
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `statement_account_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对账单号',
  `status` bigint(11) NULL DEFAULT NULL COMMENT '状态',
  `statement_account_state_id` bigint(11) NULL DEFAULT NULL COMMENT '对账类型id',
  `material_name` bigint(20) NULL DEFAULT NULL COMMENT '物料名称',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receiving_date` datetime NULL DEFAULT NULL COMMENT '收货日期',
  PRIMARY KEY (`statement_account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of statement_account
-- ----------------------------

-- ----------------------------
-- Table structure for statement_account_state
-- ----------------------------
DROP TABLE IF EXISTS `statement_account_state`;
CREATE TABLE `statement_account_state`  (
  `statement_account_state_id1` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '对账单类型id',
  `statement_account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对账单类型名称',
  PRIMARY KEY (`statement_account_state_id1`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of statement_account_state
-- ----------------------------

-- ----------------------------
-- Table structure for statement_account_status
-- ----------------------------
DROP TABLE IF EXISTS `statement_account_status`;
CREATE TABLE `statement_account_status`  (
  `statement_account_status_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '对账单状态',
  `statement_account_status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对账单状态名称',
  PRIMARY KEY (`statement_account_status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '对账单状态' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of statement_account_status
-- ----------------------------

-- ----------------------------
-- Table structure for storeroom
-- ----------------------------
DROP TABLE IF EXISTS `storeroom`;
CREATE TABLE `storeroom`  (
  `warehouse_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '库房序号',
  `warehouse_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库房编码',
  `warehouse_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库房名称',
  `status` bigint(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库房表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeroom
-- ----------------------------

-- ----------------------------
-- Table structure for supplier_certification
-- ----------------------------
DROP TABLE IF EXISTS `supplier_certification`;
CREATE TABLE `supplier_certification`  (
  `certificate_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件编码',
  `certificate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件名称',
  `filing_date` datetime NULL DEFAULT NULL COMMENT '存档日期',
  `filing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件',
  PRIMARY KEY (`certificate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier_certification
-- ----------------------------

-- ----------------------------
-- Table structure for supplier_classification
-- ----------------------------
DROP TABLE IF EXISTS `supplier_classification`;
CREATE TABLE `supplier_classification`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类编码',
  `class_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类描述',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '供应商分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier_classification
-- ----------------------------
INSERT INTO `supplier_classification` VALUES (1, 'SUP_A', '一般供应商');
INSERT INTO `supplier_classification` VALUES (2, 'SUP_B', '区域性供应商');
INSERT INTO `supplier_classification` VALUES (3, 'SUP_C', '主力核心供应商');
INSERT INTO `supplier_classification` VALUES (4, 'SUP_D', '战略供应商');

-- ----------------------------
-- Table structure for supplier_details
-- ----------------------------
DROP TABLE IF EXISTS `supplier_details`;
CREATE TABLE `supplier_details`  (
  `sd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `sd_time` datetime NULL DEFAULT NULL COMMENT '邀请时间',
  `sd_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商详细编码',
  `sbi_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `sd_uscc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `sbi_abbreviation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `sbi_serve` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务范围',
  `sd_industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业',
  `sd_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业性质',
  `sd_rt` datetime NULL DEFAULT NULL COMMENT '注册时间',
  `sd_head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `sd_head_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人手机',
  `sd_pcn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要联系人姓名',
  `sd_pce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要联系人邮箱',
  `sd_pcp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要联系人手机号',
  `sd_pcg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要联系人性别',
  `sd_mct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要联系人职务',
  `sd_country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家地区',
  `sd_region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在区域',
  `sd_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商分类',
  `sd_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网址',
  `sd_brief` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `sd_legal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法定代表',
  `sd_ri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册信息',
  `sd_br` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工商注册号',
  `sd_rc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册资本',
  `sd_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册状态',
  `sd_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位电话',
  `sd_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位邮箱',
  `sd_fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `sd_save` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `sd_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `sd_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区(县)',
  `sd_sm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结算方式',
  `sd_bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `sd_currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '币种',
  `sd_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `id_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件编码',
  `certificate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件名称',
  `filing_date` datetime NULL DEFAULT NULL COMMENT '存档日期',
  `filing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件',
  `data_tatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据状态',
  `lifecycle_id` bigint(11) NULL DEFAULT NULL COMMENT '生命周期id',
  `sl_status` bigint(11) NULL DEFAULT NULL COMMENT '升降级状态',
  `sl_advance` bigint(11) NULL DEFAULT NULL COMMENT '预升降级周期',
  PRIMARY KEY (`sd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商详细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier_details
-- ----------------------------
INSERT INTO `supplier_details` VALUES (1, '2023-11-24 00:00:00', 'GYS2023112414331791', '福厚互联网科技公司', '2313432535345345A', '福厚', '3,2', '零售业', '民企', '2023-12-05 00:00:00', '蒋奇', '17326742567', '胡厚', '34195865634@qq.com', '13572456832', NULL, NULL, NULL, NULL, 'SUP_A', NULL, NULL, '', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2023/12/05/banner_20231205174416A002.png', '0', 3, 1, NULL);
INSERT INTO `supplier_details` VALUES (4, '2023-11-29 00:00:00', 'GYS2023112917268366', '测试1', '1346793569284355A', '厚福', '0', '软件和信息技术服务业', '民企', '2023-12-13 00:00:00', '蒋奇', '17326742567', '胡厚1', '34195865634@qq.com', '13572456832', NULL, NULL, NULL, NULL, 'SUP_C', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '1', 1, NULL, NULL);
INSERT INTO `supplier_details` VALUES (5, '2023-11-30 09:18:17', 'GYS2023113091883201', '测试2', '5654432535745655A', '呼呼呼', '0,1', '化学原料和化学制品制造业 ', '民企', NULL, '蒋奇', '17326742567', '胡厚2', '34195865634@qq.com', '13572456832', NULL, NULL, NULL, NULL, 'SUP_C', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL);
INSERT INTO `supplier_details` VALUES (6, '2023-12-07 00:00:00', 'GYS2023127152429565', '讯疼互联网科技公司', '3453534573784345A', '厚厚厚', '0,1', '金融业', '民企', '2023-12-07 00:00:00', '蒋奇', '17326742567', '胡厚3', '34195865634@qq.com', '13572456832', NULL, NULL, NULL, NULL, 'SUP_B', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2023/12/07/球kun_20231207152738A002.jpeg', '1', 2, 1, NULL);
INSERT INTO `supplier_details` VALUES (7, '2023-12-28 00:00:00', 'GYS2023122814179885', '百度公司', '2313432535345345A', '百度', '3', '互联网', '民企', '2023-12-28 00:00:00', '何东', '17463810496', '何东', '17463810496@163.com', '17463810496', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2023/12/28/42110f1435d739e02aa73c25b8763581_20231228142238A001.png', '1', 1, 1, NULL);
INSERT INTO `supplier_details` VALUES (8, '2023-12-28 00:00:00', 'GYS2023122814363077', '百度公司', '1132123135345345A', '百度', '2', '互联网', '民企', '2023-12-28 00:00:00', '何东', '17463810496', '何东', '17463810496@163.com', '17463810496', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2023/12/28/42110f1435d739e02aa73c25b8763581_20231228143635A002.png', '1', 3, 1, NULL);
INSERT INTO `supplier_details` VALUES (9, '2023-12-29 00:00:00', 'GYS2023122914432913', '湖南英虎信息传播有限公司', '91430100770095536R', '英虎传媒', '3', '传媒', '传媒', '2023-12-29 00:00:00', ' 罗琳', '172756131634', ' 罗琳', '18275631326@163.com', '18275631326', NULL, NULL, NULL, NULL, 'SUP_C', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2023/12/29/42110f1435d739e02aa73c25b8763581_20231229150502A001.png', '0', 1, 1, NULL);
INSERT INTO `supplier_details` VALUES (10, '2023-12-29 00:00:00', 'GYS2023122914458436', '国网湖南省电力有限公司', '91430000183770576P', '湖电', '5,3', '电力', '民企', '2023-12-29 00:00:00', '涛涛', '1825312567324', ' 明煦', '1745312567324@163.com', '1745312567324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2023/12/29/42110f1435d739e02aa73c25b8763581_20231229170406A003.png', '0', 1, 1, NULL);
INSERT INTO `supplier_details` VALUES (11, '2023-12-29 15:03:42', 'GYS202312291531968', '湖南建工集团有限公司', '9143000018376036XT', '建工', '1,2', '建工', '民企', NULL, 'amdin', '18274631626', ' 蔡典维', '1747854324134@163.com', '1747854324134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL);
INSERT INTO `supplier_details` VALUES (12, '2024-01-02 00:00:00', 'GYS20241219309215', '鸿星尔克（厦门）实业有限公司', '913502000929999144', '鸿星尔克', '0', '服装', '民企', '2024-01-02 00:00:00', '江天', '18274631626', '江天', '34195865634@qq.com', '18274631626', NULL, NULL, NULL, NULL, 'SUP_D', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2024/01/02/42110f1435d739e02aa73c25b8763581_20240102193128A001.png', '1', 1, 1, NULL);
INSERT INTO `supplier_details` VALUES (13, '2024-01-04 00:00:00', 'GYS20241414419621', '李宁（中国）体育用品有限公司', '91110000663104767L', '李宁', '1', '体育', '民企', '2024-01-04 00:00:00', '欧阳宇', '13987654321', '欧阳宇', '13987654321@163.com', '13987654321', NULL, NULL, NULL, NULL, 'SUP_D', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2024/01/04/42110f1435d739e02aa73c25b8763581_20240104144209A001.png', '0', 1, 1, NULL);
INSERT INTO `supplier_details` VALUES (14, '2024-01-04 00:00:00', 'GYS20241414438968', '上海红双喜股份有限公司', '913100006073389484', '红双喜', '1,2', '体育', '民企', '2024-01-04 00:00:00', '谢小豪', '13987654321', '谢小豪', '13987654321@163.com', '13987654321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2024/01/04/42110f1435d739e02aa73c25b8763581_20240104144404A002.png', '0', 1, 1, NULL);
INSERT INTO `supplier_details` VALUES (15, '2024-01-04 00:00:00', 'GYS20241414534680', '北京赛格立诺科技股份有限公司', '911101026337411677', '赛格立诺', '0', '办公', '民企', '2024-01-04 00:00:00', '刘至盎', '15717266899', '刘至盎', '15717266899@163.com', '15717266899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2024/01/04/42110f1435d739e02aa73c25b8763581_20240104145427A001.png', '0', NULL, NULL, NULL);
INSERT INTO `supplier_details` VALUES (16, '2024-01-04 14:57:49', 'GYS20241414572267', '鸿星尔克（厦门）实业有限公司', '913502000929999144', NULL, '0', '服装业', '民企', NULL, '胡小厚', '17384256872', '胡小厚', '17384256872@163.com', '17384256872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL);
INSERT INTO `supplier_details` VALUES (17, '2024-01-04 00:00:00', 'GYS20241416572093', '鸿星尔克（厦门）实业有限公司', '913502000929999144', '鸿星尔克', '0', '服装业', '民企', '2024-01-04 00:00:00', '胡小厚', '17384256872', '胡小厚', '17384256872@163.com', '17384256872', NULL, NULL, NULL, NULL, 'SUP_D', NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:9300/statics/2024/01/04/42110f1435d739e02aa73c25b8763581_20240104165721A002.png', '0', 2, 1, NULL);

-- ----------------------------
-- Table structure for supplier_invoice_method
-- ----------------------------
DROP TABLE IF EXISTS `supplier_invoice_method`;
CREATE TABLE `supplier_invoice_method`  (
  `invoice_method_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '供应商发票方式',
  `invoice_method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商发票方式名称',
  PRIMARY KEY (`invoice_method_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商发票方式' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier_invoice_method
-- ----------------------------

-- ----------------------------
-- Table structure for supplier_lifecycle
-- ----------------------------
DROP TABLE IF EXISTS `supplier_lifecycle`;
CREATE TABLE `supplier_lifecycle`  (
  `lifecycle_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '生命周期id',
  `cycle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生命周期',
  `blacklisted` bigint(11) NULL DEFAULT NULL COMMENT '加入黑名单',
  `priority_level` bigint(11) NULL DEFAULT NULL COMMENT '优先等级',
  PRIMARY KEY (`lifecycle_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商生命周期' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier_lifecycle
-- ----------------------------
INSERT INTO `supplier_lifecycle` VALUES (1, '注册', 0, 2);
INSERT INTO `supplier_lifecycle` VALUES (2, '推荐', 0, 1);
INSERT INTO `supplier_lifecycle` VALUES (3, '合格', 0, 0);
INSERT INTO `supplier_lifecycle` VALUES (4, '淘汰', 0, 3);

-- ----------------------------
-- Table structure for supplier_material_list
-- ----------------------------
DROP TABLE IF EXISTS `supplier_material_list`;
CREATE TABLE `supplier_material_list`  (
  `supplier_material_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '供应商物料id',
  `material_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物料编码',
  `category_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类编码',
  `supply_id` bigint(11) NULL DEFAULT NULL COMMENT '供货id',
  `soi_id` int(11) NULL DEFAULT NULL COMMENT '考察id',
  `sample_id` bigint(11) NULL DEFAULT NULL COMMENT '送样id',
  `manufacturer` bigint(11) NULL DEFAULT NULL COMMENT '生产厂家',
  `supply_capacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供货能力评级',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `upload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件上传',
  PRIMARY KEY (`supplier_material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商物料表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier_material_list
-- ----------------------------
INSERT INTO `supplier_material_list` VALUES (23, '000040', '12-1', NULL, 11, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (33, '000031', '1001-1', 9, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (34, '000037', '1019', 9, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (35, '000034', '1001-3', 10, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (36, '000033', '1001-2', 10, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (39, '000003', '1001-3', NULL, NULL, 4, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (40, '000021', '1001-3', NULL, NULL, 4, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (41, '000027', '1018', 11, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (42, '000030', '1002-1', 12, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (43, '000025', '1016', 13, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (44, '000899', '1001', 14, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (45, '000002', '1001-3', NULL, 15, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (46, '000899', '1001', NULL, 15, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (47, '000002', '1001-3', NULL, 16, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (48, '100012', '1001-3', NULL, 17, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (49, '100012', '1001-3', NULL, 18, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (50, '000003', '1001-3', NULL, 19, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (51, '100012', '1001-3', NULL, 19, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (53, '000006', '1003-1', NULL, NULL, 6, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (54, '000005', '1003-1', NULL, NULL, 7, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (55, '1021', '100111', 15, NULL, NULL, NULL, '', '', '');
INSERT INTO `supplier_material_list` VALUES (56, '1021', '100111', NULL, 20, NULL, NULL, '', '', '');

-- ----------------------------
-- Table structure for supplier_on_site_inspection
-- ----------------------------
DROP TABLE IF EXISTS `supplier_on_site_inspection`;
CREATE TABLE `supplier_on_site_inspection`  (
  `soi_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '考察id',
  `soi_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考察编码',
  `soi_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考察标题',
  `soi_type` bigint(11) NULL DEFAULT NULL COMMENT '考察类型',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司',
  `inspection_date_from` datetime NULL DEFAULT NULL COMMENT '考察日期从',
  `inspection_date_to` datetime NULL DEFAULT NULL COMMENT '考察日期至',
  `scoring_method` bigint(11) NULL DEFAULT NULL COMMENT '评分方式',
  `sd_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `supplier_contact` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商联系人',
  `supplier_contact_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商联系电话',
  `supplier_contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商联系邮箱',
  `actual_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实际考察地址',
  `inspection_results` bigint(11) NULL DEFAULT NULL COMMENT '考察结果',
  `final_score` decimal(10, 2) NULL DEFAULT NULL COMMENT '最终得分',
  `level` bigint(11) NULL DEFAULT NULL COMMENT '等级',
  `comprehensive_opinions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '综合意见',
  `applicant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `examine` int(11) NULL DEFAULT NULL COMMENT '审批状态',
  PRIMARY KEY (`soi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应商现场考察' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier_on_site_inspection
-- ----------------------------
INSERT INTO `supplier_on_site_inspection` VALUES (15, 'XCKC20241415135025', '现场考察20240104001', 2, '阿里巴巴集团控股有限公司', '2024-01-04 00:00:00', '2024-01-05 00:00:00', 1, '李宁（中国）体育用品有限公司', '欧阳宇', '13987654321', '13987654321@163.com', '开福区蔡锷北路司马里38号', 1, 87.00, NULL, NULL, 'admin', 3);
INSERT INTO `supplier_on_site_inspection` VALUES (16, 'XCKC20241415342042', '现场考察20240104002', 2, '上海寻梦信息技术有限公司', '2024-01-04 00:00:00', '2024-01-08 00:00:00', 1, '湖南英虎信息传播有限公司', ' 罗琳', '18275631326', '18275631326@163.com', '开福区蔡锷北路司马里38号', 2, 46.00, NULL, NULL, 'admin', 3);
INSERT INTO `supplier_on_site_inspection` VALUES (17, 'XCKC20241415364014', '现场考察20240104003', 1, '上海蔚来汽车有限公司', '2024-01-02 00:00:00', '2024-01-04 00:00:00', 1, '国网湖南省电力有限公司', ' 明煦', '1745312567324', '1745312567324@163.com', '湖南省长沙市雨花区营盘路', 1, 67.00, NULL, NULL, 'admin', 3);
INSERT INTO `supplier_on_site_inspection` VALUES (18, 'XCKC20241415381603', '现场考察20240104004', 2, '上海哈啰普惠科技有限公司', '2023-12-13 00:00:00', '2023-12-27 00:00:00', 1, '湖南英虎信息传播有限公司', ' 罗琳', '18275631326', '18275631326@163.com', NULL, 1, 77.00, NULL, NULL, 'admin', 3);
INSERT INTO `supplier_on_site_inspection` VALUES (19, 'XCKC20241415416522', '现场考察20240104005', 2, '上汽通用汽车有限公司', '2023-12-19 00:00:00', '2023-12-29 00:00:00', 1, '上海红双喜股份有限公司', '谢小豪', '13987654321', '13987654321@163.com', '湖南省岳麓区', 2, 54.00, NULL, NULL, 'admin', 3);
INSERT INTO `supplier_on_site_inspection` VALUES (20, 'XCKC2024141709456', '现场考察20240104006', 2, '上海寻梦信息技术有限公司', '2024-01-04 00:00:00', '2024-01-04 00:00:00', 1, '鸿星尔克（厦门）实业有限公司', '胡小厚', '17384256872', '17384256872@163.com', '开福区蔡锷北路司马里999号', 1, 88.00, NULL, NULL, 'admin', 2);

-- ----------------------------
-- Table structure for supply
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply`  (
  `supply_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '供货id',
  `sd_id` bigint(11) NULL DEFAULT NULL COMMENT '供应商id',
  `companies_id` bigint(11) NULL DEFAULT NULL COMMENT '公司id',
  `founder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `creation_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `last_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后更新人',
  `last_update_time` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_by_epartment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人部门',
  PRIMARY KEY (`supply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供货管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES (9, 1, 2, 'admin', '2023-12-28 00:00:00', 'admin', '2024-01-03 09:54:40', '123', '采购部');
INSERT INTO `supply` VALUES (10, 12, 1, 'admin', '2024-01-02 00:00:00', 'admin', '2024-01-03 09:55:55', NULL, '采购部');
INSERT INTO `supply` VALUES (11, 10, 5, 'admin', '2024-01-04 00:00:00', 'admin', '2024-01-04 15:02:16', NULL, '采购部');
INSERT INTO `supply` VALUES (12, 9, 4, 'admin', '2024-01-04 00:00:00', 'admin', '2024-01-04 15:07:58', NULL, '采购部');
INSERT INTO `supply` VALUES (13, 13, 6, '胡福厚', '2024-01-04 00:00:00', 'admin', '2024-01-04 15:09:48', NULL, '采购部');
INSERT INTO `supply` VALUES (14, 1, 8, '范小厚', '2024-01-04 00:00:00', 'admin', '2024-01-04 15:10:05', NULL, '采购部');
INSERT INTO `supply` VALUES (15, 17, 4, 'admin', '2024-01-04 16:58:37', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `tax_rate`;
CREATE TABLE `tax_rate`  (
  `tax_type_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '税种序号',
  `tax_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '税种代码',
  `describes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `tax_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '税率',
  `enable` bigint(20) NULL DEFAULT NULL COMMENT '是否启用 0：停用 1：启用',
  PRIMARY KEY (`tax_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '税率表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tax_rate
-- ----------------------------
INSERT INTO `tax_rate` VALUES (1, 'J0', '0% 进项税,中国', 0.00, 1);
INSERT INTO `tax_rate` VALUES (2, 'J1', '16% 进项税,中国', 16.00, 1);
INSERT INTO `tax_rate` VALUES (3, 'J2', '13% 进项税,中国', 13.00, 1);
INSERT INTO `tax_rate` VALUES (4, 'J3', '7% 运费进项税,中国', 7.00, 0);
INSERT INTO `tax_rate` VALUES (5, 'J4', '6% 进项税,中国', 6.00, 1);
INSERT INTO `tax_rate` VALUES (6, 'J5', '4% 进项税,中国', 4.00, 1);
INSERT INTO `tax_rate` VALUES (7, 'JA', '17%进项税，中国', 17.00, 1);
INSERT INTO `tax_rate` VALUES (8, 'L1', '5% 奢侈品税,中国', 5.00, 1);
INSERT INTO `tax_rate` VALUES (9, 'X0', '0% 销项税,中国', 0.00, 1);
INSERT INTO `tax_rate` VALUES (10, 'X1', '17% 销项税,中国', 17.00, 1);
INSERT INTO `tax_rate` VALUES (11, 'X2', '13% 销项税,中国', 13.00, 1);
INSERT INTO `tax_rate` VALUES (12, 'LX001', '增值税', 7.00, 1);
INSERT INTO `tax_rate` VALUES (13, 'LX002', '消费税', 20.00, 1);

-- ----------------------------
-- Table structure for unit_of_account
-- ----------------------------
DROP TABLE IF EXISTS `unit_of_account`;
CREATE TABLE `unit_of_account`  (
  `unit_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '单位ID',
  `unit_type_name` bigint(255) NULL DEFAULT NULL COMMENT '单位类型名称',
  `calculation_unit_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计算单位编码',
  `metering_unit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计量单位',
  `source_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源系统',
  `conversion_units` bigint(20) NULL DEFAULT NULL COMMENT '转换单位',
  `unit_conversion_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '单位转换率',
  `accuracy` decimal(10, 2) NULL DEFAULT NULL COMMENT '精度',
  `enable` bigint(20) NULL DEFAULT NULL COMMENT '是否启用 0：启用 1：停用',
  PRIMARY KEY (`unit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '计算单位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of unit_of_account
-- ----------------------------
INSERT INTO `unit_of_account` VALUES (22, 1, 'CMM', '盒', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (23, 1, 'KKM', '箱', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (24, 14, '2KM', '台', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (25, 1, '2CM', 'KG', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (26, 4, '12-1', '米', 'SRM', NULL, NULL, NULL, 0);
INSERT INTO `unit_of_account` VALUES (27, 9, '2M', '厘米/秒', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (28, 9, '2X', 'm/min', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (29, 9, 'CMH', 'cm/h', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (30, 9, 'KMH', '公里/小时', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (31, 9, 'M/S', '米/秒', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (32, 9, 'MMA', 'mm/a', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (33, 9, 'MMH', 'mm/h', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (34, 9, 'MMS', 'mm/s', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (35, 9, 'MTS', 'm/h', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (36, 42, 'CCM', '立方厘米', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (37, 42, 'CDM', '立方分米', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (38, 42, 'CTL', '厘升', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (39, 42, 'FT3', '立方英尺', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (40, 42, 'GLL', '加仑(美国)', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (41, 42, 'HL', '百公升', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (42, 34, 'S', '秒', 'SRM', NULL, NULL, NULL, 1);
INSERT INTO `unit_of_account` VALUES (43, 1, 'kk', 'G', 'ERP', 25, 10.00, 10.00, 1);

-- ----------------------------
-- Table structure for warehouse_enter
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_enter`;
CREATE TABLE `warehouse_enter`  (
  `receipt_id2` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '收货单Id',
  `receipt_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货单号',
  `receipt_name` bigint(11) NULL DEFAULT NULL COMMENT '收货人',
  `recepit_number` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货总数量',
  `recepit_amount_tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '收货含税金额',
  `receipt_remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货备注',
  `annex` bigint(11) NULL DEFAULT NULL COMMENT '附件',
  `inspector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '质检人',
  `supplier` bigint(11) NULL DEFAULT NULL COMMENT '供应商名称',
  `receipt_concat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `receipt_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `receipt_state` bigint(11) NULL DEFAULT NULL COMMENT '收货状态',
  PRIMARY KEY (`receipt_id2`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_enter
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
