/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : ecommerce_api

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2023-04-30 17:47:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'published',
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_featured` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', 'asus', 'marque asuses', 'asus.org', '', 'draft', '1', '0', '2023-03-22 09:46:00', '2023-03-28 11:51:10', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Fasus.jpg08e91f19-d164-4aa7-8de5-9d6248a1a3ae?alt=media&token=989d794d-6100-41db-9798-d966d987521f');
INSERT INTO `brands` VALUES ('2', 'oppo', 'marque oppo', 'oppo.com', '', 'draft', '2', '1', '2023-03-24 07:59:19', '2023-03-28 11:56:18', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Foppo.jpg3dd6b49b-5986-4b16-919e-261fa11329d5?alt=media&token=c882743e-535b-4fde-9cde-407104a3c3b6');
INSERT INTO `brands` VALUES ('3', 'samsung', 'samsung', null, '[]', 'published', '3', '1', '2023-03-28 11:32:42', '2023-03-28 11:56:59', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Fsamsung.png01254e36-bd47-4c51-98a2-416e8ce089e1?alt=media&token=5abfffd9-9ab2-43d5-a1ad-fc12c0a2b212');
INSERT INTO `brands` VALUES ('4', 'zara', 'zara', null, '[]', 'published', null, '1', '2023-03-28 11:47:09', '2023-04-01 19:00:43', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Fasus.jpgb589452e-2851-4212-9ed2-8b0e2629468a?alt=media&token=609e7377-4bf4-42ad-ad37-a1099c8c3f6d');
INSERT INTO `brands` VALUES ('5', 'adidas', 'adidas', null, '', 'published', null, '1', '2023-04-05 08:09:40', '2023-04-05 08:09:40', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Flogo-marque-79637.jpg102f227c-02ea-40ec-ac3a-4f0f828d56e9?alt=media&token=c4311ed2-be44-4e4d-90d9-5d229bc0582c');
INSERT INTO `brands` VALUES ('6', 'new balance', 'New Balance', null, '[]', 'published', null, '1', '2023-04-08 19:50:30', '2023-04-08 19:50:44', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Flogo-marque-337.jpgde346ad9-0edc-408f-add3-832f6e957fbe?alt=media&token=359057ca-7f5c-40f7-981d-4251d0bac62d');
INSERT INTO `brands` VALUES ('7', 'veja recife', 'veja recife', null, '', 'published', null, '0', '2023-04-08 20:57:04', '2023-04-08 20:57:04', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Flogo-marque-2005.jpgc7548a77-585e-468c-a30d-7aec631bd9aa?alt=media&token=d0d7fccb-bdba-44f1-9474-c1197c67dbaa');
INSERT INTO `brands` VALUES ('8', 'kickers', 'kickers', null, '[]', 'published', null, '1', '2023-04-09 12:38:41', '2023-04-09 12:39:10', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Flogo-marque-65.jpgf938f573-2810-4151-8890-f005e5ded335?alt=media&token=244adf3c-7fef-4054-b235-1dc5a6d71cd1');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'for_road', '0', 'Chaussures pour la route', 'published', null, 'fa fa-list', '1', '1', '0', '[]', '2023-03-11 01:08:24', '2023-03-28 09:08:52', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ffor_road.jpgd9b7bc62-4bda-4bc1-b9f8-6df837f81b83?alt=media&token=38cf51b6-5dbc-4a78-8a60-d6192083629b', '/shop/for_road');
INSERT INTO `categories` VALUES ('2', 'for_wall', '0', 'Chaussures pour les escalades', 'published', null, 'fa fa-list', '2', '1', '0', '[]', '2023-03-11 01:09:15', '2023-03-28 09:07:48', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ffor_wall.jpg4e80a277-10ec-48e7-9f57-4194f500a69c?alt=media&token=52c53ab7-544b-48b7-9d26-904d6153799e', '/shop/for_wall');
INSERT INTO `categories` VALUES ('3', 'for_walk', '0', 'chaussures pour la marche', 'published', null, 'fa fa-list', '3', '1', '0', '[]', '2023-03-11 01:09:46', '2023-03-28 09:07:06', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ffor_walk.jpg39c4f38e-848f-48e1-8d35-97f0534f24f1?alt=media&token=4725f91d-e127-4eb4-8a6b-4d675f0bff14', '/shop/for_walk');
INSERT INTO `categories` VALUES ('17', 'work', '3', 'pour le travail', 'published', null, null, null, '0', '0', null, '2023-03-12 17:09:12', '2023-04-07 13:29:13', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fwork.jpg154d8833-3086-4ebd-b1c3-a23b4b287acd?alt=media&token=dc4c7459-25a9-4132-a136-32ee3d69edfa', '/shop?category_id=work');
INSERT INTO `categories` VALUES ('18', 'travel', '3', 'pour les voyages', 'published', null, null, null, '0', '0', null, '2023-03-12 17:10:16', '2023-04-07 13:29:27', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ftravel.jpge4cbabc8-ba58-4e8c-accb-b444315b5f71?alt=media&token=918324f2-1f34-4805-bbd9-161f3c65a359', '/shop?category_id=travel');
INSERT INTO `categories` VALUES ('19', 'family', '3', 'pour la famille', 'published', null, null, null, '0', '0', null, '2023-03-12 17:12:47', '2023-04-07 13:29:43', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ffamily.jpg73c4da4d-0b2d-415a-adbe-1154080ddc4d?alt=media&token=c1319ecd-9b4b-47e4-ad3f-c38134720216', '/shop?category_id=family');
INSERT INTO `categories` VALUES ('20', 'race', '1', 'pour les cources', 'published', null, 'fa fa-list', '1', '0', '0', null, '2023-03-12 17:14:34', '2023-04-07 13:29:53', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Frace.jpg6f6cea0a-fa2d-4850-9d33-c7b5daff4b14?alt=media&token=ac105fb2-f61f-4240-80a2-644e6eb55623', '/shop?category_id=race');
INSERT INTO `categories` VALUES ('21', 'sport', '1', 'pour le sport', 'published', null, null, null, '0', '0', null, '2023-03-12 17:15:57', '2023-04-07 13:30:03', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fsport.jpg39feeb65-4848-4835-945b-44aafe12d415?alt=media&token=4dacc8d8-ac3b-4942-ab5a-5727591f1f7c', '/shop?category_id=sport');
INSERT INTO `categories` VALUES ('22', 'mountain', '1', 'pour les montagnes', 'published', null, null, null, '0', '0', null, '2023-03-12 17:19:38', '2023-04-07 13:30:28', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fmountainss.jpg060ac775-1f3f-441a-a083-325e04e7a5e6?alt=media&token=d0bc97e2-3a7d-4338-af75-ccc2007f016c', '/shop?category_id=mountain');
INSERT INTO `categories` VALUES ('23', 'picknic', '2', 'pour la plage', 'published', null, null, null, '0', '0', null, '2023-03-12 17:20:26', '2023-04-07 13:30:41', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fpicknic.jpg3c98b79f-8bf8-4fb0-b3e6-3c5d085cb96a?alt=media&token=9aa4e930-84d5-4a44-91f3-166bfd884a15', '/shop?category_id=picknic');
INSERT INTO `categories` VALUES ('24', 'shower', '2', 'pour la piscine', 'published', null, null, null, '0', '0', null, '2023-03-12 17:35:09', '2023-04-07 13:30:55', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fshower.jpgae967815-2e5e-407d-82c8-36a07443cb4f?alt=media&token=c17d7b32-96bd-4cef-a742-d3d56bd8ac57', '/shop?category_id=shower');
INSERT INTO `categories` VALUES ('25', 'bike', '2', 'pour le véloo', 'published', null, null, null, '0', '0', null, '2023-03-12 17:36:59', '2023-04-07 13:31:07', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fbike.jpg53e79108-9d6e-48ae-ac09-faf5ef0149e8?alt=media&token=609e0fc9-327e-4a51-b85e-bd7942f9e78d', '/shop?category_id=bike');
INSERT INTO `categories` VALUES ('27', 'school', '3', 'pour l\'école', 'published', null, null, '9', '0', '0', null, '2023-03-28 07:35:06', '2023-04-07 13:28:38', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fhome_brand_985.jpg67045ca7-8182-474e-851d-4cb2ac64490e?alt=media&token=2efa298a-dacd-414e-867b-fb45a5def1d7', '/shop?category_id=for_road');

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES ('1', 'specials_offers', 'specials offers', 'specials-offers', '[]', 'published', '0', '1', '2023-03-24 14:41:55', '2023-03-29 10:47:49', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcollections%2Ftattoo-high-heels.jpg9a46dbab-6cc4-4e21-b448-291b55da828d?alt=media&token=3417df39-e2ef-43c8-8fdc-e95f6e2a76cb');
INSERT INTO `collections` VALUES ('2', 'best_sellers', 'best sellers', 'best_sellers', '[]', 'published', '1', '1', '2023-03-24 14:42:30', '2023-03-29 10:41:54', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcollections%2Fblack-and-white-sneakers-against-purple-and-white.jpgf2db3c45-8d26-4f78-98be-22434c183832?alt=media&token=9b9fbb77-483d-478a-b491-4a600fc12554');
INSERT INTO `collections` VALUES ('3', 'new_arrivals', 'new arrivals', 'new-arrivals', '[]', 'published', '2', '1', '2023-03-24 14:43:05', '2023-03-29 10:40:15', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcollections%2Fpink-flatlay.jpg9edb5562-282e-4e75-8110-11689dad67ae?alt=media&token=fcc06f12-30ea-4e5b-b40b-c6452ffee94d');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('13', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('14', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('15', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('16', '2023_02_16_174617_edit_users_table', '1');
INSERT INTO `migrations` VALUES ('17', '2023_02_16_203438_adds_api_token_to_users_table', '2');
INSERT INTO `migrations` VALUES ('19', '2023_02_18_063755_create_categories_table', '3');
INSERT INTO `migrations` VALUES ('20', '2016_06_01_000001_create_oauth_auth_codes_table', '4');
INSERT INTO `migrations` VALUES ('21', '2016_06_01_000002_create_oauth_access_tokens_table', '4');
INSERT INTO `migrations` VALUES ('22', '2016_06_01_000003_create_oauth_refresh_tokens_table', '4');
INSERT INTO `migrations` VALUES ('23', '2016_06_01_000004_create_oauth_clients_table', '4');
INSERT INTO `migrations` VALUES ('24', '2016_06_01_000005_create_oauth_personal_access_clients_table', '4');
INSERT INTO `migrations` VALUES ('25', '2023_02_27_094110_update_users_table_to_include_type', '5');
INSERT INTO `migrations` VALUES ('26', '2023_02_27_113810_update_categories_table_to_include_image', '6');
INSERT INTO `migrations` VALUES ('27', '2023_02_27_152421_create_products_table', '6');
INSERT INTO `migrations` VALUES ('28', '2023_02_27_152611_create_brands_table', '7');
INSERT INTO `migrations` VALUES ('29', '2023_02_27_152813_create_reviews_table', '7');
INSERT INTO `migrations` VALUES ('30', '2023_02_27_163101_create_customers_table', '7');
INSERT INTO `migrations` VALUES ('31', '2023_03_12_140331_update_categories_table', '8');
INSERT INTO `migrations` VALUES ('32', '2023_03_12_142025_update_categories_table_strings', '9');
INSERT INTO `migrations` VALUES ('33', '2023_03_12_142618_update_categories_table_strings_default', '10');
INSERT INTO `migrations` VALUES ('34', '2023_03_12_220257_table_slides', '11');
INSERT INTO `migrations` VALUES ('35', '2023_03_12_220518_table_slides_items', '12');
INSERT INTO `migrations` VALUES ('36', '2023_03_13_060742_table_slides_items_update', '13');
INSERT INTO `migrations` VALUES ('37', '2023_03_14_001805_table_slides_items_add_subtitle', '14');
INSERT INTO `migrations` VALUES ('38', '2023_03_14_001805_table_slides_items_add_subtitle_bug', '15');
INSERT INTO `migrations` VALUES ('39', '2023_03_14_001805_table_slides_items_change_image_url', '16');
INSERT INTO `migrations` VALUES ('40', '2023_03_14_001805_table_slides_items_change_image_url_again', '17');
INSERT INTO `migrations` VALUES ('41', '2023_03_14_001805_table_slides_items_change_image_url_again_again', '18');
INSERT INTO `migrations` VALUES ('42', '2023_03_14_001805_table_scategories_add_link', '19');
INSERT INTO `migrations` VALUES ('43', '2023_03_15_162803_create_product_attributes_table', '20');
INSERT INTO `migrations` VALUES ('44', '2023_03_15_163304_create_product_attribute_items_table', '20');
INSERT INTO `migrations` VALUES ('45', '2023_03_14_001805_table_products_add_image_url', '21');
INSERT INTO `migrations` VALUES ('46', '2023_03_14_001805_table_products_rename_image_url', '22');
INSERT INTO `migrations` VALUES ('47', '2023_03_27_152611_update_brands_table', '23');
INSERT INTO `migrations` VALUES ('48', '2023_03_24_090701_create_collections_table', '24');
INSERT INTO `migrations` VALUES ('49', '2023_03_26_235205_edit_tables_products_edit_url', '25');
INSERT INTO `migrations` VALUES ('50', '2023_03_27_101941_add_collection_id_to_tables_products', '26');
INSERT INTO `migrations` VALUES ('51', '2023_03_27_183527_edit_column_url_to_slides_items', '27');
INSERT INTO `migrations` VALUES ('52', '2023_03_28_072344_edit_image_url_to_categories', '28');
INSERT INTO `migrations` VALUES ('53', '2023_03_28_072933_edit_image_url_to_categories_lenght', '29');
INSERT INTO `migrations` VALUES ('54', '2023_03_28_092145_add_url_to_collections', '30');
INSERT INTO `migrations` VALUES ('55', '2023_03_28_092325_add_url_to_brands', '30');
INSERT INTO `migrations` VALUES ('56', '2023_03_28_104109_edit_logo_to_brands', '31');
INSERT INTO `migrations` VALUES ('57', '2023_03_30_083540_edit_column_title_tables_product_attributes', '32');
INSERT INTO `migrations` VALUES ('58', '2023_03_30_125921_edit_product_attributes', '33');
INSERT INTO `migrations` VALUES ('59', '2023_03_30_130407_delete_column_status__product_attributes', '34');
INSERT INTO `migrations` VALUES ('60', '2023_03_30_130501_add_column_status_to_tables_product_attributes', '34');
INSERT INTO `migrations` VALUES ('61', '2023_03_30_173404_edit_column_to_table_product_attribute_items', '35');
INSERT INTO `migrations` VALUES ('71', '2023_03_30_182300_add_column_image_to_product_attribute_items', '36');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('289ab94e2044a5028c5da39b71051807edb8dfe247fe371c4f0035468d67472b1e17391ee88b3af1', '27', '1', 'Laravel Password Grant Client', '[]', '1', '2023-04-01 18:32:45', '2023-04-01 18:32:45', '2023-07-10 18:32:42');
INSERT INTO `oauth_access_tokens` VALUES ('29255253be79227db402c6f18706e22f467da2e7709cf4f72aba1b6750b9caa40285801ecd11a5e3', '27', '1', 'Laravel Password Grant Client', '[]', '1', '2023-03-29 19:13:57', '2023-03-29 19:13:57', '2023-07-07 19:13:54');
INSERT INTO `oauth_access_tokens` VALUES ('388a2f66c48d302afc977b9df50dc48b62f4ada63084bc4b06aebe9716f843d92cb032781fbf06a1', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-10 11:49:47', '2023-03-10 11:49:47', '2023-06-18 11:49:43');
INSERT INTO `oauth_access_tokens` VALUES ('56dd5f7059de3257619248b1df5803dd5485542a778371a0caaa2cb62eef2a1c2ff9d000d90e4185', '223', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-09 15:25:41', '2023-03-09 15:25:41', '2023-06-17 15:25:40');
INSERT INTO `oauth_access_tokens` VALUES ('7ee1f630c9670802252bd414c07fcd54ab2136628a54715626a21bc3cdc94261c5f7049f1a0fbce6', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-15 06:44:53', '2023-03-15 06:44:53', '2023-06-23 06:44:52');
INSERT INTO `oauth_access_tokens` VALUES ('9027a74b43693404f86633c5dbd385bcb5239157e38f7e9c9a1481689332728e165aaf38cc4fc415', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-10 21:02:45', '2023-03-10 21:02:45', '2023-06-18 21:02:45');
INSERT INTO `oauth_access_tokens` VALUES ('910f21f0d7968ce9beba184c53c6e98eb3cd15651809bdcefc63e31433b0340806f05e7a05cf0f8f', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-09 15:57:54', '2023-03-09 15:57:54', '2023-06-17 15:57:51');
INSERT INTO `oauth_access_tokens` VALUES ('97c9b7ad246292566db07620cd3be924973fd7a15ddbe1fe033d471affcc2794cc387dc26a7e8491', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-09 15:15:56', '2023-03-09 15:15:56', '2023-06-17 15:15:56');
INSERT INTO `oauth_access_tokens` VALUES ('bacc968a232fcfe594162fcc4320edd01101297793d912e8eb9dd2482a3f083bb8bf23bd511671f0', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-21 09:28:38', '2023-03-21 09:28:38', '2023-06-29 09:28:35');
INSERT INTO `oauth_access_tokens` VALUES ('cb5a50ce9d75094debbbd7e6d8565a8225c09e18981eea071ac4b8056e5d88d472904fbb2f45eff3', '27', '1', 'Laravel Password Grant Client', '[]', '1', '2023-04-01 20:20:21', '2023-04-01 20:20:21', '2023-07-10 20:20:18');
INSERT INTO `oauth_access_tokens` VALUES ('d05a8d585b081585feac3322f788724a558810b75d216e60ee84a72ab0f05598208127e90ff7ebc5', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-10 21:00:58', '2023-03-10 21:00:58', '2023-06-18 21:00:54');
INSERT INTO `oauth_access_tokens` VALUES ('deea11115f97c5da71a8cf30a112a7a8debb603cbc1acc2a8061e13a07669cde3e416e975ca31148', '27', '1', 'Laravel Password Grant Client', '[]', '1', '2023-04-01 18:37:25', '2023-04-01 18:37:25', '2023-07-10 18:37:25');
INSERT INTO `oauth_access_tokens` VALUES ('e4e9b618fd054e6b09e2a3e18dbff252e5f6660573e5a6a7e8b0364180dbfd643e3e4a5cc0de9be6', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-04-02 08:21:58', '2023-04-02 08:21:58', '2023-07-11 08:21:56');
INSERT INTO `oauth_access_tokens` VALUES ('f0eb0683ddc265a32771eb693b13846a28a77de9228ac49ffda31daff00c69cbe9174d42027a8846', '27', '1', 'Laravel Password Grant Client', '[]', '1', '2023-04-01 18:35:05', '2023-04-01 18:35:05', '2023-07-10 18:35:05');
INSERT INTO `oauth_access_tokens` VALUES ('f566c161e959519e80820cd49ea1be6be8fe25b082bd0be2dc68d5c67f136e4a8be3de0a952adcd1', '27', '1', 'Laravel Password Grant Client', '[]', '0', '2023-03-10 15:23:51', '2023-03-10 15:23:51', '2023-06-18 15:23:49');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Ecommerce_api Personal Access Client', '4IGqyH4vzzzoO8RWh2CtyGpYTOKf7YpswxPNM2kO', null, 'http://localhost', '1', '0', '0', '2023-02-18 10:15:37', '2023-02-18 10:15:37');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Ecommerce_api Password Grant Client', 'surVxu9v6WrgNSEw8JLrTXnwZo3cwwcvcIczSNdy', 'users', 'http://localhost', '0', '1', '0', '2023-02-18 10:15:38', '2023-02-18 10:15:38');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2023-02-18 10:15:38', '2023-02-18 10:15:38');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for product_attribute_items
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute_items`;
CREATE TABLE `product_attribute_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_attribute_id` bigint NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_attribute_items_value_unique` (`value`),
  UNIQUE KEY `product_attribute_items_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_attribute_items
-- ----------------------------
INSERT INTO `product_attribute_items` VALUES ('1', '1', '#000000', 'black', '1', '0', 'published', '2023-03-31 09:43:48', '2023-03-31 09:43:48', null, 'noir');
INSERT INTO `product_attribute_items` VALUES ('2', '1', '#FFFFFF', 'white', '2', '0', 'published', '2023-03-31 09:44:14', '2023-03-31 09:44:14', null, 'blanc');
INSERT INTO `product_attribute_items` VALUES ('3', '2', 'S', 'small', '1', '1', 'published', '2023-03-31 09:52:47', '2023-03-31 09:52:47', null, 'small');
INSERT INTO `product_attribute_items` VALUES ('4', '2', 'M', 'medium', '2', '0', 'published', '2023-03-31 09:53:05', '2023-03-31 09:53:05', null, 'medium');
INSERT INTO `product_attribute_items` VALUES ('5', '2', 'L', 'long', '3', '0', 'published', '2023-03-31 09:53:20', '2023-03-31 09:53:20', null, 'long');
INSERT INTO `product_attribute_items` VALUES ('6', '2', 'XL', 'extra-long', '4', '0', 'published', '2023-03-31 09:53:52', '2023-03-31 09:53:52', null, 'extra long');
INSERT INTO `product_attribute_items` VALUES ('7', '2', 'XXL', 'extra-extra-long', '4', '0', 'published', '2023-03-31 09:54:19', '2023-03-31 09:54:19', null, 'extra extra long');
INSERT INTO `product_attribute_items` VALUES ('8', '1', '#FFa500', 'orange', '2', '0', 'published', '2023-04-05 07:37:43', '2023-04-05 07:37:43', null, 'orange');
INSERT INTO `product_attribute_items` VALUES ('9', '1', '#0000ff', 'blue', '3', '0', 'published', '2023-04-05 07:45:22', '2023-04-05 07:45:22', null, 'bleue');
INSERT INTO `product_attribute_items` VALUES ('10', '1', '#F5F5DC', 'beige', null, '0', 'published', '2023-04-09 14:11:22', '2023-04-09 14:11:22', null, 'beige');
INSERT INTO `product_attribute_items` VALUES ('11', '1', '#804000', 'marron', null, '0', 'published', '2023-04-09 14:12:59', '2023-04-09 14:12:59', null, 'marron');

-- ----------------------------
-- Table structure for product_attributes
-- ----------------------------
DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE `product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_attributes_title_unique` (`name`),
  UNIQUE KEY `product_attributes_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_attributes
-- ----------------------------
INSERT INTO `product_attributes` VALUES ('1', 'couleur', 'color', '1', '2023-03-31 09:42:19', '2023-03-31 09:42:19', 'published');
INSERT INTO `product_attributes` VALUES ('2', 'taille', 'size', '2', '2023-03-31 09:52:03', '2023-03-31 09:52:03', 'published');

-- ----------------------------
-- Table structure for product_variation_attributes
-- ----------------------------
DROP TABLE IF EXISTS `product_variation_attributes`;
CREATE TABLE `product_variation_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_variation_id` bigint NOT NULL,
  `product_attribute_item_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_variation_attributes
-- ----------------------------
INSERT INTO `product_variation_attributes` VALUES ('1', '1', '2', '2023-04-05 13:04:18', '2023-04-05 13:04:18');
INSERT INTO `product_variation_attributes` VALUES ('2', '2', '2', '2023-04-05 13:34:29', '2023-04-05 13:34:29');
INSERT INTO `product_variation_attributes` VALUES ('3', '3', '9', '2023-04-05 13:42:10', '2023-04-05 13:42:10');
INSERT INTO `product_variation_attributes` VALUES ('4', '4', '1', '2023-04-05 14:23:49', '2023-04-05 14:23:49');
INSERT INTO `product_variation_attributes` VALUES ('6', '5', '1', '2023-04-05 17:02:25', '2023-04-05 17:02:25');
INSERT INTO `product_variation_attributes` VALUES ('7', '6', '2', '2023-04-05 17:02:37', '2023-04-05 17:02:37');
INSERT INTO `product_variation_attributes` VALUES ('8', '1', '3', '2023-04-07 06:51:23', '2023-04-07 06:51:23');
INSERT INTO `product_variation_attributes` VALUES ('9', '1', '4', '2023-04-07 06:57:59', '2023-04-07 06:57:59');
INSERT INTO `product_variation_attributes` VALUES ('10', '6', '3', '2023-04-07 07:25:05', '2023-04-07 07:25:05');
INSERT INTO `product_variation_attributes` VALUES ('11', '6', '4', '2023-04-07 07:25:09', '2023-04-07 07:25:09');
INSERT INTO `product_variation_attributes` VALUES ('12', '6', '5', '2023-04-07 07:25:20', '2023-04-07 07:25:20');
INSERT INTO `product_variation_attributes` VALUES ('13', '5', '3', '2023-04-07 07:25:38', '2023-04-07 07:25:38');
INSERT INTO `product_variation_attributes` VALUES ('14', '5', '4', '2023-04-07 07:25:43', '2023-04-07 07:25:43');
INSERT INTO `product_variation_attributes` VALUES ('15', '4', '3', '2023-04-07 07:48:40', '2023-04-07 07:48:40');
INSERT INTO `product_variation_attributes` VALUES ('16', '4', '4', '2023-04-07 07:48:54', '2023-04-07 07:48:54');
INSERT INTO `product_variation_attributes` VALUES ('17', '3', '3', '2023-04-07 07:49:05', '2023-04-07 07:49:05');
INSERT INTO `product_variation_attributes` VALUES ('18', '2', '6', '2023-04-07 07:50:03', '2023-04-07 07:50:03');
INSERT INTO `product_variation_attributes` VALUES ('19', '7', '2', '2023-04-08 19:58:40', '2023-04-08 19:58:40');
INSERT INTO `product_variation_attributes` VALUES ('20', '7', '4', '2023-04-08 19:58:56', '2023-04-08 19:58:56');
INSERT INTO `product_variation_attributes` VALUES ('22', '9', '4', '2023-04-09 06:17:02', '2023-04-09 06:17:02');
INSERT INTO `product_variation_attributes` VALUES ('23', '9', '3', '2023-04-09 06:22:01', '2023-04-09 06:22:01');
INSERT INTO `product_variation_attributes` VALUES ('24', '11', '8', '2023-04-09 13:03:37', '2023-04-09 13:03:37');
INSERT INTO `product_variation_attributes` VALUES ('25', '11', '4', '2023-04-09 13:03:47', '2023-04-09 13:03:47');
INSERT INTO `product_variation_attributes` VALUES ('26', '14', '1', '2023-04-09 17:15:30', '2023-04-09 17:15:30');
INSERT INTO `product_variation_attributes` VALUES ('27', '14', '4', '2023-04-09 17:15:37', '2023-04-09 17:15:37');
INSERT INTO `product_variation_attributes` VALUES ('28', '12', '1', '2023-04-09 23:26:44', '2023-04-09 23:26:44');
INSERT INTO `product_variation_attributes` VALUES ('30', '12', '3', '2023-04-09 23:59:25', '2023-04-09 23:59:25');
INSERT INTO `product_variation_attributes` VALUES ('31', '10', '3', '2023-04-10 00:00:16', '2023-04-10 00:00:16');
INSERT INTO `product_variation_attributes` VALUES ('32', '10', '10', '2023-04-10 00:19:48', '2023-04-10 00:19:48');
INSERT INTO `product_variation_attributes` VALUES ('33', '9', '10', '2023-04-10 00:20:23', '2023-04-10 00:20:23');

-- ----------------------------
-- Table structure for product_variations
-- ----------------------------
DROP TABLE IF EXISTS `product_variations`;
CREATE TABLE `product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `price` double(15,4) DEFAULT '123.4567',
  `date_debut_discount` date DEFAULT NULL,
  `date_fin_discount` date DEFAULT NULL,
  `stock_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lenght` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_discount` double(15,4) DEFAULT NULL,
  `is_default` int NOT NULL DEFAULT '0',
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_variations
-- ----------------------------
INSERT INTO `product_variations` VALUES ('1', '300.0000', '2023-01-01', null, 'en_stock', '12', '5', '41', '2', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_A.jpgdd486bf5-032e-48b2-ad6f-fcdcf64e326c?alt=media&token=f3ded28a-a69a-4d27-a453-7d9a4bd5bfda;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_C.jpgb726f87a-899e-4b24-93c1-8c4d8000a8d8?alt=media&token=e03ba7ed-cb4f-4cbe-a901-5c806c44262f;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_B.jpg98346ed1-431f-4e07-9c62-24a21349b8ad?alt=media&token=94522022-5bce-41e4-9abb-37ef503d8504;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_D.jpgb29b1774-47f8-4ce6-90f1-d4b02016aca2?alt=media&token=91e9dabc-750d-4a0a-88e8-ef52e6dcdd2d;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_E.jpg9b0cd406-49c0-4c63-bcc4-315e81bc34e6?alt=media&token=43138dba-be04-4c8d-9115-9326107fd604;', '2023-04-05 12:53:26', '2023-04-05 14:02:32', '250.0000', '0', '1');
INSERT INTO `product_variations` VALUES ('2', '150.0000', null, null, 'en_stock', '12', '15', '5', '12', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F4727511_500_F.jpgbe21f48f-0ea3-4e1e-94dc-f37fa0c65e8a?alt=media&token=17e5999a-6042-4f7d-93d1-f84b4786d7db;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F4727511_500_D.jpg2dc24e74-9333-4ac5-acdc-1b386ad004a9?alt=media&token=015bb307-847e-46eb-884e-71e5a2936b3e;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F4727511_40_A.jpg2f9d31b0-646b-48e4-b322-60c03878942b?alt=media&token=3bd38025-1f17-4259-856b-378b06f10122;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F4727511_500_B.jpg330611f7-2782-4a17-9187-8d14e1f5c1dd?alt=media&token=283cb4a4-0814-475c-9393-0572510b07e1;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F4727511_500_C.jpg5d4c1d4e-8420-4567-aba1-528555269651?alt=media&token=adba3ce1-e1a2-43c3-8036-f087ce0ffb9a;', '2023-04-05 13:34:19', '2023-04-05 13:34:19', '90.0000', '0', '2');
INSERT INTO `product_variations` VALUES ('3', '200.0000', null, null, 'en_stock', '10', '12', '5', '3', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F3654061_500_B.jpgafad92f7-b779-4114-a68d-2747f946d290?alt=media&token=0f5f656f-2595-4908-a1b6-1cf70cb29ced;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F3654061_500_A.jpgb492d5f5-7140-44e0-9620-b3ee79ab68d0?alt=media&token=e3b6b25a-3b00-448a-8e1f-5cb4f8b8e4d7;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F3654061_500_H.jpga1d0bfd6-5365-4241-aa6b-b019f0382e86?alt=media&token=b1ff3692-1513-42b0-8482-299fe21c1072;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F3654061_500_C.jpg964f563e-61c7-4c7a-8c49-a22087993639?alt=media&token=05a24460-6043-444d-92ec-a14f30a8ee03;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F3654061_500_F.jpg4dac532f-6126-4fb5-9db9-7810238bd473?alt=media&token=33a572ff-0ac5-41bf-b826-9a44bf8bf3ea;', '2023-04-05 13:42:01', '2023-04-05 13:42:01', '150.0000', '0', '2');
INSERT INTO `product_variations` VALUES ('4', '239.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F6687769_500_C.jpg4b8ca1b7-05d3-4e9c-b95a-1196021d1fe0?alt=media&token=b47127f9-df15-44c8-9e86-e4caa185bb67;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F6687769_500_D.jpg9e3cd572-4b14-4d2c-88e9-5ae3046e5ca5?alt=media&token=2df9f448-16f5-47ae-9038-bf6e33b36586;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F6687769_500_B.jpgac9bacd4-8c53-4a35-b26a-065cf54ed9ac?alt=media&token=d08976f5-fa34-4f2f-9c2e-704e4d01f57f;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F6687769_500_E.jpgf29dc586-0ffa-441f-9845-c20165caa8c6?alt=media&token=95b5384d-88dc-4715-9d63-e082e81e9750;', '2023-04-05 14:23:38', '2023-04-05 14:23:38', '147.0000', '0', '2');
INSERT INTO `product_variations` VALUES ('5', '325.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22589673_500_D.jpgdb2da7c7-4100-47b7-a181-92c16e5218bb?alt=media&token=050f9ebc-3499-4be7-90ee-f706b5d02424;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22589673_500_B.jpgc73404b8-9056-489e-8e79-d7cc325b5171?alt=media&token=3bd45bdf-9917-4ed1-9ed3-aff9f97c9961;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22589673_500_A.jpga17293bf-3a72-4bd6-908c-f3175ff0e4be?alt=media&token=d9d4299f-815f-4482-8229-256c0825bd20;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22589673_500_E.jpgcabdbe5c-387c-4f99-b63d-265b2e3efcb6?alt=media&token=d20749b7-4b12-4230-8e47-902d406297a3;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22589673_500_C.jpg9e48915d-8a62-4493-b23c-a9bcca05889e?alt=media&token=d1911bb1-2ecd-411e-ab79-e959f593a4f6;', '2023-04-05 14:29:39', '2023-04-05 14:29:39', '250.0000', '0', '3');
INSERT INTO `product_variations` VALUES ('6', '210.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119286_500_C.jpgb7dabfd6-287a-45c8-b46b-bd83decfe722?alt=media&token=a38fc290-5e2e-49c8-8792-7484ad0b3973;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119286_500_A.jpg0de648eb-6eaa-4f87-8600-ad0eaad73761?alt=media&token=1b60adf7-4049-4507-beb2-3bc221725794;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119286_500_B.jpgccb94fb3-04d7-40b2-b02a-9369b1cba856?alt=media&token=32ef5859-1814-43ea-85c9-038296f89faf;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119286_500_D.jpgac86c324-9231-4408-8aef-a201042b6d09?alt=media&token=19704d01-22fc-4ea2-a1a7-f2230ccd99d6;', '2023-04-05 14:36:29', '2023-04-05 14:36:29', '190.0000', '0', '3');
INSERT INTO `product_variations` VALUES ('7', '100.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24864425_500_D.jpg4ef4cb10-65a5-4014-8639-d936e8cf201b?alt=media&token=4afae9d0-f051-47ef-a7f9-4378f59a9c58;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24864425_350_E.jpge02573d2-9770-4205-a794-407dc06eb45c?alt=media&token=cbc4a014-8ed2-431b-b5ec-b3c504ed9c62;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24864425_500_A.jpgdc62f920-5d47-4b54-a98b-d3f106fc6511?alt=media&token=b697adcd-6120-4a52-8990-2d4bbc49c44c;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24864425_350_C.jpgb6deb2e1-46db-466d-8633-66ea96553ae3?alt=media&token=65e7f62d-64f9-49d3-a74d-d818dee30ca3;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24864425_500_B.jpg9847593f-9fc8-4c77-92ca-fd4bb6c7508e?alt=media&token=f1b5e06f-aaf9-4de5-9fdb-75e32460e636;', '2023-04-08 19:58:30', '2023-04-08 19:58:30', null, '0', '4');
INSERT INTO `product_variations` VALUES ('8', '110.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119285_500_B.jpg18ee02e4-1bc0-468a-8ba8-0e6c8caf7939?alt=media&token=6d8db985-7a55-434b-a570-94f069ac6649;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119285_500_D.jpgf24de4ac-3543-43da-b77c-1c83d087ab3a?alt=media&token=b2074256-c46f-49e7-84c8-082a49ccbe62;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119285_500_E.jpg28ca17fa-85ca-4f97-84dc-a2ea68b74da8?alt=media&token=3e93a48f-ddca-4fe5-b7cb-2412d7427727;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119285_500_C.jpgf3ff69fb-7f24-451d-9960-9d374096f646?alt=media&token=506f770b-6dc0-4a1b-b65a-03ceaee42a7b;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24119285_500_A.jpg33ab19cf-8bf6-4e08-bec4-840769087049?alt=media&token=af885a18-b0ef-4255-ad60-5b3310d6cf1f;', '2023-04-08 20:35:09', '2023-04-08 20:35:09', null, '0', '4');
INSERT INTO `product_variations` VALUES ('9', '110.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21182717_500_E.jpg987861c5-9086-4fb9-b3a8-756a6d04b792?alt=media&token=3259c2e9-f518-4917-817a-bf8a19ba0bcc;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21182717_500_B.jpgc7ab20c6-c895-470d-8f73-8a01f16a0e2a?alt=media&token=2f31a287-3fd2-4aca-ba35-e3ffd3883d34;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21182717_500_D.jpgcc2937a2-82b1-47a5-86bb-8fe6decca5c0?alt=media&token=01990ce1-76b9-4916-9948-fe210b20a9e5;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21182717_500_C.jpg2ea4c92d-e4a4-4f0f-a213-fd98c07bf03a?alt=media&token=9d4e245e-ce6f-4a05-828d-0ffb835bf26d;', '2023-04-09 06:16:33', '2023-04-09 06:16:33', null, '0', '5');
INSERT INTO `product_variations` VALUES ('10', '200.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F16259693_500_A.jpg2b5b2d3b-405f-4932-87e4-802255989fc3?alt=media&token=7ade12aa-910a-4215-a7eb-a35541ad73b7;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F16259693_500_B.jpg0c546f81-dea9-4c21-b2fe-e5decce9db18?alt=media&token=2b757a28-5273-487d-9349-dd17f3b0dd8f;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F16259693_500_E.jpgf1eea296-e6ff-4d70-b8a2-e511f6883b12?alt=media&token=a084a9e9-eca4-4c4b-a062-0069fb3e2d36;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F16259693_500_C.jpg7860a0e8-1eec-492b-8146-272e10a6a629?alt=media&token=f759acd2-8617-4ff7-8802-877db809fdf0;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F16259693_500_D.jpgbf54b28d-4d48-4ac0-8c2f-af1812b734be?alt=media&token=3eada744-49bf-4281-a116-2d6ac873acb5;', '2023-04-09 12:57:34', '2023-04-09 12:57:34', null, '0', '6');
INSERT INTO `product_variations` VALUES ('12', '200.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21325144_500_B.jpg4ccd3707-1ed4-4252-9cfa-0d59a07d414d?alt=media&token=0131854b-bbd6-441b-b1f6-c43ff3499a35;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21325144_500_A.jpgd156e999-4a98-4300-af17-b1418d0057e1?alt=media&token=1fd6d405-6379-41d1-a9ec-30a494d65ac6;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21325144_500_E.jpgbfa0633a-17cc-4772-a363-88f33049e56e?alt=media&token=0b7850e0-aa69-4ae4-b15c-55d8dd2510b5;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21325144_500_D.jpgee6b4705-e093-4550-bb12-7f62939d1c03?alt=media&token=1ab8b70a-103c-435f-8466-a553a2f57498;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F21325144_500_C.jpge8452e98-fcc2-4418-a6b3-8d25e381cc73?alt=media&token=2cc8d70d-a208-4601-af77-cac5e6476afb;', '2023-04-09 13:34:48', '2023-04-09 13:34:48', null, '0', '6');
INSERT INTO `product_variations` VALUES ('14', '147.0000', null, null, 'en_stock', '10', null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22588600_500_C.jpg23ebd26c-3b34-4a96-bf39-9f813c69ec51?alt=media&token=0d58d64c-6ac6-4438-966e-6bb368d750c8;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22588600_500_D.jpg500c960b-4dfc-40f8-a76c-695776caef88?alt=media&token=a09a1a42-0c50-4664-ae24-4e8622104e4e;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22588600_500_B.jpgda98cb5c-0e18-4482-bab1-ba86e0c9d20a?alt=media&token=df75ec50-ad24-4ef5-af09-6af04b3fb272;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F22588600_500_E.jpge4472187-f837-430b-9a2a-e004d3521a2d?alt=media&token=b9e7e84f-8c38-419a-b375-51aa5b7337b5;', '2023-04-09 17:15:21', '2023-04-09 23:49:20', null, '0', '7');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int unsigned DEFAULT NULL,
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `is_searchable` tinyint NOT NULL DEFAULT '0',
  `is_show_on_list` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_stock',
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Adidas Sportswear VL COURT 2.0', 'Il y a de la nouveauté du côté des sneakers chez Adidas Sportswear ! Avec sa tige en cuir et synthétique et son coloris blanc, elle se porte facilement au quotidien. La Vl Court 2.0 comporte une doublure en textile. Sa semelle extérieure est construite en synthétique. Alors, vous lui dites oui ?', 'Tige : Cuir et Synthétique\nDoublure : Textile\nSemelle int. : Textile\nSemelle ext. : Synthétique', 'published', '', null, '0', '0', '0', '0', '0', null, '3', '5', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-05 12:49:28', '2023-04-05 12:49:28', '', '1');
INSERT INTO `products` VALUES ('2', 'adidas Originals Z', 'Cette basket adidas Originals interpellera les addicts de streetwear par sa silhouette urbaine. Sa tige en de couleur blanche met en évidence son look unique. La Gazelle comporte une doublure en textile. Sa semelle extérieure est en caoutchouc. Tout bonnement incontournable.', 'Tige : Cuir\nDoublure : Textile\nSemelle int. : Textile\nSemelle ext. : Caoutchouc', 'published', '', null, '0', '0', '0', '0', '0', null, '3', '5', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-05 13:33:31', '2023-04-05 13:33:31', '', '1');
INSERT INTO `products` VALUES ('3', 'New Balance 327', 'A 200% sportswear, cette basket basse New Balance est une essentielle. Avec sa tige en cuir et textile et son coloris noir, elle se porte facilement au quotidien. Doublée en textile, on se sent bien du matin au soir dans la 327. Pleine de caractère, comment y résisterait-on ?', 'Tige : Cuir/textile\nDoublure : Textile\nSemelle int. : Textile\nSemelle ext. : Caoutchouc', 'published', '', null, '0', '0', '0', '0', '0', null, '2', '5', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-05 14:25:46', '2023-04-05 14:25:46', '', '1');
INSERT INTO `products` VALUES ('4', 'new balance 327', 'Découvrez pour cet été ce modèle New Balance 327. Cet article chaussures baskets, signé New Balance, a tout pour plaire ! Caractéristiques du produit : couleur : blanc, noir, matière : textile, synthétique, fermeture : lacets, saison : printemps Été, collection : 2023, genre : unisexe, age : enfant, matière semelle extérieure : caoutchouc, doublure chaussures : textile, hauteur de chaussures : basses, hauteur de talon : plats, caractéristique spéciale : respirant, léger, largeur de chaussures : normale, couleur marque : white / black, matière semelle intérieure : textile.', 'Tige : Synthétique', 'published', '', null, '0', '0', '0', '0', '0', null, '18', '6', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-08 19:56:45', '2023-04-08 20:48:37', '', '2');
INSERT INTO `products` VALUES ('5', 'veja', 'Cette basket basse griffée Veja est celle à avoir. Sa couleur dorée, sa tige en cuir et ses finitions impeccables en font un produit de premier choix. Petite info qui a son importance : la doublure est fabriquée en textile synthétique et la semelle est en caoutchouc. Un modèle qui comblera les fans de sneakers.', 'Tige : Cuir\nDoublure : Textile synthétique\nSemelle int. : Synthétique\nSemelle ext. : Caoutchouc', 'published', '', null, '0', '0', '0', '0', '0', null, '3', '7', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-08 20:58:51', '2023-04-08 20:58:51', '', '2');
INSERT INTO `products` VALUES ('6', 'kickers tyl beige', 'Hausse des températures prévue cette saison sur l\'échelle de la mode avec la boot Tyl présentée par Kickers. Sa tige en cuir lui apporte tout son cachet. Côté confort, elle a été dotée d\'une semelle extérieure en caoutchouc souple. Elle vous accompagnera tout au long de la saison.', 'Tige : Cuir\nDoublure : Cuir\nSemelle int. : Cuir\nSemelle ext. : Caoutchouc\nHauteur du talon : 2.0cm\nHauteur de la tige : 10.0cm', 'published', '', null, '0', '0', '0', '0', '0', null, '3', '8', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-09 12:42:16', '2023-04-09 12:42:39', '', '1');
INSERT INTO `products` VALUES ('7', 'tylburis', 'Kickers expose son savoir-mode, cette fois-ci par le biais d\'une boot destinée aux filles qui aiment être en accord avec la tendance. Sa tige en cuir noir révèle tout son potentiel. Pour compléter le tableau, elle est dotée d\'une semelle extérieure en synthétique. Votre enfant va l\'adorer !', 'Tige : Cuir\nDoublure : Cuir\nSemelle int. : Cuir\nSemelle ext. : Synthétique', 'published', '', null, '0', '0', '0', '0', '0', null, '23', '8', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-04-09 17:08:26', '2023-04-09 17:08:26', '', '1');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES ('1', '1', '1', '1.00', 'Dolorem et quia vero perferendis incidunt tempore ut. Doloremque ut at quis sit odio nam a ut.', 'published', '2023-03-08 20:07:51', '2023-03-08 20:07:51');
INSERT INTO `reviews` VALUES ('2', '1', '1', '3.00', 'Beatae porro explicabo est facere eligendi. Libero iusto consequatur dicta nulla repudiandae.', 'published', '2023-03-08 20:07:52', '2023-03-08 20:07:52');
INSERT INTO `reviews` VALUES ('3', '1', '1', '5.00', 'Non alias voluptate sint quibusdam vero eveniet rerum. Consequatur eligendi quia a sint atque.', 'published', '2023-03-08 20:07:52', '2023-03-08 20:07:52');
INSERT INTO `reviews` VALUES ('4', '1', '1', '3.00', 'Velit aspernatur quidem repellendus aut. Nihil ipsum dolorem nobis autem.', 'published', '2023-03-08 20:07:52', '2023-03-08 20:07:52');
INSERT INTO `reviews` VALUES ('5', '1', '1', '4.00', 'Mollitia qui nisi adipisci. Quis est natus ut nulla. Tempore totam illum odio rerum.', 'published', '2023-03-08 20:07:52', '2023-03-08 20:07:52');

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slides_name_unique` (`name`),
  UNIQUE KEY `slides_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of slides
-- ----------------------------
INSERT INTO `slides` VALUES ('1', 'Home Slideshow', 'home-slideshow', 'Carousel de la page d\'acceuille', 'published', '2023-03-13 12:28:30', '2023-03-13 12:28:30');
INSERT INTO `slides` VALUES ('2', 'Home Banner One', 'home-banner-one', 'Bannière première de la page d\'acceuille', 'published', '2023-03-13 12:30:00', '2023-03-13 12:30:00');
INSERT INTO `slides` VALUES ('3', 'Home Banner Top', 'banner-top', 'Banner top du site web', 'published', '2023-03-14 11:57:44', '2023-03-14 11:57:44');
INSERT INTO `slides` VALUES ('4', 'Home Banner Two', 'home-banner-two', 'Banner au milieu de la page d\'acceuil', 'published', '2023-03-14 12:06:16', '2023-03-14 12:06:54');

-- ----------------------------
-- Table structure for slides_items
-- ----------------------------
DROP TABLE IF EXISTS `slides_items`;
CREATE TABLE `slides_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` bigint NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of slides_items
-- ----------------------------
INSERT INTO `slides_items` VALUES ('1', '1', 'hurry_up_2.jpg', 'hurry_up_2', 'all_sneakers', 'lets_go', '/shop', '1', '2023-03-14 11:26:34', '2023-03-27 22:29:23', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fslides%2F4.jpgf955b698-b77d-4924-b78f-7926fd7976de?alt=media&token=e19327f7-d2f0-4da7-a139-c2889ab76e45', 'get_50_off');
INSERT INTO `slides_items` VALUES ('2', '1', 'hurry_up.jpg', 'hurry_up', 'all_sneakers', 'lets_go', '/shop', '2', '2023-03-14 11:31:00', '2023-03-27 22:27:59', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fslides%2F2.jpg04e2f134-b5c2-40a8-84a8-f878ee4f5dc3?alt=media&token=f8ecdafc-21a4-48ad-be11-9d2c12a54ef7', 'get_50_off');
INSERT INTO `slides_items` VALUES ('3', '2', 'find_the_perfect_gift.jpg', 'find_the_perfect_gift', 'take_the_quiz_desc', '', '/shop', null, '2023-03-14 11:47:12', '2023-03-29 19:19:27', null, 'take_the_quiz');
INSERT INTO `slides_items` VALUES ('4', '3', 'banner_top_note.jpg', 'banner_top_note', 'banner_top_desc', 'go', '/shop', null, '2023-03-14 12:30:50', '2023-03-27 22:33:44', null, 'banner_top_sub');
INSERT INTO `slides_items` VALUES ('5', '4', 'banner_action_one_title.jpg', 'banner_action_one_title', 'banner_action_one_desc', 'banner_action_one_btn', '/shop', '1', '2023-03-14 12:32:31', '2023-03-27 22:34:40', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fslides%2Fbanner_two.jpgbce5ebbd-3b88-4799-a3fd-8f2dc3d941e7?alt=media&token=26886c9f-47d4-4d4c-8119-89aea113ac70', 'banner_two_sub');
INSERT INTO `slides_items` VALUES ('6', '1', null, 'hurry_up_3', 'all_sneakers', 'lets_go', '/shop', '3', '2023-03-27 18:43:21', '2023-03-29 19:19:02', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fslides%2Fshower.jpg4b8a5aa2-a05b-4346-9022-9462e234a2ac?alt=media&token=d5219def-5206-44b6-81d2-4bebbe12983d', 'get_50_off');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('27', 'sylvaino@gmail.com', null, '$2y$10$R.DE7yIt3cG.RXjgMe6EOOUZQALQd91cBBP7gEr/emwlmKQkBaxZi', null, '2023-02-25 18:17:01', '2023-02-25 18:17:01', null, null, 'sylvaino', null, '0', '0', null, null, null, '2');
INSERT INTO `users` VALUES ('34', 'sylvaincodeur22@gmail.com', null, 'secret22', null, '2023-02-26 19:28:52', '2023-03-12 12:45:12', null, null, 'hahahaha', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('36', 'sylvaincodeur221@gmail.com', null, 'secret22', null, '2023-02-26 19:34:08', '2023-02-26 19:34:08', null, null, 'sylvaincodes11', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('38', 'sylvaincodeur222@gmail.com', null, '$2y$10$R.DE7yIt3cG.RXjgMe6EOOUZQALQd91cBBP7gEr/emwlmKQkBaxZi', null, '2023-02-27 09:00:16', '2023-02-27 09:00:16', null, null, 'sylvaincodes222', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('39', 'sandra.wunsch@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:43', '2023-02-27 17:14:43', 'Madalyn', 'Strosin', 'Buck', '136646129', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('40', 'russel.witting@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:44', '2023-02-27 17:14:44', 'Darius', 'Bashirian', 'Leonard', '465666167', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('41', 'wstamm@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:44', '2023-02-27 17:14:44', 'Clemens', 'Nader', 'Rocky', '49561', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('42', 'bins.pauline@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:44', '2023-02-27 17:14:44', 'Matteo', 'Bogisich', 'Adrien', '7150', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('43', 'vluettgen@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:45', '2023-02-27 17:14:45', 'Dulce', 'Mills', 'Chad', '3731338', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('44', 'kailey56@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:45', '2023-02-27 17:14:45', 'Hermina', 'Kertzmann', 'Marina', '3391088', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('45', 'margaret.collins@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:45', '2023-02-27 17:14:45', 'Serena', 'Cassin', 'Kellie', '1121', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('46', 'rex22@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:45', '2023-02-27 17:14:45', 'Roosevelt', 'McKenzie', 'Sydni', '753383805', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('47', 'wcormier@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:45', '2023-02-27 17:14:45', 'Leanne', 'Lakin', 'Keely', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('48', 'stiedemann.elwin@domain.com', null, '$2y$10$U5nB3JlxQaQr0GyJddzS1OcUa6xC8pp.QRMEcuiihijNm.B4N/F7q', null, '2023-02-27 17:14:46', '2023-02-27 17:14:46', 'Bernadette', 'Hettinger', 'Robyn', '589563971', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('49', 'rrolfson@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:39', '2023-02-27 17:24:39', 'Moshe', 'Brekke', 'Jocelyn', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('50', 'zhuel@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:40', '2023-02-27 17:24:40', 'Dell', 'Ratke', 'Emmalee', '43616', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('51', 'gleason.dylan@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:40', '2023-02-27 17:24:40', 'Sydnie', 'Veum', 'Earl', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('52', 'claud.sawayn@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:40', '2023-02-27 17:24:40', 'Shanel', 'Windler', 'Gregg', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('53', 'ddeckow@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:40', '2023-02-27 17:24:40', 'Chelsie', 'Cremin', 'Alford', '328', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('54', 'christa06@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:40', '2023-02-27 17:24:40', 'Terry', 'Mraz', 'Jaylen', '7138', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('55', 'barry66@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:40', '2023-02-27 17:24:40', 'Carmel', 'Herzog', 'Eileen', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('56', 'hamill.audie@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:41', '2023-02-27 17:24:41', 'Cary', 'Emmerich', 'George', '319', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('57', 'lupe24@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:41', '2023-02-27 17:24:41', 'Gillian', 'Zemlak', 'Twila', '63095', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('58', 'metz.virginia@domain.com', null, '$2y$10$XC/jlRqeGvqVLYeJaE8GEusvdVMx7HDiRj/mryi/Z76hsTum.6TDK', null, '2023-02-27 17:24:41', '2023-02-27 17:24:41', 'Deondre', 'Kling', 'Bert', '35081', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('59', 'wilderman.lloyd@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:25:59', '2023-02-27 17:25:59', 'Lottie', 'Hayes', 'Pablo', '46', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('60', 'eusebio.bartell@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:25:59', '2023-02-27 17:25:59', 'Rhett', 'Casper', 'Estell', '18', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('61', 'christy.stokes@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:25:59', '2023-02-27 17:25:59', 'Lucinda', 'Gutkowski', 'Alexzander', '2727852', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('62', 'jaclyn.mckenzie@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:25:59', '2023-02-27 17:25:59', 'Kay', 'Strosin', 'Gracie', '490653', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('63', 'jschuster@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:25:59', '2023-02-27 17:25:59', 'Berniece', 'Kuvalis', 'Alia', '6790200', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('64', 'hirthe.winnifred@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:26:00', '2023-02-27 17:26:00', 'Sonya', 'Lemke', 'Lucius', '2595', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('65', 'ritchie.tyra@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:26:00', '2023-02-27 17:26:00', 'Gillian', 'Thompson', 'Kolby', '20', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('66', 'mafalda79@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:26:00', '2023-02-27 17:26:00', 'Trace', 'Hauck', 'Devon', '1984589', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('67', 'cleve.medhurst@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:26:00', '2023-02-27 17:26:00', 'Olin', 'Marvin', 'Angie', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('68', 'green.kali@domain.com', null, '$2y$10$oRT7MqCQxEfxIqFOmsSDmey5uPvWG.GXoK9fGc9dXqSKZeA/jEj..', null, '2023-02-27 17:26:01', '2023-02-27 17:26:01', 'Dax', 'Hermann', 'Alphonso', '102982', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('69', 'augusta04@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:31', '2023-02-27 17:26:31', 'Toni', 'Spencer', 'Brain', '33142', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('70', 'jerad48@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:31', '2023-02-27 17:26:31', 'Salvador', 'Hills', 'Virginie', '5842629', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('71', 'lfeest@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:31', '2023-02-27 17:26:31', 'Geovanny', 'Bode', 'Lemuel', '855941120', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('72', 'vtoy@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:32', '2023-02-27 17:26:32', 'Rudolph', 'Bernier', 'Hertha', '228815', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('73', 'zakary.stracke@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:32', '2023-02-27 17:26:32', 'Peter', 'Haley', 'Andreane', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('74', 'maryam78@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:32', '2023-02-27 17:26:32', 'Kayla', 'Cummerata', 'Rossie', '36', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('75', 'mclaughlin.tiana@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:32', '2023-02-27 17:26:32', 'Reilly', 'Nikolaus', 'Enrico', '2971063', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('76', 'hahn.desmond@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:32', '2023-02-27 17:26:32', 'David', 'Spencer', 'Audrey', '17', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('77', 'kianna98@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:33', '2023-02-27 17:26:33', 'Gerhard', 'Ernser', 'Jordan', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('78', 'lavina94@domain.com', null, '$2y$10$6EJjc1G2o.w/EpGEwEYXp.B0MWyd6/8bcj4MtylGDtvrWhdGXXdUy', null, '2023-02-27 17:26:33', '2023-02-27 17:26:33', 'Marquis', 'Orn', 'Dalton', '6197', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('79', 'lenna56@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:56', '2023-02-27 17:41:56', 'Grace', 'Schowalter', 'Cameron', '20033', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('80', 'leda20@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:56', '2023-02-27 17:41:56', 'Lynn', 'Gibson', 'Emile', '2612235', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('81', 'gibson.karelle@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:56', '2023-02-27 17:41:56', 'Emmalee', 'Jerde', 'Reinhold', '445', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('82', 'jedediah19@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:56', '2023-02-27 17:41:56', 'Jettie', 'Hirthe', 'Sigurd', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('83', 'rico69@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:57', '2023-02-27 17:41:57', 'Garrett', 'Lind', 'Madisen', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('84', 'bmann@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:57', '2023-02-27 17:41:57', 'Larry', 'Stanton', 'Estel', '21380721', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('85', 'doyle.orlo@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:57', '2023-02-27 17:41:57', 'Evelyn', 'Davis', 'Jean', '24', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('86', 'alberta.emmerich@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:57', '2023-02-27 17:41:57', 'Hollie', 'Hoppe', 'Shawna', '76265', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('87', 'bridget.ullrich@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:57', '2023-02-27 17:41:57', 'Ulises', 'Wiegand', 'Ezra', '35', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('88', 'calista57@domain.com', null, '$2y$10$hQNfx7giLf.Ya3edfV9c0.kAvwbEwvmmt2n1g3szy6aXzd9M6COKK', null, '2023-02-27 17:41:58', '2023-02-27 17:41:58', 'Marquis', 'Ledner', 'Durward', '56685', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('89', 'jayne.crona@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:15', '2023-02-27 17:42:15', 'Oda', 'Russel', 'Marcelle', '82718426', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('90', 'davis.parker@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:15', '2023-02-27 17:42:15', 'Brycen', 'Mosciski', 'Icie', '8353', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('91', 'hyatt.hattie@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:15', '2023-02-27 17:42:15', 'Elaina', 'Schultz', 'Ignacio', '250', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('92', 'luettgen.samanta@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:15', '2023-02-27 17:42:15', 'Makenna', 'Jacobs', 'Rosalinda', '5645', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('93', 'elbert.pfannerstill@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:16', '2023-02-27 17:42:16', 'Wilma', 'Ullrich', 'Natalie', '16', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('94', 'amie.zieme@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:16', '2023-02-27 17:42:16', 'Chaim', 'Orn', 'Brigitte', '28209', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('95', 'spencer.miracle@domain.com', null, '$2y$10$lHMuydfDrdseH7BF83NfguY/E6NCkQ6TGslO3r2SH4W.SfiXYcnty', null, '2023-02-27 17:42:16', '2023-02-27 17:42:16', 'Shyann', 'Greenfelder', 'Elton', '46455', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('97', 'kunze.margarete@domain.com', null, '$2y$10$gwlGYesHsot2wkcm6EU3s.UJDhnOWOogD.l25GonF0hydYi1uJC7G', null, '2023-02-27 17:42:27', '2023-02-27 17:42:27', 'Pinkie', 'Moen', 'Elliot', '17015715', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('98', 'hegmann.merlin@domain.com', null, '$2y$10$gwlGYesHsot2wkcm6EU3s.UJDhnOWOogD.l25GonF0hydYi1uJC7G', null, '2023-02-27 17:42:27', '2023-02-27 17:42:27', 'Cathrine', 'Funk', 'Sadie', '246', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('99', 'birdie05@domain.com', null, '$2y$10$gwlGYesHsot2wkcm6EU3s.UJDhnOWOogD.l25GonF0hydYi1uJC7G', null, '2023-02-27 17:42:27', '2023-02-27 17:42:27', 'Camila', 'Herzog', 'Malcolm', '77', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('101', 'johnson.michale@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:51', '2023-02-27 17:42:51', 'Hillard', 'Ward', 'Isidro', '42', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('102', 'igoodwin@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:51', '2023-02-27 17:42:51', 'Jules', 'Kris', 'Joany', '292', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('103', 'bboyer@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:51', '2023-02-27 17:42:51', 'Aimee', 'Williamson', 'Eloise', '272048', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('104', 'deshaun79@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:51', '2023-02-27 17:42:51', 'Herta', 'Denesik', 'Pearlie', '108130', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('105', 'eweber@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:51', '2023-02-27 17:42:51', 'Omer', 'Rogahn', 'Flo', '509908', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('106', 'zgleason@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:52', '2023-02-27 17:42:52', 'Winston', 'Muller', 'Carlotta', '376', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('107', 'easton.lakin@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:52', '2023-02-27 17:42:52', 'Lelah', 'Kohler', 'Jacquelyn', '135', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('108', 'deontae.zemlak@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:53', '2023-02-27 17:42:53', 'Lonny', 'Kilback', 'Jewel', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('109', 'wjaskolski@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:53', '2023-02-27 17:42:53', 'Chanelle', 'Spinka', 'Myriam', '65010', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('110', 'rogahn.christa@domain.com', null, '$2y$10$foeZHwpOHQ1O/BaeFTRgG.awBr7cO1X.5svz./5OYyjNDmak9IFJK', null, '2023-02-27 17:42:53', '2023-02-27 17:42:53', 'Zachary', 'Kirlin', 'Lexie', '28256', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('111', 'aryanna40@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:45', '2023-02-27 20:06:45', 'Lambert', 'Dickinson', 'Jesus', '303223', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('112', 'neva32@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:45', '2023-02-27 20:06:45', 'Dandre', 'Gorczany', 'Jorge', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('113', 'willard.lueilwitz@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:45', '2023-02-27 20:06:45', 'Kenneth', 'Bergnaum', 'Chanelle', '352710', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('114', 'eileen.nienow@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:45', '2023-02-27 20:06:45', 'Josie', 'Paucek', 'Jason', '42', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('115', 'quinton63@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:45', '2023-02-27 20:06:45', 'Shaina', 'Keebler', 'Christelle', '48407', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('116', 'enrico.bosco@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:45', '2023-02-27 20:06:45', 'Dillan', 'Kilback', 'Jeanette', '175', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('117', 'omacejkovic@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:46', '2023-02-27 20:06:46', 'Asha', 'Collins', 'Micaela', '175', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('118', 'champlin.francisca@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:46', '2023-02-27 20:06:46', 'Easton', 'Gutkowski', 'Faustino', '7004', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('119', 'qkohler@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:47', '2023-02-27 20:06:47', 'Lance', 'Little', 'Loraine', '1320', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('120', 'stiedemann.roy@domain.com', null, '$2y$10$lXfUpftneuyjmPPMt606pOsqPW58NwmmcpySIBJ68m6yefXNTO5iu', null, '2023-02-27 20:06:47', '2023-02-27 20:06:47', 'Lillie', 'Murray', 'Rory', '24436153', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('121', 'flo69@domain.com', null, '$2y$10$Lw8gmq4yqAKMFc0vIqyZmO3IyC3noJwHvvPj06w0ILC.ymzhcUbA6', null, '2023-02-27 20:07:15', '2023-02-27 20:07:15', 'Noe', 'Powlowski', 'Aurore', '283', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('122', 'brennan22@domain.com', null, '$2y$10$Lw8gmq4yqAKMFc0vIqyZmO3IyC3noJwHvvPj06w0ILC.ymzhcUbA6', null, '2023-02-27 20:07:15', '2023-02-27 20:07:15', 'Loren', 'Steuber', 'Zoie', '588185041', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('123', 'yadira.nikolaus@domain.com', null, '$2y$10$Lw8gmq4yqAKMFc0vIqyZmO3IyC3noJwHvvPj06w0ILC.ymzhcUbA6', null, '2023-02-27 20:07:15', '2023-02-27 20:07:15', 'Demarcus', 'Swift', 'Cathryn', '33', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('125', 'jayme.bernier@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:22', '2023-02-27 20:07:22', 'Constance', 'Beahan', 'Athena', '55223', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('126', 'archibald52@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:22', '2023-02-27 20:07:22', 'Cheyanne', 'Green', 'Tom', '71195', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('127', 'timothy.stanton@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:22', '2023-02-27 20:07:22', 'Cynthia', 'Monahan', 'Jerrod', '363', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('128', 'friesen.reyna@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:22', '2023-02-27 20:07:22', 'Orlo', 'Littel', 'Alexandra', '493280', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('129', 'dorcas17@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:23', '2023-02-27 20:07:23', 'Casey', 'Lynch', 'Mason', '2849469', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('130', 'lockman.zoe@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:23', '2023-02-27 20:07:23', 'Rahsaan', 'Kemmer', 'Theron', '1504215', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('131', 'jacobson.stevie@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:23', '2023-02-27 20:07:23', 'Sarina', 'Quigley', 'Theo', '5814582', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('132', 'thansen@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:23', '2023-02-27 20:07:23', 'Idell', 'Lynch', 'Alda', '321', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('133', 'abbie76@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:23', '2023-02-27 20:07:23', 'Maxwell', 'Lubowitz', 'Rosendo', '37', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('134', 'zmills@domain.com', null, '$2y$10$FLjp7wRDp/M9sWhYlCK.cO6ltUlRiJItQvuIaxLeB57ACeM.1HSHe', null, '2023-02-27 20:07:23', '2023-02-27 20:07:23', 'Houston', 'Jenkins', 'Angela', '453352', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('135', 'echamplin@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:45', '2023-02-27 20:07:45', 'Aidan', 'White', 'Ella', '2502055', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('136', 'dashawn78@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:46', '2023-02-27 20:07:46', 'Garry', 'Nitzsche', 'Anjali', '1157', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('137', 'judy53@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:46', '2023-02-27 20:07:46', 'Buster', 'Botsford', 'Victor', '1444', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('138', 'kelvin.bosco@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:46', '2023-02-27 20:07:46', 'Victoria', 'Schamberger', 'Clara', '36', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('139', 'steuber.peggie@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:47', '2023-02-27 20:07:47', 'Aliyah', 'Kohler', 'Coy', '4075', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('140', 'zrath@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:47', '2023-02-27 20:07:47', 'Jamarcus', 'Walsh', 'Omer', '35', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('141', 'elwyn.rath@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:47', '2023-02-27 20:07:47', 'Kendall', 'Anderson', 'Marjorie', '1908', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('142', 'marcelo69@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:48', '2023-02-27 20:07:48', 'Deshawn', 'Yost', 'Jedidiah', '14199', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('143', 'mhuels@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:48', '2023-02-27 20:07:48', 'Rebekah', 'Larson', 'Leonel', '67108', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('144', 'magali87@domain.com', null, '$2y$10$L2Vh9ZOb5T04FVhpKdEgSeCfXGam6xbfU6.dHIyntDQAd/bnbvEHu', null, '2023-02-27 20:07:48', '2023-02-27 20:07:48', 'Jodie', 'Maggio', 'Will', '884630', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('145', 'imorissette@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:49', '2023-02-27 20:09:49', 'Abbigail', 'Glover', 'Frank', '387116', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('146', 'dubuque.keyon@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:49', '2023-02-27 20:09:49', 'Javier', 'Bogisich', 'Mandy', '7073385', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('147', 'mlangosh@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:49', '2023-02-27 20:09:49', 'Darien', 'Crist', 'Asia', '62918', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('148', 'sigurd.weissnat@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:49', '2023-02-27 20:09:49', 'Kariane', 'Hoeger', 'Jaquan', '322690000', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('149', 'janice17@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:49', '2023-02-27 20:09:49', 'Cecelia', 'Waelchi', 'Angelo', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('150', 'ondricka.alaina@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:50', '2023-02-27 20:09:50', 'Natalia', 'Deckow', 'Brad', '267216980', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('151', 'plangworth@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:50', '2023-02-27 20:09:50', 'Verner', 'Schumm', 'Gunner', '170', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('152', 'summer16@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:50', '2023-02-27 20:09:50', 'Marianne', 'Heidenreich', 'Bernadine', '18', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('153', 'gdamore@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:51', '2023-02-27 20:09:51', 'Leola', 'Nicolas', 'Karianne', '359123', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('154', 'alphonso.abbott@domain.com', null, '$2y$10$gGGF6k0ObiE0EKY0rvx3vOxG5oAdfObBJOPmSwvQc0JTjzh2FobQO', null, '2023-02-27 20:09:51', '2023-02-27 20:09:51', 'Nona', 'Kuvalis', 'Mohamed', '604', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('155', 'telly.schmeler@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:45', '2023-02-27 20:10:45', 'Domenico', 'Klein', 'Franco', '53176524', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('156', 'kquigley@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:45', '2023-02-27 20:10:45', 'Deion', 'Bauch', 'Darlene', '30643573', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('157', 'reina.bechtelar@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:45', '2023-02-27 20:10:45', 'Lynn', 'Mayer', 'Mabelle', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('158', 'lynch.kamille@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:45', '2023-02-27 20:10:45', 'Marcia', 'Thiel', 'Ines', '50700462', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('159', 'qpfeffer@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:46', '2023-02-27 20:10:46', 'Malcolm', 'Ledner', 'Dexter', '172549993', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('160', 'kirk.paucek@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:46', '2023-02-27 20:10:46', 'Melvin', 'Cremin', 'Luna', '59973', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('161', 'lynn.bins@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:46', '2023-02-27 20:10:46', 'Toby', 'Lynch', 'Ila', '786', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('162', 'vincenza.schultz@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:46', '2023-02-27 20:10:46', 'Noble', 'Parker', 'Gabrielle', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('163', 'hudson.elmer@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:47', '2023-02-27 20:10:47', 'Prudence', 'Thompson', 'Mackenzie', '29120', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('164', 'marks.karli@domain.com', null, '$2y$10$EUfvhiZQdn5S2nltZPAgGO5EBlWaWrFx/l3uOsm3cYUOVWX2Cy6K2', null, '2023-02-27 20:10:47', '2023-02-27 20:10:47', 'Maya', 'Boehm', 'Helena', '476837863', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('165', 'nmcglynn@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:10', '2023-02-27 20:12:10', 'Antonietta', 'Altenwerth', 'Trenton', '18652851', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('166', 'russel.anne@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:10', '2023-02-27 20:12:10', 'Milton', 'Bosco', 'Marie', '42', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('167', 'tate.olson@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:10', '2023-02-27 20:12:10', 'Martine', 'Berge', 'Rachelle', '299', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('168', 'braun.corbin@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:10', '2023-02-27 20:12:10', 'Mittie', 'Hackett', 'Ida', '55687', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('169', 'eullrich@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:11', '2023-02-27 20:12:11', 'Mose', 'Konopelski', 'Emory', '30', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('170', 'omcdermott@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:11', '2023-02-27 20:12:11', 'Eleazar', 'Rogahn', 'Sallie', '62319', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('171', 'pritchie@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:11', '2023-02-27 20:12:11', 'Emerald', 'Von', 'Richmond', '212510', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('172', 'elna.reichert@domain.com', null, '$2y$10$W0kSq1nFQT./6eevQguWpOCim9alDbVYmllGnsKYpiIY80XZev.ua', null, '2023-02-27 20:12:12', '2023-02-27 20:12:12', 'Virginia', 'Littel', 'Andreanne', '28', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('174', 'tanner67@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:21', '2023-02-27 20:12:21', 'Jaime', 'Bartoletti', 'Oma', '452411', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('175', 'abner77@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:21', '2023-02-27 20:12:21', 'Lenna', 'Hegmann', 'Claudine', '119788141', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('176', 'jackeline.kessler@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:21', '2023-02-27 20:12:21', 'Gwendolyn', 'Hamill', 'Luz', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('177', 'jose97@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:21', '2023-02-27 20:12:21', 'Katharina', 'Brakus', 'Frederique', '10397', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('178', 'borer.frederik@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:21', '2023-02-27 20:12:21', 'Agnes', 'Sauer', 'Damon', '33698272', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('179', 'isai.mcdermott@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:22', '2023-02-27 20:12:22', 'Anissa', 'Wuckert', 'Maybell', '19456', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('180', 'ehill@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:22', '2023-02-27 20:12:22', 'Arjun', 'Kub', 'Clement', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('181', 'lzulauf@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:22', '2023-02-27 20:12:22', 'Kyleigh', 'Swift', 'Colby', '173088087', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('182', 'graham73@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:22', '2023-02-27 20:12:22', 'Ruben', 'Boyle', 'Ashton', '73299', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('183', 'shagenes@domain.com', null, '$2y$10$6om9ntCLHTSuV.Nj8MKc/uNzIe6.qVDwUeco8bzCtItbTmHDLew2e', null, '2023-02-27 20:12:22', '2023-02-27 20:12:22', 'Isidro', 'Roob', 'Margarita', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('184', 'fisher.rossie@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:49', '2023-03-08 20:00:49', 'Maria', 'Sawayn', 'Mylene', '21414', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('185', 'alexane52@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:49', '2023-03-08 20:00:49', 'Darrell', 'Mitchell', 'Clementina', '248', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('186', 'mcglynn.lauretta@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:49', '2023-03-08 20:00:49', 'Kiana', 'Nikolaus', 'Pierre', '1058', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('187', 'langworth.thurman@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:50', '2023-03-08 20:00:50', 'Mathew', 'Fritsch', 'Noelia', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('188', 'kaelyn.johns@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:50', '2023-03-08 20:00:50', 'Kiley', 'Harber', 'Karson', '92', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('189', 'feest.stephen@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:50', '2023-03-08 20:00:50', 'Jovan', 'Bogan', 'Irving', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('190', 'mireille.bashirian@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:50', '2023-03-08 20:00:50', 'Prince', 'Lubowitz', 'Virgie', '25746990', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('191', 'justice.watsica@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:50', '2023-03-08 20:00:50', 'Richmond', 'Gibson', 'Green', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('192', 'alvah.steuber@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:51', '2023-03-08 20:00:51', 'Anjali', 'Bradtke', 'Laurie', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('193', 'nicolette75@domain.com', null, '$2y$10$KUTVEnd0yIQcFWNejItnDuKwE/dVeUI3hJFPpnaminLMCVV5SPl8q', null, '2023-03-08 20:00:51', '2023-03-08 20:00:51', 'Bradley', 'Upton', 'Casimer', '1138485', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('194', 'cbatz@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:32', '2023-03-08 20:06:32', 'Ansel', 'Boyer', 'Keira', '472640680', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('195', 'clarabelle.barton@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:32', '2023-03-08 20:06:32', 'Deondre', 'Brown', 'Mac', '13', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('196', 'devonte.brown@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:32', '2023-03-08 20:06:32', 'Eva', 'Hagenes', 'Wiley', '649764', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('197', 'columbus83@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:32', '2023-03-08 20:06:32', 'Camron', 'Schiller', 'Marilou', '136005057', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('198', 'ekoepp@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:33', '2023-03-08 20:06:33', 'Brandy', 'Hansen', 'Titus', '51984744', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('199', 'stanton.esta@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:33', '2023-03-08 20:06:33', 'Mortimer', 'Hyatt', 'Annamae', '413410', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('200', 'luettgen.jaqueline@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:33', '2023-03-08 20:06:33', 'Julius', 'Lubowitz', 'Barrett', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('201', 'celestine.konopelski@domain.com', null, '$2y$10$byGRpQjAvFHJEI7vvE5Zre0BkdnTHtGKYTrYZx0BAMJc8QwIJu3uu', null, '2023-03-08 20:06:33', '2023-03-08 20:06:33', 'Clair', 'Hickle', 'Jerad', '2730', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('203', 'alysson30@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:45', '2023-03-08 20:06:45', 'Monserrat', 'Wilderman', 'Elda', '530884469', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('204', 'aurelia.gutkowski@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:45', '2023-03-08 20:06:45', 'Maeve', 'Morar', 'Malachi', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('205', 'neva03@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:45', '2023-03-08 20:06:45', 'Rocio', 'Conroy', 'Hassie', '1277', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('206', 'deangelo.osinski@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:45', '2023-03-08 20:06:45', 'Howell', 'Weissnat', 'Alvera', '426', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('207', 'sharon.hettinger@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:45', '2023-03-08 20:06:45', 'Candido', 'Zemlak', 'Madalyn', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('208', 'osinski.santina@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:45', '2023-03-08 20:06:45', 'Ryan', 'Fay', 'Nelle', '5645722', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('209', 'ghaley@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:46', '2023-03-08 20:06:46', 'Torey', 'Price', 'Charles', '1959560', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('210', 'wolff.kaylie@domain.com', null, '$2y$10$cqtmxq7PFIK5xMBloj5XTODJZF4n.3d0GU6jXKGIeen54/xhbp/yG', null, '2023-03-08 20:06:46', '2023-03-08 20:06:46', 'Nova', 'Harris', 'Abigale', '7353', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('212', 'hillard.schinner@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:05', '2023-03-08 20:07:05', 'Therese', 'Boyle', 'King', '1072', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('213', 'krutherford@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:05', '2023-03-08 20:07:05', 'Deja', 'Fay', 'Shana', '78339113', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('214', 'cbergnaum@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:05', '2023-03-08 20:07:05', 'Johnathan', 'Kemmer', 'Dell', '44329', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('215', 'stephan.luettgen@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:05', '2023-03-08 20:07:05', 'Vivienne', 'Konopelski', 'Waino', '387802', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('216', 'maudie24@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:05', '2023-03-08 20:07:05', 'Aryanna', 'Rutherford', 'Lavina', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('217', 'aida55@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:05', '2023-03-08 20:07:05', 'Allison', 'Donnelly', 'Makenzie', '2652', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('218', 'qschmitt@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:06', '2023-03-08 20:07:06', 'Brandy', 'Dickinson', 'Leta', '221', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('219', 'aurore.emmerich@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:06', '2023-03-08 20:07:06', 'Anibal', 'Connelly', 'Micheal', '1571450', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('220', 'schumm.sheila@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:06', '2023-03-08 20:07:06', 'Angelica', 'Wuckert', 'Rusty', '638', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('221', 'kelsi.koch@domain.com', null, '$2y$10$q4Md3UcCA8J8mDAMJF9qcOdfiEbBbPxtMmUvnOXZgx/ES80/wMlMC', null, '2023-03-08 20:07:06', '2023-03-08 20:07:06', 'Chaz', 'Cassin', 'Boyd', '10', '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('223', 'sylvainohh@gmail.com', null, '$2y$10$Bjdi3DAMoruU7aAtNiFC6usW.QDRLAdoGP/WVqjLjziz.ieLu2FP.', null, '2023-03-09 15:25:40', '2023-03-09 15:25:40', null, null, 'sylvainouu', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('224', 'sylvaincodeurmarc@gmail.com', null, 'secret22', null, '2023-03-10 22:36:52', '2023-03-10 22:36:52', null, null, 'marc', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('225', 'sylvaincodeur2222@gmail.com', null, 'secret22', null, '2023-03-10 22:41:15', '2023-03-10 22:41:15', null, null, 'sylvaincodes2222', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('226', 'sylvaincodeuaaaar@gmail.com', null, 'secret22', null, '2023-03-10 22:42:27', '2023-03-10 22:42:27', null, null, 'sylvaincodes1212', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('227', 'sylvaincodeuqqqqr@gmail.com', null, 'secret22', null, '2023-03-10 22:42:53', '2023-03-10 22:42:53', null, null, 'sylvaincodesqqqqqqqq', null, '0', '0', null, null, null, '0');
INSERT INTO `users` VALUES ('228', 'sylvain@gmail.com', null, 'secret22', null, '2023-03-12 14:40:26', '2023-03-12 14:40:26', null, null, 'sylvain', null, '0', '0', null, null, null, '0');
