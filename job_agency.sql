/*
 Navicat Premium Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3307
 Source Schema         : job_agency

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 08/05/2022 04:58:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for award
-- ----------------------------
DROP TABLE IF EXISTS `award`;
CREATE TABLE `award`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of award
-- ----------------------------
INSERT INTO `award` VALUES (1, 'Higer National Diploma');
INSERT INTO `award` VALUES (2, 'Diploma');
INSERT INTO `award` VALUES (3, 'Digree');
INSERT INTO `award` VALUES (4, 'Masters');
INSERT INTO `award` VALUES (5, 'Professional');
INSERT INTO `award` VALUES (6, 'Certificate');

-- ----------------------------
-- Table structure for higher_education
-- ----------------------------
DROP TABLE IF EXISTS `higher_education`;
CREATE TABLE `higher_education`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `affiliated_institute` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `area_of_study` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `award_id` int NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `institiute_of_study` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `result` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of higher_education
-- ----------------------------
INSERT INTO `higher_education` VALUES (1, 'Kingston Univercity London', 'Software Engineering', 4, 'Msc in Software Engineering', 'Esoft Metro Campus, Kandy', 1, 1);
INSERT INTO `higher_education` VALUES (2, 'Oracle Univercity', 'Java SE', 6, 'Oracle Certified Associate Java Programmer', 'Self', 1, 9);
INSERT INTO `higher_education` VALUES (3, 'Oracle Univercity', 'Java SE', 5, 'Oracle Certified Profesional Java Programmer', 'Self', 1, 9);
INSERT INTO `higher_education` VALUES (4, 'Oracle Univercity', 'Java SE', 5, 'Oracle Certified Profesional Mobile Application Developer', 'Self', 1, 1);
INSERT INTO `higher_education` VALUES (5, 'Oracle Univercity', 'Java SE', 5, 'Oracle Certified ExpertWeb Component Developer', 'Self', 1, 11);
INSERT INTO `higher_education` VALUES (6, 'IJTS', 'Java SE', 2, 'Professional Certification in Java Technology', 'Self', 1, 11);

-- ----------------------------
-- Table structure for job_sector
-- ----------------------------
DROP TABLE IF EXISTS `job_sector`;
CREATE TABLE `job_sector`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_sector
-- ----------------------------
INSERT INTO `job_sector` VALUES (1, 'IT-Hardware/Networks/Systems');
INSERT INTO `job_sector` VALUES (2, 'Accounting/Auditing/Finance');
INSERT INTO `job_sector` VALUES (3, 'Banking/Insurance');
INSERT INTO `job_sector` VALUES (4, 'Sales/Marketing/Merchandising');
INSERT INTO `job_sector` VALUES (5, 'HR/Training');
INSERT INTO `job_sector` VALUES (6, 'Corporate Management/Analysts');
INSERT INTO `job_sector` VALUES (7, 'Office Admin/Secretary/Receptionist');
INSERT INTO `job_sector` VALUES (8, 'Civil Eng/Interior Design/Architecture');
INSERT INTO `job_sector` VALUES (9, 'IT-Telecoms');
INSERT INTO `job_sector` VALUES (10, 'Customer Relations/Public Relations');
INSERT INTO `job_sector` VALUES (11, 'Logistics/Warehouse/Transport');
INSERT INTO `job_sector` VALUES (12, 'Eng-Mech/Auto/Elec');
INSERT INTO `job_sector` VALUES (13, 'Manufacturing/Operations');
INSERT INTO `job_sector` VALUES (14, 'Media/Advert/Communication');
INSERT INTO `job_sector` VALUES (15, 'Hotels/Restaurants/Food');
INSERT INTO `job_sector` VALUES (16, 'Hospitality/Tourism');
INSERT INTO `job_sector` VALUES (17, 'Sports/Fitness/Recreation');
INSERT INTO `job_sector` VALUES (18, 'Hospital/Nursing/Healthcare');
INSERT INTO `job_sector` VALUES (19, 'Legal/Law');
INSERT INTO `job_sector` VALUES (20, 'Supervision/Quality Control');
INSERT INTO `job_sector` VALUES (21, 'Apparel/Clothing');
INSERT INTO `job_sector` VALUES (22, 'Ticketing/Airline/Marine');
INSERT INTO `job_sector` VALUES (23, 'Teaching/Academic/Library');
INSERT INTO `job_sector` VALUES (24, 'R&D/Science/Research');
INSERT INTO `job_sector` VALUES (25, 'Agriculture/Dairy/Environment');
INSERT INTO `job_sector` VALUES (26, 'Security');
INSERT INTO `job_sector` VALUES (27, 'Fashion/Design/Beauty');
INSERT INTO `job_sector` VALUES (28, 'International Development');
INSERT INTO `job_sector` VALUES (29, 'KPO/BPO');
INSERT INTO `job_sector` VALUES (30, 'Imports/Exports');

-- ----------------------------
-- Table structure for professional_experiance
-- ----------------------------
DROP TABLE IF EXISTS `professional_experiance`;
CREATE TABLE `professional_experiance`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `from_date` datetime(0) NULL DEFAULT NULL,
  `job_sector_id` int NULL DEFAULT NULL,
  `organization` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `to_date` datetime(0) NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `years` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of professional_experiance
-- ----------------------------
INSERT INTO `professional_experiance` VALUES (1, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 'SOftware Engineer', '2022-02-01 18:12:59', 1, 'Zenra Eco Product Pvt Ltd', '2022-04-29 18:14:03', 9, 12);
INSERT INTO `professional_experiance` VALUES (2, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 'SOftware Engineer', '2022-02-01 18:12:59', 1, 'Zenra Eco Product Pvt Ltd', '2022-04-29 18:14:03', 1, 3);
INSERT INTO `professional_experiance` VALUES (3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 'SOftware Engineer', '2022-02-01 18:12:59', 1, 'Zenra Eco Product Pvt Ltd', '2022-04-29 18:14:03', 1, 6);
INSERT INTO `professional_experiance` VALUES (4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', 'SOftware Engineer', '2022-02-01 18:12:59', 1, 'Zenra Eco Product Pvt Ltd', '2022-04-29 18:14:03', 1, 1);

-- ----------------------------
-- Table structure for school_education
-- ----------------------------
DROP TABLE IF EXISTS `school_education`;
CREATE TABLE `school_education`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_of_achived` datetime(0) NULL DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `scheme` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `number_of_passes` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_education
-- ----------------------------
INSERT INTO `school_education` VALUES (1, '2022-03-01 17:59:01', 'GCE-OL', 'General', 1, 5);
INSERT INTO `school_education` VALUES (3, '2022-02-21 18:00:50', 'GCE-AL', 'Maths', 1, 3);
INSERT INTO `school_education` VALUES (4, '2022-05-08 04:35:34', 'GCE-OL', 'General', 12, 3);

-- ----------------------------
-- Table structure for skills_and_achievment
-- ----------------------------
DROP TABLE IF EXISTS `skills_and_achievment`;
CREATE TABLE `skills_and_achievment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skills_and_achievment
-- ----------------------------
INSERT INTO `skills_and_achievment` VALUES (1, 'Good Team Player', 1);
INSERT INTO `skills_and_achievment` VALUES (2, 'Fast Lerner', 9);
INSERT INTO `skills_and_achievment` VALUES (3, 'Best Sales Reph 2019', 11);
INSERT INTO `skills_and_achievment` VALUES (4, 'Best up comming Performance', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_of_birth` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `job_sector_id` int NULL DEFAULT NULL,
  `maried` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nic` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_account_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Amal', 'Wickramarathna', 'No 23', 'Kandy road', 'Kurunegala', '2022-05-01 12:16:11', 'unitTest@gmail.com', 'M', 1, 'Y', '00000000', 'Sri Lankan', '777777777V', '11111111', 10);
INSERT INTO `user` VALUES (9, 'Asvida', 'Kumarawadu', 'No 56', 'Piliyandala', 'Colombo', '2022-05-01 03:41:52', 'asvida@gmail.com', 'M', 2, 'N', '454545', 'Sri lankan', '8888888', '11111111', 11);
INSERT INTO `user` VALUES (11, 'Bimal', 'Jayakodi', 'No 101/B', 'Panadura road', 'Rathnapura', '2022-04-20 03:42:51', 'bimal@gg.com', 'M', 3, 'Y', '444556633', 'Sri lankan', '9571258478v', '0114668866', 12);
INSERT INTO `user` VALUES (12, 'Nirosha', 'Manawadu', 'No 34', 'Gampola', 'kandy', '2022-05-08 04:35:34', 'unitTest@gmail.com', 'F', 4, 'Y', '00000000', 'Sri Lankan', '777777777V', '11111111', 13);

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES (1, '$2a$12$0Tt4oUxkKFZ9AxmR6Rmaxuhqtio8SW1UwTeMB4S.wm1mN/F0axOp6', 1, 'admin');
INSERT INTO `user_account` VALUES (10, '$2a$10$nMQIwXlwKo9A0u.6Yl3wV.QFNDqkeJqSobpiRQiZSHJfBvvHKp.uW', 2, 'amal');
INSERT INTO `user_account` VALUES (11, '$2a$10$T7hnEmc6Mdit9UVc/mC9HOUZ.ZDZlKJu1s4Z95Ko9cLhEB88sc2d2', 2, 'asvida');
INSERT INTO `user_account` VALUES (12, '$2a$10$T7hnEmc6Mdit9UVc/mC9HOUZ.ZDZlKJu1s4Z95Ko9cLhEB88sc2d2', 2, 'bimal');
INSERT INTO `user_account` VALUES (13, '$2a$10$kpl0wfw96lWHo2y1aGf79OBy8AOaBf9jQOj3MzbB6AJwDKQLrNNEC', 2, 'nirosha');

SET FOREIGN_KEY_CHECKS = 1;
