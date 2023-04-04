/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2022-06-10 18:02:22 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `aes_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `aes_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1653 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `aes_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/* INSERT TABLE DATA: aes_comments */
INSERT INTO `aes_comments` VALUES("1", "1", "A WordPress Commenter", "wapuu@wordpress.example", "https://wordpress.org/", "", "2022-04-26 18:15:31", "2022-04-26 18:15:31", "Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "1", "", "comment", "0", "0");

/* INSERT TABLE DATA: aes_duplicator_packages */
INSERT INTO `aes_duplicator_packages` VALUES("1", "20220516_darryltait", "cbf6cddc305e82d39659_20220516002035", "100", "2022-05-16 00:20:41", "unknown", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-05-16 00:20:35\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:5:\"5.9.3\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:1;s:4:\"Name\";s:19:\"20220516_darryltait\";s:4:\"Hash\";s:35:\"cbf6cddc305e82d39659_20220516002035\";s:8:\"NameHash\";s:55:\"20220516_darryltait_cbf6cddc305e82d39659_20220516002035\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:65:\"20220516_darryltait_cbf6cddc305e82d39659_20220516002035_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"12.53 sec.\";s:7:\"ExeSize\";s:7:\"64.59KB\";s:7:\"ZipSize\";s:7:\"46.05MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:67:\"20220516_darryltait_cbf6cddc305e82d39659_20220516002035_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/aes\";s:4:\"Size\";i:48286175;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:3481;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:38:\"/Applications/MAMP/htdocs/aes/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/aes/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/aes/wp-content/languages\";i:3;s:47:\"/Applications/MAMP/htdocs/aes/wp-content/themes\";i:4;s:41:\"/Applications/MAMP/htdocs/aes/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:29:\"/Applications/MAMP/htdocs/aes\";i:1;s:40:\"/Applications/MAMP/htdocs/aes/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:41:\"/Applications/MAMP/htdocs/aes/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:69:\"20220516_darryltait_cbf6cddc305e82d39659_20220516002035_installer.php\";s:4:\"Size\";i:66145;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:1155579;s:4:\"File\";s:68:\"20220516_darryltait_cbf6cddc305e82d39659_20220516002035_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:2:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:18:\"utf8mb4_unicode_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:3:\"aes\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:14:\"tablesRowCount\";s:3:\"252\";s:16:\"tablesSizeOnDisk\";s:5:\"2.7MB\";s:18:\"varLowerCaseTables\";s:1:\"2\";s:7:\"version\";s:6:\"5.7.32\";s:14:\"versionComment\";s:28:\"MySQL Community Server (GPL)\";s:18:\"tableWiseRowCounts\";a:13:{s:15:\"aes_commentmeta\";s:1:\"0\";s:12:\"aes_comments\";s:1:\"1\";s:23:\"aes_duplicator_packages\";s:1:\"1\";s:9:\"aes_links\";s:1:\"0\";s:11:\"aes_options\";s:3:\"160\";s:12:\"aes_postmeta\";s:2:\"41\";s:9:\"aes_posts\";s:2:\"21\";s:22:\"aes_term_relationships\";s:1:\"5\";s:17:\"aes_term_taxonomy\";s:1:\"4\";s:12:\"aes_termmeta\";s:1:\"0\";s:9:\"aes_terms\";s:1:\"4\";s:12:\"aes_usermeta\";s:2:\"22\";s:9:\"aes_users\";s:1:\"1\";}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:130:\"/Applications/MAMP/htdocs/aes/wp-content/backups-dup-lite/tmp/20220516_darryltait_cbf6cddc305e82d39659_20220516002035_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-05-16 00:20:35\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:5:\"5.9.3\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:19:\"20220516_darryltait\";s:4:\"Hash\";s:35:\"cbf6cddc305e82d39659_20220516002035\";s:8:\"NameHash\";s:55:\"20220516_darryltait_cbf6cddc305e82d39659_20220516002035\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:76;s:8:\"Database\";r:90;s:13:\"BuildProgress\";r:137;}}}");
INSERT INTO `aes_duplicator_packages` VALUES("2", "20220531_darryltait", "92296d30e084afe33695_20220531192954", "100", "2022-05-31 19:30:02", "unknown", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-05-31 19:29:54\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:3:\"6.0\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:2;s:4:\"Name\";s:19:\"20220531_darryltait\";s:4:\"Hash\";s:35:\"92296d30e084afe33695_20220531192954\";s:8:\"NameHash\";s:55:\"20220531_darryltait_92296d30e084afe33695_20220531192954\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:65:\"20220531_darryltait_92296d30e084afe33695_20220531192954_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"12.40 sec.\";s:7:\"ExeSize\";s:7:\"64.59KB\";s:7:\"ZipSize\";s:7:\"45.86MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:67:\"20220531_darryltait_92296d30e084afe33695_20220531192954_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/aes\";s:4:\"Size\";i:48083742;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:3599;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:38:\"/Applications/MAMP/htdocs/aes/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/aes/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/aes/wp-content/languages\";i:3;s:47:\"/Applications/MAMP/htdocs/aes/wp-content/themes\";i:4;s:41:\"/Applications/MAMP/htdocs/aes/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:29:\"/Applications/MAMP/htdocs/aes\";i:1;s:40:\"/Applications/MAMP/htdocs/aes/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:41:\"/Applications/MAMP/htdocs/aes/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:69:\"20220531_darryltait_92296d30e084afe33695_20220531192954_installer.php\";s:4:\"Size\";i:66145;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:80935;s:4:\"File\";s:68:\"20220531_darryltait_92296d30e084afe33695_20220531192954_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:2:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:18:\"utf8mb4_unicode_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:3:\"aes\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:14:\"tablesRowCount\";s:3:\"225\";s:16:\"tablesSizeOnDisk\";s:5:\"1.7MB\";s:18:\"varLowerCaseTables\";s:1:\"2\";s:7:\"version\";s:6:\"5.7.32\";s:14:\"versionComment\";s:28:\"MySQL Community Server (GPL)\";s:18:\"tableWiseRowCounts\";a:13:{s:15:\"aes_commentmeta\";s:1:\"0\";s:12:\"aes_comments\";s:1:\"1\";s:23:\"aes_duplicator_packages\";s:1:\"2\";s:9:\"aes_links\";s:1:\"0\";s:11:\"aes_options\";s:3:\"142\";s:12:\"aes_postmeta\";s:2:\"33\";s:9:\"aes_posts\";s:2:\"16\";s:22:\"aes_term_relationships\";s:1:\"5\";s:17:\"aes_term_taxonomy\";s:1:\"4\";s:12:\"aes_termmeta\";s:1:\"0\";s:9:\"aes_terms\";s:1:\"4\";s:12:\"aes_usermeta\";s:2:\"22\";s:9:\"aes_users\";s:1:\"1\";}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:130:\"/Applications/MAMP/htdocs/aes/wp-content/backups-dup-lite/tmp/20220531_darryltait_92296d30e084afe33695_20220531192954_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-05-31 19:29:54\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:3:\"6.0\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:19:\"20220531_darryltait\";s:4:\"Hash\";s:35:\"92296d30e084afe33695_20220531192954\";s:8:\"NameHash\";s:55:\"20220531_darryltait_92296d30e084afe33695_20220531192954\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:76;s:8:\"Database\";r:90;s:13:\"BuildProgress\";r:137;}}}");
INSERT INTO `aes_duplicator_packages` VALUES("3", "20220610_darryltait", "bcadc8b9d0a2c54d2036_20220610180212", "22", "2022-06-10 18:02:22", "unknown", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-06-10 18:02:12\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:3:\"6.0\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:3;s:4:\"Name\";s:19:\"20220610_darryltait\";s:4:\"Hash\";s:35:\"bcadc8b9d0a2c54d2036_20220610180212\";s:8:\"NameHash\";s:55:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:65:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"21.5\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:67:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/aes\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-06-10 18:02:12\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:3:\"6.0\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:19:\"20220610_darryltait\";s:4:\"Hash\";s:35:\"bcadc8b9d0a2c54d2036_20220610180212\";s:8:\"NameHash\";s:55:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:69:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:68:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:1:{s:15:\"aes_commentmeta\";s:1:\"0\";}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:130:\"/Applications/MAMP/htdocs/aes/wp-content/backups-dup-lite/tmp/20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:38:\"/Applications/MAMP/htdocs/aes/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/aes/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/aes/wp-content/languages\";i:3;s:47:\"/Applications/MAMP/htdocs/aes/wp-content/themes\";i:4;s:41:\"/Applications/MAMP/htdocs/aes/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:29:\"/Applications/MAMP/htdocs/aes\";i:1;s:40:\"/Applications/MAMP/htdocs/aes/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:131;}");

/* INSERT TABLE DATA: aes_options */
INSERT INTO `aes_options` VALUES("1", "siteurl", "http://localhost:8888/aes", "yes");
INSERT INTO `aes_options` VALUES("2", "home", "http://localhost:8888/aes", "yes");
INSERT INTO `aes_options` VALUES("3", "blogname", "Darryl Tait", "yes");
INSERT INTO `aes_options` VALUES("4", "blogdescription", "Just another WordPress site by Darryl Tait", "yes");
INSERT INTO `aes_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `aes_options` VALUES("6", "admin_email", "4darryltait@gmail.com", "yes");
INSERT INTO `aes_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `aes_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `aes_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `aes_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `aes_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `aes_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `aes_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `aes_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `aes_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `aes_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `aes_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `aes_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `aes_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `aes_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `aes_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `aes_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `aes_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `aes_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `aes_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `aes_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `aes_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `aes_options` VALUES("28", "permalink_structure", "/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `aes_options` VALUES("29", "rewrite_rules", "a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `aes_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `aes_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `aes_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `aes_options` VALUES("33", "active_plugins", "a:1:{i:0;s:25:\"duplicator/duplicator.php\";}", "yes");
INSERT INTO `aes_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `aes_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `aes_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `aes_options` VALUES("37", "gmt_offset", "-6", "yes");
INSERT INTO `aes_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `aes_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `aes_options` VALUES("40", "template", "aes", "yes");
INSERT INTO `aes_options` VALUES("41", "stylesheet", "aes", "yes");
INSERT INTO `aes_options` VALUES("42", "comment_registration", "0", "yes");
INSERT INTO `aes_options` VALUES("43", "html_type", "text/html", "yes");
INSERT INTO `aes_options` VALUES("44", "use_trackback", "0", "yes");
INSERT INTO `aes_options` VALUES("45", "default_role", "subscriber", "yes");
INSERT INTO `aes_options` VALUES("46", "db_version", "51917", "yes");
INSERT INTO `aes_options` VALUES("47", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `aes_options` VALUES("48", "upload_path", "", "yes");
INSERT INTO `aes_options` VALUES("49", "blog_public", "1", "yes");
INSERT INTO `aes_options` VALUES("50", "default_link_category", "2", "yes");
INSERT INTO `aes_options` VALUES("51", "show_on_front", "page", "yes");
INSERT INTO `aes_options` VALUES("52", "tag_base", "", "yes");
INSERT INTO `aes_options` VALUES("53", "show_avatars", "1", "yes");
INSERT INTO `aes_options` VALUES("54", "avatar_rating", "G", "yes");
INSERT INTO `aes_options` VALUES("55", "upload_url_path", "", "yes");
INSERT INTO `aes_options` VALUES("56", "thumbnail_size_w", "150", "yes");
INSERT INTO `aes_options` VALUES("57", "thumbnail_size_h", "150", "yes");
INSERT INTO `aes_options` VALUES("58", "thumbnail_crop", "1", "yes");
INSERT INTO `aes_options` VALUES("59", "medium_size_w", "300", "yes");
INSERT INTO `aes_options` VALUES("60", "medium_size_h", "300", "yes");
INSERT INTO `aes_options` VALUES("61", "avatar_default", "mystery", "yes");
INSERT INTO `aes_options` VALUES("62", "large_size_w", "1024", "yes");
INSERT INTO `aes_options` VALUES("63", "large_size_h", "1024", "yes");
INSERT INTO `aes_options` VALUES("64", "image_default_link_type", "none", "yes");
INSERT INTO `aes_options` VALUES("65", "image_default_size", "", "yes");
INSERT INTO `aes_options` VALUES("66", "image_default_align", "", "yes");
INSERT INTO `aes_options` VALUES("67", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `aes_options` VALUES("68", "close_comments_days_old", "14", "yes");
INSERT INTO `aes_options` VALUES("69", "thread_comments", "1", "yes");
INSERT INTO `aes_options` VALUES("70", "thread_comments_depth", "5", "yes");
INSERT INTO `aes_options` VALUES("71", "page_comments", "0", "yes");
INSERT INTO `aes_options` VALUES("72", "comments_per_page", "50", "yes");
INSERT INTO `aes_options` VALUES("73", "default_comments_page", "newest", "yes");
INSERT INTO `aes_options` VALUES("74", "comment_order", "asc", "yes");
INSERT INTO `aes_options` VALUES("75", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("76", "widget_categories", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("77", "widget_text", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("78", "widget_rss", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("79", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `aes_options` VALUES("80", "timezone_string", "", "yes");
INSERT INTO `aes_options` VALUES("81", "page_for_posts", "12", "yes");
INSERT INTO `aes_options` VALUES("82", "page_on_front", "16", "yes");
INSERT INTO `aes_options` VALUES("83", "default_post_format", "0", "yes");
INSERT INTO `aes_options` VALUES("84", "link_manager_enabled", "0", "yes");
INSERT INTO `aes_options` VALUES("85", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `aes_options` VALUES("86", "site_icon", "0", "yes");
INSERT INTO `aes_options` VALUES("87", "medium_large_size_w", "768", "yes");
INSERT INTO `aes_options` VALUES("88", "medium_large_size_h", "0", "yes");
INSERT INTO `aes_options` VALUES("89", "wp_page_for_privacy_policy", "3", "yes");
INSERT INTO `aes_options` VALUES("90", "show_comments_cookies_opt_in", "1", "yes");
INSERT INTO `aes_options` VALUES("91", "admin_email_lifespan", "1666548931", "yes");
INSERT INTO `aes_options` VALUES("92", "disallowed_keys", "", "no");
INSERT INTO `aes_options` VALUES("93", "comment_previously_approved", "1", "yes");
INSERT INTO `aes_options` VALUES("94", "auto_plugin_theme_update_emails", "a:0:{}", "no");
INSERT INTO `aes_options` VALUES("95", "auto_update_core_dev", "enabled", "yes");
INSERT INTO `aes_options` VALUES("96", "auto_update_core_minor", "enabled", "yes");
INSERT INTO `aes_options` VALUES("97", "auto_update_core_major", "enabled", "yes");
INSERT INTO `aes_options` VALUES("98", "wp_force_deactivated_plugins", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("99", "initial_db_version", "51917", "yes");
INSERT INTO `aes_options` VALUES("100", "aes_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `aes_options` VALUES("101", "fresh_site", "0", "yes");
INSERT INTO `aes_options` VALUES("102", "widget_block", "a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("103", "sidebars_widgets", "a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `aes_options` VALUES("104", "cron", "a:6:{i:1654884932;a:6:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654884939;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654884940;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654889368;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1655316932;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `aes_options` VALUES("105", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("106", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("107", "widget_archives", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("108", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("109", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("110", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("111", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("112", "widget_meta", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("113", "widget_search", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("114", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("115", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("116", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `aes_options` VALUES("118", "recovery_keys", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("119", "https_detection_errors", "a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}", "yes");
INSERT INTO `aes_options` VALUES("126", "theme_mods_twentytwentytwo", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1650997812;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}", "yes");
INSERT INTO `aes_options` VALUES("133", "auto_core_update_notified", "a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"4darryltait@gmail.com\";s:7:\"version\";s:3:\"6.0\";s:9:\"timestamp\";i:1653431327;}", "no");
INSERT INTO `aes_options` VALUES("145", "can_compress_scripts", "1", "no");
INSERT INTO `aes_options` VALUES("156", "finished_updating_comment_type", "1", "yes");
INSERT INTO `aes_options` VALUES("165", "current_theme", "Aspen Eye Studio", "yes");
INSERT INTO `aes_options` VALUES("166", "theme_mods_aes", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:13:\"aes_main_menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `aes_options` VALUES("167", "theme_switched", "", "yes");
INSERT INTO `aes_options` VALUES("177", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `aes_options` VALUES("264", "WPLANG", "", "yes");
INSERT INTO `aes_options` VALUES("265", "new_admin_email", "4darryltait@gmail.com", "yes");
INSERT INTO `aes_options` VALUES("279", "_transient_health-check-site-status-result", "{\"good\":13,\"recommended\":6,\"critical\":0}", "yes");
INSERT INTO `aes_options` VALUES("733", "recently_activated", "a:0:{}", "yes");
INSERT INTO `aes_options` VALUES("740", "duplicator_settings", "a:17:{s:7:\"version\";s:5:\"1.4.5\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:3;}", "yes");
INSERT INTO `aes_options` VALUES("741", "duplicator_version_plugin", "1.4.5", "yes");
INSERT INTO `aes_options` VALUES("742", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-06-10 18:02:12\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:3:\"6.0\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:19:\"20220610_darryltait\";s:4:\"Hash\";s:35:\"bcadc8b9d0a2c54d2036_20220610180212\";s:8:\"NameHash\";s:55:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:65:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/aes\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-06-10 18:02:12\";s:7:\"Version\";s:5:\"1.4.5\";s:9:\"VersionWP\";s:3:\"6.0\";s:9:\"VersionDB\";s:6:\"5.7.32\";s:10:\"VersionPHP\";s:6:\"7.4.12\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:19:\"20220610_darryltait\";s:4:\"Hash\";s:35:\"bcadc8b9d0a2c54d2036_20220610180212\";s:8:\"NameHash\";s:55:\"20220610_darryltait_bcadc8b9d0a2c54d2036_20220610180212\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:63;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:38:\"/Applications/MAMP/htdocs/aes/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/aes/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/aes/wp-content/languages\";i:3;s:47:\"/Applications/MAMP/htdocs/aes/wp-content/themes\";i:4;s:41:\"/Applications/MAMP/htdocs/aes/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:29:\"/Applications/MAMP/htdocs/aes\";i:1;s:40:\"/Applications/MAMP/htdocs/aes/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:129;}", "yes");
INSERT INTO `aes_options` VALUES("921", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1654869167;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `aes_options` VALUES("1309", "_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3", "1655409521", "no");
INSERT INTO `aes_options` VALUES("1310", "_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3", "a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}", "no");
INSERT INTO `aes_options` VALUES("1568", "_site_transient_timeout_theme_roots", "1654870968", "no");
INSERT INTO `aes_options` VALUES("1569", "_site_transient_theme_roots", "a:4:{s:3:\"aes\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}", "no");
INSERT INTO `aes_options` VALUES("1570", "_site_transient_update_themes", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654869168;s:7:\"checked\";a:4:{s:3:\"aes\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `aes_options` VALUES("1571", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654869168;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.4.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2605836\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2605835\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:5:\"5.3.8\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:25:\"duplicator/duplicator.php\";s:5:\"1.4.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}}", "no");
INSERT INTO `aes_options` VALUES("1651", "_transient_timeout_global_styles_aes", "1654884008", "no");
INSERT INTO `aes_options` VALUES("1652", "_transient_global_styles_aes", "body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}", "no");

/* INSERT TABLE DATA: aes_postmeta */
INSERT INTO `aes_postmeta` VALUES("9", "7", "_edit_lock", "1650996879:1");
INSERT INTO `aes_postmeta` VALUES("10", "10", "_edit_lock", "1650996895:1");
INSERT INTO `aes_postmeta` VALUES("11", "12", "_edit_lock", "1650996913:1");
INSERT INTO `aes_postmeta` VALUES("12", "14", "_edit_lock", "1650996923:1");
INSERT INTO `aes_postmeta` VALUES("13", "16", "_edit_lock", "1651075258:1");
INSERT INTO `aes_postmeta` VALUES("14", "19", "_menu_item_type", "custom");
INSERT INTO `aes_postmeta` VALUES("15", "19", "_menu_item_menu_item_parent", "0");
INSERT INTO `aes_postmeta` VALUES("16", "19", "_menu_item_object_id", "19");
INSERT INTO `aes_postmeta` VALUES("17", "19", "_menu_item_object", "custom");
INSERT INTO `aes_postmeta` VALUES("18", "19", "_menu_item_target", "");
INSERT INTO `aes_postmeta` VALUES("19", "19", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `aes_postmeta` VALUES("20", "19", "_menu_item_xfn", "");
INSERT INTO `aes_postmeta` VALUES("21", "19", "_menu_item_url", "http://localhost:8888/aes/");
INSERT INTO `aes_postmeta` VALUES("22", "19", "_menu_item_orphaned", "1651010658");
INSERT INTO `aes_postmeta` VALUES("41", "22", "_menu_item_type", "post_type");
INSERT INTO `aes_postmeta` VALUES("42", "22", "_menu_item_menu_item_parent", "0");
INSERT INTO `aes_postmeta` VALUES("43", "22", "_menu_item_object_id", "10");
INSERT INTO `aes_postmeta` VALUES("44", "22", "_menu_item_object", "page");
INSERT INTO `aes_postmeta` VALUES("45", "22", "_menu_item_target", "");
INSERT INTO `aes_postmeta` VALUES("46", "22", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `aes_postmeta` VALUES("47", "22", "_menu_item_xfn", "");
INSERT INTO `aes_postmeta` VALUES("48", "22", "_menu_item_url", "");
INSERT INTO `aes_postmeta` VALUES("50", "23", "_menu_item_type", "post_type");
INSERT INTO `aes_postmeta` VALUES("51", "23", "_menu_item_menu_item_parent", "0");
INSERT INTO `aes_postmeta` VALUES("52", "23", "_menu_item_object_id", "16");
INSERT INTO `aes_postmeta` VALUES("53", "23", "_menu_item_object", "page");
INSERT INTO `aes_postmeta` VALUES("54", "23", "_menu_item_target", "");
INSERT INTO `aes_postmeta` VALUES("55", "23", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `aes_postmeta` VALUES("56", "23", "_menu_item_xfn", "");
INSERT INTO `aes_postmeta` VALUES("57", "23", "_menu_item_url", "");
INSERT INTO `aes_postmeta` VALUES("68", "16", "_wp_page_template", "page-home.php");
INSERT INTO `aes_postmeta` VALUES("69", "23", "_wp_old_date", "2022-04-26");
INSERT INTO `aes_postmeta` VALUES("70", "22", "_wp_old_date", "2022-04-26");
INSERT INTO `aes_postmeta` VALUES("71", "26", "_edit_lock", "1654287327:1");

/* INSERT TABLE DATA: aes_posts */
INSERT INTO `aes_posts` VALUES("1", "1", "2022-04-26 18:15:31", "2022-04-26 18:15:31", "<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->", "Hello world!", "", "publish", "open", "open", "", "hello-world", "", "", "2022-04-26 18:15:31", "2022-04-26 18:15:31", "", "0", "http://localhost:8888/aes/?p=1", "0", "post", "", "1");
INSERT INTO `aes_posts` VALUES("7", "1", "2022-04-26 18:17:01", "2022-04-26 18:17:01", "", "Services", "", "publish", "closed", "closed", "", "services", "", "", "2022-04-26 18:17:01", "2022-04-26 18:17:01", "", "0", "http://localhost:8888/aes/?page_id=7", "0", "page", "", "0");
INSERT INTO `aes_posts` VALUES("8", "1", "2022-04-26 18:16:40", "2022-04-26 18:16:40", "{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }", "Custom Styles", "", "publish", "closed", "closed", "", "wp-global-styles-twentytwentytwo", "", "", "2022-04-26 18:16:40", "2022-04-26 18:16:40", "", "0", "http://localhost:8888/aes/2022/04/26/wp-global-styles-twentytwentytwo/", "0", "wp_global_styles", "", "0");
INSERT INTO `aes_posts` VALUES("9", "1", "2022-04-26 18:17:01", "2022-04-26 18:17:01", "", "Services", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2022-04-26 18:17:01", "2022-04-26 18:17:01", "", "7", "http://localhost:8888/aes/?p=9", "0", "revision", "", "0");
INSERT INTO `aes_posts` VALUES("10", "1", "2022-04-26 18:17:17", "2022-04-26 18:17:17", "", "Contact", "", "publish", "closed", "closed", "", "contact", "", "", "2022-04-26 18:17:17", "2022-04-26 18:17:17", "", "0", "http://localhost:8888/aes/?page_id=10", "0", "page", "", "0");
INSERT INTO `aes_posts` VALUES("11", "1", "2022-04-26 18:17:17", "2022-04-26 18:17:17", "", "Contact", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2022-04-26 18:17:17", "2022-04-26 18:17:17", "", "10", "http://localhost:8888/aes/?p=11", "0", "revision", "", "0");
INSERT INTO `aes_posts` VALUES("12", "1", "2022-04-26 18:17:30", "2022-04-26 18:17:30", "", "Blog", "", "publish", "closed", "closed", "", "blog", "", "", "2022-04-26 18:17:30", "2022-04-26 18:17:30", "", "0", "http://localhost:8888/aes/?page_id=12", "0", "page", "", "0");
INSERT INTO `aes_posts` VALUES("13", "1", "2022-04-26 18:17:30", "2022-04-26 18:17:30", "", "Blog", "", "inherit", "closed", "closed", "", "12-revision-v1", "", "", "2022-04-26 18:17:30", "2022-04-26 18:17:30", "", "12", "http://localhost:8888/aes/?p=13", "0", "revision", "", "0");
INSERT INTO `aes_posts` VALUES("14", "1", "2022-04-26 18:17:45", "2022-04-26 18:17:45", "", "About", "", "publish", "closed", "closed", "", "about", "", "", "2022-04-26 18:17:45", "2022-04-26 18:17:45", "", "0", "http://localhost:8888/aes/?page_id=14", "0", "page", "", "0");
INSERT INTO `aes_posts` VALUES("15", "1", "2022-04-26 18:17:45", "2022-04-26 18:17:45", "", "About", "", "inherit", "closed", "closed", "", "14-revision-v1", "", "", "2022-04-26 18:17:45", "2022-04-26 18:17:45", "", "14", "http://localhost:8888/aes/?p=15", "0", "revision", "", "0");
INSERT INTO `aes_posts` VALUES("16", "1", "2022-04-26 18:31:17", "2022-04-26 18:31:17", "", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2022-04-27 16:03:17", "2022-04-27 16:03:17", "", "0", "http://localhost:8888/aes/?page_id=16", "0", "page", "", "0");
INSERT INTO `aes_posts` VALUES("17", "1", "2022-04-26 18:31:10", "2022-04-26 18:31:10", "{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }", "Custom Styles", "", "publish", "closed", "closed", "", "wp-global-styles-aes", "", "", "2022-04-26 18:31:10", "2022-04-26 18:31:10", "", "0", "http://localhost:8888/aes/2022/04/26/wp-global-styles-aes/", "0", "wp_global_styles", "", "0");
INSERT INTO `aes_posts` VALUES("18", "1", "2022-04-26 18:31:17", "2022-04-26 18:31:17", "", "Home", "", "inherit", "closed", "closed", "", "16-revision-v1", "", "", "2022-04-26 18:31:17", "2022-04-26 18:31:17", "", "16", "http://localhost:8888/aes/?p=18", "0", "revision", "", "0");
INSERT INTO `aes_posts` VALUES("19", "1", "2022-04-26 22:04:18", "0000-00-00 00:00:00", "", "Home", "", "draft", "closed", "closed", "", "", "", "", "2022-04-26 22:04:18", "0000-00-00 00:00:00", "", "0", "http://localhost:8888/aes/?p=19", "1", "nav_menu_item", "", "0");
INSERT INTO `aes_posts` VALUES("22", "1", "2022-05-15 15:38:55", "2022-04-26 22:04:57", " ", "", "", "publish", "closed", "closed", "", "22", "", "", "2022-05-15 15:38:55", "2022-05-15 21:38:55", "", "0", "http://localhost:8888/aes/?p=22", "2", "nav_menu_item", "", "0");
INSERT INTO `aes_posts` VALUES("23", "1", "2022-05-15 15:38:55", "2022-04-26 22:04:57", " ", "", "", "publish", "closed", "closed", "", "23", "", "", "2022-05-15 15:38:55", "2022-05-15 21:38:55", "", "0", "http://localhost:8888/aes/?p=23", "1", "nav_menu_item", "", "0");
INSERT INTO `aes_posts` VALUES("26", "1", "2022-06-03 14:17:49", "2022-06-03 20:17:49", "", "Portfolio", "", "publish", "closed", "closed", "", "portfolio", "", "", "2022-06-03 14:17:49", "2022-06-03 20:17:49", "", "0", "http://localhost:8888/aes/?page_id=26", "0", "page", "", "0");
INSERT INTO `aes_posts` VALUES("27", "1", "2022-06-03 14:17:49", "2022-06-03 20:17:49", "", "Portfolio", "", "inherit", "closed", "closed", "", "26-revision-v1", "", "", "2022-06-03 14:17:49", "2022-06-03 20:17:49", "", "26", "http://localhost:8888/aes/?p=27", "0", "revision", "", "0");

/* INSERT TABLE DATA: aes_term_relationships */
INSERT INTO `aes_term_relationships` VALUES("1", "1", "0");
INSERT INTO `aes_term_relationships` VALUES("8", "2", "0");
INSERT INTO `aes_term_relationships` VALUES("17", "3", "0");
INSERT INTO `aes_term_relationships` VALUES("22", "4", "0");
INSERT INTO `aes_term_relationships` VALUES("23", "4", "0");

/* INSERT TABLE DATA: aes_term_taxonomy */
INSERT INTO `aes_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");
INSERT INTO `aes_term_taxonomy` VALUES("2", "2", "wp_theme", "", "0", "1");
INSERT INTO `aes_term_taxonomy` VALUES("3", "3", "wp_theme", "", "0", "1");
INSERT INTO `aes_term_taxonomy` VALUES("4", "4", "nav_menu", "", "0", "2");

/* INSERT TABLE DATA: aes_terms */
INSERT INTO `aes_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `aes_terms` VALUES("2", "twentytwentytwo", "twentytwentytwo", "0");
INSERT INTO `aes_terms` VALUES("3", "aes", "aes", "0");
INSERT INTO `aes_terms` VALUES("4", "Main Menu", "main-menu", "0");

/* INSERT TABLE DATA: aes_usermeta */
INSERT INTO `aes_usermeta` VALUES("1", "1", "nickname", "dareal");
INSERT INTO `aes_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `aes_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `aes_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `aes_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `aes_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `aes_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `aes_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `aes_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `aes_usermeta` VALUES("10", "1", "show_admin_bar_front", "false");
INSERT INTO `aes_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `aes_usermeta` VALUES("12", "1", "aes_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `aes_usermeta` VALUES("13", "1", "aes_user_level", "10");
INSERT INTO `aes_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `aes_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `aes_usermeta` VALUES("17", "1", "aes_user-settings", "libraryContent=browse&ampampampampampampampampampampampampampampampampampampampampampampampampampampampampampsiteorigin_panels_setting_tab=welcome&ampampampampampampampampampampampampampampampampampampampampampampampampampampampampampeditor=tinymce&ampampampampampampampampampampampampampampampampampampampampampampampampampampampampeditor=tinymce&ampampampampampampampampampampampampampampampampampampampampampampampampampampampeditor=tinymce&ampampampampampampampampampampampampampampampampampampampampampampampampampampampposts_list_mode=list&ampampampampampampampampampampampampampampampampampampampampampampampampeditor=tinymce&ampampampampampampampampampampampampampampampampampampampampampampampmfold=o&ampampampampampampampampampampampampampampampampampampeditor=html&ampampampampampampampampampampampampampampampampampeditor=html&ampampampampampampampampampampampampampampampmfold=o&ampampampampampampampampampampampampampampampeditor=html&ampampampampampampampampampampampampampampadvImgDetails=show&ampampampampampampampampampampampampampampeditor=html&ampampampampampampampampampampampampamphidetb=0");
INSERT INTO `aes_usermeta` VALUES("18", "1", "aes_user-settings-time", "1654287782");
INSERT INTO `aes_usermeta` VALUES("19", "1", "aes_dashboard_quick_press_last_post_id", "25");
INSERT INTO `aes_usermeta` VALUES("20", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `aes_usermeta` VALUES("21", "1", "metaboxhidden_nav-menus", "a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `aes_usermeta` VALUES("22", "1", "nav_menu_recently_edited", "4");
INSERT INTO `aes_usermeta` VALUES("23", "1", "session_tokens", "a:1:{s:64:\"2906dbe4ee74ae5e196363d3c96f9f5dc8367ab543dd506f221953960aaf1192\";a:4:{s:10:\"expiration\";i:1655056908;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36\";s:5:\"login\";i:1654884108;}}");

/* INSERT TABLE DATA: aes_users */
INSERT INTO `aes_users` VALUES("1", "dareal", "$P$BQWtlSc.v5pr3hTQ1qS2lgVXLcDJqP/", "dareal", "4darryltait@gmail.com", "http://localhost:8888/aes", "2022-04-26 18:15:31", "", "0", "dareal");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2022-06-10 18:02:22*/
/* DUPLICATOR_MYSQLDUMP_EOF */
