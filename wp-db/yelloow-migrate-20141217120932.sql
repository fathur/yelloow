# WordPress MySQL database migration
#
# Generated: Wednesday 17. December 2014 12:09 UTC
# Hostname: localhost
# Database: `yelloow`
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
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-12-11 09:38:45', '2014-12-11 09:38:45', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_options`
#
INSERT INTO `yl_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://yelloow.be/beta', 'yes'),
(2, 'home', 'http://yelloow.be/beta', 'yes'),
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
(33, 'active_plugins', 'a:5:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:27:"theme-check/theme-check.php";i:2;s:37:"tinymce-advanced/tinymce-advanced.php";i:3;s:14:"types/wpcf.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
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
(52, 'blog_public', '0', 'yes'),
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
(96, 'cron', 'a:5:{i:1418844720;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1418852381;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1418895759;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1418899679;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, 'can_compress_scripts', '1', 'yes'),
(120, 'recently_activated', 'a:0:{}', 'yes'),
(121, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(122, 'wp_installer_settings', 'eJztfeuO20iW5u814HcgEti2qyEpReqWSrs8sNN2lRt2l7syq6tnFguDEpkplilRTVJOZw8K6F/zALt/doBdYJ5lHqWeZM8lrmRQynS5umvQsYvdLqfIYMSJEyfO5TvnxKej03+tTsPZ6dG7bZm+C98N3y3zNN68222PHi1Ow0fwY3R6VKbbosrqoszS6uhRfBrhW+PTo+vtOsd/h+LfSVzH+O85/hvey5IjGGF0wk/261Xavy7KBD5VVf31Lq+zPNtc7eK8v813V9kGn4ZhNvE6pf8cnh59//bN66AfXKzS4Ht49S2+GrwxXg3eqldxqtuySHbLuq/G4CFoHqdHuzKnByenR6u63p4eH+PEBkV5hX+O4GFYZvrufXpTvVvHm/gqXaeb+p14bRTya5Xx3nG8XBa7TX2ML1bHchrVbrstyvpdHV9VgkLZ6dAg3d75jeaOD10W5W5dHdfFNlv2YVz6BT7444/VKVB4Gy/fw3zl/mSn40k4DE/gXzNrN8Lp6ZFF+uW6atAdH7FIfPbmnP4O60/Sallm2zormORDGBg3Z1mst3lap4GYRy+4KookgEkH8eYmML8YIKl6QbZZ5rsE/hTEeVXYT3xfFGfFep2WyzQQpBzg54Au2RpGlzsyde3I9ba/LDY1bNzxbpsXcVIdR8NwfDw8oWf6eXFVhP1hONhuaNuBGYCz0vLoEW4RDIrELOF1+YcTxVaa+6NJm4x9WG0/zy5T2vFhY6fxjSZViT78hpO8cADEDLdltkwFl4TzCT0/Qz5bqBfe1TfbFOc8nUV4cqPI8fu7Ov1Y3246zeGzzWVBb8IP58YPwXVWr4JNEaQft1l5Y7PyeN46asf/FCdJvy76y7isvwyn0XA0/0283j5a7G7ebYrrL8MjJjrsQXoNzIHkBGoyn++2V2WcpMYf4QtJcb2hnRbSh8/arLkDoZAnt2Tu2UkkXgDuXmSbtLK5VHBZEO/qFchG4GSixLa4TsvLXR7UZbyp8phopKXJIHhV8zMVjFACb8dwbEh8wFFJgqyCf+BhCtJNsbta0aYsgGmv4I3B/Xv37z1O8iePk/rJxa7cVIZYNCf3+BgeeJwkT158SMubIM3p23DojOcXKayrsagBiFqYAR9OPM0gUnow3aqG/0Fp1guWMN8rugvgv3dVXawD5Cyeffoh3SC58GvVAGaR0FT/mJU1kiyP8StXaZBkZbrkG4Xekz/gp+HHy8sUT2CQFOs421RqNf9c7OD7+ES1zeMbk8T05nffvgby7ZarIK6Cx+n6SfoxRloOYErHIJ8fH8Pfeq1fLkv+JQBSZxslzPKb9lR6+Ayci7769zYt1fT1is+KDZAiwzdNPkCeKYtcr+j7FRDsBpb1IUuvA7gi4QACsYPikolP1BH0h8ce5CA/0zS4XsX1A/gxL9M40XRIE3oef4UTCbwmCQZHzibWZYn7Jj7Xp4/Dwq5XGTJektXIzoLBxaKOge2EEF6uYL0p8CTfAcMZyMzHq/GT0SAcnAzGj4/hv19mH2E2FTBECRsPDAVEhW8vgNNq3HU6K4ag7wXAMzuLWLiUOv5YbIq1tdUD/a0Rfeu8jmncm2C3TfA49YNL+DywRFXt5Ldwsa7RgDZr2HQ4+ilsBZ4QPPL4bfMasg6J/n5E3/+OvgqTLfC7/FXxUdcHcWPpAwlcUBmeJ1h7ksUBCIF1ZYwe0uh/2GXL9zQwigJzUrxa4w16/k38AzwnfsM5uVcN378CCYu7Uyn6geQpiw+pOL5i2JlY5m+Db9M1/JoEa2Ca+H26gRMCnEVcV2xu1sUOGGu3WeIHUFDsKmQjcxOAGyriP+Dvt1+/DR5PBqP7934bMLfg+q7LAt7ZVUgjeAi+U2dLoA/I2ARkn5pSaHDZFcwdzjxT3Cl11XtMIVrEqw0MnudwfBegtCCh1M7HwWa3XsAvMIMCGKd0E2ZKoz3bXQl2o7MKwr8o4cuwP86XJjzxXZ4H5pm4EbsrpfNoMKfx5D7ir0ixyWCihhob+21+F9+rGmdCTmA4iPqxoh3MOVjA/OHgAwFxx9KGoACyLFBeVyANNiCz4Xc8LXBz4KW146fU2LwrFxnofDAs8qzYcZr/EYgiEEtBkqJ4PYJdrSp5FpjM1Rp2ROxnWolRaczfg4T66rtXPZhNXcOTJC2qm82S3l5kVxa16XPWbZ32l+LY0GSjwVwIj6fBFQjR2thxayAcXe+uefreNEUCjsknhc9JBQsFY2fJzHgdlxt4GFh/Y23zFC71V/zFytrFa7waKiQZnqI16tGgEMHGoq5RqS8KktO1LbYT6V4CjeMKxCocUPwSjkG7Jo5jjXfEElQj4A8l9WC8U1Qxfhucg1llnSV+DX86k3rPdpvGpPfU19lSCDz6BGzl2n4W+Icfx1Murx5NBRLB+DzNIsmSzU9//fca1ly+N4SkUrgq/UcWCTBvosLj1ejJS9jMHYwKfxg9uX/vIqvzlFQXIaqAoTfxh+yKlnX/HtDpyyWKLxguh0sT7kHSAFnBu8yudmW8gBF2G7AReH7931zVj4LXSmX56d/+V3D+4pvgG3oR1v00z2Ec+FAFm7CECee5oeHwvqYbMn6SYrljRkNBbdBbUenC+OPzuFotirhMFMuAGFujfXQM2jf8TzDYFvzqObGJ9TZfcffvvczjK+BCEN5KH6uu6cSVoJ0quwyV2r8AyUlvA92jBkbF7UrLD0COMod7rAT+qVGTBQYiZaI53v1731Va22MZl6SXMRwd9fD9e8/VFiOlhFJ5maV5UtlKAJFO7j1xHnwUtaP791A+yLtHTueiLHawd9WqKOjpKuWfaWdqqSyYVK9xr+GjlyhiSM2RX6nwQOD0xfRIJwv0v8UcM3m0VnFiqmVCA0cNnrmjTPsxnMorOtzmFH4oFsBC52z2wqHKEzCUEiIx2a/MlYOP65ymA4OSFi2WzMxb8ULgW8zy8MObGBVmTXM8KnBzyWPyrCyuK0OThfnxrgUP6Ui/eqHu7i/u3zsTW4SMlC3xe0kRkGQXijlqOUAgngYcpHy3hoceMtGYD2GYtpDZBK/PaaDronxPJhXuOEuFBtugtNPqOdB8E5xfwIZksGWGqXH/njyoAZn5NDrIojwDwixSIGEKrFbCXJMyvoKltTYdboRYs+ACLov3uMcohO/f+57VlTJv84aljqAuDIPB9tNi1jGt7tliy6YbXmZKRgIzA79eZktxBeOMFykzMC5VC4qiFOIEmSYAmzJFbX+ZglaT8Ba/gYtbbDGtDOZRpkSzJSuH8oqCH374ww6NRXWK8uxD+vALIe542tkmW+/WMMSfdxnKci3C5T2fVSRER6jX0TtnSOGf/vq/8XIRf3LIJnwAFFjxgPnLG6XEiYdm4qE3pDPz3yZ8C0iF/EwoVnkq7QzzvpXPhuKuRgcBH5J1sUADKAGhxiRQtMBnkFzxhyJL6GYAGSQ3mXUXdmLKi5l18XAQyJP8XPHqczYdiWNem4Zvw8WJToH796JB8Iam1X8JB32TgNhWHH2uxOxoELBcQU8Bad3iCikc9vT9e+NB8BzYvQ/Stf+8LLbBN3g28D1rUrwUU9lGDeMSRC2qokqjsXQJogi8JDUQQQ/WvJWio9U3SeKYlFXSvhOU+wEJRzwFMHFTL1oUJFmKq5TIroy7nbDC2twlpjAdjMVKWCwK1yIt+XlW/XlXKddFjxWZNUsHXDZIAZOLJkpJZW1b2Lmsv4IKVqlvjqSRYGrDRDEYqsg/EEkN5ZPVMyAeLabFvhP+nlazDO3Z5sCpOAyPdzmc/v/2OM/oXJCb1ly6NfrjY3hMPN2mUtUU2A2hJzxBD0EZAW5CSsb5F+aQbK/FbZXbsBG7dGxzHLbg2F4j872leZA9p31dcWmtrGHjLSwTrqC9zC07QLz9+BiIKckbNpwPTfNPGl4gwmCGyBT0kUS51zooKTQf1qeBjnAy/oJUK8v4hmeoTs8Krp/sLzaTD5u7zvsY72BsMqalu1Qed00m21VVpibNlMJp8c7o4qzNMkzKhrfCfOw8Rd2xFlI3Y0M8gPGXNIuC/ozGjrbRmbetbwFJgQLt/esywdt7OBFHhCWbPMS8UxZhyJTcoYKEH3h1Fm9eF0vaF5g96IqXMX7LNuzGA/mRLqHzVVFc5ampc4mbmbXeAu8ZmBL68jbB0/OzV69QJy2Vq5PcwU/zqujhkcKAi2ZpTQ7bnAU6x6AWbxIxu3HLhybkNvNfDGYAnOvuAWt0/GcV6deXwvRSQ0dy4ZUy3pT2jgpGcZUte8L5EOP1VUkNEofbbQztSb5v+YeVUaW+KEgtxlJ2BQknvMOrQwMM9V6BKWycosdgeIOu9+QNnr1z++w9PhY//ud/9DEUQvfGJmVrExgRpFeOHhFQ5unsds2ixyINPbb8MIp4YhWwv0zel5N5meVoqSxugrcUs9KWj8NotGYJW5zBnISFegUssaVLbrnC7wrHP/qVSJeFDwi/P9twpovINa+WhoITQ8pZc0CvNC74QXVIfhPRXB96SsGX4Pe0teaqvxFWvPXBJViCyNnEcMDEl1meWpZ3GnwAnRIp2Gk/u2Zx0RDkOMBPf/0/321ksATk909//ffgTNDQmhQ+LI0bRWRkgVUMhnYMa49RzcKQEmmhbtZxcgc6Gc8NgXOhAjV/zNLrypqGcn4Wu5Jkr7iNMKovpC9ZZSRegWeAeaQO1hasI+GbZG9CWukAse3z5Av/bfCir678h8K4qIgwl0ByULV2qZwCxm7sF2wdAX7+YiAnYeleyiMGdlCSc+QZNDagTdWleJmxLnYhGd4IQ/rC3iA50sqpskVqPpH21Ukpm0mNeFeZegRLW1LztgUKvoxECBoe7FWHC5Tnjfs2YGPve44KweYJk88QX9+mcd6vQScLhPH+krUMlGQm7xjPSV7E+VxI+5djHeYbTeYXR5LHt279NcwZTvZT0thaIsJ6FEOgoPwDOS9Qyw3EdWuebWvsFqvDFRB8ldYX6ccaVpLn9kxs8c3O9d0iz6oViEt7eS/iCjk9+DZFg0QJBDC9XWw/NFzy1kW6pj9tDC8VGTzkbsVtYu0JCQO6qrzt+i2xKL+JT4NC1y/TK7h80XPObuGmdDaePxcux3P3kyjjb/Dss1vKiAMYS0XV24Q9EHm/zxKQA8Yjr9wOdKHXmfzyIkFckfHqRdcZMoktnb74f804EJumpL6RgUUOkTJdwjzg7GQYek12S7rY5dkg3onRx5mWJRCkaRAN6eKS1jhc7ElqzJa4Eu6MGAUUuhQxzlmWJB17HEre/CBdCIwOYBON54dKOFxD6ZrUpvzGGFnPAfVwkFTXqPvXJSlGQEiBg5A0bTrHbDbB40hBR4qPqzkaD70lFwRNapGSpMfJKu5jzekyznLjnd+n6EP/kOpLix8D64+E/heWIw+NXq3NbY0riw4ZSGRcbF4U2y4RbE7367c4eLZkfa4RjWqfy8gwhfkolBkGK6XdkEgldI0+0jQmvS0vKhKw2uG4IbOicazaav0mremijGHfPzQfV2aU4yLkS/KjMOzN9XZYNMIYXCPxyxQhSob3m6WJRWmTIqHjbqQrzTwaxPkIRmE1sEyBUTciBAi7mqeD7WoboA4DV9oK3Zf4K7kkidfQC/60ykCZAbp8u6voP9GGAdpg3ID0DRhrmy7R1SNWPujYaityYvla7eDJwNoepALKqUoouxm5xJLNA1B74chKwSlOUqfeZ02qLBZ5ulZe9z+B6qTuszMZNuKrJSMH+A6UatLnRIwVl3Wp5Y615NctXVhMl7gKTXPD4xKXoLF/aNNMOeeIaBLSoaNQD9G8RC9MKodTv33hnAwiUojWOX6WRr3codyiP3OgP0g36PBPOicD9FpbwhRsNBJirNTEpjtai0B5Y5rDnnEoOV6Sy4CxMjzI1xcXb88H7vtiaGul3T4gK3QfvBE2sHRL2D7LTPEBItsQdwDXTK5irCichJNS631CJQyFYFIzMl0n+hYKB6aawMIagTtBUqQVcgaxFiFcHGAjazdwJfhqDzkTziBGQbRx1xNHHHZyva1vLII7mC54iNSg6DHO8guYD85G+reU5IxrOFWLXW2zqbyZpB12p5fPhbOmcRV8//bd8xfPvvuKmMt8nswbxH6KuLXas7fiRt4yfqvNNaEZYldqu4uFaPOsrfp9ISJy7Ah4nzq8peu2jxNf/emv/xfn/NNf/x9HusgtgkpOzYZRUdT81eZdqk4G3T6C976GS+0aEXMoYPc8nF0qFeWyyDFeRqCCqrgEZTTbvHdIhv4q41C2DNvL02E8+6ws3iMyUGoKQhERfLNX9l2Tdkm6BGpYFNTQURPLJm9s21Cohhjck/smDrHAgoBRpVzy2pS6f08eR9sD9N0Wd3E+/O/2XXv+h9fBn3epoaLQ0xN4LmffxZpMfv3TN/DNYDQcsqqK4sYSkqSRmEsiNOrpkZip+JcA2wnwNhplhMabnx4h3LkfRv1hGITj00l4Opo0ULlTBypXeoW/nA5PTn4jvvWl8ZWT06MFkFDBaacMl3fA+QlT/mN2GrpQuCMBqm1ftF043Am8rvw97NlTYg61YbrbxWkm/ibV2wqJsEzfNGAnpBsMlBeEDm61BQ2lqm/y9MujZZEX5Snu9qMjjbDZSDHPYxOg1/JZIJXIT9EBN2asKbBSuaOvwxfp2xdu9UNA6rXIsSIyjI8jNOEN0Bh1KKQHsfE5/8gEiuGmBsUr6S+LhDQ4ofAg61Vg9y3TQfB7VDJztF3glxt6xVDa+XodrAtSaqoesG+tw2/dMxejkVfTGrDMrlbiROMwHfuDK3luro0UDcQ1UxCeb9kMb/+07KOigyrIgHJGkD8fIBjiCuifit2TyN/gG+IQi2y0ZJB1qNygk9xiK5Q/NZ3Qh3n2nkcXcvgLyWAyBEeAIMl88kojDJf1vR5b4YhRksp8HffR5TZwYW2j2VhAbSME27GPDej1XobOkN/EkR2ox0Z7Hhupp5xQVlaOA/YyaI0Wbx7h51yj8fkBJrhFfLoaLdzzzUg/NtzzmHxo3rDxt6x88/N/Ing+KtySKSXsFPmadWvGUZrBBBtDNxToMeQYDtCBFgpWRrpZEowR9xWfOpF6+BIjhHyPiDvFwfyM2FAXKyhZyKCVxJwQp3NyQZkqUUJC5jqGMw4iI1driQX+rieBI4R7YocoXowfQKFGsIPgVgoPPqRQ+rLm2AM+JZTzL8RnqhVZJXAkEbBBC1cEOTEobhDDQDbruZMpoJSIlKIGyY7oIbM15LCzzu2eqU9PDT5kRVg+M+V3bhfsU+NNjPHamvVcXb8SWIvvdB8s41hx2EwG/JtYV/EGPscvyCHFp81hhzRoKNiw+VmCqoonJMDF9UyknnEfPgKLymc6n+DfZ51jwAwEElauZEdqkQTWhB2bHIkTHarAuYU/bkC3GfQEHHotsCyStKH6jOQT/PjHyNx79k5g1E/zhnhpIrZWuD04Qq9+G1nz6sRkWJGpkWCbUAWT2w6hnJ3XuJSztxeEoqjUS04/jPyRuWav+0cdB/HS2PJBN2O1y3i5knF/gaS2ThDcYOgHXxrZJ7H2I4lPSDd3K2Ysfo86OXksuMdpPjVXEnWy6VgxctTJbkCH7k+RES+i1W17Xw49tW1zAx9gCKAmWh6HtsPKONTEYC1XpEkFlYL2Skbq+EcyrHYwaNQAIuGrI4Wjlytv+MEFTmRjmKyxK8bQ9K5VpNqhX85yphl3Id9iTee/gexjj0nTTRk2PPwSfCaude3j16595GD2+Cu8qiIAH8+vRNJL18XhPFQd7tLgGS+XE0iUz1VGWLS/kbaTo4TSIW75kNRnxMG6FtgyxuDSCKYb71tUnDGH8nV6WVvaTKjcFRQR68J5herhYYfMI9PU9sQbyX7i9eHdbOxB25AFdZZV2cN2bHQ6GTfs2HYit2XHziNlx+qPNM3YkUhPZyr2a9MeBRs2ctmwM2HDurm5K1k6mg61IXvRfRikwbdK822FRmIjdQ9vlLi8Mi0lyh/99ViyKkVVRRCDbws83yLr8Rxv51jLDnQ5Ijw728TljalaVJxcYEOeB2YQlt6nZAY8HDqSIPFCLCRAo9ZhzULDauyggczdREy9AN05/KlqFUL4oXcq1gAHtA04n/LyVmmaaZrYwDuVvEc27I0WrmpJtnDFbAYVPzEIIy4nkEwg3K6QnnqJJuf9eZfuUp2R+gI0BGOcYIW044fI2yjCL4g4tzeC3bcS9ZQXxXtO6MNVItC86AWwQT/sMHoQZyJHC3dCT+s8S9L+4qaP/2utMRVxYjNr1vABUW4sJcYuCuGOUIkAjTtaU54t60QnyS5Vzi5wEyZwSQR1ypBMGSIiz1KPcbgkqFGTusbs0T9m1U588usLODDIBwbVnyoIJrpS7TC9WFk3QeHeQCzGotjVjDnEMTQwbsDawjWajQrqSaafSHPBx+li3hYZMxF7yNoYO3tb6WzJSWicFHlFMPqPiwVlnbTKNK9kDnRXunA0moXswgB7p0NPlHnE4iG3Fij8F9J02mNbnqhnpgfsT3zGtBd/rv2J443vaH+GKjOx2/4MlVPklvZnl22pbc9ui3CkbMLDtme33ahtzy6FXdqe0zvYnqOGOeh4R5hSSvkVyi05T1k/M9PwlBE1Nmw5UMWW4uyUWOGglhoofchI4ePELxAccArTK0whlKFuxkao0W9pabbR/2oE09aMyeiQuVeGf866BPmmIWmAS36I3tuMAyvw+hdy4D32qDQtZSbREoNYaVVna3lWLGR0U+peCgeeXq4KeQghglE8ZWOaej/ZNKSSEkncAGyX7TRRrCmN1lfNNGHr7r20Qfg9E5jRyJso023KpORnG8Zvt3HcbdU2jGPWojtw07cwgMOGJftZjeSA3aXEazKxch/6mBSJBd6S6WaF4jIxnRC2ISuw4Pp8UmUE9KFyaZ6GWW04reUGtaP0LBRN4KiZuNM2+G5jabuzfrSx7YhWSQtZm8QuvF3DZm1mcJD6YFYGaEKr9puttrHZdAA0jEtRf8kw+p+zoGH+VOB/8xh1pDhfatXWjOSviEaIYhOwZkzyEhoVClyCakl9jr1Yu5LQz/qP9EUl20x7adD2KoRWRsblXQ3lhJ2W5D05+h1mXqL2iDC+jI5AVe9A6cbIHMXTJR1g3gp6Z+710eeypcEaJp3qsCk9Oo2GDVN6fMCUHitTWn2jaUnPZKE3Tf3+2rCKwZoeOazpcKYiwtny/U3wGhXVDhv6ZG7EgrkAEmVq4RVAWb+k5JLBuNtQqi6GPHooOS4LPIzy0EmmpKvxQSWiNUKlrotfjyn91irB5ASk21WYgBykgkhIKCUKobCuBP5T6f9kyyx+QHZ89RyDvwFIFxTGhnnEkxfwKiyBcFVQOBfeqCQqVXA+JUzHFH1PELB+eSOIvZb3AqxzwIFuIJkIX4kUJ5643D56+vmzJrpVLWXTYzsyNqeHoVsFkyFbE27oPF6KNfDYstQLvZZitBv/TLNql2J6/swquvRgd5XfPCDLVjILTOfr4hqvgR6LIIzEkdlEgxCemuvdUQj8miJugmw4JOetorDVNhpNRtmktAscMugFqwzum3K5UrmGPH+8VHZLwuKJ21Os1t6gD/BwwsAA8enHcbAq08svj47/CWn4Lku+nMzHR0/Mk0hOmOBqlyHyOX7ijEuHEbrRpJ61zxIby4e6TbETpbBNDpprI8u8+vnmmkwZuYu5Nuqwi0xzbWTrKdb1tOemti/qly392XLSouxATqwZ5G/soJUxBIcoYBxzhTnjVSHpkJgvGTnwfEhrrXZJY7Gl4cqff7GQTPj5QjLhrUMylpNwb3gmNGqfOe06Y1mVvUWkxKkSIu7PaF1kZOqmSbv2k9RHLZVWYU1dibxrBfTmGjUS1YMCnWzXRnTBqVHaSpK9vpYuLvxRBN4R+JhlDrqwldFuYj+FlnRn1e0zKVYg126jWE3COypWQ0OxEt9oKFbhTIUokKKEw2SA3dgVnJg6ghNPgfA38HaXXjU5gW8+3qrMwa8p9FAZbnpW5AynMnEH6Lg7SpKwtH/gXa1APT7eova9VaUOHyBmRJZ34RzjOo3X5ihwgfYEDAtj56LomJZhKvkNJwFj5cKhLkbVD67gAsZiDjVnFJO3fNucr3SPS4QaWfuUN4xAdjF7U2chJ2ue1qQtCMKoq/6B7c0XebZUHPPyMluye5mczg+oxgCV/qNik1IhkNaNk7o9PV1GIWWoceHwYEZJ8iYF129cb6niFjmuClL0kjTG3EcKFjlW1lZZVVqoO1jFUEsqrKN0VxzX6fo9mZ8qY2ePK1Y+8nk9scNP8MQOb+GJlRJJ1dZoxmbEFdW8gIYqGSHD5E4lSjvED1CsS/wMT/rRMAhPsMJt2LTr9oZIZyfhfGbIH/ERB9K3ZdjFWqKAIJq47DpZPhdLC/8+/tApeubapDujjJTKqNCmKmfJFK0boRnvVImCjYC1/3qMNhn/fIZxv2UJagByRaZDh+zziPmvllGyopRfq5YsRsMwKVQTRYcgJTye7tEbs9orD1fxu7S0SjlapIShpMANRnFIS8quVguuZCycSHIGWCKoj1xD0MLGKmoDaAuP5YgGNeBD8HNWmmUF2HOYWEPKS7wiT19/BSZWZRWGEEYug6hMvyh6bNM8rw6EncJhpMJO473GhzzX41uYH+PPbH6MP8H8GN/C/HDjGc3gDn/3wlScLXCcdDPbZX1BM6AwCvATqnW2B196nTvMhKiDvp8FudWoPtBQiDncgEa+mbqO8OGG/xYL9+Q3jRftVM9WMthGK+xDNVxkEK+NrDGkncDn9chbyCtrqfeUfUL+kSr7S7rXgGy4eju0ZpHaRblhT2Vql/DCLJQIq1haNQyBT/ShtsFGvU6aGKWRPi/4iC7WcffFqvX68WnUxB4d0uunxr06dt6reEFyScd11d/gBQk36dR1k8pOGFTyruMenQ5hcqyYVbYFbO8HjSEg4KY+G8uipXixKtOPWyhgyWeqtveQ+i/AXsW7JCt6iJIgX2RaLwdf2Dq6OQUOoyFyYQXbyr7wMu3z4O0Kr7Y7DqwPrIHEEyD8QiVQeqJKDRcCNPVTWlCBM1EgRv2RrImgUT7Fa/lJSQJNNVQCrqgS1Q1f+nCZlnUdX/U0rZg2gpqUZIgUQcljfQwX154ydcGgmVYphkpYxCVy0CZYibLUOCO46qQ7JUFWBsCF830t5lDViTA244Rpco0Gt99vPBnJfJQuCIGdjtLlHDJTPrqC+WaeQPhZrYNIuW7ukicQHrQOdPLorfMEQneQuqsonkJwIMBRpPBUQnslplRptGtgScolYVc7+1dke4ttsaFP7RDU+pJwqkojMz5tYS1ERW5WPTG3VVTssa5DIY4d/A6WfR1gu6EyLYGd285NsyagUR+fAAtXnIll5LNTBpysoEpB+Y4y0wOjdnLlqAPTPHl76oWFnSrM3FK8njU8cc2Ka04VZmSoDEaShF7NtsQqeuyEYeAoTl9jRCKruF0XZV3oklvpEu2y806HrX3l4zJEtVAqgxCDCF2umM3VVSNLcDHT6Aii7NFQc61hinK5inM0DPNzh/InSoG3/fBOpWIQvJZoRlkBQObWtypfL4qPslKFRGvThUV3TJkSGhQlPY2Cpk9PlLR685oK7fKiLWgg9SwhqglchLzTuH9DnRo36FODoFQeWobn5dXq1IJIet9GC5pEd9GCZuPZ2EBgi280taCh0ILWrNyADjTbpwP96fWrly+7dKB5ZCOs6WEFqBbk41LprrrbXBC5eo9OQvM3TH+/hrP26/EwsPom1rUUXhNeLRdTaAKJVBC2sWYy2mSt6QADhXkD10v6zAKohxmGWj8Eo/4y/lCU6CM+e3oBvxR5o5YeaGCUd8tGC4G8GzOoZNsNkXavXYn4laxmYO8aY72ySuge4D17FpgKRllOo/K/gwCikoZEoDVJYQZj0RQSCFx0tmaG/tURTT0ZhtHRk+aMJPhAnO+OoOp4HLFuNbwFunV4C3Tr8DOiW4OnShSJooq1Ir1Ub0gIChnFMDlpYQ8/ARc7vAUuVicLO50O+LNTvNulPSqrkp95cWo+1+3rgBWTgqyQ9R905KpyC1rayk5BO+xHEQra0fx0OL+LoD0ZTrW5qb7RJWg/5qDPkKA96YgffVWCmQa0ewl7b/db7BC8oxFMVbPETgYOiILWaOTZEIZIq51avCQlZs3H7kLKGmWpKjgG4dFF6VAp79s52Epa0764inVq2aGfFdV7BsE3nBHJFYgTbGkoRYhrqHaZVXHlWxgS6bpUK+0FnBvSNPBcEmEUTqUPsyvVlCrPCoLz7llFeW2vTdOTZW+7KIgAlCPgiLAouWVP1TiSrKZaipDQ/B9gZ4b3RALh1hYv3kY5pbwWE0ZNshbpZmJu9al3gmBZ4VuA6HKcSeynOIg6IyvjfjQP4OBMorYDKNp7Ik9OIsMBFLnCKiAPrpjixAlWDRVs7PljV7tOR3vJOzTtdHSVhKXM5s6uj7qpZDh/dKipZOckunpJIqH/Gew1MjcXtkS5Yw/JycEektSmFpu8thp3iqfwoUlTGo4dfTLV80xfTLOJ4mWDvg7Kz4E+Lz7WmMtF4eLWwKKbLMIV4w1b6DdAHor5fuAqSyg8ss0OIbHy+HKbMK60MHBs7ah5l9yKoLMmQX9sd+Dkzr/Rnl6offF4H81xyb3NKwdH6GxGqkpdkkFvsPWtyR6GsPZztBbXxSblWPwqrqqcq3LQ8MIpGdMnqfyt2Av2npEOjHnFWO9SUqAVDSCZg9U94OC3NgIlTTg9cMioc+sdd2octlkfP6FUlHfUmTVNuKHtj75nqu+ZKq0v3zPV90z1PVN9z1SX1FXvMYV8z9SGH9v3TPU9U33PVN8z1fdM9T1Tfc9U3zOVU/N9z1TfM9X3TPU9U33PVN8z1fdM9T1TXQP6nqmZ75nqe6bagrz2PVN9z1TfM9X3TPU9Uw1u9j1Tfc9Us7Cf75ka+56pvmeq75nqe6b6nqmp75nqe6b6nqm+Z6rvmep7pvqeqb5nqnrI90wNfM9U3zN15Xum+p6pvmeq75m68j1Tfc9U3zP1ke+Z6num+p6pvmdq5num+p6pvmeq75nqfkeYUkr59T1TY98z1fdM9T1TrcQd3zM19z1Tfc9U3zPV90z1PVN9z1TfM9X3TPU9U33PVN8zVSlWvmeq75nqe6Y2g1W+Z6rvmep7pvqeqb5nqu+Z6num+p6pvmeq75nqe6b6nqm+Z6p8xvdM9T1Tfc9U3zPV90z1PVN9z9TGDHzPVN8z1fdM9T1Tfc/UpoHnkgi+Z+o/Vs/UHzHEOwmHoXIKwTezRMaErZorC3lr2MA6S6F4Js12RxQGRr5gfSRbMvHE7HtcWbrVUAk/WEk2JVvpnaDMNGTKVCZprrd9oYIes6JfHSOJj4cn9EwfSzOFoGgOtpsrISxJF+BGj5QoyNhf+YcT7EeJSZ+1bt/ZQRVXj9k70MbdZDY62GT25NHBJrOds/gbdJkd37LL7MRB071tZieORQWf3Gd2tqfPLI38yzSaDZs1k25F0+ktGs1GRK/RrRvNSh5udZod3brTrMnct281O4Ez9505TK0ERHsXxM1IgYDWrF7LRrTSYiH/L3egFRX80KYlp6281mURPYLbN9FDnV1pp79IV9rh3brSwgdcrZlvtasjV5Pmz7CZoFN+ps38HHvoOnGT4SGBOv+EE3nysxsKR76hsG8o7BsK+4bCGifsGwr7hsK+oTC/5RsKi/irbyjsGwpvfENh31DYAoD7hsK+obBvKOwbCvuGwr6hsG8o7BsK+4bCT3xDYd9Q2DcU9g2FfUNh31DYNxT2DYV9Q+FGl13fUNg3FPYNhX1DYd9Q2DcU9g2FfUNh31DYNxT2DYV9Q2HfUNgXR/HFUXxxFF8cxRdH8cVRfHEUXxzlH644Cv0fLh2XGx5szFManv7rjzTJVVytaCbw0Hg4Cefj+eV0NL0cT+OTxXI8Gk1mw/FyvhwlccQZirBmKmuQ1irtkxcb47/nVubxOFQP94VmT4mLcNsmrLqJfvCyFWYjZfGC3w36ylCyr5PG27hSkefbl8PM1Cg2wUMzI6zPtQJBfpNyOWbl8t379KZ6p4+NzFkeTcycZf3uscguPaaEqmM5IyH/32EMx0i8w5xkzo6jzLExZo5Fk3A8HLYSuEHZZVdDg0Tw96fq765EbVjuGZ8vTsvR8pe7ZVJ2Djsxio0uS+3O1B53rNqdrR0dD8fHPDbna7uStaNmsnY0GU4pF9qVsW2QwZGlfYgY2EoQG4vKBQvBY4pFAgjrwuHaSjYib5k7BXi0P8M7mg0nBzO87RX8rKzuSeTkbjvncXQyn89ul9gNQkvQfl82dziRK+h9cg63I4EevhDOB5NPWeF8OIxum2Y9mmph5c6u1tzXysTVYkalVffsVFybOX8OPYAI0WR/7jLw2/jTyDW/a/pypC+E21IrOlHU+iWJFIb7s4SBSKNPI1Irdf/OicKTrkThQ2JsOv8sYuzGaYbOh5EqGrNXubYVY+kOdarfXfizxvzhcsdGvnb3GLNyDSWYL+NtrLI410ZnATkMAUVlQEcnsV5zVgSGiIROiVZbyoBxrtWFHZJAn9dqb2iVsY4bMbMtR2FY988uGA37DHFTaSnfFyl6zfSwjC7dXRkvb0RrUbbB9Awqq1Ez39XW5skvTFq2drttnAwEaVPC7jxjrURgkMnhUepkTWbJRk8ZB3DR6C909u2L54RPvCpNYyI0UPL70cBGH1AFd6Y54sjtFjOGUSKy9DpHtsobqYnAeWWUBWNfTVbFUnI6Jt4sLz1UOICSas9ZPRp67eHaXniaNPBO3UcriAZ2mhd0LLvMi+G8H54EwymKoqjZWcat7RomRhiezMwy1OJDjjLU9LaS7l2eVixNQZEokUNRdhWbmI3NamAik0xEwfA/RTxLBslV/58mEXuqDSvBy2gI4kEuEkbl/uwZCV9LViMe8YZdqeiwZDaoVF9JLUtJsXdKzihULQPsPqMa+Ybdisd6WtSQzPJumMeY1xASjt5wdRheOv1EaLKza5CRXYDrvL4hBJqZm6vrYtkGe5sNqQrWpNPGDfshV8FyMOHsEBPORvPQbB45cbn+I61vMG+IxpElMWPU1TXS8PsRXTq9/4odCQWLhNLpu6JWRitVQKEancwxQ+tegLRazlZjlEih9SLDM9TCXJiyxOAT6SjdwyjSwdkI+zYL8rO80/NS+YMHWHFkqw6OJyL9TNT9TGTrDs5nQlNDaB82tSH4sLq2Go48+w6n6EimWjSjPOAt1a+bqUiHfH+hEwDaLoVnexTRMc4jN4rfGWUeCInRYkHc4Im17lDwhHm2Pwo4rFZkzHXwm8/TdRE8F2cyLeUYGk5PIZtlkQgx88BQjx+4Jcaeaysc9ocnAZzEyRDO410lRjgdTSaGa8x5aWFPtKKQZ5gKjlSdLWZRvrSERfAsrbvihcL4aN0IsiRrNBj3F6JHCMLpzPOMFS6vKcM2BrbbaLWh0bseSxOq7spyzOiOY+o3rdgIaMcE71MZ48LxEtQpaEaxrA3ULABp0kgzhGP7p7j9SII9ftFwindGND4dN3pSTcJDHBBNp/PxyGAB+albc4GrMx5O7iVmmNNhU5lAXb4l0M1eY7QRY55yZhp2rlNrjFJLIu+IkiyU8w3T2zsihJOZKug5FZaFIRiFymttilG9joNUZuhk2o77aclpaNhTh3Ki9ZlRz7hexj2t2USG2cByX43Xuhz0cJF8xgImGSEHchI0JLwauFsBkrdjaBEucetREyHqzIdiqiN7HUgfj5nsiG+wpSiTnCm2IXJ2HUxkBE6opoaZIyHGP8PulgRB199oT914iv228tG2Ctr5aKvdk6THRNOjEybmmK58p3V1kzMZTHI0MrlRMUIjjR49LX5UM2krydbvqnFut74wkov5degulnvjgPLSoX6A+KmpaogKaCZ4bbOFclgDsVvaNjUQhQaSlc6X2tQV+3DGXgbB7VaVclkNmIqfk0cDnRvGiRkO2qFbqvteLMCq2xDqEuclnzXdQDF5a9YpuTSoQDRl1Lhze9T9KaVtdVPBraYm0a0VtdQrbVSqpJl/efWWEbbKs4doRsZ+GNm/0q6X8XyX00DFR88lWACpWmI6TEph6R4Yq1fxX2SFfJ6Nmpy+YASGucN7MN3fvyrCS3g4Ow2nd/YeTEfjE8Nwm7qbWME4l1Ie9jN9qYr6xdEkHM3nrfAXTHdJzlQ7Pnh6hLdN141MjSKxAwL55NgJwN4XxO4QfgNLBtrV5vh+gf9vU/dTiYuSrRScQbHo7kExXEt3SGz86C4hMUUaR0BsP4HQzn3BaZiMZuoRMRj+kYpsuT1EccTA5pO97vZwMj0cAzMn/beJgDl8+c4IWMSk3hv/GvHsP3f0azz75OhXeOvo1/hQ9EsyWiv2NTkY+zL58OdGvoYHgzqfGPm6Y/VXLl7tjHx1UQpRq+641+ciEJbGHf9CQa/Jzw56TTur4w754IC2TDInEVjJX1B2teyr+UR5cGUC8b7Y18ipwaj2puxblY9GtxiuGciQNRctvcRUYqnoGLuq8mxRxphAwTEc0CU2wdcXb14HoIFtdyqaJkwIVqTIc05bZoZnZKdVu2SM+tGC4emq/0usWoL3KDvchR++qcxqL0FP4yW1ykXpZEWp4XE2cK/ZAVTx3SnV8KT7vaJWOxv6XnAh3RcCj5wxkIyTM/Cd16hNyZJa2HAo2yAizkgRG6iygKroEv3pbJUu3wuEGimucZIVMK+6liWzcCayEhLFHxoRU+GCb/l2Fw2Eo7Qj2BWcblYIENQ1+9DQtMp1sYLbY4CbAIjLdsiprBEtWhg1e2M0DRLXyC1XEO14A9ZqsbNhetDLS1fgjx35IqJbNuwXGV7W50I4brWhEzkBiqCJg0osfBKqs6xxBsyosY7yWJVwkNGoMdXZ+TnN/3fnVHVZhZZAM8eaz5l0pn33ijk53ty0dlMiiwVZTCEh7QEza36HZF8XRb3Kb5qVO61iSXxGEio4GICsjLci69Ws5oMCoV0uJ+ZCvNkyeAs2PALz+CXXk2h5UelGekLnRjme3RipR8Kt+GBTBKzWPmCxzP8QczwwBgsyocYzkhnLwWEN9fNznRXxL2kJkjBgBCtq9tawMjEDSIinARa96qPiyXIh28AX2lSlEjuxkUUtnFpWTSCV3Gon/myKTX+R1nEjGEwBFzFMM0Ku2121IRMWwWzRQjEFfehEHk+j8057RDgAaAFRxVFZPrE1bqSvG7OZts3cOsggxYf5Hcb7R4OPor8b1R6TOfNlis8hqa3Ax62ikWTWjvZkIoX9cBaEE0R3tTKRDpu183lkBsVH7mSkoTANLoX20k+F9tIVHBd2gpKbHXoOospgz2DfbwiUsSzyXFcRNYLbzvjDZKpbwk0cglQK44bTQ7lwbW50QNibjIXlmgS6O5YO6WXD72jzlK4QKjUjbGXOaUqm80VH5Fxt9/bEr50MQwTpRFGc9KNhEJ6cTuankzszzMl8Mre7q7lC2Lj/xDBLtf9dkWsPo/Awir8HjMIVGfUwCg+j8DCKjoDBPzKMwhVA9zCKfzQYxcTDKDyMwsMoPIzCwyg8jMLDKP7OMIpZC0YBU/8gLTbjioY/7zPk0K/wnPNibEVGuguN2tiXefqR+16gJiR9stclYyzgRLgTi0d3wlCEx2F0TAvpBlGMHt0FRKEJ40BRHCBPODsRD8gyTHbokU51DMdTKqOCbOQvwYpBKyAoVmTC+lio9nCVaK7jla6fyB5WKpjFRXMk8WNRCVG39cOXRH1l80G7seMnoDemo8Mtqi1a/W3QG46gtBO9MRJ7vBe+MRbz/xXhN1rdhDvxG5ND+A3F4y0Ax/QggMM6Ar9aBIcjmf0AgmPageDopFU064JwfDYS/ZIYDkcf98+VuHyCpdX2+gT/C8vKphk5OcHL3Dbt9sE7jE48h+Edym5rtLp4TY3wrJBhT/bBwwBulWJpTG2oNk26Z2zcut8wBmWtTXzNMvi+TastaF5Yd/mqzBIRle1h4dR0kyDtqRp1JaOV9neE4kDhcgPoIY2cr6gtT1cdJCc6YqKdaVi9FX6+4kp1QowrHbPUE6/yLJH51NTsydEU5U28xQBvQSFkGVzQai5nbZMPgqoJyWBKHORxiRWrlRVAqdtWdIImyxndpifKMLsqFxupmkm5KEO0NVt22J7IQ1TDSmcjGzDRrk41UmCFAw+1u65K3xvsQ6gcFiNh7ghfzkbUPDNTrhWEwu5GgFruZV5cN3BBGsXUzxJRT1YgL1ru/rpoc2MDkeMIEtAuM7e063kFjoJeTK4bsN8+BqvsapXD/8PN6omya2bBAgNOwtHibtRI2Ggddqn6rnD3dxHJlYZkEyplWL6NDTVRAm3TWLXPZs+2Oz+fqp/LVs4yTb9hOJs9oV0VBXdOjm9ge3RZcOmZQk+rOLrC4a587UZNVwZx/PBn6i5oNp7CQbbZ8j0SamNABJm6Zk1bAZsoRFgDS9vxDuiG6ubnrJoO3NFGWk5kJBF2hnt9ttEjoQEDohroMrYKjF6RbUV9viUDMCVU/Wq1pNbsk7LY9vEiF97porSac/OIZqMF+u4ScW4Mc+MncNZmHWTiJKNsNHWoDVQTFVHEbzoY0rRl22mSAFTiMPvoIEFjvwXTH9wgzZxPRYVoaz3Eg05OM0sFS8Z04HoajQj1IdN992xUolnL/unvnv4JZXa20QUSqZyd8XHmYrsdp/AmPj17yWWSLepzRXna+kWR3ADlmyqQ4DasOMKgSG6mq0p3k0c1u2z2scsYxPgC1KWsWpnsje4Ru8+5KECIcoyKyXchogxg23Op15WgN8RGsLANAsNmMH2x49r9Z3Xju8XOyrloKAxV7VVtQ6VL1gJbFexQYvjjKttKYKnw7TeVTdG7vapBjVkjYjAR4Iq+wmuJ8ruoSWaVdJ/NVasyFlVNTqH9f4UgtA3YZy8+glpS6miiuhqMjiLNSpcvgFGJmG8aZcnbNTFb2sSgLQdN8GeLCPRXxpRQtXdxFFUmTXs/WC1SDc74Gsb6pKpBlFUHW/UCajHCmYFlY8XU6rqjg624VCydDX+hPzQKeMuZZBuYyavumSAyC85Bgn1OqbkvIV9EjwqQQ7u8bvCz6o8KQkNzEp3LWtss9isMZTTbXQvc7/X2Q5+0H6EEVGI5zQEi1HIVXWSHZh6jIf/FzSWlim47HOMJx1JAEvEJ86kqDqMLwUIKP/0N9RKssa7n3JzSEaL7W8xzpOOfwf9Qq0PliIq//0/3NqHEfskS27VJeB+7ZG8sS7vj5M35fScqVrckaU293NHbitWiRDne1lOvnlN7Eo4A081pDv6cmgxIO3OVwYHaNBpvPhT/W9Ux6xvcCXHDPeArbMjzRWu+zalhq1RVUZXbYK9SUn2s6QgDU4JrxZrSj8u03NZ6N9orUD1EsZr9rtR1xsQnGw1biCNIA2vAa0nyZJe6GBf1LqR22sUG2+EhY+HdtTXaCvH+U8+tJK0RARhg9d74A/wnLVVM4nEcrMr08suj43/afjmaRCdHTzQqYFPsBJD+8XH8pAWhZclIyu3vYGB2Y0hNuNbFxPhYGGgmKtoV58HS7MNiQHRbUFq7yv+38bWZuMFdSpyS1u5oKmGhZCWCppdjYVRR/0xeW+YbfGQFphp9L+yKSBpEVurQafNQwcJZpZZ3M2ZXyHtm3RRDRjKCQCay+KO8jH/JtvKWEHqH3sqCt5ID+q5jysKT+J8Go8Yk5L2jdQMnbndbu8XcGlk+/Qg6TPD81R8r0ZGUmU2oR7JC3A1xFk4J+2nq1jLmSL/J60eLMjimRuXxpRCja0n2Jsd/MKU9cJhViC4DptlkBHWAY0W6CU2FNKx2t+/Wjqp2FdeUgGKepwlTxZqOLND9imLKgopxpYKNMpOGqWLdtfFyJXNoyZ22LdO+tK6o4RCKiUUKUotlod1TohtZ3lCb3xaogIroaFc9t1FLR+Gi0Po6Ya+24TgBVZm7QBs2vmMUewQ+LyJfmFt1B1Tw1z40dGyEad1YTuu6ALIRQyDVK3IXYKtW6lfSmk7r5co69s1OLHxItanIwbCeQr7B5m64350pHaztaWWk0ET+8z9MyYqBvCz5MhxGs6MnUtNEmfqf/9ESA5xzY7IORlxrMCjkAhJRmv4hY4rp5iZjI2O9hQBB2ZrcKXWa33zRHr8FfW4/cliFVaqP4BqYUZ69T909OWVBQPGOY06DbcElGJkTjWLcVmeW8goMA+q2jQ3AiRB067flt4DWkgOciSmAIdJN+EAcxgdwI2WbTbtNqp1gscX+k8tDeRbT7jwLXXxwejoa3xV+OBraUW9XlsUJVjc34Ga+6qCHy/9q4PK+6qCHy3u4vIfL+6qDHi7vqw56uLyHy3u4vIfLe7i8h8v/V4DLEza8CZc3+5xZl7TdUczpXIC/cdlBYM4MFKXrdMF3cFcvRSdYXrSW3ZUgucyuzxfseBAYNy44J9su2b6GnpKVz4qiruoy3gbUqoS2UyL8nKD8rh5newobSvu4E5Y/fNSA5Q8ftRD5BGYOHa2YnOj80AFdvhsY+QDsXYCR9+PeO2fRhYFHFPG58QMf/E3B9bhuPhEL72jd1MDCc9u/Bnyc/9jE+c49ztfjfD3O1+N8Pc7X43w9ztfjfD3O1+N8Pc7X43w9ztfjfD3O1+N8Pc7X43w9ztfjfD3O1+N8Pc7X43z/ljhf3y/G94vx/WJ8vxjfL8b3i3GP4fvFFL5fzH/FfjHOTBLfL8b3i2n1i3GlEcAWspzo0oRhRt8WIPRjlibyQtMR68bdpjPdaP+l7ePkoPkwkhpx1NJ22yqs0m1k/LkdFI6s29dKFrLnDzyQJUqLt7QTEVakmGS85ekgJMkM0pv3Onn2gGWEA4GQCdoRWCmfkXLm4C2HVzx5U5TuGwp0tlRH7ZNj5wARJK8KCDIIFpx4n5XvZ1lD68MY3xKshnh5Y0Wg9Qw4ZC6XwRgUa/PkF0zsMytKoAAxvsAK/ZFJq0EK3dlMwl1CKrPAGGlAfkNLs8EHhFKgKBxHG0iqNO86rbmduZTCNmqBLjUFV9DySo3WNKLonmJJ1DmypRee6WwLE+LSzmuTA0gngoKg25BcdAtmOnmm1x6ulYIqLleB9+WBOy6+PQlR2rB3pFAevvjCk5l58XWkRGESJb7dj4WQ6siDgakLWFpX6gv86WmQlDH7lxD1IOA1PXbbxyq3V2yLMiP0VuzJq5W2vb56VNpSC0CnI3zkhTUDwxakia6cW6bEaQHMJr0zyNDgwD0Tazm/HDqTqXd2XoPRgWtwfjoMT8OTBoB1eDCbajidT0fWPRg5+AemlEu26Go44jPAfQb43yMDfOozwLsZxWeAd+tMPgP8Hy8DfOYzwH0G+OmJzwD3GeA+A9xngPsMcJ8B7jPA/z4Z4HaityPF+GC6tzuxOBzPnSnAjR4++xOLG9/+27TUOrllSy2j4dS+plpTo2HS522rNRt/clut0S3aatEqR7NDbbUM3mk11jo52FirwVo/s7VWOJ4eYrpPaK01ncH/+dmNo3xCORHcJ5T7hHKfUO4Tyn1CuU8o9wnlPqHcJ5T7hHKfUO4Tyn1CuU8o9wnlPqHcJ5T7hHKfUO4Tyn1CeVOj9wnlPqHcJ5T7hPKVTyj3CeU+odwnlPuEcp9Q7hPKH/mEcp9Q7hPKfUK5Tyj3CeVthK9PKBdT9wnlPqHcJ5T7hHKfUO4Tyn1CufG6Tyj3CeU+odwnlNOCfUK5Tyj3CeU+odwnlPuEcp9Q/mktxX9kx5SJ1tF9lmHKq7ha0bzgofEyiRZJEs8ms2U6XEbhOF2OklmSxotkMZudiBx1UCiOQDTV7zBUVaFbKkurd2z3YsptOA5PTsLZaDh79OP/BzLcHdE=', 'yes') ;
INSERT INTO `yl_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(124, 'wpcf-survey-2014-09', '1419500727', 'yes'),
(125, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.0.3";}', 'yes'),
(132, 'wpcf-custom-types', 'a:4:{s:8:"voor-wie";a:20:{s:14:"wpcf-post-type";s:8:"voor-wie";s:6:"labels";a:12:{s:4:"name";s:8:"Voor Wie";s:13:"singular_name";s:8:"For Whom";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:8:"voor-wie";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:9:"thumbnail";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}s:10:"drijfveren";a:20:{s:14:"wpcf-post-type";s:10:"drijfveren";s:6:"labels";a:12:{s:4:"name";s:11:"Drijfverens";s:13:"singular_name";s:10:"Drijfveren";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:10:"drijfveren";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:9:"thumbnail";s:1:"1";s:15:"page-attributes";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}s:12:"over-yelloow";a:21:{s:14:"wpcf-post-type";s:12:"over-yelloow";s:6:"labels";a:12:{s:4:"name";s:13:"Over Yelloows";s:13:"singular_name";s:12:"Over Yelloow";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:12:"over-yelloow";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:10:"taxonomies";a:1:{s:16:"over-yelloow-tax";s:1:"1";}s:8:"supports";a:4:{s:5:"title";s:1:"1";s:6:"editor";s:1:"1";s:9:"thumbnail";s:1:"1";s:15:"page-attributes";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";}s:20:"content-introduction";a:20:{s:6:"labels";a:12:{s:4:"name";s:21:"Content Introductions";s:13:"singular_name";s:20:"Content Introduction";s:7:"add_new";s:7:"Add New";s:12:"add_new_item";s:10:"Add New %s";s:9:"edit_item";s:7:"Edit %s";s:8:"new_item";s:6:"New %s";s:9:"view_item";s:7:"View %s";s:12:"search_items";s:9:"Search %s";s:9:"not_found";s:11:"No %s found";s:18:"not_found_in_trash";s:20:"No %s found in Trash";s:17:"parent_item_colon";s:11:"Parent text";s:9:"all_items";s:9:"All items";}s:4:"slug";s:20:"content-introduction";s:11:"description";s:0:"";s:4:"icon";s:10:"admin-post";s:6:"public";s:6:"public";s:13:"menu_position";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:1:{s:5:"title";s:1:"1";}s:7:"rewrite";a:6:{s:7:"enabled";s:1:"1";s:6:"custom";s:6:"normal";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:5:"feeds";s:1:"1";s:5:"pages";s:1:"1";}s:11:"has_archive";s:1:"1";s:12:"show_in_menu";s:1:"1";s:17:"show_in_menu_page";s:0:"";s:7:"show_ui";s:1:"1";s:18:"publicly_queryable";s:1:"1";s:10:"can_export";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:16:"permalink_epmask";s:12:"EP_PERMALINK";s:14:"wpcf-post-type";N;}}', 'yes'),
(133, 'wpcf_post_relationship', 'a:0:{}', 'yes'),
(134, 'wpcf-custom-taxonomies', 'a:1:{s:16:"over-yelloow-tax";a:14:{s:8:"wpcf-tax";s:16:"over-yelloow-tax";s:6:"labels";a:15:{s:4:"name";s:23:"Over Yelloow Taxonomies";s:13:"singular_name";s:21:"Over Yelloow Taxonomy";s:12:"search_items";s:9:"Search %s";s:13:"popular_items";s:10:"Popular %s";s:9:"all_items";s:6:"All %s";s:11:"parent_item";s:9:"Parent %s";s:17:"parent_item_colon";s:10:"Parent %s:";s:9:"edit_item";s:7:"Edit %s";s:11:"update_item";s:9:"Update %s";s:12:"add_new_item";s:10:"Add New %s";s:13:"new_item_name";s:11:"New %s Name";s:26:"separate_items_with_commas";s:23:"Separate %s with commas";s:19:"add_or_remove_items";s:16:"Add or remove %s";s:21:"choose_from_most_used";s:28:"Choose from the most used %s";s:9:"menu_name";s:2:"%s";}s:4:"slug";s:16:"over-yelloow-tax";s:11:"description";s:0:"";s:6:"public";s:6:"public";s:8:"supports";a:1:{s:12:"over-yelloow";i:1;}s:12:"hierarchical";s:12:"hierarchical";s:7:"rewrite";a:4:{s:7:"enabled";s:1:"1";s:4:"slug";s:0:"";s:10:"with_front";s:1:"1";s:12:"hierarchical";s:1:"1";}s:7:"show_ui";s:1:"1";s:17:"show_in_nav_menus";s:1:"1";s:13:"show_tagcloud";s:1:"1";s:17:"query_var_enabled";s:1:"1";s:9:"query_var";s:0:"";s:21:"update_count_callback";s:0:"";}}', 'yes'),
(135, '_wpcf_promo_tabs', 'a:2:{s:8:"selected";i:3;s:4:"time";i:1418717901;}', 'yes'),
(136, 'wpcf-fields', 'a:7:{s:15:"button-voor-wie";a:8:{s:2:"id";s:15:"button-voor-wie";s:4:"slug";s:15:"button-voor-wie";s:4:"type";s:9:"textfield";s:4:"name";s:6:"Button";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:20:"wpcf-button-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:20:"button-text-voor-wie";a:8:{s:2:"id";s:20:"button-text-voor-wie";s:4:"slug";s:20:"button-text-voor-wie";s:4:"type";s:9:"textfield";s:4:"name";s:11:"Button Text";s:11:"description";s:0:"";s:4:"data";a:3:{s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:25:"wpcf-button-text-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:19:"button-url-voor-wie";a:8:{s:2:"id";s:19:"button-url-voor-wie";s:4:"slug";s:19:"button-url-voor-wie";s:4:"type";s:9:"textfield";s:4:"name";s:10:"Button URL";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:24:"wpcf-button-url-voor-wie";s:9:"meta_type";s:8:"postmeta";}s:4:"logo";a:8:{s:2:"id";s:4:"logo";s:4:"slug";s:4:"logo";s:4:"type";s:5:"image";s:4:"name";s:4:"Logo";s:11:"description";s:0:"";s:4:"data";a:4:{s:10:"repetitive";s:1:"1";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:9:"wpcf-logo";s:9:"meta_type";s:8:"postmeta";}s:5:"intro";a:8:{s:2:"id";s:5:"intro";s:4:"slug";s:5:"intro";s:4:"type";s:7:"wysiwyg";s:4:"name";s:5:"Intro";s:11:"description";s:16:"Intro one column";s:4:"data";a:3:{s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:10:"wpcf-intro";s:9:"meta_type";s:8:"postmeta";}s:17:"intro-left-column";a:8:{s:2:"id";s:17:"intro-left-column";s:4:"slug";s:17:"intro-left-column";s:4:"type";s:7:"wysiwyg";s:4:"name";s:17:"Intro Left Column";s:11:"description";s:0:"";s:4:"data";a:3:{s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:22:"wpcf-intro-left-column";s:9:"meta_type";s:8:"postmeta";}s:18:"intro-right-column";a:8:{s:2:"id";s:18:"intro-right-column";s:4:"slug";s:18:"intro-right-column";s:4:"type";s:9:"textfield";s:4:"name";s:18:"Intro Right Column";s:11:"description";s:20:"List in right column";s:4:"data";a:4:{s:10:"repetitive";s:1:"1";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:23:"wpcf-intro-right-column";s:9:"meta_type";s:8:"postmeta";}}', 'yes'),
(145, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418302567;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(146, 'current_theme', 'Yelloow', 'yes'),
(147, 'theme_mods_yelloow', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:5;}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(149, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1418302593;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(171, 'auto_updater.lock', '1418817285', 'no'),
(185, 'over-yelloow-tax_children', 'a:0:{}', 'yes'),
(207, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"advlist,menubar";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'),
(208, 'tadv_admin_settings', 'a:2:{s:7:"options";s:8:"no_autop";s:16:"disabled_plugins";s:0:"";}', 'yes'),
(209, 'tadv_version', '4000', 'yes'),
(213, 'rewrite_rules', 'a:179:{s:11:"voor-wie/?$";s:28:"index.php?post_type=voor-wie";s:41:"voor-wie/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=voor-wie&feed=$matches[1]";s:36:"voor-wie/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=voor-wie&feed=$matches[1]";s:28:"voor-wie/page/([0-9]{1,})/?$";s:46:"index.php?post_type=voor-wie&paged=$matches[1]";s:13:"drijfveren/?$";s:30:"index.php?post_type=drijfveren";s:43:"drijfveren/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=drijfveren&feed=$matches[1]";s:38:"drijfveren/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=drijfveren&feed=$matches[1]";s:30:"drijfveren/page/([0-9]{1,})/?$";s:48:"index.php?post_type=drijfveren&paged=$matches[1]";s:15:"over-yelloow/?$";s:32:"index.php?post_type=over-yelloow";s:45:"over-yelloow/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=over-yelloow&feed=$matches[1]";s:40:"over-yelloow/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=over-yelloow&feed=$matches[1]";s:32:"over-yelloow/page/([0-9]{1,})/?$";s:50:"index.php?post_type=over-yelloow&paged=$matches[1]";s:23:"content-introduction/?$";s:40:"index.php?post_type=content-introduction";s:53:"content-introduction/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=content-introduction&feed=$matches[1]";s:48:"content-introduction/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=content-introduction&feed=$matches[1]";s:40:"content-introduction/page/([0-9]{1,})/?$";s:58:"index.php?post_type=content-introduction&paged=$matches[1]";s:42:"wp-types-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"wp-types-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"wp-types-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"wp-types-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)/trackback/?$";s:41:"index.php?wp-types-group=$matches[1]&tb=1";s:43:"wp-types-group/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&paged=$matches[2]";s:50:"wp-types-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?wp-types-group=$matches[1]&cpage=$matches[2]";s:35:"wp-types-group/([^/]+)(/[0-9]+)?/?$";s:53:"index.php?wp-types-group=$matches[1]&page=$matches[2]";s:31:"wp-types-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"wp-types-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"wp-types-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"wp-types-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"wp-types-user-group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"wp-types-user-group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"wp-types-user-group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"wp-types-user-group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)/trackback/?$";s:46:"index.php?wp-types-user-group=$matches[1]&tb=1";s:48:"wp-types-user-group/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&paged=$matches[2]";s:55:"wp-types-user-group/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?wp-types-user-group=$matches[1]&cpage=$matches[2]";s:40:"wp-types-user-group/([^/]+)(/[0-9]+)?/?$";s:58:"index.php?wp-types-user-group=$matches[1]&page=$matches[2]";s:36:"wp-types-user-group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"wp-types-user-group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"wp-types-user-group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"wp-types-user-group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"over-yelloow-tax/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?over-yelloow-tax=$matches[1]&feed=$matches[2]";s:50:"over-yelloow-tax/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?over-yelloow-tax=$matches[1]&feed=$matches[2]";s:43:"over-yelloow-tax/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?over-yelloow-tax=$matches[1]&paged=$matches[2]";s:25:"over-yelloow-tax/(.+?)/?$";s:38:"index.php?over-yelloow-tax=$matches[1]";s:36:"voor-wie/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"voor-wie/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"voor-wie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"voor-wie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"voor-wie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"voor-wie/([^/]+)/trackback/?$";s:35:"index.php?voor-wie=$matches[1]&tb=1";s:49:"voor-wie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?voor-wie=$matches[1]&feed=$matches[2]";s:44:"voor-wie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?voor-wie=$matches[1]&feed=$matches[2]";s:37:"voor-wie/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?voor-wie=$matches[1]&paged=$matches[2]";s:44:"voor-wie/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?voor-wie=$matches[1]&cpage=$matches[2]";s:29:"voor-wie/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?voor-wie=$matches[1]&page=$matches[2]";s:25:"voor-wie/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"voor-wie/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"voor-wie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"voor-wie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"voor-wie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"drijfveren/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"drijfveren/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"drijfveren/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"drijfveren/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"drijfveren/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"drijfveren/([^/]+)/trackback/?$";s:37:"index.php?drijfveren=$matches[1]&tb=1";s:51:"drijfveren/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?drijfveren=$matches[1]&feed=$matches[2]";s:46:"drijfveren/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?drijfveren=$matches[1]&feed=$matches[2]";s:39:"drijfveren/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?drijfveren=$matches[1]&paged=$matches[2]";s:46:"drijfveren/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?drijfveren=$matches[1]&cpage=$matches[2]";s:31:"drijfveren/([^/]+)(/[0-9]+)?/?$";s:49:"index.php?drijfveren=$matches[1]&page=$matches[2]";s:27:"drijfveren/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"drijfveren/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"drijfveren/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"drijfveren/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"drijfveren/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"over-yelloow/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"over-yelloow/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"over-yelloow/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"over-yelloow/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"over-yelloow/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"over-yelloow/([^/]+)/trackback/?$";s:39:"index.php?over-yelloow=$matches[1]&tb=1";s:53:"over-yelloow/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?over-yelloow=$matches[1]&feed=$matches[2]";s:48:"over-yelloow/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?over-yelloow=$matches[1]&feed=$matches[2]";s:41:"over-yelloow/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?over-yelloow=$matches[1]&paged=$matches[2]";s:48:"over-yelloow/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?over-yelloow=$matches[1]&cpage=$matches[2]";s:33:"over-yelloow/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?over-yelloow=$matches[1]&page=$matches[2]";s:29:"over-yelloow/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"over-yelloow/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"over-yelloow/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"over-yelloow/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"over-yelloow/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"content-introduction/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"content-introduction/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"content-introduction/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"content-introduction/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"content-introduction/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"content-introduction/([^/]+)/trackback/?$";s:47:"index.php?content-introduction=$matches[1]&tb=1";s:61:"content-introduction/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?content-introduction=$matches[1]&feed=$matches[2]";s:56:"content-introduction/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?content-introduction=$matches[1]&feed=$matches[2]";s:49:"content-introduction/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?content-introduction=$matches[1]&paged=$matches[2]";s:56:"content-introduction/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?content-introduction=$matches[1]&cpage=$matches[2]";s:41:"content-introduction/([^/]+)(/[0-9]+)?/?$";s:59:"index.php?content-introduction=$matches[1]&page=$matches[2]";s:37:"content-introduction/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"content-introduction/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"content-introduction/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"content-introduction/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"content-introduction/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(217, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_postmeta`
#
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"[your-name] <admin@yelloow.id>";s:4:"body";s:167:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)";s:9:"recipient";s:16:"admin@yelloow.id";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"Yelloow <admin@yelloow.id>";s:4:"body";s:109:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: admin@yelloow.id";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:6:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 5, '_edit_last', '1'),
(9, 5, '_edit_lock', '1418733251:1'),
(10, 5, '_wp_page_template', 'default'),
(11, 7, '_edit_last', '1'),
(12, 7, '_edit_lock', '1418373791:1'),
(13, 8, '_edit_last', '1'),
(14, 8, '_edit_lock', '1418733573:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_edit_lock', '1418733567:1'),
(17, 10, '_wp_types_group_filters_association', 'any'),
(18, 10, '_wp_types_group_fields', ',button-text-voor-wie,button-url-voor-wie,'),
(19, 10, '_wp_types_group_post_types', ',voor-wie,'),
(20, 10, '_wp_types_group_terms', 'all'),
(21, 10, '_wp_types_group_admin_styles', ''),
(22, 10, '_wp_types_group_templates', 'all'),
(23, 10, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(24, 11, '_edit_last', '1'),
(25, 11, '_wp_page_template', 'default'),
(26, 11, '_edit_lock', '1418732892:1'),
(27, 13, '_edit_last', '1'),
(28, 13, '_edit_lock', '1418733408:1'),
(29, 13, '_wp_page_template', 'default'),
(30, 15, '_edit_last', '1'),
(31, 15, '_edit_lock', '1418733399:1'),
(32, 15, '_wp_page_template', 'default'),
(33, 17, '_edit_last', '1'),
(34, 17, '_edit_lock', '1418718589:1'),
(35, 18, '_edit_last', '1'),
(36, 18, '_edit_lock', '1418629917:1'),
(37, 19, '_edit_last', '1'),
(38, 19, '_edit_lock', '1418718702:1'),
(39, 20, '_edit_last', '1'),
(40, 20, '_edit_lock', '1418718712:1'),
(41, 21, '_edit_last', '1'),
(42, 21, '_edit_lock', '1418718867:1'),
(43, 22, '_edit_last', '1'),
(44, 22, '_edit_lock', '1418718875:1'),
(45, 23, '_wp_types_group_filters_association', 'any'),
(46, 23, '_wp_types_group_fields', ',logo,'),
(47, 23, '_wp_types_group_post_types', ',over-yelloow,'),
(48, 23, '_wp_types_group_terms', 'all'),
(49, 23, '_wp_types_group_admin_styles', ''),
(50, 23, '_wp_types_group_templates', 'all'),
(51, 23, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(52, 24, '_edit_last', '1'),
(53, 24, '_edit_lock', '1418733864:1'),
(55, 24, '_wpcf-logo-sort-order', 'a:6:{i:0;i:117;i:1;i:118;i:2;i:119;i:3;i:120;i:4;i:121;i:5;i:122;}'),
(56, 25, '_edit_last', '1'),
(57, 25, '_edit_lock', '1418793530:1'),
(58, 25, '_wp_page_template', 'default'),
(59, 28, '_form', '<div class="form-group">\n[text naam id:naam class:form-control placeholder "naam"]\n</div>\n\n<div class="form-group">\n[text naam-organisatie id:naam-organisatie class:form-control placeholder "naam organisatie"]\n</div>\n\n<div class="form-group">\n[text adres id:adres class:form-control placeholder "adres"]\n</div>\n\n<div class="form-group">\n[text plaats id:plaats class:form-control placeholder "plaats"]\n</div>\n\n<div class="form-group">\n<input type="text" class="form-control" id="phone" placeholder="telefoon">\n</div>\n\n<div class="form-group">\n[email email id:email class:form-control placeholder "email"]\n</div>\n\n<div class="form-group">\n[textarea opmerkingen id:opmerkingen class:form-control placeholder "opmerkingen, vragen, etc"]\n</div>\n\n[submit id:submit class:btn class:btn-turquoise class:center-block "Verzenden"]'),
(60, 28, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"[your-name] <admin@yelloow.id>";s:4:"body";s:167:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)";s:9:"recipient";s:16:"admin@yelloow.id";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(61, 28, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"Yelloow <admin@yelloow.id>";s:4:"body";s:109:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: admin@yelloow.id";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
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
(78, 7, 'wpcf-button-text-voor-wie', 'Meer Weten? Contacteer ons'),
(79, 7, 'wpcf-button-url-voor-wie', 'http://google.com'),
(80, 35, '_wp_attached_file', '2014/12/graves-chart.png'),
(81, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:767;s:6:"height";i:569;s:4:"file";s:24:"2014/12/graves-chart.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"graves-chart-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"graves-chart-300x222.png";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(82, 35, '_wp_attachment_image_alt', 'graves-chart'),
(83, 15, '_thumbnail_id', '35'),
(84, 37, '_edit_last', '1'),
(85, 37, '_edit_lock', '1418718652:1'),
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
(102, 39, '_wp_attachment_image_alt', 'groen') ;
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(103, 38, '_wp_attachment_image_alt', 'blauw'),
(104, 37, '_thumbnail_id', '42'),
(105, 44, '_wp_attached_file', '2014/12/logo-bpost.png'),
(106, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:161;s:6:"height";i:88;s:4:"file";s:22:"2014/12/logo-bpost.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"logo-bpost-150x88.png";s:5:"width";i:150;s:6:"height";i:88;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(107, 45, '_wp_attached_file', '2014/12/logo-casa.png'),
(108, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:106;s:6:"height";i:106;s:4:"file";s:21:"2014/12/logo-casa.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(109, 46, '_wp_attached_file', '2014/12/logo-cm.png'),
(110, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:111;s:6:"height";i:112;s:4:"file";s:19:"2014/12/logo-cm.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(111, 47, '_wp_attached_file', '2014/12/logo-oxfam.png'),
(112, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:110;s:6:"height";i:95;s:4:"file";s:22:"2014/12/logo-oxfam.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(113, 48, '_wp_attached_file', '2014/12/logo-square.png'),
(114, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:97;s:6:"height";i:97;s:4:"file";s:23:"2014/12/logo-square.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(115, 49, '_wp_attached_file', '2014/12/logo-an.png'),
(116, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:103;s:4:"file";s:19:"2014/12/logo-an.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(117, 24, 'wpcf-logo', 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-an.png'),
(118, 24, 'wpcf-logo', 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-cm.png'),
(119, 24, 'wpcf-logo', 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-square.png'),
(120, 24, 'wpcf-logo', 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-oxfam.png'),
(121, 24, 'wpcf-logo', 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-casa.png'),
(122, 24, 'wpcf-logo', 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-bpost.png'),
(123, 50, '_wp_attached_file', '2014/12/man.jpg'),
(124, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:867;s:4:"file";s:15:"2014/12/man.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"man-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"man-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"man-1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(125, 18, '_thumbnail_id', '50'),
(126, 18, 'wpcf-logo', ''),
(127, 18, '_wpcf-logo-sort-order', 'a:1:{i:0;i:126;}'),
(128, 51, '_wp_types_group_filters_association', 'any'),
(129, 51, '_wp_types_group_fields', ',intro,intro-left-column,intro-right-column,'),
(130, 51, '_wp_types_group_post_types', ',content-introduction,'),
(131, 51, '_wp_types_group_terms', 'all'),
(132, 51, '_wp_types_group_admin_styles', ''),
(133, 51, '_wp_types_group_templates', 'all'),
(134, 51, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(135, 52, '_edit_last', '1'),
(141, 52, '_wpcf-intro-right-column-sort-order', 'a:3:{i:0;i:155;i:1;i:156;i:2;i:157;}'),
(142, 52, '_edit_lock', '1418796778:1'),
(153, 52, 'wpcf-intro', '<h4>YELLOOW biedt ondersteuning bij selectie van medewerkers, coaching van jezelf en je bedrijf, trouble-shooting en trouble-advisering. YELLOOW legt de focus op de analyse van drijfveren en talenten van jezelf en je medewerkers.</h4>'),
(154, 52, 'wpcf-intro-left-column', '<p>Mensen met verschillende talenten, ieder met hun unieke “Black Box”, motiveren en goed laten samenwerken is de uitdaging voor een bedrijf. Weten dat ieder met een andere bril naar de wereld kijkt, is het uitgangspunt. Inzicht in je eigen kijk creëert kansen om medewerkers en teams beter te managen.</p>\r\n\r\n<p>YELLOOW helpt zicht krijgen op de processen die in een bedrijf spelen.</p>\r\n\r\n<p>Uw en onze analyse zijn het uitgangspunt.De kleurentheorie en –test zijn voor YELLOOW een hulpmiddel om tot een evenwichtige analyse te komen.</p>'),
(155, 52, 'wpcf-intro-right-column', 'MANAGERS & LEIDINGGEVENDEN'),
(156, 52, 'wpcf-intro-right-column', 'TEAMS'),
(157, 52, 'wpcf-intro-right-column', 'INDIVIDUELE PROFESSIONALS'),
(158, 9, 'wpcf-button-text-voor-wie', 'Meer Weten? Contacteer ons'),
(159, 9, 'wpcf-button-url-voor-wie', 'http://yelloow.be/beta/contact/'),
(160, 8, 'wpcf-button-text-voor-wie', 'Meer Weten? Contacteer ons'),
(161, 8, 'wpcf-button-url-voor-wie', 'http://yelloow.be/beta/contact/'),
(162, 17, '_thumbnail_id', '41'),
(163, 55, '_edit_last', '1'),
(164, 55, '_edit_lock', '1418718408:1'),
(165, 55, '_thumbnail_id', '38'),
(166, 56, '_edit_last', '1'),
(167, 56, '_edit_lock', '1418718466:1'),
(168, 56, '_thumbnail_id', '40'),
(169, 57, '_edit_last', '1'),
(170, 57, '_edit_lock', '1418718495:1'),
(171, 57, '_thumbnail_id', '39'),
(172, 58, '_edit_last', '1'),
(173, 58, '_edit_lock', '1418718531:1'),
(174, 59, '_wp_attached_file', '2014/12/brush-yellow.png'),
(175, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:48;s:4:"file";s:24:"2014/12/brush-yellow.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"brush-yellow-150x48.png";s:5:"width";i:150;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(176, 58, '_thumbnail_id', '59'),
(177, 60, '_edit_last', '1'),
(178, 60, '_edit_lock', '1418733708:1'),
(179, 60, '_thumbnail_id', '43'),
(180, 19, 'wpcf-logo', ''),
(181, 19, '_wpcf-logo-sort-order', 'a:1:{i:0;i:180;}'),
(182, 20, 'wpcf-logo', ''),
(183, 20, '_wpcf-logo-sort-order', 'a:1:{i:0;i:182;}'),
(184, 25, 'yelloow-map', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d628.1242106891026!2d4.189139199999994!3d50.9700064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c395054a00d8fd%3A0x36c09e2c3612bdd!2sMarktstraat+40%2C+1745+Opwijk%2C+Belgium!5e0!3m2!1sen!2s!4v1418278454230" width="800" height="600" frameborder="0" style="border:0"></iframe>'),
(248, 69, '_menu_item_type', 'custom'),
(249, 69, '_menu_item_menu_item_parent', '0'),
(250, 69, '_menu_item_object_id', '69'),
(251, 69, '_menu_item_object', 'custom'),
(252, 69, '_menu_item_target', ''),
(253, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 69, '_menu_item_xfn', ''),
(255, 69, '_menu_item_url', 'http://yelloow.be/beta/voor-wie/'),
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
(273, 71, '_menu_item_url', 'http://yelloow.be/beta/over-yelloow/'),
(275, 72, '_menu_item_type', 'post_type'),
(276, 72, '_menu_item_menu_item_parent', '0'),
(277, 72, '_menu_item_object_id', '25'),
(278, 72, '_menu_item_object', 'page'),
(279, 72, '_menu_item_target', ''),
(280, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 72, '_menu_item_xfn', ''),
(282, 72, '_menu_item_url', ''),
(284, 2, '_wp_trash_meta_status', 'publish') ;
INSERT INTO `yl_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(285, 2, '_wp_trash_meta_time', '1418739281') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_posts`
#
INSERT INTO `yl_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-12-11 09:38:45', '2014-12-11 09:38:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-12-11 09:38:45', '2014-12-11 09:38:45', '', 0, 'http://yelloow.be/beta/?p=1', 0, 'post', '', 1),
(2, 1, '2014-12-11 09:38:45', '2014-12-11 09:38:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://yelloow.be/beta/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2014-12-16 14:14:41', '2014-12-16 14:14:41', '', 0, 'http://yelloow.be/beta/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-12-11 09:40:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-12-11 09:40:29', '0000-00-00 00:00:00', '', 0, 'http://yelloow.be/beta/?p=3', 0, 'post', '', 0),
(4, 1, '2014-12-11 09:49:51', '2014-12-11 09:49:51', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <admin@yelloow.id>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)\nadmin@yelloow.id\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nYelloow <admin@yelloow.id>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)\n[your-email]\nReply-To: admin@yelloow.id\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2014-12-11 09:49:51', '2014-12-11 09:49:51', '', 0, 'http://yelloow.be/beta/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2014-12-11 10:49:23', '2014-12-11 10:49:23', 'Ieder mens heeft een “Black Box”: een set van onbewuste waarden en normen die bepaalt hoe hij zich gedraagt in een bepaalde situatie en hoe hij naar de wereld kijkt. Deze “Black Box” is voor iedereen verschillend en verklaart vele professionele en privé discussies en misverstanden.\r\n\r\nWe kijken elk met een gekleurde bril naar de wereld en interpreteren boodschappen van anderen met die bril.\r\n\r\n<strong>Om je "Black Box" te kennen zet YELLOOW een gevalideerde test in. Het resultaat is een profiel dat voor elk waardensysteem je kijk weergeeft.</strong>', 'Black Box', '', 'publish', 'open', 'open', '', 'black-box', '', '', '2014-12-11 10:49:23', '2014-12-11 10:49:23', '', 0, 'http://yelloow.be/beta/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-12-11 10:49:23', '2014-12-11 10:49:23', 'Ieder mens heeft een “Black Box”: een set van onbewuste waarden en normen die bepaalt hoe hij zich gedraagt in een bepaalde situatie en hoe hij naar de wereld kijkt. Deze “Black Box” is voor iedereen verschillend en verklaart vele professionele en privé discussies en misverstanden.\r\n\r\nWe kijken elk met een gekleurde bril naar de wereld en interpreteren boodschappen van anderen met die bril.\r\n\r\n<strong>Om je "Black Box" te kennen zet YELLOOW een gevalideerde test in. Het resultaat is een profiel dat voor elk waardensysteem je kijk weergeeft.</strong>', 'Black Box', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-12-11 10:49:23', '2014-12-11 10:49:23', '', 5, 'http://yelloow.be/beta/?p=6', 0, 'revision', '', 0),
(7, 1, '2014-12-11 10:52:11', '2014-12-11 10:52:11', 'Bij YELLOOW kan je als leidinggevende terecht voor ondersteuning bij doelgerichte rekrutering. YELLOOW helpt leidinggevenden inzicht te verwerven in hun eigen logica – hun persoonlijke ‘black box’ – en die van hun (kandidaat-)medewerkers bij :\r\n<ul>\r\n	<li>zelfkennis en zelfsturing</li>\r\n	<li>effectiever leiding geven</li>\r\n	<li>onderlinge samenwerking verbeteren</li>\r\n	<li>de talenten van elke medewerker tot z’n recht laten komen</li>\r\n</ul>', 'Leidinggevenden', '', 'publish', 'closed', 'closed', '', 'leidinggevenden', '', '', '2014-12-12 08:37:08', '2014-12-12 08:37:08', '', 0, 'http://yelloow.be/beta/?post_type=voor-wie&#038;p=7', 0, 'voor-wie', '', 0),
(8, 1, '2014-12-11 10:54:38', '2014-12-11 10:54:38', '<p>Voor een goede samenwerking is het soms noodzakelijk de balans binnen een groep bij te sturen. YELLOOW neemt de samenstelling van teams onder de loep.</p>\r\n<h4>Resultaat</h4>\r\n<ul>\r\n<li>Als manager krijg je een helder zicht op de sterke kanten én op de werkpunten van je team of afdeling binnen het bedrijf zodat je bewust in de juiste richting kan bijsturen.</li>\r\n<li>De teamleden zelf krijgen inzicht in hun eigen drijfveren en in die van hun teamleden. Met meer onderling begrip, vlottere communicatie en een betere samenwerking tot gevolg.</li>\r\n</ul>\r\n', 'Teams', '', 'publish', 'closed', 'closed', '', 'teams', '', '', '2014-12-16 08:14:52', '2014-12-16 08:14:52', '', 0, 'http://yelloow.be/beta/?post_type=voor-wie&#038;p=8', 0, 'voor-wie', '', 0),
(9, 1, '2014-12-11 10:55:03', '2014-12-11 10:55:03', '<p>Je vraagt je af of een job of functie aansluit bij wat je wil in je leven. Je kan soms wat hulp gebruiken bij de communicatie met je collega’s en leidinggevende.</p>\r\n<p>YELLOOW biedt een gevalideerde test aan die inzicht geeft in motivatie en drijfveren voor een job, in sterke kanten en communicatiestijl.</p>\r\n', 'Individuele professional', '', 'publish', 'closed', 'closed', '', 'individuele-professional', '', '', '2014-12-16 08:14:31', '2014-12-16 08:14:31', '', 0, 'http://yelloow.be/beta/?post_type=voor-wie&#038;p=9', 0, 'voor-wie', '', 0),
(10, 1, '2014-12-11 10:56:44', '2014-12-11 10:56:44', '', 'Voor Wie', '', 'publish', 'open', 'open', '', 'voor-wie', '', '', '2014-12-11 10:57:46', '2014-12-11 10:57:46', '', 0, 'http://yelloow.be/beta/?wp-types-group=voor-wie', 0, 'wp-types-group', '', 0),
(11, 1, '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 'Approach', '', 'publish', 'open', 'open', '', 'approach', '', '', '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 0, 'http://yelloow.be/beta/?page_id=11', 0, 'page', '', 0),
(12, 1, '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 'Approach', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2014-12-11 10:58:17', '2014-12-11 10:58:17', '', 11, 'http://yelloow.be/beta/?p=12', 0, 'revision', '', 0),
(13, 1, '2014-12-11 10:58:59', '2014-12-11 10:58:59', '<p>Hier komt nog een andere inleidende tekst</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Trouble-shooting', '', 'publish', 'open', 'open', '', 'trouble-shooting', '', '', '2014-12-16 08:16:05', '2014-12-16 08:16:05', '', 0, 'http://yelloow.be/beta/?page_id=13', 0, 'page', '', 0),
(14, 1, '2014-12-11 10:58:59', '2014-12-11 10:58:59', '', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-11 10:58:59', '2014-12-11 10:58:59', '', 13, 'http://yelloow.be/beta/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-12-11 10:59:22', '2014-12-11 10:59:22', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen.</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Graves', '', 'publish', 'open', 'open', '', 'graves', '', '', '2014-12-16 08:16:39', '2014-12-16 08:16:39', '', 0, 'http://yelloow.be/beta/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-12-11 10:59:22', '2014-12-11 10:59:22', '', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-11 10:59:22', '2014-12-11 10:59:22', '', 15, 'http://yelloow.be/beta/?p=16', 0, 'revision', '', 0),
(17, 1, '2014-12-11 11:00:34', '2014-12-11 11:00:34', '<p> staat voor ongeschreven regels, traditie, familieband, vertrouwdheid, rituelen, geloof, bescheidenheid</p>\r\n<p>Negatief : achterdocht, wantrouwen</p>', 'PAARS', '', 'publish', 'closed', 'closed', '', 'paars', '', '', '2014-12-16 08:32:12', '2014-12-16 08:32:12', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=17', 1, 'drijfveren', '', 0),
(18, 1, '2014-12-11 11:44:41', '2014-12-11 11:44:41', 'Linda Leemans en Greet Leemans zijn de leading partners van YELLOOW.\r\nNa meer dan 20 jaar leidinggeven gingen ze een nieuwe uitdaging aan met de oprichting van YELLOOW consult.', 'Over Yelloow Intro', '', 'publish', 'closed', 'closed', '', 'over-yelloow-intro', '', '', '2014-12-15 05:01:07', '2014-12-15 05:01:07', '', 0, 'http://yelloow.be/beta/?post_type=over-yelloow&#038;p=18', 0, 'over-yelloow', '', 0),
(19, 1, '2014-12-11 11:52:19', '2014-12-11 11:52:19', '<p>20 jaar een kleine VZW in de non-profit uitbouwen tot een grote organisatie leerde dat het succes van een bedrijf hand in hand gaat met goede interne communicatie, met medewerkerstevredenheid en</p>\r\n<p>met een evenwichtige samenstelling van teams of groepen. Want, groeit een bedrijf, dan moet men vaak op zoek naar een andere aanpak.</p>', 'Onze visie', '', 'publish', 'closed', 'closed', '', 'onze-visie', '', '', '2014-12-16 08:34:02', '2014-12-16 08:34:02', '', 0, 'http://yelloow.be/beta/?post_type=over-yelloow&#038;p=19', 1, 'over-yelloow', '', 0),
(20, 1, '2014-12-11 11:52:57', '2014-12-11 11:52:57', '<p>YELLOOW focust op de verwachtingen en het potentieel aanwezig in een bedrijf. Kennis van het bedrijf en van de bedrijfscultuur is essentieel om aan de slag te gaan. Kleine wijzigingen in functies of communicatie kunnen reeds een groot verschil maken.</p>\r\n<p>Om zicht te krijgen op de verwachtingen en perspectieven van een bedrijf hanteert YELLOOW een gevalideerde test die talenten, sterke kanten en blinde vlekken naar boven brengt. Na een verkennend gesprek bezorgen we een plan van aanpak.</p>\r\n<p><strong>Het succes van een bedrijf is onze motivatie. </strong></p>', 'Onze aanpak', '', 'publish', 'closed', 'closed', '', 'onze-aanpak', '', '', '2014-12-16 08:34:14', '2014-12-16 08:34:14', '', 0, 'http://yelloow.be/beta/?post_type=over-yelloow&#038;p=20', 2, 'over-yelloow', '', 0),
(21, 1, '2014-12-11 11:53:41', '2014-12-11 11:53:41', 'Greet en Linda zijn gepassioneerd door het snijpunt (de samenhang) tussen succes van organisaties en het welbevinden van medewerkers. Groei realiseren en samen met anderen mooie resultaten neerzetten. is altijd hun gezamenlijke ‘drive’ en uitdaging geweest. Meer dan 20 jaar een groep van meer dan 50 medewerkers aansturen en een bedrijf organiseren, leerde dat succes boeken niet alleen bekwame en vaardige medewerkers vergt.\r\n\r\nKennis van wat er aan de basis ligt van ieders gedrag op de werkvloer, van leiderschapsstijl en van wat een medewerker drijft, is een uitdaging voor elk bedrijf, elke afdeling en elke manager.\r\n\r\n<strong>Inzicht in deze ‘Black Box’ opent voor ieder perspectieven voor de toekomst. </strong>\r\n\r\n&nbsp;', 'Wie we zijn', '', 'publish', 'closed', 'closed', '', 'wie-we-zijn', '', '', '2014-12-16 08:34:27', '2014-12-16 08:34:27', '', 0, 'http://yelloow.be/beta/?post_type=over-yelloow&#038;p=21', 3, 'over-yelloow', '', 0),
(22, 1, '2014-12-11 11:56:25', '2014-12-11 11:56:25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.\r\n\r\nLorem ipsm dolor sit amet.\r\n\r\nOnly five centuries, but also the leap into electronic typesetting.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets.\r\n\r\nRecently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.\r\n\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.\r\n\r\nLorem ipsm dolor sit amet.\r\n\r\nOnly five centuries, but also the leap into electronic typesetting.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets.\r\n\r\nRecently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Yelloow manifesto', '', 'publish', 'closed', 'closed', '', 'yelloow-manifesto', '', '', '2014-12-16 08:34:35', '2014-12-16 08:34:35', '', 0, 'http://yelloow.be/beta/?post_type=over-yelloow&#038;p=22', 4, 'over-yelloow', '', 0),
(23, 1, '2014-12-11 11:58:34', '2014-12-11 11:58:34', '', 'Onze Referenties', '', 'publish', 'open', 'open', '', 'onze-referenties', '', '', '2014-12-11 11:58:34', '2014-12-11 11:58:34', '', 0, 'http://yelloow.be/beta/?wp-types-group=onze-referenties', 0, 'wp-types-group', '', 0),
(24, 1, '2014-12-11 11:59:56', '2014-12-11 11:59:56', '', 'Onze referenties', '', 'publish', 'closed', 'closed', '', 'onze-referenties', '', '', '2014-12-15 04:43:08', '2014-12-15 04:43:08', '', 0, 'http://yelloow.be/beta/?post_type=over-yelloow&#038;p=24', 0, 'over-yelloow', '', 0),
(25, 1, '2014-12-11 12:01:27', '2014-12-11 12:01:27', '<p>[contact-form-7 id="28" title="Kennismaken?"]</p>', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2014-12-16 08:38:53', '2014-12-16 08:38:53', '', 0, 'http://yelloow.be/beta/?page_id=25', 0, 'page', '', 0),
(26, 1, '2014-12-11 12:01:27', '2014-12-11 12:01:27', '', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:01:27', '2014-12-11 12:01:27', '', 25, 'http://yelloow.be/beta/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-12-11 12:02:02', '2014-12-11 12:02:02', '[contact-form-7 id="4" title="Contact form 1"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:02:02', '2014-12-11 12:02:02', '', 25, 'http://yelloow.be/beta/?p=27', 0, 'revision', '', 0),
(28, 1, '2014-12-11 12:12:54', '2014-12-11 12:12:54', '<div class="form-group">\r\n[text naam id:naam class:form-control placeholder "naam"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text naam-organisatie id:naam-organisatie class:form-control placeholder "naam organisatie"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text adres id:adres class:form-control placeholder "adres"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[text plaats id:plaats class:form-control placeholder "plaats"]\r\n</div>\r\n\r\n<div class="form-group">\r\n<input type="text" class="form-control" id="phone" placeholder="telefoon">\r\n</div>\r\n\r\n<div class="form-group">\r\n[email email id:email class:form-control placeholder "email"]\r\n</div>\r\n\r\n<div class="form-group">\r\n[textarea opmerkingen id:opmerkingen class:form-control placeholder "opmerkingen, vragen, etc"]\r\n</div>\r\n\r\n[submit id:submit class:btn class:btn-turquoise class:center-block "Verzenden"]\n[your-subject]\n[your-name] <admin@yelloow.id>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)\nadmin@yelloow.id\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nYelloow <admin@yelloow.id>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Yelloow (http://yelloow.be/beta)\n[your-email]\nReply-To: admin@yelloow.id\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Kennismaken?', '', 'publish', 'open', 'open', '', 'contact', '', '', '2014-12-11 12:24:03', '2014-12-11 12:24:03', '', 0, 'http://yelloow.be/beta/?post_type=wpcf7_contact_form&#038;p=28', 0, 'wpcf7_contact_form', '', 0),
(29, 1, '2014-12-11 12:13:10', '2014-12-11 12:13:10', '[contact-form-7 id="28" title="Contact"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:13:10', '2014-12-11 12:13:10', '', 25, 'http://yelloow.be/beta/?p=29', 0, 'revision', '', 0),
(30, 1, '2014-12-11 12:24:13', '2014-12-11 12:24:13', '[contact-form-7 id="28" title="Kennismaken?"]', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-11 12:24:13', '2014-12-11 12:24:13', '', 25, 'http://yelloow.be/beta/?p=30', 0, 'revision', '', 0),
(31, 1, '2014-12-12 08:11:01', '2014-12-12 08:11:01', 'Individuele professional', 'Individuele professional', 'Individuele professional', 'inherit', 'open', 'open', '', 'professional', '', '', '2014-12-12 08:11:53', '2014-12-12 08:11:53', '', 9, 'http://yelloow.be/beta/wp-content/uploads/2014/12/professional.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2014-12-12 08:26:46', '2014-12-12 08:26:46', 'Leidinggevenden', 'Leidinggevenden', 'Leidinggevenden', 'inherit', 'open', 'open', '', 'leidinggevenden-2', '', '', '2014-12-12 08:27:15', '2014-12-12 08:27:15', '', 8, 'http://yelloow.be/beta/wp-content/uploads/2014/12/leidinggevenden.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2014-12-12 08:26:46', '2014-12-12 08:26:46', 'Teams', 'Teams', 'Teams', 'inherit', 'open', 'open', '', 'team', '', '', '2014-12-12 08:27:05', '2014-12-12 08:27:05', '', 8, 'http://yelloow.be/beta/wp-content/uploads/2014/12/team.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2014-12-12 08:52:18', '2014-12-12 08:52:18', 'l', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-12 08:52:18', '2014-12-12 08:52:18', '', 13, 'http://yelloow.be/beta/13-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2014-12-12 09:00:29', '2014-12-12 09:00:29', 'graves-chart', 'graves-chart', 'graves-chart', 'inherit', 'open', 'open', '', 'graves-chart', '', '', '2014-12-12 09:00:47', '2014-12-12 09:00:47', '', 15, 'http://yelloow.be/beta/wp-content/uploads/2014/12/graves-chart.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2014-12-12 09:01:35', '2014-12-12 09:01:35', 'jhkhh', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-12 09:01:35', '2014-12-12 09:01:35', '', 15, 'http://yelloow.be/beta/15-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-12-12 09:25:15', '2014-12-12 09:25:15', '<p> staat voor beslissingen nemen en tempo maken, snelheid en besluitvaardigheid</p>\r\n<p>Negatief : defensief , agressief</p>', 'ROOD', '', 'publish', 'closed', 'closed', '', 'rood', '', '', '2014-12-16 08:32:22', '2014-12-16 08:32:22', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=37', 2, 'drijfveren', '', 0),
(38, 1, '2014-12-12 09:25:28', '2014-12-12 09:25:28', 'blauw', 'blauw', 'blauw', 'inherit', 'open', 'open', '', 'brush-blue', '', '', '2014-12-12 09:26:47', '2014-12-12 09:26:47', '', 37, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-blue.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2014-12-12 09:25:28', '2014-12-12 09:25:28', 'groen', 'groen', 'groen', 'inherit', 'open', 'open', '', 'brush-green', '', '', '2014-12-12 09:26:36', '2014-12-12 09:26:36', '', 37, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-green.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2014-12-12 09:25:29', '2014-12-12 09:25:29', 'oranje', 'oranje', 'oranje', 'inherit', 'open', 'open', '', 'brush-orange', '', '', '2014-12-12 09:26:26', '2014-12-12 09:26:26', '', 37, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-orange.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2014-12-12 09:25:30', '2014-12-12 09:25:30', 'paars', 'paars', 'paars', 'inherit', 'open', 'open', '', 'brush-purple', '', '', '2014-12-12 09:26:16', '2014-12-12 09:26:16', '', 37, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-purple.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2014-12-12 09:25:30', '2014-12-12 09:25:30', 'rood', 'rood', 'rood', 'inherit', 'open', 'open', '', 'brush-red', '', '', '2014-12-12 09:25:44', '2014-12-12 09:25:44', '', 37, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-red.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2014-12-12 09:25:31', '2014-12-12 09:25:31', 'turkoois', 'turkoois', 'turkoois', 'inherit', 'open', 'open', '', 'brush-turqoise', '', '', '2014-12-12 09:26:04', '2014-12-12 09:26:04', '', 37, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-turqoise.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2014-12-15 04:41:24', '2014-12-15 04:41:24', '', 'logo-bpost', '', 'inherit', 'open', 'open', '', 'logo-bpost', '', '', '2014-12-15 04:41:24', '2014-12-15 04:41:24', '', 24, 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-bpost.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 'logo-casa', '', 'inherit', 'open', 'open', '', 'logo-casa', '', '', '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 24, 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-casa.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 'logo-cm', '', 'inherit', 'open', 'open', '', 'logo-cm', '', '', '2014-12-15 04:41:25', '2014-12-15 04:41:25', '', 24, 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-cm.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 'logo-oxfam', '', 'inherit', 'open', 'open', '', 'logo-oxfam', '', '', '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 24, 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-oxfam.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 'logo-square', '', 'inherit', 'open', 'open', '', 'logo-square', '', '', '2014-12-15 04:41:26', '2014-12-15 04:41:26', '', 24, 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-square.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2014-12-15 04:41:27', '2014-12-15 04:41:27', '', 'logo-an', '', 'inherit', 'open', 'open', '', 'logo-an', '', '', '2014-12-15 04:41:27', '2014-12-15 04:41:27', '', 24, 'http://yelloow.be/beta/wp-content/uploads/2014/12/logo-an.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2014-12-15 05:01:01', '2014-12-15 05:01:01', '', 'man', '', 'inherit', 'open', 'open', '', 'man', '', '', '2014-12-15 05:01:01', '2014-12-15 05:01:01', '', 18, 'http://yelloow.be/beta/wp-content/uploads/2014/12/man.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2014-12-16 07:03:35', '2014-12-16 07:03:35', '', 'Content Introduction Field', '', 'publish', 'open', 'open', '', 'content-introduction-field', '', '', '2014-12-16 07:03:35', '2014-12-16 07:03:35', '', 0, 'http://yelloow.be/beta/wp-types-group/content-introduction-field/', 0, 'wp-types-group', '', 0),
(52, 1, '2014-12-16 07:07:32', '2014-12-16 07:07:32', '', 'Intro', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2014-12-16 07:18:12', '2014-12-16 07:18:12', '', 0, 'http://yelloow.be/beta/?post_type=content-introduction&#038;p=52', 0, 'content-introduction', '', 0),
(53, 1, '2014-12-16 08:16:05', '2014-12-16 08:16:05', '<p>Hier komt nog een andere inleidende tekst</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Trouble-shooting', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-12-16 08:16:05', '2014-12-16 08:16:05', '', 13, 'http://yelloow.be/beta/13-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2014-12-16 08:16:39', '2014-12-16 08:16:39', '<p>Dr. C.W. Graves deed onderzoek naar gedrag en gedragspatronen.</p>\r\n<p>Graves toonde aan dat menselijk gedrag sterk wordt bepaald door waardesystemen, ook drijfveren of drives genoemd. De waardesystemen zijn een soort van containers die waarden, overtuigingen en ideeën over wat goed en fout is bevatten.</p>', 'Graves', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-12-16 08:16:39', '2014-12-16 08:16:39', '', 15, 'http://yelloow.be/beta/15-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2014-12-16 08:25:58', '2014-12-16 08:25:58', '<p>staat voor discipline, orde, structuur, zekerheid, duidelijkheid, betrouwbaarheid, verantwoordelijkheid</p>\r\n<p>Negatief : achter regels verschuilen</p>', 'BLAUW', '', 'publish', 'closed', 'closed', '', 'blauw', '', '', '2014-12-16 08:26:20', '2014-12-16 08:26:20', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=55', 3, 'drijfveren', '', 0),
(56, 1, '2014-12-16 08:30:06', '2014-12-16 08:30:06', '<p>staat voor ambitie en resultaten neerzetten, vooruitgang, succes, competitie en winnen</p>\r\n<p>Negatief : afschuiven , gezichtsverlies vrezen</p>', 'ORANJE', '', 'publish', 'closed', 'closed', '', 'oranje', '', '', '2014-12-16 08:30:06', '2014-12-16 08:30:06', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=56', 4, 'drijfveren', '', 0),
(57, 1, '2014-12-16 08:30:30', '2014-12-16 08:30:30', '<p>staat voor communicatie, betrokkenheid, samenwerken, gelijkheid, groepsgevoel, mensen verbinden</p>\r\n<p>Negatief : protesteren, roddelen en klagen</p>', 'GROEN ', '', 'publish', 'closed', 'closed', '', 'groen', '', '', '2014-12-16 08:30:36', '2014-12-16 08:30:36', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=57', 5, 'drijfveren', '', 0),
(58, 1, '2014-12-16 08:31:14', '2014-12-16 08:31:14', '<p>staat voor inzicht, leren, analyseren en ontwikkelen, breed denken, creatief en intellectuele vrijheid</p>\r\n<p>Negatief : cynisch , negatief kritisch</p>', 'GEEL ', '', 'publish', 'closed', 'closed', '', 'geel', '', '', '2014-12-16 08:31:14', '2014-12-16 08:31:14', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=58', 6, 'drijfveren', '', 0),
(59, 1, '2014-12-16 08:31:06', '2014-12-16 08:31:06', '', 'brush-yellow', '', 'inherit', 'open', 'open', '', 'brush-yellow', '', '', '2014-12-16 08:31:06', '2014-12-16 08:31:06', '', 58, 'http://yelloow.be/beta/wp-content/uploads/2014/12/brush-yellow.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2014-12-16 08:31:36', '2014-12-16 08:31:36', '<p>staat voor het holistisch waardesysteem, de bezinning over hoe je je dominante waarden inzet. De turquoise persoon heeft oog voor het grotere geheel.</p>\r\n<p>Negatief : overmatig relativeren, zweverig</p>', 'TURKOOIS', '', 'publish', 'closed', 'closed', '', 'turkoois', '', '', '2014-12-16 08:31:53', '2014-12-16 08:31:53', '', 0, 'http://yelloow.be/beta/?post_type=drijfveren&#038;p=60', 7, 'drijfveren', '', 0),
(61, 1, '2014-12-16 08:38:53', '2014-12-16 08:38:53', '<p>[contact-form-7 id="28" title="Kennismaken?"]</p>', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-12-16 08:38:53', '2014-12-16 08:38:53', '', 25, 'http://yelloow.be/beta/25-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', '', 'Voor Wie', '', 'publish', 'open', 'open', '', 'voor-wie', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/beta/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/beta/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', '', 'Over Yelloow', '', 'publish', 'open', 'open', '', 'over-yelloow', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/beta/?p=71', 3, 'nav_menu_item', '', 0),
(72, 1, '2014-12-16 14:14:02', '2014-12-16 14:14:02', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2014-12-16 14:14:30', '2014-12-16 14:14:30', '', 0, 'http://yelloow.be/beta/?p=72', 4, 'nav_menu_item', '', 0),
(73, 1, '2014-12-16 14:14:41', '2014-12-16 14:14:41', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://yelloow.be/beta/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-12-16 14:14:41', '2014-12-16 14:14:41', '', 2, 'http://yelloow.be/beta/2-revision-v1/', 0, 'revision', '', 0) ;

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
(22, 3, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_term_taxonomy`
#
INSERT INTO `yl_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'over-yelloow-tax', '', 0, 1),
(3, 3, 'over-yelloow-tax', '', 0, 4),
(4, 4, 'over-yelloow-tax', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 4) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_terms`
#
INSERT INTO `yl_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Image', 'header-image', 0),
(3, 'Content', 'content', 0),
(4, 'Reference', 'reference', 0),
(5, 'Main Menu', 'main-menu', 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;


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
(14, 1, 'session_tokens', 'a:5:{s:64:"4797d1b287afd75657c8b68cd199abdab3ab1e2a73eff1ad43e1a391f74d420e";i:1418875077;s:64:"cc050b9c7417dcaea4bb4841e0a9260b72d5721b363328f4fbbcce225b339c30";i:1418885202;s:64:"49ae3b5d802b8d7e23b985c032552c99ae7f558f9ebd5e0a04469254e3031095";i:1418911766;s:64:"73d4f4334dcb6c074616fbbdbaca97af08f6359cfb41f354dd540c7ea6578603";i:1418966451;s:64:"01b6f966781fc0880b0881cc592946a6b22f351f1c7bde1322c765b6d2da10b2";i:1418990108;}'),
(15, 1, 'yl_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'yl_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse'),
(17, 1, 'yl_user-settings-time', '1418717760'),
(18, 1, 'meta-box-order_voor-wie', 'a:3:{s:4:"side";s:37:"postimagediv,submitdiv,wpcf-marketing";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:0:"";}'),
(19, 1, 'screen_layout_voor-wie', '2'),
(20, 1, 'closedpostboxes_voor-wie', 'a:1:{i:0;s:14:"wpcf-marketing";}'),
(21, 1, 'metaboxhidden_voor-wie', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'wpcf-group-form-toggle', 'a:1:{i:10;a:1:{s:24:"fieldset-button-voor-wie";i:1;}}'),
(23, 1, 'meta-box-order_drijfveren', 'a:3:{s:4:"side";s:51:"postimagediv,submitdiv,pageparentdiv,wpcf-marketing";s:6:"normal";s:7:"slugdiv";s:8:"advanced";s:0:"";}'),
(24, 1, 'screen_layout_drijfveren', '2'),
(25, 1, 'closedpostboxes_drijfveren', 'a:0:{}'),
(26, 1, 'metaboxhidden_drijfveren', 'a:1:{i:0;s:7:"slugdiv";}'),
(27, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:"dashboard_primary";}'),
(28, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(29, 1, 'closedpostboxes_over-yelloow', 'a:1:{i:0;s:14:"wpcf-marketing";}'),
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
(43, 1, 'nav_menu_recently_edited', '5') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `yl_users`
#
INSERT INTO `yl_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/rHNXdLD0qk4CIeeQyGNR0dRASNF90', 'admin', 'admin@yelloow.id', '', '2014-12-11 09:38:45', '', 0, 'admin') ;

#
# End of data contents of table `yl_users`
# --------------------------------------------------------

#
# Add constraints back in
#

