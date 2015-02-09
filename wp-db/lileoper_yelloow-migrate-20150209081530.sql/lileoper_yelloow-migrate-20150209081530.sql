# WordPress MySQL database migration
#
# Generated: Monday 9. February 2015 08:15 UTC
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
) ENGINE=InnoDB AUTO_INCREMENT=541 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_options`
#
INSERT INTO `yl_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://yelloow.be', 'yes'),
(2, 'home', 'http://yelloow.be', 'yes'),
(3, 'blogname', 'Yelloow', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@yelloow.id', 'yes'),
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
(33, 'active_plugins', 'a:5:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:27:"theme-check/theme-check.php";i:3;s:37:"tinymce-advanced/tinymce-advanced.php";i:4;s:14:"types/wpcf.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
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
(89, 'yl_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1423474781;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1423474959;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1423478879;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1423510320;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
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
(496, 'rewrite_rules', 'a:199:{s:11:"voor-wie/?$";s:28:"index.php?post_type=voor-wie";s:41:"voor-wie/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=voor-wie&feed=$matches[1]";s:36:"voor-wie/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=voor-wie&feed=$matches[1]";s:28:"voor-wie/page/([0-9]{1,})/?$";s:46:"index.php?post_type=voor-wie&paged=$matches[1]";s:13:"drijfveren/?$";s:30:"index.php?post_type=drijfveren";s:43:"drijfveren/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=drijfveren&feed=$matches[1]";s:38:"drijfveren/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=drijfveren&feed=$matches[1]";s:30:"drijfveren/page/([0-9]{1,})/?$";s:48:"index.php?post_type=drijfveren&paged=$matches[1]";s:15:"over-yelloow/?$";s:32:"index.php?post_type=over-yelloow";s:45:"over-yelloow/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=over-yelloow&feed=$matches[1]";s:40:"over-yelloow/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=over-yelloow&feed=$matches[1]";s:32:"over-yelloow/page/([0-9]{1,})/?$";s:50:"index.php?post_type=over-yelloow&paged=$matches[1]";s:23:"content-introduction/?$";s:40:"index.php?post_type=content-introduction";s:53:"content-introduction/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=content-introduction&feed=$matches[1]";s:48:"content-introduction/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=content-introduction&feed=$matches[1]";s:40:"content-introduction/page/([0-9]{1,})/?$";s:58:"index.php?post_type=content-introduction&paged=$matches[1]";s:19:"onze-referenties/?$";s:36:"index.php?post_type=onze-referenties";s:49:"onze-referenties/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=onze-referenties&feed=$matches[1]";s:44:"onze-referenties/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=onze-referenties&feed=$matches[1]";s:36:"onze-referenties/page/([0-9]{1,})/?$";s:54:"index.php?post_type=onze-referenties&paged=$matches[1]";s:42:"wp-types-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)/trackback/?$";s:41:"index.php?wp-types-group=$matches[1]&tb=1";s:43:"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&paged=$matches[2]";s:50:"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp-types-group=$matches[1]&page=$matches[2]";s:31:"wp-types-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wp-types-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"wp-types-user-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)/trackback/?$";s:46:"index.php?wp-types-user-group=$matches[1]&tb=1";s:48:"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]";s:55:"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?wp-types-user-group=$matches[1]&page=$matches[2]";s:36:"wp-types-user-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"wp-types-user-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"over-yelloow-tax/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?over-yelloow-tax=$matches[1]&feed=$matches[2]";s:50:"over-yelloow-tax/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?over-yelloow-tax=$matches[1]&feed=$matches[2]";s:43:"over-yelloow-tax/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?over-yelloow-tax=$matches[1]&paged=$matches[2]";s:25:"over-yelloow-tax/(.+?)/?$";s:38:"index.php?over-yelloow-tax=$matches[1]";s:36:"voor-wie/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"voor-wie/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"voor-wie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"voor-wie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"voor-wie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"voor-wie/([^/]+)/trackback/?$";s:35:"index.php?voor-wie=$matches[1]&tb=1";s:49:"voor-wie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?voor-wie=$matches[1]&feed=$matches[2]";s:44:"voor-wie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?voor-wie=$matches[1]&feed=$matches[2]";s:37:"voor-wie/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?voor-wie=$matches[1]&paged=$matches[2]";s:44:"voor-wie/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?voor-wie=$matches[1]&cpage=$matches[2]";s:29:"voor-wie/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?voor-wie=$matches[1]&page=$matches[2]";s:25:"voor-wie/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"voor-wie/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"voor-wie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"voor-wie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"voor-wie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"drijfveren/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"drijfveren/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"drijfveren/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"drijfveren/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"drijfveren/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"drijfveren/([^/]+)/trackback/?$";s:37:"index.php?drijfveren=$matches[1]&tb=1";s:51:"drijfveren/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?drijfveren=$matches[1]&feed=$matches[2]";s:46:"drijfveren/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?drijfveren=$matches[1]&feed=$matches[2]";s:39:"drijfveren/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?drijfveren=$matches[1]&paged=$matches[2]";s:46:"drijfveren/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?drijfveren=$matches[1]&cpage=$matches[2]";s:31:"drijfveren/([^/]+)(/[0-9]+)?/?$";s:49:"index.php?drijfveren=$matches[1]&page=$matches[2]";s:27:"drijfveren/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"drijfveren/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"drijfveren/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"drijfveren/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"drijfveren/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"over-yelloow/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"over-yelloow/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"over-yelloow/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"over-yelloow/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"over-yelloow/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"over-yelloow/([^/]+)/trackback/?$";s:39:"index.php?over-yelloow=$matches[1]&tb=1";s:53:"over-yelloow/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?over-yelloow=$matches[1]&feed=$matches[2]";s:48:"over-yelloow/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?over-yelloow=$matches[1]&feed=$matches[2]";s:41:"over-yelloow/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?over-yelloow=$matches[1]&paged=$matches[2]";s:48:"over-yelloow/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?over-yelloow=$matches[1]&cpage=$matches[2]";s:33:"over-yelloow/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?over-yelloow=$matches[1]&page=$matches[2]";s:29:"over-yelloow/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"over-yelloow/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"over-yelloow/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"over-yelloow/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"over-yelloow/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"content-introduction/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"content-introduction/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"content-introduction/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"content-introduction/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"content-introduction/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"content-introduction/([^/]+)/trackback/?$";s:47:"index.php?content-introduction=$matches[1]&tb=1";s:61:"content-introduction/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?content-introduction=$matches[1]&feed=$matches[2]";s:56:"content-introduction/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?content-introduction=$matches[1]&feed=$matches[2]";s:49:"content-introduction/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?content-introduction=$matches[1]&paged=$matches[2]";s:56:"content-introduction/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?content-introduction=$matches[1]&cpage=$matches[2]";s:41:"content-introduction/([^/]+)(/[0-9]+)?/?$";s:59:"index.php?content-introduction=$matches[1]&page=$matches[2]";s:37:"content-introduction/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"content-introduction/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"content-introduction/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"content-introduction/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"content-introduction/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"onze-referenties/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"onze-referenties/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"onze-referenties/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"onze-referenties/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"onze-referenties/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"onze-referenties/([^/]+)/trackback/?$";s:43:"index.php?onze-referenties=$matches[1]&tb=1";s:57:"onze-referenties/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?onze-referenties=$matches[1]&feed=$matches[2]";s:52:"onze-referenties/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?onze-referenties=$matches[1]&feed=$matches[2]";s:45:"onze-referenties/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?onze-referenties=$matches[1]&paged=$matches[2]";s:52:"onze-referenties/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?onze-referenties=$matches[1]&cpage=$matches[2]";s:37:"onze-referenties/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?onze-referenties=$matches[1]&page=$matches[2]";s:33:"onze-referenties/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"onze-referenties/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"onze-referenties/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"onze-referenties/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"onze-referenties/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_postmeta`
#
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"[your-name] <admin@yelloow.id>";s:4:"body";s:162:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)";s:9:"recipient";s:16:"admin@yelloow.id";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"Yelloow <admin@yelloow.id>";s:4:"body";s:104:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: admin@yelloow.id";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:6:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 5, '_edit_last', '1'),
(9, 5, '_edit_lock', '1423226769:1'),
(10, 5, '_wp_page_template', 'default'),
(11, 7, '_edit_last', '1'),
(12, 7, '_edit_lock', '1422551035:1'),
(13, 8, '_edit_last', '1'),
(14, 8, '_edit_lock', '1422549987:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_edit_lock', '1423227235:1'),
(17, 10, '_wp_types_group_filters_association', 'any'),
(18, 10, '_wp_types_group_fields', ',button-text-voor-wie,button-url-voor-wie,yellow-image-voor-wie,'),
(19, 10, '_wp_types_group_post_types', ',voor-wie,'),
(20, 10, '_wp_types_group_terms', 'all'),
(21, 10, '_wp_types_group_admin_styles', ''),
(22, 10, '_wp_types_group_templates', 'all'),
(23, 10, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(24, 11, '_edit_last', '1'),
(25, 11, '_wp_page_template', 'default'),
(26, 11, '_edit_lock', '1423229385:1'),
(27, 13, '_edit_last', '1'),
(28, 13, '_edit_lock', '1423229555:1'),
(29, 13, '_wp_page_template', 'default'),
(30, 15, '_edit_last', '1'),
(31, 15, '_edit_lock', '1423227734:1'),
(32, 15, '_wp_page_template', 'default'),
(33, 17, '_edit_last', '1'),
(34, 17, '_edit_lock', '1422552308:1'),
(35, 18, '_edit_last', '1'),
(36, 18, '_edit_lock', '1423240297:1'),
(37, 19, '_edit_last', '1'),
(38, 19, '_edit_lock', '1423227591:1'),
(39, 20, '_edit_last', '1'),
(40, 20, '_edit_lock', '1423227346:1'),
(41, 21, '_edit_last', '1'),
(42, 21, '_edit_lock', '1422630079:1'),
(43, 22, '_edit_last', '1'),
(44, 22, '_edit_lock', '1423318594:1'),
(45, 23, '_wp_types_group_filters_association', 'any'),
(46, 23, '_wp_types_group_fields', ',logo,reference_link,'),
(47, 23, '_wp_types_group_post_types', ',onze-referenties,'),
(48, 23, '_wp_types_group_terms', 'all'),
(49, 23, '_wp_types_group_admin_styles', ''),
(50, 23, '_wp_types_group_templates', 'all'),
(51, 23, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(52, 24, '_edit_last', '1'),
(53, 24, '_edit_lock', '1423240588:1'),
(55, 24, '_wpcf-logo-sort-order', 'a:6:{i:0;i:500;i:1;i:501;i:2;i:502;i:3;i:503;i:4;i:504;i:5;i:505;}'),
(56, 25, '_edit_last', '1'),
(57, 25, '_edit_lock', '1422552338:1'),
(58, 25, '_wp_page_template', 'default'),
(59, 28, '_form', '<div class="form-group">\n[text* naam id:naam class:form-control placeholder "naam"]\n</div>\n\n<div class="form-group">\n[text naam-organisatie id:naam-organisatie class:form-control placeholder "naam organisatie"]\n</div>\n\n<div class="form-group">\n[text adres id:adres class:form-control placeholder "adres"]\n</div>\n\n<div class="form-group">\n[text plaats id:plaats class:form-control placeholder "plaats"]\n</div>\n\n<div class="form-group">\n[text phone id:phone class:form-control placeholder "telefoon"]\n</div>\n\n<div class="form-group">\n[email* email id:email class:form-control placeholder "email"]\n</div>\n\n<div class="form-group">\n[textarea opmerkingen id:opmerkingen class:form-control placeholder "opmerkingen, vragen, etc"]\n</div>\n\n[submit id:submit class:btn class:btn-turquoise class:center-block "Verzenden"]'),
(60, 28, '_mail', 'a:8:{s:7:"subject";s:29:"Yelloow Contact Form - [naam]";s:6:"sender";s:16:"[naam] <[email]>";s:4:"body";s:209:"From: [naam] <[email]>\nOrganization: [naam-organisatie]\nAddress: [adres]\nPlaats: [plaats]\nPhone: [phone]\n\nMessage Body:\n[opmerkingen]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)";s:9:"recipient";s:15:"info@yelloow.be";s:18:"additional_headers";s:17:"Reply-To: [email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(61, 28, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"Yelloow <admin@yelloow.id>";s:4:"body";s:104:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: admin@yelloow.id";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
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
(141, 52, '_wpcf-intro-right-column-sort-order', 'a:3:{i:0;i:628;i:1;i:629;i:2;i:630;}'),
(142, 52, '_edit_lock', '1423228398:1'),
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
(255, 69, '_menu_item_url', 'http://yelloow.be/voor-wie/'),
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
(273, 71, '_menu_item_url', 'http://yelloow.be/over-yelloow/'),
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
(406, 9, 'wpcf-button-text-voor-wie', 'Meer weten? Contacteer ons'),
(407, 9, 'wpcf-button-url-voor-wie', 'mailto:info@yelloow.be'),
(408, 9, 'wpcf-yellow-image-voor-wie', 'http://yelloow.be/wp-content/uploads/2014/12/professional-yellow.png'),
(433, 8, 'wpcf-button-text-voor-wie', 'Meer weten? Contacteer ons'),
(434, 8, 'wpcf-button-url-voor-wie', 'mailto:info@yelloow.be'),
(435, 8, 'wpcf-yellow-image-voor-wie', 'http://yelloow.be/wp-content/uploads/2014/12/team-yellow.png'),
(454, 7, 'wpcf-button-text-voor-wie', 'Meer weten? Contacteer ons'),
(455, 7, 'wpcf-button-url-voor-wie', 'mailto:info@yelloow.be'),
(456, 7, 'wpcf-yellow-image-voor-wie', 'http://yelloow.be/wp-content/uploads/2014/12/leidinggevenden-yellow.png'),
(457, 102, '_wp_attached_file', '2014/12/TrouwMien-e1422628284488.jpg'),
(458, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:355;s:4:"file";s:36:"2014/12/TrouwMien-e1422628284488.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"TrouwMien-e1422628284488-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"TrouwMien-e1422628284488-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(459, 102, '_wp_attachment_backup_sizes', 'a:7:{s:9:"full-orig";a:3:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:13:"TrouwMien.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:21:"TrouwMien-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:21:"TrouwMien-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:18:"full-1422628192425";a:3:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:28:"TrouwMien-e1422628167778.jpg";}s:18:"full-1422628284488";a:3:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:28:"TrouwMien-e1422628192425.jpg";}s:23:"thumbnail-1422628284488";a:4:{s:4:"file";s:36:"TrouwMien-e1422628167778-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:20:"medium-1422628284488";a:4:{s:4:"file";s:36:"TrouwMien-e1422628167778-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}'),
(460, 104, '_wp_attached_file', '2014/12/flight.png'),
(461, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:338;s:6:"height";i:213;s:4:"file";s:18:"2014/12/flight.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flight-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"flight-300x189.png";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(463, 105, '_wp_trash_meta_status', 'auto-draft'),
(464, 105, '_wp_trash_meta_time', '1422629487'),
(466, 19, 'wpcf-logo', ''),
(468, 21, '_wpcf-logo-sort-order', 'a:1:{i:0;i:469;}'),
(469, 21, 'wpcf-logo', '') ;
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(471, 22, '_wpcf-logo-sort-order', 'a:1:{i:0;i:549;}'),
(480, 109, '_wp_attached_file', '2015/01/OMcollective.png'),
(481, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:24:"2015/01/OMcollective.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"OMcollective-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"OMcollective-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(482, 110, '_wp_attached_file', '2015/01/max.jpg'),
(483, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1403;s:6:"height";i:992;s:4:"file";s:15:"2015/01/max.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"max-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"max-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"max-1024x724.jpg";s:5:"width";i:1024;s:6:"height";i:724;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(484, 111, '_wp_attached_file', '2015/01/feestpaleis.jpg'),
(485, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:826;s:6:"height";i:802;s:4:"file";s:23:"2015/01/feestpaleis.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"feestpaleis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"feestpaleis-300x291.jpg";s:5:"width";i:300;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(486, 112, '_wp_attached_file', '2015/01/introfashion.jpg'),
(487, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:24:"2015/01/introfashion.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"introfashion-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(496, 114, '_wp_attached_file', '2014/12/t-flight90.png'),
(497, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:319;s:6:"height";i:196;s:4:"file";s:22:"2014/12/t-flight90.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"t-flight90-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"t-flight90-300x184.png";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(498, 115, '_wp_attached_file', '2014/12/Horselivecom.jpg'),
(499, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:214;s:6:"height";i:62;s:4:"file";s:24:"2014/12/Horselivecom.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Horselivecom-150x62.jpg";s:5:"width";i:150;s:6:"height";i:62;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(500, 24, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/feestpaleis.jpg'),
(501, 24, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/introfashion.jpg'),
(502, 24, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/max.jpg'),
(503, 24, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/OMcollective.png'),
(504, 24, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2014/12/t-flight90.png'),
(505, 24, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2014/12/Horselivecom.jpg'),
(506, 116, '_wp_attached_file', '2014/12/P1010540-copy.jpg'),
(507, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1540;s:6:"height";i:867;s:4:"file";s:25:"2014/12/P1010540-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010540-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010540-copy-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010540-copy-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(508, 117, '_wp_attached_file', '2014/12/P1010549-copy.jpg'),
(509, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1294;s:6:"height";i:867;s:4:"file";s:25:"2014/12/P1010549-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010549-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010549-copy-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010549-copy-1024x686.jpg";s:5:"width";i:1024;s:6:"height";i:686;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(510, 119, '_wp_attached_file', '2014/12/P1010552-copy.jpg'),
(511, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1094;s:6:"height";i:867;s:4:"file";s:25:"2014/12/P1010552-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010552-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010552-copy-300x237.jpg";s:5:"width";i:300;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010552-copy-1024x811.jpg";s:5:"width";i:1024;s:6:"height";i:811;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(514, 122, '_wp_attached_file', '2014/12/TrouwMien_02.jpg'),
(515, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:495;s:6:"height";i:365;s:4:"file";s:24:"2014/12/TrouwMien_02.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"TrouwMien_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"TrouwMien_02-300x221.jpg";s:5:"width";i:300;s:6:"height";i:221;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(516, 18, '_thumbnail_id', '128'),
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
(626, 52, 'wpcf-intro', '<h4>YELLOOW biedt ondersteuning bij de <strong>selectie</strong> van medewerkers, <br /><strong>talent management</strong> en <strong>coaching</strong> van jezelf en je bedrijf of organisatie.<br />We focussen daarbij op de talenten en <strong>drijfveren</strong> van jezelf en van je medewerkers.</h4>'),
(627, 52, 'wpcf-intro-left-column', '<p>Mensen met verschillende talenten, met hun unieke <a title="Black Box" href="#blackbox"><strong>Black Box</strong></a>, goed laten samenwerken en motiveren is de uitdaging voor elk bedrijf.</p>\r\n<p>Het besef dat ieder met een andere bril naar de wereld kijkt, is de basis voor een betere samenwerking. Inzicht in je eigen kijk, je eigen <a title="Black Box" href="#blackbox"><strong>Black Box</strong></a>, creëert kansen om medewerkers en teams beter te managen.</p>\r\n<p>YELLOOW helpt zicht krijgen op de processen die in een bedrijf spelen. Uw en onze analyse zijn het uitgangspunt. YELLOOW steunt daarbij op <a title="Approach" href="http://yelloow.be/?p=15"><strong>de kleurentheorie van Graves</strong></a> om tot een bruikbare analyse te komen.</p>'),
(628, 52, 'wpcf-intro-right-column', 'MANAGERS & LEIDINGGEVENDEN'),
(629, 52, 'wpcf-intro-right-column', 'TEAMS'),
(630, 52, 'wpcf-intro-right-column', 'INDIVIDUELE PROFESSIONALS'),
(631, 137, '_wp_attached_file', '2014/12/P1010564-copy.jpg'),
(632, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4592;s:6:"height";i:2097;s:4:"file";s:25:"2014/12/P1010564-copy.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P1010564-copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"P1010564-copy-300x136.jpg";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"P1010564-copy-1024x467.jpg";s:5:"width";i:1024;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(655, 132, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/max.jpg'),
(656, 132, 'wpcf-reference_link', 'https://www.maxled.be/nl/'),
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
(669, 134, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2014/12/t-flight90.png'),
(670, 134, 'wpcf-reference_link', 'http://www.flight-90.be/'),
(673, 131, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/introfashion.jpg'),
(674, 131, 'wpcf-reference_link', 'https://www.intro-fashionstore.be/'),
(675, 130, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/feestpaleis.jpg'),
(676, 130, 'wpcf-reference_link', 'http://www.feestpaleis.be/'),
(677, 133, '_edit_lock', '1423241017:1'),
(678, 133, '_edit_last', '1'),
(681, 133, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2015/01/OMcollective.png'),
(682, 133, 'wpcf-reference_link', 'https://www.omcollective.be/'),
(683, 135, '_edit_lock', '1423241195:1'),
(684, 135, '_edit_last', '1'),
(685, 135, 'wpcf-logo', 'http://yelloow.be/wp-content/uploads/2014/12/Horselivecom.jpg'),
(686, 135, 'wpcf-reference_link', 'http://www.horse-live.com/nl') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_posts`
#
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-12-11 09:38:45', '2014-12-11 09:38:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-02-04 11:56:01', '2015-02-04 11:56:01', '', 0, 'http://yelloow.be/?p=1', 0, 'post', '', 1),
(4, 1, '2014-12-11 09:49:51', '2014-12-11 09:49:51', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <admin@yelloow.id>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)\nadmin@yelloow.id\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nYelloow <admin@yelloow.id>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)\n[your-email]\nReply-To: admin@yelloow.id\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2014-12-11 09:49:51', '2014-12-11 09:49:51', '', 0, 'http://yelloow.be/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2014-12-11 10:49:23', '2014-12-11 10:49:23', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé.</p>\r\n<p><strong>Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</strong></p>', 'Black Box', '', 'publish', 'open', 'open', '', 'black-box', '', '', '2015-01-29 15:05:54', '2015-01-29 15:05:54', '', 0, 'http://yelloow.be/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-12-11 10:49:23', '2014-12-11 10:49:23', 'Ieder mens heeft een “Black Box”: een set van onbewuste waarden en normen die bepaalt hoe hij zich gedraagt in een bepaalde situatie en hoe hij naar de wereld kijkt. Deze “Black Box” is voor iedereen verschillend en verklaart vele professionele en privé discussies en misverstanden.\r\n\r\nWe kijken elk met een gekleurde bril naar de wereld en interpreteren boodschappen van anderen met die bril.\r\n\r\n<strong>Om je "Black Box" te kennen zet YELLOOW een gevalideerde test in. Het resultaat is een profiel dat voor elk waardensysteem je kijk weergeeft.</strong>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-12-11 10:49:23', '2014-12-11 10:49:23', '', 5, 'http://yelloow.be/?p=6', 0, 'revision', '', 0),
(7, 1, '2014-12-11 10:52:11', '2014-12-11 10:52:11', '<p>"One does not ‘manage’ people. The task is to lead people." Hoe te sturen? Hoe te motiveren? Hoe NIET demotiveren? Wat is jouw manier van leidinggeven? Wat is de gepaste manier van leidinggeven voor je medewerkers?</p>\r\n<p>Kennis van je eigen logica, je persoonlijke <a title="Black Box" href="http://yelloow.be/black-box/">Black Box</a>, geeft inzicht in je leiderschapsstijl. <br />Kennis van de Black Box van je medewerkers geeft inzicht in de bedrijfscultuur.</p>', 'Leidinggevenden', '', 'publish', 'closed', 'closed', '', 'leidinggevenden', '', '', '2015-01-29 17:05:01', '2015-01-29 17:05:01', '', 0, 'http://yelloow.be/?post_type=voor-wie&#038;p=7', 0, 'voor-wie', '', 0),
(8, 1, '2014-12-11 10:54:38', '2014-12-11 10:54:38', '<p>Goed functionerende teams zijn evenwichtig samengestelde teams. Soms is het nodig om de balans binnen een groep bij te sturen. YELLOOW neemt de samenstelling van teams onder de loep. </p>\r\n<p>Als manager of leidinggevende krijg je een helder zicht op de sterke kanten én op de werkpunten van je team of afdelingen.<br />De teamleden zelf krijgen inzicht in hun eigen drijfveren en in die van hun collega’s.</p>\r\n<p><strong><a title="Approach" href="http://yelloow.be/approach/" target="_blank">De kleurentheorie</a></strong> biedt op een eenvoudige manier inzicht. Met meer onderling begrip, een vlottere communicatie en een betere samenwerking als resultaat.</p>', 'Teams', '', 'publish', 'closed', 'closed', '', 'teams', '', '', '2015-01-29 16:48:13', '2015-01-29 16:48:13', '', 0, 'http://yelloow.be/?post_type=voor-wie&#038;p=8', 0, 'voor-wie', '', 0),
(9, 1, '2014-12-11 10:55:03', '2014-12-11 10:55:03', '<p>Je vraagt je af of een job of functie aansluit bij wat je wil in je leven? Je kan soms wat hulp gebruiken om te communiceren met je collega’s en leidinggevende?</p>\r\n<p>Een gevalideerde kleurentest biedt inzicht in je motivatie en je drijfveren, je sterke kanten, je talenten en je communicatiestijl.</p>', 'Individuele professional', '', 'publish', 'closed', 'closed', '', 'individuele-professional', '', '', '2015-01-29 15:20:46', '2015-01-29 15:20:46', '', 0, 'http://yelloow.be/?post_type=voor-wie&#038;p=9', 0, 'voor-wie', '', 0),
(10, 1, '2014-12-11 10:56:44', '2014-12-11 10:56:44', '', 'Voor Wie', '', 'publish', 'open', 'open', '', 'voor-wie', '', '', '2015-01-06 07:54:47', '2015-01-06 07:54:47', '', 0, 'http://yelloow.be/?wp-types-group=voor-wie', 0, 'wp-types-group', '', 0),
(11, 1, '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 'Approach', '', 'publish', 'open', 'open', '', 'approach', '', '', '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 0, 'http://yelloow.be/?page_id=11', 0, 'page', '', 0),
(12, 1, '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 'Approach', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 11, 'http://yelloow.be/?p=12', 0, 'revision', '', 0),
(13, 1, '2014-12-11 10:58:59', '2014-12-11 10:58:59', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft. In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer. De kleurentheorie van humanistisch psycholoog DR. C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'publish', 'open', 'open', '', 'trouble-shooting', '', '', '2015-01-29 17:15:14', '2015-01-29 17:15:14', '', 0, 'http://yelloow.be/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-12-11 10:58:59', '2014-12-11 10:58:59', '', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-11 10:58:59', '2014-12-11 10:58:59', '', 13, 'http://yelloow.be/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-12-11 10:59:22', '2014-12-11 10:59:22', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. <br />Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'publish', 'open', 'open', '', 'graves', '', '', '2015-01-29 17:18:30', '2015-01-29 17:18:30', '', 0, 'http://yelloow.be/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-12-11 10:59:22', '2014-12-11 10:59:22', '', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-11 10:59:22', '2014-12-11 10:59:22', '', 15, 'http://yelloow.be/?p=16', 0, 'revision', '', 0),
(17, 1, '2014-12-11 11:00:34', '2014-12-11 11:00:34', '<p><strong>STAAT VOOR:</strong> ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof en bescheidenheid.</p>\r\n<p><strong>TE VEEL:</strong> achterdocht, wantrouwen.</p>', 'PAARS', '', 'publish', 'closed', 'closed', '', 'paars', '', '', '2015-01-29 17:26:39', '2015-01-29 17:26:39', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=17', 1, 'drijfveren', '', 0),
(18, 1, '2014-12-11 11:44:41', '2014-12-11 11:44:41', '<p>Linda Leemans en Greet Leemans, leading partners van YELLOOW.<br />Na meer dan 20 jaar ervaring als leidinggevenden gingen ze een nieuwe uitdaging aan met de oprichting van YELLOOW consult.</p>', 'Over Yelloow Intro', '', 'publish', 'closed', 'closed', '', 'over-yelloow-intro', '', '', '2015-02-01 21:00:44', '2015-02-01 21:00:44', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=18', 0, 'over-yelloow', '', 0),
(19, 1, '2014-12-11 11:52:19', '2014-12-11 11:52:19', '<p>Na een kleine VZW in de non-profit uitgebouwd te hebben tot een grote organisatie, hebben we geleerd hoe belangrijk het is om menselijk kapitaal in een organisatie te versterken en een positieve flow te creeëren.</p>\r\n<p>Het succes van een bedrijf gaat hand in hand met goede interne communicatie, met klantgerichtheid en met medewerkerstevredenheid.</p>', 'Onze visie', '', 'publish', 'closed', 'closed', '', 'onze-visie', '', '', '2015-02-06 12:58:33', '2015-02-06 12:58:33', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=19', 1, 'over-yelloow', '', 0),
(20, 1, '2014-12-11 11:52:57', '2014-12-11 11:52:57', '<p>YELLOOW focust op de verwachtingen en het potentieel aanwezig in een bedrijf. Kennis van het bedrijf en van de bedrijfscultuur is essentieel om aan de slag te gaan. Kleine wijzigingen in functies of communicatie kunnen reeds een groot verschil maken.</p>\r\n<p>&nbsp;</p>\r\n<p>Om zicht te krijgen op de verwachtingen en perspectieven van een bedrijf hanteert YELLOOW een gevalideerde test die talenten, sterke kanten en blinde vlekken naar boven brengt. Na een verkennend gesprek bezorgen we een plan van aanpak.</p>\r\n<p><strong>Het succes van een bedrijf is onze motivatie. </strong></p>', 'Onze aanpak', '', 'publish', 'closed', 'closed', '', 'onze-aanpak', '', '', '2015-02-06 12:57:44', '2015-02-06 12:57:44', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=20', 2, 'over-yelloow', '', 0),
(21, 1, '2014-12-11 11:53:41', '2014-12-11 11:53:41', '<p>Het snijpunt tussen het succes van een organisatie, klanttevredenheid en het welbevinden van medewerkers is onze passie. De voorbije 20 jaar bouwden we een kleine organisatie uit tot een bedrijf met 50 medewerkers.</p>\r\n<p>Samen met anderen mooie resultaten neerzetten en een blijvende dynamiek creeëren, realiseerden we door inzicht in wat er aan de basis ligt van ieders gedrag op de werkvloer, inzicht in onze eigen logica en die van onze medewerkers.</p>', 'Wie we zijn', '', 'publish', 'closed', 'closed', '', 'wie-we-zijn', '', '', '2015-01-30 15:03:03', '2015-01-30 15:03:03', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=21', 3, 'over-yelloow', '', 0),
(22, 1, '2014-12-11 11:56:25', '2014-12-11 11:56:25', '<p><strong>Think positive, your positivism will CONTAMINATE others</strong></p>\r\n<p><strong>Humour and fun is at the start of every change. HAVE FUN!</strong></p>\r\n<p><strong>SMILE, I shall respond</strong></p>\r\n<p><strong>Good is the enemy of GREAT</strong></p>\r\n<p><strong>Leer op een ELEGANTE manier te falen: laat je fouten je niet ontmoedigen om het met meer inzicht OPNIEUW te proberen</strong></p>\r\n<p><strong>Je kunt niet op je ogen vertrouwen als je VERBEELDING niet op scherp staat</strong></p>\r\n<p><strong>No risk and no CHANGE is no business</strong></p>\r\n<p><strong>BE as you are</strong></p>\r\n<p><strong>Simple and clear is CLEVER</strong></p>\r\n<p><strong>Talents needs a SMILE</strong></p>\r\n<p><strong>Find the MUSIC in everyone</strong></p>\r\n<p><strong>Ga uit van MOED, zo creëer je positief gedrag. Wie vanuit angst werkt, krijgt negatief gedrag</strong></p>\r\n<p><strong>VERGEET andermans normen en VERANDER je kritische innerlijke stem</strong></p>\r\n<p><strong>Bekijk het OBJECTIEF</strong></p>\r\n<p><strong>ACCEPTEER complimenten</strong></p>\r\n<p><strong>DRAAG IETS BIJ!</strong></p>\r\n<p><strong>Vertrouw op JEZELF</strong></p>', 'Yelloow manifesto', '', 'publish', 'closed', 'closed', '', 'yelloow-manifesto', '', '', '2015-02-06 20:26:15', '2015-02-06 20:26:15', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=22', 4, 'over-yelloow', '', 0),
(23, 1, '2014-12-11 11:58:34', '2014-12-11 11:58:34', '', 'Onze Referenties', '', 'publish', 'open', 'open', '', 'onze-referenties', '', '', '2015-02-05 05:42:55', '2015-02-05 05:42:55', '', 0, 'http://yelloow.be/?wp-types-group=onze-referenties', 0, 'wp-types-group', '', 0),
(24, 1, '2014-12-11 11:59:56', '2014-12-11 11:59:56', '', 'Onze referenties', '', 'publish', 'closed', 'closed', '', 'onze-referenties', '', '', '2015-02-06 13:22:05', '2015-02-06 13:22:05', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=24', 0, 'over-yelloow', '', 0),
(25, 1, '2014-12-11 12:01:27', '2014-12-11 12:01:27', '<p>[contact-form-7 id="28" title="Kennismaken?"]</p>', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-01-07 03:48:38', '2015-01-07 03:48:38', '', 0, 'http://yelloow.be/?page_id=25', 0, 'page', '', 0),
(26, 1, '2014-12-11 12:01:27', '2014-12-11 12:01:27', '', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:01:27', '2014-12-11 12:01:27', '', 25, 'http://yelloow.be/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-12-11 12:02:02', '2014-12-11 12:02:02', '[contact-form-7 id="4" title="Contact form 1"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:02:02', '2014-12-11 12:02:02', '', 25, 'http://yelloow.be/?p=27', 0, 'revision', '', 0),
(28, 1, '2014-12-11 12:12:54', '2014-12-11 12:12:54', '<div class="form-group">\r\n[text* naam id:naam class:form-control placeholder "naam"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text naam-organisatie id:naam-organisatie class:form-control placeholder "naam organisatie"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text adres id:adres class:form-control placeholder "adres"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text plaats id:plaats class:form-control placeholder "plaats"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text phone id:phone class:form-control placeholder "telefoon"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[email* email id:email class:form-control placeholder "email"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[textarea opmerkingen id:opmerkingen class:form-control placeholder "opmerkingen, vragen, etc"]\r\n</div>\r\n\r\n[submit id:submit class:btn class:btn-turquoise class:center-block "Verzenden"]\nYelloow Contact Form - [naam]\n[naam] <[email]>\nFrom: [naam] <[email]>\r\nOrganization: [naam-organisatie]\r\nAddress: [adres]\r\nPlaats: [plaats]\r\nPhone: [phone]\r\n\r\nMessage Body:\r\n[opmerkingen]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)\ninfo@yelloow.be\nReply-To: [email]\n\n\n\n\n[your-subject]\nYelloow <admin@yelloow.id>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be)\n[your-email]\nReply-To: admin@yelloow.id\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Kennismaken?', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-02-04 13:03:10', '2015-02-04 13:03:10', '', 0, 'http://yelloow.be/?post_type=wpcf7_contact_form&#038;p=28', 0, 'wpcf7_contact_form', '', 0),
(29, 1, '2014-12-11 12:13:10', '2014-12-11 12:13:10', '[contact-form-7 id="28" title="Contact"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:13:10', '2014-12-11 12:13:10', '', 25, 'http://yelloow.be/?p=29', 0, 'revision', '', 0),
(30, 1, '2014-12-11 12:24:13', '2014-12-11 12:24:13', '[contact-form-7 id="28" title="Kennismaken?"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:24:13', '2014-12-11 12:24:13', '', 25, 'http://yelloow.be/?p=30', 0, 'revision', '', 0),
(31, 1, '2014-12-12 08:11:01', '2014-12-12 08:11:01', 'Individuele professional', 'Individuele professional', 'Individuele professional', 'inherit', 'open', 'open', '', 'professional', '', '', '2014-12-12 08:11:53', '2014-12-12 08:11:53', '', 9, 'http://yelloow.be/wp-content/uploads/2014/12/professional.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2014-12-12 08:26:46', '2014-12-12 08:26:46', 'Leidinggevenden', 'Leidinggevenden', 'Leidinggevenden', 'inherit', 'open', 'open', '', 'leidinggevenden-2', '', '', '2014-12-12 08:27:15', '2014-12-12 08:27:15', '', 8, 'http://yelloow.be/wp-content/uploads/2014/12/leidinggevenden.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2014-12-12 08:26:46', '2014-12-12 08:26:46', 'Teams', 'Teams', 'Teams', 'inherit', 'open', 'open', '', 'team', '', '', '2014-12-12 08:27:05', '2014-12-12 08:27:05', '', 8, 'http://yelloow.be/wp-content/uploads/2014/12/team.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2014-12-12 08:52:18', '2014-12-12 08:52:18', 'l', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-12 08:52:18', '2014-12-12 08:52:18', '', 13, 'http://yelloow.be/13-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2014-12-12 09:00:29', '2014-12-12 09:00:29', 'graves-chart', 'graves-chart', 'graves-chart', 'inherit', 'open', 'open', '', 'graves-chart', '', '', '2014-12-12 09:00:47', '2014-12-12 09:00:47', '', 15, 'http://yelloow.be/wp-content/uploads/2014/12/graves-chart.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2014-12-12 09:01:35', '2014-12-12 09:01:35', 'jhkhh', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-12 09:01:35', '2014-12-12 09:01:35', '', 15, 'http://yelloow.be/15-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-12-12 09:25:15', '2014-12-12 09:25:15', '<p><strong>STAAT VOOR:</strong> beslissingen nemen en tempo maken, snelheid en besluitvaardigheid.</p>\r\n<p><strong>TE VEEL:</strong> defensief, agressief.</p>', 'ROOD', '', 'publish', 'closed', 'closed', '', 'rood', '', '', '2015-01-29 17:26:08', '2015-01-29 17:26:08', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=37', 2, 'drijfveren', '', 0),
(38, 1, '2014-12-12 09:25:28', '2014-12-12 09:25:28', 'blauw', 'blauw', 'blauw', 'inherit', 'open', 'open', '', 'brush-blue', '', '', '2014-12-12 09:26:47', '2014-12-12 09:26:47', '', 37, 'http://yelloow.be/wp-content/uploads/2014/12/brush-blue.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2014-12-12 09:25:28', '2014-12-12 09:25:28', 'groen', 'groen', 'groen', 'inherit', 'open', 'open', '', 'brush-green', '', '', '2014-12-12 09:26:36', '2014-12-12 09:26:36', '', 37, 'http://yelloow.be/wp-content/uploads/2014/12/brush-green.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2014-12-12 09:25:29', '2014-12-12 09:25:29', 'oranje', 'oranje', 'oranje', 'inherit', 'open', 'open', '', 'brush-orange', '', '', '2014-12-12 09:26:26', '2014-12-12 09:26:26', '', 37, 'http://yelloow.be/wp-content/uploads/2014/12/brush-orange.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2014-12-12 09:25:30', '2014-12-12 09:25:30', 'paars', 'paars', 'paars', 'inherit', 'open', 'open', '', 'brush-purple', '', '', '2014-12-12 09:26:16', '2014-12-12 09:26:16', '', 37, 'http://yelloow.be/wp-content/uploads/2014/12/brush-purple.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2014-12-12 09:25:30', '2014-12-12 09:25:30', 'rood', 'rood', 'rood', 'inherit', 'open', 'open', '', 'brush-red', '', '', '2014-12-12 09:25:44', '2014-12-12 09:25:44', '', 37, 'http://yelloow.be/wp-content/uploads/2014/12/brush-red.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2014-12-12 09:25:31', '2014-12-12 09:25:31', 'turkoois', 'turkoois', 'turkoois', 'inherit', 'open', 'open', '', 'brush-turqoise', '', '', '2014-12-12 09:26:04', '2014-12-12 09:26:04', '', 37, 'http://yelloow.be/wp-content/uploads/2014/12/brush-turqoise.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 'logo-cm', '', 'inherit', 'open', 'open', '', 'logo-cm', '', '', '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 24, 'http://yelloow.be/wp-content/uploads/2014/12/logo-cm.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 'logo-oxfam', '', 'inherit', 'open', 'open', '', 'logo-oxfam', '', '', '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 24, 'http://yelloow.be/wp-content/uploads/2014/12/logo-oxfam.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 'logo-square', '', 'inherit', 'open', 'open', '', 'logo-square', '', '', '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 24, 'http://yelloow.be/wp-content/uploads/2014/12/logo-square.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2014-12-15 04:41:27', '2014-12-15 04:41:27', '', 'logo-an', '', 'inherit', 'open', 'open', '', 'logo-an', '', '', '2014-12-15 04:41:27', '2014-12-15 04:41:27', '', 24, 'http://yelloow.be/wp-content/uploads/2014/12/logo-an.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2014-12-15 05:01:01', '2014-12-15 05:01:01', '', 'man', '', 'inherit', 'open', 'open', '', 'man', '', '', '2014-12-15 05:01:01', '2014-12-15 05:01:01', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/man.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2014-12-16 07:03:35', '2014-12-16 07:03:35', '', 'Content Introduction Field', '', 'publish', 'open', 'open', '', 'content-introduction-field', '', '', '2014-12-16 07:03:35', '2014-12-16 07:03:35', '', 0, 'http://yelloow.be/wp-types-group/content-introduction-field/', 0, 'wp-types-group', '', 0),
(52, 1, '2014-12-16 07:07:32', '2014-12-16 07:07:32', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2015-02-06 13:05:09', '2015-02-06 13:05:09', '', 0, 'http://yelloow.be/?post_type=content-introduction&#038;p=52', 0, 'content-introduction', '', 0),
(53, 1, '2014-12-16 08:16:05', '2014-12-16 08:16:05', '<p>Hier komt nog een andere inleidende tekst</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-16 08:16:05', '2014-12-16 08:16:05', '', 13, 'http://yelloow.be/13-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2014-12-16 08:16:39', '2014-12-16 08:16:39', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen.</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-16 08:16:39', '2014-12-16 08:16:39', '', 15, 'http://yelloow.be/15-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2014-12-16 08:25:58', '2014-12-16 08:25:58', '<p><strong>STAAT VOOR:</strong> discipline, orde, structuur, zekerheid, duidelijkheid, betrouwbaarheid en verantwoordelijkheid.</p>\r\n<p><strong>TE VEEL:</strong> zich achter regels verschuilen.</p>', 'BLAUW', '', 'publish', 'closed', 'closed', '', 'blauw', '', '', '2015-01-29 17:25:28', '2015-01-29 17:25:28', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=55', 3, 'drijfveren', '', 0),
(56, 1, '2014-12-16 08:30:06', '2014-12-16 08:30:06', '<p><strong>STAAT VOOR:</strong> ambitie en resultaten neerzetten, vooruitgang, succes, competitie en winnen.</p>\r\n<p><strong>TE VEEL:</strong> afschuiven, gezichtsverlies vrezen.</p>', 'ORANJE', '', 'publish', 'closed', 'closed', '', 'oranje', '', '', '2015-01-29 17:22:53', '2015-01-29 17:22:53', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=56', 4, 'drijfveren', '', 0),
(57, 1, '2014-12-16 08:30:30', '2014-12-16 08:30:30', '<p><strong>STAAT VOOR:</strong> communicatie, betrokkenheid, samenwerken, gelijkheid, groepsgevoel, mensen verbinden.</p>\r\n<p><strong>TE VEEL:</strong> protesteren, roddelen en klagen.</p>', 'GROEN ', '', 'publish', 'closed', 'closed', '', 'groen', '', '', '2015-01-29 17:24:36', '2015-01-29 17:24:36', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=57', 5, 'drijfveren', '', 0),
(58, 1, '2014-12-16 08:31:14', '2014-12-16 08:31:14', '<p><strong>STAAT VOOR:</strong> inzicht, leren, analyseren en ontwikkelen, breed denken, creatief en intellectuele vrijheid.</p>\r\n<p><strong>TE VEEL:</strong> cynisch, negatief kritisch.</p>', 'GEEL ', '', 'publish', 'closed', 'closed', '', 'geel', '', '', '2015-01-29 17:24:11', '2015-01-29 17:24:11', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=58', 6, 'drijfveren', '', 0),
(59, 1, '2014-12-16 08:31:06', '2014-12-16 08:31:06', '', 'brush-yellow', '', 'inherit', 'open', 'open', '', 'brush-yellow', '', '', '2014-12-16 08:31:06', '2014-12-16 08:31:06', '', 58, 'http://yelloow.be/wp-content/uploads/2014/12/brush-yellow.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2014-12-16 08:31:36', '2014-12-16 08:31:36', '<p><strong>STAAT VOOR:</strong> het holistisch waardesysteem, de bezinning over hoe je je dominante waarden inzet. De turkooise persoon heeft oog voor het grotere geheel.</p>\r\n<p><strong>TE VEEL:</strong> overmatig relativeren, zweverig.</p>', 'TURKOOIS', '', 'publish', 'closed', 'closed', '', 'turkoois', '', '', '2015-01-29 17:23:14', '2015-01-29 17:23:14', '', 0, 'http://yelloow.be/?post_type=drijfveren&#038;p=60', 7, 'drijfveren', '', 0),
(61, 1, '2014-12-16 08:38:53', '2014-12-16 08:38:53', '<p>[contact-form-7 id="28" title="Kennismaken?"]</p>', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-16 08:38:53', '2014-12-16 08:38:53', '', 25, 'http://yelloow.be/25-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', '', 'Voor Wie', '', 'publish', 'open', 'open', '', 'voor-wie', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', '', 'Over Yelloow', '', 'publish', 'open', 'open', '', 'over-yelloow', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/?p=71', 3, 'nav_menu_item', '', 0),
(72, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/?p=72', 4, 'nav_menu_item', '', 0),
(75, 1, '2015-01-29 14:14:08', '2015-01-29 14:14:08', '', 'HOME', '', 'inherit', 'open', 'open', '', '52-autosave-v1', '', '', '2015-01-29 14:14:08', '2015-01-29 14:14:08', '', 52, 'http://yelloow.be/52-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2015-01-06 07:56:36', '2015-01-06 07:56:36', '', 'team-yellow', '', 'inherit', 'open', 'open', '', 'team-yellow', '', '', '2015-01-06 07:56:36', '2015-01-06 07:56:36', '', 9, 'http://yelloow.be/wp-content/uploads/2014/12/team-yellow.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2015-01-06 07:56:39', '2015-01-06 07:56:39', '', 'leidinggevenden-yellow', '', 'inherit', 'open', 'open', '', 'leidinggevenden-yellow', '', '', '2015-01-06 07:56:39', '2015-01-06 07:56:39', '', 9, 'http://yelloow.be/wp-content/uploads/2014/12/leidinggevenden-yellow.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2015-01-06 07:56:48', '2015-01-06 07:56:48', '', 'professional-yellow', '', 'inherit', 'open', 'open', '', 'professional-yellow', '', '', '2015-01-06 07:56:48', '2015-01-06 07:56:48', '', 9, 'http://yelloow.be/wp-content/uploads/2014/12/professional-yellow.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2015-01-29 14:53:17', '2015-01-29 14:53:17', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box</strong>: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt. Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. </p>\n<p>Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-autosave-v1', '', '', '2015-01-29 14:53:17', '2015-01-29 14:53:17', '', 5, 'http://yelloow.be/5-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2015-01-29 14:57:53', '2015-01-29 14:57:53', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box</strong>: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt. Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. </p>\r\n<p>Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 14:57:53', '2015-01-29 14:57:53', '', 5, 'http://yelloow.be/5-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-01-29 14:58:50', '2015-01-29 14:58:50', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong> Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril.</p>\r\n<p>Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 14:58:50', '2015-01-29 14:58:50', '', 5, 'http://yelloow.be/5-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-01-29 14:59:34', '2015-01-29 14:59:34', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 14:59:34', '2015-01-29 14:59:34', '', 5, 'http://yelloow.be/5-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-01-29 15:00:36', '2015-01-29 15:00:36', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé. <br /><br />Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 15:00:36', '2015-01-29 15:00:36', '', 5, 'http://yelloow.be/5-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-01-29 15:04:29', '2015-01-29 15:04:29', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé.</p>\r\n<p>Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 15:04:29', '2015-01-29 15:04:29', '', 5, 'http://yelloow.be/5-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-01-29 15:05:54', '2015-01-29 15:05:54', '<p>Het gedrag dat je van een medewerker op de werkvloer ziet, is het topje van de ijsberg. Gedrag wordt aangestuurd door een zogenaamde <strong>Black Box: een unieke set van onbewuste waarden en normen die bepalen hoe men zich gedraagt en hoe men naar de wereld kijkt.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Iedereen kijkt met een gekleurde bril naar de wereld en interpreteert boodschappen van anderen met die bril. Omdat deze Black Box bij iedereen verschillend is, ligt deze vaak aan de basis van discussies en misverstanden, zowel professioneel als privé.</p>\r\n<p><strong>Om de Black Box te kennen, zet YELLOOW een gevalideerde kleurentest in.</strong></p>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-29 15:05:54', '2015-01-29 15:05:54', '', 5, 'http://yelloow.be/5-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2015-01-29 15:13:13', '2015-01-29 15:13:13', '<p>Je vraagt je af of een job of functie aansluit bij wat je wil in je leven?<br />Je kan soms wat hulp gebruiken om te communiceren met je collega’s en leidinggevende?</p>\n<p>Een gevalideerde kleurentest biedt inzicht in je motivatie en je drijfveren, in je sterke kanten, je talenten en je communicatiestijl.</p>', 'Individuele professional', '', 'inherit', 'open', 'open', '', '9-autosave-v1', '', '', '2015-01-29 15:13:13', '2015-01-29 15:13:13', '', 9, 'http://yelloow.be/9-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2015-01-29 16:44:32', '2015-01-29 16:44:32', '<p>Goed functionerende teams zijn evenwichtig samengestelde teams. Soms is het nodig om de balans binnen een groep bij te sturen. YELLOOW neemt de samenstelling van teams onder de loep.</p>\n<p><strong><a title="Approach" href="http://yelloow.be/approach/" target="_blank">De kleurentheorie</a></strong> biedt op een eenvoudige manier inzicht. Met meer onderling begrip, een vlottere communicatie en een betere samenwerking als resultaat.</p>\n<p>Als manager of leidinggevende krijg je een helder zicht op de sterke kanten én op de werkpunten van je team of afdelingen.De teamleden zelf krijgen inzicht in hun eigen drijfveren en in die van hun collega’s.</p>', 'Teams', '', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2015-01-29 16:44:32', '2015-01-29 16:44:32', '', 8, 'http://yelloow.be/8-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2015-01-29 16:59:45', '2015-01-29 16:59:45', '<p>One does not ‘manage’ people. The task is to lead people.<br />Hoe te sturen? Hoe te motiveren? Hoe NIET demotiveren?<br /><br />Wat is jouw manier van leidinggeven? Wat is de gepaste manier van leidinggeven voor je medewerkers?<br /><br />Kennis van je eigen logica, je persoonlijke <a title="Black Box" href="http://yelloow.be/black-box/">Black Box</a>, geeft inzicht in je leiderschapsstijl. <br />Kennis van de Black Box van je medewerkers geeft inzicht in de bedrijfscultuur.</p>', 'Leidinggevenden', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-01-29 16:59:45', '2015-01-29 16:59:45', '', 7, 'http://yelloow.be/7-autosave-v1/', 0, 'revision', '', 0),
(92, 1, '2015-01-30 15:06:43', '2015-01-30 15:06:43', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft. In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer. De kleurentheorie van humanistisch psycholoog DR. C.W. Graves ligt aan de basis van die test.</p>\n<p>&nbsp;</p>\n<p>YELLOOW focust op de verwachtingen en het potentieel aanwezig in een bedrijf. Kennis van het bedrijf en van de bedrijfscultuur is essentieel om aan de slag te gaan. Kleine wijzigingen in functies of communicatie kunnen reeds een groot verschil maken.</p>\n<p>Om zicht te krijgen op de verwachtingen en perspectieven van een bedrijf hanteert YELLOOW een gevalideerde test die talenten, sterke kanten en blinde vlekken naar boven brengt. Na een verkennend gesprek bezorgen we een plan van aanpak.</p>\n<p><strong>Het succes van een bedrijf is onze motivatie. </strong></p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-autosave-v1', '', '', '2015-01-30 15:06:43', '2015-01-30 15:06:43', '', 13, 'http://yelloow.be/13-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2015-01-29 17:09:42', '2015-01-29 17:09:42', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn <a title="Graves" href="http://yelloow.be/graves/">persoonlijke drijfveren</a>. Managers zien vaak wel hoe medewerkers zich gedragen, niet wat hen drijft. Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.<br /><br />YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft.<br />In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer.</p>\r\n<p>De theorie van humanistisch psycholoog DR.C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:09:42', '2015-01-29 17:09:42', '', 13, 'http://yelloow.be/13-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-01-29 17:11:12', '2015-01-29 17:11:12', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. Managers zien vaak wel hoe medewerkers zich gedragen, niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft.<br />In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer.</p>\r\n<p>De theorie van humanistisch psycholoog DR.C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:11:12', '2015-01-29 17:11:12', '', 13, 'http://yelloow.be/13-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2015-01-29 17:14:08', '2015-01-29 17:14:08', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft.<br />In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer.<br />De kleurentheorie van humanistisch psycholoog DR. C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:14:08', '2015-01-29 17:14:08', '', 13, 'http://yelloow.be/13-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-01-29 17:15:14', '2015-01-29 17:15:14', '<p>Het gedrag van een medewerker wordt aangestuurd door zijn persoonlijke drijfveren. <br />Managers zien vaak hoe medewerkers zich gedragen, maar niet wat hen drijft. <br />Weet je wat iemand drijft, dan kan je aansluiten bij zijn motivitatie. <br />Voelen mensen zich aangesproken op hun motivatie en talenten, dan gaan ze beter presteren en met meer plezier werken.</p>\r\n<p>YELLOOW werkt met een gevalideerde kleurentest die het persoonlijk motivatieprofiel visueel weergeeft. In coachingsgesprekken, teamworkshops en teambuildingsessies ligt de focus op talentontwikkeling, communicatie- en conflictbeheer. De kleurentheorie van humanistisch psycholoog DR. C.W. Graves ligt aan de basis van die test.</p>', 'Talent management', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-29 17:15:14', '2015-01-29 17:15:14', '', 13, 'http://yelloow.be/13-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2015-01-29 17:16:38', '2015-01-29 17:16:38', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, <br />ook drijfveren of drives genoemd. Elk  waardesysteem  is <br /><br />een soort van containers die waarden,  met overtuigingen en ideeën over wat goed en <br /><br />fout is bevatten. Een waardesysteem bevat positieve en negatieve aspecten.  Elk <br /><br />waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-01-29 17:16:38', '2015-01-29 17:16:38', '', 15, 'http://yelloow.be/15-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2015-01-29 17:17:47', '2015-01-29 17:17:47', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, <br />ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-29 17:17:47', '2015-01-29 17:17:47', '', 15, 'http://yelloow.be/15-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-01-29 17:18:15', '2015-01-29 17:18:15', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-29 17:18:15', '2015-01-29 17:18:15', '', 15, 'http://yelloow.be/15-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-01-29 17:18:30', '2015-01-29 17:18:30', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen. Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. Elk waardesysteem is een soort van container met overtuigingen en ideeën over wat goed en fout is. Een waardesysteem bevat positieve en negatieve aspecten. <br />Elk waardesysteem wordt aangeduid met een kleur.</p>', 'De kleurentheorie', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-29 17:18:30', '2015-01-29 17:18:30', '', 15, 'http://yelloow.be/15-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2015-01-29 17:20:39', '2015-01-29 17:20:39', '<p>staat voor het holistisch waardesysteem, de bezinning over hoe je je dominante waarden inzet. De turkooise persoon heeft oog voor het grotere geheel.</p>\n<p>TE VEEL: overmatig relativeren, zweverig</p>', 'TURKOOIS', '', 'inherit', 'open', 'open', '', '60-autosave-v1', '', '', '2015-01-29 17:20:39', '2015-01-29 17:20:39', '', 60, 'http://yelloow.be/60-autosave-v1/', 0, 'revision', '', 0),
(102, 1, '2015-01-30 14:28:19', '2015-01-30 14:28:19', '', 'TrouwMien', '', 'inherit', 'open', 'open', '', 'trouwmien', '', '', '2015-01-30 14:28:19', '2015-01-30 14:28:19', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/TrouwMien.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2015-01-30 14:31:56', '2015-01-30 14:31:56', '', 'flight', '', 'inherit', 'open', 'open', '', 'flight', '', '', '2015-01-30 14:31:56', '2015-01-30 14:31:56', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/flight.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2015-01-30 14:51:13', '2015-01-30 14:51:13', '', 'Auto Draft', '', 'trash', 'open', 'open', '', 'auto-draft', '', '', '2015-01-30 14:51:27', '2015-01-30 14:51:27', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=105', 0, 'over-yelloow', '', 0),
(106, 1, '2015-01-30 14:59:48', '2015-01-30 14:59:48', '<p>Na een kleine VZW in de non-profit uitgebouwd te hebben tot een grote organisatie, hebben we geleerd hoe belangrijk het is om menselijk kapitaal in een organisatie te versterken en een positieve flow te creeëren. Het succes van een bedrijf gaat hand in hand met goede interne communicatie, met klantgerichtheid en met medewerkerstevredenheid.</p>', 'Onze visie', '', 'inherit', 'open', 'open', '', '19-autosave-v1', '', '', '2015-01-30 14:59:48', '2015-01-30 14:59:48', '', 19, 'http://yelloow.be/19-autosave-v1/', 0, 'revision', '', 0),
(109, 1, '2015-01-30 15:36:09', '2015-01-30 15:36:09', '', 'OMcollective', '', 'inherit', 'open', 'open', '', 'omcollective', '', '', '2015-01-30 15:36:09', '2015-01-30 15:36:09', '', 0, 'http://yelloow.be/wp-content/uploads/2015/01/OMcollective.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2015-01-30 15:36:10', '2015-01-30 15:36:10', '', 'max', '', 'inherit', 'open', 'open', '', 'max', '', '', '2015-01-30 15:36:10', '2015-01-30 15:36:10', '', 0, 'http://yelloow.be/wp-content/uploads/2015/01/max.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2015-01-30 15:36:11', '2015-01-30 15:36:11', '', 'feestpaleis', '', 'inherit', 'open', 'open', '', 'feestpaleis', '', '', '2015-01-30 15:36:11', '2015-01-30 15:36:11', '', 0, 'http://yelloow.be/wp-content/uploads/2015/01/feestpaleis.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2015-01-30 15:36:12', '2015-01-30 15:36:12', '', 'introfashion', '', 'inherit', 'open', 'open', '', 'introfashion', '', '', '2015-01-30 15:36:12', '2015-01-30 15:36:12', '', 0, 'http://yelloow.be/wp-content/uploads/2015/01/introfashion.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2015-01-30 15:39:52', '2015-01-30 15:39:52', '', 'Onze referenties', '', 'inherit', 'open', 'open', '', '24-autosave-v1', '', '', '2015-01-30 15:39:52', '2015-01-30 15:39:52', '', 24, 'http://yelloow.be/24-autosave-v1/', 0, 'revision', '', 0),
(114, 1, '2015-01-30 15:52:09', '2015-01-30 15:52:09', '', 't-flight90', '', 'inherit', 'open', 'open', '', 't-flight90', '', '', '2015-01-30 15:52:09', '2015-01-30 15:52:09', '', 24, 'http://yelloow.be/wp-content/uploads/2014/12/t-flight90.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2015-01-30 15:59:21', '2015-01-30 15:59:21', '', 'Horselivecom', '', 'inherit', 'open', 'open', '', 'horselivecom', '', '', '2015-01-30 15:59:21', '2015-01-30 15:59:21', '', 24, 'http://yelloow.be/wp-content/uploads/2014/12/Horselivecom.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2015-01-30 17:04:04', '2015-01-30 17:04:04', '', 'P1010540 copy', '', 'inherit', 'open', 'open', '', 'p1010540-copy', '', '', '2015-01-30 17:04:04', '2015-01-30 17:04:04', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/P1010540-copy.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 1, '2015-01-30 17:13:09', '2015-01-30 17:13:09', '', 'P1010549 copy', '', 'inherit', 'open', 'open', '', 'p1010549-copy', '', '', '2015-01-30 17:13:09', '2015-01-30 17:13:09', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/P1010549-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2015-01-30 17:15:49', '2015-01-30 17:15:49', '', 'P1010552 copy', '', 'inherit', 'open', 'open', '', 'p1010552-copy', '', '', '2015-01-30 17:15:49', '2015-01-30 17:15:49', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/P1010552-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2015-01-30 17:27:45', '2015-01-30 17:27:45', '', 'TrouwMien_02', '', 'inherit', 'open', 'open', '', 'trouwmien_02', '', '', '2015-01-30 17:27:45', '2015-01-30 17:27:45', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/TrouwMien_02.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2015-02-01 20:42:23', '2015-02-01 20:42:23', '', 'Linda & Greet 9', '', 'inherit', 'open', 'open', '', 'linda-greet-9', '', '', '2015-02-01 20:42:23', '2015-02-01 20:42:23', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/Linda-Greet-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2015-02-01 20:44:03', '2015-02-01 20:44:03', '', 'Linda & Greet 7', '', 'inherit', 'open', 'open', '', 'linda-greet-7', '', '', '2015-02-01 20:44:03', '2015-02-01 20:44:03', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/Linda-Greet-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2015-02-01 20:45:45', '2015-02-01 20:45:45', '', 'Linda & Greet 6', '', 'inherit', 'open', 'open', '', 'linda-greet-6', '', '', '2015-02-01 20:45:45', '2015-02-01 20:45:45', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/Linda-Greet-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2015-02-01 20:46:53', '2015-02-01 20:46:53', '', 'Linda & Greet 3', '', 'inherit', 'open', 'open', '', 'linda-greet-3', '', '', '2015-02-01 20:46:53', '2015-02-01 20:46:53', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/Linda-Greet-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2015-02-04 11:56:01', '2015-02-04 11:56:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-02-04 11:56:01', '2015-02-04 11:56:01', '', 1, 'http://yelloow.be/1-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2015-02-05 01:43:55', '2015-02-05 01:43:55', '', 'Danstheater Feestpaleis', '', 'publish', 'closed', 'closed', '', 'feest-paleis', '', '', '2015-02-06 16:42:02', '2015-02-06 16:42:02', '', 0, 'http://yelloow.be/?post_type=onze-referenties&#038;p=130', 1, 'onze-referenties', '', 0),
(131, 1, '2015-02-05 05:46:42', '2015-02-05 05:46:42', '', 'Intro-fashionstore', '', 'publish', 'closed', 'closed', '', 'intro-fashion', '', '', '2015-02-06 16:40:51', '2015-02-06 16:40:51', '', 0, 'http://yelloow.be/?post_type=onze-referenties&#038;p=131', 2, 'onze-referenties', '', 0),
(132, 1, '2015-02-05 05:44:57', '2015-02-05 05:44:57', '', 'Max', '', 'publish', 'open', 'open', '', 'max', '', '', '2015-02-06 13:22:06', '2015-02-06 13:22:06', '', 0, 'http://yelloow.be/?post_type=onze-referenties&#038;p=132', 0, 'onze-referenties', '', 0),
(133, 1, '2015-02-05 05:45:31', '2015-02-05 05:45:31', '', 'OMCollective', '', 'publish', 'closed', 'closed', '', 'om-collective', '', '', '2015-02-06 16:45:58', '2015-02-06 16:45:58', '', 0, 'http://yelloow.be/?post_type=onze-referenties&#038;p=133', 0, 'onze-referenties', '', 0),
(134, 1, '2015-02-05 05:46:04', '2015-02-05 05:46:04', '', 'Flight 90', '', 'publish', 'closed', 'closed', '', 't-flight-90', '', '', '2015-02-06 16:37:28', '2015-02-06 16:37:28', '', 0, 'http://yelloow.be/?post_type=onze-referenties&#038;p=134', 3, 'onze-referenties', '', 0),
(135, 1, '2015-02-05 05:46:41', '2015-02-05 05:46:41', '', 'Horse Live', '', 'publish', 'closed', 'closed', '', 'horselivecom', '', '', '2015-02-06 16:46:43', '2015-02-06 16:46:43', '', 0, 'http://yelloow.be/?post_type=onze-referenties&#038;p=135', 0, 'onze-referenties', '', 0),
(136, 1, '2015-02-06 12:37:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-02-06 12:37:37', '0000-00-00 00:00:00', '', 0, 'http://yelloow.be/?p=136', 0, 'post', '', 0),
(137, 1, '2015-02-06 13:16:15', '2015-02-06 13:16:15', '', 'P1010564 copy', '', 'inherit', 'open', 'open', '', 'p1010564-copy', '', '', '2015-02-06 13:16:15', '2015-02-06 13:16:15', '', 18, 'http://yelloow.be/wp-content/uploads/2014/12/P1010564-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2015-02-06 13:29:37', '2015-02-06 13:29:37', '<p>lalalala</p>', 'TEst', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-02-06 13:30:36', '2015-02-06 13:30:36', '', 0, 'http://yelloow.be/?page_id=139', 0, 'page', '', 0),
(140, 1, '2015-02-06 13:28:51', '2015-02-06 13:28:51', '<p>lalalala</p>', 'TEst', '', 'inherit', 'open', 'open', '', '139-revision-v1', '', '', '2015-02-06 13:28:51', '2015-02-06 13:28:51', '', 139, 'http://yelloow.be/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2015-02-06 13:31:37', '2015-02-06 13:31:37', '<p>this is a test</p>', 'Test', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-02-06 13:32:46', '2015-02-06 13:32:46', '', 11, 'http://yelloow.be/?page_id=141', 0, 'page', '', 0),
(142, 1, '2015-02-06 13:31:37', '2015-02-06 13:31:37', '<p>this is a test</p>', 'Test', '', 'inherit', 'open', 'open', '', '141-revision-v1', '', '', '2015-02-06 13:31:37', '2015-02-06 13:31:37', '', 141, 'http://yelloow.be/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2015-02-06 13:34:09', '2015-02-06 13:34:09', '<p>Testje</p>', 'Testje', '', 'trash', 'closed', 'closed', '', 'testje', '', '', '2015-02-06 13:34:58', '2015-02-06 13:34:58', '', 0, 'http://yelloow.be/?post_type=over-yelloow&#038;p=143', 0, 'over-yelloow', '', 0),
(144, 1, '2015-02-06 16:46:55', '2015-02-06 16:46:55', '', 'Horse Live', '', 'inherit', 'open', 'open', '', '135-autosave-v1', '', '', '2015-02-06 16:46:55', '2015-02-06 16:46:55', '', 135, 'http://yelloow.be/135-autosave-v1/', 0, 'revision', '', 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;


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
(14, 1, 'session_tokens', 'a:1:{s:64:"a2299b5bf06a08285b86ff4bf25e43538eeaa60ccf4537b1c3e2e0a272d67f32";i:1423642421;}'),
(15, 1, 'yl_dashboard_quick_press_last_post_id', '136'),
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
(55, 2, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_users`
#
INSERT INTO `yl_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bp79ydhNMhcCpZyOXiH491POQ2pTMk/', 'admin', 'admin@yelloow.id', '', '2014-12-11 09:38:45', '', 0, 'admin'),
(2, 'fathur', '$P$BIIjYSrilnAiHVW/KBpvbKT2MFsrtM0', 'fathur', 'fathur.rohman@fostrom.com', '', '2014-12-17 15:09:43', '', 0, 'Fathur Rohman') ;

#
# End of data contents of table `yl_users`
# --------------------------------------------------------

#
# Add constraints back in
#

