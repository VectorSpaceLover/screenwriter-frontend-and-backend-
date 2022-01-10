/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : screenwriting

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 05/10/2021 07:49:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coupon_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `used` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (2, 'John Doe', '11', 1);
INSERT INTO `coupons` VALUES (3, 'Gary Riley', '2', 1);
INSERT INTO `coupons` VALUES (4, 'Edward Siu', '3', 1);
INSERT INTO `coupons` VALUES (5, 'Betty Simons', '4', 1);
INSERT INTO `coupons` VALUES (6, 'Frances Lieberman', '5', 1);
INSERT INTO `coupons` VALUES (29, 'asdf', 'aaaaaaaaaaa', 0);
INSERT INTO `coupons` VALUES (31, 'sdfg', 'sdfg', 0);
INSERT INTO `coupons` VALUES (32, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaa', 0);

-- ----------------------------
-- Table structure for email_information
-- ----------------------------
DROP TABLE IF EXISTS `email_information`;
CREATE TABLE `email_information`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_information
-- ----------------------------
INSERT INTO `email_information` VALUES (1, 'admin@admin.com', '123456', '2021-10-05 06:27:56', '2021-10-05 06:27:56', 1);

-- ----------------------------
-- Table structure for mails
-- ----------------------------
DROP TABLE IF EXISTS `mails`;
CREATE TABLE `mails`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mails
-- ----------------------------
INSERT INTO `mails` VALUES (1, '9', 'asdf', 'asdfasdf');
INSERT INTO `mails` VALUES (3, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (4, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (5, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (6, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (7, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (8, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (9, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (10, '10', 'assdf', 'sdfsdf');
INSERT INTO `mails` VALUES (11, '1', 'dsfasdf', 'asdfasdfasdf');
INSERT INTO `mails` VALUES (12, '1', 'asdf', 'asdfasdffsdfasdfasdfsdf');
INSERT INTO `mails` VALUES (13, '1', 'asaada', 'sdasdasdasdasd');
INSERT INTO `mails` VALUES (14, '1', 'fasfsdaf', 'asdfasdfasdfasdf');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_at` timestamp(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (5, 'facebook', 'This is facebook link, you can visit to facebook clicking this.', '2021-10-05 00:10:54');
INSERT INTO `pages` VALUES (6, 'twitter', 'This is twitter link, you can visit to facebook clicking this.', '2021-10-05 00:10:27');
INSERT INTO `pages` VALUES (8, 'whatsapp', 'This is whatsapp link.', '2021-10-05 00:11:12');

-- ----------------------------
-- Table structure for paypal_payments
-- ----------------------------
DROP TABLE IF EXISTS `paypal_payments`;
CREATE TABLE `paypal_payments`  (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT current_timestamp(0),
  `payment_gross` float(10, 2) NULL DEFAULT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paypal_payments
-- ----------------------------
INSERT INTO `paypal_payments` VALUES (1, 'txn_3JRSwrFmPwgSi4LO0hNBgE9O', '2021-08-23 08:01:42', 15.00, 'usd', 'succeeded', 'Dinesh Karthik', 'admin@admin.com');
INSERT INTO `paypal_payments` VALUES (2, 'txn_3JRXcwFmPwgSi4LO0H6s7RL3', '2021-08-23 13:01:27', 15.00, 'usd', 'succeeded', 'Dinesh Karthik', '');

-- ----------------------------
-- Table structure for scripts
-- ----------------------------
DROP TABLE IF EXISTS `scripts`;
CREATE TABLE `scripts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `user_id` int NOT NULL,
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scriptid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scripts
-- ----------------------------
INSERT INTO `scripts` VALUES (0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, NULL, '');

-- ----------------------------
-- Table structure for square_payments
-- ----------------------------
DROP TABLE IF EXISTS `square_payments`;
CREATE TABLE `square_payments`  (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT current_timestamp(0),
  `payment_gross` float(10, 2) NULL DEFAULT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of square_payments
-- ----------------------------
INSERT INTO `square_payments` VALUES (1, 'txn_3JRSwrFmPwgSi4LO0hNBgE9O', '2021-08-23 08:01:42', 15.00, 'usd', 'succeeded', 'Dinesh Karthik', 'admin@admin.com');
INSERT INTO `square_payments` VALUES (2, 'txn_3JRXcwFmPwgSi4LO0H6s7RL3', '2021-08-23 13:01:27', 15.00, 'usd', 'succeeded', 'Dinesh Karthik', '');

-- ----------------------------
-- Table structure for stripe_payments
-- ----------------------------
DROP TABLE IF EXISTS `stripe_payments`;
CREATE TABLE `stripe_payments`  (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT current_timestamp(0),
  `payment_gross` float(10, 2) NULL DEFAULT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stripe_payments
-- ----------------------------
INSERT INTO `stripe_payments` VALUES (1, 'txn_3JRSwrFmPwgSi4LO0hNBgE9O', '2021-08-23 08:01:42', 15.00, 'usd', 'succeeded', 'Dinesh Karthik', 'admin@admin.com');
INSERT INTO `stripe_payments` VALUES (2, 'txn_3JRXcwFmPwgSi4LO0H6s7RL3', '2021-08-23 13:01:27', 15.00, 'usd', 'succeeded', 'Dinesh Karthik', '');

-- ----------------------------
-- Table structure for user_types
-- ----------------------------
DROP TABLE IF EXISTS `user_types`;
CREATE TABLE `user_types`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `modified` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_types
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_type` int NULL DEFAULT 4,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_verify` int NOT NULL DEFAULT 0,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `firstname` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 0,
  `created` datetime(0) NULL DEFAULT current_timestamp(0),
  `gender` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `modified` datetime(0) NULL DEFAULT current_timestamp(0),
  `access_code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `activetime` datetime(0) NULL DEFAULT NULL,
  `expiry_date` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `txn_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_gross` float(10, 2) NULL DEFAULT NULL,
  `currency_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_plan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deviceid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `zip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_charge` int NULL DEFAULT NULL,
  `verification_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'admin@admin.com', 1, 'dDRHcHlsd0NrdENlVVozY29obUI0QT09', 'Dinesh', 'Karthik', 1, '2021-08-21 08:57:18', 'male', NULL, '2021-08-21 08:57:18', NULL, '2021-08-21 05:26:48', NULL, 'txn_3JRSwrFmPwgSi4LO0hNBgE9O', 15.00, 'usd', 'succeeded', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '');
INSERT INTO `users` VALUES (4, 4, 'vsc.india01@gmail.com', 0, 'V3hxKzQ0UEFWRXYzM056dFpYU0dKUT09', 'Dinesh', 'Karthik', 0, '2021-08-21 14:22:04', NULL, NULL, '2021-08-21 14:22:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '9524356849', NULL, '');
INSERT INTO `users` VALUES (9, 2, 'vsc.india011@gmail.com', 0, 'eERRV2tRNnV4V3pvVVliNFN3TXE0dz09', 'Dinesh', '', 0, '2021-09-01 10:03:44', NULL, NULL, '2021-09-01 10:03:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9524356849', NULL, '');
INSERT INTO `users` VALUES (27, 4, 'sashkamaslo@mail.ru', 0, 'eTF0cm5DVlovTVpYZnVpSDc0endSUT09', 'dadad', '1da', 0, '2021-10-04 10:50:39', NULL, NULL, '2021-10-04 10:50:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ad', 'admin@admin.com', 'ad', 'adsads', 'ad', '+7(3519)33-26-11', NULL, 'Mjc=');
INSERT INTO `users` VALUES (28, 4, 'venus@admin.com', 0, 'Y0JjbW5LRXoxUDE0QU5XSFFBM256QT09', 'fasdf', 'asssss', 0, '2021-10-04 10:56:12', NULL, NULL, '2021-10-04 10:56:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adsfasdf', 'venus@admin.com', 'asdf', 'asdf', 'asdffff', '+7(3519)33-26-11', NULL, 'Mjg=');
INSERT INTO `users` VALUES (59, 4, 'min@admin.com', 0, 'UEd2ZytRbTVKalhwYlEvRHorUFZyZz09', 'fdfdf', 'dfadsf', 0, '2021-10-05 07:47:15', NULL, NULL, '2021-10-05 07:47:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ddd', 'fffcom', 'ss', 'ff', 'ff', '+7(3519)33-26-11', NULL, 'NTk=');

SET FOREIGN_KEY_CHECKS = 1;
