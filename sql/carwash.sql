/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : carwash

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 13/05/2019 13:23:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `areaid` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区县编码',
  `area` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区县名称',
  `cityid` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属城市编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3144 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区县信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES (1, '110101', '东城区', '110100');
INSERT INTO `areas` VALUES (2, '110102', '西城区', '110100');
INSERT INTO `areas` VALUES (3, '110103', '崇文区', '110100');
INSERT INTO `areas` VALUES (4, '110104', '宣武区', '110100');
INSERT INTO `areas` VALUES (5, '110105', '朝阳区', '110100');
INSERT INTO `areas` VALUES (6, '110106', '丰台区', '110100');
INSERT INTO `areas` VALUES (7, '110107', '石景山区', '110100');
INSERT INTO `areas` VALUES (8, '110108', '海淀区', '110100');
INSERT INTO `areas` VALUES (9, '110109', '门头沟区', '110100');
INSERT INTO `areas` VALUES (10, '110111', '房山区', '110100');
INSERT INTO `areas` VALUES (11, '110112', '通州区', '110100');
INSERT INTO `areas` VALUES (12, '110113', '顺义区', '110100');
INSERT INTO `areas` VALUES (13, '110114', '昌平区', '110100');
INSERT INTO `areas` VALUES (14, '110115', '大兴区', '110100');
INSERT INTO `areas` VALUES (15, '110116', '怀柔区', '110100');
INSERT INTO `areas` VALUES (16, '110117', '平谷区', '110100');
INSERT INTO `areas` VALUES (17, '110228', '密云县', '110100');
INSERT INTO `areas` VALUES (18, '110229', '延庆县', '110100');
INSERT INTO `areas` VALUES (19, '120101', '和平区', '120100');
INSERT INTO `areas` VALUES (20, '120102', '河东区', '120100');
INSERT INTO `areas` VALUES (21, '120103', '河西区', '120100');
INSERT INTO `areas` VALUES (22, '120104', '南开区', '120100');
INSERT INTO `areas` VALUES (23, '120105', '河北区', '120100');
INSERT INTO `areas` VALUES (24, '120106', '红桥区', '120100');
INSERT INTO `areas` VALUES (25, '120107', '塘沽区', '120100');
INSERT INTO `areas` VALUES (26, '120108', '汉沽区', '120100');
INSERT INTO `areas` VALUES (27, '120109', '大港区', '120100');
INSERT INTO `areas` VALUES (28, '120110', '东丽区', '120100');
INSERT INTO `areas` VALUES (29, '120111', '西青区', '120100');
INSERT INTO `areas` VALUES (30, '120112', '津南区', '120100');
INSERT INTO `areas` VALUES (31, '120113', '北辰区', '120100');
INSERT INTO `areas` VALUES (32, '120114', '武清区', '120100');
INSERT INTO `areas` VALUES (33, '120115', '宝坻区', '120100');
INSERT INTO `areas` VALUES (34, '120221', '宁河县', '120100');
INSERT INTO `areas` VALUES (35, '120223', '静海县', '120100');
INSERT INTO `areas` VALUES (36, '120225', '蓟　县', '120100');
INSERT INTO `areas` VALUES (37, '130101', '市辖区', '130100');
INSERT INTO `areas` VALUES (38, '130102', '长安区', '130100');
INSERT INTO `areas` VALUES (39, '130103', '桥东区', '130100');
INSERT INTO `areas` VALUES (40, '130104', '桥西区', '130100');
INSERT INTO `areas` VALUES (41, '130105', '新华区', '130100');
INSERT INTO `areas` VALUES (42, '130107', '井陉矿区', '130100');
INSERT INTO `areas` VALUES (43, '130108', '裕华区', '130100');
INSERT INTO `areas` VALUES (44, '130121', '井陉县', '130100');
INSERT INTO `areas` VALUES (45, '130123', '正定县', '130100');
INSERT INTO `areas` VALUES (46, '130124', '栾城县', '130100');
INSERT INTO `areas` VALUES (47, '130125', '行唐县', '130100');
INSERT INTO `areas` VALUES (48, '130126', '灵寿县', '130100');
INSERT INTO `areas` VALUES (49, '130127', '高邑县', '130100');
INSERT INTO `areas` VALUES (50, '130128', '深泽县', '130100');
INSERT INTO `areas` VALUES (51, '130129', '赞皇县', '130100');
INSERT INTO `areas` VALUES (52, '130130', '无极县', '130100');
INSERT INTO `areas` VALUES (53, '130131', '平山县', '130100');
INSERT INTO `areas` VALUES (54, '130132', '元氏县', '130100');
INSERT INTO `areas` VALUES (55, '130133', '赵　县', '130100');
INSERT INTO `areas` VALUES (56, '130181', '辛集市', '130100');
INSERT INTO `areas` VALUES (57, '130182', '藁城市', '130100');
INSERT INTO `areas` VALUES (58, '130183', '晋州市', '130100');
INSERT INTO `areas` VALUES (59, '130184', '新乐市', '130100');
INSERT INTO `areas` VALUES (60, '130185', '鹿泉市', '130100');
INSERT INTO `areas` VALUES (61, '130201', '市辖区', '130200');
INSERT INTO `areas` VALUES (62, '130202', '路南区', '130200');
INSERT INTO `areas` VALUES (63, '130203', '路北区', '130200');
INSERT INTO `areas` VALUES (64, '130204', '古冶区', '130200');
INSERT INTO `areas` VALUES (65, '130205', '开平区', '130200');
INSERT INTO `areas` VALUES (66, '130207', '丰南区', '130200');
INSERT INTO `areas` VALUES (67, '130208', '丰润区', '130200');
INSERT INTO `areas` VALUES (68, '130223', '滦　县', '130200');
INSERT INTO `areas` VALUES (69, '130224', '滦南县', '130200');
INSERT INTO `areas` VALUES (70, '130225', '乐亭县', '130200');
INSERT INTO `areas` VALUES (71, '130227', '迁西县', '130200');
INSERT INTO `areas` VALUES (72, '130229', '玉田县', '130200');
INSERT INTO `areas` VALUES (73, '130230', '唐海县', '130200');
INSERT INTO `areas` VALUES (74, '130281', '遵化市', '130200');
INSERT INTO `areas` VALUES (75, '130283', '迁安市', '130200');
INSERT INTO `areas` VALUES (76, '130301', '市辖区', '130300');
INSERT INTO `areas` VALUES (77, '130302', '海港区', '130300');
INSERT INTO `areas` VALUES (78, '130303', '山海关区', '130300');
INSERT INTO `areas` VALUES (79, '130304', '北戴河区', '130300');
INSERT INTO `areas` VALUES (80, '130321', '青龙满族自治县', '130300');
INSERT INTO `areas` VALUES (81, '130322', '昌黎县', '130300');
INSERT INTO `areas` VALUES (82, '130323', '抚宁县', '130300');
INSERT INTO `areas` VALUES (83, '130324', '卢龙县', '130300');
INSERT INTO `areas` VALUES (84, '130401', '市辖区', '130400');
INSERT INTO `areas` VALUES (85, '130402', '邯山区', '130400');
INSERT INTO `areas` VALUES (86, '130403', '丛台区', '130400');
INSERT INTO `areas` VALUES (87, '130404', '复兴区', '130400');
INSERT INTO `areas` VALUES (88, '130406', '峰峰矿区', '130400');
INSERT INTO `areas` VALUES (89, '130421', '邯郸县', '130400');
INSERT INTO `areas` VALUES (90, '130423', '临漳县', '130400');
INSERT INTO `areas` VALUES (91, '130424', '成安县', '130400');
INSERT INTO `areas` VALUES (92, '130425', '大名县', '130400');
INSERT INTO `areas` VALUES (93, '130426', '涉　县', '130400');
INSERT INTO `areas` VALUES (94, '130427', '磁　县', '130400');
INSERT INTO `areas` VALUES (95, '130428', '肥乡县', '130400');
INSERT INTO `areas` VALUES (96, '130429', '永年县', '130400');
INSERT INTO `areas` VALUES (97, '130430', '邱　县', '130400');
INSERT INTO `areas` VALUES (98, '130431', '鸡泽县', '130400');
INSERT INTO `areas` VALUES (99, '130432', '广平县', '130400');
INSERT INTO `areas` VALUES (100, '130433', '馆陶县', '130400');
INSERT INTO `areas` VALUES (101, '130434', '魏　县', '130400');
INSERT INTO `areas` VALUES (102, '130435', '曲周县', '130400');
INSERT INTO `areas` VALUES (103, '130481', '武安市', '130400');
INSERT INTO `areas` VALUES (104, '130501', '市辖区', '130500');
INSERT INTO `areas` VALUES (105, '130502', '桥东区', '130500');
INSERT INTO `areas` VALUES (106, '130503', '桥西区', '130500');
INSERT INTO `areas` VALUES (107, '130521', '邢台县', '130500');
INSERT INTO `areas` VALUES (108, '130522', '临城县', '130500');
INSERT INTO `areas` VALUES (109, '130523', '内丘县', '130500');
INSERT INTO `areas` VALUES (110, '130524', '柏乡县', '130500');
INSERT INTO `areas` VALUES (111, '130525', '隆尧县', '130500');
INSERT INTO `areas` VALUES (112, '130526', '任　县', '130500');
INSERT INTO `areas` VALUES (113, '130527', '南和县', '130500');
INSERT INTO `areas` VALUES (114, '130528', '宁晋县', '130500');
INSERT INTO `areas` VALUES (115, '130529', '巨鹿县', '130500');
INSERT INTO `areas` VALUES (116, '130530', '新河县', '130500');
INSERT INTO `areas` VALUES (117, '130531', '广宗县', '130500');
INSERT INTO `areas` VALUES (118, '130532', '平乡县', '130500');
INSERT INTO `areas` VALUES (119, '130533', '威　县', '130500');
INSERT INTO `areas` VALUES (120, '130534', '清河县', '130500');
INSERT INTO `areas` VALUES (121, '130535', '临西县', '130500');
INSERT INTO `areas` VALUES (122, '130581', '南宫市', '130500');
INSERT INTO `areas` VALUES (123, '130582', '沙河市', '130500');
INSERT INTO `areas` VALUES (124, '130601', '市辖区', '130600');
INSERT INTO `areas` VALUES (125, '130602', '新市区', '130600');
INSERT INTO `areas` VALUES (126, '130603', '北市区', '130600');
INSERT INTO `areas` VALUES (127, '130604', '南市区', '130600');
INSERT INTO `areas` VALUES (128, '130621', '满城县', '130600');
INSERT INTO `areas` VALUES (129, '130622', '清苑县', '130600');
INSERT INTO `areas` VALUES (130, '130623', '涞水县', '130600');
INSERT INTO `areas` VALUES (131, '130624', '阜平县', '130600');
INSERT INTO `areas` VALUES (132, '130625', '徐水县', '130600');
INSERT INTO `areas` VALUES (133, '130626', '定兴县', '130600');
INSERT INTO `areas` VALUES (134, '130627', '唐　县', '130600');
INSERT INTO `areas` VALUES (135, '130628', '高阳县', '130600');
INSERT INTO `areas` VALUES (136, '130629', '容城县', '130600');
INSERT INTO `areas` VALUES (137, '130630', '涞源县', '130600');
INSERT INTO `areas` VALUES (138, '130631', '望都县', '130600');
INSERT INTO `areas` VALUES (139, '130632', '安新县', '130600');
INSERT INTO `areas` VALUES (140, '130633', '易　县', '130600');
INSERT INTO `areas` VALUES (141, '130634', '曲阳县', '130600');
INSERT INTO `areas` VALUES (142, '130635', '蠡　县', '130600');
INSERT INTO `areas` VALUES (143, '130636', '顺平县', '130600');
INSERT INTO `areas` VALUES (144, '130637', '博野县', '130600');
INSERT INTO `areas` VALUES (145, '130638', '雄　县', '130600');
INSERT INTO `areas` VALUES (146, '130681', '涿州市', '130600');
INSERT INTO `areas` VALUES (147, '130682', '定州市', '130600');
INSERT INTO `areas` VALUES (148, '130683', '安国市', '130600');
INSERT INTO `areas` VALUES (149, '130684', '高碑店市', '130600');
INSERT INTO `areas` VALUES (150, '130701', '市辖区', '130700');
INSERT INTO `areas` VALUES (151, '130702', '桥东区', '130700');
INSERT INTO `areas` VALUES (152, '130703', '桥西区', '130700');
INSERT INTO `areas` VALUES (153, '130705', '宣化区', '130700');
INSERT INTO `areas` VALUES (154, '130706', '下花园区', '130700');
INSERT INTO `areas` VALUES (155, '130721', '宣化县', '130700');
INSERT INTO `areas` VALUES (156, '130722', '张北县', '130700');
INSERT INTO `areas` VALUES (157, '130723', '康保县', '130700');
INSERT INTO `areas` VALUES (158, '130724', '沽源县', '130700');
INSERT INTO `areas` VALUES (159, '130725', '尚义县', '130700');
INSERT INTO `areas` VALUES (160, '130726', '蔚　县', '130700');
INSERT INTO `areas` VALUES (161, '130727', '阳原县', '130700');
INSERT INTO `areas` VALUES (162, '130728', '怀安县', '130700');
INSERT INTO `areas` VALUES (163, '130729', '万全县', '130700');
INSERT INTO `areas` VALUES (164, '130730', '怀来县', '130700');
INSERT INTO `areas` VALUES (165, '130731', '涿鹿县', '130700');
INSERT INTO `areas` VALUES (166, '130732', '赤城县', '130700');
INSERT INTO `areas` VALUES (167, '130733', '崇礼县', '130700');
INSERT INTO `areas` VALUES (168, '130801', '市辖区', '130800');
INSERT INTO `areas` VALUES (169, '130802', '双桥区', '130800');
INSERT INTO `areas` VALUES (170, '130803', '双滦区', '130800');
INSERT INTO `areas` VALUES (171, '130804', '鹰手营子矿区', '130800');
INSERT INTO `areas` VALUES (172, '130821', '承德县', '130800');
INSERT INTO `areas` VALUES (173, '130822', '兴隆县', '130800');
INSERT INTO `areas` VALUES (174, '130823', '平泉县', '130800');
INSERT INTO `areas` VALUES (175, '130824', '滦平县', '130800');
INSERT INTO `areas` VALUES (176, '130825', '隆化县', '130800');
INSERT INTO `areas` VALUES (177, '130826', '丰宁满族自治县', '130800');
INSERT INTO `areas` VALUES (178, '130827', '宽城满族自治县', '130800');
INSERT INTO `areas` VALUES (179, '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `areas` VALUES (180, '130901', '市辖区', '130900');
INSERT INTO `areas` VALUES (181, '130902', '新华区', '130900');
INSERT INTO `areas` VALUES (182, '130903', '运河区', '130900');
INSERT INTO `areas` VALUES (183, '130921', '沧　县', '130900');
INSERT INTO `areas` VALUES (184, '130922', '青　县', '130900');
INSERT INTO `areas` VALUES (185, '130923', '东光县', '130900');
INSERT INTO `areas` VALUES (186, '130924', '海兴县', '130900');
INSERT INTO `areas` VALUES (187, '130925', '盐山县', '130900');
INSERT INTO `areas` VALUES (188, '130926', '肃宁县', '130900');
INSERT INTO `areas` VALUES (189, '130927', '南皮县', '130900');
INSERT INTO `areas` VALUES (190, '130928', '吴桥县', '130900');
INSERT INTO `areas` VALUES (191, '130929', '献　县', '130900');
INSERT INTO `areas` VALUES (192, '130930', '孟村回族自治县', '130900');
INSERT INTO `areas` VALUES (193, '130981', '泊头市', '130900');
INSERT INTO `areas` VALUES (194, '130982', '任丘市', '130900');
INSERT INTO `areas` VALUES (195, '130983', '黄骅市', '130900');
INSERT INTO `areas` VALUES (196, '130984', '河间市', '130900');
INSERT INTO `areas` VALUES (197, '131001', '市辖区', '131000');
INSERT INTO `areas` VALUES (198, '131002', '安次区', '131000');
INSERT INTO `areas` VALUES (199, '131003', '广阳区', '131000');
INSERT INTO `areas` VALUES (200, '131022', '固安县', '131000');
INSERT INTO `areas` VALUES (201, '131023', '永清县', '131000');
INSERT INTO `areas` VALUES (202, '131024', '香河县', '131000');
INSERT INTO `areas` VALUES (203, '131025', '大城县', '131000');
INSERT INTO `areas` VALUES (204, '131026', '文安县', '131000');
INSERT INTO `areas` VALUES (205, '131028', '大厂回族自治县', '131000');
INSERT INTO `areas` VALUES (206, '131081', '霸州市', '131000');
INSERT INTO `areas` VALUES (207, '131082', '三河市', '131000');
INSERT INTO `areas` VALUES (208, '131101', '市辖区', '131100');
INSERT INTO `areas` VALUES (209, '131102', '桃城区', '131100');
INSERT INTO `areas` VALUES (210, '131121', '枣强县', '131100');
INSERT INTO `areas` VALUES (211, '131122', '武邑县', '131100');
INSERT INTO `areas` VALUES (212, '131123', '武强县', '131100');
INSERT INTO `areas` VALUES (213, '131124', '饶阳县', '131100');
INSERT INTO `areas` VALUES (214, '131125', '安平县', '131100');
INSERT INTO `areas` VALUES (215, '131126', '故城县', '131100');
INSERT INTO `areas` VALUES (216, '131127', '景　县', '131100');
INSERT INTO `areas` VALUES (217, '131128', '阜城县', '131100');
INSERT INTO `areas` VALUES (218, '131181', '冀州市', '131100');
INSERT INTO `areas` VALUES (219, '131182', '深州市', '131100');
INSERT INTO `areas` VALUES (220, '140101', '市辖区', '140100');
INSERT INTO `areas` VALUES (221, '140105', '小店区', '140100');
INSERT INTO `areas` VALUES (222, '140106', '迎泽区', '140100');
INSERT INTO `areas` VALUES (223, '140107', '杏花岭区', '140100');
INSERT INTO `areas` VALUES (224, '140108', '尖草坪区', '140100');
INSERT INTO `areas` VALUES (225, '140109', '万柏林区', '140100');
INSERT INTO `areas` VALUES (226, '140110', '晋源区', '140100');
INSERT INTO `areas` VALUES (227, '140121', '清徐县', '140100');
INSERT INTO `areas` VALUES (228, '140122', '阳曲县', '140100');
INSERT INTO `areas` VALUES (229, '140123', '娄烦县', '140100');
INSERT INTO `areas` VALUES (230, '140181', '古交市', '140100');
INSERT INTO `areas` VALUES (231, '140201', '市辖区', '140200');
INSERT INTO `areas` VALUES (232, '140202', '城　区', '140200');
INSERT INTO `areas` VALUES (233, '140203', '矿　区', '140200');
INSERT INTO `areas` VALUES (234, '140211', '南郊区', '140200');
INSERT INTO `areas` VALUES (235, '140212', '新荣区', '140200');
INSERT INTO `areas` VALUES (236, '140221', '阳高县', '140200');
INSERT INTO `areas` VALUES (237, '140222', '天镇县', '140200');
INSERT INTO `areas` VALUES (238, '140223', '广灵县', '140200');
INSERT INTO `areas` VALUES (239, '140224', '灵丘县', '140200');
INSERT INTO `areas` VALUES (240, '140225', '浑源县', '140200');
INSERT INTO `areas` VALUES (241, '140226', '左云县', '140200');
INSERT INTO `areas` VALUES (242, '140227', '大同县', '140200');
INSERT INTO `areas` VALUES (243, '140301', '市辖区', '140300');
INSERT INTO `areas` VALUES (244, '140302', '城　区', '140300');
INSERT INTO `areas` VALUES (245, '140303', '矿　区', '140300');
INSERT INTO `areas` VALUES (246, '140311', '郊　区', '140300');
INSERT INTO `areas` VALUES (247, '140321', '平定县', '140300');
INSERT INTO `areas` VALUES (248, '140322', '盂　县', '140300');
INSERT INTO `areas` VALUES (249, '140401', '市辖区', '140400');
INSERT INTO `areas` VALUES (250, '140402', '城　区', '140400');
INSERT INTO `areas` VALUES (251, '140411', '郊　区', '140400');
INSERT INTO `areas` VALUES (252, '140421', '长治县', '140400');
INSERT INTO `areas` VALUES (253, '140423', '襄垣县', '140400');
INSERT INTO `areas` VALUES (254, '140424', '屯留县', '140400');
INSERT INTO `areas` VALUES (255, '140425', '平顺县', '140400');
INSERT INTO `areas` VALUES (256, '140426', '黎城县', '140400');
INSERT INTO `areas` VALUES (257, '140427', '壶关县', '140400');
INSERT INTO `areas` VALUES (258, '140428', '长子县', '140400');
INSERT INTO `areas` VALUES (259, '140429', '武乡县', '140400');
INSERT INTO `areas` VALUES (260, '140430', '沁　县', '140400');
INSERT INTO `areas` VALUES (261, '140431', '沁源县', '140400');
INSERT INTO `areas` VALUES (262, '140481', '潞城市', '140400');
INSERT INTO `areas` VALUES (263, '140501', '市辖区', '140500');
INSERT INTO `areas` VALUES (264, '140502', '城　区', '140500');
INSERT INTO `areas` VALUES (265, '140521', '沁水县', '140500');
INSERT INTO `areas` VALUES (266, '140522', '阳城县', '140500');
INSERT INTO `areas` VALUES (267, '140524', '陵川县', '140500');
INSERT INTO `areas` VALUES (268, '140525', '泽州县', '140500');
INSERT INTO `areas` VALUES (269, '140581', '高平市', '140500');
INSERT INTO `areas` VALUES (270, '140601', '市辖区', '140600');
INSERT INTO `areas` VALUES (271, '140602', '朔城区', '140600');
INSERT INTO `areas` VALUES (272, '140603', '平鲁区', '140600');
INSERT INTO `areas` VALUES (273, '140621', '山阴县', '140600');
INSERT INTO `areas` VALUES (274, '140622', '应　县', '140600');
INSERT INTO `areas` VALUES (275, '140623', '右玉县', '140600');
INSERT INTO `areas` VALUES (276, '140624', '怀仁县', '140600');
INSERT INTO `areas` VALUES (277, '140701', '市辖区', '140700');
INSERT INTO `areas` VALUES (278, '140702', '榆次区', '140700');
INSERT INTO `areas` VALUES (279, '140721', '榆社县', '140700');
INSERT INTO `areas` VALUES (280, '140722', '左权县', '140700');
INSERT INTO `areas` VALUES (281, '140723', '和顺县', '140700');
INSERT INTO `areas` VALUES (282, '140724', '昔阳县', '140700');
INSERT INTO `areas` VALUES (283, '140725', '寿阳县', '140700');
INSERT INTO `areas` VALUES (284, '140726', '太谷县', '140700');
INSERT INTO `areas` VALUES (285, '140727', '祁　县', '140700');
INSERT INTO `areas` VALUES (286, '140728', '平遥县', '140700');
INSERT INTO `areas` VALUES (287, '140729', '灵石县', '140700');
INSERT INTO `areas` VALUES (288, '140781', '介休市', '140700');
INSERT INTO `areas` VALUES (289, '140801', '市辖区', '140800');
INSERT INTO `areas` VALUES (290, '140802', '盐湖区', '140800');
INSERT INTO `areas` VALUES (291, '140821', '临猗县', '140800');
INSERT INTO `areas` VALUES (292, '140822', '万荣县', '140800');
INSERT INTO `areas` VALUES (293, '140823', '闻喜县', '140800');
INSERT INTO `areas` VALUES (294, '140824', '稷山县', '140800');
INSERT INTO `areas` VALUES (295, '140825', '新绛县', '140800');
INSERT INTO `areas` VALUES (296, '140826', '绛　县', '140800');
INSERT INTO `areas` VALUES (297, '140827', '垣曲县', '140800');
INSERT INTO `areas` VALUES (298, '140828', '夏　县', '140800');
INSERT INTO `areas` VALUES (299, '140829', '平陆县', '140800');
INSERT INTO `areas` VALUES (300, '140830', '芮城县', '140800');
INSERT INTO `areas` VALUES (301, '140881', '永济市', '140800');
INSERT INTO `areas` VALUES (302, '140882', '河津市', '140800');
INSERT INTO `areas` VALUES (303, '140901', '市辖区', '140900');
INSERT INTO `areas` VALUES (304, '140902', '忻府区', '140900');
INSERT INTO `areas` VALUES (305, '140921', '定襄县', '140900');
INSERT INTO `areas` VALUES (306, '140922', '五台县', '140900');
INSERT INTO `areas` VALUES (307, '140923', '代　县', '140900');
INSERT INTO `areas` VALUES (308, '140924', '繁峙县', '140900');
INSERT INTO `areas` VALUES (309, '140925', '宁武县', '140900');
INSERT INTO `areas` VALUES (310, '140926', '静乐县', '140900');
INSERT INTO `areas` VALUES (311, '140927', '神池县', '140900');
INSERT INTO `areas` VALUES (312, '140928', '五寨县', '140900');
INSERT INTO `areas` VALUES (313, '140929', '岢岚县', '140900');
INSERT INTO `areas` VALUES (314, '140930', '河曲县', '140900');
INSERT INTO `areas` VALUES (315, '140931', '保德县', '140900');
INSERT INTO `areas` VALUES (316, '140932', '偏关县', '140900');
INSERT INTO `areas` VALUES (317, '140981', '原平市', '140900');
INSERT INTO `areas` VALUES (318, '141001', '市辖区', '141000');
INSERT INTO `areas` VALUES (319, '141002', '尧都区', '141000');
INSERT INTO `areas` VALUES (320, '141021', '曲沃县', '141000');
INSERT INTO `areas` VALUES (321, '141022', '翼城县', '141000');
INSERT INTO `areas` VALUES (322, '141023', '襄汾县', '141000');
INSERT INTO `areas` VALUES (323, '141024', '洪洞县', '141000');
INSERT INTO `areas` VALUES (324, '141025', '古　县', '141000');
INSERT INTO `areas` VALUES (325, '141026', '安泽县', '141000');
INSERT INTO `areas` VALUES (326, '141027', '浮山县', '141000');
INSERT INTO `areas` VALUES (327, '141028', '吉　县', '141000');
INSERT INTO `areas` VALUES (328, '141029', '乡宁县', '141000');
INSERT INTO `areas` VALUES (329, '141030', '大宁县', '141000');
INSERT INTO `areas` VALUES (330, '141031', '隰　县', '141000');
INSERT INTO `areas` VALUES (331, '141032', '永和县', '141000');
INSERT INTO `areas` VALUES (332, '141033', '蒲　县', '141000');
INSERT INTO `areas` VALUES (333, '141034', '汾西县', '141000');
INSERT INTO `areas` VALUES (334, '141081', '侯马市', '141000');
INSERT INTO `areas` VALUES (335, '141082', '霍州市', '141000');
INSERT INTO `areas` VALUES (336, '141101', '市辖区', '141100');
INSERT INTO `areas` VALUES (337, '141102', '离石区', '141100');
INSERT INTO `areas` VALUES (338, '141121', '文水县', '141100');
INSERT INTO `areas` VALUES (339, '141122', '交城县', '141100');
INSERT INTO `areas` VALUES (340, '141123', '兴　县', '141100');
INSERT INTO `areas` VALUES (341, '141124', '临　县', '141100');
INSERT INTO `areas` VALUES (342, '141125', '柳林县', '141100');
INSERT INTO `areas` VALUES (343, '141126', '石楼县', '141100');
INSERT INTO `areas` VALUES (344, '141127', '岚　县', '141100');
INSERT INTO `areas` VALUES (345, '141128', '方山县', '141100');
INSERT INTO `areas` VALUES (346, '141129', '中阳县', '141100');
INSERT INTO `areas` VALUES (347, '141130', '交口县', '141100');
INSERT INTO `areas` VALUES (348, '141181', '孝义市', '141100');
INSERT INTO `areas` VALUES (349, '141182', '汾阳市', '141100');
INSERT INTO `areas` VALUES (350, '150101', '市辖区', '150100');
INSERT INTO `areas` VALUES (351, '150102', '新城区', '150100');
INSERT INTO `areas` VALUES (352, '150103', '回民区', '150100');
INSERT INTO `areas` VALUES (353, '150104', '玉泉区', '150100');
INSERT INTO `areas` VALUES (354, '150105', '赛罕区', '150100');
INSERT INTO `areas` VALUES (355, '150121', '土默特左旗', '150100');
INSERT INTO `areas` VALUES (356, '150122', '托克托县', '150100');
INSERT INTO `areas` VALUES (357, '150123', '和林格尔县', '150100');
INSERT INTO `areas` VALUES (358, '150124', '清水河县', '150100');
INSERT INTO `areas` VALUES (359, '150125', '武川县', '150100');
INSERT INTO `areas` VALUES (360, '150201', '市辖区', '150200');
INSERT INTO `areas` VALUES (361, '150202', '东河区', '150200');
INSERT INTO `areas` VALUES (362, '150203', '昆都仑区', '150200');
INSERT INTO `areas` VALUES (363, '150204', '青山区', '150200');
INSERT INTO `areas` VALUES (364, '150205', '石拐区', '150200');
INSERT INTO `areas` VALUES (365, '150206', '白云矿区', '150200');
INSERT INTO `areas` VALUES (366, '150207', '九原区', '150200');
INSERT INTO `areas` VALUES (367, '150221', '土默特右旗', '150200');
INSERT INTO `areas` VALUES (368, '150222', '固阳县', '150200');
INSERT INTO `areas` VALUES (369, '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `areas` VALUES (370, '150301', '市辖区', '150300');
INSERT INTO `areas` VALUES (371, '150302', '海勃湾区', '150300');
INSERT INTO `areas` VALUES (372, '150303', '海南区', '150300');
INSERT INTO `areas` VALUES (373, '150304', '乌达区', '150300');
INSERT INTO `areas` VALUES (374, '150401', '市辖区', '150400');
INSERT INTO `areas` VALUES (375, '150402', '红山区', '150400');
INSERT INTO `areas` VALUES (376, '150403', '元宝山区', '150400');
INSERT INTO `areas` VALUES (377, '150404', '松山区', '150400');
INSERT INTO `areas` VALUES (378, '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `areas` VALUES (379, '150422', '巴林左旗', '150400');
INSERT INTO `areas` VALUES (380, '150423', '巴林右旗', '150400');
INSERT INTO `areas` VALUES (381, '150424', '林西县', '150400');
INSERT INTO `areas` VALUES (382, '150425', '克什克腾旗', '150400');
INSERT INTO `areas` VALUES (383, '150426', '翁牛特旗', '150400');
INSERT INTO `areas` VALUES (384, '150428', '喀喇沁旗', '150400');
INSERT INTO `areas` VALUES (385, '150429', '宁城县', '150400');
INSERT INTO `areas` VALUES (386, '150430', '敖汉旗', '150400');
INSERT INTO `areas` VALUES (387, '150501', '市辖区', '150500');
INSERT INTO `areas` VALUES (388, '150502', '科尔沁区', '150500');
INSERT INTO `areas` VALUES (389, '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `areas` VALUES (390, '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `areas` VALUES (391, '150523', '开鲁县', '150500');
INSERT INTO `areas` VALUES (392, '150524', '库伦旗', '150500');
INSERT INTO `areas` VALUES (393, '150525', '奈曼旗', '150500');
INSERT INTO `areas` VALUES (394, '150526', '扎鲁特旗', '150500');
INSERT INTO `areas` VALUES (395, '150581', '霍林郭勒市', '150500');
INSERT INTO `areas` VALUES (396, '150602', '东胜区', '150600');
INSERT INTO `areas` VALUES (397, '150621', '达拉特旗', '150600');
INSERT INTO `areas` VALUES (398, '150622', '准格尔旗', '150600');
INSERT INTO `areas` VALUES (399, '150623', '鄂托克前旗', '150600');
INSERT INTO `areas` VALUES (400, '150624', '鄂托克旗', '150600');
INSERT INTO `areas` VALUES (401, '150625', '杭锦旗', '150600');
INSERT INTO `areas` VALUES (402, '150626', '乌审旗', '150600');
INSERT INTO `areas` VALUES (403, '150627', '伊金霍洛旗', '150600');
INSERT INTO `areas` VALUES (404, '150701', '市辖区', '150700');
INSERT INTO `areas` VALUES (405, '150702', '海拉尔区', '150700');
INSERT INTO `areas` VALUES (406, '150721', '阿荣旗', '150700');
INSERT INTO `areas` VALUES (407, '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `areas` VALUES (408, '150723', '鄂伦春自治旗', '150700');
INSERT INTO `areas` VALUES (409, '150724', '鄂温克族自治旗', '150700');
INSERT INTO `areas` VALUES (410, '150725', '陈巴尔虎旗', '150700');
INSERT INTO `areas` VALUES (411, '150726', '新巴尔虎左旗', '150700');
INSERT INTO `areas` VALUES (412, '150727', '新巴尔虎右旗', '150700');
INSERT INTO `areas` VALUES (413, '150781', '满洲里市', '150700');
INSERT INTO `areas` VALUES (414, '150782', '牙克石市', '150700');
INSERT INTO `areas` VALUES (415, '150783', '扎兰屯市', '150700');
INSERT INTO `areas` VALUES (416, '150784', '额尔古纳市', '150700');
INSERT INTO `areas` VALUES (417, '150785', '根河市', '150700');
INSERT INTO `areas` VALUES (418, '150801', '市辖区', '150800');
INSERT INTO `areas` VALUES (419, '150802', '临河区', '150800');
INSERT INTO `areas` VALUES (420, '150821', '五原县', '150800');
INSERT INTO `areas` VALUES (421, '150822', '磴口县', '150800');
INSERT INTO `areas` VALUES (422, '150823', '乌拉特前旗', '150800');
INSERT INTO `areas` VALUES (423, '150824', '乌拉特中旗', '150800');
INSERT INTO `areas` VALUES (424, '150825', '乌拉特后旗', '150800');
INSERT INTO `areas` VALUES (425, '150826', '杭锦后旗', '150800');
INSERT INTO `areas` VALUES (426, '150901', '市辖区', '150900');
INSERT INTO `areas` VALUES (427, '150902', '集宁区', '150900');
INSERT INTO `areas` VALUES (428, '150921', '卓资县', '150900');
INSERT INTO `areas` VALUES (429, '150922', '化德县', '150900');
INSERT INTO `areas` VALUES (430, '150923', '商都县', '150900');
INSERT INTO `areas` VALUES (431, '150924', '兴和县', '150900');
INSERT INTO `areas` VALUES (432, '150925', '凉城县', '150900');
INSERT INTO `areas` VALUES (433, '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `areas` VALUES (434, '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `areas` VALUES (435, '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `areas` VALUES (436, '150929', '四子王旗', '150900');
INSERT INTO `areas` VALUES (437, '150981', '丰镇市', '150900');
INSERT INTO `areas` VALUES (438, '152201', '乌兰浩特市', '152200');
INSERT INTO `areas` VALUES (439, '152202', '阿尔山市', '152200');
INSERT INTO `areas` VALUES (440, '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `areas` VALUES (441, '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `areas` VALUES (442, '152223', '扎赉特旗', '152200');
INSERT INTO `areas` VALUES (443, '152224', '突泉县', '152200');
INSERT INTO `areas` VALUES (444, '152501', '二连浩特市', '152500');
INSERT INTO `areas` VALUES (445, '152502', '锡林浩特市', '152500');
INSERT INTO `areas` VALUES (446, '152522', '阿巴嘎旗', '152500');
INSERT INTO `areas` VALUES (447, '152523', '苏尼特左旗', '152500');
INSERT INTO `areas` VALUES (448, '152524', '苏尼特右旗', '152500');
INSERT INTO `areas` VALUES (449, '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `areas` VALUES (450, '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `areas` VALUES (451, '152527', '太仆寺旗', '152500');
INSERT INTO `areas` VALUES (452, '152528', '镶黄旗', '152500');
INSERT INTO `areas` VALUES (453, '152529', '正镶白旗', '152500');
INSERT INTO `areas` VALUES (454, '152530', '正蓝旗', '152500');
INSERT INTO `areas` VALUES (455, '152531', '多伦县', '152500');
INSERT INTO `areas` VALUES (456, '152921', '阿拉善左旗', '152900');
INSERT INTO `areas` VALUES (457, '152922', '阿拉善右旗', '152900');
INSERT INTO `areas` VALUES (458, '152923', '额济纳旗', '152900');
INSERT INTO `areas` VALUES (459, '210101', '市辖区', '210100');
INSERT INTO `areas` VALUES (460, '210102', '和平区', '210100');
INSERT INTO `areas` VALUES (461, '210103', '沈河区', '210100');
INSERT INTO `areas` VALUES (462, '210104', '大东区', '210100');
INSERT INTO `areas` VALUES (463, '210105', '皇姑区', '210100');
INSERT INTO `areas` VALUES (464, '210106', '铁西区', '210100');
INSERT INTO `areas` VALUES (465, '210111', '苏家屯区', '210100');
INSERT INTO `areas` VALUES (466, '210112', '东陵区', '210100');
INSERT INTO `areas` VALUES (467, '210113', '新城子区', '210100');
INSERT INTO `areas` VALUES (468, '210114', '于洪区', '210100');
INSERT INTO `areas` VALUES (469, '210122', '辽中县', '210100');
INSERT INTO `areas` VALUES (470, '210123', '康平县', '210100');
INSERT INTO `areas` VALUES (471, '210124', '法库县', '210100');
INSERT INTO `areas` VALUES (472, '210181', '新民市', '210100');
INSERT INTO `areas` VALUES (473, '210201', '市辖区', '210200');
INSERT INTO `areas` VALUES (474, '210202', '中山区', '210200');
INSERT INTO `areas` VALUES (475, '210203', '西岗区', '210200');
INSERT INTO `areas` VALUES (476, '210204', '沙河口区', '210200');
INSERT INTO `areas` VALUES (477, '210211', '甘井子区', '210200');
INSERT INTO `areas` VALUES (478, '210212', '旅顺口区', '210200');
INSERT INTO `areas` VALUES (479, '210213', '金州区', '210200');
INSERT INTO `areas` VALUES (480, '210224', '长海县', '210200');
INSERT INTO `areas` VALUES (481, '210281', '瓦房店市', '210200');
INSERT INTO `areas` VALUES (482, '210282', '普兰店市', '210200');
INSERT INTO `areas` VALUES (483, '210283', '庄河市', '210200');
INSERT INTO `areas` VALUES (484, '210301', '市辖区', '210300');
INSERT INTO `areas` VALUES (485, '210302', '铁东区', '210300');
INSERT INTO `areas` VALUES (486, '210303', '铁西区', '210300');
INSERT INTO `areas` VALUES (487, '210304', '立山区', '210300');
INSERT INTO `areas` VALUES (488, '210311', '千山区', '210300');
INSERT INTO `areas` VALUES (489, '210321', '台安县', '210300');
INSERT INTO `areas` VALUES (490, '210323', '岫岩满族自治县', '210300');
INSERT INTO `areas` VALUES (491, '210381', '海城市', '210300');
INSERT INTO `areas` VALUES (492, '210401', '市辖区', '210400');
INSERT INTO `areas` VALUES (493, '210402', '新抚区', '210400');
INSERT INTO `areas` VALUES (494, '210403', '东洲区', '210400');
INSERT INTO `areas` VALUES (495, '210404', '望花区', '210400');
INSERT INTO `areas` VALUES (496, '210411', '顺城区', '210400');
INSERT INTO `areas` VALUES (497, '210421', '抚顺县', '210400');
INSERT INTO `areas` VALUES (498, '210422', '新宾满族自治县', '210400');
INSERT INTO `areas` VALUES (499, '210423', '清原满族自治县', '210400');
INSERT INTO `areas` VALUES (500, '210501', '市辖区', '210500');
INSERT INTO `areas` VALUES (501, '210502', '平山区', '210500');
INSERT INTO `areas` VALUES (502, '210503', '溪湖区', '210500');
INSERT INTO `areas` VALUES (503, '210504', '明山区', '210500');
INSERT INTO `areas` VALUES (504, '210505', '南芬区', '210500');
INSERT INTO `areas` VALUES (505, '210521', '本溪满族自治县', '210500');
INSERT INTO `areas` VALUES (506, '210522', '桓仁满族自治县', '210500');
INSERT INTO `areas` VALUES (507, '210601', '市辖区', '210600');
INSERT INTO `areas` VALUES (508, '210602', '元宝区', '210600');
INSERT INTO `areas` VALUES (509, '210603', '振兴区', '210600');
INSERT INTO `areas` VALUES (510, '210604', '振安区', '210600');
INSERT INTO `areas` VALUES (511, '210624', '宽甸满族自治县', '210600');
INSERT INTO `areas` VALUES (512, '210681', '东港市', '210600');
INSERT INTO `areas` VALUES (513, '210682', '凤城市', '210600');
INSERT INTO `areas` VALUES (514, '210701', '市辖区', '210700');
INSERT INTO `areas` VALUES (515, '210702', '古塔区', '210700');
INSERT INTO `areas` VALUES (516, '210703', '凌河区', '210700');
INSERT INTO `areas` VALUES (517, '210711', '太和区', '210700');
INSERT INTO `areas` VALUES (518, '210726', '黑山县', '210700');
INSERT INTO `areas` VALUES (519, '210727', '义　县', '210700');
INSERT INTO `areas` VALUES (520, '210781', '凌海市', '210700');
INSERT INTO `areas` VALUES (521, '210782', '北宁市', '210700');
INSERT INTO `areas` VALUES (522, '210801', '市辖区', '210800');
INSERT INTO `areas` VALUES (523, '210802', '站前区', '210800');
INSERT INTO `areas` VALUES (524, '210803', '西市区', '210800');
INSERT INTO `areas` VALUES (525, '210804', '鲅鱼圈区', '210800');
INSERT INTO `areas` VALUES (526, '210811', '老边区', '210800');
INSERT INTO `areas` VALUES (527, '210881', '盖州市', '210800');
INSERT INTO `areas` VALUES (528, '210882', '大石桥市', '210800');
INSERT INTO `areas` VALUES (529, '210901', '市辖区', '210900');
INSERT INTO `areas` VALUES (530, '210902', '海州区', '210900');
INSERT INTO `areas` VALUES (531, '210903', '新邱区', '210900');
INSERT INTO `areas` VALUES (532, '210904', '太平区', '210900');
INSERT INTO `areas` VALUES (533, '210905', '清河门区', '210900');
INSERT INTO `areas` VALUES (534, '210911', '细河区', '210900');
INSERT INTO `areas` VALUES (535, '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `areas` VALUES (536, '210922', '彰武县', '210900');
INSERT INTO `areas` VALUES (537, '211001', '市辖区', '211000');
INSERT INTO `areas` VALUES (538, '211002', '白塔区', '211000');
INSERT INTO `areas` VALUES (539, '211003', '文圣区', '211000');
INSERT INTO `areas` VALUES (540, '211004', '宏伟区', '211000');
INSERT INTO `areas` VALUES (541, '211005', '弓长岭区', '211000');
INSERT INTO `areas` VALUES (542, '211011', '太子河区', '211000');
INSERT INTO `areas` VALUES (543, '211021', '辽阳县', '211000');
INSERT INTO `areas` VALUES (544, '211081', '灯塔市', '211000');
INSERT INTO `areas` VALUES (545, '211101', '市辖区', '211100');
INSERT INTO `areas` VALUES (546, '211102', '双台子区', '211100');
INSERT INTO `areas` VALUES (547, '211103', '兴隆台区', '211100');
INSERT INTO `areas` VALUES (548, '211121', '大洼县', '211100');
INSERT INTO `areas` VALUES (549, '211122', '盘山县', '211100');
INSERT INTO `areas` VALUES (550, '211201', '市辖区', '211200');
INSERT INTO `areas` VALUES (551, '211202', '银州区', '211200');
INSERT INTO `areas` VALUES (552, '211204', '清河区', '211200');
INSERT INTO `areas` VALUES (553, '211221', '铁岭县', '211200');
INSERT INTO `areas` VALUES (554, '211223', '西丰县', '211200');
INSERT INTO `areas` VALUES (555, '211224', '昌图县', '211200');
INSERT INTO `areas` VALUES (556, '211281', '调兵山市', '211200');
INSERT INTO `areas` VALUES (557, '211282', '开原市', '211200');
INSERT INTO `areas` VALUES (558, '211301', '市辖区', '211300');
INSERT INTO `areas` VALUES (559, '211302', '双塔区', '211300');
INSERT INTO `areas` VALUES (560, '211303', '龙城区', '211300');
INSERT INTO `areas` VALUES (561, '211321', '朝阳县', '211300');
INSERT INTO `areas` VALUES (562, '211322', '建平县', '211300');
INSERT INTO `areas` VALUES (563, '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `areas` VALUES (564, '211381', '北票市', '211300');
INSERT INTO `areas` VALUES (565, '211382', '凌源市', '211300');
INSERT INTO `areas` VALUES (566, '211401', '市辖区', '211400');
INSERT INTO `areas` VALUES (567, '211402', '连山区', '211400');
INSERT INTO `areas` VALUES (568, '211403', '龙港区', '211400');
INSERT INTO `areas` VALUES (569, '211404', '南票区', '211400');
INSERT INTO `areas` VALUES (570, '211421', '绥中县', '211400');
INSERT INTO `areas` VALUES (571, '211422', '建昌县', '211400');
INSERT INTO `areas` VALUES (572, '211481', '兴城市', '211400');
INSERT INTO `areas` VALUES (573, '220101', '市辖区', '220100');
INSERT INTO `areas` VALUES (574, '220102', '南关区', '220100');
INSERT INTO `areas` VALUES (575, '220103', '宽城区', '220100');
INSERT INTO `areas` VALUES (576, '220104', '朝阳区', '220100');
INSERT INTO `areas` VALUES (577, '220105', '二道区', '220100');
INSERT INTO `areas` VALUES (578, '220106', '绿园区', '220100');
INSERT INTO `areas` VALUES (579, '220112', '双阳区', '220100');
INSERT INTO `areas` VALUES (580, '220122', '农安县', '220100');
INSERT INTO `areas` VALUES (581, '220181', '九台市', '220100');
INSERT INTO `areas` VALUES (582, '220182', '榆树市', '220100');
INSERT INTO `areas` VALUES (583, '220183', '德惠市', '220100');
INSERT INTO `areas` VALUES (584, '220201', '市辖区', '220200');
INSERT INTO `areas` VALUES (585, '220202', '昌邑区', '220200');
INSERT INTO `areas` VALUES (586, '220203', '龙潭区', '220200');
INSERT INTO `areas` VALUES (587, '220204', '船营区', '220200');
INSERT INTO `areas` VALUES (588, '220211', '丰满区', '220200');
INSERT INTO `areas` VALUES (589, '220221', '永吉县', '220200');
INSERT INTO `areas` VALUES (590, '220281', '蛟河市', '220200');
INSERT INTO `areas` VALUES (591, '220282', '桦甸市', '220200');
INSERT INTO `areas` VALUES (592, '220283', '舒兰市', '220200');
INSERT INTO `areas` VALUES (593, '220284', '磐石市', '220200');
INSERT INTO `areas` VALUES (594, '220301', '市辖区', '220300');
INSERT INTO `areas` VALUES (595, '220302', '铁西区', '220300');
INSERT INTO `areas` VALUES (596, '220303', '铁东区', '220300');
INSERT INTO `areas` VALUES (597, '220322', '梨树县', '220300');
INSERT INTO `areas` VALUES (598, '220323', '伊通满族自治县', '220300');
INSERT INTO `areas` VALUES (599, '220381', '公主岭市', '220300');
INSERT INTO `areas` VALUES (600, '220382', '双辽市', '220300');
INSERT INTO `areas` VALUES (601, '220401', '市辖区', '220400');
INSERT INTO `areas` VALUES (602, '220402', '龙山区', '220400');
INSERT INTO `areas` VALUES (603, '220403', '西安区', '220400');
INSERT INTO `areas` VALUES (604, '220421', '东丰县', '220400');
INSERT INTO `areas` VALUES (605, '220422', '东辽县', '220400');
INSERT INTO `areas` VALUES (606, '220501', '市辖区', '220500');
INSERT INTO `areas` VALUES (607, '220502', '东昌区', '220500');
INSERT INTO `areas` VALUES (608, '220503', '二道江区', '220500');
INSERT INTO `areas` VALUES (609, '220521', '通化县', '220500');
INSERT INTO `areas` VALUES (610, '220523', '辉南县', '220500');
INSERT INTO `areas` VALUES (611, '220524', '柳河县', '220500');
INSERT INTO `areas` VALUES (612, '220581', '梅河口市', '220500');
INSERT INTO `areas` VALUES (613, '220582', '集安市', '220500');
INSERT INTO `areas` VALUES (614, '220601', '市辖区', '220600');
INSERT INTO `areas` VALUES (615, '220602', '八道江区', '220600');
INSERT INTO `areas` VALUES (616, '220621', '抚松县', '220600');
INSERT INTO `areas` VALUES (617, '220622', '靖宇县', '220600');
INSERT INTO `areas` VALUES (618, '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `areas` VALUES (619, '220625', '江源县', '220600');
INSERT INTO `areas` VALUES (620, '220681', '临江市', '220600');
INSERT INTO `areas` VALUES (621, '220701', '市辖区', '220700');
INSERT INTO `areas` VALUES (622, '220702', '宁江区', '220700');
INSERT INTO `areas` VALUES (623, '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `areas` VALUES (624, '220722', '长岭县', '220700');
INSERT INTO `areas` VALUES (625, '220723', '乾安县', '220700');
INSERT INTO `areas` VALUES (626, '220724', '扶余县', '220700');
INSERT INTO `areas` VALUES (627, '220801', '市辖区', '220800');
INSERT INTO `areas` VALUES (628, '220802', '洮北区', '220800');
INSERT INTO `areas` VALUES (629, '220821', '镇赉县', '220800');
INSERT INTO `areas` VALUES (630, '220822', '通榆县', '220800');
INSERT INTO `areas` VALUES (631, '220881', '洮南市', '220800');
INSERT INTO `areas` VALUES (632, '220882', '大安市', '220800');
INSERT INTO `areas` VALUES (633, '222401', '延吉市', '222400');
INSERT INTO `areas` VALUES (634, '222402', '图们市', '222400');
INSERT INTO `areas` VALUES (635, '222403', '敦化市', '222400');
INSERT INTO `areas` VALUES (636, '222404', '珲春市', '222400');
INSERT INTO `areas` VALUES (637, '222405', '龙井市', '222400');
INSERT INTO `areas` VALUES (638, '222406', '和龙市', '222400');
INSERT INTO `areas` VALUES (639, '222424', '汪清县', '222400');
INSERT INTO `areas` VALUES (640, '222426', '安图县', '222400');
INSERT INTO `areas` VALUES (641, '230101', '市辖区', '230100');
INSERT INTO `areas` VALUES (642, '230102', '道里区', '230100');
INSERT INTO `areas` VALUES (643, '230103', '南岗区', '230100');
INSERT INTO `areas` VALUES (644, '230104', '道外区', '230100');
INSERT INTO `areas` VALUES (645, '230106', '香坊区', '230100');
INSERT INTO `areas` VALUES (646, '230107', '动力区', '230100');
INSERT INTO `areas` VALUES (647, '230108', '平房区', '230100');
INSERT INTO `areas` VALUES (648, '230109', '松北区', '230100');
INSERT INTO `areas` VALUES (649, '230111', '呼兰区', '230100');
INSERT INTO `areas` VALUES (650, '230123', '依兰县', '230100');
INSERT INTO `areas` VALUES (651, '230124', '方正县', '230100');
INSERT INTO `areas` VALUES (652, '230125', '宾　县', '230100');
INSERT INTO `areas` VALUES (653, '230126', '巴彦县', '230100');
INSERT INTO `areas` VALUES (654, '230127', '木兰县', '230100');
INSERT INTO `areas` VALUES (655, '230128', '通河县', '230100');
INSERT INTO `areas` VALUES (656, '230129', '延寿县', '230100');
INSERT INTO `areas` VALUES (657, '230181', '阿城市', '230100');
INSERT INTO `areas` VALUES (658, '230182', '双城市', '230100');
INSERT INTO `areas` VALUES (659, '230183', '尚志市', '230100');
INSERT INTO `areas` VALUES (660, '230184', '五常市', '230100');
INSERT INTO `areas` VALUES (661, '230201', '市辖区', '230200');
INSERT INTO `areas` VALUES (662, '230202', '龙沙区', '230200');
INSERT INTO `areas` VALUES (663, '230203', '建华区', '230200');
INSERT INTO `areas` VALUES (664, '230204', '铁锋区', '230200');
INSERT INTO `areas` VALUES (665, '230205', '昂昂溪区', '230200');
INSERT INTO `areas` VALUES (666, '230206', '富拉尔基区', '230200');
INSERT INTO `areas` VALUES (667, '230207', '碾子山区', '230200');
INSERT INTO `areas` VALUES (668, '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `areas` VALUES (669, '230221', '龙江县', '230200');
INSERT INTO `areas` VALUES (670, '230223', '依安县', '230200');
INSERT INTO `areas` VALUES (671, '230224', '泰来县', '230200');
INSERT INTO `areas` VALUES (672, '230225', '甘南县', '230200');
INSERT INTO `areas` VALUES (673, '230227', '富裕县', '230200');
INSERT INTO `areas` VALUES (674, '230229', '克山县', '230200');
INSERT INTO `areas` VALUES (675, '230230', '克东县', '230200');
INSERT INTO `areas` VALUES (676, '230231', '拜泉县', '230200');
INSERT INTO `areas` VALUES (677, '230281', '讷河市', '230200');
INSERT INTO `areas` VALUES (678, '230301', '市辖区', '230300');
INSERT INTO `areas` VALUES (679, '230302', '鸡冠区', '230300');
INSERT INTO `areas` VALUES (680, '230303', '恒山区', '230300');
INSERT INTO `areas` VALUES (681, '230304', '滴道区', '230300');
INSERT INTO `areas` VALUES (682, '230305', '梨树区', '230300');
INSERT INTO `areas` VALUES (683, '230306', '城子河区', '230300');
INSERT INTO `areas` VALUES (684, '230307', '麻山区', '230300');
INSERT INTO `areas` VALUES (685, '230321', '鸡东县', '230300');
INSERT INTO `areas` VALUES (686, '230381', '虎林市', '230300');
INSERT INTO `areas` VALUES (687, '230382', '密山市', '230300');
INSERT INTO `areas` VALUES (688, '230401', '市辖区', '230400');
INSERT INTO `areas` VALUES (689, '230402', '向阳区', '230400');
INSERT INTO `areas` VALUES (690, '230403', '工农区', '230400');
INSERT INTO `areas` VALUES (691, '230404', '南山区', '230400');
INSERT INTO `areas` VALUES (692, '230405', '兴安区', '230400');
INSERT INTO `areas` VALUES (693, '230406', '东山区', '230400');
INSERT INTO `areas` VALUES (694, '230407', '兴山区', '230400');
INSERT INTO `areas` VALUES (695, '230421', '萝北县', '230400');
INSERT INTO `areas` VALUES (696, '230422', '绥滨县', '230400');
INSERT INTO `areas` VALUES (697, '230501', '市辖区', '230500');
INSERT INTO `areas` VALUES (698, '230502', '尖山区', '230500');
INSERT INTO `areas` VALUES (699, '230503', '岭东区', '230500');
INSERT INTO `areas` VALUES (700, '230505', '四方台区', '230500');
INSERT INTO `areas` VALUES (701, '230506', '宝山区', '230500');
INSERT INTO `areas` VALUES (702, '230521', '集贤县', '230500');
INSERT INTO `areas` VALUES (703, '230522', '友谊县', '230500');
INSERT INTO `areas` VALUES (704, '230523', '宝清县', '230500');
INSERT INTO `areas` VALUES (705, '230524', '饶河县', '230500');
INSERT INTO `areas` VALUES (706, '230601', '市辖区', '230600');
INSERT INTO `areas` VALUES (707, '230602', '萨尔图区', '230600');
INSERT INTO `areas` VALUES (708, '230603', '龙凤区', '230600');
INSERT INTO `areas` VALUES (709, '230604', '让胡路区', '230600');
INSERT INTO `areas` VALUES (710, '230605', '红岗区', '230600');
INSERT INTO `areas` VALUES (711, '230606', '大同区', '230600');
INSERT INTO `areas` VALUES (712, '230621', '肇州县', '230600');
INSERT INTO `areas` VALUES (713, '230622', '肇源县', '230600');
INSERT INTO `areas` VALUES (714, '230623', '林甸县', '230600');
INSERT INTO `areas` VALUES (715, '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `areas` VALUES (716, '230701', '市辖区', '230700');
INSERT INTO `areas` VALUES (717, '230702', '伊春区', '230700');
INSERT INTO `areas` VALUES (718, '230703', '南岔区', '230700');
INSERT INTO `areas` VALUES (719, '230704', '友好区', '230700');
INSERT INTO `areas` VALUES (720, '230705', '西林区', '230700');
INSERT INTO `areas` VALUES (721, '230706', '翠峦区', '230700');
INSERT INTO `areas` VALUES (722, '230707', '新青区', '230700');
INSERT INTO `areas` VALUES (723, '230708', '美溪区', '230700');
INSERT INTO `areas` VALUES (724, '230709', '金山屯区', '230700');
INSERT INTO `areas` VALUES (725, '230710', '五营区', '230700');
INSERT INTO `areas` VALUES (726, '230711', '乌马河区', '230700');
INSERT INTO `areas` VALUES (727, '230712', '汤旺河区', '230700');
INSERT INTO `areas` VALUES (728, '230713', '带岭区', '230700');
INSERT INTO `areas` VALUES (729, '230714', '乌伊岭区', '230700');
INSERT INTO `areas` VALUES (730, '230715', '红星区', '230700');
INSERT INTO `areas` VALUES (731, '230716', '上甘岭区', '230700');
INSERT INTO `areas` VALUES (732, '230722', '嘉荫县', '230700');
INSERT INTO `areas` VALUES (733, '230781', '铁力市', '230700');
INSERT INTO `areas` VALUES (734, '230801', '市辖区', '230800');
INSERT INTO `areas` VALUES (735, '230802', '永红区', '230800');
INSERT INTO `areas` VALUES (736, '230803', '向阳区', '230800');
INSERT INTO `areas` VALUES (737, '230804', '前进区', '230800');
INSERT INTO `areas` VALUES (738, '230805', '东风区', '230800');
INSERT INTO `areas` VALUES (739, '230811', '郊　区', '230800');
INSERT INTO `areas` VALUES (740, '230822', '桦南县', '230800');
INSERT INTO `areas` VALUES (741, '230826', '桦川县', '230800');
INSERT INTO `areas` VALUES (742, '230828', '汤原县', '230800');
INSERT INTO `areas` VALUES (743, '230833', '抚远县', '230800');
INSERT INTO `areas` VALUES (744, '230881', '同江市', '230800');
INSERT INTO `areas` VALUES (745, '230882', '富锦市', '230800');
INSERT INTO `areas` VALUES (746, '230901', '市辖区', '230900');
INSERT INTO `areas` VALUES (747, '230902', '新兴区', '230900');
INSERT INTO `areas` VALUES (748, '230903', '桃山区', '230900');
INSERT INTO `areas` VALUES (749, '230904', '茄子河区', '230900');
INSERT INTO `areas` VALUES (750, '230921', '勃利县', '230900');
INSERT INTO `areas` VALUES (751, '231001', '市辖区', '231000');
INSERT INTO `areas` VALUES (752, '231002', '东安区', '231000');
INSERT INTO `areas` VALUES (753, '231003', '阳明区', '231000');
INSERT INTO `areas` VALUES (754, '231004', '爱民区', '231000');
INSERT INTO `areas` VALUES (755, '231005', '西安区', '231000');
INSERT INTO `areas` VALUES (756, '231024', '东宁县', '231000');
INSERT INTO `areas` VALUES (757, '231025', '林口县', '231000');
INSERT INTO `areas` VALUES (758, '231081', '绥芬河市', '231000');
INSERT INTO `areas` VALUES (759, '231083', '海林市', '231000');
INSERT INTO `areas` VALUES (760, '231084', '宁安市', '231000');
INSERT INTO `areas` VALUES (761, '231085', '穆棱市', '231000');
INSERT INTO `areas` VALUES (762, '231101', '市辖区', '231100');
INSERT INTO `areas` VALUES (763, '231102', '爱辉区', '231100');
INSERT INTO `areas` VALUES (764, '231121', '嫩江县', '231100');
INSERT INTO `areas` VALUES (765, '231123', '逊克县', '231100');
INSERT INTO `areas` VALUES (766, '231124', '孙吴县', '231100');
INSERT INTO `areas` VALUES (767, '231181', '北安市', '231100');
INSERT INTO `areas` VALUES (768, '231182', '五大连池市', '231100');
INSERT INTO `areas` VALUES (769, '231201', '市辖区', '231200');
INSERT INTO `areas` VALUES (770, '231202', '北林区', '231200');
INSERT INTO `areas` VALUES (771, '231221', '望奎县', '231200');
INSERT INTO `areas` VALUES (772, '231222', '兰西县', '231200');
INSERT INTO `areas` VALUES (773, '231223', '青冈县', '231200');
INSERT INTO `areas` VALUES (774, '231224', '庆安县', '231200');
INSERT INTO `areas` VALUES (775, '231225', '明水县', '231200');
INSERT INTO `areas` VALUES (776, '231226', '绥棱县', '231200');
INSERT INTO `areas` VALUES (777, '231281', '安达市', '231200');
INSERT INTO `areas` VALUES (778, '231282', '肇东市', '231200');
INSERT INTO `areas` VALUES (779, '231283', '海伦市', '231200');
INSERT INTO `areas` VALUES (780, '232721', '呼玛县', '232700');
INSERT INTO `areas` VALUES (781, '232722', '塔河县', '232700');
INSERT INTO `areas` VALUES (782, '232723', '漠河县', '232700');
INSERT INTO `areas` VALUES (783, '310101', '黄浦区', '310100');
INSERT INTO `areas` VALUES (784, '310103', '卢湾区', '310100');
INSERT INTO `areas` VALUES (785, '310104', '徐汇区', '310100');
INSERT INTO `areas` VALUES (786, '310105', '长宁区', '310100');
INSERT INTO `areas` VALUES (787, '310106', '静安区', '310100');
INSERT INTO `areas` VALUES (788, '310107', '普陀区', '310100');
INSERT INTO `areas` VALUES (789, '310108', '闸北区', '310100');
INSERT INTO `areas` VALUES (790, '310109', '虹口区', '310100');
INSERT INTO `areas` VALUES (791, '310110', '杨浦区', '310100');
INSERT INTO `areas` VALUES (792, '310112', '闵行区', '310100');
INSERT INTO `areas` VALUES (793, '310113', '宝山区', '310100');
INSERT INTO `areas` VALUES (794, '310114', '嘉定区', '310100');
INSERT INTO `areas` VALUES (795, '310115', '浦东新区', '310100');
INSERT INTO `areas` VALUES (796, '310116', '金山区', '310100');
INSERT INTO `areas` VALUES (797, '310117', '松江区', '310100');
INSERT INTO `areas` VALUES (798, '310118', '青浦区', '310100');
INSERT INTO `areas` VALUES (799, '310119', '南汇区', '310100');
INSERT INTO `areas` VALUES (800, '310120', '奉贤区', '310100');
INSERT INTO `areas` VALUES (801, '310230', '崇明县', '310100');
INSERT INTO `areas` VALUES (802, '320101', '市辖区', '320100');
INSERT INTO `areas` VALUES (803, '320102', '玄武区', '320100');
INSERT INTO `areas` VALUES (804, '320103', '白下区', '320100');
INSERT INTO `areas` VALUES (805, '320104', '秦淮区', '320100');
INSERT INTO `areas` VALUES (806, '320105', '建邺区', '320100');
INSERT INTO `areas` VALUES (807, '320106', '鼓楼区', '320100');
INSERT INTO `areas` VALUES (808, '320107', '下关区', '320100');
INSERT INTO `areas` VALUES (809, '320111', '浦口区', '320100');
INSERT INTO `areas` VALUES (810, '320113', '栖霞区', '320100');
INSERT INTO `areas` VALUES (811, '320114', '雨花台区', '320100');
INSERT INTO `areas` VALUES (812, '320115', '江宁区', '320100');
INSERT INTO `areas` VALUES (813, '320116', '六合区', '320100');
INSERT INTO `areas` VALUES (814, '320124', '溧水县', '320100');
INSERT INTO `areas` VALUES (815, '320125', '高淳县', '320100');
INSERT INTO `areas` VALUES (816, '320201', '市辖区', '320200');
INSERT INTO `areas` VALUES (817, '320202', '崇安区', '320200');
INSERT INTO `areas` VALUES (818, '320203', '南长区', '320200');
INSERT INTO `areas` VALUES (819, '320204', '北塘区', '320200');
INSERT INTO `areas` VALUES (820, '320205', '锡山区', '320200');
INSERT INTO `areas` VALUES (821, '320206', '惠山区', '320200');
INSERT INTO `areas` VALUES (822, '320211', '滨湖区', '320200');
INSERT INTO `areas` VALUES (823, '320281', '江阴市', '320200');
INSERT INTO `areas` VALUES (824, '320282', '宜兴市', '320200');
INSERT INTO `areas` VALUES (825, '320301', '市辖区', '320300');
INSERT INTO `areas` VALUES (826, '320302', '鼓楼区', '320300');
INSERT INTO `areas` VALUES (827, '320303', '云龙区', '320300');
INSERT INTO `areas` VALUES (828, '320304', '九里区', '320300');
INSERT INTO `areas` VALUES (829, '320305', '贾汪区', '320300');
INSERT INTO `areas` VALUES (830, '320311', '泉山区', '320300');
INSERT INTO `areas` VALUES (831, '320321', '丰　县', '320300');
INSERT INTO `areas` VALUES (832, '320322', '沛　县', '320300');
INSERT INTO `areas` VALUES (833, '320323', '铜山县', '320300');
INSERT INTO `areas` VALUES (834, '320324', '睢宁县', '320300');
INSERT INTO `areas` VALUES (835, '320381', '新沂市', '320300');
INSERT INTO `areas` VALUES (836, '320382', '邳州市', '320300');
INSERT INTO `areas` VALUES (837, '320401', '市辖区', '320400');
INSERT INTO `areas` VALUES (838, '320402', '天宁区', '320400');
INSERT INTO `areas` VALUES (839, '320404', '钟楼区', '320400');
INSERT INTO `areas` VALUES (840, '320405', '戚墅堰区', '320400');
INSERT INTO `areas` VALUES (841, '320411', '新北区', '320400');
INSERT INTO `areas` VALUES (842, '320412', '武进区', '320400');
INSERT INTO `areas` VALUES (843, '320481', '溧阳市', '320400');
INSERT INTO `areas` VALUES (844, '320482', '金坛市', '320400');
INSERT INTO `areas` VALUES (845, '320501', '市辖区', '320500');
INSERT INTO `areas` VALUES (846, '320502', '沧浪区', '320500');
INSERT INTO `areas` VALUES (847, '320503', '平江区', '320500');
INSERT INTO `areas` VALUES (848, '320504', '金阊区', '320500');
INSERT INTO `areas` VALUES (849, '320505', '虎丘区', '320500');
INSERT INTO `areas` VALUES (850, '320506', '吴中区', '320500');
INSERT INTO `areas` VALUES (851, '320507', '相城区', '320500');
INSERT INTO `areas` VALUES (852, '320581', '常熟市', '320500');
INSERT INTO `areas` VALUES (853, '320582', '张家港市', '320500');
INSERT INTO `areas` VALUES (854, '320583', '昆山市', '320500');
INSERT INTO `areas` VALUES (855, '320584', '吴江市', '320500');
INSERT INTO `areas` VALUES (856, '320585', '太仓市', '320500');
INSERT INTO `areas` VALUES (857, '320601', '市辖区', '320600');
INSERT INTO `areas` VALUES (858, '320602', '崇川区', '320600');
INSERT INTO `areas` VALUES (859, '320611', '港闸区', '320600');
INSERT INTO `areas` VALUES (860, '320621', '海安县', '320600');
INSERT INTO `areas` VALUES (861, '320623', '如东县', '320600');
INSERT INTO `areas` VALUES (862, '320681', '启东市', '320600');
INSERT INTO `areas` VALUES (863, '320682', '如皋市', '320600');
INSERT INTO `areas` VALUES (864, '320683', '通州市', '320600');
INSERT INTO `areas` VALUES (865, '320684', '海门市', '320600');
INSERT INTO `areas` VALUES (866, '320701', '市辖区', '320700');
INSERT INTO `areas` VALUES (867, '320703', '连云区', '320700');
INSERT INTO `areas` VALUES (868, '320705', '新浦区', '320700');
INSERT INTO `areas` VALUES (869, '320706', '海州区', '320700');
INSERT INTO `areas` VALUES (870, '320721', '赣榆县', '320700');
INSERT INTO `areas` VALUES (871, '320722', '东海县', '320700');
INSERT INTO `areas` VALUES (872, '320723', '灌云县', '320700');
INSERT INTO `areas` VALUES (873, '320724', '灌南县', '320700');
INSERT INTO `areas` VALUES (874, '320801', '市辖区', '320800');
INSERT INTO `areas` VALUES (875, '320802', '清河区', '320800');
INSERT INTO `areas` VALUES (876, '320803', '楚州区', '320800');
INSERT INTO `areas` VALUES (877, '320804', '淮阴区', '320800');
INSERT INTO `areas` VALUES (878, '320811', '清浦区', '320800');
INSERT INTO `areas` VALUES (879, '320826', '涟水县', '320800');
INSERT INTO `areas` VALUES (880, '320829', '洪泽县', '320800');
INSERT INTO `areas` VALUES (881, '320830', '盱眙县', '320800');
INSERT INTO `areas` VALUES (882, '320831', '金湖县', '320800');
INSERT INTO `areas` VALUES (883, '320901', '市辖区', '320900');
INSERT INTO `areas` VALUES (884, '320902', '亭湖区', '320900');
INSERT INTO `areas` VALUES (885, '320903', '盐都区', '320900');
INSERT INTO `areas` VALUES (886, '320921', '响水县', '320900');
INSERT INTO `areas` VALUES (887, '320922', '滨海县', '320900');
INSERT INTO `areas` VALUES (888, '320923', '阜宁县', '320900');
INSERT INTO `areas` VALUES (889, '320924', '射阳县', '320900');
INSERT INTO `areas` VALUES (890, '320925', '建湖县', '320900');
INSERT INTO `areas` VALUES (891, '320981', '东台市', '320900');
INSERT INTO `areas` VALUES (892, '320982', '大丰市', '320900');
INSERT INTO `areas` VALUES (893, '321001', '市辖区', '321000');
INSERT INTO `areas` VALUES (894, '321002', '广陵区', '321000');
INSERT INTO `areas` VALUES (895, '321003', '邗江区', '321000');
INSERT INTO `areas` VALUES (896, '321011', '郊　区', '321000');
INSERT INTO `areas` VALUES (897, '321023', '宝应县', '321000');
INSERT INTO `areas` VALUES (898, '321081', '仪征市', '321000');
INSERT INTO `areas` VALUES (899, '321084', '高邮市', '321000');
INSERT INTO `areas` VALUES (900, '321088', '江都市', '321000');
INSERT INTO `areas` VALUES (901, '321101', '市辖区', '321100');
INSERT INTO `areas` VALUES (902, '321102', '京口区', '321100');
INSERT INTO `areas` VALUES (903, '321111', '润州区', '321100');
INSERT INTO `areas` VALUES (904, '321112', '丹徒区', '321100');
INSERT INTO `areas` VALUES (905, '321181', '丹阳市', '321100');
INSERT INTO `areas` VALUES (906, '321182', '扬中市', '321100');
INSERT INTO `areas` VALUES (907, '321183', '句容市', '321100');
INSERT INTO `areas` VALUES (908, '321201', '市辖区', '321200');
INSERT INTO `areas` VALUES (909, '321202', '海陵区', '321200');
INSERT INTO `areas` VALUES (910, '321203', '高港区', '321200');
INSERT INTO `areas` VALUES (911, '321281', '兴化市', '321200');
INSERT INTO `areas` VALUES (912, '321282', '靖江市', '321200');
INSERT INTO `areas` VALUES (913, '321283', '泰兴市', '321200');
INSERT INTO `areas` VALUES (914, '321284', '姜堰市', '321200');
INSERT INTO `areas` VALUES (915, '321301', '市辖区', '321300');
INSERT INTO `areas` VALUES (916, '321302', '宿城区', '321300');
INSERT INTO `areas` VALUES (917, '321311', '宿豫区', '321300');
INSERT INTO `areas` VALUES (918, '321322', '沭阳县', '321300');
INSERT INTO `areas` VALUES (919, '321323', '泗阳县', '321300');
INSERT INTO `areas` VALUES (920, '321324', '泗洪县', '321300');
INSERT INTO `areas` VALUES (921, '330101', '市辖区', '330100');
INSERT INTO `areas` VALUES (922, '330102', '上城区', '330100');
INSERT INTO `areas` VALUES (923, '330103', '下城区', '330100');
INSERT INTO `areas` VALUES (924, '330104', '江干区', '330100');
INSERT INTO `areas` VALUES (925, '330105', '拱墅区', '330100');
INSERT INTO `areas` VALUES (926, '330106', '西湖区', '330100');
INSERT INTO `areas` VALUES (927, '330108', '滨江区', '330100');
INSERT INTO `areas` VALUES (928, '330109', '萧山区', '330100');
INSERT INTO `areas` VALUES (929, '330110', '余杭区', '330100');
INSERT INTO `areas` VALUES (930, '330122', '桐庐县', '330100');
INSERT INTO `areas` VALUES (931, '330127', '淳安县', '330100');
INSERT INTO `areas` VALUES (932, '330182', '建德市', '330100');
INSERT INTO `areas` VALUES (933, '330183', '富阳市', '330100');
INSERT INTO `areas` VALUES (934, '330185', '临安市', '330100');
INSERT INTO `areas` VALUES (935, '330201', '市辖区', '330200');
INSERT INTO `areas` VALUES (936, '330203', '海曙区', '330200');
INSERT INTO `areas` VALUES (937, '330204', '江东区', '330200');
INSERT INTO `areas` VALUES (938, '330205', '江北区', '330200');
INSERT INTO `areas` VALUES (939, '330206', '北仑区', '330200');
INSERT INTO `areas` VALUES (940, '330211', '镇海区', '330200');
INSERT INTO `areas` VALUES (941, '330212', '鄞州区', '330200');
INSERT INTO `areas` VALUES (942, '330225', '象山县', '330200');
INSERT INTO `areas` VALUES (943, '330226', '宁海县', '330200');
INSERT INTO `areas` VALUES (944, '330281', '余姚市', '330200');
INSERT INTO `areas` VALUES (945, '330282', '慈溪市', '330200');
INSERT INTO `areas` VALUES (946, '330283', '奉化市', '330200');
INSERT INTO `areas` VALUES (947, '330301', '市辖区', '330300');
INSERT INTO `areas` VALUES (948, '330302', '鹿城区', '330300');
INSERT INTO `areas` VALUES (949, '330303', '龙湾区', '330300');
INSERT INTO `areas` VALUES (950, '330304', '瓯海区', '330300');
INSERT INTO `areas` VALUES (951, '330322', '洞头县', '330300');
INSERT INTO `areas` VALUES (952, '330324', '永嘉县', '330300');
INSERT INTO `areas` VALUES (953, '330326', '平阳县', '330300');
INSERT INTO `areas` VALUES (954, '330327', '苍南县', '330300');
INSERT INTO `areas` VALUES (955, '330328', '文成县', '330300');
INSERT INTO `areas` VALUES (956, '330329', '泰顺县', '330300');
INSERT INTO `areas` VALUES (957, '330381', '瑞安市', '330300');
INSERT INTO `areas` VALUES (958, '330382', '乐清市', '330300');
INSERT INTO `areas` VALUES (959, '330401', '市辖区', '330400');
INSERT INTO `areas` VALUES (960, '330402', '秀城区', '330400');
INSERT INTO `areas` VALUES (961, '330411', '秀洲区', '330400');
INSERT INTO `areas` VALUES (962, '330421', '嘉善县', '330400');
INSERT INTO `areas` VALUES (963, '330424', '海盐县', '330400');
INSERT INTO `areas` VALUES (964, '330481', '海宁市', '330400');
INSERT INTO `areas` VALUES (965, '330482', '平湖市', '330400');
INSERT INTO `areas` VALUES (966, '330483', '桐乡市', '330400');
INSERT INTO `areas` VALUES (967, '330501', '市辖区', '330500');
INSERT INTO `areas` VALUES (968, '330502', '吴兴区', '330500');
INSERT INTO `areas` VALUES (969, '330503', '南浔区', '330500');
INSERT INTO `areas` VALUES (970, '330521', '德清县', '330500');
INSERT INTO `areas` VALUES (971, '330522', '长兴县', '330500');
INSERT INTO `areas` VALUES (972, '330523', '安吉县', '330500');
INSERT INTO `areas` VALUES (973, '330601', '市辖区', '330600');
INSERT INTO `areas` VALUES (974, '330602', '越城区', '330600');
INSERT INTO `areas` VALUES (975, '330621', '绍兴县', '330600');
INSERT INTO `areas` VALUES (976, '330624', '新昌县', '330600');
INSERT INTO `areas` VALUES (977, '330681', '诸暨市', '330600');
INSERT INTO `areas` VALUES (978, '330682', '上虞市', '330600');
INSERT INTO `areas` VALUES (979, '330683', '嵊州市', '330600');
INSERT INTO `areas` VALUES (980, '330701', '市辖区', '330700');
INSERT INTO `areas` VALUES (981, '330702', '婺城区', '330700');
INSERT INTO `areas` VALUES (982, '330703', '金东区', '330700');
INSERT INTO `areas` VALUES (983, '330723', '武义县', '330700');
INSERT INTO `areas` VALUES (984, '330726', '浦江县', '330700');
INSERT INTO `areas` VALUES (985, '330727', '磐安县', '330700');
INSERT INTO `areas` VALUES (986, '330781', '兰溪市', '330700');
INSERT INTO `areas` VALUES (987, '330782', '义乌市', '330700');
INSERT INTO `areas` VALUES (988, '330783', '东阳市', '330700');
INSERT INTO `areas` VALUES (989, '330784', '永康市', '330700');
INSERT INTO `areas` VALUES (990, '330801', '市辖区', '330800');
INSERT INTO `areas` VALUES (991, '330802', '柯城区', '330800');
INSERT INTO `areas` VALUES (992, '330803', '衢江区', '330800');
INSERT INTO `areas` VALUES (993, '330822', '常山县', '330800');
INSERT INTO `areas` VALUES (994, '330824', '开化县', '330800');
INSERT INTO `areas` VALUES (995, '330825', '龙游县', '330800');
INSERT INTO `areas` VALUES (996, '330881', '江山市', '330800');
INSERT INTO `areas` VALUES (997, '330901', '市辖区', '330900');
INSERT INTO `areas` VALUES (998, '330902', '定海区', '330900');
INSERT INTO `areas` VALUES (999, '330903', '普陀区', '330900');
INSERT INTO `areas` VALUES (1000, '330921', '岱山县', '330900');
INSERT INTO `areas` VALUES (1001, '330922', '嵊泗县', '330900');
INSERT INTO `areas` VALUES (1002, '331001', '市辖区', '331000');
INSERT INTO `areas` VALUES (1003, '331002', '椒江区', '331000');
INSERT INTO `areas` VALUES (1004, '331003', '黄岩区', '331000');
INSERT INTO `areas` VALUES (1005, '331004', '路桥区', '331000');
INSERT INTO `areas` VALUES (1006, '331021', '玉环县', '331000');
INSERT INTO `areas` VALUES (1007, '331022', '三门县', '331000');
INSERT INTO `areas` VALUES (1008, '331023', '天台县', '331000');
INSERT INTO `areas` VALUES (1009, '331024', '仙居县', '331000');
INSERT INTO `areas` VALUES (1010, '331081', '温岭市', '331000');
INSERT INTO `areas` VALUES (1011, '331082', '临海市', '331000');
INSERT INTO `areas` VALUES (1012, '331101', '市辖区', '331100');
INSERT INTO `areas` VALUES (1013, '331102', '莲都区', '331100');
INSERT INTO `areas` VALUES (1014, '331121', '青田县', '331100');
INSERT INTO `areas` VALUES (1015, '331122', '缙云县', '331100');
INSERT INTO `areas` VALUES (1016, '331123', '遂昌县', '331100');
INSERT INTO `areas` VALUES (1017, '331124', '松阳县', '331100');
INSERT INTO `areas` VALUES (1018, '331125', '云和县', '331100');
INSERT INTO `areas` VALUES (1019, '331126', '庆元县', '331100');
INSERT INTO `areas` VALUES (1020, '331127', '景宁畲族自治县', '331100');
INSERT INTO `areas` VALUES (1021, '331181', '龙泉市', '331100');
INSERT INTO `areas` VALUES (1022, '340101', '市辖区', '340100');
INSERT INTO `areas` VALUES (1023, '340102', '瑶海区', '340100');
INSERT INTO `areas` VALUES (1024, '340103', '庐阳区', '340100');
INSERT INTO `areas` VALUES (1025, '340104', '蜀山区', '340100');
INSERT INTO `areas` VALUES (1026, '340111', '包河区', '340100');
INSERT INTO `areas` VALUES (1027, '340121', '长丰县', '340100');
INSERT INTO `areas` VALUES (1028, '340122', '肥东县', '340100');
INSERT INTO `areas` VALUES (1029, '340123', '肥西县', '340100');
INSERT INTO `areas` VALUES (1030, '340201', '市辖区', '340200');
INSERT INTO `areas` VALUES (1031, '340202', '镜湖区', '340200');
INSERT INTO `areas` VALUES (1032, '340203', '马塘区', '340200');
INSERT INTO `areas` VALUES (1033, '340204', '新芜区', '340200');
INSERT INTO `areas` VALUES (1034, '340207', '鸠江区', '340200');
INSERT INTO `areas` VALUES (1035, '340221', '芜湖县', '340200');
INSERT INTO `areas` VALUES (1036, '340222', '繁昌县', '340200');
INSERT INTO `areas` VALUES (1037, '340223', '南陵县', '340200');
INSERT INTO `areas` VALUES (1038, '340301', '市辖区', '340300');
INSERT INTO `areas` VALUES (1039, '340302', '龙子湖区', '340300');
INSERT INTO `areas` VALUES (1040, '340303', '蚌山区', '340300');
INSERT INTO `areas` VALUES (1041, '340304', '禹会区', '340300');
INSERT INTO `areas` VALUES (1042, '340311', '淮上区', '340300');
INSERT INTO `areas` VALUES (1043, '340321', '怀远县', '340300');
INSERT INTO `areas` VALUES (1044, '340322', '五河县', '340300');
INSERT INTO `areas` VALUES (1045, '340323', '固镇县', '340300');
INSERT INTO `areas` VALUES (1046, '340401', '市辖区', '340400');
INSERT INTO `areas` VALUES (1047, '340402', '大通区', '340400');
INSERT INTO `areas` VALUES (1048, '340403', '田家庵区', '340400');
INSERT INTO `areas` VALUES (1049, '340404', '谢家集区', '340400');
INSERT INTO `areas` VALUES (1050, '340405', '八公山区', '340400');
INSERT INTO `areas` VALUES (1051, '340406', '潘集区', '340400');
INSERT INTO `areas` VALUES (1052, '340421', '凤台县', '340400');
INSERT INTO `areas` VALUES (1053, '340501', '市辖区', '340500');
INSERT INTO `areas` VALUES (1054, '340502', '金家庄区', '340500');
INSERT INTO `areas` VALUES (1055, '340503', '花山区', '340500');
INSERT INTO `areas` VALUES (1056, '340504', '雨山区', '340500');
INSERT INTO `areas` VALUES (1057, '340521', '当涂县', '340500');
INSERT INTO `areas` VALUES (1058, '340601', '市辖区', '340600');
INSERT INTO `areas` VALUES (1059, '340602', '杜集区', '340600');
INSERT INTO `areas` VALUES (1060, '340603', '相山区', '340600');
INSERT INTO `areas` VALUES (1061, '340604', '烈山区', '340600');
INSERT INTO `areas` VALUES (1062, '340621', '濉溪县', '340600');
INSERT INTO `areas` VALUES (1063, '340701', '市辖区', '340700');
INSERT INTO `areas` VALUES (1064, '340702', '铜官山区', '340700');
INSERT INTO `areas` VALUES (1065, '340703', '狮子山区', '340700');
INSERT INTO `areas` VALUES (1066, '340711', '郊　区', '340700');
INSERT INTO `areas` VALUES (1067, '340721', '铜陵县', '340700');
INSERT INTO `areas` VALUES (1068, '340801', '市辖区', '340800');
INSERT INTO `areas` VALUES (1069, '340802', '迎江区', '340800');
INSERT INTO `areas` VALUES (1070, '340803', '大观区', '340800');
INSERT INTO `areas` VALUES (1071, '340811', '郊　区', '340800');
INSERT INTO `areas` VALUES (1072, '340822', '怀宁县', '340800');
INSERT INTO `areas` VALUES (1073, '340823', '枞阳县', '340800');
INSERT INTO `areas` VALUES (1074, '340824', '潜山县', '340800');
INSERT INTO `areas` VALUES (1075, '340825', '太湖县', '340800');
INSERT INTO `areas` VALUES (1076, '340826', '宿松县', '340800');
INSERT INTO `areas` VALUES (1077, '340827', '望江县', '340800');
INSERT INTO `areas` VALUES (1078, '340828', '岳西县', '340800');
INSERT INTO `areas` VALUES (1079, '340881', '桐城市', '340800');
INSERT INTO `areas` VALUES (1080, '341001', '市辖区', '341000');
INSERT INTO `areas` VALUES (1081, '341002', '屯溪区', '341000');
INSERT INTO `areas` VALUES (1082, '341003', '黄山区', '341000');
INSERT INTO `areas` VALUES (1083, '341004', '徽州区', '341000');
INSERT INTO `areas` VALUES (1084, '341021', '歙　县', '341000');
INSERT INTO `areas` VALUES (1085, '341022', '休宁县', '341000');
INSERT INTO `areas` VALUES (1086, '341023', '黟　县', '341000');
INSERT INTO `areas` VALUES (1087, '341024', '祁门县', '341000');
INSERT INTO `areas` VALUES (1088, '341101', '市辖区', '341100');
INSERT INTO `areas` VALUES (1089, '341102', '琅琊区', '341100');
INSERT INTO `areas` VALUES (1090, '341103', '南谯区', '341100');
INSERT INTO `areas` VALUES (1091, '341122', '来安县', '341100');
INSERT INTO `areas` VALUES (1092, '341124', '全椒县', '341100');
INSERT INTO `areas` VALUES (1093, '341125', '定远县', '341100');
INSERT INTO `areas` VALUES (1094, '341126', '凤阳县', '341100');
INSERT INTO `areas` VALUES (1095, '341181', '天长市', '341100');
INSERT INTO `areas` VALUES (1096, '341182', '明光市', '341100');
INSERT INTO `areas` VALUES (1097, '341201', '市辖区', '341200');
INSERT INTO `areas` VALUES (1098, '341202', '颍州区', '341200');
INSERT INTO `areas` VALUES (1099, '341203', '颍东区', '341200');
INSERT INTO `areas` VALUES (1100, '341204', '颍泉区', '341200');
INSERT INTO `areas` VALUES (1101, '341221', '临泉县', '341200');
INSERT INTO `areas` VALUES (1102, '341222', '太和县', '341200');
INSERT INTO `areas` VALUES (1103, '341225', '阜南县', '341200');
INSERT INTO `areas` VALUES (1104, '341226', '颍上县', '341200');
INSERT INTO `areas` VALUES (1105, '341282', '界首市', '341200');
INSERT INTO `areas` VALUES (1106, '341301', '市辖区', '341300');
INSERT INTO `areas` VALUES (1107, '341302', '墉桥区', '341300');
INSERT INTO `areas` VALUES (1108, '341321', '砀山县', '341300');
INSERT INTO `areas` VALUES (1109, '341322', '萧　县', '341300');
INSERT INTO `areas` VALUES (1110, '341323', '灵璧县', '341300');
INSERT INTO `areas` VALUES (1111, '341324', '泗　县', '341300');
INSERT INTO `areas` VALUES (1112, '341401', '市辖区', '341400');
INSERT INTO `areas` VALUES (1113, '341402', '居巢区', '341400');
INSERT INTO `areas` VALUES (1114, '341421', '庐江县', '341400');
INSERT INTO `areas` VALUES (1115, '341422', '无为县', '341400');
INSERT INTO `areas` VALUES (1116, '341423', '含山县', '341400');
INSERT INTO `areas` VALUES (1117, '341424', '和　县', '341400');
INSERT INTO `areas` VALUES (1118, '341501', '市辖区', '341500');
INSERT INTO `areas` VALUES (1119, '341502', '金安区', '341500');
INSERT INTO `areas` VALUES (1120, '341503', '裕安区', '341500');
INSERT INTO `areas` VALUES (1121, '341521', '寿　县', '341500');
INSERT INTO `areas` VALUES (1122, '341522', '霍邱县', '341500');
INSERT INTO `areas` VALUES (1123, '341523', '舒城县', '341500');
INSERT INTO `areas` VALUES (1124, '341524', '金寨县', '341500');
INSERT INTO `areas` VALUES (1125, '341525', '霍山县', '341500');
INSERT INTO `areas` VALUES (1126, '341601', '市辖区', '341600');
INSERT INTO `areas` VALUES (1127, '341602', '谯城区', '341600');
INSERT INTO `areas` VALUES (1128, '341621', '涡阳县', '341600');
INSERT INTO `areas` VALUES (1129, '341622', '蒙城县', '341600');
INSERT INTO `areas` VALUES (1130, '341623', '利辛县', '341600');
INSERT INTO `areas` VALUES (1131, '341701', '市辖区', '341700');
INSERT INTO `areas` VALUES (1132, '341702', '贵池区', '341700');
INSERT INTO `areas` VALUES (1133, '341721', '东至县', '341700');
INSERT INTO `areas` VALUES (1134, '341722', '石台县', '341700');
INSERT INTO `areas` VALUES (1135, '341723', '青阳县', '341700');
INSERT INTO `areas` VALUES (1136, '341801', '市辖区', '341800');
INSERT INTO `areas` VALUES (1137, '341802', '宣州区', '341800');
INSERT INTO `areas` VALUES (1138, '341821', '郎溪县', '341800');
INSERT INTO `areas` VALUES (1139, '341822', '广德县', '341800');
INSERT INTO `areas` VALUES (1140, '341823', '泾　县', '341800');
INSERT INTO `areas` VALUES (1141, '341824', '绩溪县', '341800');
INSERT INTO `areas` VALUES (1142, '341825', '旌德县', '341800');
INSERT INTO `areas` VALUES (1143, '341881', '宁国市', '341800');
INSERT INTO `areas` VALUES (1144, '350101', '市辖区', '350100');
INSERT INTO `areas` VALUES (1145, '350102', '鼓楼区', '350100');
INSERT INTO `areas` VALUES (1146, '350103', '台江区', '350100');
INSERT INTO `areas` VALUES (1147, '350104', '仓山区', '350100');
INSERT INTO `areas` VALUES (1148, '350105', '马尾区', '350100');
INSERT INTO `areas` VALUES (1149, '350111', '晋安区', '350100');
INSERT INTO `areas` VALUES (1150, '350121', '闽侯县', '350100');
INSERT INTO `areas` VALUES (1151, '350122', '连江县', '350100');
INSERT INTO `areas` VALUES (1152, '350123', '罗源县', '350100');
INSERT INTO `areas` VALUES (1153, '350124', '闽清县', '350100');
INSERT INTO `areas` VALUES (1154, '350125', '永泰县', '350100');
INSERT INTO `areas` VALUES (1155, '350128', '平潭县', '350100');
INSERT INTO `areas` VALUES (1156, '350181', '福清市', '350100');
INSERT INTO `areas` VALUES (1157, '350182', '长乐市', '350100');
INSERT INTO `areas` VALUES (1158, '350201', '市辖区', '350200');
INSERT INTO `areas` VALUES (1159, '350203', '思明区', '350200');
INSERT INTO `areas` VALUES (1160, '350205', '海沧区', '350200');
INSERT INTO `areas` VALUES (1161, '350206', '湖里区', '350200');
INSERT INTO `areas` VALUES (1162, '350211', '集美区', '350200');
INSERT INTO `areas` VALUES (1163, '350212', '同安区', '350200');
INSERT INTO `areas` VALUES (1164, '350213', '翔安区', '350200');
INSERT INTO `areas` VALUES (1165, '350301', '市辖区', '350300');
INSERT INTO `areas` VALUES (1166, '350302', '城厢区', '350300');
INSERT INTO `areas` VALUES (1167, '350303', '涵江区', '350300');
INSERT INTO `areas` VALUES (1168, '350304', '荔城区', '350300');
INSERT INTO `areas` VALUES (1169, '350305', '秀屿区', '350300');
INSERT INTO `areas` VALUES (1170, '350322', '仙游县', '350300');
INSERT INTO `areas` VALUES (1171, '350401', '市辖区', '350400');
INSERT INTO `areas` VALUES (1172, '350402', '梅列区', '350400');
INSERT INTO `areas` VALUES (1173, '350403', '三元区', '350400');
INSERT INTO `areas` VALUES (1174, '350421', '明溪县', '350400');
INSERT INTO `areas` VALUES (1175, '350423', '清流县', '350400');
INSERT INTO `areas` VALUES (1176, '350424', '宁化县', '350400');
INSERT INTO `areas` VALUES (1177, '350425', '大田县', '350400');
INSERT INTO `areas` VALUES (1178, '350426', '尤溪县', '350400');
INSERT INTO `areas` VALUES (1179, '350427', '沙　县', '350400');
INSERT INTO `areas` VALUES (1180, '350428', '将乐县', '350400');
INSERT INTO `areas` VALUES (1181, '350429', '泰宁县', '350400');
INSERT INTO `areas` VALUES (1182, '350430', '建宁县', '350400');
INSERT INTO `areas` VALUES (1183, '350481', '永安市', '350400');
INSERT INTO `areas` VALUES (1184, '350501', '市辖区', '350500');
INSERT INTO `areas` VALUES (1185, '350502', '鲤城区', '350500');
INSERT INTO `areas` VALUES (1186, '350503', '丰泽区', '350500');
INSERT INTO `areas` VALUES (1187, '350504', '洛江区', '350500');
INSERT INTO `areas` VALUES (1188, '350505', '泉港区', '350500');
INSERT INTO `areas` VALUES (1189, '350521', '惠安县', '350500');
INSERT INTO `areas` VALUES (1190, '350524', '安溪县', '350500');
INSERT INTO `areas` VALUES (1191, '350525', '永春县', '350500');
INSERT INTO `areas` VALUES (1192, '350526', '德化县', '350500');
INSERT INTO `areas` VALUES (1193, '350527', '金门县', '350500');
INSERT INTO `areas` VALUES (1194, '350581', '石狮市', '350500');
INSERT INTO `areas` VALUES (1195, '350582', '晋江市', '350500');
INSERT INTO `areas` VALUES (1196, '350583', '南安市', '350500');
INSERT INTO `areas` VALUES (1197, '350601', '市辖区', '350600');
INSERT INTO `areas` VALUES (1198, '350602', '芗城区', '350600');
INSERT INTO `areas` VALUES (1199, '350603', '龙文区', '350600');
INSERT INTO `areas` VALUES (1200, '350622', '云霄县', '350600');
INSERT INTO `areas` VALUES (1201, '350623', '漳浦县', '350600');
INSERT INTO `areas` VALUES (1202, '350624', '诏安县', '350600');
INSERT INTO `areas` VALUES (1203, '350625', '长泰县', '350600');
INSERT INTO `areas` VALUES (1204, '350626', '东山县', '350600');
INSERT INTO `areas` VALUES (1205, '350627', '南靖县', '350600');
INSERT INTO `areas` VALUES (1206, '350628', '平和县', '350600');
INSERT INTO `areas` VALUES (1207, '350629', '华安县', '350600');
INSERT INTO `areas` VALUES (1208, '350681', '龙海市', '350600');
INSERT INTO `areas` VALUES (1209, '350701', '市辖区', '350700');
INSERT INTO `areas` VALUES (1210, '350702', '延平区', '350700');
INSERT INTO `areas` VALUES (1211, '350721', '顺昌县', '350700');
INSERT INTO `areas` VALUES (1212, '350722', '浦城县', '350700');
INSERT INTO `areas` VALUES (1213, '350723', '光泽县', '350700');
INSERT INTO `areas` VALUES (1214, '350724', '松溪县', '350700');
INSERT INTO `areas` VALUES (1215, '350725', '政和县', '350700');
INSERT INTO `areas` VALUES (1216, '350781', '邵武市', '350700');
INSERT INTO `areas` VALUES (1217, '350782', '武夷山市', '350700');
INSERT INTO `areas` VALUES (1218, '350783', '建瓯市', '350700');
INSERT INTO `areas` VALUES (1219, '350784', '建阳市', '350700');
INSERT INTO `areas` VALUES (1220, '350801', '市辖区', '350800');
INSERT INTO `areas` VALUES (1221, '350802', '新罗区', '350800');
INSERT INTO `areas` VALUES (1222, '350821', '长汀县', '350800');
INSERT INTO `areas` VALUES (1223, '350822', '永定县', '350800');
INSERT INTO `areas` VALUES (1224, '350823', '上杭县', '350800');
INSERT INTO `areas` VALUES (1225, '350824', '武平县', '350800');
INSERT INTO `areas` VALUES (1226, '350825', '连城县', '350800');
INSERT INTO `areas` VALUES (1227, '350881', '漳平市', '350800');
INSERT INTO `areas` VALUES (1228, '350901', '市辖区', '350900');
INSERT INTO `areas` VALUES (1229, '350902', '蕉城区', '350900');
INSERT INTO `areas` VALUES (1230, '350921', '霞浦县', '350900');
INSERT INTO `areas` VALUES (1231, '350922', '古田县', '350900');
INSERT INTO `areas` VALUES (1232, '350923', '屏南县', '350900');
INSERT INTO `areas` VALUES (1233, '350924', '寿宁县', '350900');
INSERT INTO `areas` VALUES (1234, '350925', '周宁县', '350900');
INSERT INTO `areas` VALUES (1235, '350926', '柘荣县', '350900');
INSERT INTO `areas` VALUES (1236, '350981', '福安市', '350900');
INSERT INTO `areas` VALUES (1237, '350982', '福鼎市', '350900');
INSERT INTO `areas` VALUES (1238, '360101', '市辖区', '360100');
INSERT INTO `areas` VALUES (1239, '360102', '东湖区', '360100');
INSERT INTO `areas` VALUES (1240, '360103', '西湖区', '360100');
INSERT INTO `areas` VALUES (1241, '360104', '青云谱区', '360100');
INSERT INTO `areas` VALUES (1242, '360105', '湾里区', '360100');
INSERT INTO `areas` VALUES (1243, '360111', '青山湖区', '360100');
INSERT INTO `areas` VALUES (1244, '360121', '南昌县', '360100');
INSERT INTO `areas` VALUES (1245, '360122', '新建县', '360100');
INSERT INTO `areas` VALUES (1246, '360123', '安义县', '360100');
INSERT INTO `areas` VALUES (1247, '360124', '进贤县', '360100');
INSERT INTO `areas` VALUES (1248, '360201', '市辖区', '360200');
INSERT INTO `areas` VALUES (1249, '360202', '昌江区', '360200');
INSERT INTO `areas` VALUES (1250, '360203', '珠山区', '360200');
INSERT INTO `areas` VALUES (1251, '360222', '浮梁县', '360200');
INSERT INTO `areas` VALUES (1252, '360281', '乐平市', '360200');
INSERT INTO `areas` VALUES (1253, '360301', '市辖区', '360300');
INSERT INTO `areas` VALUES (1254, '360302', '安源区', '360300');
INSERT INTO `areas` VALUES (1255, '360313', '湘东区', '360300');
INSERT INTO `areas` VALUES (1256, '360321', '莲花县', '360300');
INSERT INTO `areas` VALUES (1257, '360322', '上栗县', '360300');
INSERT INTO `areas` VALUES (1258, '360323', '芦溪县', '360300');
INSERT INTO `areas` VALUES (1259, '360401', '市辖区', '360400');
INSERT INTO `areas` VALUES (1260, '360402', '庐山区', '360400');
INSERT INTO `areas` VALUES (1261, '360403', '浔阳区', '360400');
INSERT INTO `areas` VALUES (1262, '360421', '九江县', '360400');
INSERT INTO `areas` VALUES (1263, '360423', '武宁县', '360400');
INSERT INTO `areas` VALUES (1264, '360424', '修水县', '360400');
INSERT INTO `areas` VALUES (1265, '360425', '永修县', '360400');
INSERT INTO `areas` VALUES (1266, '360426', '德安县', '360400');
INSERT INTO `areas` VALUES (1267, '360427', '星子县', '360400');
INSERT INTO `areas` VALUES (1268, '360428', '都昌县', '360400');
INSERT INTO `areas` VALUES (1269, '360429', '湖口县', '360400');
INSERT INTO `areas` VALUES (1270, '360430', '彭泽县', '360400');
INSERT INTO `areas` VALUES (1271, '360481', '瑞昌市', '360400');
INSERT INTO `areas` VALUES (1272, '360501', '市辖区', '360500');
INSERT INTO `areas` VALUES (1273, '360502', '渝水区', '360500');
INSERT INTO `areas` VALUES (1274, '360521', '分宜县', '360500');
INSERT INTO `areas` VALUES (1275, '360601', '市辖区', '360600');
INSERT INTO `areas` VALUES (1276, '360602', '月湖区', '360600');
INSERT INTO `areas` VALUES (1277, '360622', '余江县', '360600');
INSERT INTO `areas` VALUES (1278, '360681', '贵溪市', '360600');
INSERT INTO `areas` VALUES (1279, '360701', '市辖区', '360700');
INSERT INTO `areas` VALUES (1280, '360702', '章贡区', '360700');
INSERT INTO `areas` VALUES (1281, '360721', '赣　县', '360700');
INSERT INTO `areas` VALUES (1282, '360722', '信丰县', '360700');
INSERT INTO `areas` VALUES (1283, '360723', '大余县', '360700');
INSERT INTO `areas` VALUES (1284, '360724', '上犹县', '360700');
INSERT INTO `areas` VALUES (1285, '360725', '崇义县', '360700');
INSERT INTO `areas` VALUES (1286, '360726', '安远县', '360700');
INSERT INTO `areas` VALUES (1287, '360727', '龙南县', '360700');
INSERT INTO `areas` VALUES (1288, '360728', '定南县', '360700');
INSERT INTO `areas` VALUES (1289, '360729', '全南县', '360700');
INSERT INTO `areas` VALUES (1290, '360730', '宁都县', '360700');
INSERT INTO `areas` VALUES (1291, '360731', '于都县', '360700');
INSERT INTO `areas` VALUES (1292, '360732', '兴国县', '360700');
INSERT INTO `areas` VALUES (1293, '360733', '会昌县', '360700');
INSERT INTO `areas` VALUES (1294, '360734', '寻乌县', '360700');
INSERT INTO `areas` VALUES (1295, '360735', '石城县', '360700');
INSERT INTO `areas` VALUES (1296, '360781', '瑞金市', '360700');
INSERT INTO `areas` VALUES (1297, '360782', '南康市', '360700');
INSERT INTO `areas` VALUES (1298, '360801', '市辖区', '360800');
INSERT INTO `areas` VALUES (1299, '360802', '吉州区', '360800');
INSERT INTO `areas` VALUES (1300, '360803', '青原区', '360800');
INSERT INTO `areas` VALUES (1301, '360821', '吉安县', '360800');
INSERT INTO `areas` VALUES (1302, '360822', '吉水县', '360800');
INSERT INTO `areas` VALUES (1303, '360823', '峡江县', '360800');
INSERT INTO `areas` VALUES (1304, '360824', '新干县', '360800');
INSERT INTO `areas` VALUES (1305, '360825', '永丰县', '360800');
INSERT INTO `areas` VALUES (1306, '360826', '泰和县', '360800');
INSERT INTO `areas` VALUES (1307, '360827', '遂川县', '360800');
INSERT INTO `areas` VALUES (1308, '360828', '万安县', '360800');
INSERT INTO `areas` VALUES (1309, '360829', '安福县', '360800');
INSERT INTO `areas` VALUES (1310, '360830', '永新县', '360800');
INSERT INTO `areas` VALUES (1311, '360881', '井冈山市', '360800');
INSERT INTO `areas` VALUES (1312, '360901', '市辖区', '360900');
INSERT INTO `areas` VALUES (1313, '360902', '袁州区', '360900');
INSERT INTO `areas` VALUES (1314, '360921', '奉新县', '360900');
INSERT INTO `areas` VALUES (1315, '360922', '万载县', '360900');
INSERT INTO `areas` VALUES (1316, '360923', '上高县', '360900');
INSERT INTO `areas` VALUES (1317, '360924', '宜丰县', '360900');
INSERT INTO `areas` VALUES (1318, '360925', '靖安县', '360900');
INSERT INTO `areas` VALUES (1319, '360926', '铜鼓县', '360900');
INSERT INTO `areas` VALUES (1320, '360981', '丰城市', '360900');
INSERT INTO `areas` VALUES (1321, '360982', '樟树市', '360900');
INSERT INTO `areas` VALUES (1322, '360983', '高安市', '360900');
INSERT INTO `areas` VALUES (1323, '361001', '市辖区', '361000');
INSERT INTO `areas` VALUES (1324, '361002', '临川区', '361000');
INSERT INTO `areas` VALUES (1325, '361021', '南城县', '361000');
INSERT INTO `areas` VALUES (1326, '361022', '黎川县', '361000');
INSERT INTO `areas` VALUES (1327, '361023', '南丰县', '361000');
INSERT INTO `areas` VALUES (1328, '361024', '崇仁县', '361000');
INSERT INTO `areas` VALUES (1329, '361025', '乐安县', '361000');
INSERT INTO `areas` VALUES (1330, '361026', '宜黄县', '361000');
INSERT INTO `areas` VALUES (1331, '361027', '金溪县', '361000');
INSERT INTO `areas` VALUES (1332, '361028', '资溪县', '361000');
INSERT INTO `areas` VALUES (1333, '361029', '东乡县', '361000');
INSERT INTO `areas` VALUES (1334, '361030', '广昌县', '361000');
INSERT INTO `areas` VALUES (1335, '361101', '市辖区', '361100');
INSERT INTO `areas` VALUES (1336, '361102', '信州区', '361100');
INSERT INTO `areas` VALUES (1337, '361121', '上饶县', '361100');
INSERT INTO `areas` VALUES (1338, '361122', '广丰县', '361100');
INSERT INTO `areas` VALUES (1339, '361123', '玉山县', '361100');
INSERT INTO `areas` VALUES (1340, '361124', '铅山县', '361100');
INSERT INTO `areas` VALUES (1341, '361125', '横峰县', '361100');
INSERT INTO `areas` VALUES (1342, '361126', '弋阳县', '361100');
INSERT INTO `areas` VALUES (1343, '361127', '余干县', '361100');
INSERT INTO `areas` VALUES (1344, '361128', '鄱阳县', '361100');
INSERT INTO `areas` VALUES (1345, '361129', '万年县', '361100');
INSERT INTO `areas` VALUES (1346, '361130', '婺源县', '361100');
INSERT INTO `areas` VALUES (1347, '361181', '德兴市', '361100');
INSERT INTO `areas` VALUES (1348, '370101', '市辖区', '370100');
INSERT INTO `areas` VALUES (1349, '370102', '历下区', '370100');
INSERT INTO `areas` VALUES (1350, '370103', '市中区', '370100');
INSERT INTO `areas` VALUES (1351, '370104', '槐荫区', '370100');
INSERT INTO `areas` VALUES (1352, '370105', '天桥区', '370100');
INSERT INTO `areas` VALUES (1353, '370112', '历城区', '370100');
INSERT INTO `areas` VALUES (1354, '370113', '长清区', '370100');
INSERT INTO `areas` VALUES (1355, '370124', '平阴县', '370100');
INSERT INTO `areas` VALUES (1356, '370125', '济阳县', '370100');
INSERT INTO `areas` VALUES (1357, '370126', '商河县', '370100');
INSERT INTO `areas` VALUES (1358, '370181', '章丘市', '370100');
INSERT INTO `areas` VALUES (1359, '370201', '市辖区', '370200');
INSERT INTO `areas` VALUES (1360, '370202', '市南区', '370200');
INSERT INTO `areas` VALUES (1361, '370203', '市北区', '370200');
INSERT INTO `areas` VALUES (1362, '370205', '四方区', '370200');
INSERT INTO `areas` VALUES (1363, '370211', '黄岛区', '370200');
INSERT INTO `areas` VALUES (1364, '370212', '崂山区', '370200');
INSERT INTO `areas` VALUES (1365, '370213', '李沧区', '370200');
INSERT INTO `areas` VALUES (1366, '370214', '城阳区', '370200');
INSERT INTO `areas` VALUES (1367, '370281', '胶州市', '370200');
INSERT INTO `areas` VALUES (1368, '370282', '即墨市', '370200');
INSERT INTO `areas` VALUES (1369, '370283', '平度市', '370200');
INSERT INTO `areas` VALUES (1370, '370284', '胶南市', '370200');
INSERT INTO `areas` VALUES (1371, '370285', '莱西市', '370200');
INSERT INTO `areas` VALUES (1372, '370301', '市辖区', '370300');
INSERT INTO `areas` VALUES (1373, '370302', '淄川区', '370300');
INSERT INTO `areas` VALUES (1374, '370303', '张店区', '370300');
INSERT INTO `areas` VALUES (1375, '370304', '博山区', '370300');
INSERT INTO `areas` VALUES (1376, '370305', '临淄区', '370300');
INSERT INTO `areas` VALUES (1377, '370306', '周村区', '370300');
INSERT INTO `areas` VALUES (1378, '370321', '桓台县', '370300');
INSERT INTO `areas` VALUES (1379, '370322', '高青县', '370300');
INSERT INTO `areas` VALUES (1380, '370323', '沂源县', '370300');
INSERT INTO `areas` VALUES (1381, '370401', '市辖区', '370400');
INSERT INTO `areas` VALUES (1382, '370402', '市中区', '370400');
INSERT INTO `areas` VALUES (1383, '370403', '薛城区', '370400');
INSERT INTO `areas` VALUES (1384, '370404', '峄城区', '370400');
INSERT INTO `areas` VALUES (1385, '370405', '台儿庄区', '370400');
INSERT INTO `areas` VALUES (1386, '370406', '山亭区', '370400');
INSERT INTO `areas` VALUES (1387, '370481', '滕州市', '370400');
INSERT INTO `areas` VALUES (1388, '370501', '市辖区', '370500');
INSERT INTO `areas` VALUES (1389, '370502', '东营区', '370500');
INSERT INTO `areas` VALUES (1390, '370503', '河口区', '370500');
INSERT INTO `areas` VALUES (1391, '370521', '垦利县', '370500');
INSERT INTO `areas` VALUES (1392, '370522', '利津县', '370500');
INSERT INTO `areas` VALUES (1393, '370523', '广饶县', '370500');
INSERT INTO `areas` VALUES (1394, '370601', '市辖区', '370600');
INSERT INTO `areas` VALUES (1395, '370602', '芝罘区', '370600');
INSERT INTO `areas` VALUES (1396, '370611', '福山区', '370600');
INSERT INTO `areas` VALUES (1397, '370612', '牟平区', '370600');
INSERT INTO `areas` VALUES (1398, '370613', '莱山区', '370600');
INSERT INTO `areas` VALUES (1399, '370634', '长岛县', '370600');
INSERT INTO `areas` VALUES (1400, '370681', '龙口市', '370600');
INSERT INTO `areas` VALUES (1401, '370682', '莱阳市', '370600');
INSERT INTO `areas` VALUES (1402, '370683', '莱州市', '370600');
INSERT INTO `areas` VALUES (1403, '370684', '蓬莱市', '370600');
INSERT INTO `areas` VALUES (1404, '370685', '招远市', '370600');
INSERT INTO `areas` VALUES (1405, '370686', '栖霞市', '370600');
INSERT INTO `areas` VALUES (1406, '370687', '海阳市', '370600');
INSERT INTO `areas` VALUES (1407, '370701', '市辖区', '370700');
INSERT INTO `areas` VALUES (1408, '370702', '潍城区', '370700');
INSERT INTO `areas` VALUES (1409, '370703', '寒亭区', '370700');
INSERT INTO `areas` VALUES (1410, '370704', '坊子区', '370700');
INSERT INTO `areas` VALUES (1411, '370705', '奎文区', '370700');
INSERT INTO `areas` VALUES (1412, '370724', '临朐县', '370700');
INSERT INTO `areas` VALUES (1413, '370725', '昌乐县', '370700');
INSERT INTO `areas` VALUES (1414, '370781', '青州市', '370700');
INSERT INTO `areas` VALUES (1415, '370782', '诸城市', '370700');
INSERT INTO `areas` VALUES (1416, '370783', '寿光市', '370700');
INSERT INTO `areas` VALUES (1417, '370784', '安丘市', '370700');
INSERT INTO `areas` VALUES (1418, '370785', '高密市', '370700');
INSERT INTO `areas` VALUES (1419, '370786', '昌邑市', '370700');
INSERT INTO `areas` VALUES (1420, '370801', '市辖区', '370800');
INSERT INTO `areas` VALUES (1421, '370802', '市中区', '370800');
INSERT INTO `areas` VALUES (1422, '370811', '任城区', '370800');
INSERT INTO `areas` VALUES (1423, '370826', '微山县', '370800');
INSERT INTO `areas` VALUES (1424, '370827', '鱼台县', '370800');
INSERT INTO `areas` VALUES (1425, '370828', '金乡县', '370800');
INSERT INTO `areas` VALUES (1426, '370829', '嘉祥县', '370800');
INSERT INTO `areas` VALUES (1427, '370830', '汶上县', '370800');
INSERT INTO `areas` VALUES (1428, '370831', '泗水县', '370800');
INSERT INTO `areas` VALUES (1429, '370832', '梁山县', '370800');
INSERT INTO `areas` VALUES (1430, '370881', '曲阜市', '370800');
INSERT INTO `areas` VALUES (1431, '370882', '兖州市', '370800');
INSERT INTO `areas` VALUES (1432, '370883', '邹城市', '370800');
INSERT INTO `areas` VALUES (1433, '370901', '市辖区', '370900');
INSERT INTO `areas` VALUES (1434, '370902', '泰山区', '370900');
INSERT INTO `areas` VALUES (1435, '370903', '岱岳区', '370900');
INSERT INTO `areas` VALUES (1436, '370921', '宁阳县', '370900');
INSERT INTO `areas` VALUES (1437, '370923', '东平县', '370900');
INSERT INTO `areas` VALUES (1438, '370982', '新泰市', '370900');
INSERT INTO `areas` VALUES (1439, '370983', '肥城市', '370900');
INSERT INTO `areas` VALUES (1440, '371001', '市辖区', '371000');
INSERT INTO `areas` VALUES (1441, '371002', '环翠区', '371000');
INSERT INTO `areas` VALUES (1442, '371081', '文登市', '371000');
INSERT INTO `areas` VALUES (1443, '371082', '荣成市', '371000');
INSERT INTO `areas` VALUES (1444, '371083', '乳山市', '371000');
INSERT INTO `areas` VALUES (1445, '371101', '市辖区', '371100');
INSERT INTO `areas` VALUES (1446, '371102', '东港区', '371100');
INSERT INTO `areas` VALUES (1447, '371103', '岚山区', '371100');
INSERT INTO `areas` VALUES (1448, '371121', '五莲县', '371100');
INSERT INTO `areas` VALUES (1449, '371122', '莒　县', '371100');
INSERT INTO `areas` VALUES (1450, '371201', '市辖区', '371200');
INSERT INTO `areas` VALUES (1451, '371202', '莱城区', '371200');
INSERT INTO `areas` VALUES (1452, '371203', '钢城区', '371200');
INSERT INTO `areas` VALUES (1453, '371301', '市辖区', '371300');
INSERT INTO `areas` VALUES (1454, '371302', '兰山区', '371300');
INSERT INTO `areas` VALUES (1455, '371311', '罗庄区', '371300');
INSERT INTO `areas` VALUES (1456, '371312', '河东区', '371300');
INSERT INTO `areas` VALUES (1457, '371321', '沂南县', '371300');
INSERT INTO `areas` VALUES (1458, '371322', '郯城县', '371300');
INSERT INTO `areas` VALUES (1459, '371323', '沂水县', '371300');
INSERT INTO `areas` VALUES (1460, '371324', '苍山县', '371300');
INSERT INTO `areas` VALUES (1461, '371325', '费　县', '371300');
INSERT INTO `areas` VALUES (1462, '371326', '平邑县', '371300');
INSERT INTO `areas` VALUES (1463, '371327', '莒南县', '371300');
INSERT INTO `areas` VALUES (1464, '371328', '蒙阴县', '371300');
INSERT INTO `areas` VALUES (1465, '371329', '临沭县', '371300');
INSERT INTO `areas` VALUES (1466, '371401', '市辖区', '371400');
INSERT INTO `areas` VALUES (1467, '371402', '德城区', '371400');
INSERT INTO `areas` VALUES (1468, '371421', '陵　县', '371400');
INSERT INTO `areas` VALUES (1469, '371422', '宁津县', '371400');
INSERT INTO `areas` VALUES (1470, '371423', '庆云县', '371400');
INSERT INTO `areas` VALUES (1471, '371424', '临邑县', '371400');
INSERT INTO `areas` VALUES (1472, '371425', '齐河县', '371400');
INSERT INTO `areas` VALUES (1473, '371426', '平原县', '371400');
INSERT INTO `areas` VALUES (1474, '371427', '夏津县', '371400');
INSERT INTO `areas` VALUES (1475, '371428', '武城县', '371400');
INSERT INTO `areas` VALUES (1476, '371481', '乐陵市', '371400');
INSERT INTO `areas` VALUES (1477, '371482', '禹城市', '371400');
INSERT INTO `areas` VALUES (1478, '371501', '市辖区', '371500');
INSERT INTO `areas` VALUES (1479, '371502', '东昌府区', '371500');
INSERT INTO `areas` VALUES (1480, '371521', '阳谷县', '371500');
INSERT INTO `areas` VALUES (1481, '371522', '莘　县', '371500');
INSERT INTO `areas` VALUES (1482, '371523', '茌平县', '371500');
INSERT INTO `areas` VALUES (1483, '371524', '东阿县', '371500');
INSERT INTO `areas` VALUES (1484, '371525', '冠　县', '371500');
INSERT INTO `areas` VALUES (1485, '371526', '高唐县', '371500');
INSERT INTO `areas` VALUES (1486, '371581', '临清市', '371500');
INSERT INTO `areas` VALUES (1487, '371601', '市辖区', '371600');
INSERT INTO `areas` VALUES (1488, '371602', '滨城区', '371600');
INSERT INTO `areas` VALUES (1489, '371621', '惠民县', '371600');
INSERT INTO `areas` VALUES (1490, '371622', '阳信县', '371600');
INSERT INTO `areas` VALUES (1491, '371623', '无棣县', '371600');
INSERT INTO `areas` VALUES (1492, '371624', '沾化县', '371600');
INSERT INTO `areas` VALUES (1493, '371625', '博兴县', '371600');
INSERT INTO `areas` VALUES (1494, '371626', '邹平县', '371600');
INSERT INTO `areas` VALUES (1495, '371701', '市辖区', '371700');
INSERT INTO `areas` VALUES (1496, '371702', '牡丹区', '371700');
INSERT INTO `areas` VALUES (1497, '371721', '曹　县', '371700');
INSERT INTO `areas` VALUES (1498, '371722', '单　县', '371700');
INSERT INTO `areas` VALUES (1499, '371723', '成武县', '371700');
INSERT INTO `areas` VALUES (1500, '371724', '巨野县', '371700');
INSERT INTO `areas` VALUES (1501, '371725', '郓城县', '371700');
INSERT INTO `areas` VALUES (1502, '371726', '鄄城县', '371700');
INSERT INTO `areas` VALUES (1503, '371727', '定陶县', '371700');
INSERT INTO `areas` VALUES (1504, '371728', '东明县', '371700');
INSERT INTO `areas` VALUES (1505, '410101', '市辖区', '410100');
INSERT INTO `areas` VALUES (1506, '410102', '中原区', '410100');
INSERT INTO `areas` VALUES (1507, '410103', '二七区', '410100');
INSERT INTO `areas` VALUES (1508, '410104', '管城回族区', '410100');
INSERT INTO `areas` VALUES (1509, '410105', '金水区', '410100');
INSERT INTO `areas` VALUES (1510, '410106', '上街区', '410100');
INSERT INTO `areas` VALUES (1511, '410108', '邙山区', '410100');
INSERT INTO `areas` VALUES (1512, '410122', '中牟县', '410100');
INSERT INTO `areas` VALUES (1513, '410181', '巩义市', '410100');
INSERT INTO `areas` VALUES (1514, '410182', '荥阳市', '410100');
INSERT INTO `areas` VALUES (1515, '410183', '新密市', '410100');
INSERT INTO `areas` VALUES (1516, '410184', '新郑市', '410100');
INSERT INTO `areas` VALUES (1517, '410185', '登封市', '410100');
INSERT INTO `areas` VALUES (1518, '410201', '市辖区', '410200');
INSERT INTO `areas` VALUES (1519, '410202', '龙亭区', '410200');
INSERT INTO `areas` VALUES (1520, '410203', '顺河回族区', '410200');
INSERT INTO `areas` VALUES (1521, '410204', '鼓楼区', '410200');
INSERT INTO `areas` VALUES (1522, '410205', '南关区', '410200');
INSERT INTO `areas` VALUES (1523, '410211', '郊　区', '410200');
INSERT INTO `areas` VALUES (1524, '410221', '杞　县', '410200');
INSERT INTO `areas` VALUES (1525, '410222', '通许县', '410200');
INSERT INTO `areas` VALUES (1526, '410223', '尉氏县', '410200');
INSERT INTO `areas` VALUES (1527, '410224', '开封县', '410200');
INSERT INTO `areas` VALUES (1528, '410225', '兰考县', '410200');
INSERT INTO `areas` VALUES (1529, '410301', '市辖区', '410300');
INSERT INTO `areas` VALUES (1530, '410302', '老城区', '410300');
INSERT INTO `areas` VALUES (1531, '410303', '西工区', '410300');
INSERT INTO `areas` VALUES (1532, '410304', '廛河回族区', '410300');
INSERT INTO `areas` VALUES (1533, '410305', '涧西区', '410300');
INSERT INTO `areas` VALUES (1534, '410306', '吉利区', '410300');
INSERT INTO `areas` VALUES (1535, '410307', '洛龙区', '410300');
INSERT INTO `areas` VALUES (1536, '410322', '孟津县', '410300');
INSERT INTO `areas` VALUES (1537, '410323', '新安县', '410300');
INSERT INTO `areas` VALUES (1538, '410324', '栾川县', '410300');
INSERT INTO `areas` VALUES (1539, '410325', '嵩　县', '410300');
INSERT INTO `areas` VALUES (1540, '410326', '汝阳县', '410300');
INSERT INTO `areas` VALUES (1541, '410327', '宜阳县', '410300');
INSERT INTO `areas` VALUES (1542, '410328', '洛宁县', '410300');
INSERT INTO `areas` VALUES (1543, '410329', '伊川县', '410300');
INSERT INTO `areas` VALUES (1544, '410381', '偃师市', '410300');
INSERT INTO `areas` VALUES (1545, '410401', '市辖区', '410400');
INSERT INTO `areas` VALUES (1546, '410402', '新华区', '410400');
INSERT INTO `areas` VALUES (1547, '410403', '卫东区', '410400');
INSERT INTO `areas` VALUES (1548, '410404', '石龙区', '410400');
INSERT INTO `areas` VALUES (1549, '410411', '湛河区', '410400');
INSERT INTO `areas` VALUES (1550, '410421', '宝丰县', '410400');
INSERT INTO `areas` VALUES (1551, '410422', '叶　县', '410400');
INSERT INTO `areas` VALUES (1552, '410423', '鲁山县', '410400');
INSERT INTO `areas` VALUES (1553, '410425', '郏　县', '410400');
INSERT INTO `areas` VALUES (1554, '410481', '舞钢市', '410400');
INSERT INTO `areas` VALUES (1555, '410482', '汝州市', '410400');
INSERT INTO `areas` VALUES (1556, '410501', '市辖区', '410500');
INSERT INTO `areas` VALUES (1557, '410502', '文峰区', '410500');
INSERT INTO `areas` VALUES (1558, '410503', '北关区', '410500');
INSERT INTO `areas` VALUES (1559, '410505', '殷都区', '410500');
INSERT INTO `areas` VALUES (1560, '410506', '龙安区', '410500');
INSERT INTO `areas` VALUES (1561, '410522', '安阳县', '410500');
INSERT INTO `areas` VALUES (1562, '410523', '汤阴县', '410500');
INSERT INTO `areas` VALUES (1563, '410526', '滑　县', '410500');
INSERT INTO `areas` VALUES (1564, '410527', '内黄县', '410500');
INSERT INTO `areas` VALUES (1565, '410581', '林州市', '410500');
INSERT INTO `areas` VALUES (1566, '410601', '市辖区', '410600');
INSERT INTO `areas` VALUES (1567, '410602', '鹤山区', '410600');
INSERT INTO `areas` VALUES (1568, '410603', '山城区', '410600');
INSERT INTO `areas` VALUES (1569, '410611', '淇滨区', '410600');
INSERT INTO `areas` VALUES (1570, '410621', '浚　县', '410600');
INSERT INTO `areas` VALUES (1571, '410622', '淇　县', '410600');
INSERT INTO `areas` VALUES (1572, '410701', '市辖区', '410700');
INSERT INTO `areas` VALUES (1573, '410702', '红旗区', '410700');
INSERT INTO `areas` VALUES (1574, '410703', '卫滨区', '410700');
INSERT INTO `areas` VALUES (1575, '410704', '凤泉区', '410700');
INSERT INTO `areas` VALUES (1576, '410711', '牧野区', '410700');
INSERT INTO `areas` VALUES (1577, '410721', '新乡县', '410700');
INSERT INTO `areas` VALUES (1578, '410724', '获嘉县', '410700');
INSERT INTO `areas` VALUES (1579, '410725', '原阳县', '410700');
INSERT INTO `areas` VALUES (1580, '410726', '延津县', '410700');
INSERT INTO `areas` VALUES (1581, '410727', '封丘县', '410700');
INSERT INTO `areas` VALUES (1582, '410728', '长垣县', '410700');
INSERT INTO `areas` VALUES (1583, '410781', '卫辉市', '410700');
INSERT INTO `areas` VALUES (1584, '410782', '辉县市', '410700');
INSERT INTO `areas` VALUES (1585, '410801', '市辖区', '410800');
INSERT INTO `areas` VALUES (1586, '410802', '解放区', '410800');
INSERT INTO `areas` VALUES (1587, '410803', '中站区', '410800');
INSERT INTO `areas` VALUES (1588, '410804', '马村区', '410800');
INSERT INTO `areas` VALUES (1589, '410811', '山阳区', '410800');
INSERT INTO `areas` VALUES (1590, '410821', '修武县', '410800');
INSERT INTO `areas` VALUES (1591, '410822', '博爱县', '410800');
INSERT INTO `areas` VALUES (1592, '410823', '武陟县', '410800');
INSERT INTO `areas` VALUES (1593, '410825', '温　县', '410800');
INSERT INTO `areas` VALUES (1594, '410881', '济源市', '410800');
INSERT INTO `areas` VALUES (1595, '410882', '沁阳市', '410800');
INSERT INTO `areas` VALUES (1596, '410883', '孟州市', '410800');
INSERT INTO `areas` VALUES (1597, '410901', '市辖区', '410900');
INSERT INTO `areas` VALUES (1598, '410902', '华龙区', '410900');
INSERT INTO `areas` VALUES (1599, '410922', '清丰县', '410900');
INSERT INTO `areas` VALUES (1600, '410923', '南乐县', '410900');
INSERT INTO `areas` VALUES (1601, '410926', '范　县', '410900');
INSERT INTO `areas` VALUES (1602, '410927', '台前县', '410900');
INSERT INTO `areas` VALUES (1603, '410928', '濮阳县', '410900');
INSERT INTO `areas` VALUES (1604, '411001', '市辖区', '411000');
INSERT INTO `areas` VALUES (1605, '411002', '魏都区', '411000');
INSERT INTO `areas` VALUES (1606, '411023', '许昌县', '411000');
INSERT INTO `areas` VALUES (1607, '411024', '鄢陵县', '411000');
INSERT INTO `areas` VALUES (1608, '411025', '襄城县', '411000');
INSERT INTO `areas` VALUES (1609, '411081', '禹州市', '411000');
INSERT INTO `areas` VALUES (1610, '411082', '长葛市', '411000');
INSERT INTO `areas` VALUES (1611, '411101', '市辖区', '411100');
INSERT INTO `areas` VALUES (1612, '411102', '源汇区', '411100');
INSERT INTO `areas` VALUES (1613, '411103', '郾城区', '411100');
INSERT INTO `areas` VALUES (1614, '411104', '召陵区', '411100');
INSERT INTO `areas` VALUES (1615, '411121', '舞阳县', '411100');
INSERT INTO `areas` VALUES (1616, '411122', '临颍县', '411100');
INSERT INTO `areas` VALUES (1617, '411201', '市辖区', '411200');
INSERT INTO `areas` VALUES (1618, '411202', '湖滨区', '411200');
INSERT INTO `areas` VALUES (1619, '411221', '渑池县', '411200');
INSERT INTO `areas` VALUES (1620, '411222', '陕　县', '411200');
INSERT INTO `areas` VALUES (1621, '411224', '卢氏县', '411200');
INSERT INTO `areas` VALUES (1622, '411281', '义马市', '411200');
INSERT INTO `areas` VALUES (1623, '411282', '灵宝市', '411200');
INSERT INTO `areas` VALUES (1624, '411301', '市辖区', '411300');
INSERT INTO `areas` VALUES (1625, '411302', '宛城区', '411300');
INSERT INTO `areas` VALUES (1626, '411303', '卧龙区', '411300');
INSERT INTO `areas` VALUES (1627, '411321', '南召县', '411300');
INSERT INTO `areas` VALUES (1628, '411322', '方城县', '411300');
INSERT INTO `areas` VALUES (1629, '411323', '西峡县', '411300');
INSERT INTO `areas` VALUES (1630, '411324', '镇平县', '411300');
INSERT INTO `areas` VALUES (1631, '411325', '内乡县', '411300');
INSERT INTO `areas` VALUES (1632, '411326', '淅川县', '411300');
INSERT INTO `areas` VALUES (1633, '411327', '社旗县', '411300');
INSERT INTO `areas` VALUES (1634, '411328', '唐河县', '411300');
INSERT INTO `areas` VALUES (1635, '411329', '新野县', '411300');
INSERT INTO `areas` VALUES (1636, '411330', '桐柏县', '411300');
INSERT INTO `areas` VALUES (1637, '411381', '邓州市', '411300');
INSERT INTO `areas` VALUES (1638, '411401', '市辖区', '411400');
INSERT INTO `areas` VALUES (1639, '411402', '梁园区', '411400');
INSERT INTO `areas` VALUES (1640, '411403', '睢阳区', '411400');
INSERT INTO `areas` VALUES (1641, '411421', '民权县', '411400');
INSERT INTO `areas` VALUES (1642, '411422', '睢　县', '411400');
INSERT INTO `areas` VALUES (1643, '411423', '宁陵县', '411400');
INSERT INTO `areas` VALUES (1644, '411424', '柘城县', '411400');
INSERT INTO `areas` VALUES (1645, '411425', '虞城县', '411400');
INSERT INTO `areas` VALUES (1646, '411426', '夏邑县', '411400');
INSERT INTO `areas` VALUES (1647, '411481', '永城市', '411400');
INSERT INTO `areas` VALUES (1648, '411501', '市辖区', '411500');
INSERT INTO `areas` VALUES (1649, '411502', '师河区', '411500');
INSERT INTO `areas` VALUES (1650, '411503', '平桥区', '411500');
INSERT INTO `areas` VALUES (1651, '411521', '罗山县', '411500');
INSERT INTO `areas` VALUES (1652, '411522', '光山县', '411500');
INSERT INTO `areas` VALUES (1653, '411523', '新　县', '411500');
INSERT INTO `areas` VALUES (1654, '411524', '商城县', '411500');
INSERT INTO `areas` VALUES (1655, '411525', '固始县', '411500');
INSERT INTO `areas` VALUES (1656, '411526', '潢川县', '411500');
INSERT INTO `areas` VALUES (1657, '411527', '淮滨县', '411500');
INSERT INTO `areas` VALUES (1658, '411528', '息　县', '411500');
INSERT INTO `areas` VALUES (1659, '411601', '市辖区', '411600');
INSERT INTO `areas` VALUES (1660, '411602', '川汇区', '411600');
INSERT INTO `areas` VALUES (1661, '411621', '扶沟县', '411600');
INSERT INTO `areas` VALUES (1662, '411622', '西华县', '411600');
INSERT INTO `areas` VALUES (1663, '411623', '商水县', '411600');
INSERT INTO `areas` VALUES (1664, '411624', '沈丘县', '411600');
INSERT INTO `areas` VALUES (1665, '411625', '郸城县', '411600');
INSERT INTO `areas` VALUES (1666, '411626', '淮阳县', '411600');
INSERT INTO `areas` VALUES (1667, '411627', '太康县', '411600');
INSERT INTO `areas` VALUES (1668, '411628', '鹿邑县', '411600');
INSERT INTO `areas` VALUES (1669, '411681', '项城市', '411600');
INSERT INTO `areas` VALUES (1670, '411701', '市辖区', '411700');
INSERT INTO `areas` VALUES (1671, '411702', '驿城区', '411700');
INSERT INTO `areas` VALUES (1672, '411721', '西平县', '411700');
INSERT INTO `areas` VALUES (1673, '411722', '上蔡县', '411700');
INSERT INTO `areas` VALUES (1674, '411723', '平舆县', '411700');
INSERT INTO `areas` VALUES (1675, '411724', '正阳县', '411700');
INSERT INTO `areas` VALUES (1676, '411725', '确山县', '411700');
INSERT INTO `areas` VALUES (1677, '411726', '泌阳县', '411700');
INSERT INTO `areas` VALUES (1678, '411727', '汝南县', '411700');
INSERT INTO `areas` VALUES (1679, '411728', '遂平县', '411700');
INSERT INTO `areas` VALUES (1680, '411729', '新蔡县', '411700');
INSERT INTO `areas` VALUES (1681, '420101', '市辖区', '420100');
INSERT INTO `areas` VALUES (1682, '420102', '江岸区', '420100');
INSERT INTO `areas` VALUES (1683, '420103', '江汉区', '420100');
INSERT INTO `areas` VALUES (1684, '420104', '乔口区', '420100');
INSERT INTO `areas` VALUES (1685, '420105', '汉阳区', '420100');
INSERT INTO `areas` VALUES (1686, '420106', '武昌区', '420100');
INSERT INTO `areas` VALUES (1687, '420107', '青山区', '420100');
INSERT INTO `areas` VALUES (1688, '420111', '洪山区', '420100');
INSERT INTO `areas` VALUES (1689, '420112', '东西湖区', '420100');
INSERT INTO `areas` VALUES (1690, '420113', '汉南区', '420100');
INSERT INTO `areas` VALUES (1691, '420114', '蔡甸区', '420100');
INSERT INTO `areas` VALUES (1692, '420115', '江夏区', '420100');
INSERT INTO `areas` VALUES (1693, '420116', '黄陂区', '420100');
INSERT INTO `areas` VALUES (1694, '420117', '新洲区', '420100');
INSERT INTO `areas` VALUES (1695, '420201', '市辖区', '420200');
INSERT INTO `areas` VALUES (1696, '420202', '黄石港区', '420200');
INSERT INTO `areas` VALUES (1697, '420203', '西塞山区', '420200');
INSERT INTO `areas` VALUES (1698, '420204', '下陆区', '420200');
INSERT INTO `areas` VALUES (1699, '420205', '铁山区', '420200');
INSERT INTO `areas` VALUES (1700, '420222', '阳新县', '420200');
INSERT INTO `areas` VALUES (1701, '420281', '大冶市', '420200');
INSERT INTO `areas` VALUES (1702, '420301', '市辖区', '420300');
INSERT INTO `areas` VALUES (1703, '420302', '茅箭区', '420300');
INSERT INTO `areas` VALUES (1704, '420303', '张湾区', '420300');
INSERT INTO `areas` VALUES (1705, '420321', '郧　县', '420300');
INSERT INTO `areas` VALUES (1706, '420322', '郧西县', '420300');
INSERT INTO `areas` VALUES (1707, '420323', '竹山县', '420300');
INSERT INTO `areas` VALUES (1708, '420324', '竹溪县', '420300');
INSERT INTO `areas` VALUES (1709, '420325', '房　县', '420300');
INSERT INTO `areas` VALUES (1710, '420381', '丹江口市', '420300');
INSERT INTO `areas` VALUES (1711, '420501', '市辖区', '420500');
INSERT INTO `areas` VALUES (1712, '420502', '西陵区', '420500');
INSERT INTO `areas` VALUES (1713, '420503', '伍家岗区', '420500');
INSERT INTO `areas` VALUES (1714, '420504', '点军区', '420500');
INSERT INTO `areas` VALUES (1715, '420505', '猇亭区', '420500');
INSERT INTO `areas` VALUES (1716, '420506', '夷陵区', '420500');
INSERT INTO `areas` VALUES (1717, '420525', '远安县', '420500');
INSERT INTO `areas` VALUES (1718, '420526', '兴山县', '420500');
INSERT INTO `areas` VALUES (1719, '420527', '秭归县', '420500');
INSERT INTO `areas` VALUES (1720, '420528', '长阳土家族自治县', '420500');
INSERT INTO `areas` VALUES (1721, '420529', '五峰土家族自治县', '420500');
INSERT INTO `areas` VALUES (1722, '420581', '宜都市', '420500');
INSERT INTO `areas` VALUES (1723, '420582', '当阳市', '420500');
INSERT INTO `areas` VALUES (1724, '420583', '枝江市', '420500');
INSERT INTO `areas` VALUES (1725, '420601', '市辖区', '420600');
INSERT INTO `areas` VALUES (1726, '420602', '襄城区', '420600');
INSERT INTO `areas` VALUES (1727, '420606', '樊城区', '420600');
INSERT INTO `areas` VALUES (1728, '420607', '襄阳区', '420600');
INSERT INTO `areas` VALUES (1729, '420624', '南漳县', '420600');
INSERT INTO `areas` VALUES (1730, '420625', '谷城县', '420600');
INSERT INTO `areas` VALUES (1731, '420626', '保康县', '420600');
INSERT INTO `areas` VALUES (1732, '420682', '老河口市', '420600');
INSERT INTO `areas` VALUES (1733, '420683', '枣阳市', '420600');
INSERT INTO `areas` VALUES (1734, '420684', '宜城市', '420600');
INSERT INTO `areas` VALUES (1735, '420701', '市辖区', '420700');
INSERT INTO `areas` VALUES (1736, '420702', '梁子湖区', '420700');
INSERT INTO `areas` VALUES (1737, '420703', '华容区', '420700');
INSERT INTO `areas` VALUES (1738, '420704', '鄂城区', '420700');
INSERT INTO `areas` VALUES (1739, '420801', '市辖区', '420800');
INSERT INTO `areas` VALUES (1740, '420802', '东宝区', '420800');
INSERT INTO `areas` VALUES (1741, '420804', '掇刀区', '420800');
INSERT INTO `areas` VALUES (1742, '420821', '京山县', '420800');
INSERT INTO `areas` VALUES (1743, '420822', '沙洋县', '420800');
INSERT INTO `areas` VALUES (1744, '420881', '钟祥市', '420800');
INSERT INTO `areas` VALUES (1745, '420901', '市辖区', '420900');
INSERT INTO `areas` VALUES (1746, '420902', '孝南区', '420900');
INSERT INTO `areas` VALUES (1747, '420921', '孝昌县', '420900');
INSERT INTO `areas` VALUES (1748, '420922', '大悟县', '420900');
INSERT INTO `areas` VALUES (1749, '420923', '云梦县', '420900');
INSERT INTO `areas` VALUES (1750, '420981', '应城市', '420900');
INSERT INTO `areas` VALUES (1751, '420982', '安陆市', '420900');
INSERT INTO `areas` VALUES (1752, '420984', '汉川市', '420900');
INSERT INTO `areas` VALUES (1753, '421001', '市辖区', '421000');
INSERT INTO `areas` VALUES (1754, '421002', '沙市区', '421000');
INSERT INTO `areas` VALUES (1755, '421003', '荆州区', '421000');
INSERT INTO `areas` VALUES (1756, '421022', '公安县', '421000');
INSERT INTO `areas` VALUES (1757, '421023', '监利县', '421000');
INSERT INTO `areas` VALUES (1758, '421024', '江陵县', '421000');
INSERT INTO `areas` VALUES (1759, '421081', '石首市', '421000');
INSERT INTO `areas` VALUES (1760, '421083', '洪湖市', '421000');
INSERT INTO `areas` VALUES (1761, '421087', '松滋市', '421000');
INSERT INTO `areas` VALUES (1762, '421101', '市辖区', '421100');
INSERT INTO `areas` VALUES (1763, '421102', '黄州区', '421100');
INSERT INTO `areas` VALUES (1764, '421121', '团风县', '421100');
INSERT INTO `areas` VALUES (1765, '421122', '红安县', '421100');
INSERT INTO `areas` VALUES (1766, '421123', '罗田县', '421100');
INSERT INTO `areas` VALUES (1767, '421124', '英山县', '421100');
INSERT INTO `areas` VALUES (1768, '421125', '浠水县', '421100');
INSERT INTO `areas` VALUES (1769, '421126', '蕲春县', '421100');
INSERT INTO `areas` VALUES (1770, '421127', '黄梅县', '421100');
INSERT INTO `areas` VALUES (1771, '421181', '麻城市', '421100');
INSERT INTO `areas` VALUES (1772, '421182', '武穴市', '421100');
INSERT INTO `areas` VALUES (1773, '421201', '市辖区', '421200');
INSERT INTO `areas` VALUES (1774, '421202', '咸安区', '421200');
INSERT INTO `areas` VALUES (1775, '421221', '嘉鱼县', '421200');
INSERT INTO `areas` VALUES (1776, '421222', '通城县', '421200');
INSERT INTO `areas` VALUES (1777, '421223', '崇阳县', '421200');
INSERT INTO `areas` VALUES (1778, '421224', '通山县', '421200');
INSERT INTO `areas` VALUES (1779, '421281', '赤壁市', '421200');
INSERT INTO `areas` VALUES (1780, '421301', '市辖区', '421300');
INSERT INTO `areas` VALUES (1781, '421302', '曾都区', '421300');
INSERT INTO `areas` VALUES (1782, '421381', '广水市', '421300');
INSERT INTO `areas` VALUES (1783, '422801', '恩施市', '422800');
INSERT INTO `areas` VALUES (1784, '422802', '利川市', '422800');
INSERT INTO `areas` VALUES (1785, '422822', '建始县', '422800');
INSERT INTO `areas` VALUES (1786, '422823', '巴东县', '422800');
INSERT INTO `areas` VALUES (1787, '422825', '宣恩县', '422800');
INSERT INTO `areas` VALUES (1788, '422826', '咸丰县', '422800');
INSERT INTO `areas` VALUES (1789, '422827', '来凤县', '422800');
INSERT INTO `areas` VALUES (1790, '422828', '鹤峰县', '422800');
INSERT INTO `areas` VALUES (1791, '429004', '仙桃市', '429000');
INSERT INTO `areas` VALUES (1792, '429005', '潜江市', '429000');
INSERT INTO `areas` VALUES (1793, '429006', '天门市', '429000');
INSERT INTO `areas` VALUES (1794, '429021', '神农架林区', '429000');
INSERT INTO `areas` VALUES (1795, '430101', '市辖区', '430100');
INSERT INTO `areas` VALUES (1796, '430102', '芙蓉区', '430100');
INSERT INTO `areas` VALUES (1797, '430103', '天心区', '430100');
INSERT INTO `areas` VALUES (1798, '430104', '岳麓区', '430100');
INSERT INTO `areas` VALUES (1799, '430105', '开福区', '430100');
INSERT INTO `areas` VALUES (1800, '430111', '雨花区', '430100');
INSERT INTO `areas` VALUES (1801, '430121', '长沙县', '430100');
INSERT INTO `areas` VALUES (1802, '430122', '望城县', '430100');
INSERT INTO `areas` VALUES (1803, '430124', '宁乡县', '430100');
INSERT INTO `areas` VALUES (1804, '430181', '浏阳市', '430100');
INSERT INTO `areas` VALUES (1805, '430201', '市辖区', '430200');
INSERT INTO `areas` VALUES (1806, '430202', '荷塘区', '430200');
INSERT INTO `areas` VALUES (1807, '430203', '芦淞区', '430200');
INSERT INTO `areas` VALUES (1808, '430204', '石峰区', '430200');
INSERT INTO `areas` VALUES (1809, '430211', '天元区', '430200');
INSERT INTO `areas` VALUES (1810, '430221', '株洲县', '430200');
INSERT INTO `areas` VALUES (1811, '430223', '攸　县', '430200');
INSERT INTO `areas` VALUES (1812, '430224', '茶陵县', '430200');
INSERT INTO `areas` VALUES (1813, '430225', '炎陵县', '430200');
INSERT INTO `areas` VALUES (1814, '430281', '醴陵市', '430200');
INSERT INTO `areas` VALUES (1815, '430301', '市辖区', '430300');
INSERT INTO `areas` VALUES (1816, '430302', '雨湖区', '430300');
INSERT INTO `areas` VALUES (1817, '430304', '岳塘区', '430300');
INSERT INTO `areas` VALUES (1818, '430321', '湘潭县', '430300');
INSERT INTO `areas` VALUES (1819, '430381', '湘乡市', '430300');
INSERT INTO `areas` VALUES (1820, '430382', '韶山市', '430300');
INSERT INTO `areas` VALUES (1821, '430401', '市辖区', '430400');
INSERT INTO `areas` VALUES (1822, '430405', '珠晖区', '430400');
INSERT INTO `areas` VALUES (1823, '430406', '雁峰区', '430400');
INSERT INTO `areas` VALUES (1824, '430407', '石鼓区', '430400');
INSERT INTO `areas` VALUES (1825, '430408', '蒸湘区', '430400');
INSERT INTO `areas` VALUES (1826, '430412', '南岳区', '430400');
INSERT INTO `areas` VALUES (1827, '430421', '衡阳县', '430400');
INSERT INTO `areas` VALUES (1828, '430422', '衡南县', '430400');
INSERT INTO `areas` VALUES (1829, '430423', '衡山县', '430400');
INSERT INTO `areas` VALUES (1830, '430424', '衡东县', '430400');
INSERT INTO `areas` VALUES (1831, '430426', '祁东县', '430400');
INSERT INTO `areas` VALUES (1832, '430481', '耒阳市', '430400');
INSERT INTO `areas` VALUES (1833, '430482', '常宁市', '430400');
INSERT INTO `areas` VALUES (1834, '430501', '市辖区', '430500');
INSERT INTO `areas` VALUES (1835, '430502', '双清区', '430500');
INSERT INTO `areas` VALUES (1836, '430503', '大祥区', '430500');
INSERT INTO `areas` VALUES (1837, '430511', '北塔区', '430500');
INSERT INTO `areas` VALUES (1838, '430521', '邵东县', '430500');
INSERT INTO `areas` VALUES (1839, '430522', '新邵县', '430500');
INSERT INTO `areas` VALUES (1840, '430523', '邵阳县', '430500');
INSERT INTO `areas` VALUES (1841, '430524', '隆回县', '430500');
INSERT INTO `areas` VALUES (1842, '430525', '洞口县', '430500');
INSERT INTO `areas` VALUES (1843, '430527', '绥宁县', '430500');
INSERT INTO `areas` VALUES (1844, '430528', '新宁县', '430500');
INSERT INTO `areas` VALUES (1845, '430529', '城步苗族自治县', '430500');
INSERT INTO `areas` VALUES (1846, '430581', '武冈市', '430500');
INSERT INTO `areas` VALUES (1847, '430601', '市辖区', '430600');
INSERT INTO `areas` VALUES (1848, '430602', '岳阳楼区', '430600');
INSERT INTO `areas` VALUES (1849, '430603', '云溪区', '430600');
INSERT INTO `areas` VALUES (1850, '430611', '君山区', '430600');
INSERT INTO `areas` VALUES (1851, '430621', '岳阳县', '430600');
INSERT INTO `areas` VALUES (1852, '430623', '华容县', '430600');
INSERT INTO `areas` VALUES (1853, '430624', '湘阴县', '430600');
INSERT INTO `areas` VALUES (1854, '430626', '平江县', '430600');
INSERT INTO `areas` VALUES (1855, '430681', '汨罗市', '430600');
INSERT INTO `areas` VALUES (1856, '430682', '临湘市', '430600');
INSERT INTO `areas` VALUES (1857, '430701', '市辖区', '430700');
INSERT INTO `areas` VALUES (1858, '430702', '武陵区', '430700');
INSERT INTO `areas` VALUES (1859, '430703', '鼎城区', '430700');
INSERT INTO `areas` VALUES (1860, '430721', '安乡县', '430700');
INSERT INTO `areas` VALUES (1861, '430722', '汉寿县', '430700');
INSERT INTO `areas` VALUES (1862, '430723', '澧　县', '430700');
INSERT INTO `areas` VALUES (1863, '430724', '临澧县', '430700');
INSERT INTO `areas` VALUES (1864, '430725', '桃源县', '430700');
INSERT INTO `areas` VALUES (1865, '430726', '石门县', '430700');
INSERT INTO `areas` VALUES (1866, '430781', '津市市', '430700');
INSERT INTO `areas` VALUES (1867, '430801', '市辖区', '430800');
INSERT INTO `areas` VALUES (1868, '430802', '永定区', '430800');
INSERT INTO `areas` VALUES (1869, '430811', '武陵源区', '430800');
INSERT INTO `areas` VALUES (1870, '430821', '慈利县', '430800');
INSERT INTO `areas` VALUES (1871, '430822', '桑植县', '430800');
INSERT INTO `areas` VALUES (1872, '430901', '市辖区', '430900');
INSERT INTO `areas` VALUES (1873, '430902', '资阳区', '430900');
INSERT INTO `areas` VALUES (1874, '430903', '赫山区', '430900');
INSERT INTO `areas` VALUES (1875, '430921', '南　县', '430900');
INSERT INTO `areas` VALUES (1876, '430922', '桃江县', '430900');
INSERT INTO `areas` VALUES (1877, '430923', '安化县', '430900');
INSERT INTO `areas` VALUES (1878, '430981', '沅江市', '430900');
INSERT INTO `areas` VALUES (1879, '431001', '市辖区', '431000');
INSERT INTO `areas` VALUES (1880, '431002', '北湖区', '431000');
INSERT INTO `areas` VALUES (1881, '431003', '苏仙区', '431000');
INSERT INTO `areas` VALUES (1882, '431021', '桂阳县', '431000');
INSERT INTO `areas` VALUES (1883, '431022', '宜章县', '431000');
INSERT INTO `areas` VALUES (1884, '431023', '永兴县', '431000');
INSERT INTO `areas` VALUES (1885, '431024', '嘉禾县', '431000');
INSERT INTO `areas` VALUES (1886, '431025', '临武县', '431000');
INSERT INTO `areas` VALUES (1887, '431026', '汝城县', '431000');
INSERT INTO `areas` VALUES (1888, '431027', '桂东县', '431000');
INSERT INTO `areas` VALUES (1889, '431028', '安仁县', '431000');
INSERT INTO `areas` VALUES (1890, '431081', '资兴市', '431000');
INSERT INTO `areas` VALUES (1891, '431101', '市辖区', '431100');
INSERT INTO `areas` VALUES (1892, '431102', '芝山区', '431100');
INSERT INTO `areas` VALUES (1893, '431103', '冷水滩区', '431100');
INSERT INTO `areas` VALUES (1894, '431121', '祁阳县', '431100');
INSERT INTO `areas` VALUES (1895, '431122', '东安县', '431100');
INSERT INTO `areas` VALUES (1896, '431123', '双牌县', '431100');
INSERT INTO `areas` VALUES (1897, '431124', '道　县', '431100');
INSERT INTO `areas` VALUES (1898, '431125', '江永县', '431100');
INSERT INTO `areas` VALUES (1899, '431126', '宁远县', '431100');
INSERT INTO `areas` VALUES (1900, '431127', '蓝山县', '431100');
INSERT INTO `areas` VALUES (1901, '431128', '新田县', '431100');
INSERT INTO `areas` VALUES (1902, '431129', '江华瑶族自治县', '431100');
INSERT INTO `areas` VALUES (1903, '431201', '市辖区', '431200');
INSERT INTO `areas` VALUES (1904, '431202', '鹤城区', '431200');
INSERT INTO `areas` VALUES (1905, '431221', '中方县', '431200');
INSERT INTO `areas` VALUES (1906, '431222', '沅陵县', '431200');
INSERT INTO `areas` VALUES (1907, '431223', '辰溪县', '431200');
INSERT INTO `areas` VALUES (1908, '431224', '溆浦县', '431200');
INSERT INTO `areas` VALUES (1909, '431225', '会同县', '431200');
INSERT INTO `areas` VALUES (1910, '431226', '麻阳苗族自治县', '431200');
INSERT INTO `areas` VALUES (1911, '431227', '新晃侗族自治县', '431200');
INSERT INTO `areas` VALUES (1912, '431228', '芷江侗族自治县', '431200');
INSERT INTO `areas` VALUES (1913, '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `areas` VALUES (1914, '431230', '通道侗族自治县', '431200');
INSERT INTO `areas` VALUES (1915, '431281', '洪江市', '431200');
INSERT INTO `areas` VALUES (1916, '431301', '市辖区', '431300');
INSERT INTO `areas` VALUES (1917, '431302', '娄星区', '431300');
INSERT INTO `areas` VALUES (1918, '431321', '双峰县', '431300');
INSERT INTO `areas` VALUES (1919, '431322', '新化县', '431300');
INSERT INTO `areas` VALUES (1920, '431381', '冷水江市', '431300');
INSERT INTO `areas` VALUES (1921, '431382', '涟源市', '431300');
INSERT INTO `areas` VALUES (1922, '433101', '吉首市', '433100');
INSERT INTO `areas` VALUES (1923, '433122', '泸溪县', '433100');
INSERT INTO `areas` VALUES (1924, '433123', '凤凰县', '433100');
INSERT INTO `areas` VALUES (1925, '433124', '花垣县', '433100');
INSERT INTO `areas` VALUES (1926, '433125', '保靖县', '433100');
INSERT INTO `areas` VALUES (1927, '433126', '古丈县', '433100');
INSERT INTO `areas` VALUES (1928, '433127', '永顺县', '433100');
INSERT INTO `areas` VALUES (1929, '433130', '龙山县', '433100');
INSERT INTO `areas` VALUES (1930, '440101', '市辖区', '440100');
INSERT INTO `areas` VALUES (1931, '440102', '东山区', '440100');
INSERT INTO `areas` VALUES (1932, '440103', '荔湾区', '440100');
INSERT INTO `areas` VALUES (1933, '440104', '越秀区', '440100');
INSERT INTO `areas` VALUES (1934, '440105', '海珠区', '440100');
INSERT INTO `areas` VALUES (1935, '440106', '天河区', '440100');
INSERT INTO `areas` VALUES (1936, '440107', '芳村区', '440100');
INSERT INTO `areas` VALUES (1937, '440111', '白云区', '440100');
INSERT INTO `areas` VALUES (1938, '440112', '黄埔区', '440100');
INSERT INTO `areas` VALUES (1939, '440113', '番禺区', '440100');
INSERT INTO `areas` VALUES (1940, '440114', '花都区', '440100');
INSERT INTO `areas` VALUES (1941, '440183', '增城市', '440100');
INSERT INTO `areas` VALUES (1942, '440184', '从化市', '440100');
INSERT INTO `areas` VALUES (1943, '440201', '市辖区', '440200');
INSERT INTO `areas` VALUES (1944, '440203', '武江区', '440200');
INSERT INTO `areas` VALUES (1945, '440204', '浈江区', '440200');
INSERT INTO `areas` VALUES (1946, '440205', '曲江区', '440200');
INSERT INTO `areas` VALUES (1947, '440222', '始兴县', '440200');
INSERT INTO `areas` VALUES (1948, '440224', '仁化县', '440200');
INSERT INTO `areas` VALUES (1949, '440229', '翁源县', '440200');
INSERT INTO `areas` VALUES (1950, '440232', '乳源瑶族自治县', '440200');
INSERT INTO `areas` VALUES (1951, '440233', '新丰县', '440200');
INSERT INTO `areas` VALUES (1952, '440281', '乐昌市', '440200');
INSERT INTO `areas` VALUES (1953, '440282', '南雄市', '440200');
INSERT INTO `areas` VALUES (1954, '440301', '市辖区', '440300');
INSERT INTO `areas` VALUES (1955, '440303', '罗湖区', '440300');
INSERT INTO `areas` VALUES (1956, '440304', '福田区', '440300');
INSERT INTO `areas` VALUES (1957, '440305', '南山区', '440300');
INSERT INTO `areas` VALUES (1958, '440306', '宝安区', '440300');
INSERT INTO `areas` VALUES (1959, '440307', '龙岗区', '440300');
INSERT INTO `areas` VALUES (1960, '440308', '盐田区', '440300');
INSERT INTO `areas` VALUES (1961, '440401', '市辖区', '440400');
INSERT INTO `areas` VALUES (1962, '440402', '香洲区', '440400');
INSERT INTO `areas` VALUES (1963, '440403', '斗门区', '440400');
INSERT INTO `areas` VALUES (1964, '440404', '金湾区', '440400');
INSERT INTO `areas` VALUES (1965, '440501', '市辖区', '440500');
INSERT INTO `areas` VALUES (1966, '440507', '龙湖区', '440500');
INSERT INTO `areas` VALUES (1967, '440511', '金平区', '440500');
INSERT INTO `areas` VALUES (1968, '440512', '濠江区', '440500');
INSERT INTO `areas` VALUES (1969, '440513', '潮阳区', '440500');
INSERT INTO `areas` VALUES (1970, '440514', '潮南区', '440500');
INSERT INTO `areas` VALUES (1971, '440515', '澄海区', '440500');
INSERT INTO `areas` VALUES (1972, '440523', '南澳县', '440500');
INSERT INTO `areas` VALUES (1973, '440601', '市辖区', '440600');
INSERT INTO `areas` VALUES (1974, '440604', '禅城区', '440600');
INSERT INTO `areas` VALUES (1975, '440605', '南海区', '440600');
INSERT INTO `areas` VALUES (1976, '440606', '顺德区', '440600');
INSERT INTO `areas` VALUES (1977, '440607', '三水区', '440600');
INSERT INTO `areas` VALUES (1978, '440608', '高明区', '440600');
INSERT INTO `areas` VALUES (1979, '440701', '市辖区', '440700');
INSERT INTO `areas` VALUES (1980, '440703', '蓬江区', '440700');
INSERT INTO `areas` VALUES (1981, '440704', '江海区', '440700');
INSERT INTO `areas` VALUES (1982, '440705', '新会区', '440700');
INSERT INTO `areas` VALUES (1983, '440781', '台山市', '440700');
INSERT INTO `areas` VALUES (1984, '440783', '开平市', '440700');
INSERT INTO `areas` VALUES (1985, '440784', '鹤山市', '440700');
INSERT INTO `areas` VALUES (1986, '440785', '恩平市', '440700');
INSERT INTO `areas` VALUES (1987, '440801', '市辖区', '440800');
INSERT INTO `areas` VALUES (1988, '440802', '赤坎区', '440800');
INSERT INTO `areas` VALUES (1989, '440803', '霞山区', '440800');
INSERT INTO `areas` VALUES (1990, '440804', '坡头区', '440800');
INSERT INTO `areas` VALUES (1991, '440811', '麻章区', '440800');
INSERT INTO `areas` VALUES (1992, '440823', '遂溪县', '440800');
INSERT INTO `areas` VALUES (1993, '440825', '徐闻县', '440800');
INSERT INTO `areas` VALUES (1994, '440881', '廉江市', '440800');
INSERT INTO `areas` VALUES (1995, '440882', '雷州市', '440800');
INSERT INTO `areas` VALUES (1996, '440883', '吴川市', '440800');
INSERT INTO `areas` VALUES (1997, '440901', '市辖区', '440900');
INSERT INTO `areas` VALUES (1998, '440902', '茂南区', '440900');
INSERT INTO `areas` VALUES (1999, '440903', '茂港区', '440900');
INSERT INTO `areas` VALUES (2000, '440923', '电白县', '440900');
INSERT INTO `areas` VALUES (2001, '440981', '高州市', '440900');
INSERT INTO `areas` VALUES (2002, '440982', '化州市', '440900');
INSERT INTO `areas` VALUES (2003, '440983', '信宜市', '440900');
INSERT INTO `areas` VALUES (2004, '441201', '市辖区', '441200');
INSERT INTO `areas` VALUES (2005, '441202', '端州区', '441200');
INSERT INTO `areas` VALUES (2006, '441203', '鼎湖区', '441200');
INSERT INTO `areas` VALUES (2007, '441223', '广宁县', '441200');
INSERT INTO `areas` VALUES (2008, '441224', '怀集县', '441200');
INSERT INTO `areas` VALUES (2009, '441225', '封开县', '441200');
INSERT INTO `areas` VALUES (2010, '441226', '德庆县', '441200');
INSERT INTO `areas` VALUES (2011, '441283', '高要市', '441200');
INSERT INTO `areas` VALUES (2012, '441284', '四会市', '441200');
INSERT INTO `areas` VALUES (2013, '441301', '市辖区', '441300');
INSERT INTO `areas` VALUES (2014, '441302', '惠城区', '441300');
INSERT INTO `areas` VALUES (2015, '441303', '惠阳区', '441300');
INSERT INTO `areas` VALUES (2016, '441322', '博罗县', '441300');
INSERT INTO `areas` VALUES (2017, '441323', '惠东县', '441300');
INSERT INTO `areas` VALUES (2018, '441324', '龙门县', '441300');
INSERT INTO `areas` VALUES (2019, '441401', '市辖区', '441400');
INSERT INTO `areas` VALUES (2020, '441402', '梅江区', '441400');
INSERT INTO `areas` VALUES (2021, '441421', '梅　县', '441400');
INSERT INTO `areas` VALUES (2022, '441422', '大埔县', '441400');
INSERT INTO `areas` VALUES (2023, '441423', '丰顺县', '441400');
INSERT INTO `areas` VALUES (2024, '441424', '五华县', '441400');
INSERT INTO `areas` VALUES (2025, '441426', '平远县', '441400');
INSERT INTO `areas` VALUES (2026, '441427', '蕉岭县', '441400');
INSERT INTO `areas` VALUES (2027, '441481', '兴宁市', '441400');
INSERT INTO `areas` VALUES (2028, '441501', '市辖区', '441500');
INSERT INTO `areas` VALUES (2029, '441502', '城　区', '441500');
INSERT INTO `areas` VALUES (2030, '441521', '海丰县', '441500');
INSERT INTO `areas` VALUES (2031, '441523', '陆河县', '441500');
INSERT INTO `areas` VALUES (2032, '441581', '陆丰市', '441500');
INSERT INTO `areas` VALUES (2033, '441601', '市辖区', '441600');
INSERT INTO `areas` VALUES (2034, '441602', '源城区', '441600');
INSERT INTO `areas` VALUES (2035, '441621', '紫金县', '441600');
INSERT INTO `areas` VALUES (2036, '441622', '龙川县', '441600');
INSERT INTO `areas` VALUES (2037, '441623', '连平县', '441600');
INSERT INTO `areas` VALUES (2038, '441624', '和平县', '441600');
INSERT INTO `areas` VALUES (2039, '441625', '东源县', '441600');
INSERT INTO `areas` VALUES (2040, '441701', '市辖区', '441700');
INSERT INTO `areas` VALUES (2041, '441702', '江城区', '441700');
INSERT INTO `areas` VALUES (2042, '441721', '阳西县', '441700');
INSERT INTO `areas` VALUES (2043, '441723', '阳东县', '441700');
INSERT INTO `areas` VALUES (2044, '441781', '阳春市', '441700');
INSERT INTO `areas` VALUES (2045, '441801', '市辖区', '441800');
INSERT INTO `areas` VALUES (2046, '441802', '清城区', '441800');
INSERT INTO `areas` VALUES (2047, '441821', '佛冈县', '441800');
INSERT INTO `areas` VALUES (2048, '441823', '阳山县', '441800');
INSERT INTO `areas` VALUES (2049, '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `areas` VALUES (2050, '441826', '连南瑶族自治县', '441800');
INSERT INTO `areas` VALUES (2051, '441827', '清新县', '441800');
INSERT INTO `areas` VALUES (2052, '441881', '英德市', '441800');
INSERT INTO `areas` VALUES (2053, '441882', '连州市', '441800');
INSERT INTO `areas` VALUES (2054, '445101', '市辖区', '445100');
INSERT INTO `areas` VALUES (2055, '445102', '湘桥区', '445100');
INSERT INTO `areas` VALUES (2056, '445121', '潮安县', '445100');
INSERT INTO `areas` VALUES (2057, '445122', '饶平县', '445100');
INSERT INTO `areas` VALUES (2058, '445201', '市辖区', '445200');
INSERT INTO `areas` VALUES (2059, '445202', '榕城区', '445200');
INSERT INTO `areas` VALUES (2060, '445221', '揭东县', '445200');
INSERT INTO `areas` VALUES (2061, '445222', '揭西县', '445200');
INSERT INTO `areas` VALUES (2062, '445224', '惠来县', '445200');
INSERT INTO `areas` VALUES (2063, '445281', '普宁市', '445200');
INSERT INTO `areas` VALUES (2064, '445301', '市辖区', '445300');
INSERT INTO `areas` VALUES (2065, '445302', '云城区', '445300');
INSERT INTO `areas` VALUES (2066, '445321', '新兴县', '445300');
INSERT INTO `areas` VALUES (2067, '445322', '郁南县', '445300');
INSERT INTO `areas` VALUES (2068, '445323', '云安县', '445300');
INSERT INTO `areas` VALUES (2069, '445381', '罗定市', '445300');
INSERT INTO `areas` VALUES (2070, '450101', '市辖区', '450100');
INSERT INTO `areas` VALUES (2071, '450102', '兴宁区', '450100');
INSERT INTO `areas` VALUES (2072, '450103', '青秀区', '450100');
INSERT INTO `areas` VALUES (2073, '450105', '江南区', '450100');
INSERT INTO `areas` VALUES (2074, '450107', '西乡塘区', '450100');
INSERT INTO `areas` VALUES (2075, '450108', '良庆区', '450100');
INSERT INTO `areas` VALUES (2076, '450109', '邕宁区', '450100');
INSERT INTO `areas` VALUES (2077, '450122', '武鸣县', '450100');
INSERT INTO `areas` VALUES (2078, '450123', '隆安县', '450100');
INSERT INTO `areas` VALUES (2079, '450124', '马山县', '450100');
INSERT INTO `areas` VALUES (2080, '450125', '上林县', '450100');
INSERT INTO `areas` VALUES (2081, '450126', '宾阳县', '450100');
INSERT INTO `areas` VALUES (2082, '450127', '横　县', '450100');
INSERT INTO `areas` VALUES (2083, '450201', '市辖区', '450200');
INSERT INTO `areas` VALUES (2084, '450202', '城中区', '450200');
INSERT INTO `areas` VALUES (2085, '450203', '鱼峰区', '450200');
INSERT INTO `areas` VALUES (2086, '450204', '柳南区', '450200');
INSERT INTO `areas` VALUES (2087, '450205', '柳北区', '450200');
INSERT INTO `areas` VALUES (2088, '450221', '柳江县', '450200');
INSERT INTO `areas` VALUES (2089, '450222', '柳城县', '450200');
INSERT INTO `areas` VALUES (2090, '450223', '鹿寨县', '450200');
INSERT INTO `areas` VALUES (2091, '450224', '融安县', '450200');
INSERT INTO `areas` VALUES (2092, '450225', '融水苗族自治县', '450200');
INSERT INTO `areas` VALUES (2093, '450226', '三江侗族自治县', '450200');
INSERT INTO `areas` VALUES (2094, '450301', '市辖区', '450300');
INSERT INTO `areas` VALUES (2095, '450302', '秀峰区', '450300');
INSERT INTO `areas` VALUES (2096, '450303', '叠彩区', '450300');
INSERT INTO `areas` VALUES (2097, '450304', '象山区', '450300');
INSERT INTO `areas` VALUES (2098, '450305', '七星区', '450300');
INSERT INTO `areas` VALUES (2099, '450311', '雁山区', '450300');
INSERT INTO `areas` VALUES (2100, '450321', '阳朔县', '450300');
INSERT INTO `areas` VALUES (2101, '450322', '临桂县', '450300');
INSERT INTO `areas` VALUES (2102, '450323', '灵川县', '450300');
INSERT INTO `areas` VALUES (2103, '450324', '全州县', '450300');
INSERT INTO `areas` VALUES (2104, '450325', '兴安县', '450300');
INSERT INTO `areas` VALUES (2105, '450326', '永福县', '450300');
INSERT INTO `areas` VALUES (2106, '450327', '灌阳县', '450300');
INSERT INTO `areas` VALUES (2107, '450328', '龙胜各族自治县', '450300');
INSERT INTO `areas` VALUES (2108, '450329', '资源县', '450300');
INSERT INTO `areas` VALUES (2109, '450330', '平乐县', '450300');
INSERT INTO `areas` VALUES (2110, '450331', '荔蒲县', '450300');
INSERT INTO `areas` VALUES (2111, '450332', '恭城瑶族自治县', '450300');
INSERT INTO `areas` VALUES (2112, '450401', '市辖区', '450400');
INSERT INTO `areas` VALUES (2113, '450403', '万秀区', '450400');
INSERT INTO `areas` VALUES (2114, '450404', '蝶山区', '450400');
INSERT INTO `areas` VALUES (2115, '450405', '长洲区', '450400');
INSERT INTO `areas` VALUES (2116, '450421', '苍梧县', '450400');
INSERT INTO `areas` VALUES (2117, '450422', '藤　县', '450400');
INSERT INTO `areas` VALUES (2118, '450423', '蒙山县', '450400');
INSERT INTO `areas` VALUES (2119, '450481', '岑溪市', '450400');
INSERT INTO `areas` VALUES (2120, '450501', '市辖区', '450500');
INSERT INTO `areas` VALUES (2121, '450502', '海城区', '450500');
INSERT INTO `areas` VALUES (2122, '450503', '银海区', '450500');
INSERT INTO `areas` VALUES (2123, '450512', '铁山港区', '450500');
INSERT INTO `areas` VALUES (2124, '450521', '合浦县', '450500');
INSERT INTO `areas` VALUES (2125, '450601', '市辖区', '450600');
INSERT INTO `areas` VALUES (2126, '450602', '港口区', '450600');
INSERT INTO `areas` VALUES (2127, '450603', '防城区', '450600');
INSERT INTO `areas` VALUES (2128, '450621', '上思县', '450600');
INSERT INTO `areas` VALUES (2129, '450681', '东兴市', '450600');
INSERT INTO `areas` VALUES (2130, '450701', '市辖区', '450700');
INSERT INTO `areas` VALUES (2131, '450702', '钦南区', '450700');
INSERT INTO `areas` VALUES (2132, '450703', '钦北区', '450700');
INSERT INTO `areas` VALUES (2133, '450721', '灵山县', '450700');
INSERT INTO `areas` VALUES (2134, '450722', '浦北县', '450700');
INSERT INTO `areas` VALUES (2135, '450801', '市辖区', '450800');
INSERT INTO `areas` VALUES (2136, '450802', '港北区', '450800');
INSERT INTO `areas` VALUES (2137, '450803', '港南区', '450800');
INSERT INTO `areas` VALUES (2138, '450804', '覃塘区', '450800');
INSERT INTO `areas` VALUES (2139, '450821', '平南县', '450800');
INSERT INTO `areas` VALUES (2140, '450881', '桂平市', '450800');
INSERT INTO `areas` VALUES (2141, '450901', '市辖区', '450900');
INSERT INTO `areas` VALUES (2142, '450902', '玉州区', '450900');
INSERT INTO `areas` VALUES (2143, '450921', '容　县', '450900');
INSERT INTO `areas` VALUES (2144, '450922', '陆川县', '450900');
INSERT INTO `areas` VALUES (2145, '450923', '博白县', '450900');
INSERT INTO `areas` VALUES (2146, '450924', '兴业县', '450900');
INSERT INTO `areas` VALUES (2147, '450981', '北流市', '450900');
INSERT INTO `areas` VALUES (2148, '451001', '市辖区', '451000');
INSERT INTO `areas` VALUES (2149, '451002', '右江区', '451000');
INSERT INTO `areas` VALUES (2150, '451021', '田阳县', '451000');
INSERT INTO `areas` VALUES (2151, '451022', '田东县', '451000');
INSERT INTO `areas` VALUES (2152, '451023', '平果县', '451000');
INSERT INTO `areas` VALUES (2153, '451024', '德保县', '451000');
INSERT INTO `areas` VALUES (2154, '451025', '靖西县', '451000');
INSERT INTO `areas` VALUES (2155, '451026', '那坡县', '451000');
INSERT INTO `areas` VALUES (2156, '451027', '凌云县', '451000');
INSERT INTO `areas` VALUES (2157, '451028', '乐业县', '451000');
INSERT INTO `areas` VALUES (2158, '451029', '田林县', '451000');
INSERT INTO `areas` VALUES (2159, '451030', '西林县', '451000');
INSERT INTO `areas` VALUES (2160, '451031', '隆林各族自治县', '451000');
INSERT INTO `areas` VALUES (2161, '451101', '市辖区', '451100');
INSERT INTO `areas` VALUES (2162, '451102', '八步区', '451100');
INSERT INTO `areas` VALUES (2163, '451121', '昭平县', '451100');
INSERT INTO `areas` VALUES (2164, '451122', '钟山县', '451100');
INSERT INTO `areas` VALUES (2165, '451123', '富川瑶族自治县', '451100');
INSERT INTO `areas` VALUES (2166, '451201', '市辖区', '451200');
INSERT INTO `areas` VALUES (2167, '451202', '金城江区', '451200');
INSERT INTO `areas` VALUES (2168, '451221', '南丹县', '451200');
INSERT INTO `areas` VALUES (2169, '451222', '天峨县', '451200');
INSERT INTO `areas` VALUES (2170, '451223', '凤山县', '451200');
INSERT INTO `areas` VALUES (2171, '451224', '东兰县', '451200');
INSERT INTO `areas` VALUES (2172, '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `areas` VALUES (2173, '451226', '环江毛南族自治县', '451200');
INSERT INTO `areas` VALUES (2174, '451227', '巴马瑶族自治县', '451200');
INSERT INTO `areas` VALUES (2175, '451228', '都安瑶族自治县', '451200');
INSERT INTO `areas` VALUES (2176, '451229', '大化瑶族自治县', '451200');
INSERT INTO `areas` VALUES (2177, '451281', '宜州市', '451200');
INSERT INTO `areas` VALUES (2178, '451301', '市辖区', '451300');
INSERT INTO `areas` VALUES (2179, '451302', '兴宾区', '451300');
INSERT INTO `areas` VALUES (2180, '451321', '忻城县', '451300');
INSERT INTO `areas` VALUES (2181, '451322', '象州县', '451300');
INSERT INTO `areas` VALUES (2182, '451323', '武宣县', '451300');
INSERT INTO `areas` VALUES (2183, '451324', '金秀瑶族自治县', '451300');
INSERT INTO `areas` VALUES (2184, '451381', '合山市', '451300');
INSERT INTO `areas` VALUES (2185, '451401', '市辖区', '451400');
INSERT INTO `areas` VALUES (2186, '451402', '江洲区', '451400');
INSERT INTO `areas` VALUES (2187, '451421', '扶绥县', '451400');
INSERT INTO `areas` VALUES (2188, '451422', '宁明县', '451400');
INSERT INTO `areas` VALUES (2189, '451423', '龙州县', '451400');
INSERT INTO `areas` VALUES (2190, '451424', '大新县', '451400');
INSERT INTO `areas` VALUES (2191, '451425', '天等县', '451400');
INSERT INTO `areas` VALUES (2192, '451481', '凭祥市', '451400');
INSERT INTO `areas` VALUES (2193, '460101', '市辖区', '460100');
INSERT INTO `areas` VALUES (2194, '460105', '秀英区', '460100');
INSERT INTO `areas` VALUES (2195, '460106', '龙华区', '460100');
INSERT INTO `areas` VALUES (2196, '460107', '琼山区', '460100');
INSERT INTO `areas` VALUES (2197, '460108', '美兰区', '460100');
INSERT INTO `areas` VALUES (2198, '460201', '市辖区', '460200');
INSERT INTO `areas` VALUES (2199, '469001', '五指山市', '469000');
INSERT INTO `areas` VALUES (2200, '469002', '琼海市', '469000');
INSERT INTO `areas` VALUES (2201, '469003', '儋州市', '469000');
INSERT INTO `areas` VALUES (2202, '469005', '文昌市', '469000');
INSERT INTO `areas` VALUES (2203, '469006', '万宁市', '469000');
INSERT INTO `areas` VALUES (2204, '469007', '东方市', '469000');
INSERT INTO `areas` VALUES (2205, '469025', '定安县', '469000');
INSERT INTO `areas` VALUES (2206, '469026', '屯昌县', '469000');
INSERT INTO `areas` VALUES (2207, '469027', '澄迈县', '469000');
INSERT INTO `areas` VALUES (2208, '469028', '临高县', '469000');
INSERT INTO `areas` VALUES (2209, '469030', '白沙黎族自治县', '469000');
INSERT INTO `areas` VALUES (2210, '469031', '昌江黎族自治县', '469000');
INSERT INTO `areas` VALUES (2211, '469033', '乐东黎族自治县', '469000');
INSERT INTO `areas` VALUES (2212, '469034', '陵水黎族自治县', '469000');
INSERT INTO `areas` VALUES (2213, '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `areas` VALUES (2214, '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `areas` VALUES (2215, '469037', '西沙群岛', '469000');
INSERT INTO `areas` VALUES (2216, '469038', '南沙群岛', '469000');
INSERT INTO `areas` VALUES (2217, '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `areas` VALUES (2218, '500101', '万州区', '500100');
INSERT INTO `areas` VALUES (2219, '500102', '涪陵区', '500100');
INSERT INTO `areas` VALUES (2220, '500103', '渝中区', '500100');
INSERT INTO `areas` VALUES (2221, '500104', '大渡口区', '500100');
INSERT INTO `areas` VALUES (2222, '500105', '江北区', '500100');
INSERT INTO `areas` VALUES (2223, '500106', '沙坪坝区', '500100');
INSERT INTO `areas` VALUES (2224, '500107', '九龙坡区', '500100');
INSERT INTO `areas` VALUES (2225, '500108', '南岸区', '500100');
INSERT INTO `areas` VALUES (2226, '500109', '北碚区', '500100');
INSERT INTO `areas` VALUES (2227, '500110', '万盛区', '500100');
INSERT INTO `areas` VALUES (2228, '500111', '双桥区', '500100');
INSERT INTO `areas` VALUES (2229, '500112', '渝北区', '500100');
INSERT INTO `areas` VALUES (2230, '500113', '巴南区', '500100');
INSERT INTO `areas` VALUES (2231, '500114', '黔江区', '500100');
INSERT INTO `areas` VALUES (2232, '500115', '长寿区', '500100');
INSERT INTO `areas` VALUES (2233, '500222', '綦江县', '500100');
INSERT INTO `areas` VALUES (2234, '500223', '潼南县', '500100');
INSERT INTO `areas` VALUES (2235, '500224', '铜梁县', '500100');
INSERT INTO `areas` VALUES (2236, '500225', '大足县', '500100');
INSERT INTO `areas` VALUES (2237, '500226', '荣昌县', '500100');
INSERT INTO `areas` VALUES (2238, '500227', '璧山县', '500100');
INSERT INTO `areas` VALUES (2239, '500228', '梁平县', '500100');
INSERT INTO `areas` VALUES (2240, '500229', '城口县', '500100');
INSERT INTO `areas` VALUES (2241, '500230', '丰都县', '500100');
INSERT INTO `areas` VALUES (2242, '500231', '垫江县', '500100');
INSERT INTO `areas` VALUES (2243, '500232', '武隆县', '500100');
INSERT INTO `areas` VALUES (2244, '500233', '忠　县', '500100');
INSERT INTO `areas` VALUES (2245, '500234', '开　县', '500100');
INSERT INTO `areas` VALUES (2246, '500235', '云阳县', '500100');
INSERT INTO `areas` VALUES (2247, '500236', '奉节县', '500100');
INSERT INTO `areas` VALUES (2248, '500237', '巫山县', '500100');
INSERT INTO `areas` VALUES (2249, '500238', '巫溪县', '500100');
INSERT INTO `areas` VALUES (2250, '500240', '石柱土家族自治县', '500100');
INSERT INTO `areas` VALUES (2251, '500241', '秀山土家族苗族自治县', '500100');
INSERT INTO `areas` VALUES (2252, '500242', '酉阳土家族苗族自治县', '500100');
INSERT INTO `areas` VALUES (2253, '500243', '彭水苗族土家族自治县', '500100');
INSERT INTO `areas` VALUES (2254, '500381', '江津市', '500100');
INSERT INTO `areas` VALUES (2255, '500382', '合川市', '500100');
INSERT INTO `areas` VALUES (2256, '500383', '永川市', '500100');
INSERT INTO `areas` VALUES (2257, '500384', '南川市', '500100');
INSERT INTO `areas` VALUES (2258, '510101', '市辖区', '510100');
INSERT INTO `areas` VALUES (2259, '510104', '锦江区', '510100');
INSERT INTO `areas` VALUES (2260, '510105', '青羊区', '510100');
INSERT INTO `areas` VALUES (2261, '510106', '金牛区', '510100');
INSERT INTO `areas` VALUES (2262, '510107', '武侯区', '510100');
INSERT INTO `areas` VALUES (2263, '510108', '成华区', '510100');
INSERT INTO `areas` VALUES (2264, '510112', '龙泉驿区', '510100');
INSERT INTO `areas` VALUES (2265, '510113', '青白江区', '510100');
INSERT INTO `areas` VALUES (2266, '510114', '新都区', '510100');
INSERT INTO `areas` VALUES (2267, '510115', '温江区', '510100');
INSERT INTO `areas` VALUES (2268, '510121', '金堂县', '510100');
INSERT INTO `areas` VALUES (2269, '510122', '双流县', '510100');
INSERT INTO `areas` VALUES (2270, '510124', '郫　县', '510100');
INSERT INTO `areas` VALUES (2271, '510129', '大邑县', '510100');
INSERT INTO `areas` VALUES (2272, '510131', '蒲江县', '510100');
INSERT INTO `areas` VALUES (2273, '510132', '新津县', '510100');
INSERT INTO `areas` VALUES (2274, '510181', '都江堰市', '510100');
INSERT INTO `areas` VALUES (2275, '510182', '彭州市', '510100');
INSERT INTO `areas` VALUES (2276, '510183', '邛崃市', '510100');
INSERT INTO `areas` VALUES (2277, '510184', '崇州市', '510100');
INSERT INTO `areas` VALUES (2278, '510301', '市辖区', '510300');
INSERT INTO `areas` VALUES (2279, '510302', '自流井区', '510300');
INSERT INTO `areas` VALUES (2280, '510303', '贡井区', '510300');
INSERT INTO `areas` VALUES (2281, '510304', '大安区', '510300');
INSERT INTO `areas` VALUES (2282, '510311', '沿滩区', '510300');
INSERT INTO `areas` VALUES (2283, '510321', '荣　县', '510300');
INSERT INTO `areas` VALUES (2284, '510322', '富顺县', '510300');
INSERT INTO `areas` VALUES (2285, '510401', '市辖区', '510400');
INSERT INTO `areas` VALUES (2286, '510402', '东　区', '510400');
INSERT INTO `areas` VALUES (2287, '510403', '西　区', '510400');
INSERT INTO `areas` VALUES (2288, '510411', '仁和区', '510400');
INSERT INTO `areas` VALUES (2289, '510421', '米易县', '510400');
INSERT INTO `areas` VALUES (2290, '510422', '盐边县', '510400');
INSERT INTO `areas` VALUES (2291, '510501', '市辖区', '510500');
INSERT INTO `areas` VALUES (2292, '510502', '江阳区', '510500');
INSERT INTO `areas` VALUES (2293, '510503', '纳溪区', '510500');
INSERT INTO `areas` VALUES (2294, '510504', '龙马潭区', '510500');
INSERT INTO `areas` VALUES (2295, '510521', '泸　县', '510500');
INSERT INTO `areas` VALUES (2296, '510522', '合江县', '510500');
INSERT INTO `areas` VALUES (2297, '510524', '叙永县', '510500');
INSERT INTO `areas` VALUES (2298, '510525', '古蔺县', '510500');
INSERT INTO `areas` VALUES (2299, '510601', '市辖区', '510600');
INSERT INTO `areas` VALUES (2300, '510603', '旌阳区', '510600');
INSERT INTO `areas` VALUES (2301, '510623', '中江县', '510600');
INSERT INTO `areas` VALUES (2302, '510626', '罗江县', '510600');
INSERT INTO `areas` VALUES (2303, '510681', '广汉市', '510600');
INSERT INTO `areas` VALUES (2304, '510682', '什邡市', '510600');
INSERT INTO `areas` VALUES (2305, '510683', '绵竹市', '510600');
INSERT INTO `areas` VALUES (2306, '510701', '市辖区', '510700');
INSERT INTO `areas` VALUES (2307, '510703', '涪城区', '510700');
INSERT INTO `areas` VALUES (2308, '510704', '游仙区', '510700');
INSERT INTO `areas` VALUES (2309, '510722', '三台县', '510700');
INSERT INTO `areas` VALUES (2310, '510723', '盐亭县', '510700');
INSERT INTO `areas` VALUES (2311, '510724', '安　县', '510700');
INSERT INTO `areas` VALUES (2312, '510725', '梓潼县', '510700');
INSERT INTO `areas` VALUES (2313, '510726', '北川羌族自治县', '510700');
INSERT INTO `areas` VALUES (2314, '510727', '平武县', '510700');
INSERT INTO `areas` VALUES (2315, '510781', '江油市', '510700');
INSERT INTO `areas` VALUES (2316, '510801', '市辖区', '510800');
INSERT INTO `areas` VALUES (2317, '510802', '市中区', '510800');
INSERT INTO `areas` VALUES (2318, '510811', '元坝区', '510800');
INSERT INTO `areas` VALUES (2319, '510812', '朝天区', '510800');
INSERT INTO `areas` VALUES (2320, '510821', '旺苍县', '510800');
INSERT INTO `areas` VALUES (2321, '510822', '青川县', '510800');
INSERT INTO `areas` VALUES (2322, '510823', '剑阁县', '510800');
INSERT INTO `areas` VALUES (2323, '510824', '苍溪县', '510800');
INSERT INTO `areas` VALUES (2324, '510901', '市辖区', '510900');
INSERT INTO `areas` VALUES (2325, '510903', '船山区', '510900');
INSERT INTO `areas` VALUES (2326, '510904', '安居区', '510900');
INSERT INTO `areas` VALUES (2327, '510921', '蓬溪县', '510900');
INSERT INTO `areas` VALUES (2328, '510922', '射洪县', '510900');
INSERT INTO `areas` VALUES (2329, '510923', '大英县', '510900');
INSERT INTO `areas` VALUES (2330, '511001', '市辖区', '511000');
INSERT INTO `areas` VALUES (2331, '511002', '市中区', '511000');
INSERT INTO `areas` VALUES (2332, '511011', '东兴区', '511000');
INSERT INTO `areas` VALUES (2333, '511024', '威远县', '511000');
INSERT INTO `areas` VALUES (2334, '511025', '资中县', '511000');
INSERT INTO `areas` VALUES (2335, '511028', '隆昌县', '511000');
INSERT INTO `areas` VALUES (2336, '511101', '市辖区', '511100');
INSERT INTO `areas` VALUES (2337, '511102', '市中区', '511100');
INSERT INTO `areas` VALUES (2338, '511111', '沙湾区', '511100');
INSERT INTO `areas` VALUES (2339, '511112', '五通桥区', '511100');
INSERT INTO `areas` VALUES (2340, '511113', '金口河区', '511100');
INSERT INTO `areas` VALUES (2341, '511123', '犍为县', '511100');
INSERT INTO `areas` VALUES (2342, '511124', '井研县', '511100');
INSERT INTO `areas` VALUES (2343, '511126', '夹江县', '511100');
INSERT INTO `areas` VALUES (2344, '511129', '沐川县', '511100');
INSERT INTO `areas` VALUES (2345, '511132', '峨边彝族自治县', '511100');
INSERT INTO `areas` VALUES (2346, '511133', '马边彝族自治县', '511100');
INSERT INTO `areas` VALUES (2347, '511181', '峨眉山市', '511100');
INSERT INTO `areas` VALUES (2348, '511301', '市辖区', '511300');
INSERT INTO `areas` VALUES (2349, '511302', '顺庆区', '511300');
INSERT INTO `areas` VALUES (2350, '511303', '高坪区', '511300');
INSERT INTO `areas` VALUES (2351, '511304', '嘉陵区', '511300');
INSERT INTO `areas` VALUES (2352, '511321', '南部县', '511300');
INSERT INTO `areas` VALUES (2353, '511322', '营山县', '511300');
INSERT INTO `areas` VALUES (2354, '511323', '蓬安县', '511300');
INSERT INTO `areas` VALUES (2355, '511324', '仪陇县', '511300');
INSERT INTO `areas` VALUES (2356, '511325', '西充县', '511300');
INSERT INTO `areas` VALUES (2357, '511381', '阆中市', '511300');
INSERT INTO `areas` VALUES (2358, '511401', '市辖区', '511400');
INSERT INTO `areas` VALUES (2359, '511402', '东坡区', '511400');
INSERT INTO `areas` VALUES (2360, '511421', '仁寿县', '511400');
INSERT INTO `areas` VALUES (2361, '511422', '彭山县', '511400');
INSERT INTO `areas` VALUES (2362, '511423', '洪雅县', '511400');
INSERT INTO `areas` VALUES (2363, '511424', '丹棱县', '511400');
INSERT INTO `areas` VALUES (2364, '511425', '青神县', '511400');
INSERT INTO `areas` VALUES (2365, '511501', '市辖区', '511500');
INSERT INTO `areas` VALUES (2366, '511502', '翠屏区', '511500');
INSERT INTO `areas` VALUES (2367, '511521', '宜宾县', '511500');
INSERT INTO `areas` VALUES (2368, '511522', '南溪县', '511500');
INSERT INTO `areas` VALUES (2369, '511523', '江安县', '511500');
INSERT INTO `areas` VALUES (2370, '511524', '长宁县', '511500');
INSERT INTO `areas` VALUES (2371, '511525', '高　县', '511500');
INSERT INTO `areas` VALUES (2372, '511526', '珙　县', '511500');
INSERT INTO `areas` VALUES (2373, '511527', '筠连县', '511500');
INSERT INTO `areas` VALUES (2374, '511528', '兴文县', '511500');
INSERT INTO `areas` VALUES (2375, '511529', '屏山县', '511500');
INSERT INTO `areas` VALUES (2376, '511601', '市辖区', '511600');
INSERT INTO `areas` VALUES (2377, '511602', '广安区', '511600');
INSERT INTO `areas` VALUES (2378, '511621', '岳池县', '511600');
INSERT INTO `areas` VALUES (2379, '511622', '武胜县', '511600');
INSERT INTO `areas` VALUES (2380, '511623', '邻水县', '511600');
INSERT INTO `areas` VALUES (2381, '511681', '华莹市', '511600');
INSERT INTO `areas` VALUES (2382, '511701', '市辖区', '511700');
INSERT INTO `areas` VALUES (2383, '511702', '通川区', '511700');
INSERT INTO `areas` VALUES (2384, '511721', '达　县', '511700');
INSERT INTO `areas` VALUES (2385, '511722', '宣汉县', '511700');
INSERT INTO `areas` VALUES (2386, '511723', '开江县', '511700');
INSERT INTO `areas` VALUES (2387, '511724', '大竹县', '511700');
INSERT INTO `areas` VALUES (2388, '511725', '渠　县', '511700');
INSERT INTO `areas` VALUES (2389, '511781', '万源市', '511700');
INSERT INTO `areas` VALUES (2390, '511801', '市辖区', '511800');
INSERT INTO `areas` VALUES (2391, '511802', '雨城区', '511800');
INSERT INTO `areas` VALUES (2392, '511821', '名山县', '511800');
INSERT INTO `areas` VALUES (2393, '511822', '荥经县', '511800');
INSERT INTO `areas` VALUES (2394, '511823', '汉源县', '511800');
INSERT INTO `areas` VALUES (2395, '511824', '石棉县', '511800');
INSERT INTO `areas` VALUES (2396, '511825', '天全县', '511800');
INSERT INTO `areas` VALUES (2397, '511826', '芦山县', '511800');
INSERT INTO `areas` VALUES (2398, '511827', '宝兴县', '511800');
INSERT INTO `areas` VALUES (2399, '511901', '市辖区', '511900');
INSERT INTO `areas` VALUES (2400, '511902', '巴州区', '511900');
INSERT INTO `areas` VALUES (2401, '511921', '通江县', '511900');
INSERT INTO `areas` VALUES (2402, '511922', '南江县', '511900');
INSERT INTO `areas` VALUES (2403, '511923', '平昌县', '511900');
INSERT INTO `areas` VALUES (2404, '512001', '市辖区', '512000');
INSERT INTO `areas` VALUES (2405, '512002', '雁江区', '512000');
INSERT INTO `areas` VALUES (2406, '512021', '安岳县', '512000');
INSERT INTO `areas` VALUES (2407, '512022', '乐至县', '512000');
INSERT INTO `areas` VALUES (2408, '512081', '简阳市', '512000');
INSERT INTO `areas` VALUES (2409, '513221', '汶川县', '513200');
INSERT INTO `areas` VALUES (2410, '513222', '理　县', '513200');
INSERT INTO `areas` VALUES (2411, '513223', '茂　县', '513200');
INSERT INTO `areas` VALUES (2412, '513224', '松潘县', '513200');
INSERT INTO `areas` VALUES (2413, '513225', '九寨沟县', '513200');
INSERT INTO `areas` VALUES (2414, '513226', '金川县', '513200');
INSERT INTO `areas` VALUES (2415, '513227', '小金县', '513200');
INSERT INTO `areas` VALUES (2416, '513228', '黑水县', '513200');
INSERT INTO `areas` VALUES (2417, '513229', '马尔康县', '513200');
INSERT INTO `areas` VALUES (2418, '513230', '壤塘县', '513200');
INSERT INTO `areas` VALUES (2419, '513231', '阿坝县', '513200');
INSERT INTO `areas` VALUES (2420, '513232', '若尔盖县', '513200');
INSERT INTO `areas` VALUES (2421, '513233', '红原县', '513200');
INSERT INTO `areas` VALUES (2422, '513321', '康定县', '513300');
INSERT INTO `areas` VALUES (2423, '513322', '泸定县', '513300');
INSERT INTO `areas` VALUES (2424, '513323', '丹巴县', '513300');
INSERT INTO `areas` VALUES (2425, '513324', '九龙县', '513300');
INSERT INTO `areas` VALUES (2426, '513325', '雅江县', '513300');
INSERT INTO `areas` VALUES (2427, '513326', '道孚县', '513300');
INSERT INTO `areas` VALUES (2428, '513327', '炉霍县', '513300');
INSERT INTO `areas` VALUES (2429, '513328', '甘孜县', '513300');
INSERT INTO `areas` VALUES (2430, '513329', '新龙县', '513300');
INSERT INTO `areas` VALUES (2431, '513330', '德格县', '513300');
INSERT INTO `areas` VALUES (2432, '513331', '白玉县', '513300');
INSERT INTO `areas` VALUES (2433, '513332', '石渠县', '513300');
INSERT INTO `areas` VALUES (2434, '513333', '色达县', '513300');
INSERT INTO `areas` VALUES (2435, '513334', '理塘县', '513300');
INSERT INTO `areas` VALUES (2436, '513335', '巴塘县', '513300');
INSERT INTO `areas` VALUES (2437, '513336', '乡城县', '513300');
INSERT INTO `areas` VALUES (2438, '513337', '稻城县', '513300');
INSERT INTO `areas` VALUES (2439, '513338', '得荣县', '513300');
INSERT INTO `areas` VALUES (2440, '513401', '西昌市', '513400');
INSERT INTO `areas` VALUES (2441, '513422', '木里藏族自治县', '513400');
INSERT INTO `areas` VALUES (2442, '513423', '盐源县', '513400');
INSERT INTO `areas` VALUES (2443, '513424', '德昌县', '513400');
INSERT INTO `areas` VALUES (2444, '513425', '会理县', '513400');
INSERT INTO `areas` VALUES (2445, '513426', '会东县', '513400');
INSERT INTO `areas` VALUES (2446, '513427', '宁南县', '513400');
INSERT INTO `areas` VALUES (2447, '513428', '普格县', '513400');
INSERT INTO `areas` VALUES (2448, '513429', '布拖县', '513400');
INSERT INTO `areas` VALUES (2449, '513430', '金阳县', '513400');
INSERT INTO `areas` VALUES (2450, '513431', '昭觉县', '513400');
INSERT INTO `areas` VALUES (2451, '513432', '喜德县', '513400');
INSERT INTO `areas` VALUES (2452, '513433', '冕宁县', '513400');
INSERT INTO `areas` VALUES (2453, '513434', '越西县', '513400');
INSERT INTO `areas` VALUES (2454, '513435', '甘洛县', '513400');
INSERT INTO `areas` VALUES (2455, '513436', '美姑县', '513400');
INSERT INTO `areas` VALUES (2456, '513437', '雷波县', '513400');
INSERT INTO `areas` VALUES (2457, '520101', '市辖区', '520100');
INSERT INTO `areas` VALUES (2458, '520102', '南明区', '520100');
INSERT INTO `areas` VALUES (2459, '520103', '云岩区', '520100');
INSERT INTO `areas` VALUES (2460, '520111', '花溪区', '520100');
INSERT INTO `areas` VALUES (2461, '520112', '乌当区', '520100');
INSERT INTO `areas` VALUES (2462, '520113', '白云区', '520100');
INSERT INTO `areas` VALUES (2463, '520114', '小河区', '520100');
INSERT INTO `areas` VALUES (2464, '520121', '开阳县', '520100');
INSERT INTO `areas` VALUES (2465, '520122', '息烽县', '520100');
INSERT INTO `areas` VALUES (2466, '520123', '修文县', '520100');
INSERT INTO `areas` VALUES (2467, '520181', '清镇市', '520100');
INSERT INTO `areas` VALUES (2468, '520201', '钟山区', '520200');
INSERT INTO `areas` VALUES (2469, '520203', '六枝特区', '520200');
INSERT INTO `areas` VALUES (2470, '520221', '水城县', '520200');
INSERT INTO `areas` VALUES (2471, '520222', '盘　县', '520200');
INSERT INTO `areas` VALUES (2472, '520301', '市辖区', '520300');
INSERT INTO `areas` VALUES (2473, '520302', '红花岗区', '520300');
INSERT INTO `areas` VALUES (2474, '520303', '汇川区', '520300');
INSERT INTO `areas` VALUES (2475, '520321', '遵义县', '520300');
INSERT INTO `areas` VALUES (2476, '520322', '桐梓县', '520300');
INSERT INTO `areas` VALUES (2477, '520323', '绥阳县', '520300');
INSERT INTO `areas` VALUES (2478, '520324', '正安县', '520300');
INSERT INTO `areas` VALUES (2479, '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `areas` VALUES (2480, '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `areas` VALUES (2481, '520327', '凤冈县', '520300');
INSERT INTO `areas` VALUES (2482, '520328', '湄潭县', '520300');
INSERT INTO `areas` VALUES (2483, '520329', '余庆县', '520300');
INSERT INTO `areas` VALUES (2484, '520330', '习水县', '520300');
INSERT INTO `areas` VALUES (2485, '520381', '赤水市', '520300');
INSERT INTO `areas` VALUES (2486, '520382', '仁怀市', '520300');
INSERT INTO `areas` VALUES (2487, '520401', '市辖区', '520400');
INSERT INTO `areas` VALUES (2488, '520402', '西秀区', '520400');
INSERT INTO `areas` VALUES (2489, '520421', '平坝县', '520400');
INSERT INTO `areas` VALUES (2490, '520422', '普定县', '520400');
INSERT INTO `areas` VALUES (2491, '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `areas` VALUES (2492, '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `areas` VALUES (2493, '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `areas` VALUES (2494, '522201', '铜仁市', '522200');
INSERT INTO `areas` VALUES (2495, '522222', '江口县', '522200');
INSERT INTO `areas` VALUES (2496, '522223', '玉屏侗族自治县', '522200');
INSERT INTO `areas` VALUES (2497, '522224', '石阡县', '522200');
INSERT INTO `areas` VALUES (2498, '522225', '思南县', '522200');
INSERT INTO `areas` VALUES (2499, '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `areas` VALUES (2500, '522227', '德江县', '522200');
INSERT INTO `areas` VALUES (2501, '522228', '沿河土家族自治县', '522200');
INSERT INTO `areas` VALUES (2502, '522229', '松桃苗族自治县', '522200');
INSERT INTO `areas` VALUES (2503, '522230', '万山特区', '522200');
INSERT INTO `areas` VALUES (2504, '522301', '兴义市', '522300');
INSERT INTO `areas` VALUES (2505, '522322', '兴仁县', '522300');
INSERT INTO `areas` VALUES (2506, '522323', '普安县', '522300');
INSERT INTO `areas` VALUES (2507, '522324', '晴隆县', '522300');
INSERT INTO `areas` VALUES (2508, '522325', '贞丰县', '522300');
INSERT INTO `areas` VALUES (2509, '522326', '望谟县', '522300');
INSERT INTO `areas` VALUES (2510, '522327', '册亨县', '522300');
INSERT INTO `areas` VALUES (2511, '522328', '安龙县', '522300');
INSERT INTO `areas` VALUES (2512, '522401', '毕节市', '522400');
INSERT INTO `areas` VALUES (2513, '522422', '大方县', '522400');
INSERT INTO `areas` VALUES (2514, '522423', '黔西县', '522400');
INSERT INTO `areas` VALUES (2515, '522424', '金沙县', '522400');
INSERT INTO `areas` VALUES (2516, '522425', '织金县', '522400');
INSERT INTO `areas` VALUES (2517, '522426', '纳雍县', '522400');
INSERT INTO `areas` VALUES (2518, '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `areas` VALUES (2519, '522428', '赫章县', '522400');
INSERT INTO `areas` VALUES (2520, '522601', '凯里市', '522600');
INSERT INTO `areas` VALUES (2521, '522622', '黄平县', '522600');
INSERT INTO `areas` VALUES (2522, '522623', '施秉县', '522600');
INSERT INTO `areas` VALUES (2523, '522624', '三穗县', '522600');
INSERT INTO `areas` VALUES (2524, '522625', '镇远县', '522600');
INSERT INTO `areas` VALUES (2525, '522626', '岑巩县', '522600');
INSERT INTO `areas` VALUES (2526, '522627', '天柱县', '522600');
INSERT INTO `areas` VALUES (2527, '522628', '锦屏县', '522600');
INSERT INTO `areas` VALUES (2528, '522629', '剑河县', '522600');
INSERT INTO `areas` VALUES (2529, '522630', '台江县', '522600');
INSERT INTO `areas` VALUES (2530, '522631', '黎平县', '522600');
INSERT INTO `areas` VALUES (2531, '522632', '榕江县', '522600');
INSERT INTO `areas` VALUES (2532, '522633', '从江县', '522600');
INSERT INTO `areas` VALUES (2533, '522634', '雷山县', '522600');
INSERT INTO `areas` VALUES (2534, '522635', '麻江县', '522600');
INSERT INTO `areas` VALUES (2535, '522636', '丹寨县', '522600');
INSERT INTO `areas` VALUES (2536, '522701', '都匀市', '522700');
INSERT INTO `areas` VALUES (2537, '522702', '福泉市', '522700');
INSERT INTO `areas` VALUES (2538, '522722', '荔波县', '522700');
INSERT INTO `areas` VALUES (2539, '522723', '贵定县', '522700');
INSERT INTO `areas` VALUES (2540, '522725', '瓮安县', '522700');
INSERT INTO `areas` VALUES (2541, '522726', '独山县', '522700');
INSERT INTO `areas` VALUES (2542, '522727', '平塘县', '522700');
INSERT INTO `areas` VALUES (2543, '522728', '罗甸县', '522700');
INSERT INTO `areas` VALUES (2544, '522729', '长顺县', '522700');
INSERT INTO `areas` VALUES (2545, '522730', '龙里县', '522700');
INSERT INTO `areas` VALUES (2546, '522731', '惠水县', '522700');
INSERT INTO `areas` VALUES (2547, '522732', '三都水族自治县', '522700');
INSERT INTO `areas` VALUES (2548, '530101', '市辖区', '530100');
INSERT INTO `areas` VALUES (2549, '530102', '五华区', '530100');
INSERT INTO `areas` VALUES (2550, '530103', '盘龙区', '530100');
INSERT INTO `areas` VALUES (2551, '530111', '官渡区', '530100');
INSERT INTO `areas` VALUES (2552, '530112', '西山区', '530100');
INSERT INTO `areas` VALUES (2553, '530113', '东川区', '530100');
INSERT INTO `areas` VALUES (2554, '530121', '呈贡县', '530100');
INSERT INTO `areas` VALUES (2555, '530122', '晋宁县', '530100');
INSERT INTO `areas` VALUES (2556, '530124', '富民县', '530100');
INSERT INTO `areas` VALUES (2557, '530125', '宜良县', '530100');
INSERT INTO `areas` VALUES (2558, '530126', '石林彝族自治县', '530100');
INSERT INTO `areas` VALUES (2559, '530127', '嵩明县', '530100');
INSERT INTO `areas` VALUES (2560, '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `areas` VALUES (2561, '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `areas` VALUES (2562, '530181', '安宁市', '530100');
INSERT INTO `areas` VALUES (2563, '530301', '市辖区', '530300');
INSERT INTO `areas` VALUES (2564, '530302', '麒麟区', '530300');
INSERT INTO `areas` VALUES (2565, '530321', '马龙县', '530300');
INSERT INTO `areas` VALUES (2566, '530322', '陆良县', '530300');
INSERT INTO `areas` VALUES (2567, '530323', '师宗县', '530300');
INSERT INTO `areas` VALUES (2568, '530324', '罗平县', '530300');
INSERT INTO `areas` VALUES (2569, '530325', '富源县', '530300');
INSERT INTO `areas` VALUES (2570, '530326', '会泽县', '530300');
INSERT INTO `areas` VALUES (2571, '530328', '沾益县', '530300');
INSERT INTO `areas` VALUES (2572, '530381', '宣威市', '530300');
INSERT INTO `areas` VALUES (2573, '530401', '市辖区', '530400');
INSERT INTO `areas` VALUES (2574, '530402', '红塔区', '530400');
INSERT INTO `areas` VALUES (2575, '530421', '江川县', '530400');
INSERT INTO `areas` VALUES (2576, '530422', '澄江县', '530400');
INSERT INTO `areas` VALUES (2577, '530423', '通海县', '530400');
INSERT INTO `areas` VALUES (2578, '530424', '华宁县', '530400');
INSERT INTO `areas` VALUES (2579, '530425', '易门县', '530400');
INSERT INTO `areas` VALUES (2580, '530426', '峨山彝族自治县', '530400');
INSERT INTO `areas` VALUES (2581, '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `areas` VALUES (2582, '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `areas` VALUES (2583, '530501', '市辖区', '530500');
INSERT INTO `areas` VALUES (2584, '530502', '隆阳区', '530500');
INSERT INTO `areas` VALUES (2585, '530521', '施甸县', '530500');
INSERT INTO `areas` VALUES (2586, '530522', '腾冲县', '530500');
INSERT INTO `areas` VALUES (2587, '530523', '龙陵县', '530500');
INSERT INTO `areas` VALUES (2588, '530524', '昌宁县', '530500');
INSERT INTO `areas` VALUES (2589, '530601', '市辖区', '530600');
INSERT INTO `areas` VALUES (2590, '530602', '昭阳区', '530600');
INSERT INTO `areas` VALUES (2591, '530621', '鲁甸县', '530600');
INSERT INTO `areas` VALUES (2592, '530622', '巧家县', '530600');
INSERT INTO `areas` VALUES (2593, '530623', '盐津县', '530600');
INSERT INTO `areas` VALUES (2594, '530624', '大关县', '530600');
INSERT INTO `areas` VALUES (2595, '530625', '永善县', '530600');
INSERT INTO `areas` VALUES (2596, '530626', '绥江县', '530600');
INSERT INTO `areas` VALUES (2597, '530627', '镇雄县', '530600');
INSERT INTO `areas` VALUES (2598, '530628', '彝良县', '530600');
INSERT INTO `areas` VALUES (2599, '530629', '威信县', '530600');
INSERT INTO `areas` VALUES (2600, '530630', '水富县', '530600');
INSERT INTO `areas` VALUES (2601, '530701', '市辖区', '530700');
INSERT INTO `areas` VALUES (2602, '530702', '古城区', '530700');
INSERT INTO `areas` VALUES (2603, '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `areas` VALUES (2604, '530722', '永胜县', '530700');
INSERT INTO `areas` VALUES (2605, '530723', '华坪县', '530700');
INSERT INTO `areas` VALUES (2606, '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `areas` VALUES (2607, '530801', '市辖区', '530800');
INSERT INTO `areas` VALUES (2608, '530802', '翠云区', '530800');
INSERT INTO `areas` VALUES (2609, '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `areas` VALUES (2610, '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `areas` VALUES (2611, '530823', '景东彝族自治县', '530800');
INSERT INTO `areas` VALUES (2612, '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `areas` VALUES (2613, '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `areas` VALUES (2614, '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `areas` VALUES (2615, '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `areas` VALUES (2616, '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `areas` VALUES (2617, '530829', '西盟佤族自治县', '530800');
INSERT INTO `areas` VALUES (2618, '530901', '市辖区', '530900');
INSERT INTO `areas` VALUES (2619, '530902', '临翔区', '530900');
INSERT INTO `areas` VALUES (2620, '530921', '凤庆县', '530900');
INSERT INTO `areas` VALUES (2621, '530922', '云　县', '530900');
INSERT INTO `areas` VALUES (2622, '530923', '永德县', '530900');
INSERT INTO `areas` VALUES (2623, '530924', '镇康县', '530900');
INSERT INTO `areas` VALUES (2624, '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `areas` VALUES (2625, '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `areas` VALUES (2626, '530927', '沧源佤族自治县', '530900');
INSERT INTO `areas` VALUES (2627, '532301', '楚雄市', '532300');
INSERT INTO `areas` VALUES (2628, '532322', '双柏县', '532300');
INSERT INTO `areas` VALUES (2629, '532323', '牟定县', '532300');
INSERT INTO `areas` VALUES (2630, '532324', '南华县', '532300');
INSERT INTO `areas` VALUES (2631, '532325', '姚安县', '532300');
INSERT INTO `areas` VALUES (2632, '532326', '大姚县', '532300');
INSERT INTO `areas` VALUES (2633, '532327', '永仁县', '532300');
INSERT INTO `areas` VALUES (2634, '532328', '元谋县', '532300');
INSERT INTO `areas` VALUES (2635, '532329', '武定县', '532300');
INSERT INTO `areas` VALUES (2636, '532331', '禄丰县', '532300');
INSERT INTO `areas` VALUES (2637, '532501', '个旧市', '532500');
INSERT INTO `areas` VALUES (2638, '532502', '开远市', '532500');
INSERT INTO `areas` VALUES (2639, '532522', '蒙自县', '532500');
INSERT INTO `areas` VALUES (2640, '532523', '屏边苗族自治县', '532500');
INSERT INTO `areas` VALUES (2641, '532524', '建水县', '532500');
INSERT INTO `areas` VALUES (2642, '532525', '石屏县', '532500');
INSERT INTO `areas` VALUES (2643, '532526', '弥勒县', '532500');
INSERT INTO `areas` VALUES (2644, '532527', '泸西县', '532500');
INSERT INTO `areas` VALUES (2645, '532528', '元阳县', '532500');
INSERT INTO `areas` VALUES (2646, '532529', '红河县', '532500');
INSERT INTO `areas` VALUES (2647, '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `areas` VALUES (2648, '532531', '绿春县', '532500');
INSERT INTO `areas` VALUES (2649, '532532', '河口瑶族自治县', '532500');
INSERT INTO `areas` VALUES (2650, '532621', '文山县', '532600');
INSERT INTO `areas` VALUES (2651, '532622', '砚山县', '532600');
INSERT INTO `areas` VALUES (2652, '532623', '西畴县', '532600');
INSERT INTO `areas` VALUES (2653, '532624', '麻栗坡县', '532600');
INSERT INTO `areas` VALUES (2654, '532625', '马关县', '532600');
INSERT INTO `areas` VALUES (2655, '532626', '丘北县', '532600');
INSERT INTO `areas` VALUES (2656, '532627', '广南县', '532600');
INSERT INTO `areas` VALUES (2657, '532628', '富宁县', '532600');
INSERT INTO `areas` VALUES (2658, '532801', '景洪市', '532800');
INSERT INTO `areas` VALUES (2659, '532822', '勐海县', '532800');
INSERT INTO `areas` VALUES (2660, '532823', '勐腊县', '532800');
INSERT INTO `areas` VALUES (2661, '532901', '大理市', '532900');
INSERT INTO `areas` VALUES (2662, '532922', '漾濞彝族自治县', '532900');
INSERT INTO `areas` VALUES (2663, '532923', '祥云县', '532900');
INSERT INTO `areas` VALUES (2664, '532924', '宾川县', '532900');
INSERT INTO `areas` VALUES (2665, '532925', '弥渡县', '532900');
INSERT INTO `areas` VALUES (2666, '532926', '南涧彝族自治县', '532900');
INSERT INTO `areas` VALUES (2667, '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `areas` VALUES (2668, '532928', '永平县', '532900');
INSERT INTO `areas` VALUES (2669, '532929', '云龙县', '532900');
INSERT INTO `areas` VALUES (2670, '532930', '洱源县', '532900');
INSERT INTO `areas` VALUES (2671, '532931', '剑川县', '532900');
INSERT INTO `areas` VALUES (2672, '532932', '鹤庆县', '532900');
INSERT INTO `areas` VALUES (2673, '533102', '瑞丽市', '533100');
INSERT INTO `areas` VALUES (2674, '533103', '潞西市', '533100');
INSERT INTO `areas` VALUES (2675, '533122', '梁河县', '533100');
INSERT INTO `areas` VALUES (2676, '533123', '盈江县', '533100');
INSERT INTO `areas` VALUES (2677, '533124', '陇川县', '533100');
INSERT INTO `areas` VALUES (2678, '533321', '泸水县', '533300');
INSERT INTO `areas` VALUES (2679, '533323', '福贡县', '533300');
INSERT INTO `areas` VALUES (2680, '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `areas` VALUES (2681, '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `areas` VALUES (2682, '533421', '香格里拉县', '533400');
INSERT INTO `areas` VALUES (2683, '533422', '德钦县', '533400');
INSERT INTO `areas` VALUES (2684, '533423', '维西傈僳族自治县', '533400');
INSERT INTO `areas` VALUES (2685, '540101', '市辖区', '540100');
INSERT INTO `areas` VALUES (2686, '540102', '城关区', '540100');
INSERT INTO `areas` VALUES (2687, '540121', '林周县', '540100');
INSERT INTO `areas` VALUES (2688, '540122', '当雄县', '540100');
INSERT INTO `areas` VALUES (2689, '540123', '尼木县', '540100');
INSERT INTO `areas` VALUES (2690, '540124', '曲水县', '540100');
INSERT INTO `areas` VALUES (2691, '540125', '堆龙德庆县', '540100');
INSERT INTO `areas` VALUES (2692, '540126', '达孜县', '540100');
INSERT INTO `areas` VALUES (2693, '540127', '墨竹工卡县', '540100');
INSERT INTO `areas` VALUES (2694, '542121', '昌都县', '542100');
INSERT INTO `areas` VALUES (2695, '542122', '江达县', '542100');
INSERT INTO `areas` VALUES (2696, '542123', '贡觉县', '542100');
INSERT INTO `areas` VALUES (2697, '542124', '类乌齐县', '542100');
INSERT INTO `areas` VALUES (2698, '542125', '丁青县', '542100');
INSERT INTO `areas` VALUES (2699, '542126', '察雅县', '542100');
INSERT INTO `areas` VALUES (2700, '542127', '八宿县', '542100');
INSERT INTO `areas` VALUES (2701, '542128', '左贡县', '542100');
INSERT INTO `areas` VALUES (2702, '542129', '芒康县', '542100');
INSERT INTO `areas` VALUES (2703, '542132', '洛隆县', '542100');
INSERT INTO `areas` VALUES (2704, '542133', '边坝县', '542100');
INSERT INTO `areas` VALUES (2705, '542221', '乃东县', '542200');
INSERT INTO `areas` VALUES (2706, '542222', '扎囊县', '542200');
INSERT INTO `areas` VALUES (2707, '542223', '贡嘎县', '542200');
INSERT INTO `areas` VALUES (2708, '542224', '桑日县', '542200');
INSERT INTO `areas` VALUES (2709, '542225', '琼结县', '542200');
INSERT INTO `areas` VALUES (2710, '542226', '曲松县', '542200');
INSERT INTO `areas` VALUES (2711, '542227', '措美县', '542200');
INSERT INTO `areas` VALUES (2712, '542228', '洛扎县', '542200');
INSERT INTO `areas` VALUES (2713, '542229', '加查县', '542200');
INSERT INTO `areas` VALUES (2714, '542231', '隆子县', '542200');
INSERT INTO `areas` VALUES (2715, '542232', '错那县', '542200');
INSERT INTO `areas` VALUES (2716, '542233', '浪卡子县', '542200');
INSERT INTO `areas` VALUES (2717, '542301', '日喀则市', '542300');
INSERT INTO `areas` VALUES (2718, '542322', '南木林县', '542300');
INSERT INTO `areas` VALUES (2719, '542323', '江孜县', '542300');
INSERT INTO `areas` VALUES (2720, '542324', '定日县', '542300');
INSERT INTO `areas` VALUES (2721, '542325', '萨迦县', '542300');
INSERT INTO `areas` VALUES (2722, '542326', '拉孜县', '542300');
INSERT INTO `areas` VALUES (2723, '542327', '昂仁县', '542300');
INSERT INTO `areas` VALUES (2724, '542328', '谢通门县', '542300');
INSERT INTO `areas` VALUES (2725, '542329', '白朗县', '542300');
INSERT INTO `areas` VALUES (2726, '542330', '仁布县', '542300');
INSERT INTO `areas` VALUES (2727, '542331', '康马县', '542300');
INSERT INTO `areas` VALUES (2728, '542332', '定结县', '542300');
INSERT INTO `areas` VALUES (2729, '542333', '仲巴县', '542300');
INSERT INTO `areas` VALUES (2730, '542334', '亚东县', '542300');
INSERT INTO `areas` VALUES (2731, '542335', '吉隆县', '542300');
INSERT INTO `areas` VALUES (2732, '542336', '聂拉木县', '542300');
INSERT INTO `areas` VALUES (2733, '542337', '萨嘎县', '542300');
INSERT INTO `areas` VALUES (2734, '542338', '岗巴县', '542300');
INSERT INTO `areas` VALUES (2735, '542421', '那曲县', '542400');
INSERT INTO `areas` VALUES (2736, '542422', '嘉黎县', '542400');
INSERT INTO `areas` VALUES (2737, '542423', '比如县', '542400');
INSERT INTO `areas` VALUES (2738, '542424', '聂荣县', '542400');
INSERT INTO `areas` VALUES (2739, '542425', '安多县', '542400');
INSERT INTO `areas` VALUES (2740, '542426', '申扎县', '542400');
INSERT INTO `areas` VALUES (2741, '542427', '索　县', '542400');
INSERT INTO `areas` VALUES (2742, '542428', '班戈县', '542400');
INSERT INTO `areas` VALUES (2743, '542429', '巴青县', '542400');
INSERT INTO `areas` VALUES (2744, '542430', '尼玛县', '542400');
INSERT INTO `areas` VALUES (2745, '542521', '普兰县', '542500');
INSERT INTO `areas` VALUES (2746, '542522', '札达县', '542500');
INSERT INTO `areas` VALUES (2747, '542523', '噶尔县', '542500');
INSERT INTO `areas` VALUES (2748, '542524', '日土县', '542500');
INSERT INTO `areas` VALUES (2749, '542525', '革吉县', '542500');
INSERT INTO `areas` VALUES (2750, '542526', '改则县', '542500');
INSERT INTO `areas` VALUES (2751, '542527', '措勤县', '542500');
INSERT INTO `areas` VALUES (2752, '542621', '林芝县', '542600');
INSERT INTO `areas` VALUES (2753, '542622', '工布江达县', '542600');
INSERT INTO `areas` VALUES (2754, '542623', '米林县', '542600');
INSERT INTO `areas` VALUES (2755, '542624', '墨脱县', '542600');
INSERT INTO `areas` VALUES (2756, '542625', '波密县', '542600');
INSERT INTO `areas` VALUES (2757, '542626', '察隅县', '542600');
INSERT INTO `areas` VALUES (2758, '542627', '朗　县', '542600');
INSERT INTO `areas` VALUES (2759, '610101', '市辖区', '610100');
INSERT INTO `areas` VALUES (2760, '610102', '新城区', '610100');
INSERT INTO `areas` VALUES (2761, '610103', '碑林区', '610100');
INSERT INTO `areas` VALUES (2762, '610104', '莲湖区', '610100');
INSERT INTO `areas` VALUES (2763, '610111', '灞桥区', '610100');
INSERT INTO `areas` VALUES (2764, '610112', '未央区', '610100');
INSERT INTO `areas` VALUES (2765, '610113', '雁塔区', '610100');
INSERT INTO `areas` VALUES (2766, '610114', '阎良区', '610100');
INSERT INTO `areas` VALUES (2767, '610115', '临潼区', '610100');
INSERT INTO `areas` VALUES (2768, '610116', '长安区', '610100');
INSERT INTO `areas` VALUES (2769, '610122', '蓝田县', '610100');
INSERT INTO `areas` VALUES (2770, '610124', '周至县', '610100');
INSERT INTO `areas` VALUES (2771, '610125', '户　县', '610100');
INSERT INTO `areas` VALUES (2772, '610126', '高陵县', '610100');
INSERT INTO `areas` VALUES (2773, '610201', '市辖区', '610200');
INSERT INTO `areas` VALUES (2774, '610202', '王益区', '610200');
INSERT INTO `areas` VALUES (2775, '610203', '印台区', '610200');
INSERT INTO `areas` VALUES (2776, '610204', '耀州区', '610200');
INSERT INTO `areas` VALUES (2777, '610222', '宜君县', '610200');
INSERT INTO `areas` VALUES (2778, '610301', '市辖区', '610300');
INSERT INTO `areas` VALUES (2779, '610302', '渭滨区', '610300');
INSERT INTO `areas` VALUES (2780, '610303', '金台区', '610300');
INSERT INTO `areas` VALUES (2781, '610304', '陈仓区', '610300');
INSERT INTO `areas` VALUES (2782, '610322', '凤翔县', '610300');
INSERT INTO `areas` VALUES (2783, '610323', '岐山县', '610300');
INSERT INTO `areas` VALUES (2784, '610324', '扶风县', '610300');
INSERT INTO `areas` VALUES (2785, '610326', '眉　县', '610300');
INSERT INTO `areas` VALUES (2786, '610327', '陇　县', '610300');
INSERT INTO `areas` VALUES (2787, '610328', '千阳县', '610300');
INSERT INTO `areas` VALUES (2788, '610329', '麟游县', '610300');
INSERT INTO `areas` VALUES (2789, '610330', '凤　县', '610300');
INSERT INTO `areas` VALUES (2790, '610331', '太白县', '610300');
INSERT INTO `areas` VALUES (2791, '610401', '市辖区', '610400');
INSERT INTO `areas` VALUES (2792, '610402', '秦都区', '610400');
INSERT INTO `areas` VALUES (2793, '610403', '杨凌区', '610400');
INSERT INTO `areas` VALUES (2794, '610404', '渭城区', '610400');
INSERT INTO `areas` VALUES (2795, '610422', '三原县', '610400');
INSERT INTO `areas` VALUES (2796, '610423', '泾阳县', '610400');
INSERT INTO `areas` VALUES (2797, '610424', '乾　县', '610400');
INSERT INTO `areas` VALUES (2798, '610425', '礼泉县', '610400');
INSERT INTO `areas` VALUES (2799, '610426', '永寿县', '610400');
INSERT INTO `areas` VALUES (2800, '610427', '彬　县', '610400');
INSERT INTO `areas` VALUES (2801, '610428', '长武县', '610400');
INSERT INTO `areas` VALUES (2802, '610429', '旬邑县', '610400');
INSERT INTO `areas` VALUES (2803, '610430', '淳化县', '610400');
INSERT INTO `areas` VALUES (2804, '610431', '武功县', '610400');
INSERT INTO `areas` VALUES (2805, '610481', '兴平市', '610400');
INSERT INTO `areas` VALUES (2806, '610501', '市辖区', '610500');
INSERT INTO `areas` VALUES (2807, '610502', '临渭区', '610500');
INSERT INTO `areas` VALUES (2808, '610521', '华　县', '610500');
INSERT INTO `areas` VALUES (2809, '610522', '潼关县', '610500');
INSERT INTO `areas` VALUES (2810, '610523', '大荔县', '610500');
INSERT INTO `areas` VALUES (2811, '610524', '合阳县', '610500');
INSERT INTO `areas` VALUES (2812, '610525', '澄城县', '610500');
INSERT INTO `areas` VALUES (2813, '610526', '蒲城县', '610500');
INSERT INTO `areas` VALUES (2814, '610527', '白水县', '610500');
INSERT INTO `areas` VALUES (2815, '610528', '富平县', '610500');
INSERT INTO `areas` VALUES (2816, '610581', '韩城市', '610500');
INSERT INTO `areas` VALUES (2817, '610582', '华阴市', '610500');
INSERT INTO `areas` VALUES (2818, '610601', '市辖区', '610600');
INSERT INTO `areas` VALUES (2819, '610602', '宝塔区', '610600');
INSERT INTO `areas` VALUES (2820, '610621', '延长县', '610600');
INSERT INTO `areas` VALUES (2821, '610622', '延川县', '610600');
INSERT INTO `areas` VALUES (2822, '610623', '子长县', '610600');
INSERT INTO `areas` VALUES (2823, '610624', '安塞县', '610600');
INSERT INTO `areas` VALUES (2824, '610625', '志丹县', '610600');
INSERT INTO `areas` VALUES (2825, '610626', '吴旗县', '610600');
INSERT INTO `areas` VALUES (2826, '610627', '甘泉县', '610600');
INSERT INTO `areas` VALUES (2827, '610628', '富　县', '610600');
INSERT INTO `areas` VALUES (2828, '610629', '洛川县', '610600');
INSERT INTO `areas` VALUES (2829, '610630', '宜川县', '610600');
INSERT INTO `areas` VALUES (2830, '610631', '黄龙县', '610600');
INSERT INTO `areas` VALUES (2831, '610632', '黄陵县', '610600');
INSERT INTO `areas` VALUES (2832, '610701', '市辖区', '610700');
INSERT INTO `areas` VALUES (2833, '610702', '汉台区', '610700');
INSERT INTO `areas` VALUES (2834, '610721', '南郑县', '610700');
INSERT INTO `areas` VALUES (2835, '610722', '城固县', '610700');
INSERT INTO `areas` VALUES (2836, '610723', '洋　县', '610700');
INSERT INTO `areas` VALUES (2837, '610724', '西乡县', '610700');
INSERT INTO `areas` VALUES (2838, '610725', '勉　县', '610700');
INSERT INTO `areas` VALUES (2839, '610726', '宁强县', '610700');
INSERT INTO `areas` VALUES (2840, '610727', '略阳县', '610700');
INSERT INTO `areas` VALUES (2841, '610728', '镇巴县', '610700');
INSERT INTO `areas` VALUES (2842, '610729', '留坝县', '610700');
INSERT INTO `areas` VALUES (2843, '610730', '佛坪县', '610700');
INSERT INTO `areas` VALUES (2844, '610801', '市辖区', '610800');
INSERT INTO `areas` VALUES (2845, '610802', '榆阳区', '610800');
INSERT INTO `areas` VALUES (2846, '610821', '神木县', '610800');
INSERT INTO `areas` VALUES (2847, '610822', '府谷县', '610800');
INSERT INTO `areas` VALUES (2848, '610823', '横山县', '610800');
INSERT INTO `areas` VALUES (2849, '610824', '靖边县', '610800');
INSERT INTO `areas` VALUES (2850, '610825', '定边县', '610800');
INSERT INTO `areas` VALUES (2851, '610826', '绥德县', '610800');
INSERT INTO `areas` VALUES (2852, '610827', '米脂县', '610800');
INSERT INTO `areas` VALUES (2853, '610828', '佳　县', '610800');
INSERT INTO `areas` VALUES (2854, '610829', '吴堡县', '610800');
INSERT INTO `areas` VALUES (2855, '610830', '清涧县', '610800');
INSERT INTO `areas` VALUES (2856, '610831', '子洲县', '610800');
INSERT INTO `areas` VALUES (2857, '610901', '市辖区', '610900');
INSERT INTO `areas` VALUES (2858, '610902', '汉滨区', '610900');
INSERT INTO `areas` VALUES (2859, '610921', '汉阴县', '610900');
INSERT INTO `areas` VALUES (2860, '610922', '石泉县', '610900');
INSERT INTO `areas` VALUES (2861, '610923', '宁陕县', '610900');
INSERT INTO `areas` VALUES (2862, '610924', '紫阳县', '610900');
INSERT INTO `areas` VALUES (2863, '610925', '岚皋县', '610900');
INSERT INTO `areas` VALUES (2864, '610926', '平利县', '610900');
INSERT INTO `areas` VALUES (2865, '610927', '镇坪县', '610900');
INSERT INTO `areas` VALUES (2866, '610928', '旬阳县', '610900');
INSERT INTO `areas` VALUES (2867, '610929', '白河县', '610900');
INSERT INTO `areas` VALUES (2868, '611001', '市辖区', '611000');
INSERT INTO `areas` VALUES (2869, '611002', '商州区', '611000');
INSERT INTO `areas` VALUES (2870, '611021', '洛南县', '611000');
INSERT INTO `areas` VALUES (2871, '611022', '丹凤县', '611000');
INSERT INTO `areas` VALUES (2872, '611023', '商南县', '611000');
INSERT INTO `areas` VALUES (2873, '611024', '山阳县', '611000');
INSERT INTO `areas` VALUES (2874, '611025', '镇安县', '611000');
INSERT INTO `areas` VALUES (2875, '611026', '柞水县', '611000');
INSERT INTO `areas` VALUES (2876, '620101', '市辖区', '620100');
INSERT INTO `areas` VALUES (2877, '620102', '城关区', '620100');
INSERT INTO `areas` VALUES (2878, '620103', '七里河区', '620100');
INSERT INTO `areas` VALUES (2879, '620104', '西固区', '620100');
INSERT INTO `areas` VALUES (2880, '620105', '安宁区', '620100');
INSERT INTO `areas` VALUES (2881, '620111', '红古区', '620100');
INSERT INTO `areas` VALUES (2882, '620121', '永登县', '620100');
INSERT INTO `areas` VALUES (2883, '620122', '皋兰县', '620100');
INSERT INTO `areas` VALUES (2884, '620123', '榆中县', '620100');
INSERT INTO `areas` VALUES (2885, '620201', '市辖区', '620200');
INSERT INTO `areas` VALUES (2886, '620301', '市辖区', '620300');
INSERT INTO `areas` VALUES (2887, '620302', '金川区', '620300');
INSERT INTO `areas` VALUES (2888, '620321', '永昌县', '620300');
INSERT INTO `areas` VALUES (2889, '620401', '市辖区', '620400');
INSERT INTO `areas` VALUES (2890, '620402', '白银区', '620400');
INSERT INTO `areas` VALUES (2891, '620403', '平川区', '620400');
INSERT INTO `areas` VALUES (2892, '620421', '靖远县', '620400');
INSERT INTO `areas` VALUES (2893, '620422', '会宁县', '620400');
INSERT INTO `areas` VALUES (2894, '620423', '景泰县', '620400');
INSERT INTO `areas` VALUES (2895, '620501', '市辖区', '620500');
INSERT INTO `areas` VALUES (2896, '620502', '秦城区', '620500');
INSERT INTO `areas` VALUES (2897, '620503', '北道区', '620500');
INSERT INTO `areas` VALUES (2898, '620521', '清水县', '620500');
INSERT INTO `areas` VALUES (2899, '620522', '秦安县', '620500');
INSERT INTO `areas` VALUES (2900, '620523', '甘谷县', '620500');
INSERT INTO `areas` VALUES (2901, '620524', '武山县', '620500');
INSERT INTO `areas` VALUES (2902, '620525', '张家川回族自治县', '620500');
INSERT INTO `areas` VALUES (2903, '620601', '市辖区', '620600');
INSERT INTO `areas` VALUES (2904, '620602', '凉州区', '620600');
INSERT INTO `areas` VALUES (2905, '620621', '民勤县', '620600');
INSERT INTO `areas` VALUES (2906, '620622', '古浪县', '620600');
INSERT INTO `areas` VALUES (2907, '620623', '天祝藏族自治县', '620600');
INSERT INTO `areas` VALUES (2908, '620701', '市辖区', '620700');
INSERT INTO `areas` VALUES (2909, '620702', '甘州区', '620700');
INSERT INTO `areas` VALUES (2910, '620721', '肃南裕固族自治县', '620700');
INSERT INTO `areas` VALUES (2911, '620722', '民乐县', '620700');
INSERT INTO `areas` VALUES (2912, '620723', '临泽县', '620700');
INSERT INTO `areas` VALUES (2913, '620724', '高台县', '620700');
INSERT INTO `areas` VALUES (2914, '620725', '山丹县', '620700');
INSERT INTO `areas` VALUES (2915, '620801', '市辖区', '620800');
INSERT INTO `areas` VALUES (2916, '620802', '崆峒区', '620800');
INSERT INTO `areas` VALUES (2917, '620821', '泾川县', '620800');
INSERT INTO `areas` VALUES (2918, '620822', '灵台县', '620800');
INSERT INTO `areas` VALUES (2919, '620823', '崇信县', '620800');
INSERT INTO `areas` VALUES (2920, '620824', '华亭县', '620800');
INSERT INTO `areas` VALUES (2921, '620825', '庄浪县', '620800');
INSERT INTO `areas` VALUES (2922, '620826', '静宁县', '620800');
INSERT INTO `areas` VALUES (2923, '620901', '市辖区', '620900');
INSERT INTO `areas` VALUES (2924, '620902', '肃州区', '620900');
INSERT INTO `areas` VALUES (2925, '620921', '金塔县', '620900');
INSERT INTO `areas` VALUES (2926, '620922', '安西县', '620900');
INSERT INTO `areas` VALUES (2927, '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `areas` VALUES (2928, '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `areas` VALUES (2929, '620981', '玉门市', '620900');
INSERT INTO `areas` VALUES (2930, '620982', '敦煌市', '620900');
INSERT INTO `areas` VALUES (2931, '621001', '市辖区', '621000');
INSERT INTO `areas` VALUES (2932, '621002', '西峰区', '621000');
INSERT INTO `areas` VALUES (2933, '621021', '庆城县', '621000');
INSERT INTO `areas` VALUES (2934, '621022', '环　县', '621000');
INSERT INTO `areas` VALUES (2935, '621023', '华池县', '621000');
INSERT INTO `areas` VALUES (2936, '621024', '合水县', '621000');
INSERT INTO `areas` VALUES (2937, '621025', '正宁县', '621000');
INSERT INTO `areas` VALUES (2938, '621026', '宁　县', '621000');
INSERT INTO `areas` VALUES (2939, '621027', '镇原县', '621000');
INSERT INTO `areas` VALUES (2940, '621101', '市辖区', '621100');
INSERT INTO `areas` VALUES (2941, '621102', '安定区', '621100');
INSERT INTO `areas` VALUES (2942, '621121', '通渭县', '621100');
INSERT INTO `areas` VALUES (2943, '621122', '陇西县', '621100');
INSERT INTO `areas` VALUES (2944, '621123', '渭源县', '621100');
INSERT INTO `areas` VALUES (2945, '621124', '临洮县', '621100');
INSERT INTO `areas` VALUES (2946, '621125', '漳　县', '621100');
INSERT INTO `areas` VALUES (2947, '621126', '岷　县', '621100');
INSERT INTO `areas` VALUES (2948, '621201', '市辖区', '621200');
INSERT INTO `areas` VALUES (2949, '621202', '武都区', '621200');
INSERT INTO `areas` VALUES (2950, '621221', '成　县', '621200');
INSERT INTO `areas` VALUES (2951, '621222', '文　县', '621200');
INSERT INTO `areas` VALUES (2952, '621223', '宕昌县', '621200');
INSERT INTO `areas` VALUES (2953, '621224', '康　县', '621200');
INSERT INTO `areas` VALUES (2954, '621225', '西和县', '621200');
INSERT INTO `areas` VALUES (2955, '621226', '礼　县', '621200');
INSERT INTO `areas` VALUES (2956, '621227', '徽　县', '621200');
INSERT INTO `areas` VALUES (2957, '621228', '两当县', '621200');
INSERT INTO `areas` VALUES (2958, '622901', '临夏市', '622900');
INSERT INTO `areas` VALUES (2959, '622921', '临夏县', '622900');
INSERT INTO `areas` VALUES (2960, '622922', '康乐县', '622900');
INSERT INTO `areas` VALUES (2961, '622923', '永靖县', '622900');
INSERT INTO `areas` VALUES (2962, '622924', '广河县', '622900');
INSERT INTO `areas` VALUES (2963, '622925', '和政县', '622900');
INSERT INTO `areas` VALUES (2964, '622926', '东乡族自治县', '622900');
INSERT INTO `areas` VALUES (2965, '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `areas` VALUES (2966, '623001', '合作市', '623000');
INSERT INTO `areas` VALUES (2967, '623021', '临潭县', '623000');
INSERT INTO `areas` VALUES (2968, '623022', '卓尼县', '623000');
INSERT INTO `areas` VALUES (2969, '623023', '舟曲县', '623000');
INSERT INTO `areas` VALUES (2970, '623024', '迭部县', '623000');
INSERT INTO `areas` VALUES (2971, '623025', '玛曲县', '623000');
INSERT INTO `areas` VALUES (2972, '623026', '碌曲县', '623000');
INSERT INTO `areas` VALUES (2973, '623027', '夏河县', '623000');
INSERT INTO `areas` VALUES (2974, '630101', '市辖区', '630100');
INSERT INTO `areas` VALUES (2975, '630102', '城东区', '630100');
INSERT INTO `areas` VALUES (2976, '630103', '城中区', '630100');
INSERT INTO `areas` VALUES (2977, '630104', '城西区', '630100');
INSERT INTO `areas` VALUES (2978, '630105', '城北区', '630100');
INSERT INTO `areas` VALUES (2979, '630121', '大通回族土族自治县', '630100');
INSERT INTO `areas` VALUES (2980, '630122', '湟中县', '630100');
INSERT INTO `areas` VALUES (2981, '630123', '湟源县', '630100');
INSERT INTO `areas` VALUES (2982, '632121', '平安县', '632100');
INSERT INTO `areas` VALUES (2983, '632122', '民和回族土族自治县', '632100');
INSERT INTO `areas` VALUES (2984, '632123', '乐都县', '632100');
INSERT INTO `areas` VALUES (2985, '632126', '互助土族自治县', '632100');
INSERT INTO `areas` VALUES (2986, '632127', '化隆回族自治县', '632100');
INSERT INTO `areas` VALUES (2987, '632128', '循化撒拉族自治县', '632100');
INSERT INTO `areas` VALUES (2988, '632221', '门源回族自治县', '632200');
INSERT INTO `areas` VALUES (2989, '632222', '祁连县', '632200');
INSERT INTO `areas` VALUES (2990, '632223', '海晏县', '632200');
INSERT INTO `areas` VALUES (2991, '632224', '刚察县', '632200');
INSERT INTO `areas` VALUES (2992, '632321', '同仁县', '632300');
INSERT INTO `areas` VALUES (2993, '632322', '尖扎县', '632300');
INSERT INTO `areas` VALUES (2994, '632323', '泽库县', '632300');
INSERT INTO `areas` VALUES (2995, '632324', '河南蒙古族自治县', '632300');
INSERT INTO `areas` VALUES (2996, '632521', '共和县', '632500');
INSERT INTO `areas` VALUES (2997, '632522', '同德县', '632500');
INSERT INTO `areas` VALUES (2998, '632523', '贵德县', '632500');
INSERT INTO `areas` VALUES (2999, '632524', '兴海县', '632500');
INSERT INTO `areas` VALUES (3000, '632525', '贵南县', '632500');
INSERT INTO `areas` VALUES (3001, '632621', '玛沁县', '632600');
INSERT INTO `areas` VALUES (3002, '632622', '班玛县', '632600');
INSERT INTO `areas` VALUES (3003, '632623', '甘德县', '632600');
INSERT INTO `areas` VALUES (3004, '632624', '达日县', '632600');
INSERT INTO `areas` VALUES (3005, '632625', '久治县', '632600');
INSERT INTO `areas` VALUES (3006, '632626', '玛多县', '632600');
INSERT INTO `areas` VALUES (3007, '632721', '玉树县', '632700');
INSERT INTO `areas` VALUES (3008, '632722', '杂多县', '632700');
INSERT INTO `areas` VALUES (3009, '632723', '称多县', '632700');
INSERT INTO `areas` VALUES (3010, '632724', '治多县', '632700');
INSERT INTO `areas` VALUES (3011, '632725', '囊谦县', '632700');
INSERT INTO `areas` VALUES (3012, '632726', '曲麻莱县', '632700');
INSERT INTO `areas` VALUES (3013, '632801', '格尔木市', '632800');
INSERT INTO `areas` VALUES (3014, '632802', '德令哈市', '632800');
INSERT INTO `areas` VALUES (3015, '632821', '乌兰县', '632800');
INSERT INTO `areas` VALUES (3016, '632822', '都兰县', '632800');
INSERT INTO `areas` VALUES (3017, '632823', '天峻县', '632800');
INSERT INTO `areas` VALUES (3018, '640101', '市辖区', '640100');
INSERT INTO `areas` VALUES (3019, '640104', '兴庆区', '640100');
INSERT INTO `areas` VALUES (3020, '640105', '西夏区', '640100');
INSERT INTO `areas` VALUES (3021, '640106', '金凤区', '640100');
INSERT INTO `areas` VALUES (3022, '640121', '永宁县', '640100');
INSERT INTO `areas` VALUES (3023, '640122', '贺兰县', '640100');
INSERT INTO `areas` VALUES (3024, '640181', '灵武市', '640100');
INSERT INTO `areas` VALUES (3025, '640201', '市辖区', '640200');
INSERT INTO `areas` VALUES (3026, '640202', '大武口区', '640200');
INSERT INTO `areas` VALUES (3027, '640205', '惠农区', '640200');
INSERT INTO `areas` VALUES (3028, '640221', '平罗县', '640200');
INSERT INTO `areas` VALUES (3029, '640301', '市辖区', '640300');
INSERT INTO `areas` VALUES (3030, '640302', '利通区', '640300');
INSERT INTO `areas` VALUES (3031, '640323', '盐池县', '640300');
INSERT INTO `areas` VALUES (3032, '640324', '同心县', '640300');
INSERT INTO `areas` VALUES (3033, '640381', '青铜峡市', '640300');
INSERT INTO `areas` VALUES (3034, '640401', '市辖区', '640400');
INSERT INTO `areas` VALUES (3035, '640402', '原州区', '640400');
INSERT INTO `areas` VALUES (3036, '640422', '西吉县', '640400');
INSERT INTO `areas` VALUES (3037, '640423', '隆德县', '640400');
INSERT INTO `areas` VALUES (3038, '640424', '泾源县', '640400');
INSERT INTO `areas` VALUES (3039, '640425', '彭阳县', '640400');
INSERT INTO `areas` VALUES (3040, '640501', '市辖区', '640500');
INSERT INTO `areas` VALUES (3041, '640502', '沙坡头区', '640500');
INSERT INTO `areas` VALUES (3042, '640521', '中宁县', '640500');
INSERT INTO `areas` VALUES (3043, '640522', '海原县', '640500');
INSERT INTO `areas` VALUES (3044, '650101', '市辖区', '650100');
INSERT INTO `areas` VALUES (3045, '650102', '天山区', '650100');
INSERT INTO `areas` VALUES (3046, '650103', '沙依巴克区', '650100');
INSERT INTO `areas` VALUES (3047, '650104', '新市区', '650100');
INSERT INTO `areas` VALUES (3048, '650105', '水磨沟区', '650100');
INSERT INTO `areas` VALUES (3049, '650106', '头屯河区', '650100');
INSERT INTO `areas` VALUES (3050, '650107', '达坂城区', '650100');
INSERT INTO `areas` VALUES (3051, '650108', '东山区', '650100');
INSERT INTO `areas` VALUES (3052, '650121', '乌鲁木齐县', '650100');
INSERT INTO `areas` VALUES (3053, '650201', '市辖区', '650200');
INSERT INTO `areas` VALUES (3054, '650202', '独山子区', '650200');
INSERT INTO `areas` VALUES (3055, '650203', '克拉玛依区', '650200');
INSERT INTO `areas` VALUES (3056, '650204', '白碱滩区', '650200');
INSERT INTO `areas` VALUES (3057, '650205', '乌尔禾区', '650200');
INSERT INTO `areas` VALUES (3058, '652101', '吐鲁番市', '652100');
INSERT INTO `areas` VALUES (3059, '652122', '鄯善县', '652100');
INSERT INTO `areas` VALUES (3060, '652123', '托克逊县', '652100');
INSERT INTO `areas` VALUES (3061, '652201', '哈密市', '652200');
INSERT INTO `areas` VALUES (3062, '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `areas` VALUES (3063, '652223', '伊吾县', '652200');
INSERT INTO `areas` VALUES (3064, '652301', '昌吉市', '652300');
INSERT INTO `areas` VALUES (3065, '652302', '阜康市', '652300');
INSERT INTO `areas` VALUES (3066, '652303', '米泉市', '652300');
INSERT INTO `areas` VALUES (3067, '652323', '呼图壁县', '652300');
INSERT INTO `areas` VALUES (3068, '652324', '玛纳斯县', '652300');
INSERT INTO `areas` VALUES (3069, '652325', '奇台县', '652300');
INSERT INTO `areas` VALUES (3070, '652327', '吉木萨尔县', '652300');
INSERT INTO `areas` VALUES (3071, '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `areas` VALUES (3072, '652701', '博乐市', '652700');
INSERT INTO `areas` VALUES (3073, '652722', '精河县', '652700');
INSERT INTO `areas` VALUES (3074, '652723', '温泉县', '652700');
INSERT INTO `areas` VALUES (3075, '652801', '库尔勒市', '652800');
INSERT INTO `areas` VALUES (3076, '652822', '轮台县', '652800');
INSERT INTO `areas` VALUES (3077, '652823', '尉犁县', '652800');
INSERT INTO `areas` VALUES (3078, '652824', '若羌县', '652800');
INSERT INTO `areas` VALUES (3079, '652825', '且末县', '652800');
INSERT INTO `areas` VALUES (3080, '652826', '焉耆回族自治县', '652800');
INSERT INTO `areas` VALUES (3081, '652827', '和静县', '652800');
INSERT INTO `areas` VALUES (3082, '652828', '和硕县', '652800');
INSERT INTO `areas` VALUES (3083, '652829', '博湖县', '652800');
INSERT INTO `areas` VALUES (3084, '652901', '阿克苏市', '652900');
INSERT INTO `areas` VALUES (3085, '652922', '温宿县', '652900');
INSERT INTO `areas` VALUES (3086, '652923', '库车县', '652900');
INSERT INTO `areas` VALUES (3087, '652924', '沙雅县', '652900');
INSERT INTO `areas` VALUES (3088, '652925', '新和县', '652900');
INSERT INTO `areas` VALUES (3089, '652926', '拜城县', '652900');
INSERT INTO `areas` VALUES (3090, '652927', '乌什县', '652900');
INSERT INTO `areas` VALUES (3091, '652928', '阿瓦提县', '652900');
INSERT INTO `areas` VALUES (3092, '652929', '柯坪县', '652900');
INSERT INTO `areas` VALUES (3093, '653001', '阿图什市', '653000');
INSERT INTO `areas` VALUES (3094, '653022', '阿克陶县', '653000');
INSERT INTO `areas` VALUES (3095, '653023', '阿合奇县', '653000');
INSERT INTO `areas` VALUES (3096, '653024', '乌恰县', '653000');
INSERT INTO `areas` VALUES (3097, '653101', '喀什市', '653100');
INSERT INTO `areas` VALUES (3098, '653121', '疏附县', '653100');
INSERT INTO `areas` VALUES (3099, '653122', '疏勒县', '653100');
INSERT INTO `areas` VALUES (3100, '653123', '英吉沙县', '653100');
INSERT INTO `areas` VALUES (3101, '653124', '泽普县', '653100');
INSERT INTO `areas` VALUES (3102, '653125', '莎车县', '653100');
INSERT INTO `areas` VALUES (3103, '653126', '叶城县', '653100');
INSERT INTO `areas` VALUES (3104, '653127', '麦盖提县', '653100');
INSERT INTO `areas` VALUES (3105, '653128', '岳普湖县', '653100');
INSERT INTO `areas` VALUES (3106, '653129', '伽师县', '653100');
INSERT INTO `areas` VALUES (3107, '653130', '巴楚县', '653100');
INSERT INTO `areas` VALUES (3108, '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `areas` VALUES (3109, '653201', '和田市', '653200');
INSERT INTO `areas` VALUES (3110, '653221', '和田县', '653200');
INSERT INTO `areas` VALUES (3111, '653222', '墨玉县', '653200');
INSERT INTO `areas` VALUES (3112, '653223', '皮山县', '653200');
INSERT INTO `areas` VALUES (3113, '653224', '洛浦县', '653200');
INSERT INTO `areas` VALUES (3114, '653225', '策勒县', '653200');
INSERT INTO `areas` VALUES (3115, '653226', '于田县', '653200');
INSERT INTO `areas` VALUES (3116, '653227', '民丰县', '653200');
INSERT INTO `areas` VALUES (3117, '654002', '伊宁市', '654000');
INSERT INTO `areas` VALUES (3118, '654003', '奎屯市', '654000');
INSERT INTO `areas` VALUES (3119, '654021', '伊宁县', '654000');
INSERT INTO `areas` VALUES (3120, '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `areas` VALUES (3121, '654023', '霍城县', '654000');
INSERT INTO `areas` VALUES (3122, '654024', '巩留县', '654000');
INSERT INTO `areas` VALUES (3123, '654025', '新源县', '654000');
INSERT INTO `areas` VALUES (3124, '654026', '昭苏县', '654000');
INSERT INTO `areas` VALUES (3125, '654027', '特克斯县', '654000');
INSERT INTO `areas` VALUES (3126, '654028', '尼勒克县', '654000');
INSERT INTO `areas` VALUES (3127, '654201', '塔城市', '654200');
INSERT INTO `areas` VALUES (3128, '654202', '乌苏市', '654200');
INSERT INTO `areas` VALUES (3129, '654221', '额敏县', '654200');
INSERT INTO `areas` VALUES (3130, '654223', '沙湾县', '654200');
INSERT INTO `areas` VALUES (3131, '654224', '托里县', '654200');
INSERT INTO `areas` VALUES (3132, '654225', '裕民县', '654200');
INSERT INTO `areas` VALUES (3133, '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `areas` VALUES (3134, '654301', '阿勒泰市', '654300');
INSERT INTO `areas` VALUES (3135, '654321', '布尔津县', '654300');
INSERT INTO `areas` VALUES (3136, '654322', '富蕴县', '654300');
INSERT INTO `areas` VALUES (3137, '654323', '福海县', '654300');
INSERT INTO `areas` VALUES (3138, '654324', '哈巴河县', '654300');
INSERT INTO `areas` VALUES (3139, '654325', '青河县', '654300');
INSERT INTO `areas` VALUES (3140, '654326', '吉木乃县', '654300');
INSERT INTO `areas` VALUES (3141, '659001', '石河子市', '659000');
INSERT INTO `areas` VALUES (3142, '659002', '阿拉尔市', '659000');
INSERT INTO `areas` VALUES (3143, '659003', '图木舒克市', '659000');
INSERT INTO `areas` VALUES (3144, '659004', '五家渠市', '659000');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cityid` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市编码',
  `city` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市名称',
  `provinceid` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属省份编码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cityid`(`cityid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 345 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '城市信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES (1, '110100', '北京市', '110000');
INSERT INTO `cities` VALUES (2, '1102xx', '北京下属县', '1100xx');
INSERT INTO `cities` VALUES (3, '120100', '天津市', '120000');
INSERT INTO `cities` VALUES (4, '1202xx', '天津下属县', '1200xx');
INSERT INTO `cities` VALUES (5, '130100', '石家庄市', '130000');
INSERT INTO `cities` VALUES (6, '130200', '唐山市', '130000');
INSERT INTO `cities` VALUES (7, '130300', '秦皇岛市', '130000');
INSERT INTO `cities` VALUES (8, '130400', '邯郸市', '130000');
INSERT INTO `cities` VALUES (9, '130500', '邢台市', '130000');
INSERT INTO `cities` VALUES (10, '130600', '保定市', '130000');
INSERT INTO `cities` VALUES (11, '130700', '张家口市', '130000');
INSERT INTO `cities` VALUES (12, '130800', '承德市', '130000');
INSERT INTO `cities` VALUES (13, '130900', '沧州市', '130000');
INSERT INTO `cities` VALUES (14, '131000', '廊坊市', '130000');
INSERT INTO `cities` VALUES (15, '131100', '衡水市', '130000');
INSERT INTO `cities` VALUES (16, '140100', '太原市', '140000');
INSERT INTO `cities` VALUES (17, '140200', '大同市', '140000');
INSERT INTO `cities` VALUES (18, '140300', '阳泉市', '140000');
INSERT INTO `cities` VALUES (19, '140400', '长治市', '140000');
INSERT INTO `cities` VALUES (20, '140500', '晋城市', '140000');
INSERT INTO `cities` VALUES (21, '140600', '朔州市', '140000');
INSERT INTO `cities` VALUES (22, '140700', '晋中市', '140000');
INSERT INTO `cities` VALUES (23, '140800', '运城市', '140000');
INSERT INTO `cities` VALUES (24, '140900', '忻州市', '140000');
INSERT INTO `cities` VALUES (25, '141000', '临汾市', '140000');
INSERT INTO `cities` VALUES (26, '141100', '吕梁市', '140000');
INSERT INTO `cities` VALUES (27, '150100', '呼和浩特市', '150000');
INSERT INTO `cities` VALUES (28, '150200', '包头市', '150000');
INSERT INTO `cities` VALUES (29, '150300', '乌海市', '150000');
INSERT INTO `cities` VALUES (30, '150400', '赤峰市', '150000');
INSERT INTO `cities` VALUES (31, '150500', '通辽市', '150000');
INSERT INTO `cities` VALUES (32, '150600', '鄂尔多斯市', '150000');
INSERT INTO `cities` VALUES (33, '150700', '呼伦贝尔市', '150000');
INSERT INTO `cities` VALUES (34, '150800', '巴彦淖尔市', '150000');
INSERT INTO `cities` VALUES (35, '150900', '乌兰察布市', '150000');
INSERT INTO `cities` VALUES (36, '152200', '兴安盟', '150000');
INSERT INTO `cities` VALUES (37, '152500', '锡林郭勒盟', '150000');
INSERT INTO `cities` VALUES (38, '152900', '阿拉善盟', '150000');
INSERT INTO `cities` VALUES (39, '210100', '沈阳市', '210000');
INSERT INTO `cities` VALUES (40, '210200', '大连市', '210000');
INSERT INTO `cities` VALUES (41, '210300', '鞍山市', '210000');
INSERT INTO `cities` VALUES (42, '210400', '抚顺市', '210000');
INSERT INTO `cities` VALUES (43, '210500', '本溪市', '210000');
INSERT INTO `cities` VALUES (44, '210600', '丹东市', '210000');
INSERT INTO `cities` VALUES (45, '210700', '锦州市', '210000');
INSERT INTO `cities` VALUES (46, '210800', '营口市', '210000');
INSERT INTO `cities` VALUES (47, '210900', '阜新市', '210000');
INSERT INTO `cities` VALUES (48, '211000', '辽阳市', '210000');
INSERT INTO `cities` VALUES (49, '211100', '盘锦市', '210000');
INSERT INTO `cities` VALUES (50, '211200', '铁岭市', '210000');
INSERT INTO `cities` VALUES (51, '211300', '朝阳市', '210000');
INSERT INTO `cities` VALUES (52, '211400', '葫芦岛市', '210000');
INSERT INTO `cities` VALUES (53, '220100', '长春市', '220000');
INSERT INTO `cities` VALUES (54, '220200', '吉林市', '220000');
INSERT INTO `cities` VALUES (55, '220300', '四平市', '220000');
INSERT INTO `cities` VALUES (56, '220400', '辽源市', '220000');
INSERT INTO `cities` VALUES (57, '220500', '通化市', '220000');
INSERT INTO `cities` VALUES (58, '220600', '白山市', '220000');
INSERT INTO `cities` VALUES (59, '220700', '松原市', '220000');
INSERT INTO `cities` VALUES (60, '220800', '白城市', '220000');
INSERT INTO `cities` VALUES (61, '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `cities` VALUES (62, '230100', '哈尔滨市', '230000');
INSERT INTO `cities` VALUES (63, '230200', '齐齐哈尔市', '230000');
INSERT INTO `cities` VALUES (64, '230300', '鸡西市', '230000');
INSERT INTO `cities` VALUES (65, '230400', '鹤岗市', '230000');
INSERT INTO `cities` VALUES (66, '230500', '双鸭山市', '230000');
INSERT INTO `cities` VALUES (67, '230600', '大庆市', '230000');
INSERT INTO `cities` VALUES (68, '230700', '伊春市', '230000');
INSERT INTO `cities` VALUES (69, '230800', '佳木斯市', '230000');
INSERT INTO `cities` VALUES (70, '230900', '七台河市', '230000');
INSERT INTO `cities` VALUES (71, '231000', '牡丹江市', '230000');
INSERT INTO `cities` VALUES (72, '231100', '黑河市', '230000');
INSERT INTO `cities` VALUES (73, '231200', '绥化市', '230000');
INSERT INTO `cities` VALUES (74, '232700', '大兴安岭地区', '230000');
INSERT INTO `cities` VALUES (75, '310100', '上海市', '310000');
INSERT INTO `cities` VALUES (76, '3102xx', '上海下属县', '3100xx');
INSERT INTO `cities` VALUES (77, '320100', '南京市', '320000');
INSERT INTO `cities` VALUES (78, '320200', '无锡市', '320000');
INSERT INTO `cities` VALUES (79, '320300', '徐州市', '320000');
INSERT INTO `cities` VALUES (80, '320400', '常州市', '320000');
INSERT INTO `cities` VALUES (81, '320500', '苏州市', '320000');
INSERT INTO `cities` VALUES (82, '320600', '南通市', '320000');
INSERT INTO `cities` VALUES (83, '320700', '连云港市', '320000');
INSERT INTO `cities` VALUES (84, '320800', '淮安市', '320000');
INSERT INTO `cities` VALUES (85, '320900', '盐城市', '320000');
INSERT INTO `cities` VALUES (86, '321000', '扬州市', '320000');
INSERT INTO `cities` VALUES (87, '321100', '镇江市', '320000');
INSERT INTO `cities` VALUES (88, '321200', '泰州市', '320000');
INSERT INTO `cities` VALUES (89, '321300', '宿迁市', '320000');
INSERT INTO `cities` VALUES (90, '330100', '杭州市', '330000');
INSERT INTO `cities` VALUES (91, '330200', '宁波市', '330000');
INSERT INTO `cities` VALUES (92, '330300', '温州市', '330000');
INSERT INTO `cities` VALUES (93, '330400', '嘉兴市', '330000');
INSERT INTO `cities` VALUES (94, '330500', '湖州市', '330000');
INSERT INTO `cities` VALUES (95, '330600', '绍兴市', '330000');
INSERT INTO `cities` VALUES (96, '330700', '金华市', '330000');
INSERT INTO `cities` VALUES (97, '330800', '衢州市', '330000');
INSERT INTO `cities` VALUES (98, '330900', '舟山市', '330000');
INSERT INTO `cities` VALUES (99, '331000', '台州市', '330000');
INSERT INTO `cities` VALUES (100, '331100', '丽水市', '330000');
INSERT INTO `cities` VALUES (101, '340100', '合肥市', '340000');
INSERT INTO `cities` VALUES (102, '340200', '芜湖市', '340000');
INSERT INTO `cities` VALUES (103, '340300', '蚌埠市', '340000');
INSERT INTO `cities` VALUES (104, '340400', '淮南市', '340000');
INSERT INTO `cities` VALUES (105, '340500', '马鞍山市', '340000');
INSERT INTO `cities` VALUES (106, '340600', '淮北市', '340000');
INSERT INTO `cities` VALUES (107, '340700', '铜陵市', '340000');
INSERT INTO `cities` VALUES (108, '340800', '安庆市', '340000');
INSERT INTO `cities` VALUES (109, '341000', '黄山市', '340000');
INSERT INTO `cities` VALUES (110, '341100', '滁州市', '340000');
INSERT INTO `cities` VALUES (111, '341200', '阜阳市', '340000');
INSERT INTO `cities` VALUES (112, '341300', '宿州市', '340000');
INSERT INTO `cities` VALUES (113, '341400', '巢湖市', '340000');
INSERT INTO `cities` VALUES (114, '341500', '六安市', '340000');
INSERT INTO `cities` VALUES (115, '341600', '亳州市', '340000');
INSERT INTO `cities` VALUES (116, '341700', '池州市', '340000');
INSERT INTO `cities` VALUES (117, '341800', '宣城市', '340000');
INSERT INTO `cities` VALUES (118, '350100', '福州市', '350000');
INSERT INTO `cities` VALUES (119, '350200', '厦门市', '350000');
INSERT INTO `cities` VALUES (120, '350300', '莆田市', '350000');
INSERT INTO `cities` VALUES (121, '350400', '三明市', '350000');
INSERT INTO `cities` VALUES (122, '350500', '泉州市', '350000');
INSERT INTO `cities` VALUES (123, '350600', '漳州市', '350000');
INSERT INTO `cities` VALUES (124, '350700', '南平市', '350000');
INSERT INTO `cities` VALUES (125, '350800', '龙岩市', '350000');
INSERT INTO `cities` VALUES (126, '350900', '宁德市', '350000');
INSERT INTO `cities` VALUES (127, '360100', '南昌市', '360000');
INSERT INTO `cities` VALUES (128, '360200', '景德镇市', '360000');
INSERT INTO `cities` VALUES (129, '360300', '萍乡市', '360000');
INSERT INTO `cities` VALUES (130, '360400', '九江市', '360000');
INSERT INTO `cities` VALUES (131, '360500', '新余市', '360000');
INSERT INTO `cities` VALUES (132, '360600', '鹰潭市', '360000');
INSERT INTO `cities` VALUES (133, '360700', '赣州市', '360000');
INSERT INTO `cities` VALUES (134, '360800', '吉安市', '360000');
INSERT INTO `cities` VALUES (135, '360900', '宜春市', '360000');
INSERT INTO `cities` VALUES (136, '361000', '抚州市', '360000');
INSERT INTO `cities` VALUES (137, '361100', '上饶市', '360000');
INSERT INTO `cities` VALUES (138, '370100', '济南市', '370000');
INSERT INTO `cities` VALUES (139, '370200', '青岛市', '370000');
INSERT INTO `cities` VALUES (140, '370300', '淄博市', '370000');
INSERT INTO `cities` VALUES (141, '370400', '枣庄市', '370000');
INSERT INTO `cities` VALUES (142, '370500', '东营市', '370000');
INSERT INTO `cities` VALUES (143, '370600', '烟台市', '370000');
INSERT INTO `cities` VALUES (144, '370700', '潍坊市', '370000');
INSERT INTO `cities` VALUES (145, '370800', '济宁市', '370000');
INSERT INTO `cities` VALUES (146, '370900', '泰安市', '370000');
INSERT INTO `cities` VALUES (147, '371000', '威海市', '370000');
INSERT INTO `cities` VALUES (148, '371100', '日照市', '370000');
INSERT INTO `cities` VALUES (149, '371200', '莱芜市', '370000');
INSERT INTO `cities` VALUES (150, '371300', '临沂市', '370000');
INSERT INTO `cities` VALUES (151, '371400', '德州市', '370000');
INSERT INTO `cities` VALUES (152, '371500', '聊城市', '370000');
INSERT INTO `cities` VALUES (153, '371600', '滨州市', '370000');
INSERT INTO `cities` VALUES (154, '371700', '荷泽市', '370000');
INSERT INTO `cities` VALUES (155, '410100', '郑州市', '410000');
INSERT INTO `cities` VALUES (156, '410200', '开封市', '410000');
INSERT INTO `cities` VALUES (157, '410300', '洛阳市', '410000');
INSERT INTO `cities` VALUES (158, '410400', '平顶山市', '410000');
INSERT INTO `cities` VALUES (159, '410500', '安阳市', '410000');
INSERT INTO `cities` VALUES (160, '410600', '鹤壁市', '410000');
INSERT INTO `cities` VALUES (161, '410700', '新乡市', '410000');
INSERT INTO `cities` VALUES (162, '410800', '焦作市', '410000');
INSERT INTO `cities` VALUES (163, '410900', '濮阳市', '410000');
INSERT INTO `cities` VALUES (164, '411000', '许昌市', '410000');
INSERT INTO `cities` VALUES (165, '411100', '漯河市', '410000');
INSERT INTO `cities` VALUES (166, '411200', '三门峡市', '410000');
INSERT INTO `cities` VALUES (167, '411300', '南阳市', '410000');
INSERT INTO `cities` VALUES (168, '411400', '商丘市', '410000');
INSERT INTO `cities` VALUES (169, '411500', '信阳市', '410000');
INSERT INTO `cities` VALUES (170, '411600', '周口市', '410000');
INSERT INTO `cities` VALUES (171, '411700', '驻马店市', '410000');
INSERT INTO `cities` VALUES (172, '420100', '武汉市', '420000');
INSERT INTO `cities` VALUES (173, '420200', '黄石市', '420000');
INSERT INTO `cities` VALUES (174, '420300', '十堰市', '420000');
INSERT INTO `cities` VALUES (175, '420500', '宜昌市', '420000');
INSERT INTO `cities` VALUES (176, '420600', '襄樊市', '420000');
INSERT INTO `cities` VALUES (177, '420700', '鄂州市', '420000');
INSERT INTO `cities` VALUES (178, '420800', '荆门市', '420000');
INSERT INTO `cities` VALUES (179, '420900', '孝感市', '420000');
INSERT INTO `cities` VALUES (180, '421000', '荆州市', '420000');
INSERT INTO `cities` VALUES (181, '421100', '黄冈市', '420000');
INSERT INTO `cities` VALUES (182, '421200', '咸宁市', '420000');
INSERT INTO `cities` VALUES (183, '421300', '随州市', '420000');
INSERT INTO `cities` VALUES (184, '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `cities` VALUES (185, '429000', '省直辖行政单位', '420000');
INSERT INTO `cities` VALUES (186, '430100', '长沙市', '430000');
INSERT INTO `cities` VALUES (187, '430200', '株洲市', '430000');
INSERT INTO `cities` VALUES (188, '430300', '湘潭市', '430000');
INSERT INTO `cities` VALUES (189, '430400', '衡阳市', '430000');
INSERT INTO `cities` VALUES (190, '430500', '邵阳市', '430000');
INSERT INTO `cities` VALUES (191, '430600', '岳阳市', '430000');
INSERT INTO `cities` VALUES (192, '430700', '常德市', '430000');
INSERT INTO `cities` VALUES (193, '430800', '张家界市', '430000');
INSERT INTO `cities` VALUES (194, '430900', '益阳市', '430000');
INSERT INTO `cities` VALUES (195, '431000', '郴州市', '430000');
INSERT INTO `cities` VALUES (196, '431100', '永州市', '430000');
INSERT INTO `cities` VALUES (197, '431200', '怀化市', '430000');
INSERT INTO `cities` VALUES (198, '431300', '娄底市', '430000');
INSERT INTO `cities` VALUES (199, '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `cities` VALUES (200, '440100', '广州市', '440000');
INSERT INTO `cities` VALUES (201, '440200', '韶关市', '440000');
INSERT INTO `cities` VALUES (202, '440300', '深圳市', '440000');
INSERT INTO `cities` VALUES (203, '440400', '珠海市', '440000');
INSERT INTO `cities` VALUES (204, '440500', '汕头市', '440000');
INSERT INTO `cities` VALUES (205, '440600', '佛山市', '440000');
INSERT INTO `cities` VALUES (206, '440700', '江门市', '440000');
INSERT INTO `cities` VALUES (207, '440800', '湛江市', '440000');
INSERT INTO `cities` VALUES (208, '440900', '茂名市', '440000');
INSERT INTO `cities` VALUES (209, '441200', '肇庆市', '440000');
INSERT INTO `cities` VALUES (210, '441300', '惠州市', '440000');
INSERT INTO `cities` VALUES (211, '441400', '梅州市', '440000');
INSERT INTO `cities` VALUES (212, '441500', '汕尾市', '440000');
INSERT INTO `cities` VALUES (213, '441600', '河源市', '440000');
INSERT INTO `cities` VALUES (214, '441700', '阳江市', '440000');
INSERT INTO `cities` VALUES (215, '441800', '清远市', '440000');
INSERT INTO `cities` VALUES (216, '441900', '东莞市', '440000');
INSERT INTO `cities` VALUES (217, '442000', '中山市', '440000');
INSERT INTO `cities` VALUES (218, '445100', '潮州市', '440000');
INSERT INTO `cities` VALUES (219, '445200', '揭阳市', '440000');
INSERT INTO `cities` VALUES (220, '445300', '云浮市', '440000');
INSERT INTO `cities` VALUES (221, '450100', '南宁市', '450000');
INSERT INTO `cities` VALUES (222, '450200', '柳州市', '450000');
INSERT INTO `cities` VALUES (223, '450300', '桂林市', '450000');
INSERT INTO `cities` VALUES (224, '450400', '梧州市', '450000');
INSERT INTO `cities` VALUES (225, '450500', '北海市', '450000');
INSERT INTO `cities` VALUES (226, '450600', '防城港市', '450000');
INSERT INTO `cities` VALUES (227, '450700', '钦州市', '450000');
INSERT INTO `cities` VALUES (228, '450800', '贵港市', '450000');
INSERT INTO `cities` VALUES (229, '450900', '玉林市', '450000');
INSERT INTO `cities` VALUES (230, '451000', '百色市', '450000');
INSERT INTO `cities` VALUES (231, '451100', '贺州市', '450000');
INSERT INTO `cities` VALUES (232, '451200', '河池市', '450000');
INSERT INTO `cities` VALUES (233, '451300', '来宾市', '450000');
INSERT INTO `cities` VALUES (234, '451400', '崇左市', '450000');
INSERT INTO `cities` VALUES (235, '460100', '海口市', '460000');
INSERT INTO `cities` VALUES (236, '460200', '三亚市', '460000');
INSERT INTO `cities` VALUES (237, '469000', '省直辖县级行政单位', '460000');
INSERT INTO `cities` VALUES (238, '500100', '重庆市', '500000');
INSERT INTO `cities` VALUES (239, '5002xx', '重庆下属县', '5000xx');
INSERT INTO `cities` VALUES (240, '5003xx', '重庆下属市', '5000xx');
INSERT INTO `cities` VALUES (241, '510100', '成都市', '510000');
INSERT INTO `cities` VALUES (242, '510300', '自贡市', '510000');
INSERT INTO `cities` VALUES (243, '510400', '攀枝花市', '510000');
INSERT INTO `cities` VALUES (244, '510500', '泸州市', '510000');
INSERT INTO `cities` VALUES (245, '510600', '德阳市', '510000');
INSERT INTO `cities` VALUES (246, '510700', '绵阳市', '510000');
INSERT INTO `cities` VALUES (247, '510800', '广元市', '510000');
INSERT INTO `cities` VALUES (248, '510900', '遂宁市', '510000');
INSERT INTO `cities` VALUES (249, '511000', '内江市', '510000');
INSERT INTO `cities` VALUES (250, '511100', '乐山市', '510000');
INSERT INTO `cities` VALUES (251, '511300', '南充市', '510000');
INSERT INTO `cities` VALUES (252, '511400', '眉山市', '510000');
INSERT INTO `cities` VALUES (253, '511500', '宜宾市', '510000');
INSERT INTO `cities` VALUES (254, '511600', '广安市', '510000');
INSERT INTO `cities` VALUES (255, '511700', '达州市', '510000');
INSERT INTO `cities` VALUES (256, '511800', '雅安市', '510000');
INSERT INTO `cities` VALUES (257, '511900', '巴中市', '510000');
INSERT INTO `cities` VALUES (258, '512000', '资阳市', '510000');
INSERT INTO `cities` VALUES (259, '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `cities` VALUES (260, '513300', '甘孜藏族自治州', '510000');
INSERT INTO `cities` VALUES (261, '513400', '凉山彝族自治州', '510000');
INSERT INTO `cities` VALUES (262, '520100', '贵阳市', '520000');
INSERT INTO `cities` VALUES (263, '520200', '六盘水市', '520000');
INSERT INTO `cities` VALUES (264, '520300', '遵义市', '520000');
INSERT INTO `cities` VALUES (265, '520400', '安顺市', '520000');
INSERT INTO `cities` VALUES (266, '522200', '铜仁地区', '520000');
INSERT INTO `cities` VALUES (267, '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `cities` VALUES (268, '522400', '毕节地区', '520000');
INSERT INTO `cities` VALUES (269, '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `cities` VALUES (270, '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `cities` VALUES (271, '530100', '昆明市', '530000');
INSERT INTO `cities` VALUES (272, '530300', '曲靖市', '530000');
INSERT INTO `cities` VALUES (273, '530400', '玉溪市', '530000');
INSERT INTO `cities` VALUES (274, '530500', '保山市', '530000');
INSERT INTO `cities` VALUES (275, '530600', '昭通市', '530000');
INSERT INTO `cities` VALUES (276, '530700', '丽江市', '530000');
INSERT INTO `cities` VALUES (277, '530800', '思茅市', '530000');
INSERT INTO `cities` VALUES (278, '530900', '临沧市', '530000');
INSERT INTO `cities` VALUES (279, '532300', '楚雄彝族自治州', '530000');
INSERT INTO `cities` VALUES (280, '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `cities` VALUES (281, '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `cities` VALUES (282, '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `cities` VALUES (283, '532900', '大理白族自治州', '530000');
INSERT INTO `cities` VALUES (284, '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `cities` VALUES (285, '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `cities` VALUES (286, '533400', '迪庆藏族自治州', '530000');
INSERT INTO `cities` VALUES (287, '540100', '拉萨市', '540000');
INSERT INTO `cities` VALUES (288, '542100', '昌都地区', '540000');
INSERT INTO `cities` VALUES (289, '542200', '山南地区', '540000');
INSERT INTO `cities` VALUES (290, '542300', '日喀则地区', '540000');
INSERT INTO `cities` VALUES (291, '542400', '那曲地区', '540000');
INSERT INTO `cities` VALUES (292, '542500', '阿里地区', '540000');
INSERT INTO `cities` VALUES (293, '542600', '林芝地区', '540000');
INSERT INTO `cities` VALUES (294, '610100', '西安市', '610000');
INSERT INTO `cities` VALUES (295, '610200', '铜川市', '610000');
INSERT INTO `cities` VALUES (296, '610300', '宝鸡市', '610000');
INSERT INTO `cities` VALUES (297, '610400', '咸阳市', '610000');
INSERT INTO `cities` VALUES (298, '610500', '渭南市', '610000');
INSERT INTO `cities` VALUES (299, '610600', '延安市', '610000');
INSERT INTO `cities` VALUES (300, '610700', '汉中市', '610000');
INSERT INTO `cities` VALUES (301, '610800', '榆林市', '610000');
INSERT INTO `cities` VALUES (302, '610900', '安康市', '610000');
INSERT INTO `cities` VALUES (303, '611000', '商洛市', '610000');
INSERT INTO `cities` VALUES (304, '620100', '兰州市', '620000');
INSERT INTO `cities` VALUES (305, '620200', '嘉峪关市', '620000');
INSERT INTO `cities` VALUES (306, '620300', '金昌市', '620000');
INSERT INTO `cities` VALUES (307, '620400', '白银市', '620000');
INSERT INTO `cities` VALUES (308, '620500', '天水市', '620000');
INSERT INTO `cities` VALUES (309, '620600', '武威市', '620000');
INSERT INTO `cities` VALUES (310, '620700', '张掖市', '620000');
INSERT INTO `cities` VALUES (311, '620800', '平凉市', '620000');
INSERT INTO `cities` VALUES (312, '620900', '酒泉市', '620000');
INSERT INTO `cities` VALUES (313, '621000', '庆阳市', '620000');
INSERT INTO `cities` VALUES (314, '621100', '定西市', '620000');
INSERT INTO `cities` VALUES (315, '621200', '陇南市', '620000');
INSERT INTO `cities` VALUES (316, '622900', '临夏回族自治州', '620000');
INSERT INTO `cities` VALUES (317, '623000', '甘南藏族自治州', '620000');
INSERT INTO `cities` VALUES (318, '630100', '西宁市', '630000');
INSERT INTO `cities` VALUES (319, '632100', '海东地区', '630000');
INSERT INTO `cities` VALUES (320, '632200', '海北藏族自治州', '630000');
INSERT INTO `cities` VALUES (321, '632300', '黄南藏族自治州', '630000');
INSERT INTO `cities` VALUES (322, '632500', '海南藏族自治州', '630000');
INSERT INTO `cities` VALUES (323, '632600', '果洛藏族自治州', '630000');
INSERT INTO `cities` VALUES (324, '632700', '玉树藏族自治州', '630000');
INSERT INTO `cities` VALUES (325, '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `cities` VALUES (326, '640100', '银川市', '640000');
INSERT INTO `cities` VALUES (327, '640200', '石嘴山市', '640000');
INSERT INTO `cities` VALUES (328, '640300', '吴忠市', '640000');
INSERT INTO `cities` VALUES (329, '640400', '固原市', '640000');
INSERT INTO `cities` VALUES (330, '640500', '中卫市', '640000');
INSERT INTO `cities` VALUES (331, '650100', '乌鲁木齐市', '650000');
INSERT INTO `cities` VALUES (332, '650200', '克拉玛依市', '650000');
INSERT INTO `cities` VALUES (333, '652100', '吐鲁番地区', '650000');
INSERT INTO `cities` VALUES (334, '652200', '哈密地区', '650000');
INSERT INTO `cities` VALUES (335, '652300', '昌吉回族自治州', '650000');
INSERT INTO `cities` VALUES (336, '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `cities` VALUES (337, '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `cities` VALUES (338, '652900', '阿克苏地区', '650000');
INSERT INTO `cities` VALUES (339, '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `cities` VALUES (340, '653100', '喀什地区', '650000');
INSERT INTO `cities` VALUES (341, '653200', '和田地区', '650000');
INSERT INTO `cities` VALUES (342, '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `cities` VALUES (343, '654200', '塔城地区', '650000');
INSERT INTO `cities` VALUES (344, '654300', '阿勒泰地区', '650000');
INSERT INTO `cities` VALUES (345, '659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for cw_admin_account
-- ----------------------------
DROP TABLE IF EXISTS `cw_admin_account`;
CREATE TABLE `cw_admin_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `admin_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员账号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cw_car_image
-- ----------------------------
DROP TABLE IF EXISTS `cw_car_image`;
CREATE TABLE `cw_car_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `car_info_id` int(11) NULL DEFAULT NULL COMMENT '车辆信息编号',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_car_image
-- ----------------------------
INSERT INTO `cw_car_image` VALUES (1, 1, '/car/df61f8675c920c2896758297767e1e0a.jpg');
INSERT INTO `cw_car_image` VALUES (4, 1, '/car/ec0079b3181e55d7e4e5b831081bd146.jpg');
INSERT INTO `cw_car_image` VALUES (5, 1, '/car/afc1835e50705db6f1c17ca800891375.jpg');
INSERT INTO `cw_car_image` VALUES (6, 2, '/car/218017e23354571d5885cc94c07b69e8.jpg');
INSERT INTO `cw_car_image` VALUES (7, 2, '/car/51150e59615556e6d182cb6532a595d6.jpg');
INSERT INTO `cw_car_image` VALUES (8, 3, '/car/5bf31e4a5acb7b76841e69ec6ac16d89.jpg');
INSERT INTO `cw_car_image` VALUES (9, 4, '/car/1d6ecde16a2c3142356886c6f1500598.jpg');
INSERT INTO `cw_car_image` VALUES (10, 5, '/car/dd6d1b71469acd8094c51a53f8a38487.jpg');
INSERT INTO `cw_car_image` VALUES (11, 6, '/car/837f7321d5dc30f0a85a9785533fbe16.jpg');
INSERT INTO `cw_car_image` VALUES (12, 7, '/car/c00e279a15a5ab2c4116ac15e6e472e2.jpg');
INSERT INTO `cw_car_image` VALUES (13, 8, '/car/40ee69fba91f995d0396f2c645010c85.jpg');
INSERT INTO `cw_car_image` VALUES (14, 9, '/car/f534bd3099bb3b9e61b145325361d9c0.jpg');

-- ----------------------------
-- Table structure for cw_car_info
-- ----------------------------
DROP TABLE IF EXISTS `cw_car_info`;
CREATE TABLE `cw_car_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `car_licence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆型号',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `car_addr_lng` decimal(18, 6) NULL DEFAULT NULL COMMENT '车位地址(经度)',
  `car_addr_lat` decimal(18, 6) NULL DEFAULT NULL COMMENT '车位地址(纬度)',
  `owner_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属账号',
  `car_default` bit(1) NULL DEFAULT NULL COMMENT '是否默认',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_car_info
-- ----------------------------
INSERT INTO `cw_car_info` VALUES (1, '豫A37899', '奥迪', 'A6L', '黑色', 113.665914, 34.799646, '18625521997', b'0');
INSERT INTO `cw_car_info` VALUES (2, '豫A12X21', '丰田', '凯美瑞X', '红色', 113.629017, 34.835466, '18625521997', b'1');
INSERT INTO `cw_car_info` VALUES (3, '豫A88888', '奥迪', 'A6', '黑色', 113.739384, 34.839079, '15225432912', b'1');

-- ----------------------------
-- Table structure for cw_consumer_account
-- ----------------------------
DROP TABLE IF EXISTS `cw_consumer_account`;
CREATE TABLE `cw_consumer_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `consumer_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者账号/手机号',
  `consumer_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者密码',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消费者账号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_consumer_account
-- ----------------------------
INSERT INTO `cw_consumer_account` VALUES (1, '18625521000', '4a20c709542300dd952f525ea9f44f93', NULL);
INSERT INTO `cw_consumer_account` VALUES (7, '18625521998', NULL, NULL);
INSERT INTO `cw_consumer_account` VALUES (11, '15515746513', NULL, NULL);
INSERT INTO `cw_consumer_account` VALUES (12, '18625521997', NULL, 'oDsBK5MtTKI-Hr4r7D5DhnMn9ZWE');
INSERT INTO `cw_consumer_account` VALUES (13, '15225432912', NULL, 'oDsBK5CleBQcDOzrm_HeDQCJ21dw');

-- ----------------------------
-- Table structure for cw_container_box
-- ----------------------------
DROP TABLE IF EXISTS `cw_container_box`;
CREATE TABLE `cw_container_box`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'uuid',
  `container_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '柜号',
  `box_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '箱号',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '校验码',
  `status_id` int(11) NULL DEFAULT NULL COMMENT '状态id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货柜格子信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_container_box
-- ----------------------------
INSERT INTO `cw_container_box` VALUES (1, '09968090f5564caeb2a8e7d36e0c9571', '01', '01', '47', 601);
INSERT INTO `cw_container_box` VALUES (2, '09968090f5564caeb2a8e7d36e0c9571', '01', '02', '44', 601);
INSERT INTO `cw_container_box` VALUES (3, '09968090f5564caeb2a8e7d36e0c9571', '01', '03', '45', 600);
INSERT INTO `cw_container_box` VALUES (4, '09968090f5564caeb2a8e7d36e0c9571', '01', '04', '42', 600);
INSERT INTO `cw_container_box` VALUES (5, '09968090f5564caeb2a8e7d36e0c9571', '01', '05', '43', 600);
INSERT INTO `cw_container_box` VALUES (6, '09968090f5564caeb2a8e7d36e0c9571', '01', '06', '40', 600);
INSERT INTO `cw_container_box` VALUES (7, '09968090f5564caeb2a8e7d36e0c9571', '01', '07', '41', 600);
INSERT INTO `cw_container_box` VALUES (8, '09968090f5564caeb2a8e7d36e0c9571', '01', '08', '4E', 600);
INSERT INTO `cw_container_box` VALUES (9, '09968090f5564caeb2a8e7d36e0c9571', '01', '09', '4F', 600);
INSERT INTO `cw_container_box` VALUES (10, '09968090f5564caeb2a8e7d36e0c9571', '01', '0A', '4C', 600);
INSERT INTO `cw_container_box` VALUES (11, '09968090f5564caeb2a8e7d36e0c9571', '01', '0B', '4D', 600);
INSERT INTO `cw_container_box` VALUES (12, '09968090f5564caeb2a8e7d36e0c9571', '01', '0C', '4A', 600);

-- ----------------------------
-- Table structure for cw_default_service
-- ----------------------------
DROP TABLE IF EXISTS `cw_default_service`;
CREATE TABLE `cw_default_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `service_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '默认业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_default_service
-- ----------------------------
INSERT INTO `cw_default_service` VALUES (1, '普通清洗', '美光蜡洗车、风干、吸尘');
INSERT INTO `cw_default_service` VALUES (2, '地毯清洗', '湿洗');
INSERT INTO `cw_default_service` VALUES (3, '臭氧负离子消毒', '臭氧负离子机室内消毒');
INSERT INTO `cw_default_service` VALUES (4, '真皮护理', '真皮座椅清洁、去污、上光护理');
INSERT INTO `cw_default_service` VALUES (5, '内饰清洗', '座椅、中控、地毯清洗');

-- ----------------------------
-- Table structure for cw_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `cw_evaluate`;
CREATE TABLE `cw_evaluate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `store_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务编号',
  `push_time` datetime(0) NULL DEFAULT NULL COMMENT '发表时间',
  `consumer_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论账号',
  `star` int(11) NULL DEFAULT NULL COMMENT '好评星级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_evaluate
-- ----------------------------
INSERT INTO `cw_evaluate` VALUES (2, '1001', '2019-05-06 21:27:55', '18625521997', 5);
INSERT INTO `cw_evaluate` VALUES (3, '1001', '2019-05-06 21:32:28', '18625521997', 5);
INSERT INTO `cw_evaluate` VALUES (4, '1001', '2019-05-07 12:19:24', '18625521997', 4);
INSERT INTO `cw_evaluate` VALUES (5, '1002', '2019-05-07 22:26:44', '18625521997', 5);
INSERT INTO `cw_evaluate` VALUES (6, '1003', '2019-05-07 22:26:57', '18625521997', 3);
INSERT INTO `cw_evaluate` VALUES (7, '1004', '2019-05-07 22:27:08', '18625521997', 4);
INSERT INTO `cw_evaluate` VALUES (8, '1005', '2019-05-07 22:27:19', '18625521997', 5);
INSERT INTO `cw_evaluate` VALUES (9, '1006', '2019-05-07 22:27:30', '18625521997', 3);
INSERT INTO `cw_evaluate` VALUES (10, '1008', '2019-05-07 22:27:41', '18625521997', 4);
INSERT INTO `cw_evaluate` VALUES (11, '1009', '2019-05-07 22:27:49', '18625521997', 4);
INSERT INTO `cw_evaluate` VALUES (12, '1010', '2019-05-07 22:27:58', '18625521997', 5);
INSERT INTO `cw_evaluate` VALUES (13, '1001', '2019-05-08 09:59:16', '18625521997', 5);
INSERT INTO `cw_evaluate` VALUES (14, '1001', '2019-05-08 14:24:01', '18625521997', 5);

-- ----------------------------
-- Table structure for cw_expect_cost
-- ----------------------------
DROP TABLE IF EXISTS `cw_expect_cost`;
CREATE TABLE `cw_expect_cost`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `min_charge` int(11) NULL DEFAULT NULL COMMENT '最低消费',
  `max_charge` int(11) NULL DEFAULT NULL COMMENT '最高消费',
  `expect_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预算表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_expect_cost
-- ----------------------------
INSERT INTO `cw_expect_cost` VALUES (1, 0, 50, '50元以下');
INSERT INTO `cw_expect_cost` VALUES (2, 50, 100, '50-100元');
INSERT INTO `cw_expect_cost` VALUES (3, 100, 200, '100-200元');
INSERT INTO `cw_expect_cost` VALUES (4, 200, 500, '200-500元');
INSERT INTO `cw_expect_cost` VALUES (5, 500, 99999, '500以上');

-- ----------------------------
-- Table structure for cw_key_container
-- ----------------------------
DROP TABLE IF EXISTS `cw_key_container`;
CREATE TABLE `cw_key_container`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'UUID',
  `container_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `pos_lng` decimal(18, 6) NULL DEFAULT NULL COMMENT '经度',
  `pos_lat` decimal(18, 6) NULL DEFAULT NULL COMMENT '纬度',
  `cityid` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钥匙柜表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_key_container
-- ----------------------------
INSERT INTO `cw_key_container` VALUES (1, '09968090f5564caeb2a8e7d36e0c9571', '杨金路钥匙柜', 113.740714, 34.842269, '410100');
INSERT INTO `cw_key_container` VALUES (2, 'd869fbf5119f4a508347106a67ce673f', '二七广场钥匙柜', 113.666427, 34.751362, '410100');
INSERT INTO `cw_key_container` VALUES (3, '122c5ae513ae463f949b79b1ded4b772', '农业路文化路钥匙柜', 113.666572, 34.787083, '410100');
INSERT INTO `cw_key_container` VALUES (4, '55062e0e38e44c21850c12bbb5406e38', '花园路沙门村钥匙柜', 113.675764, 34.823272, '410100');
INSERT INTO `cw_key_container` VALUES (5, '16056bfcd3744a78bf500aac43e53119', '三全路丰庆路钥匙柜', 113.648343, 34.830182, '410100');
INSERT INTO `cw_key_container` VALUES (6, 'b8af8ec5a360415f9f7bc63c27a5734e', '国基路金杯路钥匙柜', 113.630486, 34.819696, '410100');
INSERT INTO `cw_key_container` VALUES (7, '59d79dad6d6b44358656ca5a12822d0a', '东风路文化路钥匙柜', 113.665914, 34.799646, '410100');
INSERT INTO `cw_key_container` VALUES (8, '9948fb8865e74977ac6a2b513cf19463', '东风路农业路钥匙柜', 113.668004, 34.786845, '410100');
INSERT INTO `cw_key_container` VALUES (9, '674e419b10254acbaffde6c0b2b72f7d', '花园路农业路钥匙柜', 113.681643, 34.786389, '410100');
INSERT INTO `cw_key_container` VALUES (10, '027cbf6f2c084213ba3f1b968fd7077e', '儿童医院钥匙柜', 113.658066, 34.769035, '410100');
INSERT INTO `cw_key_container` VALUES (11, 'c7cef2c5eb7c497885d9797ae94e0032', '文化路45号院钥匙柜', 113.667566, 34.778832, '410100');
INSERT INTO `cw_key_container` VALUES (12, '568f1c1116984f9c89b3b407bbbf2af4', '金水路小区钥匙柜', 113.672620, 34.780940, '410100');
INSERT INTO `cw_key_container` VALUES (13, '1b132e17390e4eee9d1d46bd1cd1b7c5', '碧林园小区钥匙柜', 113.662812, 34.796883, '410100');
INSERT INTO `cw_key_container` VALUES (14, '1fe1fb655e7845208166863784e41c0a', '和谐家园钥匙柜', 113.870640, 34.683994, '410100');

-- ----------------------------
-- Table structure for cw_key_info
-- ----------------------------
DROP TABLE IF EXISTS `cw_key_info`;
CREATE TABLE `cw_key_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `container_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钥匙柜编号',
  `status_id` int(11) NULL DEFAULT NULL COMMENT '状态编号',
  `verify_code` int(6) NULL DEFAULT NULL COMMENT '验证码',
  `container_box_id` int(11) NULL DEFAULT NULL COMMENT '钥匙柜格子编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '钥匙信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_key_info
-- ----------------------------
INSERT INTO `cw_key_info` VALUES (1, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (2, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (3, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (4, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (5, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (6, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (7, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (8, 'd869fbf5119f4a508347106a67ce673f', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (12, '09968090f5564caeb2a8e7d36e0c9571', 300, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (13, '09968090f5564caeb2a8e7d36e0c9571', 300, 247941, NULL);
INSERT INTO `cw_key_info` VALUES (14, '09968090f5564caeb2a8e7d36e0c9571', 300, 464935, NULL);
INSERT INTO `cw_key_info` VALUES (15, '09968090f5564caeb2a8e7d36e0c9571', 300, 376970, NULL);
INSERT INTO `cw_key_info` VALUES (16, '09968090f5564caeb2a8e7d36e0c9571', 300, 269200, NULL);
INSERT INTO `cw_key_info` VALUES (17, '09968090f5564caeb2a8e7d36e0c9571', 300, 113532, NULL);
INSERT INTO `cw_key_info` VALUES (18, '09968090f5564caeb2a8e7d36e0c9571', 300, 198961, NULL);
INSERT INTO `cw_key_info` VALUES (19, '09968090f5564caeb2a8e7d36e0c9571', 300, 251908, NULL);
INSERT INTO `cw_key_info` VALUES (20, '09968090f5564caeb2a8e7d36e0c9571', 300, 133060, NULL);
INSERT INTO `cw_key_info` VALUES (21, '09968090f5564caeb2a8e7d36e0c9571', 300, 735473, NULL);
INSERT INTO `cw_key_info` VALUES (23, '09968090f5564caeb2a8e7d36e0c9571', 301, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (24, '09968090f5564caeb2a8e7d36e0c9571', 301, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (25, '09968090f5564caeb2a8e7d36e0c9571', 300, 860818, 2);
INSERT INTO `cw_key_info` VALUES (26, '09968090f5564caeb2a8e7d36e0c9571', 300, 343136, 3);
INSERT INTO `cw_key_info` VALUES (27, '09968090f5564caeb2a8e7d36e0c9571', 300, 209428, 1);
INSERT INTO `cw_key_info` VALUES (28, '09968090f5564caeb2a8e7d36e0c9571', 300, 164010, 2);
INSERT INTO `cw_key_info` VALUES (29, '09968090f5564caeb2a8e7d36e0c9571', 301, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (30, '09968090f5564caeb2a8e7d36e0c9571', 300, 162464, 1);
INSERT INTO `cw_key_info` VALUES (31, '09968090f5564caeb2a8e7d36e0c9571', 300, 605731, 2);
INSERT INTO `cw_key_info` VALUES (32, '09968090f5564caeb2a8e7d36e0c9571', 300, 377197, 3);
INSERT INTO `cw_key_info` VALUES (33, '09968090f5564caeb2a8e7d36e0c9571', 300, 907037, 4);
INSERT INTO `cw_key_info` VALUES (34, '09968090f5564caeb2a8e7d36e0c9571', 300, 370646, 5);
INSERT INTO `cw_key_info` VALUES (35, '09968090f5564caeb2a8e7d36e0c9571', 300, 497638, 6);
INSERT INTO `cw_key_info` VALUES (36, '09968090f5564caeb2a8e7d36e0c9571', 300, 621819, 7);
INSERT INTO `cw_key_info` VALUES (37, '09968090f5564caeb2a8e7d36e0c9571', 300, 943658, 8);
INSERT INTO `cw_key_info` VALUES (38, '09968090f5564caeb2a8e7d36e0c9571', 300, 706925, 9);
INSERT INTO `cw_key_info` VALUES (39, '09968090f5564caeb2a8e7d36e0c9571', 300, 360152, 1);
INSERT INTO `cw_key_info` VALUES (40, '09968090f5564caeb2a8e7d36e0c9571', 301, NULL, NULL);
INSERT INTO `cw_key_info` VALUES (41, '09968090f5564caeb2a8e7d36e0c9571', 300, 499508, 1);
INSERT INTO `cw_key_info` VALUES (42, '09968090f5564caeb2a8e7d36e0c9571', 300, 708941, 2);
INSERT INTO `cw_key_info` VALUES (43, '09968090f5564caeb2a8e7d36e0c9571', 300, 579777, 3);

-- ----------------------------
-- Table structure for cw_limits
-- ----------------------------
DROP TABLE IF EXISTS `cw_limits`;
CREATE TABLE `cw_limits`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `limits_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名',
  `limits_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cw_log_image
-- ----------------------------
DROP TABLE IF EXISTS `cw_log_image`;
CREATE TABLE `cw_log_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `log_id` int(11) NULL DEFAULT NULL COMMENT '日志编号',
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_log_image
-- ----------------------------
INSERT INTO `cw_log_image` VALUES (1, 4, '/washcar/e8afb3f565fb1eb193bd42de8c9ac70c.jpg');
INSERT INTO `cw_log_image` VALUES (2, 5, '/washcar/596321cf65ee5d9f87dcb4549f3b1b69.jpg');
INSERT INTO `cw_log_image` VALUES (3, 6, '/washcar/2234d3ddb2e4ae30625b1d339642a060.jpg');
INSERT INTO `cw_log_image` VALUES (4, 7, '/washcar/b4bbf17769827b3d51bedc08a3c14256.jpg');
INSERT INTO `cw_log_image` VALUES (5, 8, '/washcar/af136de887f982eb65066a3aa79a3478.jpg');
INSERT INTO `cw_log_image` VALUES (6, 9, '/washcar/f3084c8f92a6aedd5566d61bd7d93d4a.jpg');
INSERT INTO `cw_log_image` VALUES (7, 10, '/washcar/8e53a7c2e92c6ea278d3a91998a1b5ac.jpg');
INSERT INTO `cw_log_image` VALUES (8, 11, '/washcar/fa59a81fe4cc78f87294a78f350f4895.jpg');
INSERT INTO `cw_log_image` VALUES (9, 12, '/washcar/16152e66580dfe91b69e9c7366589c66.jpg');
INSERT INTO `cw_log_image` VALUES (10, 13, '/washcar/558e40b7b273297472df7f5a836f351c.jpg');
INSERT INTO `cw_log_image` VALUES (11, 14, '/washcar/6a66f11de5e13073b5d0643ff9e17e8b.jpg');
INSERT INTO `cw_log_image` VALUES (12, 15, '/washcar/a6ce17b57286c1e64156406950667755.jpg');
INSERT INTO `cw_log_image` VALUES (13, 16, '/washcar/d2ce96bff5deec10582a60abce739f67.jpg');
INSERT INTO `cw_log_image` VALUES (14, 17, '/washcar/cc5534981b0c2574d8a28c4607531c7c.jpg');
INSERT INTO `cw_log_image` VALUES (15, 18, '/washcar/a1582bf3e7466fd683734f7ea3dcda3a.jpg');
INSERT INTO `cw_log_image` VALUES (16, 19, '/washcar/c8460bcd2cbd1a3f8071457e98905b56.jpg');
INSERT INTO `cw_log_image` VALUES (17, 20, '/washcar/e848495aa56abed2e7b7b638f44230c8.jpg');
INSERT INTO `cw_log_image` VALUES (18, 21, '/washcar/56c3e45c4789df5f9dc7ec62dfa5a7d3.jpg');
INSERT INTO `cw_log_image` VALUES (19, 22, '/washcar/e9df78098e0163d420b6089034fc25f7.jpg');
INSERT INTO `cw_log_image` VALUES (20, 23, '/washcar/a87085d1da10fb4dc9d30a5e5dcea9e2.jpg');
INSERT INTO `cw_log_image` VALUES (21, 24, '/washcar/75bf45572e1dea337144d92e5cafbad5.jpg');
INSERT INTO `cw_log_image` VALUES (22, 25, '/washcar/f70aec8f73a5d082646e6b3389cf0291.jpg');
INSERT INTO `cw_log_image` VALUES (23, 26, '/washcar/80dce00bfcb428dca04a20ee83235d3a.jpg');
INSERT INTO `cw_log_image` VALUES (24, 27, '/washcar/35d0afeac80bdbf5e440a45ac5625576.jpg');
INSERT INTO `cw_log_image` VALUES (25, 28, '/washcar/a585ec361d9c01bfc479d175709c6ba6.jpg');
INSERT INTO `cw_log_image` VALUES (26, 29, '/washcar/715fd04a00c48358d632361b6b8ff31f.jpg');

-- ----------------------------
-- Table structure for cw_model
-- ----------------------------
DROP TABLE IF EXISTS `cw_model`;
CREATE TABLE `cw_model`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `model_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '模式名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模式表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_model
-- ----------------------------
INSERT INTO `cw_model` VALUES (0, '快速下单');
INSERT INTO `cw_model` VALUES (1, '指定门店下单');

-- ----------------------------
-- Table structure for cw_order
-- ----------------------------
DROP TABLE IF EXISTS `cw_order`;
CREATE TABLE `cw_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `consumer_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者账号',
  `store_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `status_id` int(11) NULL DEFAULT NULL COMMENT '订单状态编号',
  `pay_status_id` int(11) NULL DEFAULT NULL COMMENT '付款状态编号',
  `pay_date` datetime(0) NULL DEFAULT NULL COMMENT '付款时间',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `finish_date` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `car_id` int(11) NULL DEFAULT NULL COMMENT '车辆编号',
  `car_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆所在地址',
  `key_info_id` int(11) NULL DEFAULT NULL COMMENT '钥匙信息编号',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '模式编号',
  `user_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作人员账号',
  `order_comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `appointment_time` datetime(0) NULL DEFAULT NULL COMMENT '预约时间',
  `time_quantum` int(1) NULL DEFAULT NULL COMMENT '时间段',
  `expect_cost_id` int(1) NULL DEFAULT NULL COMMENT '预算范围编号',
  `journey` int(255) NULL DEFAULT NULL COMMENT '路程',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_order
-- ----------------------------
INSERT INTO `cw_order` VALUES (6, '3440602991495', '18625521997', '1001', 206, NULL, '2019-04-23 11:08:09', '2019-04-19 15:51:40', '2019-04-23 11:08:54', 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', 1, 0, NULL, '好好洗', '2019-04-19 00:00:00', 4, 2, NULL);
INSERT INTO `cw_order` VALUES (7, '1763605538513', '18625521997', '1002', 201, NULL, NULL, '2019-04-19 15:55:54', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', 1, 0, NULL, '使劲搓！！', '2019-04-19 00:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (8, '2955615071534', '18625521997', '1003', 201, NULL, NULL, '2019-04-19 16:11:48', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', 8, 0, NULL, '无', '2019-04-19 00:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (9, '4387623793844', '18625521997', '1001', 201, NULL, NULL, '2019-04-19 16:26:19', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 0, NULL, '哈哈哈哈哈哈', '2019-04-19 20:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (10, '1151624064628', '18625521997', '1004', 202, NULL, '2019-04-22 21:38:41', '2019-04-19 16:26:47', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 0, NULL, '哈哈哈哈哈哈1111', '2019-04-19 20:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (11, '8059624311013', '18625521997', '1001', 201, NULL, NULL, '2019-04-19 16:27:11', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 1, NULL, 'titititititit', '2019-04-19 08:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (12, '2120627929316', '18625521997', '1001', 201, NULL, NULL, '2019-04-19 16:33:13', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 1, NULL, 'titititititit', '2019-04-19 08:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (13, '3111068407467', '18625521997', '1001', 208, NULL, NULL, '2019-04-22 12:20:41', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 0, '13608430215', 'asdada', '2019-04-22 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (14, '3809069092357', '18625521997', '1003', 201, NULL, NULL, '2019-04-22 12:21:49', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 0, NULL, 'asdada', '2019-04-22 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (15, '6632069734856', '18625521997', '1001', 201, NULL, NULL, '2019-04-22 12:22:53', NULL, 1, '河南省郑州市金水区东风路街道东风路数码港大厦(东风路)', NULL, 0, NULL, '测试测试', '2019-04-22 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (19, '3807663292914', '18625521997', '1001', 201, NULL, NULL, '2019-04-24 08:38:49', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', NULL, 0, NULL, '挡风玻璃请仔细清洗', '2019-04-24 08:00:00', 4, 1, 28000);
INSERT INTO `cw_order` VALUES (20, '5740663917760', '18625521997', '1001', 208, NULL, '2019-04-26 22:56:06', '2019-04-24 08:39:51', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 13, 1, '13608430215', '车会进水', '2019-04-24 08:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (21, '4143947808392', '18625521997', '1001', 203, NULL, '2019-04-27 00:14:38', '2019-04-27 00:06:20', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 14, 0, '18625521997', '赶紧给老子洗', '2019-04-27 08:00:00', 4, 2, 28000);
INSERT INTO `cw_order` VALUES (22, '8083314883077', '18625521997', '1001', 203, NULL, '2019-04-27 10:18:55', '2019-04-27 10:18:09', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 15, 0, '18625521998', '快点洗', '2019-04-27 12:00:00', 4, 1, 28000);
INSERT INTO `cw_order` VALUES (23, '7751349489099', '18625521997', '1001', 203, NULL, '2019-04-27 11:17:15', '2019-04-27 11:15:49', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 16, 0, '18625521998', '测试', '2019-04-27 12:00:00', 4, 2, 28000);
INSERT INTO `cw_order` VALUES (24, '3124616099780', '18625521997', '1003', 201, NULL, NULL, '2019-05-05 21:06:50', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 17, 1, NULL, '随便洗', '2019-05-05 20:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (25, '2029617797475', '18625521997', '1003', 201, NULL, NULL, '2019-05-05 21:09:40', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 18, 1, NULL, '随便洗', '2019-05-05 20:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (26, '3250619366155', '18625521997', '1003', 201, NULL, NULL, '2019-05-05 21:12:17', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 19, 1, NULL, '随便洗', '2019-05-05 20:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (27, '8017629254400', '18625521997', '1003', 206, NULL, '2019-05-05 21:28:47', '2019-05-05 21:28:45', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 20, 1, NULL, 'uibianxi', '2019-05-05 20:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (29, '5577258391849', '18625521997', '1001', 208, NULL, '2019-05-06 14:57:21', '2019-05-06 14:57:20', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 22, 1, '18625521998', 'xxxx', '2019-05-06 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (30, '8822259482428', '18625521997', '1001', 203, NULL, '2019-05-06 14:59:10', '2019-05-06 14:59:08', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 23, 1, '18625521998', '111222', '2019-05-06 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (31, '8242288558770', '18625521997', '1001', 212, NULL, '2019-05-06 15:47:37', '2019-05-06 15:47:36', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 24, 1, '18625521998', '真皮护理', '2019-05-06 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (32, '2594288993190', '18625521997', '1005', 202, NULL, '2019-05-06 15:48:20', '2019-05-06 15:48:20', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 25, 1, NULL, '666', '2019-05-06 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (33, '5555289426784', '18625521997', '1002', 202, NULL, '2019-05-06 15:49:03', '2019-05-06 15:49:03', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 26, 1, NULL, '999', '2019-05-06 12:00:00', 4, 1, NULL);
INSERT INTO `cw_order` VALUES (34, '8015001377105', '18625521997', '1003', 202, NULL, '2019-05-07 11:35:38', '2019-05-07 11:35:37', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 27, 1, NULL, '哥有钱', '2019-05-07 08:00:00', 4, 1, 15526);
INSERT INTO `cw_order` VALUES (35, '2207004081867', '18625521997', '1001', 202, NULL, '2019-05-07 11:40:09', '2019-05-07 11:40:09', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 28, 1, NULL, '哥有钱', '2019-05-07 08:00:00', 4, 1, 17306);
INSERT INTO `cw_order` VALUES (36, '2967005993527', '18625521997', '1001', 205, NULL, '2019-05-07 11:43:20', '2019-05-07 11:43:20', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 29, 1, '18625521998', '哥有的是钱', '2019-05-07 08:00:00', 4, 1, 17306);
INSERT INTO `cw_order` VALUES (37, '1926765865270', '15225432912', '1001', 206, NULL, '2019-05-08 08:49:48', '2019-05-08 08:49:48', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 30, 1, NULL, '随便洗', '2019-05-08 20:00:00', 4, 1, 28080);
INSERT INTO `cw_order` VALUES (38, '1134766735628', '15225432912', '1002', 206, NULL, '2019-05-08 08:51:14', '2019-05-08 08:51:13', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 31, 1, NULL, '嘻嘻嘻嘻', '2019-05-08 08:00:00', 4, 1, 26806);
INSERT INTO `cw_order` VALUES (39, '1536767225477', '15225432912', '1001', 206, NULL, '2019-05-08 08:52:03', '2019-05-08 08:52:03', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 32, 1, NULL, '洗车', '2019-05-08 08:00:00', 16, 1, 28080);
INSERT INTO `cw_order` VALUES (40, '9430767624568', '15225432912', '1001', 206, NULL, '2019-05-08 08:52:42', '2019-05-08 08:52:42', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 33, 1, NULL, '随便洗一下', '2019-05-08 08:00:00', 4, 1, 28080);
INSERT INTO `cw_order` VALUES (41, '6724768093289', '15225432912', '1002', 206, NULL, '2019-05-08 08:53:30', '2019-05-08 08:53:30', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 34, 1, NULL, '快点洗', '2019-05-08 16:00:00', 8, 1, 26806);
INSERT INTO `cw_order` VALUES (42, '6251771551503', '15225432912', '1001', 206, NULL, '2019-05-08 08:59:17', '2019-05-08 08:59:16', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 35, 1, NULL, '洗', '2019-05-08 08:00:00', 4, 1, 28080);
INSERT INTO `cw_order` VALUES (43, '7942772433883', '15225432912', '1002', 206, NULL, '2019-05-08 09:00:44', '2019-05-08 09:00:44', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 36, 1, NULL, '洗', '2019-05-08 08:00:00', 4, 1, 26806);
INSERT INTO `cw_order` VALUES (44, '1112773149728', '15225432912', '1001', 202, NULL, '2019-05-08 09:01:55', '2019-05-08 09:01:55', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 37, 1, NULL, '嘻嘻', '2019-05-08 08:00:00', 4, 1, 28080);
INSERT INTO `cw_order` VALUES (45, '9265773899357', '15225432912', '1002', 202, NULL, '2019-05-08 09:03:11', '2019-05-08 09:03:10', NULL, 3, '河南省郑州市金水区杨金路街道郑州动车段(南门)郑州动车段', 38, 1, NULL, '嘻嘻', '2019-05-08 08:00:00', 4, 1, 26806);
INSERT INTO `cw_order` VALUES (46, '6173800125884', '18625521997', '1001', 213, NULL, '2019-05-08 09:46:53', '2019-05-08 09:46:52', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 39, 1, '18625521997', '哈哈哈', '2019-05-08 08:00:00', 4, 1, 17306);
INSERT INTO `cw_order` VALUES (47, '3947805786392', '18625521997', '1001', 205, NULL, '2019-05-08 09:56:19', '2019-05-08 09:56:19', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 40, 1, '18625521997', '测试测试', '2019-05-08 08:00:00', 4, 1, 17306);
INSERT INTO `cw_order` VALUES (48, '7111911527929', '18625521997', '1001', 202, NULL, '2019-05-08 12:52:34', '2019-05-08 12:52:33', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 41, 1, NULL, 'zzz', '2019-05-08 16:00:00', 4, 1, 17306);
INSERT INTO `cw_order` VALUES (49, '7240958724432', '18625521997', '1001', 206, NULL, '2019-05-08 14:11:15', '2019-05-08 14:11:13', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 42, 1, NULL, '随便洗洗就行了', '2019-05-08 16:00:00', 4, 1, 17306);
INSERT INTO `cw_order` VALUES (50, '7829960327687', '18625521997', '1001', 205, NULL, '2019-05-08 14:13:53', '2019-05-08 14:13:52', NULL, 2, '河南省郑州市惠济区长兴路街道河南省体育中心', 43, 1, '18625521997', '还是随便洗', '2019-05-08 16:00:00', 4, 1, 17306);

-- ----------------------------
-- Table structure for cw_order_amount
-- ----------------------------
DROP TABLE IF EXISTS `cw_order_amount`;
CREATE TABLE `cw_order_amount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `total_amount` float(10, 2) NULL DEFAULT NULL COMMENT '订单总金额',
  `final_amount` float(10, 2) NULL DEFAULT NULL COMMENT '最终金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单金额表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_order_amount
-- ----------------------------
INSERT INTO `cw_order_amount` VALUES (1, '3440602991495', 100.00, 50.00);
INSERT INTO `cw_order_amount` VALUES (3, '6632069734856', 40.00, 40.00);
INSERT INTO `cw_order_amount` VALUES (4, '6632069734856', 40.00, 40.00);
INSERT INTO `cw_order_amount` VALUES (5, '3807663292914', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (6, '3807663292914', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (7, '3807663292914', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (8, '3807663292914', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (9, '3807663292914', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (10, '3807663292914', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (11, '4143947808392', 195.00, 195.00);
INSERT INTO `cw_order_amount` VALUES (12, '8083314883077', 40.00, 40.00);
INSERT INTO `cw_order_amount` VALUES (13, '7751349489099', 40.00, 40.00);
INSERT INTO `cw_order_amount` VALUES (14, '8017629254400', 20.00, 20.00);
INSERT INTO `cw_order_amount` VALUES (15, '9409641163620', 205.00, 205.00);
INSERT INTO `cw_order_amount` VALUES (16, '5577258391849', 40.00, 40.00);
INSERT INTO `cw_order_amount` VALUES (17, '8822259482428', 60.00, 60.00);
INSERT INTO `cw_order_amount` VALUES (18, '8242288558770', 170.00, 170.00);
INSERT INTO `cw_order_amount` VALUES (19, '2594288993190', 10.00, 10.00);
INSERT INTO `cw_order_amount` VALUES (20, '5555289426783', 20.00, 20.00);
INSERT INTO `cw_order_amount` VALUES (21, '8015001377105', 20.00, 20.00);
INSERT INTO `cw_order_amount` VALUES (22, '2207004081867', 205.00, 205.00);
INSERT INTO `cw_order_amount` VALUES (23, '2967005993527', 40.00, 40.00);
INSERT INTO `cw_order_amount` VALUES (24, '5555289426784', 50.00, 50.00);
INSERT INTO `cw_order_amount` VALUES (25, '1926765865270', 60.00, 60.00);
INSERT INTO `cw_order_amount` VALUES (26, '1134766735628', 10.00, 10.00);
INSERT INTO `cw_order_amount` VALUES (27, '1536767225477', 60.00, 60.00);
INSERT INTO `cw_order_amount` VALUES (28, '9430767624568', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (29, '6724768093289', 10.00, 10.00);
INSERT INTO `cw_order_amount` VALUES (30, '6251771551503', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (31, '7942772433883', 10.00, 10.00);
INSERT INTO `cw_order_amount` VALUES (32, '1112773149728', 60.00, 60.00);
INSERT INTO `cw_order_amount` VALUES (33, '9265773899357', 10.00, 10.00);
INSERT INTO `cw_order_amount` VALUES (34, '6173800125884', 35.00, 35.00);
INSERT INTO `cw_order_amount` VALUES (35, '3947805786392', 25.00, 25.00);
INSERT INTO `cw_order_amount` VALUES (36, '7111911527929', 60.00, 60.00);
INSERT INTO `cw_order_amount` VALUES (37, '7240958724432', 60.00, 60.00);
INSERT INTO `cw_order_amount` VALUES (38, '7829960327687', 60.00, 60.00);

-- ----------------------------
-- Table structure for cw_order_log
-- ----------------------------
DROP TABLE IF EXISTS `cw_order_log`;
CREATE TABLE `cw_order_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_order_log
-- ----------------------------
INSERT INTO `cw_order_log` VALUES (1, '6632069734856', '111', '2019-04-26 11:10:06');
INSERT INTO `cw_order_log` VALUES (2, '6632069734856', '222', '2019-04-26 11:11:00');
INSERT INTO `cw_order_log` VALUES (3, '5740663917760', '取车时车辆仪表盘', '2019-04-26 21:22:58');
INSERT INTO `cw_order_log` VALUES (4, '5740663917760', '洗车完毕车辆外观', '2019-04-26 21:24:57');
INSERT INTO `cw_order_log` VALUES (5, '4143947808392', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 00:39:41');
INSERT INTO `cw_order_log` VALUES (6, '4143947808392', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 00:40:20');
INSERT INTO `cw_order_log` VALUES (7, '4143947808392', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 00:40:49');
INSERT INTO `cw_order_log` VALUES (8, '8083314883077', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 10:27:48');
INSERT INTO `cw_order_log` VALUES (9, '8083314883077', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 10:28:17');
INSERT INTO `cw_order_log` VALUES (10, '7751349489099', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 11:19:50');
INSERT INTO `cw_order_log` VALUES (11, '7751349489099', '订单追踪，照片上传 操作员账号：18625521997', '2019-04-27 11:20:13');
INSERT INTO `cw_order_log` VALUES (12, '9409641163620', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-06 12:33:02');
INSERT INTO `cw_order_log` VALUES (13, '8822259482428', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-06 15:45:41');
INSERT INTO `cw_order_log` VALUES (14, '5577258391849', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-06 22:22:51');
INSERT INTO `cw_order_log` VALUES (15, '8242288558770', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-06 22:29:19');
INSERT INTO `cw_order_log` VALUES (16, '8242288558770', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-06 22:30:26');
INSERT INTO `cw_order_log` VALUES (17, '8242288558770', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-06 22:31:17');
INSERT INTO `cw_order_log` VALUES (18, '2967005993527', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-07 12:01:13');
INSERT INTO `cw_order_log` VALUES (19, '2967005993527', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-07 12:10:17');
INSERT INTO `cw_order_log` VALUES (20, '2967005993527', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-07 12:16:01');
INSERT INTO `cw_order_log` VALUES (21, '6173800125884', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 09:48:54');
INSERT INTO `cw_order_log` VALUES (22, '6173800125884', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 09:49:08');
INSERT INTO `cw_order_log` VALUES (23, '6173800125884', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 09:49:28');
INSERT INTO `cw_order_log` VALUES (24, '3947805786392', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 09:57:50');
INSERT INTO `cw_order_log` VALUES (25, '3947805786392', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 09:58:04');
INSERT INTO `cw_order_log` VALUES (26, '3947805786392', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 09:58:16');
INSERT INTO `cw_order_log` VALUES (27, '7829960327687', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 14:19:27');
INSERT INTO `cw_order_log` VALUES (28, '7829960327687', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 14:20:25');
INSERT INTO `cw_order_log` VALUES (29, '7829960327687', '订单追踪，照片上传 操作员账号：18625521997操作员：牛牛牛', '2019-05-08 14:20:46');

-- ----------------------------
-- Table structure for cw_order_service
-- ----------------------------
DROP TABLE IF EXISTS `cw_order_service`;
CREATE TABLE `cw_order_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `service_id` int(11) NULL DEFAULT NULL COMMENT '业务编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单服务关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_order_service
-- ----------------------------
INSERT INTO `cw_order_service` VALUES (1, '3111068407467', 1);
INSERT INTO `cw_order_service` VALUES (2, '3809069092363', 1);
INSERT INTO `cw_order_service` VALUES (3, '3809069092363', 2);
INSERT INTO `cw_order_service` VALUES (4, '6632069734856', 1);
INSERT INTO `cw_order_service` VALUES (5, '6632069734856', 2);
INSERT INTO `cw_order_service` VALUES (6, '3807663292914', 1);
INSERT INTO `cw_order_service` VALUES (7, '5740663917748', 2);
INSERT INTO `cw_order_service` VALUES (8, '5740663917748', 3);
INSERT INTO `cw_order_service` VALUES (9, '8059624311013', 2);
INSERT INTO `cw_order_service` VALUES (10, '8059624311013', 3);
INSERT INTO `cw_order_service` VALUES (11, '4143947808392', 1);
INSERT INTO `cw_order_service` VALUES (12, '4143947808392', 4);
INSERT INTO `cw_order_service` VALUES (13, '8083314883077', 1);
INSERT INTO `cw_order_service` VALUES (14, '8083314883077', 2);
INSERT INTO `cw_order_service` VALUES (15, '7751349489099', 1);
INSERT INTO `cw_order_service` VALUES (16, '7751349489099', 2);
INSERT INTO `cw_order_service` VALUES (17, '3124616099780', 7);
INSERT INTO `cw_order_service` VALUES (18, '2029617797475', 7);
INSERT INTO `cw_order_service` VALUES (19, '3250619366155', 7);
INSERT INTO `cw_order_service` VALUES (20, '8017629254400', 7);
INSERT INTO `cw_order_service` VALUES (21, '9409641163620', 3);
INSERT INTO `cw_order_service` VALUES (22, '9409641163620', 4);
INSERT INTO `cw_order_service` VALUES (23, '5577258391849', 1);
INSERT INTO `cw_order_service` VALUES (24, '5577258391849', 2);
INSERT INTO `cw_order_service` VALUES (25, '8822259482428', 1);
INSERT INTO `cw_order_service` VALUES (26, '8822259482428', 3);
INSERT INTO `cw_order_service` VALUES (27, '8242288558770', 4);
INSERT INTO `cw_order_service` VALUES (28, '2594288993190', 9);
INSERT INTO `cw_order_service` VALUES (29, '5555289426783', 6);
INSERT INTO `cw_order_service` VALUES (30, '8015001377105', 7);
INSERT INTO `cw_order_service` VALUES (31, '2207004081867', 3);
INSERT INTO `cw_order_service` VALUES (32, '2207004081867', 4);
INSERT INTO `cw_order_service` VALUES (33, '2967005993527', 1);
INSERT INTO `cw_order_service` VALUES (34, '2967005993527', 2);
INSERT INTO `cw_order_service` VALUES (35, '1926765865270', 1);
INSERT INTO `cw_order_service` VALUES (36, '1926765865270', 3);
INSERT INTO `cw_order_service` VALUES (37, '1134766735628', 5);
INSERT INTO `cw_order_service` VALUES (38, '1536767225477', 1);
INSERT INTO `cw_order_service` VALUES (39, '1536767225477', 3);
INSERT INTO `cw_order_service` VALUES (40, '9430767624568', 1);
INSERT INTO `cw_order_service` VALUES (41, '6724768093289', 5);
INSERT INTO `cw_order_service` VALUES (42, '4595769961020', 5);
INSERT INTO `cw_order_service` VALUES (43, '6251771551503', 1);
INSERT INTO `cw_order_service` VALUES (44, '7942772433883', 5);
INSERT INTO `cw_order_service` VALUES (45, '1112773149728', 1);
INSERT INTO `cw_order_service` VALUES (46, '1112773149728', 3);
INSERT INTO `cw_order_service` VALUES (47, '9265773899357', 5);
INSERT INTO `cw_order_service` VALUES (48, '6173800125884', 11);
INSERT INTO `cw_order_service` VALUES (49, '6173800125884', 12);
INSERT INTO `cw_order_service` VALUES (50, '3947805786392', 1);
INSERT INTO `cw_order_service` VALUES (51, '7111911527929', 1);
INSERT INTO `cw_order_service` VALUES (52, '7111911527929', 3);
INSERT INTO `cw_order_service` VALUES (53, '7240958724432', 1);
INSERT INTO `cw_order_service` VALUES (54, '7240958724432', 3);
INSERT INTO `cw_order_service` VALUES (55, '7829960327687', 1);
INSERT INTO `cw_order_service` VALUES (56, '7829960327687', 3);

-- ----------------------------
-- Table structure for cw_role
-- ----------------------------
DROP TABLE IF EXISTS `cw_role`;
CREATE TABLE `cw_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cw_role_limits
-- ----------------------------
DROP TABLE IF EXISTS `cw_role_limits`;
CREATE TABLE `cw_role_limits`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色编号',
  `limits_id` int(11) NULL DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cw_service_category
-- ----------------------------
DROP TABLE IF EXISTS `cw_service_category`;
CREATE TABLE `cw_service_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务种类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cw_status
-- ----------------------------
DROP TABLE IF EXISTS `cw_status`;
CREATE TABLE `cw_status`  (
  `id` int(11) NOT NULL COMMENT '编号',
  `status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_status
-- ----------------------------
INSERT INTO `cw_status` VALUES (100, '待审核');
INSERT INTO `cw_status` VALUES (101, '营业中');
INSERT INTO `cw_status` VALUES (102, '未营业');
INSERT INTO `cw_status` VALUES (103, '未开业');
INSERT INTO `cw_status` VALUES (104, '已下线');
INSERT INTO `cw_status` VALUES (105, '已通过');
INSERT INTO `cw_status` VALUES (106, '未通过');
INSERT INTO `cw_status` VALUES (109, '异常');
INSERT INTO `cw_status` VALUES (200, '待接单');
INSERT INTO `cw_status` VALUES (201, '待付款');
INSERT INTO `cw_status` VALUES (202, '已付款');
INSERT INTO `cw_status` VALUES (203, '已完成');
INSERT INTO `cw_status` VALUES (204, '待评价');
INSERT INTO `cw_status` VALUES (205, '已评价');
INSERT INTO `cw_status` VALUES (206, '已取消');
INSERT INTO `cw_status` VALUES (207, '未接单');
INSERT INTO `cw_status` VALUES (208, '进行中');
INSERT INTO `cw_status` VALUES (209, '异常');
INSERT INTO `cw_status` VALUES (211, '已取车');
INSERT INTO `cw_status` VALUES (212, '已洗车');
INSERT INTO `cw_status` VALUES (213, '已还车');
INSERT INTO `cw_status` VALUES (300, '已寄存');
INSERT INTO `cw_status` VALUES (301, '已取出');
INSERT INTO `cw_status` VALUES (302, '待寄存');
INSERT INTO `cw_status` VALUES (309, '异常');
INSERT INTO `cw_status` VALUES (400, '已上线');
INSERT INTO `cw_status` VALUES (401, '已下线');
INSERT INTO `cw_status` VALUES (402, '维护中');
INSERT INTO `cw_status` VALUES (409, '异常');
INSERT INTO `cw_status` VALUES (500, '待审核');
INSERT INTO `cw_status` VALUES (501, '使用中');
INSERT INTO `cw_status` VALUES (502, '已停用');
INSERT INTO `cw_status` VALUES (509, '异常');
INSERT INTO `cw_status` VALUES (600, '空闲');
INSERT INTO `cw_status` VALUES (601, '占用');

-- ----------------------------
-- Table structure for cw_store
-- ----------------------------
DROP TABLE IF EXISTS `cw_store`;
CREATE TABLE `cw_store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `store_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `store_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店名',
  `owner_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人账号',
  `provinceid` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在省份',
  `cityid` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在街道',
  `pos_lng` decimal(18, 6) NULL DEFAULT NULL COMMENT '经度',
  `pos_lat` decimal(18, 6) NULL DEFAULT NULL COMMENT '纬度',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contacts_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `status_id` int(255) NULL DEFAULT NULL COMMENT '门店状态编号',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `favicon_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门店表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_store
-- ----------------------------
INSERT INTO `cw_store` VALUES (1, '1001', '1001洗车店', 'shangjia1', '410000', '410100', '牛顿国际', 113.663642, 34.781917, '白展堂', '8839504', 105, '快来快来洗一洗', '/store/logo/1001.jpg');
INSERT INTO `cw_store` VALUES (2, '1002', '1002洗车店', 'shangjia1', '410000', '410100', '金水区文化路96号', 113.666458, 34.785572, '佟湘玉', '9989988', 105, '快来快来洗一洗', '/store/logo/1002.jpg');
INSERT INTO `cw_store` VALUES (3, '1003', 'AX洗车店', '13255668998', '410000', '410100', '金水区文化路93号', 113.666330, 34.788060, '郭芙蓉', '7877950', 100, '快来快来洗一洗', '/store/logo/1003.jpg');
INSERT INTO `cw_store` VALUES (16, '1004', '渣渣洗车店', 'zww', '410000', '410100', '文化路97号', 113.665074, 34.781401, '查文威', '15515746513', 100, '没啥好说的', '/store/logo/1004.jpg');
INSERT INTO `cw_store` VALUES (17, '1005', 'AAA洗车店', 'zww', '410000', '410100', '河南省郑州市金水区南阳路街道河南省建筑科学研究院(丰乐路)泉舜上城(建设中)', 113.652714, 34.778757, '白展堂', '8839504', 100, '少时诵诗书', '/store/logo/1005.jpg');
INSERT INTO `cw_store` VALUES (18, '1008', '渣渣洗车店', 'zww', '410000', '410100', '文化路97号郑州大学北校区', 113.666480, 34.781932, '查文威', '15515746513', 105, '没啥好说的', '/store/logo/1006.jpg');
INSERT INTO `cw_store` VALUES (19, '1009', '渣渣洗车店', 'zww', '410000', '410100', '河南省郑州市金水区文化路街道东关虎屯(嘉辰时代广场西南)', 113.686091, 34.785356, '查文威', '15515746513', 100, '没啥好说的', '/store/logo/1009.jpg');
INSERT INTO `cw_store` VALUES (20, '1010', '胡秋洗', 'shangjia1', '410000', '410100', '河南省郑州市金水区如意湖街道郑州儿童医院东区门诊河南省儿童医院东区', 113.754539, 34.777934, '查文威', '15644664466', 105, '没啥好说的', '/store/logo/1010.jpg');
INSERT INTO `cw_store` VALUES (21, '1008', '渣渣洗车店', 'zww', '410000', '410100', '文化路街道文化路97号', 113.662544, 34.781796, '查文威', '15515746513', 105, '没啥好说的', '/store/logo/1008.jpg');
INSERT INTO `cw_store` VALUES (23, '509334', 'AAA洗车店2', 'shangjia1', '410000', '410100', '182路', 113.479820, 34.807564, '商家1', '8839504', 105, '少时诵诗书', '/store/logo/27c6042a9ef96945a88dc12bf704800b.jpg');
INSERT INTO `cw_store` VALUES (29, '22945', '测试1', 'admin', '410000', '410100', '民主路10号万象城L7层L703', 113.662927, 34.754692, '若依', '15888888888', 100, '山山水水', '/store/logo/a57125033bbfbb5e82bbf5f1f4f8b166.jpg');

-- ----------------------------
-- Table structure for cw_store_env
-- ----------------------------
DROP TABLE IF EXISTS `cw_store_env`;
CREATE TABLE `cw_store_env`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `store_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店环境图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门店环境表\n主要是存储门店环境照片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_store_env
-- ----------------------------
INSERT INTO `cw_store_env` VALUES (1, '1004', '/store/env/timg.jpg');
INSERT INTO `cw_store_env` VALUES (2, '1004', '/store/env/timg1.jpg');
INSERT INTO `cw_store_env` VALUES (3, '1002', '/store/env/timg2.jpg');
INSERT INTO `cw_store_env` VALUES (4, '1004', '/store/env/timg3.jpg');

-- ----------------------------
-- Table structure for cw_store_publicity
-- ----------------------------
DROP TABLE IF EXISTS `cw_store_publicity`;
CREATE TABLE `cw_store_publicity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stroe_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宣传图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '店铺宣传页表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cw_store_service
-- ----------------------------
DROP TABLE IF EXISTS `cw_store_service`;
CREATE TABLE `cw_store_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `store_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `service_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细描述',
  `status_id` int(11) NULL DEFAULT NULL COMMENT '业务状态编号',
  `cost` float(100, 2) NULL DEFAULT NULL COMMENT '业务费用',
  `default_service_id` int(11) NULL DEFAULT NULL COMMENT '默认服务编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_store_service
-- ----------------------------
INSERT INTO `cw_store_service` VALUES (1, '1001', '普通清洗', '美光蜡洗车、风干、吸尘', 401, 25.00, 1);
INSERT INTO `cw_store_service` VALUES (3, '1001', '臭氧负离子消毒', '臭氧负离子机室内消毒', 400, 35.00, 3);
INSERT INTO `cw_store_service` VALUES (4, '1001', '真皮护理', '真皮座椅清洁、去污、上光护理', 400, 170.00, 4);
INSERT INTO `cw_store_service` VALUES (5, '1002', '普通清洗', '湿洗湿洗', 400, 10.00, 1);
INSERT INTO `cw_store_service` VALUES (6, '1002', '地毯清洗', '湿洗', 400, 20.00, 2);
INSERT INTO `cw_store_service` VALUES (7, '1003', '普通清洗', '清洗淤泥，除沥青、污渍', 409, 20.00, 1);
INSERT INTO `cw_store_service` VALUES (8, '1004', '普通清洗', '清洗淤泥，除沥青', 400, 15.00, 1);
INSERT INTO `cw_store_service` VALUES (9, '1005', '普通清洗', '清洗淤泥，除沥青', 400, 10.00, 1);
INSERT INTO `cw_store_service` VALUES (10, '1002', '真皮护理', '真皮座椅清洁、去污、上光护理', 401, 10.00, NULL);
INSERT INTO `cw_store_service` VALUES (11, '1001', '地毯清洗', '湿洗地毯', 400, 20.00, NULL);
INSERT INTO `cw_store_service` VALUES (12, '1001', '内饰清洗', '座椅、中控、地毯清洗', 400, 15.00, NULL);
INSERT INTO `cw_store_service` VALUES (13, '509334', '普通清洗', '清洗淤泥，除沥青', 400, 15.00, NULL);

-- ----------------------------
-- Table structure for cw_user_account
-- ----------------------------
DROP TABLE IF EXISTS `cw_user_account`;
CREATE TABLE `cw_user_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户编号',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `driving_licence_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾照A面',
  `driving_licence_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驾照B面',
  `store_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属门店编号',
  `status_id` int(11) NULL DEFAULT 500 COMMENT '账号状态id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_user_account
-- ----------------------------
INSERT INTO `cw_user_account` VALUES (6, 113, NULL, '/fileupload/user/drivingLicence/72fafc95e1592eff6f0dc4e9e93ffbf4.jpg', '/fileupload/user/drivingLicence/96252016a91d9fbfb5ed73d4c9556376.jpg', '1001', 509);
INSERT INTO `cw_user_account` VALUES (7, 114, NULL, '/user/drivingLicence/e2bb2604ee03324dfcf8d58e84c62c2f.jpg', '/user/drivingLicence/06fca2cac98d7a5abb2f9d98bfa2828c.jpg', '1001', NULL);
INSERT INTO `cw_user_account` VALUES (8, 115, NULL, '/user/drivingLicence/9c45bf679d2eb784ce788856b18e4919.jpg', '/user/drivingLicence/6df8d20f7fef8ab57b5f2c5afaeefd33.jpg', '1001', NULL);
INSERT INTO `cw_user_account` VALUES (9, 116, 'oDsBK5MtTKI-Hr4r7D5DhnMn9ZWE', '/user/drivingLicence/9c45bf679d2eb784ce788856b18e4919.jpg', '/user/drivingLicence/6df8d20f7fef8ab57b5f2c5afaeefd33.jpg', '1001', 501);
INSERT INTO `cw_user_account` VALUES (10, 117, NULL, '/user/drivingLicence/9042c635d19811969406e80674470623.jpg', '/user/drivingLicence/f28266cbc73104fd4df718d4ba2996ec.jpg', '1001', NULL);
INSERT INTO `cw_user_account` VALUES (11, 1, NULL, NULL, NULL, '1001', 501);
INSERT INTO `cw_user_account` VALUES (12, 119, NULL, '/user/drivingLicence/8122af379aa4f1ec4248dad721cb9086.jpg', '/user/drivingLicence/5dba44831d0cb1c11a6f249357398f70.jpg', '1002', 500);
INSERT INTO `cw_user_account` VALUES (13, 120, NULL, '/user/drivingLicence/a34cfaed4c955ae42462e6bac9b88bee.jpg', '/user/drivingLicence/2e77b18c6d3627466201cd3e5d0b987a.jpg', '1001', 500);
INSERT INTO `cw_user_account` VALUES (14, 121, NULL, '/user/drivingLicence/ca2d7e8753c2cef4f2496ef66263eed3.jpg', '/user/drivingLicence/770d81cca653a25ee677f2b9f3182bd5.jpg', '1001', 500);
INSERT INTO `cw_user_account` VALUES (15, 122, NULL, '/user/drivingLicence/8788f861a76e59dddbfd7b8906161c6f.jpg', '/user/drivingLicence/77bc794af61575c864769564795f5847.jpg', '1003', 500);
INSERT INTO `cw_user_account` VALUES (16, 129, NULL, NULL, NULL, '1001', 501);
INSERT INTO `cw_user_account` VALUES (17, 130, NULL, '/user/drivingLicence/906c88b1d7a55d31b4b196be715ed687.jpg', '/user/drivingLicence/da776b5e3cdc086eab8c5f9b551e2cde.jpg', '1010', 500);
INSERT INTO `cw_user_account` VALUES (18, 131, NULL, '/user/drivingLicence/c5cb258461f36dafb189b635c0507314.jpg', '/user/drivingLicence/d730b5987b2e161bffb78bf3d06755b8.jpg', '1001', 501);

-- ----------------------------
-- Table structure for cw_user_location
-- ----------------------------
DROP TABLE IF EXISTS `cw_user_location`;
CREATE TABLE `cw_user_location`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '洗车员账号',
  `pos_lng` decimal(18, 6) NULL DEFAULT NULL COMMENT '经度',
  `pos_lat` decimal(18, 6) NULL DEFAULT NULL COMMENT '纬度',
  `update_datetime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1010 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '洗车员定位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cw_user_location
-- ----------------------------
INSERT INTO `cw_user_location` VALUES (1006, '18625521997', 113.660720, 34.799770, '2019-05-10 22:02:34');
INSERT INTO `cw_user_location` VALUES (1007, '18625521997', 113.733635, 34.844036, '2019-05-11 09:03:31');
INSERT INTO `cw_user_location` VALUES (1008, '18625521997', 113.733574, 34.844028, '2019-05-11 09:04:01');
INSERT INTO `cw_user_location` VALUES (1009, '18625521997', 113.733513, 34.844051, '2019-05-11 09:04:31');
INSERT INTO `cw_user_location` VALUES (1010, '18625521997', 113.733582, 34.844044, '2019-05-11 09:05:01');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceid` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `provinceid`(`provinceid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 392 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES (1, '110000', '北京市');
INSERT INTO `provinces` VALUES (2, '120000', '天津市');
INSERT INTO `provinces` VALUES (3, '130000', '河北省');
INSERT INTO `provinces` VALUES (4, '140000', '山西省');
INSERT INTO `provinces` VALUES (5, '150000', '内蒙古自治区');
INSERT INTO `provinces` VALUES (6, '210000', '辽宁省');
INSERT INTO `provinces` VALUES (7, '220000', '吉林省');
INSERT INTO `provinces` VALUES (8, '230000', '黑龙江省');
INSERT INTO `provinces` VALUES (9, '310000', '上海市');
INSERT INTO `provinces` VALUES (10, '320000', '江苏省');
INSERT INTO `provinces` VALUES (11, '330000', '浙江省');
INSERT INTO `provinces` VALUES (12, '340000', '安徽省');
INSERT INTO `provinces` VALUES (13, '350000', '福建省');
INSERT INTO `provinces` VALUES (14, '360000', '江西省');
INSERT INTO `provinces` VALUES (15, '370000', '山东省');
INSERT INTO `provinces` VALUES (16, '410000', '河南省');
INSERT INTO `provinces` VALUES (17, '420000', '湖北省');
INSERT INTO `provinces` VALUES (18, '430000', '湖南省');
INSERT INTO `provinces` VALUES (19, '440000', '广东省');
INSERT INTO `provinces` VALUES (20, '450000', '广西壮族自治区');
INSERT INTO `provinces` VALUES (21, '460000', '海南省');
INSERT INTO `provinces` VALUES (22, '500000', '重庆市');
INSERT INTO `provinces` VALUES (23, '510000', '四川省');
INSERT INTO `provinces` VALUES (24, '520000', '贵州省');
INSERT INTO `provinces` VALUES (25, '530000', '云南省');
INSERT INTO `provinces` VALUES (26, '540000', '西藏自治区');
INSERT INTO `provinces` VALUES (27, '610000', '陕西省');
INSERT INTO `provinces` VALUES (28, '620000', '甘肃省');
INSERT INTO `provinces` VALUES (29, '630000', '青海省');
INSERT INTO `provinces` VALUES (30, '640000', '宁夏回族自治区');
INSERT INTO `provinces` VALUES (31, '650000', '新疆维吾尔自治区');
INSERT INTO `provinces` VALUES (32, '710000', '台湾省');
INSERT INTO `provinces` VALUES (33, '810000', '香港特别行政区');
INSERT INTO `provinces` VALUES (34, '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('DoudouScheduler', '__TASK_CLASS_NAME__1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('DoudouScheduler', '__TASK_CLASS_NAME__2', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('DoudouScheduler', '__TASK_CLASS_NAME__1', 'DEFAULT', NULL, 'com.aaa.project.monitor.job.util.ScheduleJob', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400135F5F5441534B5F50524F504552544945535F5F73720026636F6D2E6161612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000E63726F6E45787072657373696F6E7400124C6A6176612F6C616E672F537472696E673B4C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6161612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787074000070707074000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672795461736B74000A72794E6F506172616D7374000074000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('DoudouScheduler', '__TASK_CLASS_NAME__2', 'DEFAULT', NULL, 'com.aaa.project.monitor.job.util.ScheduleJob', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400135F5F5441534B5F50524F504552544945535F5F73720026636F6D2E6161612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000E63726F6E45787072657373696F6E7400124C6A6176612F6C616E672F537472696E673B4C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6161612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787074000070707074000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000672795461736B7400087279506172616D73740002727974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('DoudouScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('DoudouScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('DoudouScheduler', 'Macbook1557540355644', 1557587275932, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('DoudouScheduler', '__TASK_CLASS_NAME__1', 'DEFAULT', '__TASK_CLASS_NAME__1', 'DEFAULT', NULL, 1555564040000, -1, 5, 'PAUSED', 'CRON', 1555564033000, 0, NULL, 2, 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400135F5F5441534B5F50524F504552544945535F5F73720026636F6D2E6161612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000E63726F6E45787072657373696F6E7400124C6A6176612F6C616E672F537472696E673B4C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6161612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787074000070707074000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672795461736B74000A72794E6F506172616D7374000074000133740001317800);
INSERT INTO `qrtz_triggers` VALUES ('DoudouScheduler', '__TASK_CLASS_NAME__2', 'DEFAULT', '__TASK_CLASS_NAME__2', 'DEFAULT', NULL, 1555564040000, -1, 5, 'PAUSED', 'CRON', 1555564033000, 0, NULL, 2, 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400135F5F5441534B5F50524F504552544945535F5F73720026636F6D2E6161612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000E63726F6E45787072657373696F6E7400124C6A6176612F6C616E672F537472696E673B4C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6161612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787074000070707074000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000672795461736B7400087279506172616D73740002727974000133740001317800);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-green', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-04-18 13:35:58', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '洗车商家', 3, NULL, '13255447788', '13255447788@qq.com', '0', '0', 'admin', '2019-05-07 21:32:47', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (11, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (12, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (13, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (14, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (15, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (16, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (17, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (18, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (19, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (20, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (21, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (22, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (23, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (24, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (25, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (26, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (6, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (8, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (9, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 492 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:41:58');
INSERT INTO `sys_job_log` VALUES (2, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:42:18');
INSERT INTO `sys_job_log` VALUES (3, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:42:38');
INSERT INTO `sys_job_log` VALUES (4, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：11毫秒', '0', '', '2019-04-19 21:42:58');
INSERT INTO `sys_job_log` VALUES (5, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-19 21:43:18');
INSERT INTO `sys_job_log` VALUES (6, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:43:38');
INSERT INTO `sys_job_log` VALUES (7, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:43:58');
INSERT INTO `sys_job_log` VALUES (8, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-19 21:44:18');
INSERT INTO `sys_job_log` VALUES (9, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-19 21:44:38');
INSERT INTO `sys_job_log` VALUES (10, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：9毫秒', '0', '', '2019-04-19 21:44:58');
INSERT INTO `sys_job_log` VALUES (11, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:45:18');
INSERT INTO `sys_job_log` VALUES (12, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:45:38');
INSERT INTO `sys_job_log` VALUES (13, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:45:58');
INSERT INTO `sys_job_log` VALUES (14, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:46:18');
INSERT INTO `sys_job_log` VALUES (15, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:46:38');
INSERT INTO `sys_job_log` VALUES (16, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：10毫秒', '0', '', '2019-04-19 21:46:58');
INSERT INTO `sys_job_log` VALUES (17, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:47:18');
INSERT INTO `sys_job_log` VALUES (18, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:47:38');
INSERT INTO `sys_job_log` VALUES (19, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-19 21:47:58');
INSERT INTO `sys_job_log` VALUES (20, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-19 21:48:18');
INSERT INTO `sys_job_log` VALUES (21, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-19 21:48:38');
INSERT INTO `sys_job_log` VALUES (22, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 14:28:33');
INSERT INTO `sys_job_log` VALUES (23, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 14:39:19');
INSERT INTO `sys_job_log` VALUES (24, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-22 14:39:39');
INSERT INTO `sys_job_log` VALUES (25, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 14:39:59');
INSERT INTO `sys_job_log` VALUES (26, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-22 14:40:19');
INSERT INTO `sys_job_log` VALUES (27, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-22 14:40:39');
INSERT INTO `sys_job_log` VALUES (28, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-22 15:55:38');
INSERT INTO `sys_job_log` VALUES (29, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-22 15:55:48');
INSERT INTO `sys_job_log` VALUES (30, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-22 15:55:58');
INSERT INTO `sys_job_log` VALUES (31, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:56:09');
INSERT INTO `sys_job_log` VALUES (32, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：4毫秒', '0', '', '2019-04-22 15:56:18');
INSERT INTO `sys_job_log` VALUES (33, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 15:56:28');
INSERT INTO `sys_job_log` VALUES (34, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:56:38');
INSERT INTO `sys_job_log` VALUES (35, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:56:48');
INSERT INTO `sys_job_log` VALUES (36, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 15:56:59');
INSERT INTO `sys_job_log` VALUES (37, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：11毫秒', '0', '', '2019-04-22 15:57:08');
INSERT INTO `sys_job_log` VALUES (38, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:57:18');
INSERT INTO `sys_job_log` VALUES (39, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：7毫秒', '0', '', '2019-04-22 15:57:28');
INSERT INTO `sys_job_log` VALUES (40, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：6毫秒', '0', '', '2019-04-22 15:57:38');
INSERT INTO `sys_job_log` VALUES (41, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 15:57:48');
INSERT INTO `sys_job_log` VALUES (42, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 15:57:58');
INSERT INTO `sys_job_log` VALUES (43, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:58:08');
INSERT INTO `sys_job_log` VALUES (44, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:58:18');
INSERT INTO `sys_job_log` VALUES (45, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:58:28');
INSERT INTO `sys_job_log` VALUES (46, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:58:38');
INSERT INTO `sys_job_log` VALUES (47, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:58:48');
INSERT INTO `sys_job_log` VALUES (48, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 15:58:58');
INSERT INTO `sys_job_log` VALUES (49, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:59:08');
INSERT INTO `sys_job_log` VALUES (50, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:59:18');
INSERT INTO `sys_job_log` VALUES (51, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:59:28');
INSERT INTO `sys_job_log` VALUES (52, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-22 15:59:38');
INSERT INTO `sys_job_log` VALUES (53, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:59:48');
INSERT INTO `sys_job_log` VALUES (54, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 15:59:58');
INSERT INTO `sys_job_log` VALUES (55, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:15:59');
INSERT INTO `sys_job_log` VALUES (56, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 16:16:19');
INSERT INTO `sys_job_log` VALUES (57, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-22 16:16:39');
INSERT INTO `sys_job_log` VALUES (58, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:23:59');
INSERT INTO `sys_job_log` VALUES (59, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:24:09');
INSERT INTO `sys_job_log` VALUES (60, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-22 16:24:19');
INSERT INTO `sys_job_log` VALUES (61, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:24:33');
INSERT INTO `sys_job_log` VALUES (62, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:24:38');
INSERT INTO `sys_job_log` VALUES (63, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:24:48');
INSERT INTO `sys_job_log` VALUES (64, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-22 16:24:59');
INSERT INTO `sys_job_log` VALUES (65, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-22 16:25:09');
INSERT INTO `sys_job_log` VALUES (66, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:25:19');
INSERT INTO `sys_job_log` VALUES (67, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-22 16:25:29');
INSERT INTO `sys_job_log` VALUES (68, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:29:50');
INSERT INTO `sys_job_log` VALUES (69, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-23 10:30:01');
INSERT INTO `sys_job_log` VALUES (70, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-04-23 10:30:10');
INSERT INTO `sys_job_log` VALUES (71, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:30:20');
INSERT INTO `sys_job_log` VALUES (72, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:30:30');
INSERT INTO `sys_job_log` VALUES (73, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:30:40');
INSERT INTO `sys_job_log` VALUES (74, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-23 10:30:50');
INSERT INTO `sys_job_log` VALUES (75, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:31:00');
INSERT INTO `sys_job_log` VALUES (76, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:31:10');
INSERT INTO `sys_job_log` VALUES (77, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:31:20');
INSERT INTO `sys_job_log` VALUES (78, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:31:30');
INSERT INTO `sys_job_log` VALUES (79, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:31:40');
INSERT INTO `sys_job_log` VALUES (80, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:31:50');
INSERT INTO `sys_job_log` VALUES (81, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：5毫秒', '0', '', '2019-04-23 10:32:00');
INSERT INTO `sys_job_log` VALUES (82, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:32:10');
INSERT INTO `sys_job_log` VALUES (83, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:32:20');
INSERT INTO `sys_job_log` VALUES (84, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:32:30');
INSERT INTO `sys_job_log` VALUES (85, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:32:40');
INSERT INTO `sys_job_log` VALUES (86, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:32:50');
INSERT INTO `sys_job_log` VALUES (87, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:33:00');
INSERT INTO `sys_job_log` VALUES (88, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 10:33:10');
INSERT INTO `sys_job_log` VALUES (89, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:33:20');
INSERT INTO `sys_job_log` VALUES (90, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-23 10:33:30');
INSERT INTO `sys_job_log` VALUES (91, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:05:19');
INSERT INTO `sys_job_log` VALUES (92, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:05:29');
INSERT INTO `sys_job_log` VALUES (93, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:05:39');
INSERT INTO `sys_job_log` VALUES (94, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:05:49');
INSERT INTO `sys_job_log` VALUES (95, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:05:59');
INSERT INTO `sys_job_log` VALUES (96, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:06:09');
INSERT INTO `sys_job_log` VALUES (97, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:06:19');
INSERT INTO `sys_job_log` VALUES (98, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:06:29');
INSERT INTO `sys_job_log` VALUES (99, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:06:39');
INSERT INTO `sys_job_log` VALUES (100, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:06:49');
INSERT INTO `sys_job_log` VALUES (101, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:06:59');
INSERT INTO `sys_job_log` VALUES (102, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:07:09');
INSERT INTO `sys_job_log` VALUES (103, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:07:19');
INSERT INTO `sys_job_log` VALUES (104, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:07:29');
INSERT INTO `sys_job_log` VALUES (105, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:44:29');
INSERT INTO `sys_job_log` VALUES (106, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-04-23 15:44:39');
INSERT INTO `sys_job_log` VALUES (107, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:44:49');
INSERT INTO `sys_job_log` VALUES (108, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:44:59');
INSERT INTO `sys_job_log` VALUES (109, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：11毫秒', '0', '', '2019-04-23 15:45:09');
INSERT INTO `sys_job_log` VALUES (110, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:45:19');
INSERT INTO `sys_job_log` VALUES (111, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:45:29');
INSERT INTO `sys_job_log` VALUES (112, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：10毫秒', '0', '', '2019-04-23 15:45:39');
INSERT INTO `sys_job_log` VALUES (113, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:45:49');
INSERT INTO `sys_job_log` VALUES (114, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:45:59');
INSERT INTO `sys_job_log` VALUES (115, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-04-23 15:46:09');
INSERT INTO `sys_job_log` VALUES (116, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:46:19');
INSERT INTO `sys_job_log` VALUES (117, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:46:29');
INSERT INTO `sys_job_log` VALUES (118, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:46:39');
INSERT INTO `sys_job_log` VALUES (119, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:46:49');
INSERT INTO `sys_job_log` VALUES (120, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:46:59');
INSERT INTO `sys_job_log` VALUES (121, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：11毫秒', '0', '', '2019-04-23 15:47:09');
INSERT INTO `sys_job_log` VALUES (122, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:47:19');
INSERT INTO `sys_job_log` VALUES (123, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:47:29');
INSERT INTO `sys_job_log` VALUES (124, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-04-23 15:47:39');
INSERT INTO `sys_job_log` VALUES (125, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:47:49');
INSERT INTO `sys_job_log` VALUES (126, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:47:59');
INSERT INTO `sys_job_log` VALUES (127, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：10毫秒', '0', '', '2019-04-23 15:48:09');
INSERT INTO `sys_job_log` VALUES (128, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:48:19');
INSERT INTO `sys_job_log` VALUES (129, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:48:29');
INSERT INTO `sys_job_log` VALUES (130, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：8毫秒', '0', '', '2019-04-23 15:48:39');
INSERT INTO `sys_job_log` VALUES (131, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:48:49');
INSERT INTO `sys_job_log` VALUES (132, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:48:59');
INSERT INTO `sys_job_log` VALUES (133, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：10毫秒', '0', '', '2019-04-23 15:49:09');
INSERT INTO `sys_job_log` VALUES (134, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-23 15:49:19');
INSERT INTO `sys_job_log` VALUES (135, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:49:29');
INSERT INTO `sys_job_log` VALUES (136, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：8毫秒', '0', '', '2019-04-23 15:49:39');
INSERT INTO `sys_job_log` VALUES (137, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:49:49');
INSERT INTO `sys_job_log` VALUES (138, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:49:59');
INSERT INTO `sys_job_log` VALUES (139, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：8毫秒', '0', '', '2019-04-23 15:50:09');
INSERT INTO `sys_job_log` VALUES (140, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:50:19');
INSERT INTO `sys_job_log` VALUES (141, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:50:29');
INSERT INTO `sys_job_log` VALUES (142, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-04-23 15:50:39');
INSERT INTO `sys_job_log` VALUES (143, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:50:49');
INSERT INTO `sys_job_log` VALUES (144, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-23 15:50:59');
INSERT INTO `sys_job_log` VALUES (145, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-26 09:34:38');
INSERT INTO `sys_job_log` VALUES (146, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:38:40');
INSERT INTO `sys_job_log` VALUES (147, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:39:00');
INSERT INTO `sys_job_log` VALUES (148, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:39:20');
INSERT INTO `sys_job_log` VALUES (149, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:39:40');
INSERT INTO `sys_job_log` VALUES (150, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:40:00');
INSERT INTO `sys_job_log` VALUES (151, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:40:20');
INSERT INTO `sys_job_log` VALUES (152, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:40:40');
INSERT INTO `sys_job_log` VALUES (153, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：7毫秒', '0', '', '2019-04-26 15:41:00');
INSERT INTO `sys_job_log` VALUES (154, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-26 15:41:20');
INSERT INTO `sys_job_log` VALUES (155, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:41:40');
INSERT INTO `sys_job_log` VALUES (156, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:42:00');
INSERT INTO `sys_job_log` VALUES (157, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：4毫秒', '0', '', '2019-04-26 15:42:20');
INSERT INTO `sys_job_log` VALUES (158, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:42:40');
INSERT INTO `sys_job_log` VALUES (159, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:43:00');
INSERT INTO `sys_job_log` VALUES (160, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:43:20');
INSERT INTO `sys_job_log` VALUES (161, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：4毫秒', '0', '', '2019-04-26 15:43:40');
INSERT INTO `sys_job_log` VALUES (162, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:44:00');
INSERT INTO `sys_job_log` VALUES (163, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:44:20');
INSERT INTO `sys_job_log` VALUES (164, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:44:40');
INSERT INTO `sys_job_log` VALUES (165, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:45:00');
INSERT INTO `sys_job_log` VALUES (166, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:45:20');
INSERT INTO `sys_job_log` VALUES (167, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 15:45:40');
INSERT INTO `sys_job_log` VALUES (168, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：10毫秒', '0', '', '2019-04-26 15:46:00');
INSERT INTO `sys_job_log` VALUES (169, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:46:20');
INSERT INTO `sys_job_log` VALUES (170, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:46:40');
INSERT INTO `sys_job_log` VALUES (171, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:47:00');
INSERT INTO `sys_job_log` VALUES (172, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:47:20');
INSERT INTO `sys_job_log` VALUES (173, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:47:40');
INSERT INTO `sys_job_log` VALUES (174, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:48:00');
INSERT INTO `sys_job_log` VALUES (175, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:48:20');
INSERT INTO `sys_job_log` VALUES (176, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 15:48:40');
INSERT INTO `sys_job_log` VALUES (177, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 15:49:00');
INSERT INTO `sys_job_log` VALUES (178, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:49:20');
INSERT INTO `sys_job_log` VALUES (179, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:49:40');
INSERT INTO `sys_job_log` VALUES (180, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 15:50:00');
INSERT INTO `sys_job_log` VALUES (181, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 18:59:29');
INSERT INTO `sys_job_log` VALUES (182, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 18:59:38');
INSERT INTO `sys_job_log` VALUES (183, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 18:59:58');
INSERT INTO `sys_job_log` VALUES (184, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 19:00:18');
INSERT INTO `sys_job_log` VALUES (185, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：10毫秒', '0', '', '2019-04-26 19:00:38');
INSERT INTO `sys_job_log` VALUES (186, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：4毫秒', '0', '', '2019-04-26 20:52:49');
INSERT INTO `sys_job_log` VALUES (187, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:52:59');
INSERT INTO `sys_job_log` VALUES (188, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:53:09');
INSERT INTO `sys_job_log` VALUES (189, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:53:19');
INSERT INTO `sys_job_log` VALUES (190, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:53:29');
INSERT INTO `sys_job_log` VALUES (191, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:53:39');
INSERT INTO `sys_job_log` VALUES (192, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:53:49');
INSERT INTO `sys_job_log` VALUES (193, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:53:59');
INSERT INTO `sys_job_log` VALUES (194, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:54:09');
INSERT INTO `sys_job_log` VALUES (195, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 20:54:19');
INSERT INTO `sys_job_log` VALUES (196, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:54:29');
INSERT INTO `sys_job_log` VALUES (197, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:54:40');
INSERT INTO `sys_job_log` VALUES (198, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:54:49');
INSERT INTO `sys_job_log` VALUES (199, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:54:59');
INSERT INTO `sys_job_log` VALUES (200, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:55:09');
INSERT INTO `sys_job_log` VALUES (201, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:55:19');
INSERT INTO `sys_job_log` VALUES (202, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 20:55:29');
INSERT INTO `sys_job_log` VALUES (203, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:55:39');
INSERT INTO `sys_job_log` VALUES (204, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:55:49');
INSERT INTO `sys_job_log` VALUES (205, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:55:59');
INSERT INTO `sys_job_log` VALUES (206, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:56:09');
INSERT INTO `sys_job_log` VALUES (207, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:56:19');
INSERT INTO `sys_job_log` VALUES (208, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:56:29');
INSERT INTO `sys_job_log` VALUES (209, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:56:39');
INSERT INTO `sys_job_log` VALUES (210, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-04-26 20:56:49');
INSERT INTO `sys_job_log` VALUES (211, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 20:56:59');
INSERT INTO `sys_job_log` VALUES (212, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:08:57');
INSERT INTO `sys_job_log` VALUES (213, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:09:07');
INSERT INTO `sys_job_log` VALUES (214, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:09:17');
INSERT INTO `sys_job_log` VALUES (215, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:09:27');
INSERT INTO `sys_job_log` VALUES (216, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:09:37');
INSERT INTO `sys_job_log` VALUES (217, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:09:47');
INSERT INTO `sys_job_log` VALUES (218, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:09:57');
INSERT INTO `sys_job_log` VALUES (219, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:10:07');
INSERT INTO `sys_job_log` VALUES (220, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:10:17');
INSERT INTO `sys_job_log` VALUES (221, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:10:27');
INSERT INTO `sys_job_log` VALUES (222, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:10:37');
INSERT INTO `sys_job_log` VALUES (223, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:10:47');
INSERT INTO `sys_job_log` VALUES (224, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:10:57');
INSERT INTO `sys_job_log` VALUES (225, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:11:07');
INSERT INTO `sys_job_log` VALUES (226, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:11:17');
INSERT INTO `sys_job_log` VALUES (227, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:11:27');
INSERT INTO `sys_job_log` VALUES (228, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:11:37');
INSERT INTO `sys_job_log` VALUES (229, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:11:47');
INSERT INTO `sys_job_log` VALUES (230, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:11:57');
INSERT INTO `sys_job_log` VALUES (231, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:12:07');
INSERT INTO `sys_job_log` VALUES (232, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:12:17');
INSERT INTO `sys_job_log` VALUES (233, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:12:28');
INSERT INTO `sys_job_log` VALUES (234, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:12:37');
INSERT INTO `sys_job_log` VALUES (235, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:12:47');
INSERT INTO `sys_job_log` VALUES (236, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:12:57');
INSERT INTO `sys_job_log` VALUES (237, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:13:07');
INSERT INTO `sys_job_log` VALUES (238, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:13:17');
INSERT INTO `sys_job_log` VALUES (239, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:13:27');
INSERT INTO `sys_job_log` VALUES (240, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:13:37');
INSERT INTO `sys_job_log` VALUES (241, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:13:47');
INSERT INTO `sys_job_log` VALUES (242, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:13:57');
INSERT INTO `sys_job_log` VALUES (243, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：6毫秒', '0', '', '2019-04-26 21:14:07');
INSERT INTO `sys_job_log` VALUES (244, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:14:17');
INSERT INTO `sys_job_log` VALUES (245, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:14:27');
INSERT INTO `sys_job_log` VALUES (246, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:14:37');
INSERT INTO `sys_job_log` VALUES (247, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:14:47');
INSERT INTO `sys_job_log` VALUES (248, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:14:57');
INSERT INTO `sys_job_log` VALUES (249, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:15:07');
INSERT INTO `sys_job_log` VALUES (250, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:15:17');
INSERT INTO `sys_job_log` VALUES (251, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：5毫秒', '0', '', '2019-04-26 21:15:27');
INSERT INTO `sys_job_log` VALUES (252, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:15:37');
INSERT INTO `sys_job_log` VALUES (253, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:15:47');
INSERT INTO `sys_job_log` VALUES (254, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:15:57');
INSERT INTO `sys_job_log` VALUES (255, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:16:07');
INSERT INTO `sys_job_log` VALUES (256, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:16:17');
INSERT INTO `sys_job_log` VALUES (257, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:16:27');
INSERT INTO `sys_job_log` VALUES (258, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:16:37');
INSERT INTO `sys_job_log` VALUES (259, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:16:47');
INSERT INTO `sys_job_log` VALUES (260, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:16:57');
INSERT INTO `sys_job_log` VALUES (261, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:17:07');
INSERT INTO `sys_job_log` VALUES (262, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:17:17');
INSERT INTO `sys_job_log` VALUES (263, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:17:27');
INSERT INTO `sys_job_log` VALUES (264, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:17:37');
INSERT INTO `sys_job_log` VALUES (265, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:17:47');
INSERT INTO `sys_job_log` VALUES (266, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:17:57');
INSERT INTO `sys_job_log` VALUES (267, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:18:07');
INSERT INTO `sys_job_log` VALUES (268, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:18:17');
INSERT INTO `sys_job_log` VALUES (269, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:18:27');
INSERT INTO `sys_job_log` VALUES (270, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:18:37');
INSERT INTO `sys_job_log` VALUES (271, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：11毫秒', '0', '', '2019-04-26 21:18:47');
INSERT INTO `sys_job_log` VALUES (272, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:18:57');
INSERT INTO `sys_job_log` VALUES (273, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:19:07');
INSERT INTO `sys_job_log` VALUES (274, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:19:17');
INSERT INTO `sys_job_log` VALUES (275, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:19:27');
INSERT INTO `sys_job_log` VALUES (276, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:19:37');
INSERT INTO `sys_job_log` VALUES (277, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:19:47');
INSERT INTO `sys_job_log` VALUES (278, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:19:57');
INSERT INTO `sys_job_log` VALUES (279, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:20:07');
INSERT INTO `sys_job_log` VALUES (280, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:20:17');
INSERT INTO `sys_job_log` VALUES (281, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:20:27');
INSERT INTO `sys_job_log` VALUES (282, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:20:37');
INSERT INTO `sys_job_log` VALUES (283, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:20:47');
INSERT INTO `sys_job_log` VALUES (284, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:20:57');
INSERT INTO `sys_job_log` VALUES (285, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:21:07');
INSERT INTO `sys_job_log` VALUES (286, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:21:17');
INSERT INTO `sys_job_log` VALUES (287, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:21:27');
INSERT INTO `sys_job_log` VALUES (288, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：11毫秒', '0', '', '2019-04-26 21:21:37');
INSERT INTO `sys_job_log` VALUES (289, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:21:47');
INSERT INTO `sys_job_log` VALUES (290, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:21:57');
INSERT INTO `sys_job_log` VALUES (291, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:22:07');
INSERT INTO `sys_job_log` VALUES (292, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:22:17');
INSERT INTO `sys_job_log` VALUES (293, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:22:27');
INSERT INTO `sys_job_log` VALUES (294, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:22:37');
INSERT INTO `sys_job_log` VALUES (295, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:22:47');
INSERT INTO `sys_job_log` VALUES (296, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:22:57');
INSERT INTO `sys_job_log` VALUES (297, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:23:07');
INSERT INTO `sys_job_log` VALUES (298, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:23:17');
INSERT INTO `sys_job_log` VALUES (299, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:23:27');
INSERT INTO `sys_job_log` VALUES (300, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:23:37');
INSERT INTO `sys_job_log` VALUES (301, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-04-26 21:23:47');
INSERT INTO `sys_job_log` VALUES (302, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:23:57');
INSERT INTO `sys_job_log` VALUES (303, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-04-26 21:24:07');
INSERT INTO `sys_job_log` VALUES (304, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-04-26 21:24:23');
INSERT INTO `sys_job_log` VALUES (305, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:13:12');
INSERT INTO `sys_job_log` VALUES (306, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:13:32');
INSERT INTO `sys_job_log` VALUES (307, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:13:52');
INSERT INTO `sys_job_log` VALUES (308, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:14:12');
INSERT INTO `sys_job_log` VALUES (309, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 09:14:32');
INSERT INTO `sys_job_log` VALUES (310, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:14:52');
INSERT INTO `sys_job_log` VALUES (311, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:15:12');
INSERT INTO `sys_job_log` VALUES (312, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:15:49');
INSERT INTO `sys_job_log` VALUES (313, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-05 09:16:09');
INSERT INTO `sys_job_log` VALUES (314, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:16:29');
INSERT INTO `sys_job_log` VALUES (315, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:16:49');
INSERT INTO `sys_job_log` VALUES (316, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:17:09');
INSERT INTO `sys_job_log` VALUES (317, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:17:29');
INSERT INTO `sys_job_log` VALUES (318, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：7毫秒', '0', '', '2019-05-05 09:17:49');
INSERT INTO `sys_job_log` VALUES (319, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:18:09');
INSERT INTO `sys_job_log` VALUES (320, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:18:29');
INSERT INTO `sys_job_log` VALUES (321, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-05 09:18:49');
INSERT INTO `sys_job_log` VALUES (322, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:19:09');
INSERT INTO `sys_job_log` VALUES (323, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:19:29');
INSERT INTO `sys_job_log` VALUES (324, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:19:49');
INSERT INTO `sys_job_log` VALUES (325, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：3毫秒', '0', '', '2019-05-05 09:20:09');
INSERT INTO `sys_job_log` VALUES (326, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-05 09:20:29');
INSERT INTO `sys_job_log` VALUES (327, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：48毫秒', '0', '', '2019-05-05 09:20:49');
INSERT INTO `sys_job_log` VALUES (328, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-05 09:21:09');
INSERT INTO `sys_job_log` VALUES (329, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：3毫秒', '0', '', '2019-05-05 09:21:29');
INSERT INTO `sys_job_log` VALUES (330, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 09:21:49');
INSERT INTO `sys_job_log` VALUES (331, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:22:09');
INSERT INTO `sys_job_log` VALUES (332, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-05 09:22:29');
INSERT INTO `sys_job_log` VALUES (333, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 09:22:49');
INSERT INTO `sys_job_log` VALUES (334, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 09:23:09');
INSERT INTO `sys_job_log` VALUES (335, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：46毫秒', '0', '', '2019-05-05 09:23:29');
INSERT INTO `sys_job_log` VALUES (336, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 20:25:09');
INSERT INTO `sys_job_log` VALUES (337, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 20:25:29');
INSERT INTO `sys_job_log` VALUES (338, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 20:25:49');
INSERT INTO `sys_job_log` VALUES (339, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：10毫秒', '0', '', '2019-05-05 20:26:09');
INSERT INTO `sys_job_log` VALUES (340, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 20:26:29');
INSERT INTO `sys_job_log` VALUES (341, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 20:26:49');
INSERT INTO `sys_job_log` VALUES (342, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 20:27:09');
INSERT INTO `sys_job_log` VALUES (343, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 20:27:29');
INSERT INTO `sys_job_log` VALUES (344, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:52:28');
INSERT INTO `sys_job_log` VALUES (345, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 22:52:38');
INSERT INTO `sys_job_log` VALUES (346, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:52:48');
INSERT INTO `sys_job_log` VALUES (347, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:52:58');
INSERT INTO `sys_job_log` VALUES (348, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:53:08');
INSERT INTO `sys_job_log` VALUES (349, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:53:18');
INSERT INTO `sys_job_log` VALUES (350, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:53:28');
INSERT INTO `sys_job_log` VALUES (351, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:53:38');
INSERT INTO `sys_job_log` VALUES (352, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:53:48');
INSERT INTO `sys_job_log` VALUES (353, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:53:59');
INSERT INTO `sys_job_log` VALUES (354, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:54:08');
INSERT INTO `sys_job_log` VALUES (355, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 22:54:18');
INSERT INTO `sys_job_log` VALUES (356, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:54:28');
INSERT INTO `sys_job_log` VALUES (357, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:54:38');
INSERT INTO `sys_job_log` VALUES (358, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:54:48');
INSERT INTO `sys_job_log` VALUES (359, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:54:58');
INSERT INTO `sys_job_log` VALUES (360, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:55:08');
INSERT INTO `sys_job_log` VALUES (361, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 22:55:18');
INSERT INTO `sys_job_log` VALUES (362, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 22:55:28');
INSERT INTO `sys_job_log` VALUES (363, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-05 22:55:39');
INSERT INTO `sys_job_log` VALUES (364, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-05 22:55:49');
INSERT INTO `sys_job_log` VALUES (365, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-07 09:08:30');
INSERT INTO `sys_job_log` VALUES (366, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-05-07 09:08:40');
INSERT INTO `sys_job_log` VALUES (367, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 09:08:50');
INSERT INTO `sys_job_log` VALUES (368, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 09:09:00');
INSERT INTO `sys_job_log` VALUES (369, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 09:09:10');
INSERT INTO `sys_job_log` VALUES (370, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 09:09:20');
INSERT INTO `sys_job_log` VALUES (371, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 09:09:30');
INSERT INTO `sys_job_log` VALUES (372, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-07 09:09:40');
INSERT INTO `sys_job_log` VALUES (373, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-07 10:17:50');
INSERT INTO `sys_job_log` VALUES (374, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 10:18:00');
INSERT INTO `sys_job_log` VALUES (375, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:18:10');
INSERT INTO `sys_job_log` VALUES (376, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:18:20');
INSERT INTO `sys_job_log` VALUES (377, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:18:30');
INSERT INTO `sys_job_log` VALUES (378, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 10:18:40');
INSERT INTO `sys_job_log` VALUES (379, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:18:50');
INSERT INTO `sys_job_log` VALUES (380, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:19:00');
INSERT INTO `sys_job_log` VALUES (381, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:19:10');
INSERT INTO `sys_job_log` VALUES (382, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 10:19:20');
INSERT INTO `sys_job_log` VALUES (383, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:19:30');
INSERT INTO `sys_job_log` VALUES (384, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:19:40');
INSERT INTO `sys_job_log` VALUES (385, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:20:00');
INSERT INTO `sys_job_log` VALUES (386, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:20:20');
INSERT INTO `sys_job_log` VALUES (387, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:20:40');
INSERT INTO `sys_job_log` VALUES (388, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:21:00');
INSERT INTO `sys_job_log` VALUES (389, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 10:21:20');
INSERT INTO `sys_job_log` VALUES (390, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:21:40');
INSERT INTO `sys_job_log` VALUES (391, 'ryTask', '系统默认（有参）', 'ryParams', 'ry', 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 10:22:00');
INSERT INTO `sys_job_log` VALUES (392, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:04:36');
INSERT INTO `sys_job_log` VALUES (393, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:04:46');
INSERT INTO `sys_job_log` VALUES (394, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:04:56');
INSERT INTO `sys_job_log` VALUES (395, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:05:06');
INSERT INTO `sys_job_log` VALUES (396, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:05:16');
INSERT INTO `sys_job_log` VALUES (397, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:05:26');
INSERT INTO `sys_job_log` VALUES (398, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:05:36');
INSERT INTO `sys_job_log` VALUES (399, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:05:46');
INSERT INTO `sys_job_log` VALUES (400, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:05:56');
INSERT INTO `sys_job_log` VALUES (401, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:06:06');
INSERT INTO `sys_job_log` VALUES (402, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:06:16');
INSERT INTO `sys_job_log` VALUES (403, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:06:26');
INSERT INTO `sys_job_log` VALUES (404, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:06:36');
INSERT INTO `sys_job_log` VALUES (405, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:06:46');
INSERT INTO `sys_job_log` VALUES (406, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:06:56');
INSERT INTO `sys_job_log` VALUES (407, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:07:06');
INSERT INTO `sys_job_log` VALUES (408, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:07:16');
INSERT INTO `sys_job_log` VALUES (409, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:07:26');
INSERT INTO `sys_job_log` VALUES (410, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:07:36');
INSERT INTO `sys_job_log` VALUES (411, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:07:46');
INSERT INTO `sys_job_log` VALUES (412, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:07:56');
INSERT INTO `sys_job_log` VALUES (413, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:08:06');
INSERT INTO `sys_job_log` VALUES (414, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:08:16');
INSERT INTO `sys_job_log` VALUES (415, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:08:26');
INSERT INTO `sys_job_log` VALUES (416, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:08:36');
INSERT INTO `sys_job_log` VALUES (417, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:08:46');
INSERT INTO `sys_job_log` VALUES (418, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:08:56');
INSERT INTO `sys_job_log` VALUES (419, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:09:06');
INSERT INTO `sys_job_log` VALUES (420, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:09:16');
INSERT INTO `sys_job_log` VALUES (421, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:09:26');
INSERT INTO `sys_job_log` VALUES (422, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:09:36');
INSERT INTO `sys_job_log` VALUES (423, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:09:46');
INSERT INTO `sys_job_log` VALUES (424, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:09:56');
INSERT INTO `sys_job_log` VALUES (425, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:10:06');
INSERT INTO `sys_job_log` VALUES (426, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:10:16');
INSERT INTO `sys_job_log` VALUES (427, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:10:26');
INSERT INTO `sys_job_log` VALUES (428, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:10:36');
INSERT INTO `sys_job_log` VALUES (429, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:10:46');
INSERT INTO `sys_job_log` VALUES (430, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:10:56');
INSERT INTO `sys_job_log` VALUES (431, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:11:06');
INSERT INTO `sys_job_log` VALUES (432, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:11:16');
INSERT INTO `sys_job_log` VALUES (433, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:11:26');
INSERT INTO `sys_job_log` VALUES (434, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:11:36');
INSERT INTO `sys_job_log` VALUES (435, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:11:46');
INSERT INTO `sys_job_log` VALUES (436, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:11:56');
INSERT INTO `sys_job_log` VALUES (437, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:12:06');
INSERT INTO `sys_job_log` VALUES (438, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:12:16');
INSERT INTO `sys_job_log` VALUES (439, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:12:26');
INSERT INTO `sys_job_log` VALUES (440, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:12:36');
INSERT INTO `sys_job_log` VALUES (441, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:12:46');
INSERT INTO `sys_job_log` VALUES (442, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:12:56');
INSERT INTO `sys_job_log` VALUES (443, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:13:06');
INSERT INTO `sys_job_log` VALUES (444, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:13:16');
INSERT INTO `sys_job_log` VALUES (445, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:13:26');
INSERT INTO `sys_job_log` VALUES (446, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:13:36');
INSERT INTO `sys_job_log` VALUES (447, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:13:46');
INSERT INTO `sys_job_log` VALUES (448, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:13:56');
INSERT INTO `sys_job_log` VALUES (449, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:14:06');
INSERT INTO `sys_job_log` VALUES (450, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:14:16');
INSERT INTO `sys_job_log` VALUES (451, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:14:26');
INSERT INTO `sys_job_log` VALUES (452, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:14:36');
INSERT INTO `sys_job_log` VALUES (453, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:14:46');
INSERT INTO `sys_job_log` VALUES (454, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:14:56');
INSERT INTO `sys_job_log` VALUES (455, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:15:06');
INSERT INTO `sys_job_log` VALUES (456, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:15:16');
INSERT INTO `sys_job_log` VALUES (457, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:15:26');
INSERT INTO `sys_job_log` VALUES (458, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:15:36');
INSERT INTO `sys_job_log` VALUES (459, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：9毫秒', '0', '', '2019-05-07 14:15:46');
INSERT INTO `sys_job_log` VALUES (460, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:15:56');
INSERT INTO `sys_job_log` VALUES (461, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:16:06');
INSERT INTO `sys_job_log` VALUES (462, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:16:16');
INSERT INTO `sys_job_log` VALUES (463, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:16:26');
INSERT INTO `sys_job_log` VALUES (464, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:16:36');
INSERT INTO `sys_job_log` VALUES (465, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：8毫秒', '0', '', '2019-05-07 14:16:46');
INSERT INTO `sys_job_log` VALUES (466, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:16:56');
INSERT INTO `sys_job_log` VALUES (467, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:17:06');
INSERT INTO `sys_job_log` VALUES (468, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:17:16');
INSERT INTO `sys_job_log` VALUES (469, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:17:26');
INSERT INTO `sys_job_log` VALUES (470, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:17:36');
INSERT INTO `sys_job_log` VALUES (471, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:17:46');
INSERT INTO `sys_job_log` VALUES (472, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:17:56');
INSERT INTO `sys_job_log` VALUES (473, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:18:06');
INSERT INTO `sys_job_log` VALUES (474, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:18:16');
INSERT INTO `sys_job_log` VALUES (475, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:18:26');
INSERT INTO `sys_job_log` VALUES (476, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:18:36');
INSERT INTO `sys_job_log` VALUES (477, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:18:46');
INSERT INTO `sys_job_log` VALUES (478, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:18:56');
INSERT INTO `sys_job_log` VALUES (479, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:19:06');
INSERT INTO `sys_job_log` VALUES (480, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:19:16');
INSERT INTO `sys_job_log` VALUES (481, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:19:26');
INSERT INTO `sys_job_log` VALUES (482, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:19:36');
INSERT INTO `sys_job_log` VALUES (483, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:19:46');
INSERT INTO `sys_job_log` VALUES (484, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：0毫秒', '0', '', '2019-05-07 14:19:56');
INSERT INTO `sys_job_log` VALUES (485, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：1毫秒', '0', '', '2019-05-07 14:20:06');
INSERT INTO `sys_job_log` VALUES (486, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：4毫秒', '0', '', '2019-05-07 14:20:16');
INSERT INTO `sys_job_log` VALUES (487, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：2毫秒', '0', '', '2019-05-09 19:20:41');
INSERT INTO `sys_job_log` VALUES (488, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-05-09 19:20:51');
INSERT INTO `sys_job_log` VALUES (489, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：8毫秒', '0', '', '2019-05-09 19:21:01');
INSERT INTO `sys_job_log` VALUES (490, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：3毫秒', '0', '', '2019-05-09 19:21:11');
INSERT INTO `sys_job_log` VALUES (491, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：16毫秒', '0', '', '2019-05-09 19:21:21');
INSERT INTO `sys_job_log` VALUES (492, 'ryTask', '系统默认（无参）', 'ryNoParams', NULL, 'ryTask 总共耗时：4毫秒', '0', '', '2019-05-09 19:21:31');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 733 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-18 16:03:28');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-18 16:51:47');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-18 20:40:10');
INSERT INTO `sys_logininfor` VALUES (103, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-18 20:40:20');
INSERT INTO `sys_logininfor` VALUES (104, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-18 20:40:25');
INSERT INTO `sys_logininfor` VALUES (105, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-18 20:40:32');
INSERT INTO `sys_logininfor` VALUES (106, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-18 20:49:08');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-04-18 20:49:19');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误2次', '2019-04-18 20:49:27');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-18 20:49:35');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误3次', '2019-04-18 20:49:38');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-18 20:49:45');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误4次', '2019-04-18 20:49:51');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误5次', '2019-04-18 20:50:30');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '用户不存在/密码错误', '2019-04-18 20:51:05');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误5次，帐户锁定10分钟', '2019-04-18 20:51:52');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误5次，帐户锁定10分钟', '2019-04-18 20:59:32');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-18 21:29:52');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-18 22:04:12');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-18 22:15:53');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-18 22:40:35');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-18 22:40:40');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-19 08:55:41');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-19 08:55:49');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-19 09:35:30');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-19 09:55:45');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-19 09:56:02');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-19 10:01:06');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-19 10:50:32');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-19 11:06:04');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-19 14:11:06');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-19 16:19:12');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-19 16:21:22');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-19 21:15:37');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 08:44:54');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 08:45:55');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 09:36:53');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 09:37:05');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-22 09:42:49');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-22 09:42:52');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 09:42:56');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 09:58:52');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:06:34');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:10:36');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:11:38');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-22 10:12:46');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 10:12:49');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:16:13');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:20:25');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:26:11');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:31:41');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 10:41:49');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:44:25');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:45:59');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 10:51:44');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 11:00:44');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 11:35:31');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 11:37:28');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 11:39:41');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 11:40:50');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 11:42:19');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 11:44:56');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:03:20');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:16:22');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 12:22:27');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:44:31');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:48:59');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:51:54');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:54:22');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:55:26');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 12:56:36');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 13:53:10');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 13:54:50');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 14:08:41');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 14:17:17');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 14:18:16');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 14:26:29');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 14:28:55');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 14:32:48');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 14:40:55');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 14:41:00');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 14:46:56');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 14:48:07');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 14:50:53');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-22 14:52:42');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 15:03:00');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 15:11:27');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 15:17:52');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-22 15:41:55');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 15:42:06');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '验证码错误', '2019-04-22 15:46:03');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-22 15:46:08');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-22 21:15:53');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-23 08:36:25');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-23 08:41:14');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 09:13:40');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-23 09:46:55');
INSERT INTO `sys_logininfor` VALUES (197, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-23 09:47:07');
INSERT INTO `sys_logininfor` VALUES (198, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-23 09:47:15');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-23 09:47:19');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-23 09:47:27');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-23 09:47:35');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-23 09:47:56');
INSERT INTO `sys_logininfor` VALUES (203, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-23 09:48:12');
INSERT INTO `sys_logininfor` VALUES (204, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-23 09:51:18');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-23 09:51:27');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 09:58:44');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 10:01:09');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 10:25:15');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 11:05:59');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-23 11:39:53');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 13:05:47');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-23 14:04:02');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:46:23');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:48:02');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:51:15');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:52:24');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:53:57');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:56:15');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 14:58:00');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:07:47');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-23 15:18:41');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:18:44');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:24:59');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:44:33');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-23 15:44:36');
INSERT INTO `sys_logininfor` VALUES (226, 'niushihao', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:44:45');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 15:51:17');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:15:42');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:18:18');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:20:04');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:29:29');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:32:01');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:32:39');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:45:29');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:47:03');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:49:02');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 16:50:34');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:09:41');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 17:13:53');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 18:08:32');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 18:10:10');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 18:14:26');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 18:19:52');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 18:24:34');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 20:51:30');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-23 21:08:23');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-24 11:40:10');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-24 12:10:06');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-24 12:29:24');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-24 12:29:33');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-24 12:29:39');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-24 12:29:44');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-24 12:33:21');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-24 14:01:15');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-24 14:56:24');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-24 14:56:34');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-24 20:18:36');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-25 08:38:57');
INSERT INTO `sys_logininfor` VALUES (259, 'yangjunchao1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-25 08:39:10');
INSERT INTO `sys_logininfor` VALUES (260, 'yangjunchao1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-04-25 08:39:51');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-25 08:39:59');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 10:18:14');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 10:44:07');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 10:46:58');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-25 10:53:51');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 08:55:10');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 08:59:32');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:01:37');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:02:38');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:35:02');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 09:42:41');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:42:43');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:51:08');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 09:54:43');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:01:31');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 10:06:59');
INSERT INTO `sys_logininfor` VALUES (277, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 10:07:12');
INSERT INTO `sys_logininfor` VALUES (278, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 10:11:11');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 10:11:15');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:13:55');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:18:01');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 10:18:45');
INSERT INTO `sys_logininfor` VALUES (283, 'yangjunchao', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '用户不存在/密码错误', '2019-04-26 10:18:55');
INSERT INTO `sys_logininfor` VALUES (284, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 10:19:14');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:21:41');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 10:23:57');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 10:24:01');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 10:24:07');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:33:40');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:47:16');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 10:55:49');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:03:40');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:06:39');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:10:42');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:12:22');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:17:26');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:20:48');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:23:04');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:26:08');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:27:41');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:29:27');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 11:30:47');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:30:50');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:32:45');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:35:02');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 11:46:39');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 11:51:31');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:39:01');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 14:39:54');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 14:42:24');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 14:44:58');
INSERT INTO `sys_logininfor` VALUES (312, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 14:45:05');
INSERT INTO `sys_logininfor` VALUES (313, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:45:47');
INSERT INTO `sys_logininfor` VALUES (314, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 14:46:26');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 14:46:29');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:46:31');
INSERT INTO `sys_logininfor` VALUES (317, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:47:57');
INSERT INTO `sys_logininfor` VALUES (318, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 14:48:16');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 14:48:21');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:48:23');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 14:50:58');
INSERT INTO `sys_logininfor` VALUES (322, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:51:08');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 14:51:13');
INSERT INTO `sys_logininfor` VALUES (324, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 14:54:14');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 14:55:20');
INSERT INTO `sys_logininfor` VALUES (326, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 15:01:10');
INSERT INTO `sys_logininfor` VALUES (327, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:01:13');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 15:04:44');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 15:09:48');
INSERT INTO `sys_logininfor` VALUES (330, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:10:43');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:10:47');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:14:02');
INSERT INTO `sys_logininfor` VALUES (333, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 15:14:10');
INSERT INTO `sys_logininfor` VALUES (334, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 15:14:14');
INSERT INTO `sys_logininfor` VALUES (335, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:14:18');
INSERT INTO `sys_logininfor` VALUES (336, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 15:14:28');
INSERT INTO `sys_logininfor` VALUES (337, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:14:33');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 15:15:31');
INSERT INTO `sys_logininfor` VALUES (339, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 15:15:32');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:15:34');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:23:16');
INSERT INTO `sys_logininfor` VALUES (342, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:23:25');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:24:14');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:24:33');
INSERT INTO `sys_logininfor` VALUES (345, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 15:24:40');
INSERT INTO `sys_logininfor` VALUES (346, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 15:24:45');
INSERT INTO `sys_logininfor` VALUES (347, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 15:24:53');
INSERT INTO `sys_logininfor` VALUES (348, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误2次', '2019-04-26 15:24:58');
INSERT INTO `sys_logininfor` VALUES (349, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误3次', '2019-04-26 15:25:08');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:25:53');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:26:06');
INSERT INTO `sys_logininfor` VALUES (352, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误4次', '2019-04-26 15:26:13');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:26:25');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:28:37');
INSERT INTO `sys_logininfor` VALUES (355, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误5次', '2019-04-26 15:28:46');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:29:38');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-26 15:37:25');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:37:36');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:43:06');
INSERT INTO `sys_logininfor` VALUES (360, 'yang6622918', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 15:43:14');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:43:40');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 15:49:04');
INSERT INTO `sys_logininfor` VALUES (363, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:49:12');
INSERT INTO `sys_logininfor` VALUES (364, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 15:51:20');
INSERT INTO `sys_logininfor` VALUES (365, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 15:51:40');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:11:08');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:20:36');
INSERT INTO `sys_logininfor` VALUES (368, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:22:33');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:22:37');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:23:21');
INSERT INTO `sys_logininfor` VALUES (371, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:23:28');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 16:24:15');
INSERT INTO `sys_logininfor` VALUES (373, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:24:18');
INSERT INTO `sys_logininfor` VALUES (374, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:29:27');
INSERT INTO `sys_logininfor` VALUES (375, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:32:07');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:47:22');
INSERT INTO `sys_logininfor` VALUES (377, 'yang6622918', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 16:47:49');
INSERT INTO `sys_logininfor` VALUES (378, '杨军超', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '验证码错误', '2019-04-26 16:48:05');
INSERT INTO `sys_logininfor` VALUES (379, '杨军超', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '用户不存在/密码错误', '2019-04-26 16:48:10');
INSERT INTO `sys_logininfor` VALUES (380, 'xicheyuan2', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '用户不存在/密码错误', '2019-04-26 16:49:14');
INSERT INTO `sys_logininfor` VALUES (381, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 16:50:12');
INSERT INTO `sys_logininfor` VALUES (382, 'xicheyuan2', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '用户不存在/密码错误', '2019-04-26 16:54:43');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:54:58');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:55:05');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:55:15');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:57:31');
INSERT INTO `sys_logininfor` VALUES (387, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 16:57:47');
INSERT INTO `sys_logininfor` VALUES (388, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:57:56');
INSERT INTO `sys_logininfor` VALUES (389, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:58:09');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:58:13');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:58:24');
INSERT INTO `sys_logininfor` VALUES (392, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:58:30');
INSERT INTO `sys_logininfor` VALUES (393, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:58:42');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:58:46');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:59:31');
INSERT INTO `sys_logininfor` VALUES (396, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 16:59:49');
INSERT INTO `sys_logininfor` VALUES (397, 'zww', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 16:59:58');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:00:05');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:01:24');
INSERT INTO `sys_logininfor` VALUES (400, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 17:01:32');
INSERT INTO `sys_logininfor` VALUES (401, 'niushihao', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '密码输入错误1次', '2019-04-26 17:01:54');
INSERT INTO `sys_logininfor` VALUES (402, 'niushihao', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '密码输入错误2次', '2019-04-26 17:01:57');
INSERT INTO `sys_logininfor` VALUES (403, 'ad', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '1', '验证码错误', '2019-04-26 17:02:09');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:02:15');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 17:02:33');
INSERT INTO `sys_logininfor` VALUES (406, '123456789', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:02:44');
INSERT INTO `sys_logininfor` VALUES (407, '123456789', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '退出成功', '2019-04-26 17:02:57');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:03:02');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:06:08');
INSERT INTO `sys_logininfor` VALUES (410, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 17:31:37');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 17:31:41');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-26 18:40:30');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 19:03:03');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 20:46:14');
INSERT INTO `sys_logininfor` VALUES (415, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 20:46:24');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 21:31:17');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-04-26 21:31:21');
INSERT INTO `sys_logininfor` VALUES (418, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 21:34:47');
INSERT INTO `sys_logininfor` VALUES (419, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-04-26 21:35:09');
INSERT INTO `sys_logininfor` VALUES (420, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-26 21:35:36');
INSERT INTO `sys_logininfor` VALUES (421, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-04-26 21:35:45');
INSERT INTO `sys_logininfor` VALUES (422, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-04-26 21:35:52');
INSERT INTO `sys_logininfor` VALUES (423, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 21:36:14');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 22:57:39');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 22:57:43');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 22:59:18');
INSERT INTO `sys_logininfor` VALUES (427, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 23:00:40');
INSERT INTO `sys_logininfor` VALUES (428, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 23:02:05');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-04-26 23:04:13');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 23:04:15');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-04-26 23:06:00');
INSERT INTO `sys_logininfor` VALUES (432, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 23:30:18');
INSERT INTO `sys_logininfor` VALUES (433, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 23:30:25');
INSERT INTO `sys_logininfor` VALUES (434, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-26 23:36:57');
INSERT INTO `sys_logininfor` VALUES (435, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 23:37:04');
INSERT INTO `sys_logininfor` VALUES (436, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 23:46:54');
INSERT INTO `sys_logininfor` VALUES (437, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-04-26 23:51:21');
INSERT INTO `sys_logininfor` VALUES (438, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-26 23:51:24');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-27 00:11:56');
INSERT INTO `sys_logininfor` VALUES (440, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-27 00:41:51');
INSERT INTO `sys_logininfor` VALUES (441, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-27 00:41:54');
INSERT INTO `sys_logininfor` VALUES (442, '123456789', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-27 00:45:36');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-27 00:47:02');
INSERT INTO `sys_logininfor` VALUES (444, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-27 00:50:35');
INSERT INTO `sys_logininfor` VALUES (445, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-27 01:43:15');
INSERT INTO `sys_logininfor` VALUES (446, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-04-27 10:11:05');
INSERT INTO `sys_logininfor` VALUES (447, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-27 10:11:38');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-27 10:11:43');
INSERT INTO `sys_logininfor` VALUES (449, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-04-27 10:12:20');
INSERT INTO `sys_logininfor` VALUES (450, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-27 10:12:27');
INSERT INTO `sys_logininfor` VALUES (451, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-04-27 10:16:23');
INSERT INTO `sys_logininfor` VALUES (452, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-04-27 11:16:10');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-05 08:54:58');
INSERT INTO `sys_logininfor` VALUES (454, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-05 09:03:55');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-05 10:24:57');
INSERT INTO `sys_logininfor` VALUES (456, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-05 11:00:09');
INSERT INTO `sys_logininfor` VALUES (457, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-05 11:06:44');
INSERT INTO `sys_logininfor` VALUES (458, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-05 11:11:51');
INSERT INTO `sys_logininfor` VALUES (459, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-05 11:12:45');
INSERT INTO `sys_logininfor` VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-05 11:35:49');
INSERT INTO `sys_logininfor` VALUES (461, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-05 20:03:30');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-05 20:21:58');
INSERT INTO `sys_logininfor` VALUES (463, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-05 20:25:09');
INSERT INTO `sys_logininfor` VALUES (464, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-06 08:24:56');
INSERT INTO `sys_logininfor` VALUES (465, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-06 08:25:41');
INSERT INTO `sys_logininfor` VALUES (466, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-07 08:47:21');
INSERT INTO `sys_logininfor` VALUES (467, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 08:47:55');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-07 08:48:15');
INSERT INTO `sys_logininfor` VALUES (469, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 08:51:25');
INSERT INTO `sys_logininfor` VALUES (470, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-05-07 09:00:03');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 13:22:43');
INSERT INTO `sys_logininfor` VALUES (472, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 13:22:45');
INSERT INTO `sys_logininfor` VALUES (473, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 13:40:07');
INSERT INTO `sys_logininfor` VALUES (474, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 13:40:09');
INSERT INTO `sys_logininfor` VALUES (475, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 13:52:46');
INSERT INTO `sys_logininfor` VALUES (476, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 13:53:11');
INSERT INTO `sys_logininfor` VALUES (477, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 16:28:31');
INSERT INTO `sys_logininfor` VALUES (478, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:15:31');
INSERT INTO `sys_logininfor` VALUES (479, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:16:23');
INSERT INTO `sys_logininfor` VALUES (480, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:18:28');
INSERT INTO `sys_logininfor` VALUES (481, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:18:38');
INSERT INTO `sys_logininfor` VALUES (482, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:19:56');
INSERT INTO `sys_logininfor` VALUES (483, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:22:50');
INSERT INTO `sys_logininfor` VALUES (484, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:22:56');
INSERT INTO `sys_logininfor` VALUES (485, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:24:52');
INSERT INTO `sys_logininfor` VALUES (486, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误1次', '2019-05-07 17:25:06');
INSERT INTO `sys_logininfor` VALUES (487, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '密码输入错误2次', '2019-05-07 17:25:30');
INSERT INTO `sys_logininfor` VALUES (488, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:25:47');
INSERT INTO `sys_logininfor` VALUES (489, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:27:08');
INSERT INTO `sys_logininfor` VALUES (490, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:27:16');
INSERT INTO `sys_logininfor` VALUES (491, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:31:20');
INSERT INTO `sys_logininfor` VALUES (492, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:31:26');
INSERT INTO `sys_logininfor` VALUES (493, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:32:55');
INSERT INTO `sys_logininfor` VALUES (494, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:33:04');
INSERT INTO `sys_logininfor` VALUES (495, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-05-07 17:36:46');
INSERT INTO `sys_logininfor` VALUES (496, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:36:49');
INSERT INTO `sys_logininfor` VALUES (497, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 17:39:28');
INSERT INTO `sys_logininfor` VALUES (498, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 17:39:47');
INSERT INTO `sys_logininfor` VALUES (499, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:21:08');
INSERT INTO `sys_logininfor` VALUES (500, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 19:21:13');
INSERT INTO `sys_logininfor` VALUES (501, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '用户不存在/密码错误', '2019-05-07 19:21:30');
INSERT INTO `sys_logininfor` VALUES (502, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:21:43');
INSERT INTO `sys_logininfor` VALUES (503, 'shangj', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-05-07 19:34:50');
INSERT INTO `sys_logininfor` VALUES (504, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:34:59');
INSERT INTO `sys_logininfor` VALUES (505, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:37:17');
INSERT INTO `sys_logininfor` VALUES (506, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 19:46:36');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:46:42');
INSERT INTO `sys_logininfor` VALUES (508, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 19:46:47');
INSERT INTO `sys_logininfor` VALUES (509, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:47:05');
INSERT INTO `sys_logininfor` VALUES (510, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 19:47:09');
INSERT INTO `sys_logininfor` VALUES (511, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:50:17');
INSERT INTO `sys_logininfor` VALUES (512, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 19:50:22');
INSERT INTO `sys_logininfor` VALUES (513, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 19:50:40');
INSERT INTO `sys_logininfor` VALUES (514, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 19:50:47');
INSERT INTO `sys_logininfor` VALUES (515, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 20:30:34');
INSERT INTO `sys_logininfor` VALUES (516, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 20:37:01');
INSERT INTO `sys_logininfor` VALUES (517, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 20:37:10');
INSERT INTO `sys_logininfor` VALUES (518, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 20:39:11');
INSERT INTO `sys_logininfor` VALUES (519, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 20:42:02');
INSERT INTO `sys_logininfor` VALUES (520, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 20:42:31');
INSERT INTO `sys_logininfor` VALUES (521, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 20:45:27');
INSERT INTO `sys_logininfor` VALUES (522, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 20:45:32');
INSERT INTO `sys_logininfor` VALUES (523, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 20:50:19');
INSERT INTO `sys_logininfor` VALUES (524, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 20:52:36');
INSERT INTO `sys_logininfor` VALUES (525, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 20:59:07');
INSERT INTO `sys_logininfor` VALUES (526, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 20:59:12');
INSERT INTO `sys_logininfor` VALUES (527, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 21:00:42');
INSERT INTO `sys_logininfor` VALUES (528, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-05-07 21:05:23');
INSERT INTO `sys_logininfor` VALUES (529, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 21:05:30');
INSERT INTO `sys_logininfor` VALUES (530, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-07 21:07:53');
INSERT INTO `sys_logininfor` VALUES (531, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 21:07:57');
INSERT INTO `sys_logininfor` VALUES (532, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 21:08:00');
INSERT INTO `sys_logininfor` VALUES (533, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 21:13:48');
INSERT INTO `sys_logininfor` VALUES (534, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 21:15:17');
INSERT INTO `sys_logininfor` VALUES (535, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 21:17:25');
INSERT INTO `sys_logininfor` VALUES (536, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 21:19:52');
INSERT INTO `sys_logininfor` VALUES (537, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-07 21:20:38');
INSERT INTO `sys_logininfor` VALUES (538, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:20:44');
INSERT INTO `sys_logininfor` VALUES (539, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:24:49');
INSERT INTO `sys_logininfor` VALUES (540, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:26:48');
INSERT INTO `sys_logininfor` VALUES (541, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 21:28:42');
INSERT INTO `sys_logininfor` VALUES (542, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:28:46');
INSERT INTO `sys_logininfor` VALUES (543, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 21:29:04');
INSERT INTO `sys_logininfor` VALUES (544, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:29:11');
INSERT INTO `sys_logininfor` VALUES (545, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:30:22');
INSERT INTO `sys_logininfor` VALUES (546, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 21:31:05');
INSERT INTO `sys_logininfor` VALUES (547, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:31:28');
INSERT INTO `sys_logininfor` VALUES (548, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 21:33:46');
INSERT INTO `sys_logininfor` VALUES (549, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:33:51');
INSERT INTO `sys_logininfor` VALUES (550, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:34:27');
INSERT INTO `sys_logininfor` VALUES (551, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:35:27');
INSERT INTO `sys_logininfor` VALUES (552, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 21:35:33');
INSERT INTO `sys_logininfor` VALUES (553, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:35:38');
INSERT INTO `sys_logininfor` VALUES (554, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-07 21:35:59');
INSERT INTO `sys_logininfor` VALUES (555, 'diangzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '用户不存在/密码错误', '2019-05-07 21:36:21');
INSERT INTO `sys_logininfor` VALUES (556, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-07 21:36:39');
INSERT INTO `sys_logininfor` VALUES (557, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:36:43');
INSERT INTO `sys_logininfor` VALUES (558, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-07 21:36:53');
INSERT INTO `sys_logininfor` VALUES (559, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:38:35');
INSERT INTO `sys_logininfor` VALUES (560, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:46:21');
INSERT INTO `sys_logininfor` VALUES (561, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:47:23');
INSERT INTO `sys_logininfor` VALUES (562, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:48:10');
INSERT INTO `sys_logininfor` VALUES (563, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:55:18');
INSERT INTO `sys_logininfor` VALUES (564, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 21:55:28');
INSERT INTO `sys_logininfor` VALUES (565, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 21:55:36');
INSERT INTO `sys_logininfor` VALUES (566, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:04:11');
INSERT INTO `sys_logininfor` VALUES (567, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-07 22:04:19');
INSERT INTO `sys_logininfor` VALUES (568, '13564895548', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:05:15');
INSERT INTO `sys_logininfor` VALUES (569, '13564895548', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-07 22:05:41');
INSERT INTO `sys_logininfor` VALUES (570, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:05:47');
INSERT INTO `sys_logininfor` VALUES (571, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-07 22:06:08');
INSERT INTO `sys_logininfor` VALUES (572, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:06:11');
INSERT INTO `sys_logininfor` VALUES (573, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 22:06:17');
INSERT INTO `sys_logininfor` VALUES (574, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:06:23');
INSERT INTO `sys_logininfor` VALUES (575, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:11:19');
INSERT INTO `sys_logininfor` VALUES (576, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:12:17');
INSERT INTO `sys_logininfor` VALUES (577, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-07 22:13:56');
INSERT INTO `sys_logininfor` VALUES (578, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:13:58');
INSERT INTO `sys_logininfor` VALUES (579, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 22:15:14');
INSERT INTO `sys_logininfor` VALUES (580, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 22:17:55');
INSERT INTO `sys_logininfor` VALUES (581, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:17:58');
INSERT INTO `sys_logininfor` VALUES (582, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 22:19:51');
INSERT INTO `sys_logininfor` VALUES (583, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 22:19:54');
INSERT INTO `sys_logininfor` VALUES (584, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:19:59');
INSERT INTO `sys_logininfor` VALUES (585, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:21:22');
INSERT INTO `sys_logininfor` VALUES (586, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-05-07 22:25:22');
INSERT INTO `sys_logininfor` VALUES (587, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:25:31');
INSERT INTO `sys_logininfor` VALUES (588, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 22:27:56');
INSERT INTO `sys_logininfor` VALUES (589, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 22:28:01');
INSERT INTO `sys_logininfor` VALUES (590, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:28:05');
INSERT INTO `sys_logininfor` VALUES (591, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-07 22:29:08');
INSERT INTO `sys_logininfor` VALUES (592, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:29:14');
INSERT INTO `sys_logininfor` VALUES (593, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-05-07 22:29:58');
INSERT INTO `sys_logininfor` VALUES (594, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-07 22:30:11');
INSERT INTO `sys_logininfor` VALUES (595, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-07 22:35:14');
INSERT INTO `sys_logininfor` VALUES (596, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:35:19');
INSERT INTO `sys_logininfor` VALUES (597, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 22:37:39');
INSERT INTO `sys_logininfor` VALUES (598, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:37:49');
INSERT INTO `sys_logininfor` VALUES (599, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:47:24');
INSERT INTO `sys_logininfor` VALUES (600, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-07 22:47:34');
INSERT INTO `sys_logininfor` VALUES (601, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:47:41');
INSERT INTO `sys_logininfor` VALUES (602, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:49:13');
INSERT INTO `sys_logininfor` VALUES (603, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:52:16');
INSERT INTO `sys_logininfor` VALUES (604, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:53:12');
INSERT INTO `sys_logininfor` VALUES (605, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-07 22:54:58');
INSERT INTO `sys_logininfor` VALUES (606, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:03:26');
INSERT INTO `sys_logininfor` VALUES (607, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:04:42');
INSERT INTO `sys_logininfor` VALUES (608, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-08 09:04:52');
INSERT INTO `sys_logininfor` VALUES (609, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:04:55');
INSERT INTO `sys_logininfor` VALUES (610, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-08 09:05:53');
INSERT INTO `sys_logininfor` VALUES (611, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-08 09:09:29');
INSERT INTO `sys_logininfor` VALUES (612, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:09:29');
INSERT INTO `sys_logininfor` VALUES (613, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:09:33');
INSERT INTO `sys_logininfor` VALUES (614, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:09:43');
INSERT INTO `sys_logininfor` VALUES (615, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:09:50');
INSERT INTO `sys_logininfor` VALUES (616, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:09:56');
INSERT INTO `sys_logininfor` VALUES (617, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-05-08 09:12:31');
INSERT INTO `sys_logininfor` VALUES (618, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:12:36');
INSERT INTO `sys_logininfor` VALUES (619, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:12:40');
INSERT INTO `sys_logininfor` VALUES (620, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:12:45');
INSERT INTO `sys_logininfor` VALUES (621, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:13:43');
INSERT INTO `sys_logininfor` VALUES (622, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:13:49');
INSERT INTO `sys_logininfor` VALUES (623, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:15:14');
INSERT INTO `sys_logininfor` VALUES (624, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:16:01');
INSERT INTO `sys_logininfor` VALUES (625, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:17:56');
INSERT INTO `sys_logininfor` VALUES (626, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:18:02');
INSERT INTO `sys_logininfor` VALUES (627, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:18:07');
INSERT INTO `sys_logininfor` VALUES (628, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:18:34');
INSERT INTO `sys_logininfor` VALUES (629, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:22:29');
INSERT INTO `sys_logininfor` VALUES (630, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:23:09');
INSERT INTO `sys_logininfor` VALUES (631, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:26:14');
INSERT INTO `sys_logininfor` VALUES (632, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:27:11');
INSERT INTO `sys_logininfor` VALUES (633, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:28:03');
INSERT INTO `sys_logininfor` VALUES (634, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:29:55');
INSERT INTO `sys_logininfor` VALUES (635, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:29:58');
INSERT INTO `sys_logininfor` VALUES (636, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '用户不存在/密码错误', '2019-05-08 09:30:06');
INSERT INTO `sys_logininfor` VALUES (637, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:30:11');
INSERT INTO `sys_logininfor` VALUES (638, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:30:43');
INSERT INTO `sys_logininfor` VALUES (639, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:30:47');
INSERT INTO `sys_logininfor` VALUES (640, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:30:58');
INSERT INTO `sys_logininfor` VALUES (641, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:31:02');
INSERT INTO `sys_logininfor` VALUES (642, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:33:37');
INSERT INTO `sys_logininfor` VALUES (643, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-08 09:33:44');
INSERT INTO `sys_logininfor` VALUES (644, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:33:46');
INSERT INTO `sys_logininfor` VALUES (645, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:35:30');
INSERT INTO `sys_logininfor` VALUES (646, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:35:33');
INSERT INTO `sys_logininfor` VALUES (647, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:37:42');
INSERT INTO `sys_logininfor` VALUES (648, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:43:34');
INSERT INTO `sys_logininfor` VALUES (649, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:43:44');
INSERT INTO `sys_logininfor` VALUES (650, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:43:54');
INSERT INTO `sys_logininfor` VALUES (651, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:44:01');
INSERT INTO `sys_logininfor` VALUES (652, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:44:04');
INSERT INTO `sys_logininfor` VALUES (653, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:44:09');
INSERT INTO `sys_logininfor` VALUES (654, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:44:18');
INSERT INTO `sys_logininfor` VALUES (655, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:44:20');
INSERT INTO `sys_logininfor` VALUES (656, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:44:38');
INSERT INTO `sys_logininfor` VALUES (657, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:44:44');
INSERT INTO `sys_logininfor` VALUES (658, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:45:05');
INSERT INTO `sys_logininfor` VALUES (659, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:45:08');
INSERT INTO `sys_logininfor` VALUES (660, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 09:45:58');
INSERT INTO `sys_logininfor` VALUES (661, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:46:05');
INSERT INTO `sys_logininfor` VALUES (662, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-08 09:56:50');
INSERT INTO `sys_logininfor` VALUES (663, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 09:56:52');
INSERT INTO `sys_logininfor` VALUES (664, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 10:39:31');
INSERT INTO `sys_logininfor` VALUES (665, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 13:37:47');
INSERT INTO `sys_logininfor` VALUES (666, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 13:37:51');
INSERT INTO `sys_logininfor` VALUES (667, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 13:37:57');
INSERT INTO `sys_logininfor` VALUES (668, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 13:38:03');
INSERT INTO `sys_logininfor` VALUES (669, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 13:38:10');
INSERT INTO `sys_logininfor` VALUES (670, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 13:38:17');
INSERT INTO `sys_logininfor` VALUES (671, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-08 14:14:31');
INSERT INTO `sys_logininfor` VALUES (672, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:14:37');
INSERT INTO `sys_logininfor` VALUES (673, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 14:25:09');
INSERT INTO `sys_logininfor` VALUES (674, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:25:17');
INSERT INTO `sys_logininfor` VALUES (675, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 14:30:17');
INSERT INTO `sys_logininfor` VALUES (676, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-08 14:30:22');
INSERT INTO `sys_logininfor` VALUES (677, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:30:27');
INSERT INTO `sys_logininfor` VALUES (678, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 14:31:52');
INSERT INTO `sys_logininfor` VALUES (679, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:32:01');
INSERT INTO `sys_logininfor` VALUES (680, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 14:34:14');
INSERT INTO `sys_logininfor` VALUES (681, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:34:22');
INSERT INTO `sys_logininfor` VALUES (682, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 14:35:22');
INSERT INTO `sys_logininfor` VALUES (683, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:35:31');
INSERT INTO `sys_logininfor` VALUES (684, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-08 14:36:19');
INSERT INTO `sys_logininfor` VALUES (685, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-05-08 14:36:28');
INSERT INTO `sys_logininfor` VALUES (686, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-08 14:36:35');
INSERT INTO `sys_logininfor` VALUES (687, 'admin', '192.168.84.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-09 11:39:29');
INSERT INTO `sys_logininfor` VALUES (688, 'admin', '127.0.0.1', '内网IP', 'Firefox 45', 'Linux', '0', '登录成功', '2019-05-09 11:44:13');
INSERT INTO `sys_logininfor` VALUES (689, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 12:02:22');
INSERT INTO `sys_logininfor` VALUES (690, 'admin', '192.168.166.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-09 12:15:48');
INSERT INTO `sys_logininfor` VALUES (691, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:19:18');
INSERT INTO `sys_logininfor` VALUES (692, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:31:16');
INSERT INTO `sys_logininfor` VALUES (693, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:33:11');
INSERT INTO `sys_logininfor` VALUES (694, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:37:47');
INSERT INTO `sys_logininfor` VALUES (695, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-09 14:42:41');
INSERT INTO `sys_logininfor` VALUES (696, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:42:53');
INSERT INTO `sys_logininfor` VALUES (697, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-09 14:43:16');
INSERT INTO `sys_logininfor` VALUES (698, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:43:30');
INSERT INTO `sys_logininfor` VALUES (699, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:46:33');
INSERT INTO `sys_logininfor` VALUES (700, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:50:29');
INSERT INTO `sys_logininfor` VALUES (701, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 14:59:59');
INSERT INTO `sys_logininfor` VALUES (702, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:01:31');
INSERT INTO `sys_logininfor` VALUES (703, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:10:40');
INSERT INTO `sys_logininfor` VALUES (704, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:15:28');
INSERT INTO `sys_logininfor` VALUES (705, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-09 15:27:18');
INSERT INTO `sys_logininfor` VALUES (706, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '1', '验证码错误', '2019-05-09 15:27:21');
INSERT INTO `sys_logininfor` VALUES (707, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:27:26');
INSERT INTO `sys_logininfor` VALUES (708, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:30:35');
INSERT INTO `sys_logininfor` VALUES (709, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-09 15:30:41');
INSERT INTO `sys_logininfor` VALUES (710, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:30:48');
INSERT INTO `sys_logininfor` VALUES (711, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-09 15:30:58');
INSERT INTO `sys_logininfor` VALUES (712, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:31:04');
INSERT INTO `sys_logininfor` VALUES (713, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-09 15:34:59');
INSERT INTO `sys_logininfor` VALUES (714, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-05-09 17:05:24');
INSERT INTO `sys_logininfor` VALUES (715, 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 8.1', '0', '登录成功', '2019-05-09 17:44:33');
INSERT INTO `sys_logininfor` VALUES (716, 'admin', '127.0.0.1', '内网IP', 'Firefox 45', 'Linux', '0', '登录成功', '2019-05-09 19:19:16');
INSERT INTO `sys_logininfor` VALUES (717, 'admin', '127.0.0.1', '内网IP', 'Firefox 45', 'Linux', '0', '登录成功', '2019-05-09 21:11:37');
INSERT INTO `sys_logininfor` VALUES (718, 'admin', '127.0.0.1', '内网IP', 'Firefox 45', 'Linux', '0', '登录成功', '2019-05-10 08:33:52');
INSERT INTO `sys_logininfor` VALUES (719, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-11 09:39:25');
INSERT INTO `sys_logininfor` VALUES (720, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-11 09:52:21');
INSERT INTO `sys_logininfor` VALUES (721, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-11 09:52:41');
INSERT INTO `sys_logininfor` VALUES (722, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-05-11 09:52:48');
INSERT INTO `sys_logininfor` VALUES (723, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-11 09:52:53');
INSERT INTO `sys_logininfor` VALUES (724, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-11 09:53:00');
INSERT INTO `sys_logininfor` VALUES (725, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-11 09:53:11');
INSERT INTO `sys_logininfor` VALUES (726, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-11 09:53:14');
INSERT INTO `sys_logininfor` VALUES (727, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-11 10:06:13');
INSERT INTO `sys_logininfor` VALUES (728, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-05-11 10:06:23');
INSERT INTO `sys_logininfor` VALUES (729, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-05-11 10:06:30');
INSERT INTO `sys_logininfor` VALUES (730, 'shangjia1', '127.0.0.1', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-05-11 10:06:33');
INSERT INTO `sys_logininfor` VALUES (731, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '退出成功', '2019-05-11 16:07:20');
INSERT INTO `sys_logininfor` VALUES (732, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-11 16:07:32');
INSERT INTO `sys_logininfor` VALUES (733, 'dianzhang1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 8.1', '0', '登录成功', '2019-05-11 16:32:47');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2166 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 6, '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2019-05-08 09:33:21', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 5, '#', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2019-05-08 09:32:50', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务详细', 110, 6, '#', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务导出', 110, 7, '#', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成查询', 114, 1, '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成代码', 114, 2, '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '门店环境', 2010, 2, '/system/storeEnv', 'C', '0', 'system:storeEnv:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-18 13:25:52', '门店环境菜单');
INSERT INTO `sys_menu` VALUES (2001, '门店环境查询', 2000, 1, '#', 'F', '0', 'system:storeEnv:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2002, '门店环境新增', 2000, 2, '#', 'F', '0', 'system:storeEnv:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2003, '门店环境修改', 2000, 3, '#', 'F', '0', 'system:storeEnv:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2004, '门店环境删除', 2000, 4, '#', 'F', '0', 'system:storeEnv:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2005, '门店管理', 2010, 1, '/system/store', 'C', '0', 'system:store:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-18 13:26:36', '门店菜单');
INSERT INTO `sys_menu` VALUES (2006, '门店查询', 2005, 1, '#', 'F', '0', 'system:store:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2007, '门店新增', 2005, 2, '#', 'F', '0', 'system:store:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2008, '门店修改', 2005, 3, '#', 'F', '0', 'system:store:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2009, '门店删除', 2005, 4, '#', 'F', '0', 'system:store:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2010, '商家管理', 0, 1, '#', 'M', '0', NULL, 'fa fa-shopping-basket', 'admin', '2019-04-18 13:17:24', 'admin', '2019-04-18 13:19:30', '');
INSERT INTO `sys_menu` VALUES (2012, '钥匙柜管理', 3, 1, '/system/keyContainer', 'C', '0', 'system:keyContainer:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-18 18:26:11', '钥匙柜菜单');
INSERT INTO `sys_menu` VALUES (2013, '钥匙柜查询', 2012, 1, '#', 'F', '0', 'system:keyContainer:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2014, '钥匙柜新增', 2012, 2, '#', 'F', '0', 'system:keyContainer:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2015, '钥匙柜修改', 2012, 3, '#', 'F', '0', 'system:keyContainer:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2016, '钥匙柜删除', 2012, 4, '#', 'F', '0', 'system:keyContainer:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2017, '状态管理', 1, 1, '/system/status', 'C', '0', 'system:status:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-27 10:16:06', '状态菜单');
INSERT INTO `sys_menu` VALUES (2018, '状态查询', 2017, 1, '#', 'F', '0', 'system:status:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2019, '状态新增', 2017, 2, '#', 'F', '0', 'system:status:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2020, '状态修改', 2017, 3, '#', 'F', '0', 'system:status:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2021, '状态删除', 2017, 4, '#', 'F', '0', 'system:status:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2022, '城市', 3, 1, '/system/cities', 'C', '0', 'system:cities:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '城市菜单');
INSERT INTO `sys_menu` VALUES (2023, '城市查询', 2022, 1, '#', 'F', '0', 'system:cities:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2024, '城市新增', 2022, 2, '#', 'F', '0', 'system:cities:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2025, '城市修改', 2022, 3, '#', 'F', '0', 'system:cities:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2026, '城市删除', 2022, 4, '#', 'F', '0', 'system:cities:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2037, '业务管理', 2010, 1, '/system/storeService', 'C', '0', 'system:storeService:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:31:15', '业务菜单');
INSERT INTO `sys_menu` VALUES (2038, '业务查询', 2037, 1, '#', 'F', '0', 'system:storeService:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2039, '业务新增', 2037, 2, '#', 'F', '0', 'system:storeService:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2040, '业务修改', 2037, 3, '#', 'F', '0', 'system:storeService:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2041, '业务删除', 2037, 4, '#', 'F', '0', 'system:storeService:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2042, '订单列表', 2150, 1, '/system/order', 'C', '0', 'system:order:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:32:31', '订单菜单');
INSERT INTO `sys_menu` VALUES (2043, '订单查询', 2042, 1, '#', 'F', '0', 'system:order:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2044, '订单新增', 2042, 2, '#', 'F', '0', 'system:order:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2045, '订单修改', 2042, 3, '#', 'F', '0', 'system:order:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '订单删除', 2042, 4, '#', 'F', '0', 'system:order:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2047, '默认业务', 1, 1, '/system/defaultService', 'C', '0', 'system:defaultService:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-27 10:15:52', '默认业务菜单');
INSERT INTO `sys_menu` VALUES (2048, '默认业务查询', 2047, 1, '#', 'F', '0', 'system:defaultService:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2049, '默认业务新增', 2047, 2, '#', 'F', '0', 'system:defaultService:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2050, '默认业务修改', 2047, 3, '#', 'F', '0', 'system:defaultService:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2051, '默认业务删除', 2047, 4, '#', 'F', '0', 'system:defaultService:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2052, '车辆管理', 3, 1, '/system/carInfo', 'C', '0', 'system:carInfo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:32:08', '车辆菜单');
INSERT INTO `sys_menu` VALUES (2053, '车辆查询', 2052, 1, '#', 'F', '0', 'system:carInfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2054, '车辆新增', 2052, 2, '#', 'F', '0', 'system:carInfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2055, '车辆修改', 2052, 3, '#', 'F', '0', 'system:carInfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2056, '车辆删除', 2052, 4, '#', 'F', '0', 'system:carInfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2057, '消费者账号', 3, 1, '/system/consumerAccount', 'C', '0', 'system:consumerAccount:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '消费者账号菜单');
INSERT INTO `sys_menu` VALUES (2058, '消费者账号查询', 2057, 1, '#', 'F', '0', 'system:consumerAccount:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2059, '消费者账号新增', 2057, 2, '#', 'F', '0', 'system:consumerAccount:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2060, '消费者账号修改', 2057, 3, '#', 'F', '0', 'system:consumerAccount:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2061, '消费者账号删除', 2057, 4, '#', 'F', '0', 'system:consumerAccount:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2062, '用户评价', 2010, 1, '/system/evaluate', 'C', '0', 'system:evaluate:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:31:31', '评价菜单');
INSERT INTO `sys_menu` VALUES (2063, '评价查询', 2062, 1, '#', 'F', '0', 'system:evaluate:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2064, '评价新增', 2062, 2, '#', 'F', '0', 'system:evaluate:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2065, '评价修改', 2062, 3, '#', 'F', '0', 'system:evaluate:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2066, '评价删除', 2062, 4, '#', 'F', '0', 'system:evaluate:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2067, '钥匙信息管理', 3, 1, '/system/keyInfo', 'C', '0', 'system:keyInfo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:32:01', '钥匙菜单');
INSERT INTO `sys_menu` VALUES (2068, '钥匙查询', 2067, 1, '#', 'F', '0', 'system:keyInfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2069, '钥匙新增', 2067, 2, '#', 'F', '0', 'system:keyInfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2070, '钥匙修改', 2067, 3, '#', 'F', '0', 'system:keyInfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2071, '钥匙删除', 2067, 4, '#', 'F', '0', 'system:keyInfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2072, '汽车图片', 3, 1, '/system/carImage', 'C', '0', 'system:carImage:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '汽车图片菜单');
INSERT INTO `sys_menu` VALUES (2073, '汽车图片查询', 2072, 1, '#', 'F', '0', 'system:carImage:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2074, '汽车图片新增', 2072, 2, '#', 'F', '0', 'system:carImage:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2075, '汽车图片修改', 2072, 3, '#', 'F', '0', 'system:carImage:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2076, '汽车图片删除', 2072, 4, '#', 'F', '0', 'system:carImage:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2077, '订单服务关系', 3, 1, '/system/orderService', 'C', '0', 'system:orderService:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '订单服务关系菜单');
INSERT INTO `sys_menu` VALUES (2078, '订单服务关系查询', 2077, 1, '#', 'F', '0', 'system:orderService:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2079, '订单服务关系新增', 2077, 2, '#', 'F', '0', 'system:orderService:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2080, '订单服务关系修改', 2077, 3, '#', 'F', '0', 'system:orderService:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2081, '订单服务关系删除', 2077, 4, '#', 'F', '0', 'system:orderService:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2082, '模式管理', 3, 1, '/system/model', 'C', '0', 'system:model:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:31:49', '模式菜单');
INSERT INTO `sys_menu` VALUES (2083, '模式查询', 2082, 1, '#', 'F', '0', 'system:model:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2084, '模式新增', 2082, 2, '#', 'F', '0', 'system:model:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2085, '模式修改', 2082, 3, '#', 'F', '0', 'system:model:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2086, '模式删除', 2082, 4, '#', 'F', '0', 'system:model:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2087, '预算管理', 3, 1, '/system/expectCost', 'C', '0', 'system:expectCost:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-05-08 09:31:42', '预算菜单');
INSERT INTO `sys_menu` VALUES (2088, '预算查询', 2087, 1, '#', 'F', '0', 'system:expectCost:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2089, '预算新增', 2087, 2, '#', 'F', '0', 'system:expectCost:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2090, '预算修改', 2087, 3, '#', 'F', '0', 'system:expectCost:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2091, '预算删除', 2087, 4, '#', 'F', '0', 'system:expectCost:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2092, '订单金额', 2150, 1, '/system/orderAmount', 'C', '0', 'system:orderAmount:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-27 10:14:54', '订单金额菜单');
INSERT INTO `sys_menu` VALUES (2093, '订单金额查询', 2092, 1, '#', 'F', '0', 'system:orderAmount:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2094, '订单金额新增', 2092, 2, '#', 'F', '0', 'system:orderAmount:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2095, '订单金额修改', 2092, 3, '#', 'F', '0', 'system:orderAmount:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2096, '订单金额删除', 2092, 4, '#', 'F', '0', 'system:orderAmount:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2097, '门店用户管理', 2010, 1, '/system/userAccount', 'C', '0', 'system:userAccount:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-27 10:15:24', '用户菜单');
INSERT INTO `sys_menu` VALUES (2098, '用户查询', 2097, 1, '#', 'F', '0', 'system:userAccount:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2099, '用户新增', 2097, 2, '#', 'F', '0', 'system:userAccount:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2100, '用户修改', 2097, 3, '#', 'F', '0', 'system:userAccount:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2101, '用户删除', 2097, 4, '#', 'F', '0', 'system:userAccount:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2119, '门店审核', 2010, 3, '/system/reviewedStore', 'C', '0', 'system:reviewedstore:view', '#', 'admin', '2019-04-24 15:56:32', 'admin', '2019-04-24 16:24:07', '');
INSERT INTO `sys_menu` VALUES (2120, '查询未审核门店', 2119, 1, '#', 'F', '0', 'system:reviewedstore:list', '#', 'admin', '2019-04-24 15:58:14', 'admin', '2019-04-24 16:24:23', '');
INSERT INTO `sys_menu` VALUES (2121, '同意', 2119, 2, '#', 'F', '0', 'system:reviewedstore:agree', '#', 'admin', '2019-04-24 15:58:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2122, '拒绝', 2119, 3, '#', 'F', '0', 'system:reviewedstore:refuse', '#', 'admin', '2019-04-24 15:59:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2123, '用户审核', 1, 1, '/system/checkUser', 'C', '0', 'system:checkUser:view', 'fa fa-address-book', 'admin', '2019-04-25 10:24:48', 'admin', '2019-04-27 10:15:14', '');
INSERT INTO `sys_menu` VALUES (2124, '抢单', 2150, 4, '/system/lootOrder', 'C', '0', 'system:store:lootOrder', '#', 'admin', '2019-04-26 09:25:10', 'admin', '2019-05-08 09:38:51', '');
INSERT INTO `sys_menu` VALUES (2125, '详情', 2124, 2, '#', 'F', '0', 'system:lootorder:detail', '#', 'admin', '2019-04-26 09:26:32', 'admin', '2019-04-26 09:53:23', '');
INSERT INTO `sys_menu` VALUES (2126, '查询', 2124, 1, '#', 'F', '0', 'system:lootOrder:list', '#', 'admin', '2019-04-26 09:52:52', 'admin', '2019-04-26 09:53:13', '');
INSERT INTO `sys_menu` VALUES (2127, '日志图片', 2150, 1, '/system/logImage', 'C', '0', 'system:logImage:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-27 10:14:47', '日志图片菜单');
INSERT INTO `sys_menu` VALUES (2128, '日志图片查询', 2127, 1, '#', 'F', '0', 'system:logImage:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2129, '日志图片新增', 2127, 2, '#', 'F', '0', 'system:logImage:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2130, '日志图片修改', 2127, 3, '#', 'F', '0', 'system:logImage:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2131, '日志图片删除', 2127, 4, '#', 'F', '0', 'system:logImage:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2132, '订单日志', 2150, 1, '/system/orderLog', 'C', '0', 'system:orderLog:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-04-27 10:14:37', '订单日志菜单');
INSERT INTO `sys_menu` VALUES (2133, '订单日志查询', 2132, 1, '#', 'F', '0', 'system:orderLog:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2134, '订单日志新增', 2132, 2, '#', 'F', '0', 'system:orderLog:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2135, '订单日志修改', 2132, 3, '#', 'F', '0', 'system:orderLog:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2136, '订单日志删除', 2132, 4, '#', 'F', '0', 'system:orderLog:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2137, '指派任务', 2150, 5, '/system/assignOrder', 'C', '0', 'system:assignOrder:view', '#', 'admin', '2019-04-26 10:42:53', 'admin', '2019-05-08 09:39:00', '');
INSERT INTO `sys_menu` VALUES (2138, '指派员工', 2137, 2, '#', 'F', '0', 'system:assignOrder:edit', '#', 'admin', '2019-04-26 10:44:45', 'admin', '2019-04-26 16:22:55', '');
INSERT INTO `sys_menu` VALUES (2139, '订单查询', 2137, 1, '#', 'F', '0', 'system:assignOrder:list', '#', 'admin', '2019-04-26 11:03:41', 'admin', '2019-04-26 11:16:02', '');
INSERT INTO `sys_menu` VALUES (2141, '同意', 2123, 1, '#', 'F', '0', 'system:checkUser:acceptUser', '#', 'admin', '2019-04-26 14:45:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2142, '拒绝', 2123, 1, '#', 'F', '0', 'system:checkUser:refuseUser', '#', 'admin', '2019-04-26 14:45:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2143, '未审核用户', 2123, 1, '#', 'F', '0', 'system:checkUser:list', '#', 'admin', '2019-04-26 14:50:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2144, '洗车员定位', 3, 1, '/system/userLocation', 'C', '0', 'system:userLocation:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '洗车员定位菜单');
INSERT INTO `sys_menu` VALUES (2145, '洗车员定位查询', 2144, 1, '#', 'F', '0', 'system:userLocation:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2146, '洗车员定位新增', 2144, 2, '#', 'F', '0', 'system:userLocation:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2147, '洗车员定位修改', 2144, 3, '#', 'F', '0', 'system:userLocation:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2148, '洗车员定位删除', 2144, 4, '#', 'F', '0', 'system:userLocation:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2149, '保存修改', 2137, 3, '#', 'F', '0', 'system:assignOrder:save', '#', 'admin', '2019-04-26 23:31:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2150, '订单管理', 0, 4, '#', 'M', '0', NULL, 'fa fa-clone', 'admin', '2019-04-27 10:14:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2151, '货柜格子', 3, 1, '/system/containerBox', 'C', '0', 'system:containerBox:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '货柜格子菜单');
INSERT INTO `sys_menu` VALUES (2152, '货柜格子查询', 2151, 1, '#', 'F', '0', 'system:containerBox:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2153, '货柜格子新增', 2151, 2, '#', 'F', '0', 'system:containerBox:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2154, '货柜格子修改', 2151, 3, '#', 'F', '0', 'system:containerBox:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2155, '货柜格子删除', 2151, 4, '#', 'F', '0', 'system:containerBox:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2161, '省份', 3, 1, '/system/provinces', 'C', '0', 'system:provinces:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '省份菜单');
INSERT INTO `sys_menu` VALUES (2162, '省份查询', 2161, 1, '#', 'F', '0', 'system:provinces:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2163, '省份新增', 2161, 2, '#', 'F', '0', 'system:provinces:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2164, '省份修改', 2161, 3, '#', 'F', '0', 'system:provinces:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2165, '省份删除', 2161, 4, '#', 'F', '0', 'system:provinces:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2166, '查看详情', 2119, 4, '#', 'F', '0', 'system:store:showstoreinfo', '#', 'admin', '2019-05-09 16:57:55', 'admin', '2019-05-09 16:58:24', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 596 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"门店管理\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-shopping-basket\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:17:24');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2010\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"商家管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-shopping-basket\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:19:30');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店管理\"],\"url\":[\"/business/store\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:23:05');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2011', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 13:23:48');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店\"],\"url\":[\"/business/store\"],\"perms\":[\"system:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:24:04');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店管理\"],\"url\":[\"/business/store\"],\"perms\":[\"system:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:24:13');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"门店环境\"],\"url\":[\"/system/storeEnv\"],\"perms\":[\"system:storeEnv:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:24:44');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店环境\"],\"url\":[\"/system/storeEnv\"],\"perms\":[\"system:storeEnv:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:25:52');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店管理\"],\"url\":[\"/system/store\"],\"perms\":[\"system:store:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 13:26:37');
INSERT INTO `sys_oper_log` VALUES (109, '参数管理', 2, 'com.aaa.project.system.config.controller.ConfigController.editSave()', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\"configId\":[\"1\"],\"configName\":[\"主框架页-默认皮肤样式名称\"],\"configKey\":[\"sys.index.skinName\"],\"configValue\":[\"skin-green\"],\"configType\":[\"Y\"],\"remark\":[\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\"]}', 0, NULL, '2019-04-18 13:35:58');
INSERT INTO `sys_oper_log` VALUES (110, '角色管理', 1, 'com.aaa.project.system.role.controller.RoleController.addSave()', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"商家\"],\"roleKey\":[\"merchant\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"门店的所有者\"],\"menuIds\":[\"2010,2005,2006,2007,2008,2009,2000,2001,2002,2003,2004\"]}', 0, NULL, '2019-04-18 13:39:43');
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 1, 'com.aaa.project.system.role.controller.RoleController.addSave()', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"店长\"],\"roleKey\":[\"manager\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"管理门店\"],\"menuIds\":[\"2010,2005,2006,2008,2000,2001,2002,2003,2004\"]}', 0, NULL, '2019-04-18 13:40:58');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_container', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 16:22:48');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_container', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 17:46:49');
INSERT INTO `sys_oper_log` VALUES (114, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uUID\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"containerName\":[\"杨金路钥匙柜\"],\"posLng\":[\"113.740714\"],\"posLat\":[\"34.842269\"],\"cityid\":[\"410100\"]}', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n### The error may involve com.aaa.project.system.keyContainer.mapper.KeyContainerMapper.insertKeyContainer-Inline\n### The error occurred while setting parameters\n### SQL: insert into cw_key_container    ( UUID,    container_name,    pos_lng,    pos_lat,    cityid )           values ( ?,    ?,    ?,    ?,    ? )\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-04-18 17:52:35');
INSERT INTO `sys_oper_log` VALUES (115, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uUID\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"containerName\":[\"杨金路钥匙柜\"],\"posLng\":[\"113.740714\"],\"posLat\":[\"34.842269\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 17:53:11');
INSERT INTO `sys_oper_log` VALUES (116, '钥匙柜', 2, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.editSave()', 1, 'admin', '研发部门', '/system/keyContainer/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"uUID\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"containerName\":[\"杨金路钥匙柜\"],\"posLng\":[\"113.740714\"],\"posLat\":[\"34.842269\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 17:53:19');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_container', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 17:59:27');
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_container', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 18:05:05');
INSERT INTO `sys_oper_log` VALUES (119, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"d869fbf5119f4a508347106a67ce673f\"],\"containerName\":[\"二七广场钥匙柜\"],\"posLng\":[\"113.666427\"],\"posLat\":[\"34.751362\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:10:20');
INSERT INTO `sys_oper_log` VALUES (120, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"122c5ae513ae463f949b79b1ded4b772\"],\"containerName\":[\"农业路文化路钥匙柜\"],\"posLng\":[\"113.666572\"],\"posLat\":[\"34.787083\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:11:09');
INSERT INTO `sys_oper_log` VALUES (121, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"55062e0e38e44c21850c12bbb5406e38\"],\"containerName\":[\"花园路沙门村钥匙柜\"],\"posLng\":[\"113.675764\"],\"posLat\":[\"34.823272\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:12:14');
INSERT INTO `sys_oper_log` VALUES (122, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"16056bfcd3744a78bf500aac43e53119\"],\"containerName\":[\"三全路丰庆路钥匙柜\"],\"posLng\":[\"113.648343\"],\"posLat\":[\"34.830182\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:14:04');
INSERT INTO `sys_oper_log` VALUES (123, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"b8af8ec5a360415f9f7bc63c27a5734e\"],\"containerName\":[\"国基路金杯路钥匙柜\"],\"posLng\":[\"113.630486\"],\"posLat\":[\"34.819696\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:14:59');
INSERT INTO `sys_oper_log` VALUES (124, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"59d79dad6d6b44358656ca5a12822d0a\"],\"containerName\":[\"东风路文化路钥匙柜\"],\"posLng\":[\"113.665914\"],\"posLat\":[\"34.799646\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:15:53');
INSERT INTO `sys_oper_log` VALUES (125, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"9948fb8865e74977ac6a2b513cf19463\"],\"containerName\":[\"东风路农业路钥匙柜\"],\"posLng\":[\"113.668004\"],\"posLat\":[\"34.786845\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:17:42');
INSERT INTO `sys_oper_log` VALUES (126, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"674e419b10254acbaffde6c0b2b72f7d\"],\"containerName\":[\"花园路农业路钥匙柜\"],\"posLng\":[\"113.681643\"],\"posLat\":[\"34.786389\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:18:49');
INSERT INTO `sys_oper_log` VALUES (127, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"027cbf6f2c084213ba3f1b968fd7077e\"],\"containerName\":[\"儿童医院钥匙柜\"],\"posLng\":[\"113.658066\"],\"posLat\":[\"34.769035\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:20:11');
INSERT INTO `sys_oper_log` VALUES (128, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"c7cef2c5eb7c497885d9797ae94e0032\"],\"containerName\":[\"文化路45号院钥匙柜\"],\"posLng\":[\"113.667566\"],\"posLat\":[\"34.778832\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:21:33');
INSERT INTO `sys_oper_log` VALUES (129, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"568f1c1116984f9c89b3b407bbbf2af4\"],\"containerName\":[\"金水路小区钥匙柜\"],\"posLng\":[\"113.672620\"],\"posLat\":[\"34.780940\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:22:24');
INSERT INTO `sys_oper_log` VALUES (130, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"1b132e17390e4eee9d1d46bd1cd1b7c5\"],\"containerName\":[\"碧林园小区钥匙柜\"],\"posLng\":[\"113.662812\"],\"posLat\":[\"34.796883\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:24:29');
INSERT INTO `sys_oper_log` VALUES (131, '钥匙柜', 1, 'com.aaa.project.system.keyContainer.controller.KeyContainerController.addSave()', 1, 'admin', '研发部门', '/system/keyContainer/add', '127.0.0.1', '内网IP', '{\"uuid\":[\"1fe1fb655e7845208166863784e41c0a\"],\"containerName\":[\"和谐家园钥匙柜\"],\"posLng\":[\"113.870640\"],\"posLat\":[\"34.683994\"],\"cityid\":[\"410100\"]}', 0, NULL, '2019-04-18 18:25:32');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2012\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"钥匙柜管理\"],\"url\":[\"/system/keyContainer\"],\"perms\":[\"system:keyContainer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 18:26:12');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_status', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 20:01:09');
INSERT INTO `sys_oper_log` VALUES (134, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"100\"],\"statusName\":[\"待审核\"]}', 0, NULL, '2019-04-18 20:10:19');
INSERT INTO `sys_oper_log` VALUES (135, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"101\"],\"statusName\":[\"营业中\"]}', 0, NULL, '2019-04-18 20:11:08');
INSERT INTO `sys_oper_log` VALUES (136, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"102\"],\"statusName\":[\"已下线\"]}', 0, NULL, '2019-04-18 20:11:26');
INSERT INTO `sys_oper_log` VALUES (137, '状态', 2, 'com.aaa.project.system.status.controller.StatusController.editSave()', 1, 'admin', '研发部门', '/system/status/edit', '127.0.0.1', '内网IP', '{\"id\":[\"102\"],\"statusName\":[\"未营业\"]}', 0, NULL, '2019-04-18 20:13:09');
INSERT INTO `sys_oper_log` VALUES (138, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"103\"],\"statusName\":[\"未开业\"]}', 0, NULL, '2019-04-18 20:13:24');
INSERT INTO `sys_oper_log` VALUES (139, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"104\"],\"statusName\":[\"已下线\"]}', 0, NULL, '2019-04-18 20:13:32');
INSERT INTO `sys_oper_log` VALUES (140, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"109\"],\"statusName\":[\"异常\"]}', 0, NULL, '2019-04-18 20:13:40');
INSERT INTO `sys_oper_log` VALUES (141, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"200\"],\"statusName\":[\"待接单\"]}', 0, NULL, '2019-04-18 20:15:53');
INSERT INTO `sys_oper_log` VALUES (142, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"201\"],\"statusName\":[\"代付款\"]}', 0, NULL, '2019-04-18 20:16:08');
INSERT INTO `sys_oper_log` VALUES (143, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"202\"],\"statusName\":[\"已付款\"]}', 0, NULL, '2019-04-18 20:17:13');
INSERT INTO `sys_oper_log` VALUES (144, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"203\"],\"statusName\":[\"已完成\"]}', 0, NULL, '2019-04-18 20:20:54');
INSERT INTO `sys_oper_log` VALUES (145, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"204\"],\"statusName\":[\"待评价\"]}', 0, NULL, '2019-04-18 20:21:09');
INSERT INTO `sys_oper_log` VALUES (146, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"205\"],\"statusName\":[\"已评价\"]}', 0, NULL, '2019-04-18 20:21:23');
INSERT INTO `sys_oper_log` VALUES (147, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"206\"],\"statusName\":[\"已取消\"]}', 0, NULL, '2019-04-18 20:21:31');
INSERT INTO `sys_oper_log` VALUES (148, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"207\"],\"statusName\":[\"未接单\"]}', 0, NULL, '2019-04-18 20:21:45');
INSERT INTO `sys_oper_log` VALUES (149, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"209\"],\"statusName\":[\"异常\"]}', 0, NULL, '2019-04-18 20:21:59');
INSERT INTO `sys_oper_log` VALUES (150, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"300\"],\"statusName\":[\"已寄存\"]}', 0, NULL, '2019-04-18 20:25:00');
INSERT INTO `sys_oper_log` VALUES (151, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"301\"],\"statusName\":[\"已取出\"]}', 0, NULL, '2019-04-18 20:25:09');
INSERT INTO `sys_oper_log` VALUES (152, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"309\"],\"statusName\":[\"异常\"]}', 0, NULL, '2019-04-18 20:26:31');
INSERT INTO `sys_oper_log` VALUES (153, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"400\"],\"statusName\":[\"已上线\"]}', 0, NULL, '2019-04-18 20:27:26');
INSERT INTO `sys_oper_log` VALUES (154, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"401\"],\"statusName\":[\"已下线\"]}', 0, NULL, '2019-04-18 20:27:52');
INSERT INTO `sys_oper_log` VALUES (155, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"402\"],\"statusName\":[\"维护中\"]}', 0, NULL, '2019-04-18 20:29:47');
INSERT INTO `sys_oper_log` VALUES (156, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"409\"],\"statusName\":[\"异常\"]}', 0, NULL, '2019-04-18 20:29:55');
INSERT INTO `sys_oper_log` VALUES (157, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"500\"],\"statusName\":[\"待审核\"]}', 0, NULL, '2019-04-18 20:32:02');
INSERT INTO `sys_oper_log` VALUES (158, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"501\"],\"statusName\":[\"使用中\"]}', 0, NULL, '2019-04-18 20:32:54');
INSERT INTO `sys_oper_log` VALUES (159, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"502\"],\"statusName\":[\"已停用\"]}', 0, NULL, '2019-04-18 20:33:09');
INSERT INTO `sys_oper_log` VALUES (160, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"509\"],\"statusName\":[\"异常\"]}', 0, NULL, '2019-04-18 20:33:38');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"状态管理\"],\"url\":[\"/system/status\"],\"perms\":[\"system:status:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-18 20:34:44');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 1, 'com.aaa.project.system.user.controller.UserController.addSave()', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"loginName\":[\"niushihao\"],\"userName\":[\"牛牛牛\"],\"password\":[\"123456\"],\"email\":[\"niushihao@qq.com\"],\"phonenumber\":[\"13255668998\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"2\"]}', 0, NULL, '2019-04-18 20:40:05');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cities', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 21:30:23');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_container', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 21:49:32');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.batchGenCode()', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"cw_car_info,cw_consumer_account\"]}', 0, NULL, '2019-04-18 22:16:44');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_car_info', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:18:36');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2027', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:40:58');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2027', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:41:12');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2031', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:41:28');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2028', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:41:38');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2029', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:41:45');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2030', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:41:50');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2027', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-18 22:41:54');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 08:56:19');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 08:56:30');
INSERT INTO `sys_oper_log` VALUES (176, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"302\"],\"statusName\":[\"待寄存\"]}', 0, NULL, '2019-04-19 09:01:24');
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_store_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:36:41');
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_store_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:36:43');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2032', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:56:59');
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2033', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:57:09');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2034', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:57:22');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2036', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:57:27');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2035', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:57:32');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2032', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:57:38');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_order', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:57:57');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_default_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:58:05');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_default_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 09:58:05');
INSERT INTO `sys_oper_log` VALUES (188, '消费者账号', 1, 'com.aaa.project.system.consumerAccount.controller.ConsumerAccountController.addSave()', 1, 'admin', NULL, '/system/consumerAccount/add', '127.0.0.1', '内网IP', '{\"consumerAccount\":[\"18625521997\"],\"consumerPassword\":[\"4a20c709542300dd952f525ea9f44f93\"],\"openid\":[\"\"]}', 0, NULL, '2019-04-19 10:46:05');
INSERT INTO `sys_oper_log` VALUES (189, '消费者账号', 2, 'com.aaa.project.system.consumerAccount.controller.ConsumerAccountController.editSave()', 1, 'admin', NULL, '/system/consumerAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"consumerAccount\":[\"18625521997\"],\"consumerPassword\":[\"4a20c709542300dd952f525ea9f44f93\"],\"openid\":[\"ogwXj5APRlm05cGNklDwCVMh7hN8\"]}', 0, NULL, '2019-04-19 10:47:33');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_evaluate', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 11:06:31');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_evaluate', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 11:06:31');
INSERT INTO `sys_oper_log` VALUES (192, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"1111\"],\"consumerAccount\":[\"123456\"],\"storeId\":[\"123485\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointme', 0, NULL, '2019-04-19 11:14:40');
INSERT INTO `sys_oper_log` VALUES (193, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"orderId\":[\"1111\"],\"consumerAccount\":[\"123456\"],\"storeId\":[\"123485\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"Fri Apr 19 11:20:08 CST 2019\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"\"],\"userAccou', 0, NULL, '2019-04-19 11:23:46');
INSERT INTO `sys_oper_log` VALUES (194, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-19 11:24:46');
INSERT INTO `sys_oper_log` VALUES (195, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"1234\"],\"consumerAccount\":[\"111\"],\"storeId\":[\"534\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentTime', 0, NULL, '2019-04-19 15:01:38');
INSERT INTO `sys_oper_log` VALUES (196, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"1235\"],\"consumerAccount\":[\"111\"],\"storeId\":[\"123485\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentT', 0, NULL, '2019-04-19 15:01:57');
INSERT INTO `sys_oper_log` VALUES (197, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"1236\"],\"consumerAccount\":[\"121\"],\"storeId\":[\"asd\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentTime', 0, NULL, '2019-04-19 15:02:15');
INSERT INTO `sys_oper_log` VALUES (198, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"1237\"],\"consumerAccount\":[\"111\"],\"storeId\":[\"123435\"],\"statusId\":[\"203\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentT', 0, NULL, '2019-04-19 15:03:00');
INSERT INTO `sys_oper_log` VALUES (199, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-04-19 15:12:40');
INSERT INTO `sys_oper_log` VALUES (200, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', 0, NULL, '2019-04-19 15:12:43');
INSERT INTO `sys_oper_log` VALUES (201, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', 0, NULL, '2019-04-19 15:12:46');
INSERT INTO `sys_oper_log` VALUES (202, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-19 15:12:48');
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_info', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 15:23:12');
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_car_image', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 16:21:37');
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_info', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 16:46:47');
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_info', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-19 16:49:11');
INSERT INTO `sys_oper_log` VALUES (207, '消费者账号', 2, 'com.aaa.project.system.consumerAccount.controller.ConsumerAccountController.editSave()', 1, 'admin', '研发部门', '/system/consumerAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"consumerAccount\":[\"18625521000\"],\"consumerPassword\":[\"4a20c709542300dd952f525ea9f44f93\"],\"openid\":[\"ogwXj5APRlm05cGNklDwCVMh7hN8\"]}', 0, NULL, '2019-04-19 19:28:07');
INSERT INTO `sys_oper_log` VALUES (208, '钥匙', 1, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.addSave()', 1, 'admin', '研发部门', '/system/keyInfo/add', '127.0.0.1', '内网IP', '{\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"300\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.keyInfo.mapper.KeyInfoMapper.insertKeyInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_key_info    ( container_id,    status_id )           values ( ?,    ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-04-20 12:47:19');
INSERT INTO `sys_oper_log` VALUES (209, '钥匙', 2, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.editSave()', 1, 'admin', '研发部门', '/system/keyInfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"301\"]}', 0, NULL, '2019-04-20 13:42:20');
INSERT INTO `sys_oper_log` VALUES (210, '钥匙', 2, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.editSave()', 1, 'admin', '研发部门', '/system/keyInfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"8\"],\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"300\"]}', 0, NULL, '2019-04-20 13:49:29');
INSERT INTO `sys_oper_log` VALUES (211, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"牛仕浩\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路97号\"],\"posLng\":[\"113.663642\"],\"posLat\":[\"34.781917\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"introducti', 0, NULL, '2019-04-22 09:34:05');
INSERT INTO `sys_oper_log` VALUES (212, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1002\"],\"storeName\":[\"AA洗车店\"],\"ownerAccount\":[\"张智敏\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路96号\"],\"posLng\":[\"113.666458\"],\"posLat\":[\"34.785572\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"introductio', 0, NULL, '2019-04-22 09:34:13');
INSERT INTO `sys_oper_log` VALUES (213, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"storeId\":[\"1003\"],\"storeName\":[\"AX洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路93号\"],\"posLng\":[\"113.666330\"],\"posLat\":[\"34.788060\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"introductio', 0, NULL, '2019-04-22 09:34:20');
INSERT INTO `sys_oper_log` VALUES (214, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"storeId\":[\"1004\"],\"storeName\":[\"AS洗车店\"],\"ownerAccount\":[\"王刚\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路95号\"],\"posLng\":[\"113.663774\"],\"posLat\":[\"34.785692\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"introduction', 0, NULL, '2019-04-22 09:34:26');
INSERT INTO `sys_oper_log` VALUES (215, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"serviceName\":[\"车身美容\"],\"description\":[\"车身美容服务项目包括高压洗车，去除沥青、焦油等污物，上蜡增艳与镜面处理，新车开蜡，钢圈、轮胎、保险杠翻新与底盘防腐涂胶处理等\"],\"statusId\":[\"400\"],\"cost\":[\"50.0\"],\"numberPurchased\":[\"100\"]}', 0, NULL, '2019-04-22 09:39:54');
INSERT INTO `sys_oper_log` VALUES (216, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1001\"],\"serviceName\":[\"内饰美容\"],\"description\":[\"内饰美容服务项目可分为车室美容、发动机美容及行李箱清洁等项目。其中车室美容包括仪表台、顶棚、地毯、脚垫、座椅、座套、车门内饰的吸尘清洁保护，以及蒸汽杀菌、冷暖风口除臭、室内空气净化等项目。\"],\"statusId\":[\"400\"],\"cost\":[\"80.0\"],\"numberPurchased\":[\"20\"]}', 0, NULL, '2019-04-22 09:39:59');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_order_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-22 09:43:20');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_order_service', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-22 09:43:23');
INSERT INTO `sys_oper_log` VALUES (219, '钥匙', 1, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.addSave()', 1, 'admin', '研发部门', '/system/keyInfo/add', '127.0.0.1', '内网IP', '{\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"301\"]}', 0, NULL, '2019-04-22 10:11:40');
INSERT INTO `sys_oper_log` VALUES (220, '钥匙', 3, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.remove()', 1, 'admin', '研发部门', '/system/keyInfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', 0, NULL, '2019-04-22 10:11:48');
INSERT INTO `sys_oper_log` VALUES (221, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"serviceName\":[\"车身美容\"],\"description\":[\"车身美容服务项目包括高压洗车，去除沥青、焦油等污物，上蜡增艳与镜面处理，新车开蜡，钢圈、轮胎、保险杠翻新与底盘防腐涂胶处理等\"],\"statusId\":[\"402\"],\"cost\":[\"50.0\"],\"numberPurchased\":[\"100\"]}', 0, NULL, '2019-04-22 12:55:41');
INSERT INTO `sys_oper_log` VALUES (222, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"serviceName\":[\"车身美容\"],\"description\":[\"车身美容服务项目包括高压洗车，去除沥青、焦油等污物，上蜡增艳与镜面处理，新车开蜡，钢圈、轮胎、保险杠翻新与底盘防腐涂胶处理等\"],\"statusId\":[\"401\"],\"cost\":[\"50.0\"],\"numberPurchased\":[\"100\"]}', 0, NULL, '2019-04-22 12:56:43');
INSERT INTO `sys_oper_log` VALUES (223, '钥匙', 1, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.addSave()', 1, 'admin', '研发部门', '/system/keyInfo/add', '127.0.0.1', '内网IP', '{\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusName\":[\"302\"]}', 0, NULL, '2019-04-22 14:07:44');
INSERT INTO `sys_oper_log` VALUES (224, '钥匙', 1, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.addSave()', 1, 'admin', '研发部门', '/system/keyInfo/add', '127.0.0.1', '内网IP', '{\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusName\":[\"301\"]}', 0, NULL, '2019-04-22 14:08:20');
INSERT INTO `sys_oper_log` VALUES (225, '钥匙', 1, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.addSave()', 1, 'admin', '研发部门', '/system/keyInfo/add', '127.0.0.1', '内网IP', '{\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"302\"]}', 0, NULL, '2019-04-22 14:16:06');
INSERT INTO `sys_oper_log` VALUES (226, '钥匙', 3, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.remove()', 1, 'admin', '研发部门', '/system/keyInfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', 0, NULL, '2019-04-22 14:20:03');
INSERT INTO `sys_oper_log` VALUES (227, '钥匙', 3, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.remove()', 1, 'admin', '研发部门', '/system/keyInfo/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', 0, NULL, '2019-04-22 14:20:06');
INSERT INTO `sys_oper_log` VALUES (228, '钥匙', 2, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.editSave()', 1, 'admin', '研发部门', '/system/keyInfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"301\"]}', 0, NULL, '2019-04-22 15:00:07');
INSERT INTO `sys_oper_log` VALUES (229, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"keyI', 0, NULL, '2019-04-22 15:29:49');
INSERT INTO `sys_oper_log` VALUES (230, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"007\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"cityid\":[\"河南省/郑州市/金水区\"],\"street\":[\"文化路97号\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"\"],\"introduction\":[\"\"],\"faviconPath\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'cityid\' at row 1\r\n### The error may involve com.aaa.project.system.store.mapper.StoreMapper.insertStore-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_store          ( store_id,             store_name,             owner_account,                          cityid,             street,                                       contacts,             contacts_phone )           values ( ?,             ?,             ?,                          ?,             ?,                                       ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'cityid\' at row 1\n; Data truncation: Data too long for column \'cityid\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'cityid\' at row 1', '2019-04-22 15:49:25');
INSERT INTO `sys_oper_log` VALUES (231, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"牛仕浩\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路97号\"],\"posLng\":[\"113.663642\"],\"posLat\":[\"34.781917\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"introducti', 0, NULL, '2019-04-22 16:18:09');
INSERT INTO `sys_oper_log` VALUES (232, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"\"],\"storeName\":[\"\"],\"ownerAccount\":[\"\"],\"city\":[\"河南省/郑州市/金水区\"],\"street\":[\"文化路60号\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"introduction\":[\"\"],\"faviconPath\":[\"\"]}', 0, NULL, '2019-04-22 16:29:39');
INSERT INTO `sys_oper_log` VALUES (233, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-04-22 16:29:53');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_model', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-22 16:36:51');
INSERT INTO `sys_oper_log` VALUES (235, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"\"],\"statusId\":[\"201\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"keyI', 0, NULL, '2019-04-22 17:00:39');
INSERT INTO `sys_oper_log` VALUES (236, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"keyI', 0, NULL, '2019-04-22 17:33:42');
INSERT INTO `sys_oper_log` VALUES (237, '钥匙', 2, 'com.aaa.project.system.keyInfo.controller.KeyInfoController.editSave()', 1, 'admin', '研发部门', '/system/keyInfo/edit', '127.0.0.1', '内网IP', '{\"id\":[\"12\"],\"containerId\":[\"09968090f5564caeb2a8e7d36e0c9571\"],\"statusId\":[\"300\"]}', 0, NULL, '2019-04-22 17:34:19');
INSERT INTO `sys_oper_log` VALUES (238, '门店环境', 2, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.editSave()', 1, 'admin', '研发部门', '/system/storeEnv/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"imagePath\":[\"/store/env/timg.jpg\"]}', 0, NULL, '2019-04-22 20:09:01');
INSERT INTO `sys_oper_log` VALUES (239, '门店环境', 2, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.editSave()', 1, 'admin', '研发部门', '/system/storeEnv/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1001\"],\"imagePath\":[\"/store/env/timg2.jpg\"]}', 0, NULL, '2019-04-22 20:09:13');
INSERT INTO `sys_oper_log` VALUES (240, '门店环境', 1, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.addSave()', 1, 'admin', '研发部门', '/system/storeEnv/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1002\"],\"imagePath\":[\"/store/env/timg2.jpg\"]}', 0, NULL, '2019-04-22 20:09:20');
INSERT INTO `sys_oper_log` VALUES (241, '门店环境', 2, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.editSave()', 1, 'admin', '研发部门', '/system/storeEnv/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1001\"],\"imagePath\":[\"/store/env/timg1.jpg\"]}', 0, NULL, '2019-04-22 20:09:26');
INSERT INTO `sys_oper_log` VALUES (242, '门店环境', 1, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.addSave()', 1, 'admin', '研发部门', '/system/storeEnv/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1001\"],\"imagePath\":[\"/store/env/timg3.jpg\"]}', 0, NULL, '2019-04-22 20:09:44');
INSERT INTO `sys_oper_log` VALUES (243, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"牛仕浩\"],\"provinceid\":[\"河南\"],\"cityid\":[\"郑州\"],\"street\":[\"牛顿国际\"],\"posLng\":[\"113.663642\"],\"posLat\":[\"34.781917\"],\"contacts\":[\"白展堂\"],\"contactsPhone\":[\"8839504\"],\"statusId\":[\"\"],\"introduction\"', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'contacts_phone\' at row 1\n### The error may involve com.aaa.project.system.store.mapper.StoreMapper.updateStore-Inline\n### The error occurred while setting parameters\n### SQL: update cw_store          SET store_id = ?,             store_name = ?,             owner_account = ?,             provinceid = ?,             cityid = ?,             street = ?,             pos_lng = ?,             pos_lat = ?,             contacts = ?,             contacts_phone = ?,                                       favicon_path = ?          where id = ?\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'contacts_phone\' at row 1\n; Data truncation: Data too long for column \'contacts_phone\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'contacts_phone\' at row 1', '2019-04-22 20:15:11');
INSERT INTO `sys_oper_log` VALUES (244, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"牛仕浩\"],\"provinceid\":[\"河南\"],\"cityid\":[\"郑州\"],\"street\":[\"牛顿国际\"],\"posLng\":[\"113.663642\"],\"posLat\":[\"34.781917\"],\"contacts\":[\"白展堂\"],\"contactsPhone\":[\"8839504\"],\"statusId\":[\"\"],\"introduction\"', 0, NULL, '2019-04-22 20:15:46');
INSERT INTO `sys_oper_log` VALUES (245, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1002\"],\"storeName\":[\"AA洗车店\"],\"ownerAccount\":[\"张智敏\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路96号\"],\"posLng\":[\"113.666458\"],\"posLat\":[\"34.785572\"],\"contacts\":[\"佟湘玉\"],\"contactsPhone\":[\"9989988\"],\"statusId\":[\"\"],\"i', 0, NULL, '2019-04-22 20:15:59');
INSERT INTO `sys_oper_log` VALUES (246, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"storeId\":[\"1003\"],\"storeName\":[\"AX洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路93号\"],\"posLng\":[\"113.666330\"],\"posLat\":[\"34.788060\"],\"contacts\":[\"郭芙蓉\"],\"contactsPhone\":[\"787795\"],\"statusId\":[\"\"],\"in', 0, NULL, '2019-04-22 20:16:09');
INSERT INTO `sys_oper_log` VALUES (247, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"storeId\":[\"1004\"],\"storeName\":[\"AS洗车店\"],\"ownerAccount\":[\"王刚\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路95号\"],\"posLng\":[\"113.663774\"],\"posLat\":[\"34.785692\"],\"contacts\":[\"李大嘴\"],\"contactsPhone\":[\"8885462\"],\"statusId\":[\"\"],\"in', 0, NULL, '2019-04-22 20:16:18');
INSERT INTO `sys_oper_log` VALUES (248, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"storeId\":[\"1003\"],\"storeName\":[\"AX洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路93号\"],\"posLng\":[\"113.666330\"],\"posLat\":[\"34.788060\"],\"contacts\":[\"郭芙蓉\"],\"contactsPhone\":[\"7877950\"],\"statusId\":[\"\"],\"i', 0, NULL, '2019-04-22 20:16:23');
INSERT INTO `sys_oper_log` VALUES (249, '门店环境', 2, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.editSave()', 1, 'admin', '研发部门', '/system/storeEnv/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1004\"],\"imagePath\":[\"/store/env/timg.jpg\"]}', 0, NULL, '2019-04-22 20:20:01');
INSERT INTO `sys_oper_log` VALUES (250, '门店环境', 2, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.editSave()', 1, 'admin', '研发部门', '/system/storeEnv/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"storeId\":[\"1004\"],\"imagePath\":[\"/store/env/timg3.jpg\"]}', 0, NULL, '2019-04-22 20:20:06');
INSERT INTO `sys_oper_log` VALUES (251, '门店环境', 2, 'com.aaa.project.system.storeEnv.controller.StoreEnvController.editSave()', 1, 'admin', '研发部门', '/system/storeEnv/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1004\"],\"imagePath\":[\"/store/env/timg1.jpg\"]}', 0, NULL, '2019-04-22 20:20:14');
INSERT INTO `sys_oper_log` VALUES (252, '状态', 2, 'com.aaa.project.system.status.controller.StatusController.editSave()', 1, 'admin', '研发部门', '/system/status/edit', '127.0.0.1', '内网IP', '{\"id\":[\"201\"],\"statusName\":[\"待付款\"]}', 0, NULL, '2019-04-22 21:58:11');
INSERT INTO `sys_oper_log` VALUES (253, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"600\"],\"statusName\":[\"待付款\"]}', 0, NULL, '2019-04-22 21:58:32');
INSERT INTO `sys_oper_log` VALUES (254, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"601\"],\"statusName\":[\"已付款\"]}', 0, NULL, '2019-04-22 21:58:45');
INSERT INTO `sys_oper_log` VALUES (255, '状态', 3, 'com.aaa.project.system.status.controller.StatusController.remove()', 1, 'admin', '研发部门', '/system/status/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"601\"]}', 0, NULL, '2019-04-22 21:59:14');
INSERT INTO `sys_oper_log` VALUES (256, '状态', 3, 'com.aaa.project.system.status.controller.StatusController.remove()', 1, 'admin', '研发部门', '/system/status/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"600\"]}', 0, NULL, '2019-04-22 21:59:17');
INSERT INTO `sys_oper_log` VALUES (257, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_expect_cost', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-22 22:01:50');
INSERT INTO `sys_oper_log` VALUES (258, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:27:20');
INSERT INTO `sys_oper_log` VALUES (259, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:27:27');
INSERT INTO `sys_oper_log` VALUES (260, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"\"],\"consumerAccount\":[\"\"],\"storeId\":[\"\"],\"statusId\":[\"200\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"0\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentTime\":[\"\"],\"t', 0, NULL, '2019-04-22 22:27:37');
INSERT INTO `sys_oper_log` VALUES (261, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', 0, NULL, '2019-04-22 22:27:47');
INSERT INTO `sys_oper_log` VALUES (262, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:29:46');
INSERT INTO `sys_oper_log` VALUES (263, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"\"],\"consumerAccount\":[\"\"],\"storeId\":[\"\"],\"statusId\":[\"200\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"0\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentTime\":[\"\"],\"t', 0, NULL, '2019-04-22 22:30:11');
INSERT INTO `sys_oper_log` VALUES (264, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', 0, NULL, '2019-04-22 22:30:32');
INSERT INTO `sys_oper_log` VALUES (265, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:31:32');
INSERT INTO `sys_oper_log` VALUES (266, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:31:39');
INSERT INTO `sys_oper_log` VALUES (267, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:32:37');
INSERT INTO `sys_oper_log` VALUES (268, '订单', 1, 'com.aaa.project.system.order.controller.OrderController.addSave()', 1, 'admin', '研发部门', '/system/order/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"\"],\"consumerAccount\":[\"\"],\"storeId\":[\"\"],\"statusId\":[\"200\"],\"payStatusId\":[\"\"],\"createDate\":[\"\"],\"finishDate\":[\"\"],\"carId\":[\"\"],\"carAddress\":[\"\"],\"keyInfoId\":[\"\"],\"typeId\":[\"0\"],\"userAccount\":[\"\"],\"orderComment\":[\"\"],\"appointmentTime\":[\"\"],\"t', 0, NULL, '2019-04-22 22:36:06');
INSERT INTO `sys_oper_log` VALUES (269, '订单', 3, 'com.aaa.project.system.order.controller.OrderController.remove()', 1, 'admin', '研发部门', '/system/order/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', 0, NULL, '2019-04-22 22:36:16');
INSERT INTO `sys_oper_log` VALUES (270, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"205\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-22 22:37:05');
INSERT INTO `sys_oper_log` VALUES (271, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_order_amount', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 08:50:05');
INSERT INTO `sys_oper_log` VALUES (272, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_user_account', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 08:53:04');
INSERT INTO `sys_oper_log` VALUES (273, '角色管理', 2, 'com.aaa.project.system.role.controller.RoleController.editSave()', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"商家\"],\"roleKey\":[\"merchant\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"门店的所有者\"],\"menuIds\":[\"2005,2006,2007,2008,2009,2000,2001,2002,2003,2004,3,2037,2038,2039,2040,2041\"]}', 0, NULL, '2019-04-23 09:47:54');
INSERT INTO `sys_oper_log` VALUES (274, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_user_account', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 09:59:12');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2097\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/userAccount\"],\"perms\":[\"system:userAccount:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-23 10:03:01');
INSERT INTO `sys_oper_log` VALUES (276, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_user', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:03:33');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2103', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:05:23');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2104', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:05:30');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2102', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:05:35');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2105', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:05:44');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2106', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:05:48');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2102', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:05:53');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2108', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:06:01');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2109', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:06:12');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2110', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:06:17');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2111', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:06:22');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2107', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-23 10:06:25');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2097\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"门店用户管理\"],\"url\":[\"/system/userAccount\"],\"perms\":[\"system:userAccount:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-23 10:10:19');
INSERT INTO `sys_oper_log` VALUES (289, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"208\"],\"statusName\":[\"进行中\"]}', 0, NULL, '2019-04-23 10:16:55');
INSERT INTO `sys_oper_log` VALUES (290, '订单金额', 1, 'com.aaa.project.system.orderAmount.controller.OrderAmountController.addSave()', 1, 'admin', '研发部门', '/system/orderAmount/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"3440602991495\"],\"totalAmount\":[\"100\"],\"finalAmount\":[\"100\"]}', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'total_amount\' at row 1\r\n### The error may involve com.aaa.project.system.orderAmount.mapper.OrderAmountMapper.insertOrderAmount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_order_amount    ( order_id,    total_amount,    final_amount )           values ( ?,    ?,    ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'total_amount\' at row 1\n; Data truncation: Out of range value for column \'total_amount\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'total_amount\' at row 1', '2019-04-23 10:36:16');
INSERT INTO `sys_oper_log` VALUES (291, '订单金额', 1, 'com.aaa.project.system.orderAmount.controller.OrderAmountController.addSave()', 1, 'admin', '研发部门', '/system/orderAmount/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"3440602991495\"],\"totalAmount\":[\"100\"],\"finalAmount\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'total_amount\' at row 1\r\n### The error may involve com.aaa.project.system.orderAmount.mapper.OrderAmountMapper.insertOrderAmount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_order_amount    ( order_id,    total_amount,    final_amount )           values ( ?,    ?,    ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'total_amount\' at row 1\n; Data truncation: Out of range value for column \'total_amount\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'total_amount\' at row 1', '2019-04-23 10:37:28');
INSERT INTO `sys_oper_log` VALUES (292, '订单金额', 1, 'com.aaa.project.system.orderAmount.controller.OrderAmountController.addSave()', 1, 'admin', '研发部门', '/system/orderAmount/add', '127.0.0.1', '内网IP', '{\"orderId\":[\"\"],\"totalAmount\":[\"\"],\"finalAmount\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.aaa.project.system.orderAmount.mapper.OrderAmountMapper.insertOrderAmount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_order_amount\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-04-23 10:39:16');
INSERT INTO `sys_oper_log` VALUES (293, '订单', 2, 'com.aaa.project.system.order.controller.OrderController.editSave()', 1, 'admin', '研发部门', '/system/order/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"orderId\":[\"3440602991495\"],\"consumerAccount\":[\"18625521997\"],\"storeId\":[\"1001\"],\"statusId\":[\"202\"],\"payStatusId\":[\"\"],\"createDate\":[\"Fri Apr 19 15:51:40 CST 2019\"],\"finishDate\":[\"\"],\"carId\":[\"1\"],\"carAddress\":[\"河南省郑州市金水区东风路街道东风路数码港大厦(东风路)\"],\"', 0, NULL, '2019-04-23 10:41:43');
INSERT INTO `sys_oper_log` VALUES (294, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"\"],\"storeName\":[\"\"],\"ownerAccount\":[\"\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"\"],\"cityid\":[\"\"],\"street\":[\"河南省郑州市金水区文化路街道丰产路6郑州大学北校区\"],\"posLng\":[\"113.664688\"],\"posLat\":[\"34.782599\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\":[\"\"],\"in', 0, NULL, '2019-04-23 12:15:02');
INSERT INTO `sys_oper_log` VALUES (295, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', 0, NULL, '2019-04-23 12:15:51');
INSERT INTO `sys_oper_log` VALUES (296, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"\"],\"cityid\":[\"\"],\"street\":[\"文化路97号\"],\"posLng\":[\"\"],\"posLat\":[\"\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introductio', 0, NULL, '2019-04-23 12:16:37');
INSERT INTO `sys_oper_log` VALUES (297, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1009\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"\"],\"cityid\":[\"\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[', 0, NULL, '2019-04-23 12:21:34');
INSERT INTO `sys_oper_log` VALUES (298, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"\"],\"storeName\":[\"\"],\"ownerAccount\":[\"\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区文化路街道丰产路28号信达大厦(丰产路)\"],\"posLng\":[\"113.67267\"],\"posLat\":[\"34.783904\"],\"contacts\":[\"\"],\"contactsPhone\":[\"\"],\"statusId\"', 0, NULL, '2019-04-23 12:23:01');
INSERT INTO `sys_oper_log` VALUES (299, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8,9\"]}', 0, NULL, '2019-04-23 12:23:27');
INSERT INTO `sys_oper_log` VALUES (300, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', 0, NULL, '2019-04-23 12:23:33');
INSERT INTO `sys_oper_log` VALUES (301, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"郑州市\"],\"cityid\":[\"河南省\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 0, NULL, '2019-04-23 12:27:26');
INSERT INTO `sys_oper_log` VALUES (302, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', 0, NULL, '2019-04-23 12:27:35');
INSERT INTO `sys_oper_log` VALUES (303, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1010\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"郑州市\"],\"cityid\":[\"河南省\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 0, NULL, '2019-04-23 14:04:45');
INSERT INTO `sys_oper_log` VALUES (304, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', 0, NULL, '2019-04-23 14:05:00');
INSERT INTO `sys_oper_log` VALUES (305, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"郑州市\"],\"cityid\":[\"河南省\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 1, '', '2019-04-23 14:14:23');
INSERT INTO `sys_oper_log` VALUES (306, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"郑州市\"],\"cityid\":[\"河南省\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 1, '', '2019-04-23 14:14:28');
INSERT INTO `sys_oper_log` VALUES (307, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 0, NULL, '2019-04-23 14:17:24');
INSERT INTO `sys_oper_log` VALUES (308, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1010\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 0, NULL, '2019-04-23 14:28:26');
INSERT INTO `sys_oper_log` VALUES (309, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"10011\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"stat', 0, NULL, '2019-04-23 14:32:48');
INSERT INTO `sys_oper_log` VALUES (310, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1020\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"city_name\":[\"河南省/郑州市/金水区\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statu', 1, '', '2019-04-23 15:04:06');
INSERT INTO `sys_oper_log` VALUES (311, '角色管理', 2, 'com.aaa.project.system.role.controller.RoleController.editSave()', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"商家\"],\"roleKey\":[\"merchant\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"门店的所有者\"],\"menuIds\":[\"2010,2005,2006,2007,2008,2009,2000,2001,2002,2003,2004,3,2037,2038,2039,2040,2041\"]}', 0, NULL, '2019-04-23 15:38:47');
INSERT INTO `sys_oper_log` VALUES (312, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userAccount\":[\"111\"],\"userPassword\":[\"111\"],\"roleId\":[\"100\"],\"openid\":[\"\"],\"realName\":[\"\"],\"phone\":[\"\"],\"drivingLicence1\":[\"\"],\"drivingLicence2\":[\"\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'user_account\' in \'field list\'\r\n### The error may involve com.aaa.project.system.userAccount.mapper.UserAccountMapper.insertUserAccount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_user_account    ( user_account,    user_password,    role_id )           values ( ?,    ?,    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'user_account\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'user_account\' in \'field list\'', '2019-04-23 15:49:54');
INSERT INTO `sys_oper_log` VALUES (313, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (314, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (315, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (316, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (317, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (318, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (319, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (320, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (321, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:31:59');
INSERT INTO `sys_oper_log` VALUES (322, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:32:02');
INSERT INTO `sys_oper_log` VALUES (323, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:34:06');
INSERT INTO `sys_oper_log` VALUES (324, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:34:15');
INSERT INTO `sys_oper_log` VALUES (325, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:36:03');
INSERT INTO `sys_oper_log` VALUES (326, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:38:56');
INSERT INTO `sys_oper_log` VALUES (327, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '找不到网络路径。', '2019-04-23 16:41:49');
INSERT INTO `sys_oper_log` VALUES (328, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '', '2019-04-23 16:45:12');
INSERT INTO `sys_oper_log` VALUES (329, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '', '2019-04-23 16:48:19');
INSERT INTO `sys_oper_log` VALUES (330, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"fileName\":[\"undefined\"]}', 1, '', '2019-04-23 16:50:12');
INSERT INTO `sys_oper_log` VALUES (331, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1020\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceId\":[\"河南省\"],\"cityId\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduction\":', 1, '', '2019-04-23 17:01:39');
INSERT INTO `sys_oper_log` VALUES (332, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1020\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduction\":', 0, NULL, '2019-04-23 17:03:11');
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2097\"],\"menuType\":[\"F\"],\"menuName\":[\"审核\"],\"url\":[\"\"],\"perms\":[\"system:userAccount:verify\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-23 21:20:09');
INSERT INTO `sys_oper_log` VALUES (334, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 08:44:41');
INSERT INTO `sys_oper_log` VALUES (335, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2113\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 08:46:04');
INSERT INTO `sys_oper_log` VALUES (336, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2113\"],\"parentId\":[\"2005\"],\"menuType\":[\"M\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-hand-stop-o\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 09:04:06');
INSERT INTO `sys_oper_log` VALUES (337, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2113\"],\"parentId\":[\"2005\"],\"menuType\":[\"M\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-hand-stop-o\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 09:04:52');
INSERT INTO `sys_oper_log` VALUES (338, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2113', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 09:05:05');
INSERT INTO `sys_oper_log` VALUES (339, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2006\"],\"menuType\":[\"F\"],\"menuName\":[\"门店审核\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 09:05:29');
INSERT INTO `sys_oper_log` VALUES (340, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2114', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 09:05:54');
INSERT INTO `sys_oper_log` VALUES (341, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 09:06:17');
INSERT INTO `sys_oper_log` VALUES (342, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"fghjfg\"],\"loginName\":[\"asdaaw\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"on\"],\"drivingLicence1\":[\"\"],\"drivingLicence2\":[\"\"],\"storeId\":[\"\"],\"role\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                                                password,       salt,             create_by,            create_time    )values(                                                ?,       ?,             ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\n; Field \'login_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'login_name\' doesn\'t have a default value', '2019-04-24 09:49:14');
INSERT INTO `sys_oper_log` VALUES (343, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"fghjfg\"],\"loginName\":[\"asdaaw\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"on\"],\"drivingLicence1\":[\"\"],\"drivingLicence2\":[\"\"],\"storeId\":[\"\"],\"role\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                                                password,       salt,             create_by,            create_time    )values(                                                ?,       ?,             ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\n; Field \'login_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'login_name\' doesn\'t have a default value', '2019-04-24 09:49:50');
INSERT INTO `sys_oper_log` VALUES (344, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"fghjfg\"],\"loginName\":[\"admin1\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"on\"],\"drivingLicence1\":[\"\"],\"drivingLicence2\":[\"\"],\"storeId\":[\"\"],\"role\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                                                password,       salt,             create_by,            create_time    )values(                                                ?,       ?,             ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\n; Field \'login_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'login_name\' doesn\'t have a default value', '2019-04-24 09:51:03');
INSERT INTO `sys_oper_log` VALUES (345, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"6622918\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"on\"],\"drivingLicence1\":[\"\"],\"drivingLicence2\":[\"\"],\"storeId\":[\"\"],\"role\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                                                password,       salt,             create_by,            create_time    )values(                                                ?,       ?,             ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'login_name\' doesn\'t have a default value\n; Field \'login_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'login_name\' doesn\'t have a default value', '2019-04-24 09:53:29');
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2115\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"system:store:reviewed\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 10:40:00');
INSERT INTO `sys_oper_log` VALUES (347, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"\"],\"perms\":[\"system:store:reviewed:agree\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 10:41:41');
INSERT INTO `sys_oper_log` VALUES (348, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value', '2019-04-24 10:58:41');
INSERT INTO `sys_oper_log` VALUES (349, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value', '2019-04-24 10:59:44');
INSERT INTO `sys_oper_log` VALUES (350, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"on\"],\"storeId\":[\"\"],\"role\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,             password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,             ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\n; Data truncation: Data too long for column \'status\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1', '2019-04-24 11:01:43');
INSERT INTO `sys_oper_log` VALUES (351, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"on\"],\"storeId\":[\"\"],\"role\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,             password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,             ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\n; Data truncation: Data too long for column \'status\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1', '2019-04-24 11:18:18');
INSERT INTO `sys_oper_log` VALUES (352, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"1\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value', '2019-04-24 11:19:41');
INSERT INTO `sys_oper_log` VALUES (353, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value', '2019-04-24 11:21:56');
INSERT INTO `sys_oper_log` VALUES (354, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value', '2019-04-24 11:22:56');
INSERT INTO `sys_oper_log` VALUES (355, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,                   phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,                   ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: java.sql.SQLException: Field \'user_name\' doesn\'t have a default value\n; Field \'user_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_name\' doesn\'t have a default value', '2019-04-24 11:24:51');
INSERT INTO `sys_oper_log` VALUES (356, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '', '2019-04-24 11:34:13');
INSERT INTO `sys_oper_log` VALUES (357, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '', '2019-04-24 11:35:36');
INSERT INTO `sys_oper_log` VALUES (358, '用户管理', 3, 'com.aaa.project.system.user.controller.UserController.remove()', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"101\"]}', 0, NULL, '2019-04-24 11:38:58');
INSERT INTO `sys_oper_log` VALUES (359, '用户管理', 3, 'com.aaa.project.system.user.controller.UserController.remove()', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"102\"]}', 0, NULL, '2019-04-24 11:39:00');
INSERT INTO `sys_oper_log` VALUES (360, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480081\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '', '2019-04-24 11:39:23');
INSERT INTO `sys_oper_log` VALUES (361, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918a\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480082\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 0, NULL, '2019-04-24 11:44:56');
INSERT INTO `sys_oper_log` VALUES (362, '用户管理', 2, 'com.aaa.project.system.user.controller.UserController.editSave()', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"104\"],\"deptId\":[\"\"],\"userName\":[\"杨军超\"],\"email\":[\"2319802305@qq.com\"],\"phonenumber\":[\"13608480082\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"3,4\"]}', 0, NULL, '2019-04-24 11:45:49');
INSERT INTO `sys_oper_log` VALUES (363, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"牛仕浩\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"牛顿国际\"],\"posLng\":[\"113.663642\"],\"posLat\":[\"34.781917\"],\"contacts\":[\"白展堂\"],\"contactsPhone\":[\"8839504\"],\"statusId\":[\"100\"],\"in', 0, NULL, '2019-04-24 11:55:36');
INSERT INTO `sys_oper_log` VALUES (364, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1002\"],\"storeName\":[\"AA洗车店\"],\"ownerAccount\":[\"张智敏\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路96号\"],\"posLng\":[\"113.666458\"],\"posLat\":[\"34.785572\"],\"contacts\":[\"佟湘玉\"],\"contactsPhone\":[\"9989988\"],\"statusId\":[\"101\"]', 0, NULL, '2019-04-24 11:55:41');
INSERT INTO `sys_oper_log` VALUES (365, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"storeId\":[\"1003\"],\"storeName\":[\"AX洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路93号\"],\"posLng\":[\"113.666330\"],\"posLat\":[\"34.788060\"],\"contacts\":[\"郭芙蓉\"],\"contactsPhone\":[\"7877950\"],\"statusId\":[\"101\"]', 0, NULL, '2019-04-24 11:55:48');
INSERT INTO `sys_oper_log` VALUES (366, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"storeId\":[\"1004\"],\"storeName\":[\"AS洗车店\"],\"ownerAccount\":[\"王刚\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"金水区文化路95号\"],\"posLng\":[\"113.663774\"],\"posLat\":[\"34.785692\"],\"contacts\":[\"李大嘴\"],\"contactsPhone\":[\"8885462\"],\"statusId\":[\"101\"],', 0, NULL, '2019-04-24 11:55:54');
INSERT INTO `sys_oper_log` VALUES (367, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2115\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"system:store:reviewed\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 14:07:19');
INSERT INTO `sys_oper_log` VALUES (368, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2116\"],\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"#\"],\"perms\":[\"system:store:reviewed:agree\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 14:07:32');
INSERT INTO `sys_oper_log` VALUES (369, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2115\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/store/reviewed\"],\"perms\":[\"system:store:reviewed\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 14:08:19');
INSERT INTO `sys_oper_log` VALUES (370, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2116\"],\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"#\"],\"perms\":[\"system:store:reviewed:agree\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 14:08:30');
INSERT INTO `sys_oper_log` VALUES (371, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', 0, NULL, '2019-04-24 14:09:54');
INSERT INTO `sys_oper_log` VALUES (372, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480082\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.aaa.project.system.userAccount.mapper.UserAccountMapper.insertUserAccount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cw_user_account    ( user_id )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-04-24 14:55:27');
INSERT INTO `sys_oper_log` VALUES (373, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480082\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 0, NULL, '2019-04-24 14:56:17');
INSERT INTO `sys_oper_log` VALUES (374, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2116\"],\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"#\"],\"perms\":[\"system:store:reviewed:agree\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:13:18');
INSERT INTO `sys_oper_log` VALUES (375, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2116\"],\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"#\"],\"perms\":[\"system:store:agree\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:24:00');
INSERT INTO `sys_oper_log` VALUES (376, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"拒绝\"],\"url\":[\"\"],\"perms\":[\"system:store:refuse\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:25:35');
INSERT INTO `sys_oper_log` VALUES (377, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 0, NULL, '2019-04-24 15:28:32');
INSERT INTO `sys_oper_log` VALUES (378, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"查看未审批门店\"],\"url\":[\"\"],\"perms\":[\"system:store:reviewedlist\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:46:56');
INSERT INTO `sys_oper_log` VALUES (379, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2116\"],\"parentId\":[\"2115\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"#\"],\"perms\":[\"system:store:agree\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:47:28');
INSERT INTO `sys_oper_log` VALUES (380, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2115', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 15:54:46');
INSERT INTO `sys_oper_log` VALUES (381, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2115', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 15:54:53');
INSERT INTO `sys_oper_log` VALUES (382, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2116', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 15:54:59');
INSERT INTO `sys_oper_log` VALUES (383, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2117', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 15:55:05');
INSERT INTO `sys_oper_log` VALUES (384, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2118', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 15:55:10');
INSERT INTO `sys_oper_log` VALUES (385, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2115', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-24 15:55:14');
INSERT INTO `sys_oper_log` VALUES (386, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/reviewedStore\"],\"perms\":[\"system:reviewedstore:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:56:32');
INSERT INTO `sys_oper_log` VALUES (387, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2119\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/reviewedStore\"],\"perms\":[\"system:reviewedstore:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:56:48');
INSERT INTO `sys_oper_log` VALUES (388, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2119\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/reviewedStore\"],\"perms\":[\"system:reviewedstore:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:57:03');
INSERT INTO `sys_oper_log` VALUES (389, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2119\"],\"menuType\":[\"F\"],\"menuName\":[\"查询未审核门店\"],\"url\":[\"\"],\"perms\":[\"system:reviewedstore:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:58:14');
INSERT INTO `sys_oper_log` VALUES (390, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2119\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"\"],\"perms\":[\"system:reviewedstore:agree\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:58:44');
INSERT INTO `sys_oper_log` VALUES (391, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2119\"],\"menuType\":[\"F\"],\"menuName\":[\"拒绝\"],\"url\":[\"\"],\"perms\":[\"system:reviewedstore:refuse\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 15:59:08');
INSERT INTO `sys_oper_log` VALUES (392, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2119\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店审核\"],\"url\":[\"/system/reviewedStore\"],\"perms\":[\"system:reviewedstore:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 16:24:07');
INSERT INTO `sys_oper_log` VALUES (393, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2120\"],\"parentId\":[\"2119\"],\"menuType\":[\"F\"],\"menuName\":[\"查询未审核门店\"],\"url\":[\"#\"],\"perms\":[\"system:reviewedstore:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-24 16:24:23');
INSERT INTO `sys_oper_log` VALUES (394, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480082\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"]}', 0, NULL, '2019-04-24 16:36:34');
INSERT INTO `sys_oper_log` VALUES (395, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 16:46:41');
INSERT INTO `sys_oper_log` VALUES (396, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.refuse()', 1, 'admin', '研发部门', '/system/reviewedStore/refuse', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'statusId\' not found. Available parameters are [statusID, ids, param1, param2]', '2019-04-24 17:24:36');
INSERT INTO `sys_oper_log` VALUES (397, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1004\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号\"],\"posLng\":[\"113.665074\"],\"posLat\":[\"34.781401\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduction\":', 0, NULL, '2019-04-24 17:26:14');
INSERT INTO `sys_oper_log` VALUES (398, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.refuse()', 1, 'admin', '研发部门', '/system/reviewedStore/refuse', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'statusId\' not found. Available parameters are [statusID, ids, param1, param2]', '2019-04-24 17:27:16');
INSERT INTO `sys_oper_log` VALUES (399, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'statusId\' not found. Available parameters are [statusID, ids, param1, param2]', '2019-04-24 17:38:29');
INSERT INTO `sys_oper_log` VALUES (400, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-24 17:44:08');
INSERT INTO `sys_oper_log` VALUES (401, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', 0, NULL, '2019-04-24 17:44:11');
INSERT INTO `sys_oper_log` VALUES (402, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 0, NULL, '2019-04-24 19:39:36');
INSERT INTO `sys_oper_log` VALUES (403, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"userName\":[\"杨军超\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"0\"],\"drivingLicence1\":[\"/user/drivingLicence/33155e33a7c5325929f687f94fd10506.jpg\"],\"drivingLicence2\":[\"/user/drivingLicence/cd1b63b', 0, NULL, '2019-04-24 21:21:56');
INSERT INTO `sys_oper_log` VALUES (404, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"userName\":[\"杨军超\"],\"loginName\":[\"yang66229181\"],\"password\":[\"1234567\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"0\"],\"drivingLicence1\":[\"/user/drivingLicence/33155e33a7c5325929f687f94fd10506.jpg\"],\"drivingLicence2\":[\"/user/drivingLicence/cd1b63', 0, NULL, '2019-04-24 21:34:56');
INSERT INTO `sys_oper_log` VALUES (405, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"1234567\"],\"phonenumber\":[\"13608480081\"],\"status\":[\"0\"],\"drivingLicence1\":[\"/user/drivingLicence/33155e33a7c5325929f687f94fd10506.jpg\"],\"drivingLicence2\":[\"/user/drivingLicence/cd1b63b', 0, NULL, '2019-04-24 21:35:32');
INSERT INTO `sys_oper_log` VALUES (406, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"1234567\"],\"phonenumber\":[\"13608480081\"],\"status\":[\"0\"],\"drivingLicence1\":[\"/user/drivingLicence/33155e33a7c5325929f687f94fd10506.jpg\"],\"drivingLicence2\":[\"/user/drivingLicence/cd1b63b', 0, NULL, '2019-04-24 21:35:38');
INSERT INTO `sys_oper_log` VALUES (407, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"1234567\"],\"phonenumber\":[\"13608480081\"],\"status\":[\"0\"],\"drivingLicence1\":[\"/user/drivingLicence/33155e33a7c5325929f687f94fd10506.jpg\"],\"drivingLicence2\":[\"/user/drivingLicence/cd1b63b', 0, NULL, '2019-04-24 21:36:50');
INSERT INTO `sys_oper_log` VALUES (408, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"userName\":[\"杨军超\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"0\"],\"drivingLicence1\":[\"/user/drivingLicence/33155e33a7c5325929f687f94fd10506.jpg\"],\"drivingLicence2\":[\"/user/drivingLicence/cd1b63b', 0, NULL, '2019-04-24 21:37:02');
INSERT INTO `sys_oper_log` VALUES (409, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 21:56:06');
INSERT INTO `sys_oper_log` VALUES (410, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 21:56:16');
INSERT INTO `sys_oper_log` VALUES (411, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480081\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 21:57:02');
INSERT INTO `sys_oper_log` VALUES (412, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480081\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 21:57:13');
INSERT INTO `sys_oper_log` VALUES (413, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"136084800801\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 21:59:14');
INSERT INTO `sys_oper_log` VALUES (414, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"136084800801\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-24 22:00:13');
INSERT INTO `sys_oper_log` VALUES (415, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"136084800801\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-24 22:02:54');
INSERT INTO `sys_oper_log` VALUES (416, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"136084800801\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1\r\n### The error may involve com.aaa.project.system.user.mapper.UserMapper.updateUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user     SET login_name = ?,               phonenumber = ?,               password = ?,          status = ?,                         update_time = sysdate()     where user_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1\n; Data truncation: Data too long for column \'phonenumber\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1', '2019-04-24 22:15:17');
INSERT INTO `sys_oper_log` VALUES (417, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"loginName\":[\"yang66229181\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480081\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-24 22:15:41');
INSERT INTO `sys_oper_log` VALUES (418, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"你奶奶\"],\"loginName\":[\"yangjunchao\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430030\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 1, 'No such file or directory', '2019-04-25 08:35:06');
INSERT INTO `sys_oper_log` VALUES (419, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"你奶奶\"],\"loginName\":[\"yangjunchao\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430030\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 1, 'No such file or directory', '2019-04-25 08:36:06');
INSERT INTO `sys_oper_log` VALUES (420, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yangjunchao1\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-04-25 08:38:45');
INSERT INTO `sys_oper_log` VALUES (421, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-04-25 08:40:42');
INSERT INTO `sys_oper_log` VALUES (422, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1005\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区南阳路街道河南省建筑科学研究院(丰乐路)泉舜上城(建设中)\"],\"posLng\":[\"113.652714\"],\"posLat\":[\"34.778757\"],\"contacts\":[\"白展堂\"],\"contactsPhone\":[\"8839504\"],\"stat', 0, NULL, '2019-04-25 08:45:32');
INSERT INTO `sys_oper_log` VALUES (423, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2112', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-25 10:20:40');
INSERT INTO `sys_oper_log` VALUES (424, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"用户审核\"],\"url\":[\"/system/checkUser\"],\"perms\":[\"system:checkUser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-25 10:24:48');
INSERT INTO `sys_oper_log` VALUES (425, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"storeId\":[\"1001\"],\"serviceName\":[\"1\"],\"description\":[\"湿洗\"],\"statusId\":[\"402\"],\"cost\":[\"15.0\"],\"defaultServiceId\":[\"2\"]}', 0, NULL, '2019-04-26 09:16:01');
INSERT INTO `sys_oper_log` VALUES (426, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"抢单\"],\"url\":[\"/system/lootorder\"],\"perms\":[\"system:view:lootorder\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:25:10');
INSERT INTO `sys_oper_log` VALUES (427, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2124\"],\"menuType\":[\"F\"],\"menuName\":[\"详情\"],\"url\":[\"\"],\"perms\":[\"system:lootorder:detail\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:26:32');
INSERT INTO `sys_oper_log` VALUES (428, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2124\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"抢单\"],\"url\":[\"/system/lootorder\"],\"perms\":[\"system:store:lootorder\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:27:01');
INSERT INTO `sys_oper_log` VALUES (429, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2124\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"抢单\"],\"url\":[\"/system/lootOrder\"],\"perms\":[\"system:store:lootOrder\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:45:05');
INSERT INTO `sys_oper_log` VALUES (430, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"loginName\":[\"yangjunchao1\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608480080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 09:51:22');
INSERT INTO `sys_oper_log` VALUES (431, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2124\"],\"menuType\":[\"F\"],\"menuName\":[\"order\"],\"url\":[\"\"],\"perms\":[\"system:lootOrder:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:52:52');
INSERT INTO `sys_oper_log` VALUES (432, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2126\"],\"parentId\":[\"2124\"],\"menuType\":[\"F\"],\"menuName\":[\"查询\"],\"url\":[\"#\"],\"perms\":[\"system:lootOrder:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:53:13');
INSERT INTO `sys_oper_log` VALUES (433, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2125\"],\"parentId\":[\"2124\"],\"menuType\":[\"F\"],\"menuName\":[\"详情\"],\"url\":[\"#\"],\"perms\":[\"system:lootorder:detail\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 09:53:23');
INSERT INTO `sys_oper_log` VALUES (434, '用户', 3, 'com.aaa.project.system.userAccount.controller.UserAccountController.remove()', 1, 'admin', '研发部门', '/system/userAccount/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', 0, NULL, '2019-04-26 10:03:37');
INSERT INTO `sys_oper_log` VALUES (435, '用户', 3, 'com.aaa.project.system.userAccount.controller.UserAccountController.remove()', 1, 'admin', '研发部门', '/system/userAccount/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', 0, NULL, '2019-04-26 10:05:38');
INSERT INTO `sys_oper_log` VALUES (436, '用户', 3, 'com.aaa.project.system.userAccount.controller.UserAccountController.remove()', 1, 'admin', '研发部门', '/system/userAccount/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', 0, NULL, '2019-04-26 10:05:40');
INSERT INTO `sys_oper_log` VALUES (437, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 10:06:13');
INSERT INTO `sys_oper_log` VALUES (438, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_log_image', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 10:22:53');
INSERT INTO `sys_oper_log` VALUES (439, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_log_image', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 10:22:56');
INSERT INTO `sys_oper_log` VALUES (440, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_order_log', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 10:23:01');
INSERT INTO `sys_oper_log` VALUES (441, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_order_log', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 10:23:01');
INSERT INTO `sys_oper_log` VALUES (442, '角色管理', 1, 'com.aaa.project.system.role.controller.RoleController.addSave()', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"洗车员\"],\"roleKey\":[\"staff\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"洗车员\"],\"menuIds\":[\"\"]}', 0, NULL, '2019-04-26 10:39:30');
INSERT INTO `sys_oper_log` VALUES (443, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"指派订单\"],\"url\":[\"/system/assignOrder\"],\"perms\":[\"system:order:assign\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 10:42:53');
INSERT INTO `sys_oper_log` VALUES (444, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2137\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"指派订单\"],\"url\":[\"/system/assignOrder\"],\"perms\":[\"system:order:assignOrder\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 10:44:06');
INSERT INTO `sys_oper_log` VALUES (445, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"指派员工\"],\"url\":[\"\"],\"perms\":[\"system:order:assign\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 10:44:45');
INSERT INTO `sys_oper_log` VALUES (446, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2137\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"指派任务\"],\"url\":[\"/system/assignOrder\"],\"perms\":[\"system:order:assignOrder\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:03:21');
INSERT INTO `sys_oper_log` VALUES (447, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"订单查询\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:03:41');
INSERT INTO `sys_oper_log` VALUES (448, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2139\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"订单查询\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:03:50');
INSERT INTO `sys_oper_log` VALUES (449, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2139\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"订单查询\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:04:03');
INSERT INTO `sys_oper_log` VALUES (450, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2138\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"指派员工\"],\"url\":[\"#\"],\"perms\":[\"system:order:assign\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:04:15');
INSERT INTO `sys_oper_log` VALUES (451, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2139\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"订单查询\"],\"url\":[\"#\"],\"perms\":[\"system:order:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:04:37');
INSERT INTO `sys_oper_log` VALUES (452, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2137\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"指派任务\"],\"url\":[\"/system/assignOrder\"],\"perms\":[\"system:assignOrder:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:15:42');
INSERT INTO `sys_oper_log` VALUES (453, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2139\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"订单查询\"],\"url\":[\"#\"],\"perms\":[\"system:assignOrder:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:16:02');
INSERT INTO `sys_oper_log` VALUES (454, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2138\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"指派员工\"],\"url\":[\"#\"],\"perms\":[\"system:assignOrder:assign\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 11:16:23');
INSERT INTO `sys_oper_log` VALUES (455, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"展示订单\"],\"url\":[\"\"],\"perms\":[\"system:assignOrder:export\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"1\"]}', 0, NULL, '2019-04-26 11:17:07');
INSERT INTO `sys_oper_log` VALUES (456, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2140', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 11:17:55');
INSERT INTO `sys_oper_log` VALUES (457, '角色管理', 2, 'com.aaa.project.system.role.controller.RoleController.editSave()', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"店长\"],\"roleKey\":[\"manager\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"管理门店\"],\"menuIds\":[\"2010,2005,2006,2008,2000,2001,2002,2003,2004,2137,2139,2138\"]}', 0, NULL, '2019-04-26 14:44:53');
INSERT INTO `sys_oper_log` VALUES (458, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2123\"],\"menuType\":[\"F\"],\"menuName\":[\"同意\"],\"url\":[\"\"],\"perms\":[\"system:checkUser:acceptUser\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 14:45:30');
INSERT INTO `sys_oper_log` VALUES (459, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2123\"],\"menuType\":[\"F\"],\"menuName\":[\"拒绝\"],\"url\":[\"\"],\"perms\":[\"system:checkUser:refuseUser\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 14:45:59');
INSERT INTO `sys_oper_log` VALUES (460, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"storeId\":[\"1002\"],\"serviceName\":[\"1\"],\"description\":[\"水冲冲\"],\"statusId\":[\"402\"],\"cost\":[\"10.0\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-04-26 14:47:39');
INSERT INTO `sys_oper_log` VALUES (461, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"storeId\":[\"1002\"],\"serviceName\":[\"1\"],\"description\":[\"水冲冲\"],\"statusId\":[\"402\"],\"cost\":[\"10.0\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-04-26 14:47:54');
INSERT INTO `sys_oper_log` VALUES (462, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2123\"],\"menuType\":[\"F\"],\"menuName\":[\"未审核用户\"],\"url\":[\"\"],\"perms\":[\"system:checkUser:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 14:50:10');
INSERT INTO `sys_oper_log` VALUES (463, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"洗车员一号\"],\"loginName\":[\"xicheyuan\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430215\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:11:55');
INSERT INTO `sys_oper_log` VALUES (464, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"洗车员2号\"],\"loginName\":[\"xicheyuan2\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608465215\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:12:34');
INSERT INTO `sys_oper_log` VALUES (465, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:24:25');
INSERT INTO `sys_oper_log` VALUES (466, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:26:02');
INSERT INTO `sys_oper_log` VALUES (467, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:29:52');
INSERT INTO `sys_oper_log` VALUES (468, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"loginName\":[\"xicheyuan\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430215\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:30:13');
INSERT INTO `sys_oper_log` VALUES (469, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:38:55');
INSERT INTO `sys_oper_log` VALUES (470, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:39:00');
INSERT INTO `sys_oper_log` VALUES (471, '用户', 2, 'com.aaa.project.system.userAccount.controller.UserAccountController.editSave()', 1, 'admin', '研发部门', '/system/userAccount/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"loginName\":[\"yang6622918\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430080\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:43:49');
INSERT INTO `sys_oper_log` VALUES (472, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军超1\"],\"loginName\":[\"123456789\"],\"password\":[\"123456789\"],\"phonenumber\":[\"13639741215\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-04-26 15:48:58');
INSERT INTO `sys_oper_log` VALUES (473, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'admin', '研发部门', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1002\"],\"serviceName\":[\"2\"],\"description\":[\"湿洗\"],\"statusId\":[\"400\"],\"cost\":[\"20\"],\"defaultServiceId\":[\"2\"]}', 0, NULL, '2019-04-26 16:02:17');
INSERT INTO `sys_oper_log` VALUES (474, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"storeId\":[\"1002\"],\"serviceName\":[\"2\"],\"description\":[\"湿洗湿洗\"],\"statusId\":[\"400\"],\"cost\":[\"10.0\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-04-26 16:11:59');
INSERT INTO `sys_oper_log` VALUES (475, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2138\"],\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"指派员工\"],\"url\":[\"#\"],\"perms\":[\"system:assignOrder:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 16:22:56');
INSERT INTO `sys_oper_log` VALUES (476, '用户管理', 1, 'com.aaa.project.system.user.controller.UserController.addSave()', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"loginName\":[\"zww\"],\"userName\":[\"zww\"],\"password\":[\"admin123\"],\"email\":[\"749834002@qq.com\"],\"phonenumber\":[\"15515746513\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"postIds\":[\"2\"]}', 0, NULL, '2019-04-26 16:57:10');
INSERT INTO `sys_oper_log` VALUES (477, '用户管理', 2, 'com.aaa.project.system.user.controller.UserController.editSave()', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"118\"],\"deptId\":[\"103\"],\"userName\":[\"zww\"],\"email\":[\"749834002@qq.com\"],\"phonenumber\":[\"15515746513\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1,101\"],\"postIds\":[\"2\"]}', 0, NULL, '2019-04-26 16:58:22');
INSERT INTO `sys_oper_log` VALUES (478, '用户管理', 2, 'com.aaa.project.system.user.controller.UserController.editSave()', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"118\"],\"deptId\":[\"103\"],\"userName\":[\"zww\"],\"email\":[\"749834002@qq.com\"],\"phonenumber\":[\"15515746513\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', 0, NULL, '2019-04-26 16:59:17');
INSERT INTO `sys_oper_log` VALUES (479, '用户管理', 3, 'com.aaa.project.system.user.controller.UserController.remove()', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"118\"]}', 0, NULL, '2019-04-26 17:00:39');
INSERT INTO `sys_oper_log` VALUES (480, '角色管理', 2, 'com.aaa.project.system.role.controller.RoleController.ruleSave()', 1, 'admin', '研发部门', '/system/role/rule', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"洗车员\"],\"roleKey\":[\"staff\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', 0, NULL, '2019-04-26 17:04:35');
INSERT INTO `sys_oper_log` VALUES (481, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_user_location', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 18:56:22');
INSERT INTO `sys_oper_log` VALUES (482, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_user_location', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-04-26 18:56:25');
INSERT INTO `sys_oper_log` VALUES (483, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2137\"],\"menuType\":[\"F\"],\"menuName\":[\"保存修改\"],\"url\":[\"\"],\"perms\":[\"system:assignOrder:save\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-26 23:31:52');
INSERT INTO `sys_oper_log` VALUES (484, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'admin', '研发部门', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"storeId\":[\"1001\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"15888888889\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"牛顿国际\"],\"posLng\":[\"113.663642\"],\"posLat\":[\"34.781917\"],\"contacts\":[\"白展堂\"],\"contactsPhone\":[\"8839504\"],\"statusId\":[\"1', 0, NULL, '2019-04-27 01:21:38');
INSERT INTO `sys_oper_log` VALUES (485, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"20\"]}', 0, NULL, '2019-04-27 01:27:46');
INSERT INTO `sys_oper_log` VALUES (486, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"13\"]}', 0, NULL, '2019-04-27 01:27:54');
INSERT INTO `sys_oper_log` VALUES (487, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"114\"],\"id\":[\"13\"]}', 0, NULL, '2019-04-27 01:30:00');
INSERT INTO `sys_oper_log` VALUES (488, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"114\"],\"id\":[\"20\"]}', 0, NULL, '2019-04-27 01:38:42');
INSERT INTO `sys_oper_log` VALUES (489, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2037\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"业务\"],\"url\":[\"/system/storeService\"],\"perms\":[\"system:storeService:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:13:02');
INSERT INTO `sys_oper_log` VALUES (490, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2062\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"评价\"],\"url\":[\"/system/evaluate\"],\"perms\":[\"system:evaluate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:13:13');
INSERT INTO `sys_oper_log` VALUES (491, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"订单管理\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-clone\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:14:15');
INSERT INTO `sys_oper_log` VALUES (492, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2042\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"订单\"],\"url\":[\"/system/order\"],\"perms\":[\"system:order:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:14:27');
INSERT INTO `sys_oper_log` VALUES (493, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2132\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"订单日志\"],\"url\":[\"/system/orderLog\"],\"perms\":[\"system:orderLog:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:14:38');
INSERT INTO `sys_oper_log` VALUES (494, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2127\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"日志图片\"],\"url\":[\"/system/logImage\"],\"perms\":[\"system:logImage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:14:47');
INSERT INTO `sys_oper_log` VALUES (495, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"订单金额\"],\"url\":[\"/system/orderAmount\"],\"perms\":[\"system:orderAmount:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:14:54');
INSERT INTO `sys_oper_log` VALUES (496, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2123\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"用户审核\"],\"url\":[\"/system/checkUser\"],\"perms\":[\"system:checkUser:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:15:14');
INSERT INTO `sys_oper_log` VALUES (497, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2097\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"门店用户管理\"],\"url\":[\"/system/userAccount\"],\"perms\":[\"system:userAccount:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:15:24');
INSERT INTO `sys_oper_log` VALUES (498, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2047\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"默认业务\"],\"url\":[\"/system/defaultService\"],\"perms\":[\"system:defaultService:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:15:52');
INSERT INTO `sys_oper_log` VALUES (499, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"状态管理\"],\"url\":[\"/system/status\"],\"perms\":[\"system:status:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-04-27 10:16:07');
INSERT INTO `sys_oper_log` VALUES (500, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"22\"]}', 0, NULL, '2019-04-27 10:19:48');
INSERT INTO `sys_oper_log` VALUES (501, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"23\"]}', 0, NULL, '2019-04-27 11:18:50');
INSERT INTO `sys_oper_log` VALUES (502, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'admin', '研发部门', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1003\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"400\"],\"cost\":[\"20\"],\"defaultServiceId\":[\"\"]}', 0, NULL, '2019-05-05 20:04:39');
INSERT INTO `sys_oper_log` VALUES (503, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"storeId\":[\"1003\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"400\"],\"cost\":[\"20.0\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-05-05 20:04:48');
INSERT INTO `sys_oper_log` VALUES (504, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'admin', '研发部门', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1004\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"400\"],\"cost\":[\"15\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-05-05 20:05:00');
INSERT INTO `sys_oper_log` VALUES (505, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'admin', '研发部门', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1005\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"400\"],\"cost\":[\"10\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-05-05 20:05:08');
INSERT INTO `sys_oper_log` VALUES (506, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"9\"],\"storeId\":[\"1005\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"400\"],\"cost\":[\"10.0\"],\"defaultServiceId\":[\"1\"]}', 0, NULL, '2019-05-05 20:06:44');
INSERT INTO `sys_oper_log` VALUES (507, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"storeId\":[\"1003\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"409\"],\"cost\":[\"20.0\"]}', 0, NULL, '2019-05-05 20:22:26');
INSERT INTO `sys_oper_log` VALUES (508, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'admin', '研发部门', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1002\"],\"serviceName\":[\"4\"],\"description\":[\"真皮座椅清洁、去污、上光护理\"],\"statusId\":[\"401\"],\"cost\":[\"10.0\"]}', 0, NULL, '2019-05-05 20:23:01');
INSERT INTO `sys_oper_log` VALUES (509, '业务', 2, 'com.aaa.project.system.storeService.controller.StoreServiceController.editSave()', 1, 'admin', '研发部门', '/system/storeService/edit', '127.0.0.1', '内网IP', '{\"id\":[\"7\"],\"storeId\":[\"1003\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青、污渍\"],\"statusId\":[\"409\"],\"cost\":[\"20.0\"]}', 0, NULL, '2019-05-05 20:25:51');
INSERT INTO `sys_oper_log` VALUES (510, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"28\"]}', 0, NULL, '2019-05-05 21:49:01');
INSERT INTO `sys_oper_log` VALUES (511, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_user_location', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-06 08:22:49');
INSERT INTO `sys_oper_log` VALUES (512, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"600\"],\"statusName\":[\"空闲\"]}', 0, NULL, '2019-05-06 10:30:44');
INSERT INTO `sys_oper_log` VALUES (513, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"601\"],\"statusName\":[\"占用\"]}', 0, NULL, '2019-05-06 10:30:51');
INSERT INTO `sys_oper_log` VALUES (514, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号郑州大学北校区\"],\"posLng\":[\"113.66648\"],\"posLat\":[\"34.781932\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduc', 1, '找不到网络路径。', '2019-05-06 10:42:59');
INSERT INTO `sys_oper_log` VALUES (515, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号郑州大学北校区\"],\"posLng\":[\"113.66648\"],\"posLat\":[\"34.781932\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduc', 1, '找不到网络路径。', '2019-05-06 10:42:59');
INSERT INTO `sys_oper_log` VALUES (516, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号郑州大学北校区\"],\"posLng\":[\"113.66648\"],\"posLat\":[\"34.781932\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduc', 1, '找不到网络路径。', '2019-05-06 10:43:08');
INSERT INTO `sys_oper_log` VALUES (517, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区经八路街道红旗路32号院河南省豫剧三团生活区\"],\"posLng\":[\"113.664828\"],\"posLat\":[\"34.777685\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId', 1, '找不到网络路径。', '2019-05-06 10:46:10');
INSERT INTO `sys_oper_log` VALUES (518, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1200\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区文化路街道丰产路郑州大学北校区\"],\"posLng\":[\"113.660739\"],\"posLat\":[\"34.783626\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100', 1, '找不到网络路径。', '2019-05-06 10:46:49');
INSERT INTO `sys_oper_log` VALUES (519, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路97号郑州大学北校区\"],\"posLng\":[\"113.66648\"],\"posLat\":[\"34.781932\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduc', 0, NULL, '2019-05-06 11:00:08');
INSERT INTO `sys_oper_log` VALUES (520, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1009\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区文化路街道东关虎屯(嘉辰时代广场西南)\"],\"posLng\":[\"113.686091\"],\"posLat\":[\"34.785356\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[', 0, NULL, '2019-05-06 11:03:01');
INSERT INTO `sys_oper_log` VALUES (521, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_container_box', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-06 14:26:57');
INSERT INTO `sys_oper_log` VALUES (522, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"30\"]}', 0, NULL, '2019-05-06 14:59:50');
INSERT INTO `sys_oper_log` VALUES (523, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/cw_key_info', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-06 15:26:00');
INSERT INTO `sys_oper_log` VALUES (524, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"31\"]}', 0, NULL, '2019-05-06 15:49:49');
INSERT INTO `sys_oper_log` VALUES (525, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"211\"],\"statusName\":[\"已取车\"]}', 0, NULL, '2019-05-06 21:54:23');
INSERT INTO `sys_oper_log` VALUES (526, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"212\"],\"statusName\":[\"已洗车\"]}', 0, NULL, '2019-05-06 21:54:33');
INSERT INTO `sys_oper_log` VALUES (527, '状态', 1, 'com.aaa.project.system.status.controller.StatusController.addSave()', 1, 'admin', '研发部门', '/system/status/add', '127.0.0.1', '内网IP', '{\"id\":[\"222\"],\"statusName\":[\"已还车\"]}', 0, NULL, '2019-05-06 21:54:41');
INSERT INTO `sys_oper_log` VALUES (528, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"29\"]}', 0, NULL, '2019-05-06 21:56:29');
INSERT INTO `sys_oper_log` VALUES (529, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'admin', '研发部门', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"36\"]}', 0, NULL, '2019-05-07 11:44:02');
INSERT INTO `sys_oper_log` VALUES (530, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"张智敏\"],\"loginName\":[\"15225432912\"],\"password\":[\"123456\"],\"phonenumber\":[\"15225432912\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1002\"]}', 0, NULL, '2019-05-07 16:07:49');
INSERT INTO `sys_oper_log` VALUES (531, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"杨军\"],\"loginName\":[\"13608430082\"],\"password\":[\"123456\"],\"phonenumber\":[\"13608430082\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-05-07 16:30:21');
INSERT INTO `sys_oper_log` VALUES (532, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'admin', '研发部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"渣渣威\"],\"loginName\":[\"13564895548\"],\"password\":[\"123456\"],\"phonenumber\":[\"13564895548\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-05-07 16:36:18');
INSERT INTO `sys_oper_log` VALUES (533, '用户管理', 1, 'com.aaa.project.system.user.controller.UserController.addSave()', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"loginName\":[\"dianzhang1\"],\"userName\":[\"店长1\"],\"password\":[\"123456\"],\"email\":[\"dianzhang@163.com\"],\"phonenumber\":[\"13255668899\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-05-07 17:18:25');
INSERT INTO `sys_oper_log` VALUES (534, '角色管理', 2, 'com.aaa.project.system.role.controller.RoleController.editSave()', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"商家\"],\"roleKey\":[\"merchant\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"门店的所有者\"],\"menuIds\":[\"2010,2005,2006,2007,2008,2009,2037,2038,2039,2040,2041,2062,2063,2064,2065,2066,2097,2098,2099,2100,2101,2000,2001,2002,2003,2004,21', 0, NULL, '2019-05-07 17:23:57');
INSERT INTO `sys_oper_log` VALUES (535, '角色管理', 2, 'com.aaa.project.system.role.controller.RoleController.editSave()', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"101\"],\"roleName\":[\"店长\"],\"roleKey\":[\"manager\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"管理门店\"],\"menuIds\":[\"2010,2005,2008,2037,2038,2039,2040,2041,2062,2063,2064,2065,2066,2097,2098,2099,2100,2101,2000,2001,2002,2003,2004,2124,2126,2125,2137,', 0, NULL, '2019-05-07 17:24:49');
INSERT INTO `sys_oper_log` VALUES (536, '用户管理', 1, 'com.aaa.project.system.user.controller.UserController.addSave()', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"109\"],\"loginName\":[\"shangjia1\"],\"userName\":[\"商家1\"],\"password\":[\"123456\"],\"email\":[\"dadada@qq.com\"],\"phonenumber\":[\"13255668899\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"4\"]}', 0, NULL, '2019-05-07 17:27:06');
INSERT INTO `sys_oper_log` VALUES (537, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'shangjia1', '财务部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1010\"],\"storeName\":[\"胡秋洗\"],\"ownerAccount\":[\"shangjia1\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区如意湖街道郑州儿童医院东区门诊河南省儿童医院东区\"],\"posLng\":[\"113.754539\"],\"posLat\":[\"34.777934\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15644664466\"],\"st', 0, NULL, '2019-05-07 17:31:12');
INSERT INTO `sys_oper_log` VALUES (538, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"20\"]}', 0, NULL, '2019-05-07 17:32:47');
INSERT INTO `sys_oper_log` VALUES (539, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '财务部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"白展堂\"],\"loginName\":[\"18899999999\"],\"password\":[\"admin123\"],\"phonenumber\":[\"18899999999\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1010\"]}', 1, '找不到网络路径。', '2019-05-07 17:38:03');
INSERT INTO `sys_oper_log` VALUES (540, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '财务部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"白展堂\"],\"loginName\":[\"18899999999\"],\"password\":[\"admin123\"],\"phonenumber\":[\"18899999999\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1010\"]}', 1, '找不到网络路径。', '2019-05-07 17:38:04');
INSERT INTO `sys_oper_log` VALUES (541, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '财务部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"佟湘玉\"],\"loginName\":[\"18899999998\"],\"password\":[\"admin123\"],\"phonenumber\":[\"18899999998\"],\"sex\":[\"1\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1010\"]}', 1, '找不到网络路径。', '2019-05-07 17:39:08');
INSERT INTO `sys_oper_log` VALUES (542, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'shangjia1', '财务部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1008\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路街道文化路97号\"],\"posLng\":[\"113.662544\"],\"posLat\":[\"34.781796\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introduct', 0, NULL, '2019-05-07 19:40:33');
INSERT INTO `sys_oper_log` VALUES (543, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"135349\"],\"storeName\":[\"渣渣洗车店\"],\"ownerAccount\":[\"查文威\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路街道文化路97号\"],\"posLng\":[\"113.662544\"],\"posLat\":[\"34.781796\"],\"contacts\":[\"查文威\"],\"contactsPhone\":[\"15515746513\"],\"statusId\":[\"100\"],\"introdu', 1, '找不到网络路径。', '2019-05-07 21:20:26');
INSERT INTO `sys_oper_log` VALUES (544, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '财务部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"店长1\"],\"loginName\":[\"dianzhang1\"],\"password\":[\"123456\"],\"phonenumber\":[\"15633221144\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"drivingLicence1\":[\"undefined\"],\"drivingLicence2\":[\"undefined\"],\"storeId\":[\"1001\"]}', 1, '', '2019-05-07 21:25:15');
INSERT INTO `sys_oper_log` VALUES (545, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '财务部门', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"店长1\"],\"loginName\":[\"dianzhang1\"],\"password\":[\"123456\"],\"phonenumber\":[\"15644887755\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"101\"],\"drivingLicence1\":[\"undefined\"],\"drivingLicence2\":[\"undefined\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-05-07 21:27:36');
INSERT INTO `sys_oper_log` VALUES (546, '部门管理', 1, 'com.aaa.project.system.dept.controller.DeptController.addSave()', 1, 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"洗车商家\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"13255447788\"],\"email\":[\"13255447788@qq.com\"],\"status\":[\"0\"]}', 0, NULL, '2019-05-07 21:32:47');
INSERT INTO `sys_oper_log` VALUES (547, '业务', 3, 'com.aaa.project.system.storeService.controller.StoreServiceController.remove()', 1, 'dianzhang1', '洗车商家', '/system/storeService/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', 0, NULL, '2019-05-07 22:36:42');
INSERT INTO `sys_oper_log` VALUES (548, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'dianzhang1', '洗车商家', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1001\"],\"serviceName\":[\"2\"],\"description\":[\"湿洗地毯\"],\"statusId\":[\"400\"],\"cost\":[\"20\"]}', 0, NULL, '2019-05-07 22:36:56');
INSERT INTO `sys_oper_log` VALUES (549, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2037\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"业务管理\"],\"url\":[\"/system/storeService\"],\"perms\":[\"system:storeService:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:31:15');
INSERT INTO `sys_oper_log` VALUES (550, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2062\"],\"parentId\":[\"2010\"],\"menuType\":[\"C\"],\"menuName\":[\"用户评价\"],\"url\":[\"/system/evaluate\"],\"perms\":[\"system:evaluate:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:31:31');
INSERT INTO `sys_oper_log` VALUES (551, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2087\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"预算管理\"],\"url\":[\"/system/expectCost\"],\"perms\":[\"system:expectCost:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:31:42');
INSERT INTO `sys_oper_log` VALUES (552, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2082\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"模式管理\"],\"url\":[\"/system/model\"],\"perms\":[\"system:model:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:31:49');
INSERT INTO `sys_oper_log` VALUES (553, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2067\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"钥匙信息管理\"],\"url\":[\"/system/keyInfo\"],\"perms\":[\"system:keyInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:32:01');
INSERT INTO `sys_oper_log` VALUES (554, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2052\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"车辆管理\"],\"url\":[\"/system/carInfo\"],\"perms\":[\"system:carInfo:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:32:08');
INSERT INTO `sys_oper_log` VALUES (555, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2042\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"订单列表\"],\"url\":[\"/system/order\"],\"perms\":[\"system:order:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:32:31');
INSERT INTO `sys_oper_log` VALUES (556, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:32:50');
INSERT INTO `sys_oper_log` VALUES (557, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:33:21');
INSERT INTO `sys_oper_log` VALUES (558, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '洗车商家', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"吕秀才\"],\"loginName\":[\"15688774965\"],\"password\":[\"123456\"],\"phonenumber\":[\"15688774965\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1010\"]}', 0, NULL, '2019-05-08 09:35:28');
INSERT INTO `sys_oper_log` VALUES (559, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2124\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"抢单\"],\"url\":[\"/system/lootOrder\"],\"perms\":[\"system:store:lootOrder\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:38:24');
INSERT INTO `sys_oper_log` VALUES (560, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2124\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"抢单\"],\"url\":[\"/system/lootOrder\"],\"perms\":[\"system:store:lootOrder\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:38:51');
INSERT INTO `sys_oper_log` VALUES (561, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2137\"],\"parentId\":[\"2150\"],\"menuType\":[\"C\"],\"menuName\":[\"指派任务\"],\"url\":[\"/system/assignOrder\"],\"perms\":[\"system:assignOrder:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-08 09:39:00');
INSERT INTO `sys_oper_log` VALUES (562, '默认业务', 1, 'com.aaa.project.system.defaultService.controller.DefaultServiceController.addSave()', 1, 'admin', '研发部门', '/system/defaultService/add', '127.0.0.1', '内网IP', '{\"serviceName\":[\"内饰清洗\"],\"description\":[\"座椅、中控、地毯清洗\"]}', 0, NULL, '2019-05-08 09:45:56');
INSERT INTO `sys_oper_log` VALUES (563, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'dianzhang1', '洗车商家', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"1001\"],\"serviceName\":[\"5\"],\"description\":[\"座椅、中控、地毯清洗\"],\"statusId\":[\"400\"],\"cost\":[\"15\"]}', 0, NULL, '2019-05-08 09:46:18');
INSERT INTO `sys_oper_log` VALUES (564, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'dianzhang1', '洗车商家', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"46\"]}', 0, NULL, '2019-05-08 09:47:57');
INSERT INTO `sys_oper_log` VALUES (565, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'dianzhang1', '洗车商家', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"47\"]}', 0, NULL, '2019-05-08 09:57:02');
INSERT INTO `sys_oper_log` VALUES (566, '订单', 2, 'com.aaa.project.system.assignOrder.controller.AssignOrderController.editSave()', 1, 'dianzhang1', '洗车商家', '/system/assignOrder/save', '127.0.0.1', '内网IP', '{\"userId\":[\"116\"],\"id\":[\"50\"]}', 0, NULL, '2019-05-08 14:16:16');
INSERT INTO `sys_oper_log` VALUES (567, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'shangjia1', '洗车商家', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"865802\"],\"storeName\":[\"AAA洗车店\"],\"ownerAccount\":[\"shangjia1\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"河南省郑州市金水区杜岭街道张砦南街1号院\"],\"posLng\":[\"113.669011\"],\"posLat\":[\"34.759178\"],\"contacts\":[\"商家1\"],\"contactsPhone\":[\"13255668899\"],\"statusId\":', 0, NULL, '2019-05-08 14:27:09');
INSERT INTO `sys_oper_log` VALUES (568, '门店', 2, 'com.aaa.project.system.store.controller.StoreController.editSave()', 1, 'shangjia1', '洗车商家', '/system/store/edit', '127.0.0.1', '内网IP', '{\"id\":[\"22\"],\"storeId\":[\"865802\"],\"storeName\":[\"AAA洗车店2\"],\"ownerAccount\":[\"shangjia1\"],\"provinceid\":[\"410000\"],\"cityid\":[\"410100\"],\"street\":[\"河南省郑州市金水区杜岭街道张砦南街1号院\"],\"posLng\":[\"113.669011\"],\"posLat\":[\"34.759178\"],\"contacts\":[\"商家1\"],\"contactsPhone\":[\"132556', 0, NULL, '2019-05-08 14:29:00');
INSERT INTO `sys_oper_log` VALUES (569, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'shangjia1', '洗车商家', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"22\"]}', 0, NULL, '2019-05-08 14:29:07');
INSERT INTO `sys_oper_log` VALUES (570, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'shangjia1', '洗车商家', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"509334\"],\"storeName\":[\"AAA洗车店2\"],\"ownerAccount\":[\"shangjia1\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"182路\"],\"posLng\":[\"113.47982\"],\"posLat\":[\"34.807564\"],\"contacts\":[\"商家1\"],\"contactsPhone\":[\"8839504\"],\"statusId\":[\"100\"],\"introductio', 0, NULL, '2019-05-08 14:30:03');
INSERT INTO `sys_oper_log` VALUES (571, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', 0, NULL, '2019-05-08 14:30:46');
INSERT INTO `sys_oper_log` VALUES (572, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.refuse()', 1, 'admin', '研发部门', '/system/reviewedStore/refuse', '127.0.0.1', '内网IP', '{\"ids\":[\"21\"]}', 0, NULL, '2019-05-08 14:31:05');
INSERT INTO `sys_oper_log` VALUES (573, '业务', 1, 'com.aaa.project.system.storeService.controller.StoreServiceController.addSave()', 1, 'shangjia1', '洗车商家', '/system/storeService/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"509334\"],\"serviceName\":[\"1\"],\"description\":[\"清洗淤泥，除沥青\"],\"statusId\":[\"400\"],\"cost\":[\"15\"]}', 0, NULL, '2019-05-08 14:34:00');
INSERT INTO `sys_oper_log` VALUES (574, '用户', 1, 'com.aaa.project.system.userAccount.controller.UserAccountController.addSave()', 1, 'shangjia1', '洗车商家', '/system/userAccount/add', '127.0.0.1', '内网IP', '{\"userName\":[\"洗车员\"],\"loginName\":[\"15677889911\"],\"password\":[\"123456\"],\"phonenumber\":[\"15677889911\"],\"sex\":[\"0\"],\"status\":[\"0\"],\"roleIds\":[\"102\"],\"storeId\":[\"1001\"]}', 0, NULL, '2019-05-08 14:36:17');
INSERT INTO `sys_oper_log` VALUES (575, '代码生成', 8, 'com.aaa.project.tool.gen.controller.GenController.genCode()', 1, 'admin', '研发部门', '/tool/gen/genCode/provinces', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:22:44');
INSERT INTO `sys_oper_log` VALUES (576, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2156', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:39:57');
INSERT INTO `sys_oper_log` VALUES (577, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2160', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:40:11');
INSERT INTO `sys_oper_log` VALUES (578, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2157', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:40:21');
INSERT INTO `sys_oper_log` VALUES (579, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2158', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:40:31');
INSERT INTO `sys_oper_log` VALUES (580, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2159', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:40:41');
INSERT INTO `sys_oper_log` VALUES (581, '菜单管理', 3, 'com.aaa.project.system.menu.controller.MenuController.remove()', 1, 'admin', '研发部门', '/system/menu/remove/2156', '127.0.0.1', '内网IP', '{}', 0, NULL, '2019-05-09 14:40:49');
INSERT INTO `sys_oper_log` VALUES (582, '菜单管理', 1, 'com.aaa.project.system.menu.controller.MenuController.addSave()', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2119\"],\"menuType\":[\"F\"],\"menuName\":[\"查看详情\"],\"url\":[\"\"],\"perms\":[\"system:store:showStoreInfo\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-09 16:57:55');
INSERT INTO `sys_oper_log` VALUES (583, '菜单管理', 2, 'com.aaa.project.system.menu.controller.MenuController.editSave()', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2166\"],\"parentId\":[\"2119\"],\"menuType\":[\"F\"],\"menuName\":[\"查看详情\"],\"url\":[\"#\"],\"perms\":[\"system:store:showstoreinfo\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', 0, NULL, '2019-05-09 16:58:24');
INSERT INTO `sys_oper_log` VALUES (584, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"806225\"],\"storeName\":[\"测试门店\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"民主路10号万象城L7层L703\"],\"posLng\":[\"113.662927\"],\"posLat\":[\"34.754692\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"in', 1, '找不到网络路径。', '2019-05-09 17:31:21');
INSERT INTO `sys_oper_log` VALUES (585, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"29042\"],\"storeName\":[\"测试门店\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文化路街道文化路97号\"],\"posLng\":[\"113.662544\"],\"posLat\":[\"34.781796\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"introduc', 0, NULL, '2019-05-09 17:34:40');
INSERT INTO `sys_oper_log` VALUES (586, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.agree()', 1, 'admin', '研发部门', '/system/reviewedStore/agree', '127.0.0.1', '内网IP', '{\"ids\":[\"24\"]}', 0, NULL, '2019-05-09 18:53:25');
INSERT INTO `sys_oper_log` VALUES (587, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"77894\"],\"storeName\":[\"测试2\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"文博西路25号\"],\"posLng\":[\"113.671613\"],\"posLat\":[\"34.794738\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"introduction\"', 0, NULL, '2019-05-09 18:57:51');
INSERT INTO `sys_oper_log` VALUES (588, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.refuse()', 1, 'admin', '研发部门', '/system/reviewedStore/refuse', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', 0, NULL, '2019-05-09 18:58:19');
INSERT INTO `sys_oper_log` VALUES (589, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.refuse()', 1, 'admin', '研发部门', '/system/reviewedStore/refuse', '127.0.0.1', '内网IP', '{\"ids\":[\"25\"]}', 0, NULL, '2019-05-09 18:58:30');
INSERT INTO `sys_oper_log` VALUES (590, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"328355\"],\"storeName\":[\"测试3\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"民主路10号万象城L7层L703\"],\"posLng\":[\"113.662927\"],\"posLat\":[\"34.754692\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"int', 0, NULL, '2019-05-09 19:01:17');
INSERT INTO `sys_oper_log` VALUES (591, '门店', 3, 'com.aaa.project.system.storeReviewed.controller.storeReviewController.refuse()', 1, 'admin', '研发部门', '/system/reviewedStore/refuse', '127.0.0.1', '内网IP', '{\"ids\":[\"26\"]}', 0, NULL, '2019-05-09 19:01:28');
INSERT INTO `sys_oper_log` VALUES (592, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"822640\"],\"storeName\":[\"测试3\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"民主路10号万象城L7层L703\"],\"posLng\":[\"113.662927\"],\"posLat\":[\"34.754692\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"int', 0, NULL, '2019-05-09 19:06:49');
INSERT INTO `sys_oper_log` VALUES (593, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"24,25,26,27\"]}', 0, NULL, '2019-05-09 19:23:22');
INSERT INTO `sys_oper_log` VALUES (594, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"753726\"],\"storeName\":[\"测试1\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"民主路10号万象城L7层L703\"],\"posLng\":[\"113.662927\"],\"posLat\":[\"34.754692\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"int', 0, NULL, '2019-05-09 19:33:18');
INSERT INTO `sys_oper_log` VALUES (595, '门店', 3, 'com.aaa.project.system.store.controller.StoreController.remove()', 1, 'admin', '研发部门', '/system/store/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"28\"]}', 0, NULL, '2019-05-09 19:37:10');
INSERT INTO `sys_oper_log` VALUES (596, '门店', 1, 'com.aaa.project.system.store.controller.StoreController.addSave()', 1, 'admin', '研发部门', '/system/store/add', '127.0.0.1', '内网IP', '{\"storeId\":[\"22945\"],\"storeName\":[\"测试1\"],\"ownerAccount\":[\"admin\"],\"provinceid\":[\"河南省\"],\"cityid\":[\"郑州市\"],\"street\":[\"民主路10号万象城L7层L703\"],\"posLng\":[\"113.662927\"],\"posLat\":[\"34.754692\"],\"contacts\":[\"若依\"],\"contactsPhone\":[\"15888888888\"],\"statusId\":[\"100\"],\"intr', 0, NULL, '2019-05-09 19:37:24');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');
INSERT INTO `sys_role` VALUES (100, '商家', 'merchant', 3, '1', '0', '0', 'admin', '2019-04-18 13:39:43', 'admin', '2019-05-07 17:23:57', '门店的所有者');
INSERT INTO `sys_role` VALUES (101, '店长', 'manager', 4, '1', '0', '0', 'admin', '2019-04-18 13:40:57', 'admin', '2019-05-07 17:24:49', '管理门店');
INSERT INTO `sys_role` VALUES (102, '洗车员', 'staff', 5, '1', '0', '0', 'admin', '2019-04-26 10:39:30', 'admin', '2019-04-26 17:04:35', '洗车员');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2038);
INSERT INTO `sys_role_menu` VALUES (100, 2039);
INSERT INTO `sys_role_menu` VALUES (100, 2040);
INSERT INTO `sys_role_menu` VALUES (100, 2041);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2045);
INSERT INTO `sys_role_menu` VALUES (100, 2046);
INSERT INTO `sys_role_menu` VALUES (100, 2062);
INSERT INTO `sys_role_menu` VALUES (100, 2063);
INSERT INTO `sys_role_menu` VALUES (100, 2064);
INSERT INTO `sys_role_menu` VALUES (100, 2065);
INSERT INTO `sys_role_menu` VALUES (100, 2066);
INSERT INTO `sys_role_menu` VALUES (100, 2092);
INSERT INTO `sys_role_menu` VALUES (100, 2093);
INSERT INTO `sys_role_menu` VALUES (100, 2094);
INSERT INTO `sys_role_menu` VALUES (100, 2095);
INSERT INTO `sys_role_menu` VALUES (100, 2096);
INSERT INTO `sys_role_menu` VALUES (100, 2097);
INSERT INTO `sys_role_menu` VALUES (100, 2098);
INSERT INTO `sys_role_menu` VALUES (100, 2099);
INSERT INTO `sys_role_menu` VALUES (100, 2100);
INSERT INTO `sys_role_menu` VALUES (100, 2101);
INSERT INTO `sys_role_menu` VALUES (100, 2127);
INSERT INTO `sys_role_menu` VALUES (100, 2128);
INSERT INTO `sys_role_menu` VALUES (100, 2129);
INSERT INTO `sys_role_menu` VALUES (100, 2130);
INSERT INTO `sys_role_menu` VALUES (100, 2131);
INSERT INTO `sys_role_menu` VALUES (100, 2132);
INSERT INTO `sys_role_menu` VALUES (100, 2133);
INSERT INTO `sys_role_menu` VALUES (100, 2134);
INSERT INTO `sys_role_menu` VALUES (100, 2135);
INSERT INTO `sys_role_menu` VALUES (100, 2136);
INSERT INTO `sys_role_menu` VALUES (100, 2150);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2003);
INSERT INTO `sys_role_menu` VALUES (101, 2004);
INSERT INTO `sys_role_menu` VALUES (101, 2005);
INSERT INTO `sys_role_menu` VALUES (101, 2008);
INSERT INTO `sys_role_menu` VALUES (101, 2010);
INSERT INTO `sys_role_menu` VALUES (101, 2037);
INSERT INTO `sys_role_menu` VALUES (101, 2038);
INSERT INTO `sys_role_menu` VALUES (101, 2039);
INSERT INTO `sys_role_menu` VALUES (101, 2040);
INSERT INTO `sys_role_menu` VALUES (101, 2041);
INSERT INTO `sys_role_menu` VALUES (101, 2042);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2045);
INSERT INTO `sys_role_menu` VALUES (101, 2046);
INSERT INTO `sys_role_menu` VALUES (101, 2062);
INSERT INTO `sys_role_menu` VALUES (101, 2063);
INSERT INTO `sys_role_menu` VALUES (101, 2064);
INSERT INTO `sys_role_menu` VALUES (101, 2065);
INSERT INTO `sys_role_menu` VALUES (101, 2066);
INSERT INTO `sys_role_menu` VALUES (101, 2092);
INSERT INTO `sys_role_menu` VALUES (101, 2093);
INSERT INTO `sys_role_menu` VALUES (101, 2094);
INSERT INTO `sys_role_menu` VALUES (101, 2095);
INSERT INTO `sys_role_menu` VALUES (101, 2096);
INSERT INTO `sys_role_menu` VALUES (101, 2097);
INSERT INTO `sys_role_menu` VALUES (101, 2098);
INSERT INTO `sys_role_menu` VALUES (101, 2099);
INSERT INTO `sys_role_menu` VALUES (101, 2100);
INSERT INTO `sys_role_menu` VALUES (101, 2101);
INSERT INTO `sys_role_menu` VALUES (101, 2124);
INSERT INTO `sys_role_menu` VALUES (101, 2125);
INSERT INTO `sys_role_menu` VALUES (101, 2126);
INSERT INTO `sys_role_menu` VALUES (101, 2127);
INSERT INTO `sys_role_menu` VALUES (101, 2128);
INSERT INTO `sys_role_menu` VALUES (101, 2129);
INSERT INTO `sys_role_menu` VALUES (101, 2130);
INSERT INTO `sys_role_menu` VALUES (101, 2131);
INSERT INTO `sys_role_menu` VALUES (101, 2132);
INSERT INTO `sys_role_menu` VALUES (101, 2133);
INSERT INTO `sys_role_menu` VALUES (101, 2134);
INSERT INTO `sys_role_menu` VALUES (101, 2135);
INSERT INTO `sys_role_menu` VALUES (101, 2136);
INSERT INTO `sys_role_menu` VALUES (101, 2137);
INSERT INTO `sys_role_menu` VALUES (101, 2138);
INSERT INTO `sys_role_menu` VALUES (101, 2139);
INSERT INTO `sys_role_menu` VALUES (101, 2149);
INSERT INTO `sys_role_menu` VALUES (101, 2150);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT 200 COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2019-05-11 09:52:22', 'admin', '2018-03-16 11:33:00', 'ry', '2019-05-11 09:52:21', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (100, 200, 'niushihao', '牛牛牛', '00', 'niushihao@qq.com', '13255668998', '0', '', 'f8def82668102d238d6e8da3b5489b7e', '2fe7e6', '0', '0', '127.0.0.1', '2019-04-23 15:44:43', 'admin', '2019-04-18 20:40:05', '', '2019-04-23 15:44:45', '');
INSERT INTO `sys_user` VALUES (113, 200, 'yang6622918', '杨军超', '00', '', '13608430080', '0', '', '123456', 'a37024', '1', '0', '127.0.0.1', '2019-04-26 15:23:27', 'admin', '2019-04-26 10:06:12', '', '2019-04-26 17:07:46', '');
INSERT INTO `sys_user` VALUES (114, 200, 'xicheyuan1', '洗车员一号', '00', '', '13608430215', '0', '', '123456', '137612', '0', '0', '', NULL, 'admin', '2019-04-26 15:11:55', '', '2019-04-26 15:30:13', '');
INSERT INTO `sys_user` VALUES (115, 200, 'xicheyuan2', '洗车员2号', '00', '', '13608465215', '0', '', '206e78b3045834c0f83bc9e0c6f93d57', '9a4a60', '0', '0', '', NULL, 'admin', '2019-04-26 15:12:34', '', NULL, '');
INSERT INTO `sys_user` VALUES (116, 200, '18625521997', '牛牛牛', '00', '', '18625521997', '0', '', '', '', '0', '0', '', NULL, '', NULL, '', NULL, '');
INSERT INTO `sys_user` VALUES (117, 200, '123456789', '杨军超1', '00', '', '13639741215', '0', '', '6de5e10b737d2901a824984ed1f1c1b7', 'e67af3', '0', '0', '127.0.0.1', '2019-04-27 00:45:38', 'admin', '2019-04-26 15:48:58', '', '2019-04-27 00:45:36', '');
INSERT INTO `sys_user` VALUES (118, 200, 'zww', 'zww', '00', '749834002@qq.com', '15515746513', '0', '', 'f34ff7a65881ba41d31a0dc05f40847e', '4331ea', '0', '2', '127.0.0.1', '2019-04-26 16:59:51', 'admin', '2019-04-26 16:57:10', 'admin', '2019-04-26 16:59:49', '');
INSERT INTO `sys_user` VALUES (119, 200, '15225432912', '张智敏', '00', '', '15225432912', '0', '', '93435120c74c19d79bf0981aee7801e7', '9f1ad4', '0', '0', '', NULL, 'admin', '2019-05-07 16:07:49', '', NULL, '');
INSERT INTO `sys_user` VALUES (120, 200, '13608430082', '杨军', '00', '', '13608430082', '0', '', '28e428a10af80283f178a14b8a6c65e3', '061905', '0', '0', '', NULL, 'admin', '2019-05-07 16:30:20', '', NULL, '');
INSERT INTO `sys_user` VALUES (121, 200, '13608430083', '杨超', '00', '', '13608430083', '0', '', '665d3967de5c8888ec810ef05e9ade92', '69081f', '0', '0', '', NULL, 'admin', '2019-05-07 16:31:30', '', NULL, '');
INSERT INTO `sys_user` VALUES (122, 200, '13564895548', '渣渣威', '00', '', '13564895548', '0', '', '354f75d75bdad5ced5775ea6c9c1cc87', '1104c2', '0', '0', '127.0.0.1', '2019-05-07 22:05:18', 'admin', '2019-05-07 16:36:18', '', '2019-05-07 22:05:15', '');
INSERT INTO `sys_user` VALUES (124, 200, 'shangjia1', '商家1', '00', 'dadada@qq.com', '13255668899', '0', '', '02032fdf175a89c45158a37b2c74949e', '523b33', '0', '0', '127.0.0.1', '2019-05-11 10:06:34', 'admin', '2019-05-07 17:27:06', '', '2019-05-11 10:06:33', '');
INSERT INTO `sys_user` VALUES (125, 200, '18899999999', '白展堂', '00', '', '18899999999', '0', '', 'bbbb9fd99f4b22ca93ec030e6b7f929f', 'ba27f6', '0', '0', '', NULL, 'shangjia1', '2019-05-07 17:37:41', '', NULL, '');
INSERT INTO `sys_user` VALUES (127, 200, '18899999998', '佟湘玉', '00', '', '18899999998', '1', '', 'b6c5dd59202a764e76dabb046a3a950d', '79d896', '0', '0', '', NULL, 'shangjia1', '2019-05-07 17:39:06', '', NULL, '');
INSERT INTO `sys_user` VALUES (129, 200, 'dianzhang1', '店长1', '00', '', '15644887755', '0', '', '2ab8a3d5d7b1bfc8f5f2243c7fc57913', '37e200', '0', '0', '127.0.0.1', '2019-05-11 16:32:48', 'shangjia1', '2019-05-07 21:27:36', '', '2019-05-11 16:32:47', '');
INSERT INTO `sys_user` VALUES (130, 200, '15688774965', '吕秀才', '00', '', '15688774965', '0', '', '571fa7ba4423934a65b756b6f5b69f23', '799685', '0', '0', '', NULL, 'shangjia1', '2019-05-08 09:35:27', '', NULL, '');
INSERT INTO `sys_user` VALUES (131, 200, '15677889911', '洗车员', '00', '', '15677889911', '0', '', 'f672db5844cc13ac05e5a3f3b4f57ce0', 'b81d1a', '0', '0', '', NULL, 'shangjia1', '2019-05-08 14:36:16', '', NULL, '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 2);
INSERT INTO `sys_user_post` VALUES (104, 3);
INSERT INTO `sys_user_post` VALUES (104, 4);
INSERT INTO `sys_user_post` VALUES (118, 1);
INSERT INTO `sys_user_post` VALUES (123, 4);
INSERT INTO `sys_user_post` VALUES (124, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (104, 101);
INSERT INTO `sys_user_role` VALUES (105, 101);
INSERT INTO `sys_user_role` VALUES (106, 101);
INSERT INTO `sys_user_role` VALUES (107, 101);
INSERT INTO `sys_user_role` VALUES (108, 101);
INSERT INTO `sys_user_role` VALUES (109, 101);
INSERT INTO `sys_user_role` VALUES (110, 101);
INSERT INTO `sys_user_role` VALUES (111, 101);
INSERT INTO `sys_user_role` VALUES (112, 101);
INSERT INTO `sys_user_role` VALUES (113, 101);
INSERT INTO `sys_user_role` VALUES (114, 102);
INSERT INTO `sys_user_role` VALUES (115, 102);
INSERT INTO `sys_user_role` VALUES (116, 102);
INSERT INTO `sys_user_role` VALUES (117, 101);
INSERT INTO `sys_user_role` VALUES (118, 1);
INSERT INTO `sys_user_role` VALUES (119, 102);
INSERT INTO `sys_user_role` VALUES (120, 102);
INSERT INTO `sys_user_role` VALUES (121, 102);
INSERT INTO `sys_user_role` VALUES (122, 102);
INSERT INTO `sys_user_role` VALUES (123, 100);
INSERT INTO `sys_user_role` VALUES (124, 100);
INSERT INTO `sys_user_role` VALUES (125, 102);
INSERT INTO `sys_user_role` VALUES (126, 102);
INSERT INTO `sys_user_role` VALUES (127, 102);
INSERT INTO `sys_user_role` VALUES (128, 101);
INSERT INTO `sys_user_role` VALUES (129, 101);
INSERT INTO `sys_user_role` VALUES (130, 102);
INSERT INTO `sys_user_role` VALUES (131, 102);

SET FOREIGN_KEY_CHECKS = 1;
