/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : ecommerce_api

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2023-04-05 10:12:41
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', 'asus', 'marque asuses', 'asus.org', '', 'draft', '1', '0', '2023-03-22 09:46:00', '2023-03-28 11:51:10', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Fasus.jpg08e91f19-d164-4aa7-8de5-9d6248a1a3ae?alt=media&token=989d794d-6100-41db-9798-d966d987521f');
INSERT INTO `brands` VALUES ('2', 'oppo', 'marque oppo', 'oppo.com', '', 'draft', '2', '1', '2023-03-24 07:59:19', '2023-03-28 11:56:18', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Foppo.jpg3dd6b49b-5986-4b16-919e-261fa11329d5?alt=media&token=c882743e-535b-4fde-9cde-407104a3c3b6');
INSERT INTO `brands` VALUES ('3', 'samsung', 'samsung', null, '[]', 'published', '3', '1', '2023-03-28 11:32:42', '2023-03-28 11:56:59', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Fsamsung.png01254e36-bd47-4c51-98a2-416e8ce089e1?alt=media&token=5abfffd9-9ab2-43d5-a1ad-fc12c0a2b212');
INSERT INTO `brands` VALUES ('4', 'zara', 'zara', null, '[]', 'published', null, '1', '2023-03-28 11:47:09', '2023-04-01 19:00:43', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Fasus.jpgb589452e-2851-4212-9ed2-8b0e2629468a?alt=media&token=609e7377-4bf4-42ad-ad37-a1099c8c3f6d');
INSERT INTO `brands` VALUES ('5', 'adidas', 'adidas', null, '', 'published', null, '1', '2023-04-05 08:09:40', '2023-04-05 08:09:40', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fbrands%2Flogo-marque-79637.jpg102f227c-02ea-40ec-ac3a-4f0f828d56e9?alt=media&token=c4311ed2-be44-4e4d-90d9-5d229bc0582c');

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
INSERT INTO `categories` VALUES ('17', 'work', '3', 'pour le travail', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:09:12', '2023-03-28 09:06:27', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fwork.jpg154d8833-3086-4ebd-b1c3-a23b4b287acd?alt=media&token=dc4c7459-25a9-4132-a136-32ee3d69edfa', '/shop/for_walk/work');
INSERT INTO `categories` VALUES ('18', 'travel', '3', 'pour les voyages', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:10:16', '2023-03-28 08:59:16', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ftravel.jpge4cbabc8-ba58-4e8c-accb-b444315b5f71?alt=media&token=918324f2-1f34-4805-bbd9-161f3c65a359', '/shop/for_walk/travel');
INSERT INTO `categories` VALUES ('19', 'family', '3', 'pour la famille', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:12:47', '2023-03-28 08:58:32', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Ffamily.jpg73c4da4d-0b2d-415a-adbe-1154080ddc4d?alt=media&token=c1319ecd-9b4b-47e4-ad3f-c38134720216', '/shop/for_wall/family');
INSERT INTO `categories` VALUES ('20', 'race', '1', 'pour les cources', 'published', null, 'fa fa-list', '1', '0', '0', '[]', '2023-03-12 17:14:34', '2023-03-28 08:48:35', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Frace.jpg6f6cea0a-fa2d-4850-9d33-c7b5daff4b14?alt=media&token=ac105fb2-f61f-4240-80a2-644e6eb55623', '/shop/for_road/race');
INSERT INTO `categories` VALUES ('21', 'sport', '1', 'pour le sport', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:15:57', '2023-03-28 08:37:12', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fsport.jpg39feeb65-4848-4835-945b-44aafe12d415?alt=media&token=4dacc8d8-ac3b-4942-ab5a-5727591f1f7c', '/shop/for_road/sport');
INSERT INTO `categories` VALUES ('22', 'mountain', '1', 'pour les montagnes', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:19:38', '2023-03-28 08:47:57', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fmountainss.jpg060ac775-1f3f-441a-a083-325e04e7a5e6?alt=media&token=d0bc97e2-3a7d-4338-af75-ccc2007f016c', '/shop/for_road/mountain');
INSERT INTO `categories` VALUES ('23', 'picknic', '2', 'pour la plage', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:20:26', '2023-03-28 08:26:34', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fpicknic.jpg3c98b79f-8bf8-4fb0-b3e6-3c5d085cb96a?alt=media&token=9aa4e930-84d5-4a44-91f3-166bfd884a15', '/shop/for_wall/picknic');
INSERT INTO `categories` VALUES ('24', 'shower', '2', 'pour la piscine', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:35:09', '2023-03-28 08:25:18', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fshower.jpgae967815-2e5e-407d-82c8-36a07443cb4f?alt=media&token=c17d7b32-96bd-4cef-a742-d3d56bd8ac57', '/shop/for_wall/shower');
INSERT INTO `categories` VALUES ('25', 'bike', '2', 'pour le véloo', 'published', null, null, null, '0', '0', '[]', '2023-03-12 17:36:59', '2023-03-28 07:55:11', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fbike.jpg53e79108-9d6e-48ae-ac09-faf5ef0149e8?alt=media&token=609e0fc9-327e-4a51-b85e-bd7942f9e78d', '/shop/for_wall/bike');
INSERT INTO `categories` VALUES ('27', 'school', '3', 'pour l\'école', 'published', null, null, '9', '0', '0', null, '2023-03-28 07:35:06', '2023-03-28 07:50:48', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fcategories%2Fhome_brand_985.jpg67045ca7-8182-474e-851d-4cb2ac64490e?alt=media&token=2efa298a-dacd-414e-867b-fb45a5def1d7', null);

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
INSERT INTO `collections` VALUES ('4', 'adiqqqqqqqdaqqsqq', 'desc', 'adiqqqqqqqdaqqsqq', null, 'published', '1', '0', '2023-03-30 12:40:46', '2023-03-30 12:40:46', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `migrations` VALUES ('62', '2023_03_30_182300_add_column_image_to_product_attribute_items', '36');
INSERT INTO `migrations` VALUES ('63', '2023_03_31_163201_create_product_variations_table', '37');
INSERT INTO `migrations` VALUES ('64', '2023_03_31_164722_create_product_variation_attributs_table', '37');
INSERT INTO `migrations` VALUES ('65', '2023_04_01_100637_edit_price_discount_to_product_variation', '38');
INSERT INTO `migrations` VALUES ('66', '2023_04_01_102244_add_price_discount_to_product_variation', '39');
INSERT INTO `migrations` VALUES ('67', '2023_04_01_113521_rename_table_product_variation_attributs', '40');
INSERT INTO `migrations` VALUES ('68', '2023_04_02_092920_add_is_default_to_product_variations', '41');
INSERT INTO `migrations` VALUES ('69', '2023_04_04_002711_edit_product_variation', '42');
INSERT INTO `migrations` VALUES ('70', '2023_04_04_090925_add_product_id_to_product_variations', '43');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_attribute_items_value_unique` (`value`),
  UNIQUE KEY `product_attribute_items_slug_unique` (`slug`),
  UNIQUE KEY `product_attribute_items_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_attribute_items
-- ----------------------------
INSERT INTO `product_attribute_items` VALUES ('1', '1', '#000000', 'black', '1', '0', 'published', '2023-03-31 09:43:48', '2023-03-31 09:43:48', 'noir', null);
INSERT INTO `product_attribute_items` VALUES ('2', '1', '#FFFFFF', 'white', '2', '0', 'published', '2023-03-31 09:44:14', '2023-03-31 09:44:14', 'blanc', null);
INSERT INTO `product_attribute_items` VALUES ('3', '2', 'S', 'small', '1', '1', 'published', '2023-03-31 09:52:47', '2023-03-31 09:52:47', 'small', null);
INSERT INTO `product_attribute_items` VALUES ('4', '2', 'M', 'medium', '2', '0', 'published', '2023-03-31 09:53:05', '2023-03-31 09:53:05', 'medium', null);
INSERT INTO `product_attribute_items` VALUES ('5', '2', 'L', 'long', '3', '0', 'published', '2023-03-31 09:53:20', '2023-03-31 09:53:20', 'long', null);
INSERT INTO `product_attribute_items` VALUES ('6', '2', 'XL', 'extra-long', '4', '0', 'published', '2023-03-31 09:53:52', '2023-03-31 09:53:52', 'extra long', null);
INSERT INTO `product_attribute_items` VALUES ('7', '2', 'XXL', 'extra-extra-long', '4', '0', 'published', '2023-03-31 09:54:19', '2023-03-31 09:54:19', 'extra extra long', null);
INSERT INTO `product_attribute_items` VALUES ('8', '1', '#FFa500', 'orange', '2', '0', 'published', '2023-04-05 07:37:43', '2023-04-05 07:37:43', 'orange', null);
INSERT INTO `product_attribute_items` VALUES ('9', '1', '#0000ff', 'blue', '3', '0', 'published', '2023-04-05 07:45:22', '2023-04-05 07:45:22', 'blue', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_variation_attributes
-- ----------------------------
INSERT INTO `product_variation_attributes` VALUES ('3', '1', '2', '2023-04-04 20:58:28', '2023-04-04 20:58:28');
INSERT INTO `product_variation_attributes` VALUES ('4', '2', '3', '2023-04-04 20:59:34', '2023-04-04 20:59:34');
INSERT INTO `product_variation_attributes` VALUES ('6', '2', '4', '2023-04-04 21:00:39', '2023-04-04 21:00:39');
INSERT INTO `product_variation_attributes` VALUES ('8', '3', '8', '2023-04-05 07:38:15', '2023-04-05 07:38:15');
INSERT INTO `product_variation_attributes` VALUES ('9', '2', '1', '2023-04-05 07:39:59', '2023-04-05 07:39:59');

-- ----------------------------
-- Table structure for product_variations
-- ----------------------------
DROP TABLE IF EXISTS `product_variations`;
CREATE TABLE `product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `price` double(15,4) DEFAULT '123.4567',
  `date_debut_discount` date DEFAULT NULL,
  `date_fin_discount` date DEFAULT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lenght` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_discount` double(15,4) DEFAULT NULL,
  `is_default` int NOT NULL DEFAULT '0',
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_variations
-- ----------------------------
INSERT INTO `product_variations` VALUES ('1', '400.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675564_500_C.jpg514be663-1420-4dc3-83fd-ca04a48292a6?alt=media&token=39c8772d-ea7a-42b0-b871-6076623087b0;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675564_500_D.jpg8fce0bcc-686f-4f1c-8af3-d506adcd52b7?alt=media&token=b6a9bd3b-2d23-4794-bbb3-2f35f52a4971;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675564_500_F.jpg23d9fb9a-a061-4ceb-8669-6915bb3eaafa?alt=media&token=cec5f0f7-e5e0-4c35-b87a-4bff6baa7da4;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675564_500_A.jpga0d59247-e20a-4de8-aa30-68ce45d44b5c?alt=media&token=e40be442-1c54-454c-a8c0-c230c5941ada;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675564_500_B.jpg29eb6d2e-9733-469e-ad78-38bffb28f327?alt=media&token=146f9ade-ebe7-4ec6-8f10-f2f25ec498d8;', '2023-04-04 20:50:53', '2023-04-04 20:56:30', '375.0000', '0', '5');
INSERT INTO `product_variations` VALUES ('2', '600.0000', null, null, 'en_stock', null, null, null, null, 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_A.jpgc7c55ba9-263b-49a5-b6d4-c24f453a390e?alt=media&token=05145527-307d-4ae5-9cd3-1788d84f5cc5;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_B.jpg4b84ac91-c4a2-4480-a5de-3455ee1313e2?alt=media&token=3a44901b-c5f9-42f2-8045-2fd99e8269a9;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_C.jpg6677dd92-c59c-4e9e-baf1-d0b8f82ea337?alt=media&token=e4e1c263-85c8-4dc0-bd09-e472ae4cf8ff;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_G.jpgfa3f8f3c-c9d2-43ca-8204-34772da3dc3f?alt=media&token=9f60945c-b416-43e4-8c6f-28246b0d7b08;', '2023-04-04 20:52:08', '2023-04-04 20:55:12', '497.0000', '0', '5');
INSERT INTO `product_variations` VALUES ('3', '200.0000', '2023-01-01', null, 'en_stock', '10', '5', '4', '5', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675569_500_A%20(1).jpg329ada1f-de8a-4eb7-86e9-95a42e8ce668?alt=media&token=4f7b7caf-f76f-4564-8f78-7586df1fb160;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675569_500_G.jpg67cb829a-a7ff-4a73-bce6-f0ae18acd828?alt=media&token=2d92c8f7-bb33-41e4-ab42-03f65a554032;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675569_500_A.jpg9cd6ebfa-863b-4b00-bc4e-c8a5d0279565?alt=media&token=10240eb5-bef7-4b85-a129-201d0a56d549;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675569_500_C%20(1).jpg7be49318-afdf-40d6-ae4a-00ba36b0610e?alt=media&token=8dbac993-9732-45e7-b02a-c198d393f87b;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675569_500_C.jpgc919bfba-b712-40bc-b353-64288bed0cd6?alt=media&token=3fc47137-96ef-44f8-a367-2480f88eb878;', '2023-04-05 07:33:45', '2023-04-05 07:33:45', '150.0000', '0', '4');
INSERT INTO `product_variations` VALUES ('4', '300.0000', null, null, 'en_stock', '25', '15', '5', '4', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675572_500_F.jpgc067e10e-2c18-4596-a8a6-ad4b57acea80?alt=media&token=1df174e4-e020-4aaa-b7fd-e6785c50ccab;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675572_500_A.jpgac18ab51-cb30-4fcb-a304-b2602cc9e99c?alt=media&token=f1237e4e-6599-430c-b141-a83b72ce9004;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675572_500_B.jpg296d9bb5-efb7-4ccd-ba1b-fe89f601509d?alt=media&token=4d4dd614-146e-4705-8877-183c7640311e;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F24675572_500_E.jpge78398a5-2c49-403c-a773-48510860afc0?alt=media&token=610aca1b-fe38-43f0-90b6-a3bc79cab39c;', '2023-04-05 07:58:33', '2023-04-05 07:58:33', '150.0000', '0', '4');

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
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'adidas polo', 'chaussures polo de luxe', '- Confortable \n- Résistant aux chocs', 'draft', '[]', null, '0', '0', '0', '0', '0', null, '1', '5', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-03-27 13:38:08', '2023-04-05 08:10:37', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2Fp1_3_black.jpg264c7bb4-b06a-42a0-804e-d6206f2b070a?alt=media&token=bfcf33bd-5c32-42e8-9a8d-a8fe499ba7b4;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2Fp1_2_black.jpgc5c81ae7-0abc-4e3c-b2ef-a1f25d01cd95?alt=media&token=6214352d-63b2-4704-8312-7ab0b4158574;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2Fp1_5_black.jpgb7206ac2-3774-4e68-a385-14f81a283919?alt=media&token=e6892360-858d-41ea-a757-37cf7b2917e9;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2Fp1_6_black.jpge8aa9064-a3d3-4ea4-b714-c489d955a79b?alt=media&token=cc287ac8-5a6b-4838-b828-c687f6d7df55;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2Fp1_4_black.jpg72d678f6-b24b-4047-93fe-6894c7d989a6?alt=media&token=ab306f0a-3440-4897-bea5-ae077060d6aa;', '1');
INSERT INTO `products` VALUES ('2', 'chuck taylor all star', 'Très bonne paire de chaussures de haute gamme', '- Confortable\n- Résistant', 'published', '', null, '0', '0', '0', '0', '0', null, '1', '2', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-03-27 14:08:34', '2023-03-27 15:36:31', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_E.jpg20a8eda3-6a26-4add-9064-fae3d931f982?alt=media&token=f4f5cf3a-85d4-485b-82ef-4fd97b501441;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_F.jpg7089541f-8d16-4db1-9da9-4babfcc4940e?alt=media&token=98387f08-3df4-4bd7-bbc3-09258dee3a28;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_H.jpgb019b5d1-53a2-473d-b63b-4b2ebe4d12a6?alt=media&token=5e8de5bb-8ea2-44f1-adb7-04cefe7e8633;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_G.jpgcb20d0e4-cfd9-48e0-97f9-ccecfd1d0fbe?alt=media&token=83dda66e-fb60-4ea9-b1b2-f6548f0bd3af;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F1562_500_D.jpg2a809756-a140-4321-b7ba-dcc4c72314a3?alt=media&token=3b252e35-5fb0-421f-a4ea-99cc48fda6d8;', '3');
INSERT INTO `products` VALUES ('3', 'vans old school', 'Allure sportive mais démarche citadine pour cette basket signée par les stylistes de Vans. Pleine de caractère, comment y résisterait-on ?', 'Tige : Cuir/textile\nDoublure : Textile\nSemelle int. : Textile\nSemelle ext. : Caoutchouc', 'published', '', null, '0', '0', '0', '0', '0', null, '1', '1', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-03-27 15:35:41', '2023-03-27 16:15:13', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F17687495_500_G.jpg26702c69-0040-4aee-9d9e-7e45c7026b6c?alt=media&token=c4711471-63d9-4b67-983d-19017b2270fe;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F17687495_500_C.jpg6b219e0a-3934-4664-921e-e260255d9aaf?alt=media&token=776b018c-e7fe-405f-87d2-fadcdca71488;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F17687495_500_F.jpgb775dd6c-5cd0-4860-97bc-4b26a28da6e8?alt=media&token=581f2b05-7aba-4e2c-b095-d78c9c00e595;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F17687495_500_A.jpg5817be1b-52fc-4d6b-88f6-3a060555b1d4?alt=media&token=4c451634-afe3-4751-97f6-3ee7d20c1938;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F17687495_500_B.jpg6b342481-2d89-4b43-b641-d092aacfd094?alt=media&token=737ba065-ae80-49f6-8de1-5bfcec2743a3;', '3');
INSERT INTO `products` VALUES ('4', 'old skool mte velours enfant', 'Paire de baskets de marque Vans et de couleur Marron Plaid. Ces baskets VANS Old Skool MTE velours Enfant Marron Plaid se présentent de la composition suivante : Tige en Cuir, Doublure en Textile, Semelle intérieure en Textile, Semelle extérieure en Gomme. Conseil Chaussant : Choisissez votre pointure habituelle. Faites vous plaisir avec ces baskets (appelées également Tennis) Marron Plaid que ce soit en utilisation sportive ou urbaine avec un style affirmé et propre à la marque Vans.', 'Tige : Cuir', 'published', '[]', null, '0', '0', '0', '0', '0', null, '3', '5', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-03-27 15:50:24', '2023-04-05 08:10:09', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F25471439_500_B.jpgfb522885-5fa0-4ebe-950a-fd56d6c9bec6?alt=media&token=0a39a589-701b-4642-90ea-faf16699ee2e;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F25471439_500_E.jpg15a6bc32-caf5-4ab9-b776-771f8d76611c?alt=media&token=992ef805-66f6-4595-a7cb-23680622f7eb;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F25471439_500_F.jpg4b7b972d-3c6c-4d92-9f02-545f33900701?alt=media&token=03b17f2b-3428-4933-a55b-1bd3f962f8fe;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F25471439_500_A.jpgcac1aa2b-22d5-40f5-bba7-4c49bae3a5dd?alt=media&token=20b7ad9b-56ff-4e31-8218-b13b4558576b;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F25471439_500_C.jpg8a0882dc-e7e2-4a5e-89e0-d3cd9c1b0815?alt=media&token=b957514f-95b8-48a6-a836-52613bc55772;', '3');
INSERT INTO `products` VALUES ('5', 'citrouille et compagnie GLASSIA', 'Cette basket basse griffée Citrouille et Compagnie affiche un look à la fois cool et décontracté, que les plus jeunes vont adorer. Facile à vivre avec sa tige en textile naturel et son coloris bleu, elle conjugue confort et style. Du textile naturel pour la doublure et du caoutchouc pour sa semelle : voici ce qu\'elle cache. Pleine de caractère, comment y résisterait-on ?', 'Tige : Textile naturel\nDoublure : Textile naturel\nSemelle int. : Synthétique et Textile\nSemelle ext. : Caoutchouc', 'published', '[]', null, '0', '0', '0', '0', '0', null, '1', '5', '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, 'in_stock', '0', '2023-03-27 15:57:23', '2023-04-05 08:09:54', 'https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_B.jpg8a0e7bdb-4e7b-49d6-8496-ec8036ee76db?alt=media&token=c82729b5-79c7-4d2c-8c14-bc8923be4577;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F25471439_500_F.jpg130d2b4d-9545-4da5-bad5-73dbe4225f7a?alt=media&token=56daee14-1a6a-4d20-9bb7-737042efc80c;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_A.jpgdab7976b-07ed-4000-ae01-670027d588b8?alt=media&token=6e7eb924-61e4-45c7-b678-826a8da4d98b;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_G.jpgfd23a181-c564-4e73-bcca-25cd1cfe11d1?alt=media&token=41bea2d1-82c1-47c3-80cd-3c15a53e3d08;https://firebasestorage.googleapis.com/v0/b/shoes-siteweb.appspot.com/o/media%2Fproducts%2F12100756_500_C.jpgfceb3100-1634-44ed-9d36-97bd9f87c3cc?alt=media&token=4c668c71-c0d9-40ad-b9fa-abf0380f7e00;', '3');

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
