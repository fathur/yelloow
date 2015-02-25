# WordPress MySQL database migration
#
# Generated: Wednesday 25. February 2015 04:27 UTC
# Hostname: localhost
# Database: `lileoper_yelloow`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `yl_commentmeta`
#

DROP TABLE IF EXISTS `yl_commentmeta`;


#
# Table structure of table `yl_commentmeta`
#

CREATE TABLE `yl_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_commentmeta`
#

#
# End of data contents of table `yl_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `yl_comments`
#

DROP TABLE IF EXISTS `yl_comments`;


#
# Table structure of table `yl_comments`
#

CREATE TABLE `yl_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_comments`
#
INSERT INTO `yl_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-12-11 09:38:45', '2014-12-11 09:38:45', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `yl_comments`
# --------------------------------------------------------



#
# Delete any existing table `yl_links`
#

DROP TABLE IF EXISTS `yl_links`;


#
# Table structure of table `yl_links`
#

CREATE TABLE `yl_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_links`
#

#
# End of data contents of table `yl_links`
# --------------------------------------------------------



#
# Delete any existing table `yl_options`
#

DROP TABLE IF EXISTS `yl_options`;


#
# Table structure of table `yl_options`
#

CREATE TABLE `yl_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_options`
#
INSERT INTO `yl_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/yelloow', 'yes'),
(2, 'home', 'http://localhost/yelloow', 'yes'),
(3, 'blogname', 'Yelloow', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@yelloow.be', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:27:"theme-check/theme-check.php";i:2;s:37:"tinymce-advanced/tinymce-advanced.php";i:3;s:14:"types/wpcf.php";i:4;s:24:"wordpress-seo/wp-seo.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'yelloow', 'yes'),
(42, 'stylesheet', 'yelloow', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'yl_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:11:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1424849520;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1424857181;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1424857359;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1424861279;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, 'can_compress_scripts', '1', 'yes'),
(120, 'recently_activated', 'a:1:{s:36:"google-sitemap-generator/sitemap.php";i:1423050942;}', 'yes'),
(121, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(122, 'wp_installer_settings', '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', 'yes') ;
INSERT INTO `yl_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(124, 'wpcf-survey-2014-09', 'dismiss', 'yes'),
(125, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.0.3";}', 'yes'),
(132, 'wpcf-custom-types', 'a:5:{s:8:"voor-wie";a:20:{s:14:"wpcf-post-type";s:8:"voor-wie";s:6:"labels";a:12:{s:4:"name";s:8:"Voor Wie";s:13:"singular_name";s:8:"For Whom";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:8:"voor-wie";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:9:"thumbnail";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}s:10:"drijfveren";a:20:{s:14:"wpcf-post-type";s:10:"drijfveren";s:6:"labels";a:12:{s:4:"name";s:11:"Drijfverens";s:13:"singular_name";s:10:"Drijfveren";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:10:"drijfveren";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:9:"thumbnail";s:1:"1";s:15:"page-attributes";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}s:12:"over-yelloow";a:21:{s:14:"wpcf-post-type";s:12:"over-yelloow";s:6:"labels";a:12:{s:4:"name";s:12:"Over Yelloow";s:13:"singular_name";s:17:"Over Yelloow Post";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:12:"over-yelloow";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:10:"taxonomies";a:1:{s:16:"over-yelloow-tax";s:1:"1";}s:8:"supports";a:4:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:9:"thumbnail";s:1:"1";s:15:"page-attributes";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}s:20:"content-introduction";a:20:{s:6:"labels";a:12:{s:4:"name";s:21:"Content Introductions";s:13:"singular_name";s:20:"Content Introduction";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:20:"content-introduction";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:1:{s:5:"title";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";s:14:"wpcf-post-type";N;}s:16:"onze-referenties";a:21:{s:14:"wpcf-post-type";s:16:"onze-referenties";s:6:"labels";a:12:{s:4:"name";s:16:"Onze Referenties";s:13:"singular_name";s:19:"Onze Referenty Item";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:16:"onze-referenties";s:11:"description";s:0:"";s:4:"icon";s:6:"camera";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:15:"page-attributes";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";s:17:"post_relationship";a:1:{s:7:"belongs";a:1:{s:12:"over-yelloow";s:1:"1";}}}}', 'yes'),
(133, 'wpcf_post_relationship', 'a:1:{s:12:"over-yelloow";a:1:{s:16:"onze-referenties";a:0:{}}}', 'yes'),
(134, 'wpcf-custom-taxonomies', 'a:1:{s:16:"over-yelloow-tax";a:14:{s:8:"wpcf-tax";s:16:"over-yelloow-tax";s:6:"labels";a:15:{s:4:"name";s:23:"Over Yelloow Taxonomies";s:13:"singular_name";s:21:"Over Yelloow Taxonomy";s:12:"search_items";s:9:"Search %s";s:13:"popular_items";s:10:"Popular %s";s:9:"all_items";s:6:"All %s";s:11:"parent_item";s:9:"Parent %s";s:17:"parent_item_colon";s:10:"Parent %s:";s:9:"edit_item";s:7:"Edit %s";s:11:"update_item";s:9:"Update %s";s:12:"add_new_item";s:10:"Add New %s";s:13:"new_item_name";s:11:"New %s Name";s:26:"separate_items_with_commas";s:23:"Separate %s with commas";s:19:"add_or_remove_items";s:16:"Add or remove %s";s:21:"choose_from_most_used";s:28:"Choose from the most used %s";s:9:"menu_name";s:2:"%s";}s:4:"slug";s:16:"over-yelloow-tax";s:11:"description";s:0:"";s:6:"public";s:6:"public";s:8:"supports";a:1:{s:12:"over-yelloow";i:1;}s:12:"hierarchical";s:12:"hierarchical";s:7:"rewrite";a:4:{s:7:"enabled";s:1:"1";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:12:"hierarchical";s:1:"1";}s:7:"show_ui";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:13:"show_tagcloud";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:21:"update_count_callback";s:0:"";}}', 'yes'),
(135, '_wpcf_promo_tabs', 'a:2:{s:8:"selected";i:2;s:4:"time";i:1423114718;}', 'yes'),
(136, 'wpcf-fields', 'a:9:{s:15:"button-voor-wie";a:8:{s:2:"id";s:15:"button-voor-wie";s:4:"slug";s:15:"button-voor-wie";s:4:"type";s:9:"textfield";s:4:"name";s:6:"Button";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:20:"wpcf-button-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:20:"button-text-voor-wie";a:8:{s:2:"id";s:20:"button-text-voor-wie";s:4:"slug";s:20:"button-text-voor-wie";s:4:"type";s:9:"textfield";s:4:"name";s:11:"Button Text";s:11:"description";s:0:"";s:4:"data";a:3:{s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:25:"wpcf-button-text-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:19:"button-url-voor-wie";a:8:{s:2:"id";s:19:"button-url-voor-wie";s:4:"slug";s:19:"button-url-voor-wie";s:4:"type";s:9:"textfield";s:4:"name";s:10:"Button URL";s:11:"description";s:0:"";s:4:"data";a:3:{s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:24:"wpcf-button-url-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:4:"logo";a:8:{s:2:"id";s:4:"logo";s:4:"slug";s:4:"logo";s:4:"type";s:5:"image";s:4:"name";s:4:"Logo";s:11:"description";s:0:"";s:4:"data";a:3:{s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:9:"wpcf-logo";s:9:"meta_type";s:8:"postmeta";}s:5:"intro";a:8:{s:2:"id";s:5:"intro";s:4:"slug";s:5:"intro";s:4:"type";s:7:"wysiwyg";s:4:"name";s:5:"Intro";s:11:"description";s:16:"Intro one column";s:4:"data";a:3:{s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:10:"wpcf-intro";s:9:"meta_type";s:8:"postmeta";}s:17:"intro-left-column";a:8:{s:2:"id";s:17:"intro-left-column";s:4:"slug";s:17:"intro-left-column";s:4:"type";s:7:"wysiwyg";s:4:"name";s:17:"Intro Left Column";s:11:"description";s:0:"";s:4:"data";a:3:{s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:22:"wpcf-intro-left-column";s:9:"meta_type";s:8:"postmeta";}s:18:"intro-right-column";a:8:{s:2:"id";s:18:"intro-right-column";s:4:"slug";s:18:"intro-right-column";s:4:"type";s:9:"textfield";s:4:"name";s:18:"Intro Right Column";s:11:"description";s:20:"List in right column";s:4:"data";a:4:{s:10:"repetitive";s:1:"1";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:23:"wpcf-intro-right-column";s:9:"meta_type";s:8:"postmeta";}s:21:"yellow-image-voor-wie";a:8:{s:2:"id";s:21:"yellow-image-voor-wie";s:4:"slug";s:21:"yellow-image-voor-wie";s:4:"type";s:5:"image";s:4:"name";s:12:"Yellow Image";s:11:"description";s:30:"Picture above each text header";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:26:"wpcf-yellow-image-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:14:"reference_link";a:8:{s:2:"id";s:14:"reference_link";s:4:"slug";s:14:"reference_link";s:4:"type";s:9:"textfield";s:4:"name";s:14:"Reference Link";s:11:"description";s:0:"";s:4:"data";a:3:{s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:19:"wpcf-reference_link";s:9:"meta_type";s:8:"postmeta";}}', 'yes'),
(145, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418302567;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(146, 'current_theme', 'Yelloow', 'yes'),
(147, 'theme_mods_yelloow', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:5;}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418302593;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(207, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"advlist,menubar";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(208, 'tadv_admin_settings', 'a:2:{s:7:"options";s:8:"no_autop";s:16:"disabled_plugins";s:0:"";}', 'yes'),
(209, 'tadv_version', '4000', 'yes'),
(217, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(474, 'sm_options', 'a:51:{s:18:"sm_b_prio_provider";s:41:"GoogleSitemapGeneratorPrioByCountProvider";s:9:"sm_b_ping";b:1;s:10:"sm_b_stats";b:0;s:12:"sm_b_pingmsn";b:1;s:12:"sm_b_autozip";b:1;s:11:"sm_b_memory";s:0:"";s:9:"sm_b_time";i:-1;s:18:"sm_b_style_default";b:1;s:10:"sm_b_style";s:0:"";s:12:"sm_b_baseurl";s:0:"";s:11:"sm_b_robots";b:1;s:9:"sm_b_html";b:1;s:12:"sm_b_exclude";a:0:{}s:17:"sm_b_exclude_cats";a:0:{}s:10:"sm_in_home";b:1;s:11:"sm_in_posts";b:1;s:15:"sm_in_posts_sub";b:0;s:11:"sm_in_pages";b:1;s:10:"sm_in_cats";b:0;s:10:"sm_in_arch";b:0;s:10:"sm_in_auth";b:0;s:10:"sm_in_tags";b:0;s:9:"sm_in_tax";a:0:{}s:17:"sm_in_customtypes";a:0:{}s:13:"sm_in_lastmod";b:1;s:10:"sm_cf_home";s:5:"daily";s:11:"sm_cf_posts";s:7:"monthly";s:11:"sm_cf_pages";s:6:"weekly";s:10:"sm_cf_cats";s:6:"weekly";s:10:"sm_cf_auth";s:6:"weekly";s:15:"sm_cf_arch_curr";s:5:"daily";s:14:"sm_cf_arch_old";s:6:"yearly";s:10:"sm_cf_tags";s:6:"weekly";s:10:"sm_pr_home";d:1;s:11:"sm_pr_posts";d:0.59999999999999997779553950749686919152736663818359375;s:15:"sm_pr_posts_min";d:0.200000000000000011102230246251565404236316680908203125;s:11:"sm_pr_pages";d:0.59999999999999997779553950749686919152736663818359375;s:10:"sm_pr_cats";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_arch";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_auth";d:0.299999999999999988897769753748434595763683319091796875;s:10:"sm_pr_tags";d:0.299999999999999988897769753748434595763683319091796875;s:12:"sm_i_donated";b:0;s:17:"sm_i_hide_donated";b:0;s:17:"sm_i_install_date";i:1423050838;s:14:"sm_i_hide_note";b:0;s:15:"sm_i_hide_works";b:0;s:16:"sm_i_hide_donors";b:0;s:9:"sm_i_hash";s:20:"a136a47a91ab790d8ca3";s:13:"sm_i_lastping";i:0;s:16:"sm_i_supportfeed";b:1;s:22:"sm_i_supportfeed_cache";i:0;}', 'yes'),
(490, 'over-yelloow-tax_children', 'a:0:{}', 'yes'),
(602, 'wpseo', 'a:18:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:11:"ignore_tour";b:1;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:19:"tracking_popup_done";b:1;s:7:"version";s:5:"1.7.1";s:11:"alexaverify";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:15:"pinterestverify";s:0:"";s:12:"yandexverify";s:0:"";s:14:"yoast_tracking";b:0;}', 'yes'),
(603, 'wpseo_permalinks', 'a:10:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:15:"force_transport";s:7:"default";s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(604, 'wpseo_titles', 'a:118:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:1;s:9:"separator";s:7:"sc-pipe";s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;s:14:"title-voor-wie";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:17:"metadesc-voor-wie";s:0:"";s:16:"metakey-voor-wie";s:0:"";s:16:"noindex-voor-wie";b:0;s:17:"showdate-voor-wie";b:0;s:20:"hideeditbox-voor-wie";b:0;s:16:"title-drijfveren";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-drijfveren";s:0:"";s:18:"metakey-drijfveren";s:0:"";s:18:"noindex-drijfveren";b:0;s:19:"showdate-drijfveren";b:0;s:22:"hideeditbox-drijfveren";b:0;s:18:"title-over-yelloow";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-over-yelloow";s:0:"";s:20:"metakey-over-yelloow";s:0:"";s:20:"noindex-over-yelloow";b:0;s:21:"showdate-over-yelloow";b:0;s:24:"hideeditbox-over-yelloow";b:0;s:26:"title-content-introduction";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:29:"metadesc-content-introduction";s:0:"";s:28:"metakey-content-introduction";s:0:"";s:28:"noindex-content-introduction";b:0;s:29:"showdate-content-introduction";b:0;s:32:"hideeditbox-content-introduction";b:0;s:22:"title-onze-referenties";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:25:"metadesc-onze-referenties";s:0:"";s:24:"metakey-onze-referenties";s:0:"";s:24:"noindex-onze-referenties";b:0;s:25:"showdate-onze-referenties";b:0;s:28:"hideeditbox-onze-referenties";b:0;s:24:"title-ptarchive-voor-wie";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:27:"metadesc-ptarchive-voor-wie";s:0:"";s:26:"metakey-ptarchive-voor-wie";s:0:"";s:26:"bctitle-ptarchive-voor-wie";s:0:"";s:26:"noindex-ptarchive-voor-wie";b:0;s:26:"title-ptarchive-drijfveren";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:29:"metadesc-ptarchive-drijfveren";s:0:"";s:28:"metakey-ptarchive-drijfveren";s:0:"";s:28:"bctitle-ptarchive-drijfveren";s:0:"";s:28:"noindex-ptarchive-drijfveren";b:0;s:28:"title-ptarchive-over-yelloow";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:31:"metadesc-ptarchive-over-yelloow";s:0:"";s:30:"metakey-ptarchive-over-yelloow";s:0:"";s:30:"bctitle-ptarchive-over-yelloow";s:0:"";s:30:"noindex-ptarchive-over-yelloow";b:0;s:36:"title-ptarchive-content-introduction";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:39:"metadesc-ptarchive-content-introduction";s:0:"";s:38:"metakey-ptarchive-content-introduction";s:0:"";s:38:"bctitle-ptarchive-content-introduction";s:0:"";s:38:"noindex-ptarchive-content-introduction";b:0;s:32:"title-ptarchive-onze-referenties";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:35:"metadesc-ptarchive-onze-referenties";s:0:"";s:34:"metakey-ptarchive-onze-referenties";s:0:"";s:34:"bctitle-ptarchive-onze-referenties";s:0:"";s:34:"noindex-ptarchive-onze-referenties";b:0;s:26:"title-tax-over-yelloow-tax";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:29:"metadesc-tax-over-yelloow-tax";s:0:"";s:28:"metakey-tax-over-yelloow-tax";s:0:"";s:32:"hideeditbox-tax-over-yelloow-tax";b:0;s:28:"noindex-tax-over-yelloow-tax";b:0;}', 'yes'),
(605, 'wpseo_social', 'a:15:{s:9:"fb_admins";a:0:{}s:6:"fbapps";a:0:{}s:12:"fbconnectkey";s:32:"b943a04ad05319a2282991875fb529e2";s:13:"facebook_site";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:14:"plus-publisher";s:0:"";s:7:"twitter";b:0;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:10:"fbadminapp";i:0;}', 'yes'),
(606, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(607, 'wpseo_internallinks', 'a:12:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;s:31:"post_types-over-yelloow-maintax";i:0;s:34:"taxonomy-over-yelloow-tax-ptparent";i:0;}', 'yes'),
(608, 'wpseo_xml', 'a:23:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"xml_ping_yahoo";b:0;s:12:"xml_ping_ask";b:0;s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"post_types-voor-wie-not_in_sitemap";b:0;s:36:"post_types-drijfveren-not_in_sitemap";b:0;s:38:"post_types-over-yelloow-not_in_sitemap";b:0;s:46:"post_types-content-introduction-not_in_sitemap";b:0;s:42:"post_types-onze-referenties-not_in_sitemap";b:0;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;s:42:"taxonomies-over-yelloow-tax-not_in_sitemap";b:0;}', 'yes'),
(609, 'rewrite_rules', 'a:200:{s:11:"voor-wie/?$";s:28:"index.php?post_type=voor-wie";s:41:"voor-wie/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=voor-wie&feed=$matches[1]";s:36:"voor-wie/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=voor-wie&feed=$matches[1]";s:28:"voor-wie/page/([0-9]{1,})/?$";s:46:"index.php?post_type=voor-wie&paged=$matches[1]";s:13:"drijfveren/?$";s:30:"index.php?post_type=drijfveren";s:43:"drijfveren/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=drijfveren&feed=$matches[1]";s:38:"drijfveren/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=drijfveren&feed=$matches[1]";s:30:"drijfveren/page/([0-9]{1,})/?$";s:48:"index.php?post_type=drijfveren&paged=$matches[1]";s:15:"over-yelloow/?$";s:32:"index.php?post_type=over-yelloow";s:45:"over-yelloow/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=over-yelloow&feed=$matches[1]";s:40:"over-yelloow/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=over-yelloow&feed=$matches[1]";s:32:"over-yelloow/page/([0-9]{1,})/?$";s:50:"index.php?post_type=over-yelloow&paged=$matches[1]";s:23:"content-introduction/?$";s:40:"index.php?post_type=content-introduction";s:53:"content-introduction/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=content-introduction&feed=$matches[1]";s:48:"content-introduction/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=content-introduction&feed=$matches[1]";s:40:"content-introduction/page/([0-9]{1,})/?$";s:58:"index.php?post_type=content-introduction&paged=$matches[1]";s:19:"onze-referenties/?$";s:36:"index.php?post_type=onze-referenties";s:49:"onze-referenties/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=onze-referenties&feed=$matches[1]";s:44:"onze-referenties/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=onze-referenties&feed=$matches[1]";s:36:"onze-referenties/page/([0-9]{1,})/?$";s:54:"index.php?post_type=onze-referenties&paged=$matches[1]";s:42:"wp-types-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)/trackback/?$";s:41:"index.php?wp-types-group=$matches[1]&tb=1";s:43:"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&paged=$matches[2]";s:50:"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp-types-group=$matches[1]&page=$matches[2]";s:31:"wp-types-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wp-types-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"wp-types-user-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)/trackback/?$";s:46:"index.php?wp-types-user-group=$matches[1]&tb=1";s:48:"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]";s:55:"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?wp-types-user-group=$matches[1]&page=$matches[2]";s:36:"wp-types-user-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"wp-types-user-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"over-yelloow-tax/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?over-yelloow-tax=$matches[1]&feed=$matches[2]";s:50:"over-yelloow-tax/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?over-yelloow-tax=$matches[1]&feed=$matches[2]";s:43:"over-yelloow-tax/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?over-yelloow-tax=$matches[1]&paged=$matches[2]";s:25:"over-yelloow-tax/(.+?)/?$";s:38:"index.php?over-yelloow-tax=$matches[1]";s:36:"voor-wie/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"voor-wie/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"voor-wie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"voor-wie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"voor-wie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"voor-wie/([^/]+)/trackback/?$";s:35:"index.php?voor-wie=$matches[1]&tb=1";s:49:"voor-wie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?voor-wie=$matches[1]&feed=$matches[2]";s:44:"voor-wie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?voor-wie=$matches[1]&feed=$matches[2]";s:37:"voor-wie/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?voor-wie=$matches[1]&paged=$matches[2]";s:44:"voor-wie/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?voor-wie=$matches[1]&cpage=$matches[2]";s:29:"voor-wie/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?voor-wie=$matches[1]&page=$matches[2]";s:25:"voor-wie/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"voor-wie/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"voor-wie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"voor-wie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"voor-wie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"drijfveren/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"drijfveren/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"drijfveren/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"drijfveren/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"drijfveren/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"drijfveren/([^/]+)/trackback/?$";s:37:"index.php?drijfveren=$matches[1]&tb=1";s:51:"drijfveren/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?drijfveren=$matches[1]&feed=$matches[2]";s:46:"drijfveren/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?drijfveren=$matches[1]&feed=$matches[2]";s:39:"drijfveren/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?drijfveren=$matches[1]&paged=$matches[2]";s:46:"drijfveren/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?drijfveren=$matches[1]&cpage=$matches[2]";s:31:"drijfveren/([^/]+)(/[0-9]+)?/?$";s:49:"index.php?drijfveren=$matches[1]&page=$matches[2]";s:27:"drijfveren/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"drijfveren/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"drijfveren/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"drijfveren/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"drijfveren/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"over-yelloow/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"over-yelloow/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"over-yelloow/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"over-yelloow/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"over-yelloow/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"over-yelloow/([^/]+)/trackback/?$";s:39:"index.php?over-yelloow=$matches[1]&tb=1";s:53:"over-yelloow/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?over-yelloow=$matches[1]&feed=$matches[2]";s:48:"over-yelloow/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?over-yelloow=$matches[1]&feed=$matches[2]";s:41:"over-yelloow/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?over-yelloow=$matches[1]&paged=$matches[2]";s:48:"over-yelloow/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?over-yelloow=$matches[1]&cpage=$matches[2]";s:33:"over-yelloow/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?over-yelloow=$matches[1]&page=$matches[2]";s:29:"over-yelloow/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"over-yelloow/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"over-yelloow/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"over-yelloow/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"over-yelloow/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"content-introduction/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"content-introduction/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"content-introduction/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"content-introduction/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"content-introduction/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"content-introduction/([^/]+)/trackback/?$";s:47:"index.php?content-introduction=$matches[1]&tb=1";s:61:"content-introduction/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?content-introduction=$matches[1]&feed=$matches[2]";s:56:"content-introduction/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?content-introduction=$matches[1]&feed=$matches[2]";s:49:"content-introduction/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?content-introduction=$matches[1]&paged=$matches[2]";s:56:"content-introduction/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?content-introduction=$matches[1]&cpage=$matches[2]";s:41:"content-introduction/([^/]+)(/[0-9]+)?/?$";s:59:"index.php?content-introduction=$matches[1]&page=$matches[2]";s:37:"content-introduction/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"content-introduction/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"content-introduction/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"content-introduction/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"content-introduction/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"onze-referenties/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"onze-referenties/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"onze-referenties/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"onze-referenties/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"onze-referenties/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"onze-referenties/([^/]+)/trackback/?$";s:43:"index.php?onze-referenties=$matches[1]&tb=1";s:57:"onze-referenties/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?onze-referenties=$matches[1]&feed=$matches[2]";s:52:"onze-referenties/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?onze-referenties=$matches[1]&feed=$matches[2]";s:45:"onze-referenties/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?onze-referenties=$matches[1]&paged=$matches[2]";s:52:"onze-referenties/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?onze-referenties=$matches[1]&cpage=$matches[2]";s:37:"onze-referenties/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?onze-referenties=$matches[1]&page=$matches[2]";s:33:"onze-referenties/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"onze-referenties/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"onze-referenties/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"onze-referenties/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"onze-referenties/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(634, 'WPLANG', '', 'yes') ;

#
# End of data contents of table `yl_options`
# --------------------------------------------------------



#
# Delete any existing table `yl_postmeta`
#

DROP TABLE IF EXISTS `yl_postmeta`;


#
# Table structure of table `yl_postmeta`
#

CREATE TABLE `yl_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=749 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_postmeta`
#
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"[your-name] <admin@yelloow.id>";s:4:"body";s:169:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)";s:9:"recipient";s:16:"admin@yelloow.id";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"Yelloow <admin@yelloow.id>";s:4:"body";s:111:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: admin@yelloow.id";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:6:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 5, '_edit_last', '1'),
(9, 5, '_edit_lock', '1423226769:1'),
(10, 5, '_wp_page_template', 'default'),
(11, 7, '_edit_last', '1'),
(12, 7, '_edit_lock', '1423487853:1'),
(13, 8, '_edit_last', '1'),
(14, 8, '_edit_lock', '1422549987:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_edit_lock', '1423493196:1'),
(17, 10, '_wp_types_group_filters_association', 'any'),
(18, 10, '_wp_types_group_fields', ',button-text-voor-wie,button-url-voor-wie,yellow-image-voor-wie,'),
(19, 10, '_wp_types_group_post_types', ',voor-wie,'),
(20, 10, '_wp_types_group_terms', 'all'),
(21, 10, '_wp_types_group_admin_styles', ''),
(22, 10, '_wp_types_group_templates', 'all'),
(23, 10, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(24, 11, '_edit_last', '1'),
(25, 11, '_wp_page_template', 'default'),
(26, 11, '_edit_lock', '1423575980:1'),
(27, 13, '_edit_last', '1'),
(28, 13, '_edit_lock', '1423576081:1'),
(29, 13, '_wp_page_template', 'default'),
(30, 15, '_edit_last', '1'),
(31, 15, '_edit_lock', '1423654315:1'),
(32, 15, '_wp_page_template', 'default'),
(33, 17, '_edit_last', '1'),
(34, 17, '_edit_lock', '1422552308:1'),
(35, 18, '_edit_last', '3'),
(36, 18, '_edit_lock', '1423757868:3'),
(37, 19, '_edit_last', '1'),
(38, 19, '_edit_lock', '1423227591:1'),
(39, 20, '_edit_last', '1'),
(40, 20, '_edit_lock', '1424838208:1'),
(41, 21, '_edit_last', '1'),
(42, 21, '_edit_lock', '1424782831:1'),
(43, 22, '_edit_last', '1'),
(44, 22, '_edit_lock', '1423487762:1'),
(45, 23, '_wp_types_group_filters_association', 'any'),
(46, 23, '_wp_types_group_fields', ',logo,reference_link,'),
(47, 23, '_wp_types_group_post_types', ',onze-referenties,'),
(48, 23, '_wp_types_group_terms', 'all'),
(49, 23, '_wp_types_group_admin_styles', ''),
(50, 23, '_wp_types_group_templates', 'all'),
(51, 23, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(52, 24, '_edit_last', '3'),
(53, 24, '_edit_lock', '1424837765:1'),
(55, 24, '_wpcf-logo-sort-order', 'a:6:{i:0;i:500;i:1;i:501;i:2;i:502;i:3;i:503;i:4;i:504;i:5;i:505;}'),
(56, 25, '_edit_last', '1'),
(57, 25, '_edit_lock', '1423485135:1'),
(58, 25, '_wp_page_template', 'default'),
(59, 28, '_form', '<div class="form-group">\n[text* naam id:naam class:form-control placeholder "naam"]\n</div>\n\n<div class="form-group">\n[text naam-organisatie id:naam-organisatie class:form-control placeholder "naam organisatie"]\n</div>\n\n<div class="form-group">\n[text adres id:adres class:form-control placeholder "adres"]\n</div>\n\n<div class="form-group">\n[text plaats id:plaats class:form-control placeholder "plaats"]\n</div>\n\n<div class="form-group">\n[text phone id:phone class:form-control placeholder "telefoon"]\n</div>\n\n<div class="form-group">\n[email* email id:email class:form-control placeholder "email"]\n</div>\n\n<div class="form-group">\n[textarea opmerkingen id:opmerkingen class:form-control placeholder "opmerkingen, vragen, etc"]\n</div>\n\n[submit id:submit class:btn class:btn-turquoise class:center-block "Verzenden"]'),
(60, 28, '_mail', 'a:8:{s:7:"subject";s:29:"Yelloow Contact Form - [naam]";s:6:"sender";s:16:"[naam] <[email]>";s:4:"body";s:216:"From: [naam] <[email]>\nOrganization: [naam-organisatie]\nAddress: [adres]\nPlaats: [plaats]\nPhone: [phone]\n\nMessage Body:\n[opmerkingen]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)";s:9:"recipient";s:15:"info@yelloow.be";s:18:"additional_headers";s:17:"Reply-To: [email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(61, 28, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"Yelloow <admin@yelloow.id>";s:4:"body";s:111:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: admin@yelloow.id";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(62, 28, '_messages', 'a:21:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(63, 28, '_additional_settings', ''),
(64, 28, '_locale', 'en_US'),
(65, 31, '_wp_attached_file', '2014/12/professional.png'),
(66, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:142;s:6:"height";i:142;s:4:"file";s:24:"2014/12/professional.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(67, 31, '_wp_attachment_image_alt', 'Individuele professional'),
(68, 9, '_thumbnail_id', '31'),
(69, 32, '_wp_attached_file', '2014/12/leidinggevenden.png'),
(70, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:142;s:6:"height";i:142;s:4:"file";s:27:"2014/12/leidinggevenden.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(71, 33, '_wp_attached_file', '2014/12/team.png'),
(72, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:142;s:6:"height";i:142;s:4:"file";s:16:"2014/12/team.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(73, 33, '_wp_attachment_image_alt', 'Teams'),
(74, 32, '_wp_attachment_image_alt', 'Leidinggevenden'),
(75, 8, '_thumbnail_id', '33'),
(76, 7, '_thumbnail_id', '32'),
(80, 35, '_wp_attached_file', '2014/12/graves-chart.png'),
(81, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:767;s:6:"height";i:569;s:4:"file";s:24:"2014/12/graves-chart.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"graves-chart-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"graves-chart-300x222.png";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(82, 35, '_wp_attachment_image_alt', 'graves-chart'),
(83, 15, '_thumbnail_id', '35'),
(84, 37, '_edit_last', '1'),
(85, 37, '_edit_lock', '1422552228:1'),
(86, 38, '_wp_attached_file', '2014/12/brush-blue.png'),
(87, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:22:"2014/12/brush-blue.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"brush-blue-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(88, 39, '_wp_attached_file', '2014/12/brush-green.png'),
(89, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:23:"2014/12/brush-green.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"brush-green-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(90, 40, '_wp_attached_file', '2014/12/brush-orange.png'),
(91, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:24:"2014/12/brush-orange.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"brush-orange-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(92, 41, '_wp_attached_file', '2014/12/brush-purple.png'),
(93, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:24:"2014/12/brush-purple.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"brush-purple-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(94, 42, '_wp_attached_file', '2014/12/brush-red.png'),
(95, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:21:"2014/12/brush-red.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"brush-red-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(96, 43, '_wp_attached_file', '2014/12/brush-turqoise.png'),
(97, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:26:"2014/12/brush-turqoise.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"brush-turqoise-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(98, 42, '_wp_attachment_image_alt', 'rood'),
(99, 43, '_wp_attachment_image_alt', 'turkoois'),
(100, 41, '_wp_attachment_image_alt', 'paars'),
(101, 40, '_wp_attachment_image_alt', 'oranje'),
(102, 39, '_wp_attachment_image_alt', 'groen'),
(103, 38, '_wp_attachment_image_alt', 'blauw'),
(104, 37, '_thumbnail_id', '42'),
(109, 46, '_wp_attached_file', '2014/12/logo-cm.png') ;
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(110, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:111;s:6:"height";i:112;s:4:"file";s:19:"2014/12/logo-cm.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(111, 47, '_wp_attached_file', '2014/12/logo-oxfam.png'),
(112, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:110;s:6:"height";i:95;s:4:"file";s:22:"2014/12/logo-oxfam.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(113, 48, '_wp_attached_file', '2014/12/logo-square.png'),
(114, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:97;s:6:"height";i:97;s:4:"file";s:23:"2014/12/logo-square.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(115, 49, '_wp_attached_file', '2014/12/logo-an.png'),
(116, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:103;s:4:"file";s:19:"2014/12/logo-an.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(123, 50, '_wp_attached_file', '2014/12/man.jpg'),
(124, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:867;s:4:"file";s:15:"2014/12/man.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"man-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"man-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"man-1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(127, 18, '_wpcf-logo-sort-order', 'a:1:{i:0;i:530;}'),
(128, 51, '_wp_types_group_filters_association', 'any'),
(129, 51, '_wp_types_group_fields', ',intro,intro-left-column,intro-right-column,'),
(130, 51, '_wp_types_group_post_types', ',content-introduction,'),
(131, 51, '_wp_types_group_terms', 'all'),
(132, 51, '_wp_types_group_admin_styles', ''),
(133, 51, '_wp_types_group_templates', 'all'),
(134, 51, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(135, 52, '_edit_last', '1'),
(141, 52, '_wpcf-intro-right-column-sort-order', 'a:3:{i:0;i:746;i:1;i:747;i:2;i:748;}'),
(142, 52, '_edit_lock', '1424784876:1'),
(162, 17, '_thumbnail_id', '41'),
(163, 55, '_edit_last', '1'),
(164, 55, '_edit_lock', '1422552192:1'),
(165, 55, '_thumbnail_id', '38'),
(166, 56, '_edit_last', '1'),
(167, 56, '_edit_lock', '1422552147:1'),
(168, 56, '_thumbnail_id', '40'),
(169, 57, '_edit_last', '1'),
(170, 57, '_edit_lock', '1422552135:1'),
(171, 57, '_thumbnail_id', '39'),
(172, 58, '_edit_last', '1'),
(173, 58, '_edit_lock', '1422552117:1'),
(174, 59, '_wp_attached_file', '2014/12/brush-yellow.png'),
(175, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:24:"2014/12/brush-yellow.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"brush-yellow-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(176, 58, '_thumbnail_id', '59'),
(177, 60, '_edit_last', '1'),
(178, 60, '_edit_lock', '1422552055:1'),
(179, 60, '_thumbnail_id', '43'),
(181, 19, '_wpcf-logo-sort-order', 'a:1:{i:0;i:466;}'),
(182, 20, 'wpcf-logo', ''),
(183, 20, '_wpcf-logo-sort-order', 'a:1:{i:0;i:182;}'),
(184, 25, 'yelloow-map', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d628.1255815372365!2d4.189223553373107!3d50.96990503202596!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c395054a00d8fd%3A0x555062385311b7d2!2sMarktstraat+67%2C+1745+Opwijk%2C+Belgium!5e0!3m2!1sen!2s!4v1420602373578" width="600" height="450" frameborder="0" style="border:0"></iframe>'),
(248, 69, '_menu_item_type', 'custom'),
(249, 69, '_menu_item_menu_item_parent', '0'),
(250, 69, '_menu_item_object_id', '69'),
(251, 69, '_menu_item_object', 'custom'),
(252, 69, '_menu_item_target', ''),
(253, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 69, '_menu_item_xfn', ''),
(255, 69, '_menu_item_url', 'http://localhost/yelloow/voor-wie/'),
(257, 70, '_menu_item_type', 'post_type'),
(258, 70, '_menu_item_menu_item_parent', '0'),
(259, 70, '_menu_item_object_id', '11'),
(260, 70, '_menu_item_object', 'page'),
(261, 70, '_menu_item_target', ''),
(262, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 70, '_menu_item_xfn', ''),
(264, 70, '_menu_item_url', ''),
(266, 71, '_menu_item_type', 'custom'),
(267, 71, '_menu_item_menu_item_parent', '0'),
(268, 71, '_menu_item_object_id', '71'),
(269, 71, '_menu_item_object', 'custom'),
(270, 71, '_menu_item_target', ''),
(271, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 71, '_menu_item_xfn', ''),
(273, 71, '_menu_item_url', 'http://localhost/yelloow/over-yelloow/'),
(275, 72, '_menu_item_type', 'post_type'),
(276, 72, '_menu_item_menu_item_parent', '0'),
(277, 72, '_menu_item_object_id', '25'),
(278, 72, '_menu_item_object', 'page'),
(279, 72, '_menu_item_target', ''),
(280, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 72, '_menu_item_xfn', ''),
(282, 72, '_menu_item_url', ''),
(286, 1, '_edit_lock', '1422629361:1'),
(287, 78, '_wp_attached_file', '2014/12/team-yellow.png'),
(288, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:23:"2014/12/team-yellow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(289, 79, '_wp_attached_file', '2014/12/leidinggevenden-yellow.png'),
(290, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:34:"2014/12/leidinggevenden-yellow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(291, 80, '_wp_attached_file', '2014/12/professional-yellow.png'),
(292, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:31:"2014/12/professional-yellow.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(433, 8, 'wpcf-button-text-voor-wie', 'Meer weten? Contacteer ons'),
(434, 8, 'wpcf-button-url-voor-wie', 'mailto:info@yelloow.be'),
(435, 8, 'wpcf-yellow-image-voor-wie', 'http://localhost/yelloow/wp-content/uploads/2014/12/team-yellow.png'),
(457, 102, '_wp_attached_file', '2014/12/TrouwMien-e1422628284488.jpg'),
(458, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:355;s:4:"file";s:36:"2014/12/TrouwMien-e1422628284488.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"TrouwMien-e1422628284488-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"TrouwMien-e1422628284488-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(459, 102, '_wp_attachment_backup_sizes', 'a:7:{s:9:"full-orig";a:3:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:13:"TrouwMien.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:21:"TrouwMien-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:21:"TrouwMien-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:18:"full-1422628192425";a:3:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:28:"TrouwMien-e1422628167778.jpg";}s:18:"full-1422628284488";a:3:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:28:"TrouwMien-e1422628192425.jpg";}s:23:"thumbnail-1422628284488";a:4:{s:4:"file";s:36:"TrouwMien-e1422628167778-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:20:"medium-1422628284488";a:4:{s:4:"file";s:36:"TrouwMien-e1422628167778-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}'),
(460, 104, '_wp_attached_file', '2014/12/flight.png'),
(461, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:338;s:6:"height";i:213;s:4:"file";s:18:"2014/12/flight.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flight-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"flight-300x189.png";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(463, 105, '_wp_trash_meta_status', 'auto-draft'),
(464, 105, '_wp_trash_meta_time', '1422629487'),
(466, 19, 'wpcf-logo', ''),
(468, 21, '_wpcf-logo-sort-order', 'a:1:{i:0;i:469;}'),
(469, 21, 'wpcf-logo', ''),
(471, 22, '_wpcf-logo-sort-order', 'a:1:{i:0;i:549;}'),
(480, 109, '_wp_attached_file', '2015/01/OMcollective.png'),
(481, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:24:"2015/01/OMcollective.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"OMcollective-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"OMcollective-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(482, 110, '_wp_attached_file', '2015/01/max.jpg'),
(483, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1403;s:6:"height";i:992;s:4:"file";s:15:"2015/01/max.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"max-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"max-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"max-1024x724.jpg";s:5:"width";i:1024;s:6:"height";i:724;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(484, 111, '_wp_attached_file', '2015/01/feestpaleis.jpg') ;
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(485, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:826;s:6:"height";i:802;s:4:"file";s:23:"2015/01/feestpaleis.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"feestpaleis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"feestpaleis-300x291.jpg";s:5:"width";i:300;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(486, 112, '_wp_attached_file', '2015/01/introfashion.jpg'),
(487, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:24:"2015/01/introfashion.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"introfashion-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(496, 114, '_wp_attached_file', '2014/12/t-flight90.png'),
(497, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:319;s:6:"height";i:196;s:4:"file";s:22:"2014/12/t-flight90.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"t-flight90-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"t-flight90-300x184.png";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(498, 115, '_wp_attached_file', '2014/12/Horselivecom.jpg'),
(499, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:62;s:4:"file";s:24:"2014/12/Horselivecom.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Horselivecom-150x62.jpg";s:5:"width";i:150;s:6:"height";i:62;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(500, 24, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/feestpaleis.jpg'),
(501, 24, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/introfashion.jpg'),
(502, 24, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/max.jpg'),
(503, 24, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/OMcollective.png'),
(504, 24, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2014/12/t-flight90.png'),
(505, 24, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2014/12/Horselivecom.jpg'),
(506, 116, '_wp_attached_file', '2014/12/P1010540-copy.jpg'),
(507, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1540;s:6:"height";i:867;s:4:"file";s:25:"2014/12/P1010540-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010540-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010540-copy-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010540-copy-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(508, 117, '_wp_attached_file', '2014/12/P1010549-copy.jpg'),
(509, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1294;s:6:"height";i:867;s:4:"file";s:25:"2014/12/P1010549-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010549-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010549-copy-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010549-copy-1024x686.jpg";s:5:"width";i:1024;s:6:"height";i:686;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(510, 119, '_wp_attached_file', '2014/12/P1010552-copy.jpg'),
(511, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1094;s:6:"height";i:867;s:4:"file";s:25:"2014/12/P1010552-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010552-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010552-copy-300x237.jpg";s:5:"width";i:300;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010552-copy-1024x811.jpg";s:5:"width";i:1024;s:6:"height";i:811;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(514, 122, '_wp_attached_file', '2014/12/TrouwMien_02.jpg'),
(515, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:495;s:6:"height";i:365;s:4:"file";s:24:"2014/12/TrouwMien_02.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"TrouwMien_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"TrouwMien_02-300x221.jpg";s:5:"width";i:300;s:6:"height";i:221;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(516, 18, '_thumbnail_id', '173'),
(518, 123, '_wp_attached_file', '2014/12/Linda-Greet-9-e1422823822199.jpg'),
(519, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1314;s:6:"height";i:876;s:4:"file";s:40:"2014/12/Linda-Greet-9-e1422823822199.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Linda-Greet-9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Linda-Greet-9-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Linda-Greet-9-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1419250786;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(520, 125, '_wp_attached_file', '2014/12/Linda-Greet-7-e1422823855861.jpg'),
(521, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1314;s:6:"height";i:876;s:4:"file";s:40:"2014/12/Linda-Greet-7-e1422823855861.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Linda-Greet-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Linda-Greet-7-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Linda-Greet-7-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1419250529;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(522, 126, '_wp_attached_file', '2014/12/Linda-Greet-6-e1422823880804.jpg'),
(523, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1314;s:6:"height";i:876;s:4:"file";s:40:"2014/12/Linda-Greet-6-e1422823880804.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Linda-Greet-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Linda-Greet-6-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Linda-Greet-6-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1419250467;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(524, 128, '_wp_attached_file', '2014/12/Linda-Greet-3-e1422823901625.jpg'),
(525, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1314;s:6:"height";i:876;s:4:"file";s:40:"2014/12/Linda-Greet-3-e1422823901625.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Linda-Greet-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Linda-Greet-3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Linda-Greet-3-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1419251157;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(526, 123, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:4647;s:6:"height";i:3099;s:4:"file";s:17:"Linda-Greet-9.jpg";}}'),
(527, 125, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:4719;s:6:"height";i:3146;s:4:"file";s:17:"Linda-Greet-7.jpg";}}'),
(528, 126, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:5148;s:6:"height";i:3433;s:4:"file";s:17:"Linda-Greet-6.jpg";}}'),
(529, 128, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:5616;s:6:"height";i:3744;s:4:"file";s:17:"Linda-Greet-3.jpg";}}'),
(530, 18, 'wpcf-logo', ''),
(546, 1, '_wp_trash_meta_status', 'publish'),
(547, 1, '_wp_trash_meta_time', '1423050961'),
(548, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(549, 22, 'wpcf-logo', ''),
(551, 130, '_wpcf_belongs_over-yelloow_id', '24'),
(555, 131, '_wpcf_belongs_over-yelloow_id', '24'),
(559, 132, '_wpcf_belongs_over-yelloow_id', '24'),
(563, 133, '_wpcf_belongs_over-yelloow_id', '24'),
(567, 134, '_wpcf_belongs_over-yelloow_id', '24'),
(571, 135, '_wpcf_belongs_over-yelloow_id', '24'),
(616, 131, '_edit_lock', '1423240709:1'),
(617, 131, '_edit_last', '1'),
(620, 130, '_edit_lock', '1423240841:1'),
(621, 130, '_edit_last', '1'),
(624, 134, '_edit_last', '1'),
(625, 134, '_edit_lock', '1423240547:1'),
(631, 137, '_wp_attached_file', '2014/12/P1010564-copy.jpg'),
(632, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4592;s:6:"height";i:2097;s:4:"file";s:25:"2014/12/P1010564-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010564-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010564-copy-300x136.jpg";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010564-copy-1024x467.jpg";s:5:"width";i:1024;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(657, 139, '_edit_lock', '1423229237:1'),
(658, 139, '_edit_last', '1'),
(659, 139, '_wp_trash_meta_status', 'publish'),
(660, 139, '_wp_trash_meta_time', '1423229436'),
(661, 141, '_edit_lock', '1423229514:1'),
(662, 141, '_edit_last', '1'),
(663, 141, '_wp_trash_meta_status', 'publish'),
(664, 141, '_wp_trash_meta_time', '1423229565'),
(665, 143, '_edit_lock', '1423229548:1'),
(666, 143, '_edit_last', '1'),
(667, 143, '_wp_trash_meta_status', 'publish'),
(668, 143, '_wp_trash_meta_time', '1423229698'),
(675, 130, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/feestpaleis.jpg'),
(676, 130, 'wpcf-reference_link', 'http://www.feestpaleis.be/'),
(677, 133, '_edit_lock', '1423241017:1'),
(678, 133, '_edit_last', '1'),
(683, 135, '_edit_lock', '1423241195:1'),
(684, 135, '_edit_last', '1'),
(693, 7, 'wpcf-button-text-voor-wie', 'Meer weten? Contacteer ons'),
(694, 7, 'wpcf-button-url-voor-wie', 'mailto:info@yelloow.be'),
(695, 7, 'wpcf-yellow-image-voor-wie', 'http://localhost/yelloow/wp-content/uploads/2014/12/leidinggevenden-yellow.png'),
(696, 9, 'wpcf-button-text-voor-wie', 'Meer weten? Contacteer ons'),
(697, 9, 'wpcf-button-url-voor-wie', 'mailto:info@yelloow.be'),
(698, 9, 'wpcf-yellow-image-voor-wie', 'http://localhost/yelloow/wp-content/uploads/2014/12/professional-yellow.png'),
(699, 165, '_wp_attached_file', '2015/02/OMcollective.png'),
(700, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:24:"2015/02/OMcollective.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"OMcollective-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"OMcollective-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(703, 131, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/introfashion.jpg'),
(704, 131, 'wpcf-reference_link', 'https://www.intro-fashionstore.be/'),
(707, 135, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2014/12/Horselivecom.jpg'),
(708, 135, 'wpcf-reference_link', 'http://www.horse-live.com/nl'),
(711, 134, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2014/12/t-flight90.png'),
(712, 134, 'wpcf-reference_link', 'http://www.flight-90.be/'),
(715, 133, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/02/OMcollective.png'),
(716, 133, 'wpcf-reference_link', 'https://www.omcollective.be/'),
(719, 132, 'wpcf-logo', 'http://localhost/yelloow/wp-content/uploads/2015/01/max.jpg'),
(720, 132, 'wpcf-reference_link', 'https://www.maxled.be/nl/'),
(721, 168, '_wp_attached_file', '2015/02/yelloow_web_15.png'),
(722, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:15;s:6:"height";i:15;s:4:"file";s:26:"2015/02/yelloow_web_15.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(723, 169, '_wp_attached_file', '2015/02/yelloow_Y_15.png'),
(724, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:15;s:6:"height";i:15;s:4:"file";s:24:"2015/02/yelloow_Y_15.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(725, 170, '_wp_attached_file', '2015/02/yelloow_mail_15.png'),
(726, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:15;s:6:"height";i:15;s:4:"file";s:27:"2015/02/yelloow_mail_15.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(727, 171, '_wp_attached_file', '2015/02/YELLOOW_ADDRESS_15.png'),
(728, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:15;s:6:"height";i:15;s:4:"file";s:30:"2015/02/YELLOOW_ADDRESS_15.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(729, 172, '_wp_attached_file', '2015/02/yelloow_call_15.png'),
(730, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:15;s:6:"height";i:15;s:4:"file";s:27:"2015/02/yelloow_call_15.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(731, 173, '_wp_attached_file', '2014/12/Linda-Greet-31.jpg') ;
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(732, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5616;s:6:"height";i:3744;s:4:"file";s:26:"2014/12/Linda-Greet-31.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Linda-Greet-31-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Linda-Greet-31-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"Linda-Greet-31-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1419251157;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(738, 52, '_yoast_wpseo_metadesc', 'YELLOOW is een dynamisch consultancy agency dat organisaties helpt inzicht te verwerven in de drijfveren en talenten van medewerkers.'),
(744, 52, 'wpcf-intro', '<h4>YELLOOW biedt ondersteuning bij de <strong>selectie</strong> van medewerkers, <br /><strong>talent management</strong> en <strong>coaching</strong> van jezelf en je bedrijf of organisatie.<br />We focussen daarbij op de talenten en <strong>drijfveren</strong> van jezelf en van je medewerkers.</h4>'),
(745, 52, 'wpcf-intro-left-column', '<p>Mensen met verschillende talenten, met hun unieke <a title="Black Box" href="#blackbox"><strong>Black Box</strong></a>, goed laten samenwerken en motiveren is de uitdaging voor elk bedrijf.</p>\r\n<p>Het besef dat ieder met een andere bril naar de wereld kijkt, is de basis voor een betere samenwerking. Inzicht in je eigen kijk, je eigen <a title="Black Box" href="#blackbox"><strong>Black Box</strong></a>, creëert kansen om medewerkers en teams beter te managen.</p>\r\n<p>YELLOOW helpt zicht krijgen op de processen die in een bedrijf spelen. Uw en onze analyse zijn het uitgangspunt. YELLOOW steunt daarbij op <a title="Approach" href="http://localhost/yelloow/?p=15"><strong>de kleurentheorie van Graves</strong></a> om tot een bruikbare analyse te komen.</p>'),
(746, 52, 'wpcf-intro-right-column', 'MANAGERS & LEIDINGGEVENDEN'),
(747, 52, 'wpcf-intro-right-column', 'TEAMS'),
(748, 52, 'wpcf-intro-right-column', 'INDIVIDUELE PROFESSIONALS') ;

#
# End of data contents of table `yl_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `yl_posts`
#

DROP TABLE IF EXISTS `yl_posts`;


#
# Table structure of table `yl_posts`
#

CREATE TABLE `yl_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_posts`
#
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-12-11 09:38:45', '2014-12-11 09:38:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-02-04 11:56:01', '2015-02-04 11:56:01', '', 0, 'http://localhost/yelloow/?p=1', 0, 'post', '', 1),
(4, 1, '2014-12-11 09:49:51', '2014-12-11 09:49:51', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <admin@yelloow.id>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)\nadmin@yelloow.id\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nYelloow <admin@yelloow.id>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)\n[your-email]\nReply-To: admin@yelloow.id\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2014-12-11 09:49:51', '2014-12-11 09:49:51', '', 0, 'http://localhost/yelloow/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2014-12-11 10:49:23', '2014-12-11 10:49:23', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé.</p>\r\n<p><strong>Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</strong></p>', 'Black Box', '', 'publish', 'open', 'open', '', 'black-box', '', '', '2015-01-29 15:05:54', '2015-01-29 15:05:54', '', 0, 'http://localhost/yelloow/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-12-11 10:49:23', '2014-12-11 10:49:23', 'Ieder mens heeft een “Black Box”: een set van onbewuste waarden en normen die bepaalt hoe hij zich gedraagt in een bepaalde situatie en hoe hij naar de wereld kijkt. Deze “Black Box” is voor iedereen verschillend en verklaart vele professionele en privé discussies en misverstanden.\r\n\r\nWe kijken elk met een gekleurde bril naar de wereld en interpreteren boodschappen van anderen met die bril.\r\n\r\n<strong>Om je "Black Box" te kennen zet YELLOOW een gevalideerde test in. Het resultaat is een profiel dat voor elk waardensysteem je kijk weergeeft.</strong>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-12-11 10:49:23', '2014-12-11 10:49:23', '', 5, 'http://localhost/yelloow/?p=6', 0, 'revision', '', 0),
(7, 1, '2014-12-11 10:52:11', '2014-12-11 10:52:11', '<p>"One does not ‘manage’ people. The task is to lead people." Hoe te sturen? Hoe te motiveren? Hoe NIET demotiveren? Wat is jouw manier van leidinggeven? Wat is de gepaste manier van leidinggeven voor je medewerkers?</p>\r\n<p>Kennis van je eigen logica, je persoonlijke <strong><a title="Black Box" href="#blackbox">Black Box</a></strong>, geeft inzicht in je leiderschapsstijl. <br />Kennis van de Black Box van je medewerkers geeft inzicht in de bedrijfscultuur.</p>', 'Leidinggevenden', '', 'publish', 'closed', 'closed', '', 'leidinggevenden', '', '', '2015-02-09 13:19:07', '2015-02-09 13:19:07', '', 0, 'http://localhost/yelloow/?post_type=voor-wie&#038;p=7', 0, 'voor-wie', '', 0),
(8, 1, '2014-12-11 10:54:38', '2014-12-11 10:54:38', '<p>Goed functionerende teams zijn evenwichtig samengestelde teams. Soms is het nodig om de balans binnen een groep bij te sturen. YELLOOW neemt de samenstelling van teams onder de loep. </p>\r\n<p>Als manager of leidinggevende krijg je een helder zicht op de sterke kanten én op de werkpunten van je team of afdelingen.<br />De teamleden zelf krijgen inzicht in hun eigen drijfveren en in die van hun collega’s.</p>\r\n<p><strong><a title="Approach" href="http://localhost/yelloow/approach/" target="_blank">De kleurentheorie</a></strong> biedt op een eenvoudige manier inzicht. Met meer onderling begrip, een vlottere communicatie en een betere samenwerking als resultaat.</p>', 'Teams', '', 'publish', 'closed', 'closed', '', 'teams', '', '', '2015-01-29 16:48:13', '2015-01-29 16:48:13', '', 0, 'http://localhost/yelloow/?post_type=voor-wie&#038;p=8', 0, 'voor-wie', '', 0),
(9, 1, '2014-12-11 10:55:03', '2014-12-11 10:55:03', '<p>Je vraagt je af of een job of functie aansluit bij wat je wil in je leven? Je kan soms wat hulp gebruiken om te communiceren met je collega’s en leidinggevende?</p>\r\n<p>Een gevalideerde test biedt op een visuele manier inzicht in je motivatie en je drijfveren, je sterke kanten, je talenten en je communicatiestijl.</p>', 'Individuele professional', '', 'publish', 'closed', 'closed', '', 'individuele-professional', '', '', '2015-02-09 14:48:38', '2015-02-09 14:48:38', '', 0, 'http://localhost/yelloow/?post_type=voor-wie&#038;p=9', 0, 'voor-wie', '', 0),
(10, 1, '2014-12-11 10:56:44', '2014-12-11 10:56:44', '', 'Voor Wie', '', 'publish', 'open', 'open', '', 'voor-wie', '', '', '2015-01-06 07:54:47', '2015-01-06 07:54:47', '', 0, 'http://localhost/yelloow/?wp-types-group=voor-wie', 0, 'wp-types-group', '', 0),
(11, 1, '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 'Approach', '', 'publish', 'open', 'open', '', 'approach', '', '', '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 0, 'http://localhost/yelloow/?page_id=11', 0, 'page', '', 0),
(12, 1, '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 'Approach', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 11, 'http://localhost/yelloow/?p=12', 0, 'revision', '', 0),
(13, 1, '2014-12-11 10:58:59', '2014-12-11 10:58:59', '<p style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<h5 style="text-align: center; line-height: 1.5;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: center; line-height: 1.5;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'publish', 'open', 'open', '', 'trouble-shooting', '', '', '2015-02-09 20:14:23', '2015-02-09 20:14:23', '', 0, 'http://localhost/yelloow/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-12-11 10:58:59', '2014-12-11 10:58:59', '', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-11 10:58:59', '2014-12-11 10:58:59', '', 13, 'http://localhost/yelloow/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-12-11 10:59:22', '2014-12-11 10:59:22', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk bepaald wordt door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem bundelt overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten en wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'publish', 'open', 'open', '', 'graves', '', '', '2015-02-11 11:19:31', '2015-02-11 11:19:31', '', 0, 'http://localhost/yelloow/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-12-11 10:59:22', '2014-12-11 10:59:22', '', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-11 10:59:22', '2014-12-11 10:59:22', '', 15, 'http://localhost/yelloow/?p=16', 0, 'revision', '', 0),
(17, 1, '2014-12-11 11:00:34', '2014-12-11 11:00:34', '<p><strong>STAAT VOOR:</strong> ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof en bescheidenheid.</p>\r\n<p><strong>TE VEEL:</strong> achterdocht, wantrouwen.</p>', 'PAARS', '', 'publish', 'closed', 'closed', '', 'paars', '', '', '2015-01-29 17:26:39', '2015-01-29 17:26:39', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=17', 1, 'drijfveren', '', 0),
(18, 1, '2014-12-11 11:44:41', '2014-12-11 11:44:41', '<p>Greet Leemans en Linda Leemans, leading partners van YELLOOW.<br />Na meer dan 20 jaar ervaring als leidinggevenden gingen ze een nieuwe uitdaging aan met de oprichting van YELLOOW consult.</p>', 'Over Yelloow Intro', '', 'publish', 'closed', 'closed', '', 'over-yelloow-intro', '', '', '2015-02-12 16:19:33', '2015-02-12 16:19:33', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=18', 0, 'over-yelloow', '', 0),
(19, 1, '2014-12-11 11:52:19', '2014-12-11 11:52:19', '<p>Na een kleine VZW in de non-profit uitgebouwd te hebben tot een grote organisatie, hebben we geleerd hoe belangrijk het is om menselijk kapitaal in een organisatie te versterken en een positieve flow te creeëren.</p>\r\n<p>Het succes van een bedrijf gaat hand in hand met goede interne communicatie, met klantgerichtheid en met medewerkerstevredenheid.</p>', 'Onze visie', '', 'publish', 'closed', 'closed', '', 'onze-visie', '', '', '2015-02-06 12:58:33', '2015-02-06 12:58:33', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=19', 1, 'over-yelloow', '', 0),
(20, 1, '2014-12-11 11:52:57', '2014-12-11 11:52:57', '<p>YELLOOW focust op de verwachtingen en het potentieel aanwezig in een bedrijf. Kennis van het bedrijf en van de bedrijfscultuur is essentieel om aan de slag te gaan. Kleine wijzigingen in functies of communicatie kunnen reeds een groot verschil maken.</p>\r\n<p>&nbsp;</p>\r\n<p>Om zicht te krijgen op de verwachtingen en perspectieven van een bedrijf hanteert YELLOOW een gevalideerde test die talenten, sterke kanten en blinde vlekken naar boven brengt. Na een verkennend gesprek bezorgen we een plan van aanpak.</p>\r\n<p><strong>Het succes van een bedrijf is onze motivatie. </strong></p>', 'Onze aanpak', '', 'publish', 'closed', 'closed', '', 'onze-aanpak', '', '', '2015-02-06 12:57:44', '2015-02-06 12:57:44', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=20', 2, 'over-yelloow', '', 0),
(21, 1, '2014-12-11 11:53:41', '2014-12-11 11:53:41', '<p>Het snijpunt tussen het succes van een organisatie, klanttevredenheid en het welbevinden van medewerkers is onze passie. De voorbije 20 jaar bouwden we een kleine organisatie uit tot een bedrijf met 50 medewerkers.</p>\r\n<p>Samen met anderen mooie resultaten neerzetten en een blijvende dynamiek creeëren, realiseerden we door inzicht in wat er aan de basis ligt van ieders gedrag op de werkvloer, inzicht in onze eigen logica en die van onze medewerkers.</p>', 'Wie we zijn', '', 'publish', 'closed', 'closed', '', 'wie-we-zijn', '', '', '2015-01-30 15:03:03', '2015-01-30 15:03:03', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=21', 3, 'over-yelloow', '', 0),
(22, 1, '2014-12-11 11:56:25', '2014-12-11 11:56:25', '<ul style="list-style-type: disc;">\r\n<li>\r\n<p>BE as you are</p>\r\n</li>\r\n<li>\r\n<p>Talents needs a SMILE</p>\r\n</li>\r\n<li>\r\n<p>Vertrouw op JEZELF</p>\r\n</li>\r\n<li>\r\n<p>Good is the enemy of GREAT</p>\r\n</li>\r\n<li>\r\n<p>Leer op een ELEGANTE manier te falen:</p>\r\n<p>laat je fouten je niet ontmoedigen om het met meer inzicht OPNIEUW te proberen</p>\r\n</li>\r\n<li>\r\n<p>Think positive, your positivism will CONTAMINATE others</p>\r\n</li>\r\n<li>\r\n<p>Je kunt niet op je ogen vertrouwen als je VERBEELDING niet op scherp staat</p>\r\n</li>\r\n<li>\r\n<p>Ga uit van MOED, zo creëer je positief gedrag. Wie vanuit angst werkt, krijgt negatief gedrag</p>\r\n</li>\r\n<li>\r\n<p>VERGEET andermans normen en VERANDER je kritische innerlijke stem</p>\r\n</li>\r\n<li>\r\n<p>Humour and fun is at the start of every change. HAVE FUN!</p>\r\n</li>\r\n<li>\r\n<p>No risk and no CHANGE is no business</p>\r\n</li>\r\n<li>\r\n<p>Simple and clear is CLEVER</p>\r\n</li>\r\n<li>\r\n<p>SMILE, I shall respond</p>\r\n</li>\r\n<li>\r\n<p>Find the MUSIC in everyone</p>\r\n</li>\r\n<li>\r\n<p>ACCEPTEER complimenten</p>\r\n</li>\r\n<li>\r\n<p>Bekijk het OBJECTIEF</p>\r\n</li>\r\n<li>\r\n<p>DRAAG IETS BIJ!</p>\r\n</li>\r\n</ul>', 'Yelloow manifesto', '', 'publish', 'closed', 'closed', '', 'yelloow-manifesto', '', '', '2015-02-09 12:57:12', '2015-02-09 12:57:12', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=22', 4, 'over-yelloow', '', 0),
(23, 1, '2014-12-11 11:58:34', '2014-12-11 11:58:34', '', 'Onze Referenties', '', 'publish', 'open', 'open', '', 'onze-referenties', '', '', '2015-02-05 05:42:55', '2015-02-05 05:42:55', '', 0, 'http://localhost/yelloow/?wp-types-group=onze-referenties', 0, 'wp-types-group', '', 0),
(24, 1, '2014-12-11 11:59:56', '2014-12-11 11:59:56', '', 'Onze referenties', '', 'publish', 'closed', 'closed', '', 'onze-referenties', '', '', '2015-02-10 14:25:11', '2015-02-10 14:25:11', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=24', 0, 'over-yelloow', '', 0),
(25, 1, '2014-12-11 12:01:27', '2014-12-11 12:01:27', '<p>[contact-form-7 id="28" title="Kennismaken?"]</p>', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-01-07 03:48:38', '2015-01-07 03:48:38', '', 0, 'http://localhost/yelloow/?page_id=25', 0, 'page', '', 0),
(26, 1, '2014-12-11 12:01:27', '2014-12-11 12:01:27', '', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:01:27', '2014-12-11 12:01:27', '', 25, 'http://localhost/yelloow/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-12-11 12:02:02', '2014-12-11 12:02:02', '[contact-form-7 id="4" title="Contact form 1"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:02:02', '2014-12-11 12:02:02', '', 25, 'http://localhost/yelloow/?p=27', 0, 'revision', '', 0),
(28, 1, '2014-12-11 12:12:54', '2014-12-11 12:12:54', '<div class="form-group">\r\n[text* naam id:naam class:form-control placeholder "naam"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text naam-organisatie id:naam-organisatie class:form-control placeholder "naam organisatie"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text adres id:adres class:form-control placeholder "adres"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text plaats id:plaats class:form-control placeholder "plaats"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text phone id:phone class:form-control placeholder "telefoon"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[email* email id:email class:form-control placeholder "email"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[textarea opmerkingen id:opmerkingen class:form-control placeholder "opmerkingen, vragen, etc"]\r\n</div>\r\n\r\n[submit id:submit class:btn class:btn-turquoise class:center-block "Verzenden"]\nYelloow Contact Form - [naam]\n[naam] <[email]>\nFrom: [naam] <[email]>\r\nOrganization: [naam-organisatie]\r\nAddress: [adres]\r\nPlaats: [plaats]\r\nPhone: [phone]\r\n\r\nMessage Body:\r\n[opmerkingen]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)\ninfo@yelloow.be\nReply-To: [email]\n\n\n\n\n[your-subject]\nYelloow <admin@yelloow.id>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Yelloow (http://localhost/yelloow)\n[your-email]\nReply-To: admin@yelloow.id\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Kennismaken?', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-02-04 13:03:10', '2015-02-04 13:03:10', '', 0, 'http://localhost/yelloow/?post_type=wpcf7_contact_form&#038;p=28', 0, 'wpcf7_contact_form', '', 0),
(29, 1, '2014-12-11 12:13:10', '2014-12-11 12:13:10', '[contact-form-7 id="28" title="Contact"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:13:10', '2014-12-11 12:13:10', '', 25, 'http://localhost/yelloow/?p=29', 0, 'revision', '', 0),
(30, 1, '2014-12-11 12:24:13', '2014-12-11 12:24:13', '[contact-form-7 id="28" title="Kennismaken?"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:24:13', '2014-12-11 12:24:13', '', 25, 'http://localhost/yelloow/?p=30', 0, 'revision', '', 0),
(31, 1, '2014-12-12 08:11:01', '2014-12-12 08:11:01', 'Individuele professional', 'Individuele professional', 'Individuele professional', 'inherit', 'open', 'open', '', 'professional', '', '', '2014-12-12 08:11:53', '2014-12-12 08:11:53', '', 9, 'http://localhost/yelloow/wp-content/uploads/2014/12/professional.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2014-12-12 08:26:46', '2014-12-12 08:26:46', 'Leidinggevenden', 'Leidinggevenden', 'Leidinggevenden', 'inherit', 'open', 'open', '', 'leidinggevenden-2', '', '', '2014-12-12 08:27:15', '2014-12-12 08:27:15', '', 8, 'http://localhost/yelloow/wp-content/uploads/2014/12/leidinggevenden.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2014-12-12 08:26:46', '2014-12-12 08:26:46', 'Teams', 'Teams', 'Teams', 'inherit', 'open', 'open', '', 'team', '', '', '2014-12-12 08:27:05', '2014-12-12 08:27:05', '', 8, 'http://localhost/yelloow/wp-content/uploads/2014/12/team.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2014-12-12 08:52:18', '2014-12-12 08:52:18', 'l', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-12 08:52:18', '2014-12-12 08:52:18', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2014-12-12 09:00:29', '2014-12-12 09:00:29', 'graves-chart', 'graves-chart', 'graves-chart', 'inherit', 'open', 'open', '', 'graves-chart', '', '', '2014-12-12 09:00:47', '2014-12-12 09:00:47', '', 15, 'http://localhost/yelloow/wp-content/uploads/2014/12/graves-chart.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2014-12-12 09:01:35', '2014-12-12 09:01:35', 'jhkhh', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-12 09:01:35', '2014-12-12 09:01:35', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-12-12 09:25:15', '2014-12-12 09:25:15', '<p><strong>STAAT VOOR:</strong> beslissingen nemen en tempo maken, snelheid en besluitvaardigheid.</p>\r\n<p><strong>TE VEEL:</strong> defensief, agressief.</p>', 'ROOD', '', 'publish', 'closed', 'closed', '', 'rood', '', '', '2015-01-29 17:26:08', '2015-01-29 17:26:08', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=37', 2, 'drijfveren', '', 0),
(38, 1, '2014-12-12 09:25:28', '2014-12-12 09:25:28', 'blauw', 'blauw', 'blauw', 'inherit', 'open', 'open', '', 'brush-blue', '', '', '2014-12-12 09:26:47', '2014-12-12 09:26:47', '', 37, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-blue.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2014-12-12 09:25:28', '2014-12-12 09:25:28', 'groen', 'groen', 'groen', 'inherit', 'open', 'open', '', 'brush-green', '', '', '2014-12-12 09:26:36', '2014-12-12 09:26:36', '', 37, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-green.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2014-12-12 09:25:29', '2014-12-12 09:25:29', 'oranje', 'oranje', 'oranje', 'inherit', 'open', 'open', '', 'brush-orange', '', '', '2014-12-12 09:26:26', '2014-12-12 09:26:26', '', 37, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-orange.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2014-12-12 09:25:30', '2014-12-12 09:25:30', 'paars', 'paars', 'paars', 'inherit', 'open', 'open', '', 'brush-purple', '', '', '2014-12-12 09:26:16', '2014-12-12 09:26:16', '', 37, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-purple.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2014-12-12 09:25:30', '2014-12-12 09:25:30', 'rood', 'rood', 'rood', 'inherit', 'open', 'open', '', 'brush-red', '', '', '2014-12-12 09:25:44', '2014-12-12 09:25:44', '', 37, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-red.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2014-12-12 09:25:31', '2014-12-12 09:25:31', 'turkoois', 'turkoois', 'turkoois', 'inherit', 'open', 'open', '', 'brush-turqoise', '', '', '2014-12-12 09:26:04', '2014-12-12 09:26:04', '', 37, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-turqoise.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 'logo-cm', '', 'inherit', 'open', 'open', '', 'logo-cm', '', '', '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 24, 'http://localhost/yelloow/wp-content/uploads/2014/12/logo-cm.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 'logo-oxfam', '', 'inherit', 'open', 'open', '', 'logo-oxfam', '', '', '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 24, 'http://localhost/yelloow/wp-content/uploads/2014/12/logo-oxfam.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 'logo-square', '', 'inherit', 'open', 'open', '', 'logo-square', '', '', '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 24, 'http://localhost/yelloow/wp-content/uploads/2014/12/logo-square.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2014-12-15 04:41:27', '2014-12-15 04:41:27', '', 'logo-an', '', 'inherit', 'open', 'open', '', 'logo-an', '', '', '2014-12-15 04:41:27', '2014-12-15 04:41:27', '', 24, 'http://localhost/yelloow/wp-content/uploads/2014/12/logo-an.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2014-12-15 05:01:01', '2014-12-15 05:01:01', '', 'man', '', 'inherit', 'open', 'open', '', 'man', '', '', '2014-12-15 05:01:01', '2014-12-15 05:01:01', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/man.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2014-12-16 07:03:35', '2014-12-16 07:03:35', '', 'Content Introduction Field', '', 'publish', 'open', 'open', '', 'content-introduction-field', '', '', '2014-12-16 07:03:35', '2014-12-16 07:03:35', '', 0, 'http://localhost/yelloow/wp-types-group/content-introduction-field/', 0, 'wp-types-group', '', 0),
(52, 1, '2014-12-16 07:07:32', '2014-12-16 07:07:32', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2015-02-24 13:13:38', '2015-02-24 13:13:38', '', 0, 'http://localhost/yelloow/?post_type=content-introduction&#038;p=52', 0, 'content-introduction', '', 0),
(53, 1, '2014-12-16 08:16:05', '2014-12-16 08:16:05', '<p>Hier komt nog een andere inleidende tekst</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-16 08:16:05', '2014-12-16 08:16:05', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2014-12-16 08:16:39', '2014-12-16 08:16:39', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen.</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-16 08:16:39', '2014-12-16 08:16:39', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2014-12-16 08:25:58', '2014-12-16 08:25:58', '<p><strong>STAAT VOOR:</strong> discipline, orde, structuur, zekerheid, duidelijkheid, betrouwbaarheid en verantwoordelijkheid.</p>\r\n<p><strong>TE VEEL:</strong> zich achter regels verschuilen.</p>', 'BLAUW', '', 'publish', 'closed', 'closed', '', 'blauw', '', '', '2015-01-29 17:25:28', '2015-01-29 17:25:28', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=55', 3, 'drijfveren', '', 0),
(56, 1, '2014-12-16 08:30:06', '2014-12-16 08:30:06', '<p><strong>STAAT VOOR:</strong> ambitie en resultaten neerzetten, vooruitgang, succes, competitie en winnen.</p>\r\n<p><strong>TE VEEL:</strong> afschuiven, gezichtsverlies vrezen.</p>', 'ORANJE', '', 'publish', 'closed', 'closed', '', 'oranje', '', '', '2015-01-29 17:22:53', '2015-01-29 17:22:53', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=56', 4, 'drijfveren', '', 0),
(57, 1, '2014-12-16 08:30:30', '2014-12-16 08:30:30', '<p><strong>STAAT VOOR:</strong> communicatie, betrokkenheid, samenwerken, gelijkheid, groepsgevoel, mensen verbinden.</p>\r\n<p><strong>TE VEEL:</strong> protesteren, roddelen en klagen.</p>', 'GROEN ', '', 'publish', 'closed', 'closed', '', 'groen', '', '', '2015-01-29 17:24:36', '2015-01-29 17:24:36', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=57', 5, 'drijfveren', '', 0),
(58, 1, '2014-12-16 08:31:14', '2014-12-16 08:31:14', '<p><strong>STAAT VOOR:</strong> inzicht, leren, analyseren en ontwikkelen, breed denken, creatief en intellectuele vrijheid.</p>\r\n<p><strong>TE VEEL:</strong> cynisch, negatief kritisch.</p>', 'GEEL ', '', 'publish', 'closed', 'closed', '', 'geel', '', '', '2015-01-29 17:24:11', '2015-01-29 17:24:11', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=58', 6, 'drijfveren', '', 0),
(59, 1, '2014-12-16 08:31:06', '2014-12-16 08:31:06', '', 'brush-yellow', '', 'inherit', 'open', 'open', '', 'brush-yellow', '', '', '2014-12-16 08:31:06', '2014-12-16 08:31:06', '', 58, 'http://localhost/yelloow/wp-content/uploads/2014/12/brush-yellow.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2014-12-16 08:31:36', '2014-12-16 08:31:36', '<p><strong>STAAT VOOR:</strong> het holistisch waardesysteem, de bezinning over hoe je je dominante waarden inzet. De turkooise persoon heeft oog voor het grotere geheel.</p>\r\n<p><strong>TE VEEL:</strong> overmatig relativeren, zweverig.</p>', 'TURKOOIS', '', 'publish', 'closed', 'closed', '', 'turkoois', '', '', '2015-01-29 17:23:14', '2015-01-29 17:23:14', '', 0, 'http://localhost/yelloow/?post_type=drijfveren&#038;p=60', 7, 'drijfveren', '', 0),
(61, 1, '2014-12-16 08:38:53', '2014-12-16 08:38:53', '<p>[contact-form-7 id="28" title="Kennismaken?"]</p>', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-16 08:38:53', '2014-12-16 08:38:53', '', 25, 'http://localhost/yelloow/25-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', '', 'Voor Wie', '', 'publish', 'open', 'open', '', 'voor-wie', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://localhost/yelloow/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://localhost/yelloow/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', '', 'Over Yelloow', '', 'publish', 'open', 'open', '', 'over-yelloow', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://localhost/yelloow/?p=71', 3, 'nav_menu_item', '', 0),
(72, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://localhost/yelloow/?p=72', 4, 'nav_menu_item', '', 0),
(75, 1, '2015-01-29 14:14:08', '2015-01-29 14:14:08', '', 'HOME', '', 'inherit', 'open', 'open', '', '52-autosave-v1', '', '', '2015-01-29 14:14:08', '2015-01-29 14:14:08', '', 52, 'http://localhost/yelloow/52-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2015-01-06 07:56:36', '2015-01-06 07:56:36', '', 'team-yellow', '', 'inherit', 'open', 'open', '', 'team-yellow', '', '', '2015-01-06 07:56:36', '2015-01-06 07:56:36', '', 9, 'http://localhost/yelloow/wp-content/uploads/2014/12/team-yellow.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2015-01-06 07:56:39', '2015-01-06 07:56:39', '', 'leidinggevenden-yellow', '', 'inherit', 'open', 'open', '', 'leidinggevenden-yellow', '', '', '2015-01-06 07:56:39', '2015-01-06 07:56:39', '', 9, 'http://localhost/yelloow/wp-content/uploads/2014/12/leidinggevenden-yellow.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2015-01-06 07:56:48', '2015-01-06 07:56:48', '', 'professional-yellow', '', 'inherit', 'open', 'open', '', 'professional-yellow', '', '', '2015-01-06 07:56:48', '2015-01-06 07:56:48', '', 9, 'http://localhost/yelloow/wp-content/uploads/2014/12/professional-yellow.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2015-01-29 14:53:17', '2015-01-29 14:53:17', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box</strong>: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt. Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. </p>\n<p>Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-autosave-v1', '', '', '2015-01-29 14:53:17', '2015-01-29 14:53:17', '', 5, 'http://localhost/yelloow/5-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2015-01-29 14:57:53', '2015-01-29 14:57:53', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box</strong>: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt. Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. </p>\r\n<p>Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 14:57:53', '2015-01-29 14:57:53', '', 5, 'http://localhost/yelloow/5-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-01-29 14:58:50', '2015-01-29 14:58:50', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong> Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril.</p>\r\n<p>Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 14:58:50', '2015-01-29 14:58:50', '', 5, 'http://localhost/yelloow/5-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-01-29 14:59:34', '2015-01-29 14:59:34', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 14:59:34', '2015-01-29 14:59:34', '', 5, 'http://localhost/yelloow/5-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-01-29 15:00:36', '2015-01-29 15:00:36', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. <br /><br />Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 15:00:36', '2015-01-29 15:00:36', '', 5, 'http://localhost/yelloow/5-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-01-29 15:04:29', '2015-01-29 15:04:29', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé.</p>\r\n<p>Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 15:04:29', '2015-01-29 15:04:29', '', 5, 'http://localhost/yelloow/5-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-01-29 15:05:54', '2015-01-29 15:05:54', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé.</p>\r\n<p><strong>Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</strong></p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 15:05:54', '2015-01-29 15:05:54', '', 5, 'http://localhost/yelloow/5-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-02-09 14:47:59', '2015-02-09 14:47:59', '<p>Je vraagt je af of een job of functie aansluit bij wat je wil in je leven? Je kan soms wat hulp gebruiken om te communiceren met je collega’s en leidinggevende?</p>\n<p>Een gevalideerde test biedt op een visuinzicht in je motivatie en je drijfveren, je sterke kanten, je talenten en je communicatiestijl.</p>', 'Individuele professional', '', 'inherit', 'open', 'open', '', '9-autosave-v1', '', '', '2015-02-09 14:47:59', '2015-02-09 14:47:59', '', 9, 'http://localhost/yelloow/9-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2015-01-29 16:44:32', '2015-01-29 16:44:32', '<p>Goed functionerende teams zijn evenwichtig samengestelde teams. Soms is het nodig om de balans binnen een groep bij te sturen. YELLOOW neemt de samenstelling van teams onder de loep.</p>\n<p><strong><a title="Approach" href="http://localhost/yelloow/approach/" target="_blank">De kleurentheorie</a></strong> biedt op een eenvoudige manier inzicht. Met meer onderling begrip, een vlottere communicatie en een betere samenwerking als resultaat.</p>\n<p>Als manager of leidinggevende krijg je een helder zicht op de sterke kanten én op de werkpunten van je team of afdelingen.De teamleden zelf krijgen inzicht in hun eigen drijfveren en in die van hun collega’s.</p>', 'Teams', '', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2015-01-29 16:44:32', '2015-01-29 16:44:32', '', 8, 'http://localhost/yelloow/8-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2015-01-29 16:59:45', '2015-01-29 16:59:45', '<p>One does not ‘manage’ people. The task is to lead people.<br />Hoe te sturen? Hoe te motiveren? Hoe NIET demotiveren?<br /><br />Wat is jouw manier van leidinggeven? Wat is de gepaste manier van leidinggeven voor je medewerkers?<br /><br />Kennis van je eigen logica, je persoonlijke <a title="Black Box" href="http://localhost/yelloow/black-box/">Black Box</a>, geeft inzicht in je leiderschapsstijl. <br />Kennis van de Black Box van je medewerkers geeft inzicht in de bedrijfscultuur.</p>', 'Leidinggevenden', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-01-29 16:59:45', '2015-01-29 16:59:45', '', 7, 'http://localhost/yelloow/7-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2015-01-29 17:09:42', '2015-01-29 17:09:42', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn <a title="Graves" href="http://localhost/yelloow/graves/">persoonlijke drijfveren</a>. Managers zien vaak wel hoe medewerkers zich gedragen, niet wat hen drijft. Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.<br /><br />YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft.<br />In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer.</p>\r\n<p>De theorie van humanistisch psycholoog DR.C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:09:42', '2015-01-29 17:09:42', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-01-29 17:11:12', '2015-01-29 17:11:12', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. Managers zien vaak wel hoe medewerkers zich gedragen, niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft.<br />In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer.</p>\r\n<p>De theorie van humanistisch psycholoog DR.C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:11:12', '2015-01-29 17:11:12', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-01-29 17:14:08', '2015-01-29 17:14:08', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft.<br />In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer.<br />De kleurentheorie van humanistisch psycholoog DR. C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:14:08', '2015-01-29 17:14:08', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-01-29 17:15:14', '2015-01-29 17:15:14', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft. In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer. De kleurentheorie van humanistisch psycholoog DR. C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:15:14', '2015-01-29 17:15:14', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-01-29 17:17:47', '2015-01-29 17:17:47', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, <br />ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-29 17:17:47', '2015-01-29 17:17:47', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-01-29 17:18:15', '2015-01-29 17:18:15', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-29 17:18:15', '2015-01-29 17:18:15', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-01-29 17:18:30', '2015-01-29 17:18:30', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. <br />Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-29 17:18:30', '2015-01-29 17:18:30', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2015-01-29 17:20:39', '2015-01-29 17:20:39', '<p>staat voor het holistisch waardesysteem, de bezinning over hoe je je dominante waarden inzet. De turkooise persoon heeft oog voor het grotere geheel.</p>\n<p>TE VEEL: overmatig relativeren, zweverig</p>', 'TURKOOIS', '', 'inherit', 'open', 'open', '', '60-autosave-v1', '', '', '2015-01-29 17:20:39', '2015-01-29 17:20:39', '', 60, 'http://localhost/yelloow/60-autosave-v1/', 0, 'revision', '', 0),
(102, 1, '2015-01-30 14:28:19', '2015-01-30 14:28:19', '', 'TrouwMien', '', 'inherit', 'open', 'open', '', 'trouwmien', '', '', '2015-01-30 14:28:19', '2015-01-30 14:28:19', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/TrouwMien.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2015-01-30 14:31:56', '2015-01-30 14:31:56', '', 'flight', '', 'inherit', 'open', 'open', '', 'flight', '', '', '2015-01-30 14:31:56', '2015-01-30 14:31:56', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/flight.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2015-01-30 14:51:13', '2015-01-30 14:51:13', '', 'Auto Draft', '', 'trash', 'open', 'open', '', 'auto-draft', '', '', '2015-01-30 14:51:27', '2015-01-30 14:51:27', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=105', 0, 'over-yelloow', '', 0),
(106, 1, '2015-01-30 14:59:48', '2015-01-30 14:59:48', '<p>Na een kleine VZW in de non-profit uitgebouwd te hebben tot een grote organisatie, hebben we geleerd hoe belangrijk het is om menselijk kapitaal in een organisatie te versterken en een positieve flow te creeëren. Het succes van een bedrijf gaat hand in hand met goede interne communicatie, met klantgerichtheid en met medewerkerstevredenheid.</p>', 'Onze visie', '', 'inherit', 'open', 'open', '', '19-autosave-v1', '', '', '2015-01-30 14:59:48', '2015-01-30 14:59:48', '', 19, 'http://localhost/yelloow/19-autosave-v1/', 0, 'revision', '', 0),
(109, 1, '2015-01-30 15:36:09', '2015-01-30 15:36:09', '', 'OMcollective', '', 'inherit', 'open', 'open', '', 'omcollective', '', '', '2015-01-30 15:36:09', '2015-01-30 15:36:09', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/01/OMcollective.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2015-01-30 15:36:10', '2015-01-30 15:36:10', '', 'max', '', 'inherit', 'open', 'open', '', 'max', '', '', '2015-01-30 15:36:10', '2015-01-30 15:36:10', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/01/max.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2015-01-30 15:36:11', '2015-01-30 15:36:11', '', 'feestpaleis', '', 'inherit', 'open', 'open', '', 'feestpaleis', '', '', '2015-01-30 15:36:11', '2015-01-30 15:36:11', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/01/feestpaleis.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2015-01-30 15:36:12', '2015-01-30 15:36:12', '', 'introfashion', '', 'inherit', 'open', 'open', '', 'introfashion', '', '', '2015-01-30 15:36:12', '2015-01-30 15:36:12', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/01/introfashion.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2015-01-30 15:39:52', '2015-01-30 15:39:52', '', 'Onze referenties', '', 'inherit', 'open', 'open', '', '24-autosave-v1', '', '', '2015-01-30 15:39:52', '2015-01-30 15:39:52', '', 24, 'http://localhost/yelloow/24-autosave-v1/', 0, 'revision', '', 0),
(114, 1, '2015-01-30 15:52:09', '2015-01-30 15:52:09', '', 't-flight90', '', 'inherit', 'open', 'open', '', 't-flight90', '', '', '2015-01-30 15:52:09', '2015-01-30 15:52:09', '', 24, 'http://localhost/yelloow/wp-content/uploads/2014/12/t-flight90.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2015-01-30 15:59:21', '2015-01-30 15:59:21', '', 'Horselivecom', '', 'inherit', 'open', 'open', '', 'horselivecom', '', '', '2015-01-30 15:59:21', '2015-01-30 15:59:21', '', 24, 'http://localhost/yelloow/wp-content/uploads/2014/12/Horselivecom.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2015-01-30 17:04:04', '2015-01-30 17:04:04', '', 'P1010540 copy', '', 'inherit', 'open', 'open', '', 'p1010540-copy', '', '', '2015-01-30 17:04:04', '2015-01-30 17:04:04', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/P1010540-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2015-01-30 17:13:09', '2015-01-30 17:13:09', '', 'P1010549 copy', '', 'inherit', 'open', 'open', '', 'p1010549-copy', '', '', '2015-01-30 17:13:09', '2015-01-30 17:13:09', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/P1010549-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2015-01-30 17:15:49', '2015-01-30 17:15:49', '', 'P1010552 copy', '', 'inherit', 'open', 'open', '', 'p1010552-copy', '', '', '2015-01-30 17:15:49', '2015-01-30 17:15:49', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/P1010552-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2015-01-30 17:27:45', '2015-01-30 17:27:45', '', 'TrouwMien_02', '', 'inherit', 'open', 'open', '', 'trouwmien_02', '', '', '2015-01-30 17:27:45', '2015-01-30 17:27:45', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/TrouwMien_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2015-02-01 20:42:23', '2015-02-01 20:42:23', '', 'Linda & Greet 9', '', 'inherit', 'open', 'open', '', 'linda-greet-9', '', '', '2015-02-01 20:42:23', '2015-02-01 20:42:23', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/Linda-Greet-9.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2015-02-01 20:44:03', '2015-02-01 20:44:03', '', 'Linda & Greet 7', '', 'inherit', 'open', 'open', '', 'linda-greet-7', '', '', '2015-02-01 20:44:03', '2015-02-01 20:44:03', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/Linda-Greet-7.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(126, 1, '2015-02-01 20:45:45', '2015-02-01 20:45:45', '', 'Linda & Greet 6', '', 'inherit', 'open', 'open', '', 'linda-greet-6', '', '', '2015-02-01 20:45:45', '2015-02-01 20:45:45', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/Linda-Greet-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2015-02-01 20:46:53', '2015-02-01 20:46:53', '', 'Linda & Greet 3', '', 'inherit', 'open', 'open', '', 'linda-greet-3', '', '', '2015-02-01 20:46:53', '2015-02-01 20:46:53', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/Linda-Greet-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2015-02-04 11:56:01', '2015-02-04 11:56:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-02-04 11:56:01', '2015-02-04 11:56:01', '', 1, 'http://localhost/yelloow/1-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2015-02-05 01:43:55', '2015-02-05 01:43:55', '', 'Danstheater Feestpaleis', '', 'publish', 'closed', 'closed', '', 'feest-paleis', '', '', '2015-02-06 16:42:02', '2015-02-06 16:42:02', '', 0, 'http://localhost/yelloow/?post_type=onze-referenties&#038;p=130', 1, 'onze-referenties', '', 0),
(131, 1, '2015-02-05 05:46:42', '2015-02-05 05:46:42', '', 'Intro-fashionstore', '', 'publish', 'closed', 'closed', '', 'intro-fashion', '', '', '2015-02-10 14:25:11', '2015-02-10 14:25:11', '', 0, 'http://localhost/yelloow/?post_type=onze-referenties&#038;p=131', 2, 'onze-referenties', '', 0),
(132, 1, '2015-02-05 05:44:57', '2015-02-05 05:44:57', '', 'Max', '', 'publish', 'open', 'open', '', 'max', '', '', '2015-02-10 14:25:11', '2015-02-10 14:25:11', '', 0, 'http://localhost/yelloow/?post_type=onze-referenties&#038;p=132', 0, 'onze-referenties', '', 0),
(133, 1, '2015-02-05 05:45:31', '2015-02-05 05:45:31', '', 'OMCollective', '', 'publish', 'closed', 'closed', '', 'om-collective', '', '', '2015-02-10 14:25:11', '2015-02-10 14:25:11', '', 0, 'http://localhost/yelloow/?post_type=onze-referenties&#038;p=133', 0, 'onze-referenties', '', 0),
(134, 1, '2015-02-05 05:46:04', '2015-02-05 05:46:04', '', 'Flight 90', '', 'publish', 'closed', 'closed', '', 't-flight-90', '', '', '2015-02-10 14:25:11', '2015-02-10 14:25:11', '', 0, 'http://localhost/yelloow/?post_type=onze-referenties&#038;p=134', 3, 'onze-referenties', '', 0),
(135, 1, '2015-02-05 05:46:41', '2015-02-05 05:46:41', '', 'Horse Live', '', 'publish', 'closed', 'closed', '', 'horselivecom', '', '', '2015-02-10 14:25:11', '2015-02-10 14:25:11', '', 0, 'http://localhost/yelloow/?post_type=onze-referenties&#038;p=135', 0, 'onze-referenties', '', 0),
(137, 1, '2015-02-06 13:16:15', '2015-02-06 13:16:15', '', 'P1010564 copy', '', 'inherit', 'open', 'open', '', 'p1010564-copy', '', '', '2015-02-06 13:16:15', '2015-02-06 13:16:15', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/P1010564-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2015-02-06 13:29:37', '2015-02-06 13:29:37', '<p>lalalala</p>', 'TEst', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-02-06 13:30:36', '2015-02-06 13:30:36', '', 0, 'http://localhost/yelloow/?page_id=139', 0, 'page', '', 0),
(140, 1, '2015-02-06 13:28:51', '2015-02-06 13:28:51', '<p>lalalala</p>', 'TEst', '', 'inherit', 'open', 'open', '', '139-revision-v1', '', '', '2015-02-06 13:28:51', '2015-02-06 13:28:51', '', 139, 'http://localhost/yelloow/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2015-02-06 13:31:37', '2015-02-06 13:31:37', '<p>this is a test</p>', 'Test', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-02-06 13:32:46', '2015-02-06 13:32:46', '', 11, 'http://localhost/yelloow/?page_id=141', 0, 'page', '', 0),
(142, 1, '2015-02-06 13:31:37', '2015-02-06 13:31:37', '<p>this is a test</p>', 'Test', '', 'inherit', 'open', 'open', '', '141-revision-v1', '', '', '2015-02-06 13:31:37', '2015-02-06 13:31:37', '', 141, 'http://localhost/yelloow/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2015-02-06 13:34:09', '2015-02-06 13:34:09', '<p>Testje</p>', 'Testje', '', 'trash', 'closed', 'closed', '', 'testje', '', '', '2015-02-06 13:34:58', '2015-02-06 13:34:58', '', 0, 'http://localhost/yelloow/?post_type=over-yelloow&#038;p=143', 0, 'over-yelloow', '', 0),
(144, 1, '2015-02-06 16:46:55', '2015-02-06 16:46:55', '', 'Horse Live', '', 'inherit', 'open', 'open', '', '135-autosave-v1', '', '', '2015-02-06 16:46:55', '2015-02-06 16:46:55', '', 135, 'http://localhost/yelloow/135-autosave-v1/', 0, 'revision', '', 0),
(145, 1, '2015-02-09 12:43:12', '2015-02-09 12:43:12', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft. In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 12:43:12', '2015-02-09 12:43:12', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2015-02-09 12:56:36', '2015-02-09 12:56:36', '<h4>BE as you are</h4>\r\n<h4>Talents needs a SMILE</h4>\r\n<ul style="list-style-type: square;">\r\n<li>Vertrouw op JEZELF</li>\r\n</ul>\r\n<h4>Good is the enemy of GREAT</h4>\r\n<h4>Leer op een ELEGANTE manier te falen: <br />laat je fouten je niet ontmoedigen om het met meer inzicht OPNIEUW te proberen</h4>\r\n<h4>Think positive, your positivism will CONTAMINATE others</h4>\r\n<h4>Je kunt niet op je ogen vertrouwen als je VERBEELDING niet op scherp staat</h4>\r\n<h4>Ga uit van MOED, zo creëer je positief gedrag. Wie vanuit angst werkt, krijgt negatief gedrag</h4>\r\n<h4>VERGEET andermans normen en VERANDER je kritische innerlijke stem</h4>\r\n<h4>Humour and fun is at the start of every change. HAVE FUN!</h4>\r\n<h4>No risk and no CHANGE is no business</h4>\r\n<h4>Simple and clear is CLEVER</h4>\r\n<h4>SMILE, I shall respond</h4>\r\n<h4>Find the MUSIC in everyone</h4>\r\n<h4>ACCEPTEER complimenten</h4>\r\n<h4>Bekijk het OBJECTIEF</h4>\r\n<h4>DRAAG IETS BIJ!</h4>', 'Yelloow manifesto', '', 'inherit', 'open', 'open', '', '22-autosave-v1', '', '', '2015-02-09 12:56:36', '2015-02-09 12:56:36', '', 22, 'http://localhost/yelloow/22-autosave-v1/', 0, 'revision', '', 0),
(148, 1, '2015-02-09 20:14:10', '2015-02-09 20:14:10', '<p style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\n<h5 style="text-align: center; line-height: 1.5;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\n<h5 style="text-align: center; line-height: 1.5">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-autosave-v1', '', '', '2015-02-09 20:14:10', '2015-02-09 20:14:10', '', 13, 'http://localhost/yelloow/13-autosave-v1/', 0, 'revision', '', 0),
(149, 1, '2015-02-09 13:42:54', '2015-02-09 13:42:54', '<p>In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talent management, communicatie- en conflictbeheer.<br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft.</p>\r\n<p>Iemands gedrag wordt aangestuurd door zijn persoonlijke drijfveren. Weet je waardoor iemand gedreven wordt, dan kan je beter aansluiten op diens motivitatie. <br />Voel je je aangesproken op je motivatie en talenten, dan ga je beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:42:54', '2015-02-09 13:42:54', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2015-02-09 13:51:36', '2015-02-09 13:51:36', '<p>In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talent management, communicatie- en conflictbeheer.</p>\r\n<p>Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft.<br />Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. <br />Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</p>\r\n<p>YELLOOW werkt met een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:51:36', '2015-02-09 13:51:36', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2015-02-09 13:51:58', '2015-02-09 13:51:58', '<p>In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talent management, communicatie- en conflictbeheer.</p>\r\n<p>Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft.<br />Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. <br />Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</p>\r\n<p>YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:51:58', '2015-02-09 13:51:58', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2015-02-09 13:52:29', '2015-02-09 13:52:29', '<p>In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talent management, communicatie- en conflictbeheer.</p>\r\n<p>Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. <br />Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</p>\r\n<p>YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:52:29', '2015-02-09 13:52:29', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2015-02-09 13:53:25', '2015-02-09 13:53:25', '<p style="text-align: left;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<p style="text-align: left;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</p>\r\n<p style="text-align: left;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:53:25', '2015-02-09 13:53:25', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2015-02-09 13:54:03', '2015-02-09 13:54:03', '<h5 style="text-align: left;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</h5>\r\n<h5 style="text-align: left;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: left;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:54:03', '2015-02-09 13:54:03', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2015-02-09 13:54:23', '2015-02-09 13:54:23', '<h5 style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</h5>\r\n<h5 style="text-align: center;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: center;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:54:23', '2015-02-09 13:54:23', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2015-02-09 13:54:38', '2015-02-09 13:54:38', '<h4 style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</h4>\r\n<h4 style="text-align: center;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h4>\r\n<h4 style="text-align: center;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h4>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:54:38', '2015-02-09 13:54:38', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2015-02-09 13:55:04', '2015-02-09 13:55:04', '<p>In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<h4 style="text-align: center;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h4>\r\n<h4 style="text-align: center;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h4>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:55:04', '2015-02-09 13:55:04', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2015-02-09 13:56:01', '2015-02-09 13:56:01', '<p style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<h5 style="text-align: center;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: center;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <br /><strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:56:01', '2015-02-09 13:56:01', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2015-02-09 13:56:37', '2015-02-09 13:56:37', '<p style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<h5 style="text-align: center;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: center;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:56:37', '2015-02-09 13:56:37', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2015-02-09 13:56:59', '2015-02-09 13:56:59', '<p style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<h5 style="text-align: center;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: center;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 13:56:59', '2015-02-09 13:56:59', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2015-02-09 13:58:26', '2015-02-09 13:58:26', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten en wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-02-09 13:58:26', '2015-02-09 13:58:26', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2015-02-09 14:17:45', '2015-02-09 14:17:45', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk bepaald wordt door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem bundelt overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten en wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-02-09 14:17:45', '2015-02-09 14:17:45', '', 15, 'http://localhost/yelloow/15-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2015-02-09 20:14:23', '2015-02-09 20:14:23', '<p style="text-align: center;">In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op <br />talent management, communicatie- en conflictbeheer.</p>\r\n<h5 style="text-align: center; line-height: 1.5;">Iemands gedrag wordt aangestuurd door persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. Als je weet waardoor iemand gedreven wordt, kan je beter aansluiten op zijn motivitatie en gedrag eventueel bijsturen. Voelt iemand zich aangesproken op zijn motivatie en talenten, dan zal hij ook beter presteren en meer werkplezier hebben.</h5>\r\n<h5 style="text-align: center; line-height: 1.5;">YELLOOW maakt gebruik van een gevalideerde test die het persoonlijk motivatieprofiel visueel weergeeft aan de hand van kleuren. <strong><a title="De kleurentheorie" href="http://localhost/yelloow/graves/">De kleurentheorie van humanistisch psycholoog DR. C.W. Graves</a></strong> ligt aan de basis van die test.</h5>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-02-09 20:14:23', '2015-02-09 20:14:23', '', 13, 'http://localhost/yelloow/13-revision-v1/', 0, 'revision', '', 0),
(165, 3, '2015-02-10 14:24:39', '2015-02-10 14:24:39', '', 'OMcollective', '', 'inherit', 'open', 'open', '', 'omcollective-2', '', '', '2015-02-10 14:24:39', '2015-02-10 14:24:39', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/02/OMcollective.png', 0, 'attachment', 'image/png', 0),
(166, 3, '2015-02-10 14:25:00', '2015-02-10 14:25:00', '', 'Onze referenties', '', 'inherit', 'open', 'open', '', '24-autosave-v1', '', '', '2015-02-10 14:25:00', '2015-02-10 14:25:00', '', 24, 'http://localhost/yelloow/24-autosave-v1/', 0, 'revision', '', 0),
(168, 3, '2015-02-12 11:45:54', '2015-02-12 11:45:54', '', 'yelloow_web_15', '', 'inherit', 'open', 'open', '', 'yelloow_web_15', '', '', '2015-02-12 11:45:54', '2015-02-12 11:45:54', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/02/yelloow_web_15.png', 0, 'attachment', 'image/png', 0),
(169, 3, '2015-02-12 11:47:00', '2015-02-12 11:47:00', '', 'yelloow_Y_15', '', 'inherit', 'open', 'open', '', 'yelloow_y_15', '', '', '2015-02-12 11:47:00', '2015-02-12 11:47:00', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/02/yelloow_Y_15.png', 0, 'attachment', 'image/png', 0),
(170, 3, '2015-02-12 11:48:37', '2015-02-12 11:48:37', '', 'yelloow_mail_15', '', 'inherit', 'open', 'open', '', 'yelloow_mail_15', '', '', '2015-02-12 11:48:37', '2015-02-12 11:48:37', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/02/yelloow_mail_15.png', 0, 'attachment', 'image/png', 0),
(171, 3, '2015-02-12 11:50:04', '2015-02-12 11:50:04', '', 'YELLOOW_ADDRESS_15', '', 'inherit', 'open', 'open', '', 'yelloow_address_15', '', '', '2015-02-12 11:50:04', '2015-02-12 11:50:04', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/02/YELLOOW_ADDRESS_15.png', 0, 'attachment', 'image/png', 0),
(172, 3, '2015-02-12 11:51:43', '2015-02-12 11:51:43', '', 'yelloow_call_15', '', 'inherit', 'open', 'open', '', 'yelloow_call_15', '', '', '2015-02-12 11:51:43', '2015-02-12 11:51:43', '', 0, 'http://localhost/yelloow/wp-content/uploads/2015/02/yelloow_call_15.png', 0, 'attachment', 'image/png', 0),
(173, 3, '2015-02-12 16:18:58', '2015-02-12 16:18:58', '', 'Linda & Greet 3\'', '', 'inherit', 'open', 'open', '', 'linda-greet-3-2', '', '', '2015-02-12 16:18:58', '2015-02-12 16:18:58', '', 18, 'http://localhost/yelloow/wp-content/uploads/2014/12/Linda-Greet-31.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 3, '2015-02-12 16:19:39', '2015-02-12 16:19:39', '<p>Greet Leemans en Linda Leemans, leading partners van YELLOOW.<br />Na meer dan 20 jaar ervaring als leidinggevenden gingen ze een nieuwe uitdaging aan met de oprichting van YELLOOW consult.</p>', 'Over Yelloow Intro', '', 'inherit', 'open', 'open', '', '18-autosave-v1', '', '', '2015-02-12 16:19:39', '2015-02-12 16:19:39', '', 18, 'http://localhost/yelloow/18-autosave-v1/', 0, 'revision', '', 0),
(175, 1, '2015-02-24 13:02:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-02-24 13:02:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/yelloow/?p=175', 0, 'post', '', 0) ;

#
# End of data contents of table `yl_posts`
# --------------------------------------------------------



#
# Delete any existing table `yl_term_relationships`
#

DROP TABLE IF EXISTS `yl_term_relationships`;


#
# Table structure of table `yl_term_relationships`
#

CREATE TABLE `yl_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_term_relationships`
#
INSERT INTO `yl_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 6, 0),
(24, 4, 0),
(69, 5, 0),
(70, 5, 0),
(71, 5, 0),
(72, 5, 0) ;

#
# End of data contents of table `yl_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `yl_term_taxonomy`
#

DROP TABLE IF EXISTS `yl_term_taxonomy`;


#
# Table structure of table `yl_term_taxonomy`
#

CREATE TABLE `yl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_term_taxonomy`
#
INSERT INTO `yl_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'over-yelloow-tax', '', 0, 1),
(3, 3, 'over-yelloow-tax', '', 0, 3),
(4, 4, 'over-yelloow-tax', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'over-yelloow-tax', '', 0, 1) ;

#
# End of data contents of table `yl_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `yl_terms`
#

DROP TABLE IF EXISTS `yl_terms`;


#
# Table structure of table `yl_terms`
#

CREATE TABLE `yl_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_terms`
#
INSERT INTO `yl_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Image', 'header-image', 0),
(3, 'Content Double Columns', 'content-double-columns', 0),
(4, 'Reference', 'reference', 0),
(5, 'Main Menu', 'main-menu', 0),
(6, 'Content Single Column', 'content-single-column', 0) ;

#
# End of data contents of table `yl_terms`
# --------------------------------------------------------



#
# Delete any existing table `yl_usermeta`
#

DROP TABLE IF EXISTS `yl_usermeta`;


#
# Table structure of table `yl_usermeta`
#

CREATE TABLE `yl_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_usermeta`
#
INSERT INTO `yl_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'yl_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'yl_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"c371874dad275b71eb2b29fb9166fe6f76c4e86d6c67516ed895d2812dc07651";i:1424955749;s:64:"6b43967cb330dd4e2317663bb47d23253f4bfb5cbbd18fceab15e35cf693ffd8";i:1424957746;s:64:"89667983ac2a79954494519e0a83cd12114419dfa67ce45bc0d42192ff88ee78";i:1425010235;}'),
(15, 1, 'yl_dashboard_quick_press_last_post_id', '175'),
(16, 1, 'yl_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse&wplink=1'),
(17, 1, 'yl_user-settings-time', '1423051391'),
(18, 1, 'meta-box-order_voor-wie', 'a:3:{s:4:"side";s:37:"postimagediv,submitdiv,wpcf-marketing";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:0:"";}'),
(19, 1, 'screen_layout_voor-wie', '2'),
(20, 1, 'closedpostboxes_voor-wie', 'a:0:{}'),
(21, 1, 'metaboxhidden_voor-wie', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'wpcf-group-form-toggle', 'a:2:{i:10;a:1:{s:24:"fieldset-button-voor-wie";i:1;}i:23;a:1:{s:13:"fieldset-logo";i:1;}}'),
(23, 1, 'meta-box-order_drijfveren', 'a:3:{s:4:"side";s:51:"postimagediv,submitdiv,pageparentdiv,wpcf-marketing";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:0:"";}'),
(24, 1, 'screen_layout_drijfveren', '2'),
(25, 1, 'closedpostboxes_drijfveren', 'a:0:{}'),
(26, 1, 'metaboxhidden_drijfveren', 'a:1:{i:0;s:7:"slugdiv";}'),
(27, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:"dashboard_primary";}'),
(28, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(29, 1, 'closedpostboxes_over-yelloow', 'a:0:{}'),
(30, 1, 'metaboxhidden_over-yelloow', 'a:1:{i:0;s:7:"slugdiv";}'),
(31, 1, 'meta-box-order_over-yelloow', 'a:3:{s:4:"side";s:57:"postimagediv,submitdiv,over-yelloow-taxdiv,wpcf-marketing";s:6:"normal";s:35:"wpcf-group-onze-referenties,slugdiv";s:8:"advanced";s:0:"";}'),
(32, 1, 'screen_layout_over-yelloow', '2'),
(33, 1, 'closedpostboxes_content-introduction', 'a:1:{i:0;s:14:"wpcf-marketing";}'),
(34, 1, 'metaboxhidden_content-introduction', 'a:1:{i:0;s:7:"slugdiv";}'),
(35, 1, 'meta-box-order_content-introduction', 'a:3:{s:4:"side";s:24:"submitdiv,wpcf-marketing";s:6:"normal";s:45:"wpcf-group-content-introduction-field,slugdiv";s:8:"advanced";s:0:"";}'),
(36, 1, 'screen_layout_content-introduction', '2'),
(37, 1, 'closedpostboxes_page', 'a:0:{}'),
(38, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(39, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:70:"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(40, 1, 'screen_layout_page', '2'),
(41, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(42, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:8:"add-post";i:1;s:12:"add-voor-wie";i:2;s:14:"add-drijfveren";i:3;s:16:"add-over-yelloow";i:4;s:24:"add-content-introduction";i:5;s:12:"add-post_tag";i:6;s:20:"add-over-yelloow-tax";}'),
(43, 1, 'nav_menu_recently_edited', '5'),
(44, 2, 'nickname', 'fathur'),
(45, 2, 'first_name', 'Fathur'),
(46, 2, 'last_name', 'Rohman'),
(47, 2, 'description', ''),
(48, 2, 'rich_editing', 'true'),
(49, 2, 'comment_shortcuts', 'false'),
(50, 2, 'admin_color', 'fresh'),
(51, 2, 'use_ssl', '0'),
(52, 2, 'show_admin_bar_front', 'true'),
(53, 2, 'yl_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(54, 2, 'yl_user_level', '10'),
(55, 2, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(56, 3, 'nickname', 'nele'),
(57, 3, 'first_name', 'nele'),
(58, 3, 'last_name', 'hens'),
(59, 3, 'description', ''),
(60, 3, 'rich_editing', 'true'),
(61, 3, 'comment_shortcuts', 'false'),
(62, 3, 'admin_color', 'fresh'),
(63, 3, 'use_ssl', '0'),
(64, 3, 'show_admin_bar_front', 'true'),
(65, 3, 'yl_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(66, 3, 'yl_user_level', '10'),
(67, 3, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(68, 3, 'session_tokens', 'a:2:{s:64:"730865a049d0a8b3a19c10a6003d10f351698d16e6fa31ec45bc0ee6f6b79b76";i:1423914307;s:64:"e05bab8789780301a7aa8dd418884035b34c14e2affbc02eb82c3b12a60fa685";i:1423930692;}'),
(69, 3, 'yl_dashboard_quick_press_last_post_id', '164'),
(70, 1, 'wpseo_title', ''),
(71, 1, 'wpseo_metadesc', ''),
(72, 1, 'wpseo_metakey', ''),
(73, 1, 'wpseo_excludeauthorsitemap', ''),
(74, 1, '_yoast_wpseo_profile_updated', '1423654008'),
(75, 1, 'googleplus', ''),
(76, 1, 'twitter', ''),
(77, 1, 'facebook', ''),
(78, 3, 'yl_user-settings', 'libraryContent=browse'),
(79, 3, 'yl_user-settings-time', '1423757969') ;

#
# End of data contents of table `yl_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `yl_users`
#

DROP TABLE IF EXISTS `yl_users`;


#
# Table structure of table `yl_users`
#

CREATE TABLE `yl_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_users`
#
INSERT INTO `yl_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bp79ydhNMhcCpZyOXiH491POQ2pTMk/', 'admin', 'info@yelloow.be', '', '2014-12-11 09:38:45', '', 0, 'admin'),
(2, 'fathur', '$P$BIIjYSrilnAiHVW/KBpvbKT2MFsrtM0', 'fathur', 'fathur.rohman@fostrom.com', '', '2014-12-17 15:09:43', '', 0, 'Fathur Rohman'),
(3, 'nele', '$P$Bl8JQ5yVq8jsYgM5B7BTPgQroHjcfN0', 'nele', 'nele.hens@gmail.com', 'http://www.yelloow.be', '2015-02-09 12:40:27', '', 0, 'nele hens') ;

#
# End of data contents of table `yl_users`
# --------------------------------------------------------

#
# Add constraints back in
#

