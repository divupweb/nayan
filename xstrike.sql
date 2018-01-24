-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 24 2018 г., 15:59
-- Версия сервера: 5.5.52-MariaDB
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `xstrike`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_circles`
--

CREATE TABLE IF NOT EXISTS `wp_g_circles` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `center_lat` varchar(255) NOT NULL,
  `center_lng` varchar(255) NOT NULL,
  `radius` varchar(255) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `fill_color` varchar(7) NOT NULL,
  `fill_opacity` varchar(7) NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(7) NOT NULL,
  `hover_fill_color` varchar(7) NOT NULL,
  `hover_fill_opacity` varchar(7) NOT NULL,
  `show_marker` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_directions`
--

CREATE TABLE IF NOT EXISTS `wp_g_directions` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_lat` varchar(255) NOT NULL,
  `start_lng` varchar(255) NOT NULL,
  `end_lat` varchar(255) NOT NULL,
  `end_lng` varchar(255) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `show_steps` varchar(3) NOT NULL,
  `travel_mode` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_g_directions`
--

INSERT INTO `wp_g_directions` (`id`, `map`, `name`, `start_lat`, `start_lng`, `end_lat`, `end_lng`, `line_color`, `line_width`, `line_opacity`, `show_steps`, `travel_mode`) VALUES
(1, 1, 'Lyonstown - Locust', '40.9419425', '-77.7339905', '40.2863133', '-76.85491560000003', '000000', '0.5', '10', 'no', 'DRIVING');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_maps`
--

CREATE TABLE IF NOT EXISTS `wp_g_maps` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'ROADMAP',
  `zoom` int(5) NOT NULL,
  `border_radius` int(5) NOT NULL,
  `center_lat` varchar(255) NOT NULL DEFAULT '0',
  `pan_controller` varchar(5) NOT NULL DEFAULT 'true',
  `zoom_controller` varchar(5) NOT NULL DEFAULT 'true',
  `type_controller` varchar(5) NOT NULL DEFAULT 'true',
  `scale_controller` varchar(5) NOT NULL DEFAULT 'true',
  `street_view_controller` varchar(5) NOT NULL DEFAULT 'true',
  `overview_map_controller` varchar(5) NOT NULL DEFAULT 'true',
  `center_lng` varchar(255) NOT NULL DEFAULT '0',
  `width` varchar(5) NOT NULL DEFAULT '100',
  `height` varchar(5) NOT NULL DEFAULT '450',
  `align` varchar(11) NOT NULL DEFAULT 'left',
  `wheel_scroll` varchar(11) NOT NULL DEFAULT 'true',
  `draggable` varchar(11) NOT NULL DEFAULT 'true',
  `language` text NOT NULL,
  `min_zoom` varchar(11) NOT NULL DEFAULT '0',
  `max_zoom` varchar(11) NOT NULL DEFAULT '22',
  `info_type` varchar(9) NOT NULL DEFAULT 'click',
  `traffic_layer` varchar(55) NOT NULL DEFAULT 'false',
  `bike_layer` varchar(55) NOT NULL DEFAULT 'false',
  `transit_layer` varchar(55) NOT NULL DEFAULT 'false',
  `styling_hue` text NOT NULL,
  `styling_lightness` varchar(55) NOT NULL DEFAULT '0',
  `styling_gamma` varchar(55) NOT NULL DEFAULT '1',
  `styling_saturation` varchar(55) NOT NULL DEFAULT '0',
  `animation` varchar(250) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_g_maps`
--

INSERT INTO `wp_g_maps` (`id`, `name`, `type`, `zoom`, `border_radius`, `center_lat`, `pan_controller`, `zoom_controller`, `type_controller`, `scale_controller`, `street_view_controller`, `overview_map_controller`, `center_lng`, `width`, `height`, `align`, `wheel_scroll`, `draggable`, `language`, `min_zoom`, `max_zoom`, `info_type`, `traffic_layer`, `bike_layer`, `transit_layer`, `styling_hue`, `styling_lightness`, `styling_gamma`, `styling_saturation`, `animation`) VALUES
(1, 'My First Map', 'ROADMAP', 14, 0, '53.853672', 'false', 'true', 'false', 'false', 'false', 'false', '27.601330', '100', '250', 'center', 'true', 'true', 'location based', '0', '22', 'click', 'false', 'false', 'false', '', '0', '1', '0', 'none');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_markers`
--

CREATE TABLE IF NOT EXISTS `wp_g_markers` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `lat` varchar(255) NOT NULL DEFAULT '0',
  `lng` varchar(255) NOT NULL DEFAULT '0',
  `animation` varchar(255) NOT NULL DEFAULT 'NONE',
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `size` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_g_markers`
--

INSERT INTO `wp_g_markers` (`id`, `map`, `title`, `lat`, `lng`, `animation`, `description`, `img`, `size`) VALUES
(2, 1, '', '53.853672', '27.601330', 'DROP', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_polygones`
--

CREATE TABLE IF NOT EXISTS `wp_g_polygones` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(9) NOT NULL,
  `fill_opacity` varchar(5) NOT NULL,
  `fill_color` varchar(9) NOT NULL,
  `url` text NOT NULL,
  `hover_line_opacity` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_fill_opacity` varchar(5) NOT NULL,
  `hover_fill_color` varchar(9) NOT NULL,
  `line_width` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_g_polylines`
--

CREATE TABLE IF NOT EXISTS `wp_g_polylines` (
  `id` int(11) unsigned NOT NULL,
  `map` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `line_opacity` varchar(5) NOT NULL,
  `line_color` varchar(7) NOT NULL,
  `line_width` varchar(5) NOT NULL,
  `hover_line_color` varchar(9) NOT NULL,
  `hover_line_opacity` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=7686 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nayan.by', 'yes'),
(2, 'home', 'http://nayan.by', 'yes'),
(3, 'blogname', 'nayan.by', 'yes'),
(4, 'blogdescription', 'эффективная реклама в интернете', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'webmaster@nayan.by', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/контакты', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:1;s:25:"callphoner/callphoner.php";i:2;s:25:"google-maps/googlemap.php";i:3;s:35:"googleanalytics/googleanalytics.php";i:5;s:23:"ml-slider/ml-slider.php";i:6;s:41:"scroll-back-to-top/scroll-back-to-top.php";i:7;s:33:"yandex-metrica/yandex-metrica.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:66:"/var/www/nayan/data/www/nayan.by/wp-content/themes/nayan/style.css";i:2;s:79:"/var/www/nayan/data/www/nayan.by/wp-content/plugins/autoptimize/autoptimize.php";i:3;s:0:"";}', 'no'),
(40, 'template', 'nayan', 'yes'),
(41, 'stylesheet', 'nayan', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"autoptimize/autoptimize.php";s:21:"autoptimize_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:37:"настройка контекста";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1516802186;a:1:{s:15:"ao_cachechecker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516806087;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516807099;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516808906;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_twentysixteen_categories', '1', 'yes'),
(106, 'WPLANG', 'ru_RU', 'yes'),
(115, '_site_transient_timeout_browser_8621df93bc649392fd92029726a85c8a', '1470841289', 'yes'),
(116, '_site_transient_browser_8621df93bc649392fd92029726a85c8a', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(118, 'can_compress_scripts', '1', 'yes'),
(124, 'recently_activated', 'a:0:{}', 'yes'),
(134, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470236681;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(135, 'current_theme', 'Nayan', 'yes'),
(136, 'theme_mods_nayan', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(138, 'rewrite_rules', 'a:72:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:49:"контакты/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:44:"контакты/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:25:"контакты/embed/?$";s:21:"index.php?&embed=true";s:37:"контакты/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:44:"контакты/comment-page-([0-9]{1,})/?$";s:28:"index.php?&cpage=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(173, 'scroll-back-to-top', 'a:22:{s:7:"enabled";s:6:"public";s:14:"min_resolution";i:0;s:14:"max_resolution";i:9999;s:6:"size_w";i:50;s:6:"size_h";i:50;s:16:"color_background";s:7:"#888888";s:11:"color_hover";s:7:"#0a0a0a";s:16:"color_foreground";s:7:"#eeeeee";s:22:"color_foreground_hover";s:7:"#eeeeee";s:7:"opacity";i:100;s:13:"border_radius";i:10;s:7:"align_x";s:5:"right";s:7:"align_y";s:6:"bottom";s:8:"margin_x";i:30;s:8:"margin_y";i:40;s:10:"label_type";s:18:"fa-arrow-circle-up";s:9:"icon_size";s:5:"fa-2x";s:15:"scroll_duration";i:500;s:19:"visibility_duration";i:0;s:13:"fade_duration";i:500;s:9:"extra_css";s:0:"";s:7:"version";d:1.1000000000000001;}', 'yes'),
(174, 'web_property_id', 'UA-82128891-1', 'yes'),
(175, 'widget_huge_it_google_maps_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(182, 'callphoner_settings', 'a:7:{s:6:"status";s:7:"enabled";s:4:"size";s:2:"60";s:5:"color";s:7:"#81d742";s:6:"colori";s:4:"#fff";s:3:"tel";s:19:"+375 (44) 747-50-73";s:4:"attr";s:0:"";s:8:"schedule";a:7:{s:6:"monday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}s:7:"tuesday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}s:9:"wednesday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}s:8:"thursday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}s:6:"friday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}s:8:"saturday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}s:6:"sunday";a:2:{s:4:"work";a:2:{s:4:"from";s:5:"06:30";s:2:"to";s:5:"22:30";}s:5:"break";s:7:"nobreak";}}}', 'yes'),
(223, 'autoptimize_version', '2.0.0', 'yes'),
(225, 'hyper-cache', 'a:12:{s:6:"mobile";i:0;s:6:"folder";s:0:"";s:7:"max_age";i:24;s:16:"clean_last_posts";i:0;s:13:"mobile_agents";a:14:{i:0;s:7:"android";i:1;s:6:"iphone";i:2;s:8:"iemobile";i:3;s:10:"up.browser";i:4;s:7:"up.link";i:5;s:3:"mmp";i:6;s:7:"symbian";i:7;s:10:"smartphone";i:8;s:4:"midp";i:9;s:3:"wap";i:10;s:5:"phone";i:11;s:4:"ipod";i:12;s:4:"xoom";i:13;s:10:"blackberry";}s:13:"reject_agents";a:0:{}s:14:"reject_cookies";a:0:{}s:11:"reject_uris";a:0:{}s:17:"reject_uris_exact";a:0:{}s:5:"https";i:1;s:5:"theme";s:0:"";s:19:"browser_cache_hours";i:24;}', 'yes'),
(278, 'metrica_options', 'a:12:{s:10:"counter_id";i:38931095;s:8:"webvisor";b:1;s:8:"clickmap";b:1;s:10:"tracklinks";b:1;s:14:"accurate_track";b:1;s:15:"track-logged-in";b:1;s:13:"untrack-roles";a:1:{i:0;s:13:"administrator";}s:19:"widget-access-roles";a:1:{i:0;s:13:"administrator";}s:8:"backward";b:0;s:8:"authcode";i:8080408;s:12:"access_token";s:39:"AQAAAAAYCJecAAH1qJtmnV3_nkOfqErpifulIsw";s:10:"track_hash";b:0;}', 'yes'),
(279, '_transient_timeout_metrica_counter_', '1470661125', 'no'),
(280, '_transient_metrica_counter_', '', 'no'),
(281, 'widget_metrica_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(299, '_transient_timeout_counter_statistics_38931095_2016080220160808', '1470668709', 'no'),
(300, '_transient_counter_statistics_38931095_2016080220160808', 'a:6:{s:5:"date1";s:8:"20160802";s:5:"date2";s:8:"20160808";s:2:"id";i:38931095;s:4:"rows";i:1;s:4:"data";a:1:{i:0;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160808";s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:2;s:10:"page_views";i:2;s:10:"visit_time";i:1501;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160808";}}s:6:"totals";a:7:{s:6:"denial";d:0;s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:2;s:10:"page_views";i:2;s:10:"visit_time";i:1501;s:12:"new_visitors";i:1;}}', 'no'),
(301, '_transient_timeout_popular_content_38931095_2016080220160808', '1470668709', 'no'),
(302, '_transient_popular_content_38931095_2016080220160808', 'a:6:{s:5:"date1";s:8:"20160802";s:5:"date2";s:8:"20160808";s:2:"id";i:38931095;s:4:"rows";i:1;s:4:"data";a:1:{i:0;a:5:{s:4:"exit";i:1;s:10:"page_views";i:2;s:2:"id";s:20:"12670352401070289982";s:8:"entrance";i:1;s:3:"url";s:16:"http://nayan.by/";}}s:6:"totals";a:3:{s:4:"exit";i:1;s:10:"page_views";i:2;s:8:"entrance";i:1;}}', 'no'),
(303, '_transient_timeout_top_referrers_38931095_2016080220160808', '1470668710', 'no'),
(304, '_transient_top_referrers_38931095_2016080220160808', 'a:7:{s:5:"date1";s:8:"20160802";s:5:"date2";s:8:"20160808";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(305, '_transient_timeout_top_searches_38931095_2016080220160808', '1470668710', 'no'),
(306, '_transient_top_searches_38931095_2016080220160808', 'a:7:{s:5:"date1";s:8:"20160802";s:5:"date2";s:8:"20160808";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(352, '_transient_timeout_counter_statistics_38931095_2016080620160812', '1471020117', 'no'),
(353, '_transient_counter_statistics_38931095_2016080620160812', 'a:6:{s:5:"date1";s:8:"20160806";s:5:"date2";s:8:"20160812";s:2:"id";i:38931095;s:4:"rows";i:5;s:4:"data";a:5:{i:0;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160808";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1.5;s:10:"page_views";i:3;s:10:"visit_time";i:758;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160808";}i:1;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160809";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1.5;s:10:"page_views";i:3;s:10:"visit_time";i:220;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160809";}i:2;a:9:{s:6:"denial";d:0.33329999999999999;s:4:"date";s:8:"20160810";s:6:"visits";i:3;s:8:"visitors";i:3;s:5:"depth";d:1.3332999999999999;s:10:"page_views";i:4;s:10:"visit_time";i:100;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160810";}i:3;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160811";s:6:"visits";i:10;s:8:"visitors";i:4;s:5:"depth";d:1.8;s:10:"page_views";i:18;s:10:"visit_time";i:860;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160811";}i:4;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160812";s:6:"visits";i:3;s:8:"visitors";i:2;s:5:"depth";d:2;s:10:"page_views";i:6;s:10:"visit_time";i:94;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160812";}}s:6:"totals";a:7:{s:6:"denial";d:0.050000000000000003;s:6:"visits";i:20;s:8:"visitors";i:7;s:5:"depth";d:1.7;s:10:"page_views";i:34;s:10:"visit_time";i:557;s:12:"new_visitors";i:7;}}', 'no'),
(354, '_transient_timeout_popular_content_38931095_2016080620160812', '1471020117', 'no'),
(355, '_transient_popular_content_38931095_2016080620160812', 'a:6:{s:5:"date1";s:8:"20160806";s:5:"date2";s:8:"20160812";s:2:"id";i:38931095;s:4:"rows";i:2;s:4:"data";a:2:{i:0;a:5:{s:4:"exit";i:16;s:10:"page_views";i:27;s:2:"id";s:20:"12670352401070289982";s:8:"entrance";i:17;s:3:"url";s:16:"http://nayan.by/";}i:1;a:5:{s:4:"exit";i:4;s:10:"page_views";i:7;s:2:"id";s:20:"17745488850953534872";s:8:"entrance";i:3;s:3:"url";s:22:"http://nayan.by/#close";}}s:6:"totals";a:3:{s:4:"exit";i:20;s:10:"page_views";i:34;s:8:"entrance";i:20;}}', 'no'),
(356, '_transient_timeout_top_referrers_38931095_2016080620160812', '1471020117', 'no'),
(357, '_transient_top_referrers_38931095_2016080620160812', 'a:7:{s:5:"date1";s:8:"20160806";s:5:"date2";s:8:"20160812";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(358, '_transient_timeout_top_searches_38931095_2016080620160812', '1471020118', 'no'),
(359, '_transient_top_searches_38931095_2016080620160812', 'a:7:{s:5:"date1";s:8:"20160806";s:5:"date2";s:8:"20160812";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(393, '_site_transient_timeout_browser_4c9717c179f154741a00df005d8e11d2', '1471768513', 'yes'),
(394, '_site_transient_browser_4c9717c179f154741a00df005d8e11d2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(475, '_transient_timeout_counter_statistics_38931095_2016080820160814', '1471179261', 'no'),
(476, '_transient_counter_statistics_38931095_2016080820160814', 'a:6:{s:5:"date1";s:8:"20160808";s:5:"date2";s:8:"20160814";s:2:"id";i:38931095;s:4:"rows";i:7;s:4:"data";a:7:{i:0;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160808";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1.5;s:10:"page_views";i:3;s:10:"visit_time";i:758;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160808";}i:1;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160809";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1.5;s:10:"page_views";i:3;s:10:"visit_time";i:220;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160809";}i:2;a:9:{s:6:"denial";d:0.33329999999999999;s:4:"date";s:8:"20160810";s:6:"visits";i:3;s:8:"visitors";i:3;s:5:"depth";d:1.3332999999999999;s:10:"page_views";i:4;s:10:"visit_time";i:100;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160810";}i:3;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160811";s:6:"visits";i:10;s:8:"visitors";i:4;s:5:"depth";d:1.8;s:10:"page_views";i:18;s:10:"visit_time";i:860;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160811";}i:4;a:9:{s:6:"denial";d:0.20000000000000001;s:4:"date";s:8:"20160812";s:6:"visits";i:5;s:8:"visitors";i:3;s:5:"depth";d:1.8;s:10:"page_views";i:9;s:10:"visit_time";i:270;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160812";}i:5;a:9:{s:6:"denial";d:1;s:4:"date";s:8:"20160813";s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:0;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160813";}i:6;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160814";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:4.5;s:10:"page_views";i:9;s:10:"visit_time";i:1646;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160814";}}s:6:"totals";a:7:{s:6:"denial";d:0.12;s:6:"visits";i:25;s:8:"visitors";i:9;s:5:"depth";d:1.8799999999999999;s:10:"page_views";i:47;s:10:"visit_time";i:620;s:12:"new_visitors";i:9;}}', 'no'),
(477, '_transient_timeout_popular_content_38931095_2016080820160814', '1471179262', 'no'),
(478, '_transient_popular_content_38931095_2016080820160814', 'a:6:{s:5:"date1";s:8:"20160808";s:5:"date2";s:8:"20160814";s:2:"id";i:38931095;s:4:"rows";i:3;s:4:"data";a:3:{i:0;a:5:{s:4:"exit";i:21;s:10:"page_views";i:37;s:2:"id";s:20:"12670352401070289982";s:8:"entrance";i:22;s:3:"url";s:16:"http://nayan.by/";}i:1;a:5:{s:4:"exit";i:4;s:10:"page_views";i:8;s:2:"id";s:20:"17745488850953534872";s:8:"entrance";i:3;s:3:"url";s:22:"http://nayan.by/#close";}i:2;a:5:{s:4:"exit";i:0;s:10:"page_views";i:2;s:2:"id";s:20:"16134143058516756260";s:8:"entrance";i:0;s:3:"url";s:24:"http://nayan.by/#block_2";}}s:6:"totals";a:3:{s:4:"exit";i:25;s:10:"page_views";i:47;s:8:"entrance";i:25;}}', 'no'),
(479, '_transient_timeout_top_referrers_38931095_2016080820160814', '1471179262', 'no'),
(480, '_transient_top_referrers_38931095_2016080820160814', 'a:7:{s:5:"date1";s:8:"20160808";s:5:"date2";s:8:"20160814";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(481, '_transient_timeout_top_searches_38931095_2016080820160814', '1471179262', 'no'),
(482, '_transient_top_searches_38931095_2016080820160814', 'a:7:{s:5:"date1";s:8:"20160808";s:5:"date2";s:8:"20160814";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(534, '_transient_timeout_counter_statistics_38931095_2016081320160819', '1471599366', 'no'),
(535, '_transient_counter_statistics_38931095_2016081320160819', 'a:6:{s:5:"date1";s:8:"20160813";s:5:"date2";s:8:"20160819";s:2:"id";i:38931095;s:4:"rows";i:7;s:4:"data";a:7:{i:0;a:9:{s:6:"denial";d:1;s:4:"date";s:8:"20160813";s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:0;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160813";}i:1;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160814";s:6:"visits";i:3;s:8:"visitors";i:2;s:5:"depth";d:3.3332999999999999;s:10:"page_views";i:10;s:10:"visit_time";i:1102;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160814";}i:2;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160815";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1;s:10:"page_views";i:2;s:10:"visit_time";i:17;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160815";}i:3;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160816";s:6:"visits";i:5;s:8:"visitors";i:4;s:5:"depth";d:1.3999999999999999;s:10:"page_views";i:7;s:10:"visit_time";i:299;s:12:"new_visitors";i:3;s:2:"id";s:8:"20160816";}i:4;a:9:{s:6:"denial";d:0.1429;s:4:"date";s:8:"20160817";s:6:"visits";i:7;s:8:"visitors";i:5;s:5:"depth";d:1;s:10:"page_views";i:7;s:10:"visit_time";i:45;s:12:"new_visitors";i:3;s:2:"id";s:8:"20160817";}i:5;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160818";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1;s:10:"page_views";i:2;s:10:"visit_time";i:16;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160818";}i:6;a:9:{s:6:"denial";d:0.5;s:4:"date";s:8:"20160819";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1;s:10:"page_views";i:2;s:10:"visit_time";i:8;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160819";}}s:6:"totals";a:7:{s:6:"denial";d:0.13639999999999999;s:6:"visits";i:22;s:8:"visitors";i:13;s:5:"depth";d:1.4091;s:10:"page_views";i:31;s:10:"visit_time";i:236;s:12:"new_visitors";i:10;}}', 'no'),
(536, '_transient_timeout_popular_content_38931095_2016081320160819', '1471599367', 'no'),
(537, '_transient_popular_content_38931095_2016081320160819', 'a:6:{s:5:"date1";s:8:"20160813";s:5:"date2";s:8:"20160819";s:2:"id";i:38931095;s:4:"rows";i:4;s:4:"data";a:4:{i:0;a:5:{s:4:"exit";i:21;s:10:"page_views";i:27;s:2:"id";s:20:"12670352401070289982";s:8:"entrance";i:21;s:3:"url";s:16:"http://nayan.by/";}i:1;a:5:{s:4:"exit";i:0;s:10:"page_views";i:2;s:2:"id";s:20:"16134143058516756260";s:8:"entrance";i:0;s:3:"url";s:24:"http://nayan.by/#block_2";}i:2;a:5:{s:4:"exit";i:1;s:10:"page_views";i:1;s:2:"id";s:20:"11723020369961250084";s:8:"entrance";i:1;s:3:"url";s:21:"http://nayan.by/#win5";}i:3;a:5:{s:4:"exit";i:0;s:10:"page_views";i:1;s:2:"id";s:20:"17745488850953534872";s:8:"entrance";i:0;s:3:"url";s:22:"http://nayan.by/#close";}}s:6:"totals";a:3:{s:4:"exit";i:22;s:10:"page_views";i:31;s:8:"entrance";i:22;}}', 'no'),
(538, '_transient_timeout_top_referrers_38931095_2016081320160819', '1471599367', 'no'),
(539, '_transient_top_referrers_38931095_2016081320160819', 'a:7:{s:5:"date1";s:8:"20160813";s:5:"date2";s:8:"20160819";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(540, '_transient_timeout_top_searches_38931095_2016081320160819', '1471599367', 'no'),
(541, '_transient_top_searches_38931095_2016081320160819', 'a:7:{s:5:"date1";s:8:"20160813";s:5:"date2";s:8:"20160819";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(643, '_site_transient_timeout_browser_12322bed04cdddb3583b4e568a07e413', '1473017131', 'yes'),
(644, '_site_transient_browser_12322bed04cdddb3583b4e568a07e413', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:13:"Mobile Safari";s:7:"version";s:6:"537.36";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(647, '_transient_timeout_counter_statistics_38931095_2016082220160828', '1472415932', 'no'),
(648, '_transient_counter_statistics_38931095_2016082220160828', 'a:6:{s:5:"date1";s:8:"20160822";s:5:"date2";s:8:"20160828";s:2:"id";i:38931095;s:4:"rows";i:7;s:4:"data";a:7:{i:0;a:9:{s:6:"denial";d:0.1111;s:4:"date";s:8:"20160822";s:6:"visits";i:9;s:8:"visitors";i:3;s:5:"depth";d:2.4443999999999999;s:10:"page_views";i:22;s:10:"visit_time";i:841;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160822";}i:1;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160823";s:6:"visits";i:4;s:8:"visitors";i:2;s:5:"depth";d:1;s:10:"page_views";i:4;s:10:"visit_time";i:18;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160823";}i:2;a:9:{s:6:"denial";d:0.20000000000000001;s:4:"date";s:8:"20160824";s:6:"visits";i:5;s:8:"visitors";i:2;s:5:"depth";d:1.8;s:10:"page_views";i:9;s:10:"visit_time";i:634;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160824";}i:3;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160825";s:6:"visits";i:5;s:8:"visitors";i:4;s:5:"depth";d:1;s:10:"page_views";i:5;s:10:"visit_time";i:17;s:12:"new_visitors";i:2;s:2:"id";s:8:"20160825";}i:4;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160826";s:6:"visits";i:4;s:8:"visitors";i:1;s:5:"depth";d:2.25;s:10:"page_views";i:9;s:10:"visit_time";i:833;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160826";}i:5;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160827";s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:24;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160827";}i:6;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160828";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:1.5;s:10:"page_views";i:3;s:10:"visit_time";i:37;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160828";}}s:6:"totals";a:7:{s:6:"denial";d:0.066699999999999995;s:6:"visits";i:30;s:8:"visitors";i:8;s:5:"depth";d:1.7666999999999999;s:10:"page_views";i:53;s:10:"visit_time";i:477;s:12:"new_visitors";i:5;}}', 'no'),
(649, '_transient_timeout_popular_content_38931095_2016082220160828', '1472415932', 'no'),
(650, '_transient_popular_content_38931095_2016082220160828', 'a:6:{s:5:"date1";s:8:"20160822";s:5:"date2";s:8:"20160828";s:2:"id";i:38931095;s:4:"rows";i:3;s:4:"data";a:3:{i:0;a:5:{s:4:"exit";i:29;s:10:"page_views";i:51;s:2:"id";s:20:"12670352401070289982";s:8:"entrance";i:29;s:3:"url";s:16:"http://nayan.by/";}i:1;a:5:{s:4:"exit";i:0;s:10:"page_views";i:1;s:2:"id";s:20:"10218997097055050429";s:8:"entrance";i:1;s:3:"url";s:32:"http://nayan.by/контакты";}i:2;a:5:{s:4:"exit";i:1;s:10:"page_views";i:1;s:2:"id";s:20:"17745488850953534872";s:8:"entrance";i:0;s:3:"url";s:22:"http://nayan.by/#close";}}s:6:"totals";a:3:{s:4:"exit";i:30;s:10:"page_views";i:53;s:8:"entrance";i:30;}}', 'no'),
(651, '_transient_timeout_top_referrers_38931095_2016082220160828', '1472415932', 'no'),
(652, '_transient_top_referrers_38931095_2016082220160828', 'a:7:{s:5:"date1";s:8:"20160822";s:5:"date2";s:8:"20160828";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(653, '_transient_timeout_top_searches_38931095_2016082220160828', '1472415932', 'no'),
(654, '_transient_top_searches_38931095_2016082220160828', 'a:7:{s:5:"date1";s:8:"20160822";s:5:"date2";s:8:"20160828";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:5:{s:6:"denial";d:0;s:6:"visits";i:1;s:5:"depth";d:6;s:10:"page_views";i:6;s:10:"visit_time";i:4505;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(703, '_site_transient_timeout_browser_ebee2cb07f407535234173ddc900149d', '1473342919', 'yes'),
(704, '_site_transient_browser_ebee2cb07f407535234173ddc900149d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(753, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(754, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(755, 'ml-slider_children', 'a:0:{}', 'yes'),
(762, '_transient_timeout_counter_statistics_38931095_2016082620160901', '1472765800', 'no'),
(763, '_transient_counter_statistics_38931095_2016082620160901', 'a:6:{s:5:"date1";s:8:"20160826";s:5:"date2";s:8:"20160901";s:2:"id";i:38931095;s:4:"rows";i:7;s:4:"data";a:7:{i:0;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160826";s:6:"visits";i:4;s:8:"visitors";i:1;s:5:"depth";d:2.25;s:10:"page_views";i:9;s:10:"visit_time";i:833;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160826";}i:1;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160827";s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:24;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160827";}i:2;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160828";s:6:"visits";i:2;s:8:"visitors";i:2;s:5:"depth";d:2;s:10:"page_views";i:4;s:10:"visit_time";i:122;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160828";}i:3;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160829";s:6:"visits";i:3;s:8:"visitors";i:2;s:5:"depth";d:1.6667000000000001;s:10:"page_views";i:5;s:10:"visit_time";i:232;s:12:"new_visitors";i:1;s:2:"id";s:8:"20160829";}i:4;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160830";s:6:"visits";i:1;s:8:"visitors";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:29;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160830";}i:5;a:9:{s:6:"denial";d:0;s:4:"date";s:8:"20160831";s:6:"visits";i:3;s:8:"visitors";i:1;s:5:"depth";d:1.6667000000000001;s:10:"page_views";i:5;s:10:"visit_time";i:728;s:12:"new_visitors";i:0;s:2:"id";s:8:"20160831";}i:6;a:9:{s:6:"denial";d:0.18179999999999999;s:4:"date";s:8:"20160901";s:6:"visits";i:11;s:8:"visitors";i:6;s:5:"depth";d:6.9090999999999996;s:10:"page_views";i:76;s:10:"visit_time";i:965;s:12:"new_visitors";i:5;s:2:"id";s:8:"20160901";}}s:6:"totals";a:7:{s:6:"denial";d:0.080000000000000002;s:6:"visits";i:25;s:8:"visitors";i:10;s:5:"depth";d:4.04;s:10:"page_views";i:101;s:10:"visit_time";i:685;s:12:"new_visitors";i:8;}}', 'no'),
(764, '_transient_timeout_popular_content_38931095_2016082620160901', '1472765800', 'no'),
(765, '_transient_popular_content_38931095_2016082620160901', 'a:6:{s:5:"date1";s:8:"20160826";s:5:"date2";s:8:"20160901";s:2:"id";i:38931095;s:4:"rows";i:6;s:4:"data";a:5:{i:0;a:5:{s:4:"exit";i:22;s:10:"page_views";i:45;s:2:"id";s:20:"12670352401070289982";s:8:"entrance";i:23;s:3:"url";s:16:"http://nayan.by/";}i:1;a:5:{s:4:"exit";i:2;s:10:"page_views";i:43;s:2:"id";s:20:"17745488850953534872";s:8:"entrance";i:1;s:3:"url";s:22:"http://nayan.by/#close";}i:2;a:5:{s:4:"exit";i:0;s:10:"page_views";i:9;s:2:"id";s:20:"18277635987945645982";s:8:"entrance";i:0;s:3:"url";s:21:"http://nayan.by/#win1";}i:3;a:5:{s:4:"exit";i:0;s:10:"page_views";i:2;s:2:"id";s:19:"1101957287265425518";s:8:"entrance";i:0;s:3:"url";s:21:"http://nayan.by/#win6";}i:4;a:5:{s:4:"exit";i:0;s:10:"page_views";i:1;s:2:"id";s:19:"4779400955724918057";s:8:"entrance";i:0;s:3:"url";s:21:"http://nayan.by/#win4";}}s:6:"totals";a:3:{s:4:"exit";i:25;s:10:"page_views";i:101;s:8:"entrance";i:25;}}', 'no'),
(766, '_transient_timeout_top_referrers_38931095_2016082620160901', '1472765800', 'no'),
(767, '_transient_top_referrers_38931095_2016082620160901', 'a:6:{s:5:"date1";s:8:"20160826";s:5:"date2";s:8:"20160901";s:2:"id";i:38931095;s:4:"rows";i:1;s:4:"data";a:1:{i:0;a:7:{s:6:"denial";d:0;s:6:"visits";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:14;s:2:"id";s:20:"10254260384283131212";s:3:"url";s:35:"http://aclick.m8d.pw/background.php";}}s:6:"totals";a:5:{s:6:"denial";d:0;s:6:"visits";i:1;s:5:"depth";d:1;s:10:"page_views";i:1;s:10:"visit_time";i:14;}}', 'no'),
(768, '_transient_timeout_top_searches_38931095_2016082620160901', '1472765801', 'no'),
(769, '_transient_top_searches_38931095_2016082620160901', 'a:7:{s:5:"date1";s:8:"20160826";s:5:"date2";s:8:"20160901";s:2:"id";i:38931095;s:4:"rows";i:0;s:4:"data";a:0:{}s:6:"totals";a:2:{s:6:"visits";i:0;s:10:"page_views";i:0;}s:6:"errors";a:1:{i:0;a:2:{s:4:"code";s:11:"ERR_NO_DATA";s:4:"text";s:57:"Нет данных за выбранный период.";}}}', 'no'),
(861, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"webmaster@nayan.by";s:7:"version";s:6:"4.5.13";s:9:"timestamp";i:1516170940;}', 'yes'),
(1133, '_site_transient_timeout_browser_51874df863d9bfae72869c204369dfc7', '1475610792', 'yes'),
(1134, '_site_transient_browser_51874df863d9bfae72869c204369dfc7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1590, '_site_transient_timeout_browser_7e3e7b553b2a4d45629dd52e2338a980', '1477511222', 'yes'),
(1591, '_site_transient_browser_7e3e7b553b2a4d45629dd52e2338a980', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1614, '_site_transient_timeout_popular_importers_ru_RU', '1477081349', 'yes'),
(1615, '_site_transient_popular_importers_ru_RU', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(1621, '_site_transient_timeout_available_translations', '1476921652', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1622, '_site_transient_available_translations', 'a:81:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-09-03 15:24:06";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.4/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-14 10:53:34";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-18 20:18:13";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-27 08:19:49";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-14 05:03:35";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-11 20:22:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-01 14:29:56";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-28 11:16:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.4/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-26 10:08:23";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-30 18:59:13";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.4/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-30 21:42:25";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-26 19:02:02";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-26 19:24:51";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-21 21:28:52";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-21 22:23:41";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-21 22:55:40";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-29 13:59:02";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-21 19:09:44";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-15 15:42:15";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-29 15:10:17";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-05 22:16:54";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-01 14:32:46";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-23 19:36:14";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-07 15:28:20";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-30 11:41:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-20 14:58:27";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-26 09:08:24";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-13 12:55:08";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-22 06:33:34";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-29 13:30:07";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-28 21:28:18";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-26 15:19:37";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-22 11:01:09";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-11 16:18:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-21 18:58:51";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-29 09:14:16";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-19 01:01:44";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-16 10:17:50";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-17 17:39:43";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-15 07:32:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-23 09:09:28";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-03 22:34:27";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-26 13:19:17";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-28 05:36:22";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-09 14:35:35";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-15 10:43:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-23 11:56:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-09-23 13:45:56";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.4/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-23 08:13:15";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-30 23:41:16";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-10-16 13:49:40";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-28 05:26:21";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-26 13:55:57";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-08-15 21:05:03";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-29 21:37:59";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-23 09:08:48";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-28 05:05:25";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-23 10:13:40";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-30 10:22:26";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-26 08:25:58";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-07-20 19:27:06";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(1712, '_site_transient_timeout_browser_a577a018a38e33733b85874abbc32db6', '1477988834', 'yes'),
(1713, '_site_transient_browser_a577a018a38e33733b85874abbc32db6', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1740, 'category_children', 'a:0:{}', 'yes'),
(5205, '_site_transient_timeout_browser_5d9a37c6a96acca914609d0251644dda', '1497359275', 'yes'),
(5206, '_site_transient_browser_5d9a37c6a96acca914609d0251644dda', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(5721, '_site_transient_timeout_browser_ba081c70c62b1a73f7586809b37ba98f', '1501443821', 'yes'),
(5722, '_site_transient_browser_ba081c70c62b1a73f7586809b37ba98f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(5734, '_transient_timeout_plugin_slugs', '1516884046', 'no'),
(5735, '_transient_plugin_slugs', 'a:8:{i:0;s:27:"autoptimize/autoptimize.php";i:1;s:25:"callphoner/callphoner.php";i:2;s:35:"googleanalytics/googleanalytics.php";i:3;s:25:"google-maps/googlemap.php";i:4;s:22:"hyper-cache/plugin.php";i:5;s:23:"ml-slider/ml-slider.php";i:6;s:41:"scroll-back-to-top/scroll-back-to-top.php";i:7;s:33:"yandex-metrica/yandex-metrica.php";}', 'no'),
(6839, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1516784085;s:7:"checked";a:1:{s:5:"nayan";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(7598, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:6:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.2.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.2";s:7:"version";s:5:"4.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.2";s:7:"version";s:5:"4.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.2";s:7:"version";s:5:"4.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.8.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.8.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.5";s:7:"version";s:5:"4.8.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.9.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.9-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.9-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.9";s:7:"version";s:5:"4.7.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:5;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.6.10.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.6.10.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.10-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.6.10-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:6:"4.6.10";s:7:"version";s:6:"4.6.10";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1516784079;s:15:"version_checked";s:6:"4.5.13";s:12:"translations";a:0:{}}', 'yes'),
(7672, '_site_transient_timeout_theme_roots', '1516785881', 'yes'),
(7673, '_site_transient_theme_roots', 'a:1:{s:5:"nayan";s:7:"/themes";}', 'yes'),
(7674, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1516797645;s:7:"checked";a:8:{s:27:"autoptimize/autoptimize.php";s:5:"2.0.2";s:25:"callphoner/callphoner.php";s:3:"1.1";s:35:"googleanalytics/googleanalytics.php";s:5:"1.0.6";s:25:"google-maps/googlemap.php";s:5:"2.1.4";s:22:"hyper-cache/plugin.php";s:5:"3.2.6";s:23:"ml-slider/ml-slider.php";s:5:"3.3.7";s:41:"scroll-back-to-top/scroll-back-to-top.php";s:5:"1.1.3";s:33:"yandex-metrica/yandex-metrica.php";s:3:"1.3";}s:8:"response";a:6:{s:27:"autoptimize/autoptimize.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/autoptimize";s:4:"slug";s:11:"autoptimize";s:6:"plugin";s:27:"autoptimize/autoptimize.php";s:11:"new_version";s:5:"2.3.2";s:3:"url";s:42:"https://wordpress.org/plugins/autoptimize/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/autoptimize.2.3.2.zip";s:5:"icons";a:2:{s:2:"1x";s:64:"https://ps.w.org/autoptimize/assets/icon-128x128.jpg?rev=1315940";s:7:"default";s:64:"https://ps.w.org/autoptimize/assets/icon-128x128.jpg?rev=1315940";}s:7:"banners";a:2:{s:2:"1x";s:66:"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920";s:7:"default";s:66:"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:35:"googleanalytics/googleanalytics.php";O:8:"stdClass":11:{s:2:"id";s:29:"w.org/plugins/googleanalytics";s:4:"slug";s:15:"googleanalytics";s:6:"plugin";s:35:"googleanalytics/googleanalytics.php";s:11:"new_version";s:5:"2.1.3";s:3:"url";s:46:"https://wordpress.org/plugins/googleanalytics/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/googleanalytics.2.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/googleanalytics/assets/icon-256x256.jpg?rev=1568571";s:7:"default";s:68:"https://ps.w.org/googleanalytics/assets/icon-256x256.jpg?rev=1568571";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/googleanalytics/assets/banner-772x250.jpg?rev=1568571";s:7:"default";s:70:"https://ps.w.org/googleanalytics/assets/banner-772x250.jpg?rev=1568571";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.7.8";s:13:"compatibility";O:8:"stdClass":0:{}}s:25:"google-maps/googlemap.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/google-maps";s:4:"slug";s:11:"google-maps";s:6:"plugin";s:25:"google-maps/googlemap.php";s:11:"new_version";s:5:"2.2.9";s:3:"url";s:42:"https://wordpress.org/plugins/google-maps/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/google-maps.2.2.9.zip";s:5:"icons";a:2:{s:2:"1x";s:64:"https://ps.w.org/google-maps/assets/icon-128x128.png?rev=1651674";s:7:"default";s:64:"https://ps.w.org/google-maps/assets/icon-128x128.png?rev=1651674";}s:7:"banners";a:2:{s:2:"1x";s:66:"https://ps.w.org/google-maps/assets/banner-772x250.png?rev=1651674";s:7:"default";s:66:"https://ps.w.org/google-maps/assets/banner-772x250.png?rev=1651674";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:22:"hyper-cache/plugin.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/hyper-cache";s:4:"slug";s:11:"hyper-cache";s:6:"plugin";s:22:"hyper-cache/plugin.php";s:11:"new_version";s:5:"3.3.4";s:3:"url";s:42:"https://wordpress.org/plugins/hyper-cache/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hyper-cache.3.3.4.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hyper-cache/assets/icon-256x256.png?rev=1064221";s:7:"default";s:64:"https://ps.w.org/hyper-cache/assets/icon-256x256.png?rev=1064221";}s:7:"banners";a:2:{s:2:"1x";s:66:"https://ps.w.org/hyper-cache/assets/banner-772x250.png?rev=1064196";s:7:"default";s:66:"https://ps.w.org/hyper-cache/assets/banner-772x250.png?rev=1064196";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.8.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":11:{s:2:"id";s:23:"w.org/plugins/ml-slider";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:5:"3.6.7";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/ml-slider.3.6.7.zip";s:5:"icons";a:4:{s:2:"1x";s:62:"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1000654";s:2:"2x";s:62:"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1000654";s:3:"svg";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654";s:7:"default";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654";}s:7:"banners";a:3:{s:2:"2x";s:65:"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195";s:2:"1x";s:64:"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1686195";s:7:"default";s:65:"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"yandex-metrica/yandex-metrica.php";O:8:"stdClass":11:{s:2:"id";s:28:"w.org/plugins/yandex-metrica";s:4:"slug";s:14:"yandex-metrica";s:6:"plugin";s:33:"yandex-metrica/yandex-metrica.php";s:11:"new_version";s:5:"1.6.2";s:3:"url";s:45:"https://wordpress.org/plugins/yandex-metrica/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/yandex-metrica.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/yandex-metrica/assets/icon-128x128.jpg?rev=1416613";s:2:"2x";s:67:"https://ps.w.org/yandex-metrica/assets/icon-256x256.jpg?rev=1416613";s:7:"default";s:67:"https://ps.w.org/yandex-metrica/assets/icon-256x256.jpg?rev=1416613";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/yandex-metrica/assets/banner-772x250.png?rev=659834";s:7:"default";s:68:"https://ps.w.org/yandex-metrica/assets/banner-772x250.png?rev=659834";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:25:"callphoner/callphoner.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/callphoner";s:4:"slug";s:10:"callphoner";s:6:"plugin";s:25:"callphoner/callphoner.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:41:"https://wordpress.org/plugins/callphoner/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/callphoner.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/callphoner/assets/icon-128x128.png?rev=1253139";s:2:"2x";s:63:"https://ps.w.org/callphoner/assets/icon-256x256.png?rev=1253139";s:7:"default";s:63:"https://ps.w.org/callphoner/assets/icon-256x256.png?rev=1253139";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/callphoner/assets/banner-772x250.png?rev=1253139";s:7:"default";s:65:"https://ps.w.org/callphoner/assets/banner-772x250.png?rev=1253139";}s:11:"banners_rtl";a:0:{}}s:41:"scroll-back-to-top/scroll-back-to-top.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/scroll-back-to-top";s:4:"slug";s:18:"scroll-back-to-top";s:6:"plugin";s:41:"scroll-back-to-top/scroll-back-to-top.php";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:49:"https://wordpress.org/plugins/scroll-back-to-top/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/scroll-back-to-top.1.1.4.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/scroll-back-to-top/assets/banner-772x250.png?rev=924421";s:7:"default";s:72:"https://ps.w.org/scroll-back-to-top/assets/banner-772x250.png?rev=924421";}s:11:"banners_rtl";a:0:{}}}}', 'yes'),
(7675, '_site_transient_timeout_browser_b876c8fd7fc402e60530b64622320f7a', '1517402396', 'yes'),
(7676, '_site_transient_browser_b876c8fd7fc402e60530b64622320f7a', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"63.0.3239.132";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'yes'),
(7677, '_transient_timeout_metrica_counter_38931095', '1516798724', 'no'),
(7678, '_transient_metrica_counter_38931095', '', 'no'),
(7679, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1516840829', 'no'),
(7680, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1516840829', 'no'),
(7681, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1516797629', 'no'),
(7682, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1516840829', 'no'),
(7683, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 142262 out of -1 bytes received</p></div><div class="rss-widget"><p><strong>Ошибка RSS</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 208272 out of 412098 bytes received</p></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Популярный плагин:</span> Yoast SEO&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=wordpress-seo&amp;_wpnonce=0589b35017&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Установить Yoast SEO">(Установить)</a></li></ul></div>', 'no'),
(7684, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1516808461', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(7685, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4418;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2533;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2532;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2391;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1855;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1628;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1622;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1445;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1377;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1376;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1367;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1292;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1282;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1176;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1081;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1056;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1008;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:979;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:855;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:848;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:819;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:790;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:786;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:683;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:682;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:678;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:671;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:669;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:653;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:648;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:637;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:624;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:623;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:602;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:600;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:594;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:592;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:584;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:582;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:575;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:552;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:539;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:534;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:524;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:515;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:508;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:507;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:501;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:485;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:484;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:482;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:475;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:469;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:463;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:460;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:455;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:450;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:449;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:432;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:421;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:418;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:416;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:414;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:410;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:408;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:407;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:400;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:391;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:387;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:382;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:361;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:359;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:354;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:351;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:340;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:338;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:337;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:337;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:332;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:331;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:331;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:330;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:328;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:325;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:324;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:314;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:312;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:308;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:301;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:297;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:292;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:288;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:288;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:286;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:285;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:284;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:282;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:280;}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1500923981:1'),
(7, 5, '_edit_last', '1'),
(8, 5, '_edit_lock', '1476910477:1'),
(27, 9, '_menu_item_type', 'custom'),
(28, 9, '_menu_item_menu_item_parent', '0'),
(29, 9, '_menu_item_object_id', '9'),
(30, 9, '_menu_item_object', 'custom'),
(31, 9, '_menu_item_target', ''),
(32, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 9, '_menu_item_xfn', ''),
(34, 9, '_menu_item_url', '#block_1'),
(36, 10, '_menu_item_type', 'custom'),
(37, 10, '_menu_item_menu_item_parent', '0'),
(38, 10, '_menu_item_object_id', '10'),
(39, 10, '_menu_item_object', 'custom'),
(40, 10, '_menu_item_target', ''),
(41, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 10, '_menu_item_xfn', ''),
(43, 10, '_menu_item_url', '#block_2'),
(45, 11, '_menu_item_type', 'custom'),
(46, 11, '_menu_item_menu_item_parent', '0'),
(47, 11, '_menu_item_object_id', '11'),
(48, 11, '_menu_item_object', 'custom'),
(49, 11, '_menu_item_target', ''),
(50, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 11, '_menu_item_xfn', ''),
(52, 11, '_menu_item_url', '#block_3'),
(54, 12, '_menu_item_type', 'custom'),
(55, 12, '_menu_item_menu_item_parent', '0'),
(56, 12, '_menu_item_object_id', '12'),
(57, 12, '_menu_item_object', 'custom'),
(58, 12, '_menu_item_target', ''),
(59, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 12, '_menu_item_xfn', ''),
(61, 12, '_menu_item_url', '#block_4'),
(63, 13, '_edit_last', '1'),
(64, 13, '_edit_lock', '1471170000:1'),
(77, 20, '_edit_last', '1'),
(78, 20, '_edit_lock', '1472412238:1'),
(83, 23, '_edit_last', '1'),
(84, 23, '_edit_lock', '1471169886:1'),
(87, 25, '_edit_last', '1'),
(88, 25, '_edit_lock', '1471170220:1'),
(93, 27, '_edit_last', '1'),
(94, 27, '_edit_lock', '1471170237:1'),
(99, 30, '_edit_last', '1'),
(100, 30, '_edit_lock', '1500924030:1'),
(110, 34, '_edit_last', '1'),
(111, 34, '_edit_lock', '1500924003:1'),
(123, 2, '_edit_last', '1'),
(179, 27, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:44;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1471166059;}'),
(208, 79, '_edit_last', '1'),
(209, 79, '_edit_lock', '1476908672:1'),
(216, 86, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"700";s:6:"height";s:3:"300";s:3:"spw";s:1:"7";s:3:"sph";s:1:"5";s:5:"delay";s:4:"3500";s:6:"sDelay";s:2:"30";s:7:"opacity";s:1:"0";s:10:"titleSpeed";s:3:"500";s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:0:"";s:8:"nextText";s:0:"";s:6:"slices";s:2:"15";s:6:"center";s:4:"true";s:9:"smartCrop";s:8:"disabled";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:4:"true";s:10:"noConflict";s:5:"false";s:12:"smoothHeight";s:5:"false";}'),
(217, 87, '_wp_attached_file', '2016/09/1.jpg'),
(218, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:913;s:6:"height";i:643;s:4:"file";s:13:"2016/09/1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x211.jpg";s:5:"width";i:300;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x541.jpg";s:5:"width";i:768;s:6:"height";i:541;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(219, 88, '_wp_attached_file', '2016/09/2.jpg'),
(220, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:909;s:6:"height";i:641;s:4:"file";s:13:"2016/09/2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"2-768x542.jpg";s:5:"width";i:768;s:6:"height";i:542;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(221, 87, 'ml-slider_type', 'image'),
(222, 88, 'ml-slider_type', 'image'),
(223, 87, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:73:"/var/www/nayan/data/www/nayan.by/wp-content/uploads/2016/09/1-700x300.jpg";s:4:"file";s:13:"1-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(224, 88, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:73:"/var/www/nayan/data/www/nayan.by/wp-content/uploads/2016/09/2-700x300.jpg";s:4:"file";s:13:"2-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(225, 87, 'ml-slider_crop_position', 'center-center'),
(226, 87, '_wp_attachment_image_alt', ''),
(227, 88, 'ml-slider_crop_position', 'center-center'),
(228, 88, '_wp_attachment_image_alt', ''),
(234, 90, '_wp_attached_file', '2016/09/coder.png'),
(235, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:768;s:4:"file";s:17:"2016/09/coder.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"coder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"coder-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:17:"coder-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"coder-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(236, 90, 'ml-slider_type', 'image'),
(237, 92, '_wp_attached_file', '2016/10/КМС.jpg'),
(238, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:793;s:6:"height";i:573;s:4:"file";s:18:"2016/10/КМС.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"КМС-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"КМС-300x217.jpg";s:5:"width";i:300;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"КМС-768x555.jpg";s:5:"width";i:768;s:6:"height";i:555;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(239, 93, '_wp_attached_file', '2016/10/товар.jpg'),
(240, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:814;s:6:"height";i:577;s:4:"file";s:22:"2016/10/товар.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"товар-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"товар-300x213.jpg";s:5:"width";i:300;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"товар-768x544.jpg";s:5:"width";i:768;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(241, 90, '_edit_lock', '1476907968:1'),
(242, 88, '_edit_lock', '1476907984:1'),
(243, 87, '_edit_lock', '1476907989:1'),
(244, 92, '_edit_lock', '1476908066:1'),
(245, 92, '_edit_last', '1'),
(246, 96, '_edit_last', '1'),
(249, 96, '_edit_lock', '1476908333:1'),
(250, 2, '_thumbnail_id', '92'),
(251, 79, '_thumbnail_id', '93'),
(252, 92, 'ml-slider_type', 'image'),
(253, 93, 'ml-slider_type', 'image'),
(254, 92, 'ml-slider_crop_position', 'center-center'),
(255, 92, '_wp_attachment_image_alt', ''),
(256, 93, 'ml-slider_crop_position', 'center-center'),
(257, 93, '_wp_attachment_image_alt', ''),
(258, 98, '_wp_attached_file', '2016/10/Google-Partners-медийная.jpg'),
(259, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1380;s:6:"height";i:977;s:4:"file";s:44:"2016/10/Google-Partners-медийная.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"Google-Partners-медийная-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"Google-Partners-медийная-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"Google-Partners-медийная-768x544.jpg";s:5:"width";i:768;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"Google-Partners-медийная-1024x725.jpg";s:5:"width";i:1024;s:6:"height";i:725;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(260, 99, '_wp_attached_file', '2016/10/Google-Partners-мобильная.jpg'),
(261, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1380;s:6:"height";i:977;s:4:"file";s:46:"2016/10/Google-Partners-мобильная.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"Google-Partners-мобильная-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"Google-Partners-мобильная-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Google-Partners-мобильная-768x544.jpg";s:5:"width";i:768;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"Google-Partners-мобильная-1024x725.jpg";s:5:"width";i:1024;s:6:"height";i:725;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(262, 100, '_wp_attached_file', '2016/10/Google-Partners-поиск.jpg'),
(263, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1380;s:6:"height";i:977;s:4:"file";s:38:"2016/10/Google-Partners-поиск.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"Google-Partners-поиск-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"Google-Partners-поиск-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"Google-Partners-поиск-768x544.jpg";s:5:"width";i:768;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"Google-Partners-поиск-1024x725.jpg";s:5:"width";i:1024;s:6:"height";i:725;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(264, 101, '_wp_attached_file', '2016/10/Google-Partners-товарная.jpg'),
(265, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1380;s:6:"height";i:977;s:4:"file";s:44:"2016/10/Google-Partners-товарная.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"Google-Partners-товарная-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"Google-Partners-товарная-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"Google-Partners-товарная-768x544.jpg";s:5:"width";i:768;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"Google-Partners-товарная-1024x725.jpg";s:5:"width";i:1024;s:6:"height";i:725;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(266, 98, 'ml-slider_type', 'image'),
(267, 99, 'ml-slider_type', 'image'),
(268, 100, 'ml-slider_type', 'image'),
(269, 101, 'ml-slider_type', 'image'),
(270, 98, 'ml-slider_crop_position', 'center-center'),
(271, 98, '_wp_attachment_image_alt', ''),
(272, 99, 'ml-slider_crop_position', 'center-center'),
(273, 99, '_wp_attachment_image_alt', ''),
(274, 100, 'ml-slider_crop_position', 'center-center'),
(275, 100, '_wp_attachment_image_alt', ''),
(276, 101, 'ml-slider_crop_position', 'center-center'),
(277, 101, '_wp_attachment_image_alt', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-05-10 03:48:21', '2016-05-10 03:48:21', '', 'Landing Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-10-19 20:23:44', '2016-10-19 20:23:44', '', 0, 'http://wp452m.a10-52-158-154.qa.plesk.ru/wordpress/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-08-03 15:19:06', '2016-08-03 15:19:06', 'на связи: пн - вс 9:00-18:00                     +375(44)747-50-73', 'Режим работы', '', 'publish', 'open', 'open', '', '%d1%80%d0%b5%d0%b6%d0%b8%d0%bc-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2016-08-14 10:21:45', '2016-08-14 10:21:45', '', 0, 'http://nayan.by/?p=5', 0, 'post', '', 0),
(6, 1, '2016-08-03 15:19:06', '2016-08-03 15:19:06', 'на связи:пн-вс 9:00-18:00 +375(44)747-50-73', 'Режим работы', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-03 15:19:06', '2016-08-03 15:19:06', '', 5, 'http://nayan.by/?p=6', 0, 'revision', '', 0),
(9, 1, '2016-08-03 15:24:00', '2016-08-03 15:24:00', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2016-08-03 15:27:06', '2016-08-03 15:27:06', '', 0, 'http://nayan.by/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2016-08-03 15:25:59', '2016-08-03 15:25:59', '', 'Принцип работы', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b8%d0%bd%d1%86%d0%b8%d0%bf-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2016-08-03 15:27:06', '2016-08-03 15:27:06', '', 0, 'http://nayan.by/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2016-08-03 15:25:59', '2016-08-03 15:25:59', '', 'Цены', '', 'publish', 'closed', 'closed', '', '%d1%86%d0%b5%d0%bd%d1%8b', '', '', '2016-08-03 15:27:06', '2016-08-03 15:27:06', '', 0, 'http://nayan.by/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2016-08-03 15:26:26', '2016-08-03 15:26:26', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2016-08-03 15:27:06', '2016-08-03 15:27:06', '', 0, 'http://nayan.by/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2016-08-03 15:33:15', '2016-08-03 15:33:15', 'Знакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо, его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной кампании. Пишем тексты к каждому объявлению, согласуем.', 'Начало', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b0%d1%87%d0%b0%d0%bb%d0%be', '', '', '2016-08-14 10:11:29', '2016-08-14 10:11:29', '', 0, 'http://nayan.by/?p=13', 0, 'post', '', 0),
(14, 1, '2016-08-03 15:33:15', '2016-08-03 15:33:15', 'Знакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-03 15:33:15', '2016-08-03 15:33:15', '', 13, 'http://nayan.by/?p=14', 0, 'revision', '', 0),
(15, 1, '2016-08-03 15:35:04', '2016-08-03 15:35:04', '&nbsp;\n\nЗнакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2016-08-03 15:35:04', '2016-08-03 15:35:04', '', 13, 'http://nayan.by/?p=15', 0, 'revision', '', 0),
(16, 1, '2016-08-03 15:35:26', '2016-08-03 15:35:26', '[edsanimate_start entry_animation_type= "fadeInLeftBig" entry_delay= "0" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "1" keep= "yes" animate_on= "scroll" scroll_offset= "75" custom_css_class= ""]\r\n\r\nЗнакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.\r\n\r\n[edsanimate_end]', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-03 15:35:26', '2016-08-03 15:35:26', '', 13, 'http://nayan.by/?p=16', 0, 'revision', '', 0),
(17, 1, '2016-08-03 15:35:51', '2016-08-03 15:35:51', '[edsanimate_start entry_animation_type= "fadeInLeftBig" entry_delay= "0" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "1" keep= "yes" animate_on= "scroll" scroll_offset= "85" custom_css_class= ""]\r\n\r\nЗнакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.\r\n\r\n[edsanimate_end]', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-03 15:35:51', '2016-08-03 15:35:51', '', 13, 'http://nayan.by/?p=17', 0, 'revision', '', 0),
(18, 1, '2016-08-03 15:36:21', '2016-08-03 15:36:21', '[edsanimate_start entry_animation_type= "fadeInLeftBig" entry_delay= "0" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "1" keep= "yes" animate_on= "scroll" scroll_offset= "90" custom_css_class= ""]\r\n\r\nЗнакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.\r\n\r\n[edsanimate_end]', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-03 15:36:21', '2016-08-03 15:36:21', '', 13, 'http://nayan.by/?p=18', 0, 'revision', '', 0),
(19, 1, '2016-08-03 15:36:41', '2016-08-03 15:36:41', '[edsanimate_start entry_animation_type= "fadeInLeftBig" entry_delay= "0" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "1" keep= "yes" animate_on= "scroll" scroll_offset= "95" custom_css_class= ""]\r\n\r\nЗнакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.\r\n\r\n[edsanimate_end]', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-03 15:36:41', '2016-08-03 15:36:41', '', 13, 'http://nayan.by/?p=19', 0, 'revision', '', 0),
(20, 1, '2016-08-03 15:38:36', '2016-08-03 15:38:36', 'Заключаем договор, производите оплату. Заводим аккаунт, настраиваем и запускаем рекламную кампанию, устанавливаем счетчики для отслеживания эффективности. Вы получаете заинтересованных посетителей на Ваш сайт.', 'Запуск', '', 'publish', 'open', 'open', '', '%d0%b7%d0%b0%d0%bf%d1%83%d1%81%d0%ba', '', '', '2016-08-14 10:12:07', '2016-08-14 10:12:07', '', 0, 'http://nayan.by/?p=20', 0, 'post', '', 0),
(21, 1, '2016-08-03 15:38:36', '2016-08-03 15:38:36', '[edsanimate_start entry_animation_type= "fadeIn" entry_delay= "0" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "1" keep= "yes" animate_on= "scroll" scroll_offset= "95" custom_css_class= ""]\r\n\r\nЗаключаем договор, производите оплату. Заводим аккаунт, настраиваем и запускаем рекламную кампанию, устанавливаем счетчики для отслеживания эффективности кампании. Вы получаете заинтересованных посетителей на ваш сайт.\r\n\r\n[edsanimate_end]', 'Запуск', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-08-03 15:38:36', '2016-08-03 15:38:36', '', 20, 'http://nayan.by/?p=21', 0, 'revision', '', 0),
(23, 1, '2016-08-03 15:40:22', '2016-08-03 15:40:22', 'Анализируя полученную статистику при постоянном взаимодействии с Вами, работаем над повышением эффективности кампании в рамках бюджета, а также над уменьшением бюджета без потери качества. Доступ к аккаунту и аналитике позволяет Вам следить за ходом рекламой кампании.', 'После старта', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d1%81%d0%bb%d0%b5-%d1%81%d1%82%d0%b0%d1%80%d1%82%d0%b0', '', '', '2016-08-14 10:20:25', '2016-08-14 10:20:25', '', 0, 'http://nayan.by/?p=23', 0, 'post', '', 0),
(24, 1, '2016-08-03 15:40:22', '2016-08-03 15:40:22', '[edsanimate_start entry_animation_type= "fadeInRightBig" entry_delay= "0" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "1" keep= "yes" animate_on= "scroll" scroll_offset= "95" custom_css_class= ""]\r\n\r\nАнализируя полученную статистику при постоянном взаимодействии с Вами, работаем над повышением эффективности компании в рамках бюджета, а так же над уменьшением бюджета без потери качества. Доступ к аккаунту и аналитике, позволяет вам следить за ходом рекламой компании.\r\n\r\n[edsanimate_end]', 'После старта', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-03 15:40:22', '2016-08-03 15:40:22', '', 23, 'http://nayan.by/?p=24', 0, 'revision', '', 0),
(25, 1, '2016-08-03 15:43:52', '2016-08-03 15:43:52', 'Как и все, любим крупные проекты , но умеем работать с любым бюджетом. Да - 10 у.е. тоже может быть рекламным бюджетом. Так же это может быть стоимость Вашего первого сайта.', 'БЮДЖЕТ', '', 'publish', 'open', 'open', '', '%d0%b1%d1%8e%d0%b4%d0%b6%d0%b5%d1%82', '', '', '2016-08-14 10:09:43', '2016-08-14 10:09:43', '', 0, 'http://nayan.by/?p=25', 0, 'post', '', 0),
(26, 1, '2016-08-03 15:43:52', '2016-08-03 15:43:52', '[edsanimate_start entry_animation_type= "flash" entry_delay= "5" entry_duration= "1.5" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "infinite" keep= "yes" animate_on= "load" scroll_offset= "" custom_css_class= ""]\r\n\r\nКак и все, любим крупные проекты , но умеем работать с любым бюджетом. Да - 10 у.е. тоже может быть рекламным бюджетом. Так же это может быть стоимость вашего первого сайта.\r\n\r\n[edsanimate_end]', 'Бюджет', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-08-03 15:43:52', '2016-08-03 15:43:52', '', 25, 'http://nayan.by/?p=26', 0, 'revision', '', 0),
(27, 1, '2016-08-03 15:47:53', '2016-08-03 15:47:53', '0 % - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK, ОК\r\n5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d0%bc%d0%b8%d1%81%d1%81%d0%b8%d1%8f-%d0%b0%d0%b3%d0%b5%d0%bd%d1%81%d1%82%d0%b2%d0%b0', '', '', '2016-08-14 09:17:41', '2016-08-14 09:17:41', '', 0, 'http://nayan.by/?p=27', 0, 'post', '', 0),
(28, 1, '2016-08-03 15:45:32', '2016-08-03 15:45:32', '[edsanimate_start entry_animation_type= "flash" entry_delay= "5" entry_duration= "1.5" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "infinite" keep= "yes" animate_on= "load" scroll_offset= "" custom_css_class= ""]\r\n\r\nКак и все, любим крупные проекты , но умеем работать с любым бюджетом. Да - 10 у.е. тоже может быть рекламным бюджетом. Так же это может быть стоимость вашего первого сайта.\r\n\r\n[edsanimate_end]', 'БЮДЖЕТ', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-08-03 15:45:32', '2016-08-03 15:45:32', '', 25, 'http://nayan.by/?p=28', 0, 'revision', '', 0),
(29, 1, '2016-08-03 15:47:53', '2016-08-03 15:47:53', '[edsanimate_start entry_animation_type= "flash" entry_delay= "5" entry_duration= "1.5" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "infinite" keep= "yes" animate_on= "load" scroll_offset= "" custom_css_class= ""]\r\n\r\n% - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK\r\nOK 5 % - зачисление на аккаун\r\n\r\n[edsanimate_end]', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-03 15:47:53', '2016-08-03 15:47:53', '', 27, 'http://nayan.by/?p=29', 0, 'revision', '', 0),
(30, 1, '2016-08-03 15:49:13', '2016-08-03 15:49:13', 'Персональный менеджер. Настройка аналитики - Метрика/Analytics. Консультация по улучшению работы Вашего сайта и о бесплатных возможностях интернета.', 'БЕСПЛАТНО', '', 'publish', 'open', 'open', '', '%d0%b1%d0%b5%d1%81%d0%bf%d0%bb%d0%b0%d1%82%d0%bd%d0%be', '', '', '2016-08-14 09:19:30', '2016-08-14 09:19:30', '', 0, 'http://nayan.by/?p=30', 0, 'post', '', 0),
(31, 1, '2016-08-03 15:49:13', '2016-08-03 15:49:13', '[edsanimate_start entry_animation_type= "flash" entry_delay= "5" entry_duration= "1.5" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "infinite" keep= "yes" animate_on= "load" scroll_offset= "" custom_css_class= ""]\r\n\r\nПерсональный менеджер. Настройка аналитики, Метрика/Analytics. Консультация по улучшению работы Вашего сайта и о бесплатных возможностях интернета.\r\n\r\n[edsanimate_end]', 'БЕСПЛАТНО', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-03 15:49:13', '2016-08-03 15:49:13', '', 30, 'http://nayan.by/?p=31', 0, 'revision', '', 0),
(34, 1, '2016-08-03 16:04:36', '2016-08-03 16:04:36', 'мы работаем: 09:00 - 18:00\r\nGSM/viber +375 (44) 747-50-73\r\ne-mail: info@nayan.by\r\nSkype: nayan.by\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="#win6">Лицензия/Cертификаты</a>', 'NAYAN internet-marketing', '', 'publish', 'open', 'open', '', 'nayan-internet-marketing', '', '', '2016-09-01 15:53:48', '2016-09-01 15:53:48', '', 0, 'http://nayan.by/?p=34', 0, 'post', '', 0),
(35, 1, '2016-08-03 16:04:36', '2016-08-03 16:04:36', '&nbsp;\r\n\r\n[edsanimate_start entry_animation_type= "pulse" entry_delay= "5" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "infinite" keep= "yes" animate_on= "load" scroll_offset= "" custom_css_class= ""]\r\n\r\nВремя работы: 09:00 - 18:00\r\nЗвоните или пишите: тел/viber +375 (44) 747-50-73\r\n<a href="http://zakaz.com/#">info@nayan.by</a>\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="http://zakaz.com/#">Лицензия/Cертификаты</a>\r\n\r\n[edsanimate_end]', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-03 16:04:36', '2016-08-03 16:04:36', '', 34, 'http://nayan.by/?p=35', 0, 'revision', '', 0),
(36, 1, '2016-08-03 16:05:06', '2016-08-03 16:05:06', '[edsanimate_start entry_animation_type= "pulse" entry_delay= "5" entry_duration= "1" entry_timing= "linear" exit_animation_type= "" exit_delay= "" exit_duration= "" exit_timing= "" animation_repeat= "infinite" keep= "yes" animate_on= "load" scroll_offset= "" custom_css_class= ""]\r\n\r\nВремя работы: 09:00 - 18:00\r\nЗвоните или пишите: тел/viber +375 (44) 747-50-73\r\n<a href="http://zakaz.com/#">info@nayan.by</a>\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="http://zakaz.com/#">Лицензия/Cертификаты</a>\r\n\r\n[edsanimate_end]', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-03 16:05:06', '2016-08-03 16:05:06', '', 34, 'http://nayan.by/?p=36', 0, 'revision', '', 0),
(40, 1, '2016-08-03 16:15:01', '2016-08-03 16:15:01', '', 'Landing Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-08-03 16:15:01', '2016-08-03 16:15:01', '', 2, 'http://nayan.by/?p=40', 0, 'revision', '', 0),
(41, 1, '2016-08-04 09:10:48', '2016-08-04 09:10:48', 'Время работы: 09:00 - 18:00\r\nЗвоните или пишите: тел/viber +375 (44) 747-50-73\r\n<a href="http://zakaz.com/#">info@nayan.by</a>\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="http://zakaz.com/#">Лицензия/Cертификаты</a>', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-04 09:10:48', '2016-08-04 09:10:48', '', 34, 'http://nayan.by/?p=41', 0, 'revision', '', 0),
(42, 1, '2016-08-04 09:11:03', '2016-08-04 09:11:03', 'Персональный менеджер. Настройка аналитики, Метрика/Analytics. Консультация по улучшению работы Вашего сайта и о бесплатных возможностях интернета.', 'БЕСПЛАТНО', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-04 09:11:03', '2016-08-04 09:11:03', '', 30, 'http://nayan.by/?p=42', 0, 'revision', '', 0),
(43, 1, '2016-08-04 09:11:17', '2016-08-04 09:11:17', '% - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK\r\nOK 5 % - зачисление на аккаун', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-04 09:11:17', '2016-08-04 09:11:17', '', 27, 'http://nayan.by/?p=43', 0, 'revision', '', 0),
(44, 1, '2016-08-04 09:11:26', '2016-08-04 09:11:26', '% - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK\r\nOK 5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-04 09:11:26', '2016-08-04 09:11:26', '', 27, 'http://nayan.by/?p=44', 0, 'revision', '', 0),
(45, 1, '2016-08-04 09:11:42', '2016-08-04 09:11:42', 'Как и все, любим крупные проекты , но умеем работать с любым бюджетом. Да - 10 у.е. тоже может быть рекламным бюджетом. Так же это может быть стоимость вашего первого сайта.', 'БЮДЖЕТ', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-08-04 09:11:42', '2016-08-04 09:11:42', '', 25, 'http://nayan.by/?p=45', 0, 'revision', '', 0),
(46, 1, '2016-08-04 09:11:58', '2016-08-04 09:11:58', 'Анализируя полученную статистику при постоянном взаимодействии с Вами, работаем над повышением эффективности компании в рамках бюджета, а так же над уменьшением бюджета без потери качества. Доступ к аккаунту и аналитике, позволяет вам следить за ходом рекламой компании.', 'После старта', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-04 09:11:58', '2016-08-04 09:11:58', '', 23, 'http://nayan.by/?p=46', 0, 'revision', '', 0),
(47, 1, '2016-08-04 09:12:14', '2016-08-04 09:12:14', 'Заключаем договор, производите оплату. Заводим аккаунт, настраиваем и запускаем рекламную кампанию, устанавливаем счетчики для отслеживания эффективности кампании. Вы получаете заинтересованных посетителей на ваш сайт.', 'Запуск', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-08-04 09:12:14', '2016-08-04 09:12:14', '', 20, 'http://nayan.by/?p=47', 0, 'revision', '', 0),
(48, 1, '2016-08-04 09:13:23', '2016-08-04 09:13:23', 'Знакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной компании. Пишем тексты к каждому объявлению, согласуем.', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-04 09:13:23', '2016-08-04 09:13:23', '', 13, 'http://nayan.by/?p=48', 0, 'revision', '', 0),
(56, 1, '2016-08-14 09:05:13', '2016-08-14 09:05:13', 'мы работаем: 09:00 - 18:00\nGSM/viber +375 (44) 747-50-73\ne-mail: info@nayan.by\nSkype: nayan.by\nИП Никифоренко Н.О.\nУНП 192665046\n<a href="https://docs.google.com/presentation/d/1xU0HuUgoh4pmm7ceecYtEvAhqpmZWYtiK7vlHXPkWM0/edit#slide=id.p" target="_blank">Лицензия/Cертификаты</a>', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2016-08-14 09:05:13', '2016-08-14 09:05:13', '', 34, 'http://nayan.by/?p=56', 0, 'revision', '', 0),
(57, 1, '2016-08-04 09:38:06', '2016-08-04 09:38:06', 'Время работы: 09:00 - 18:00\r\nЗвоните или пишите: тел/viber +375 (44) 747-50-73\r\nПочта: info@nayan.by\r\nSkype: nayan.by\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="https://docs.google.com/presentation/d/1xU0HuUgoh4pmm7ceecYtEvAhqpmZWYtiK7vlHXPkWM0/edit#slide=id.p">Лицензия/Cертификаты</a>', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-04 09:38:06', '2016-08-04 09:38:06', '', 34, 'http://nayan.by/?p=57', 0, 'revision', '', 0),
(59, 1, '2016-08-14 09:05:45', '2016-08-14 09:05:45', 'мы работаем: 09:00 - 18:00\r\nGSM/viber +375 (44) 747-50-73\r\ne-mail: info@nayan.by\r\nSkype: nayan.by\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="https://docs.google.com/presentation/d/1xU0HuUgoh4pmm7ceecYtEvAhqpmZWYtiK7vlHXPkWM0/edit#slide=id.p" target="_blank">Лицензия/Cертификаты</a>', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-14 09:05:45', '2016-08-14 09:05:45', '', 34, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(60, 1, '2016-08-14 09:12:26', '2016-08-14 09:12:26', '<pre><span style="color: #000000;">  0 % - Яндекс.Директ</span>\n <span style="color: #000000;"> 10%- Google Adwords</span>\n <span style="color: #000000;"> 10 % - VK, OK</span>\n <span style="color: #000000;"> 5 % - Зачисление на аккаунт</span></pre>', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2016-08-14 09:12:26', '2016-08-14 09:12:26', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(61, 1, '2016-08-14 09:10:02', '2016-08-14 09:10:02', '0 % - <span style="color: #ff0000;">Я</span>ндекс.Директ\r\n10%-<span style="color: #0000ff;"> G</span><span style="color: #ff0000;">o</span><span style="color: #ffff00;">o</span><span style="color: #0000ff;">g</span><span style="color: #339966;">l</span><span style="color: #ff0000;">e</span> Adwords\r\n10 % - <span style="color: #000080;">VK</span>, <span style="color: #ff6600;">OK</span>\r\n5 % - Зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:10:02', '2016-08-14 09:10:02', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(62, 1, '2016-08-14 09:11:22', '2016-08-14 09:11:22', '<span style="color: #000000;">0 % - Яндекс.Директ</span>\r\n<span style="color: #000000;"> 10%- Google Adwords</span>\r\n<span style="color: #000000;"> 10 % - VK, OK</span>\r\n<span style="color: #000000;"> 5 % - Зачисление на аккаунт</span>', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:11:22', '2016-08-14 09:11:22', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(63, 1, '2016-08-14 09:12:39', '2016-08-14 09:12:39', '<pre><span style="color: #000000;">  0 % - Яндекс.Директ</span>\r\n <span style="color: #000000;"> 10%- Google Adwords</span>\r\n <span style="color: #000000;"> 10 % - VK, OK</span>\r\n <span style="color: #000000;"> 5 % - Зачисление на аккаунт</span></pre>', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:12:39', '2016-08-14 09:12:39', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(64, 1, '2016-08-14 09:14:19', '2016-08-14 09:14:19', '% - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK\r\nOK 5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:14:19', '2016-08-14 09:14:19', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(65, 1, '2016-08-14 09:14:46', '2016-08-14 09:14:46', '% - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK\r\n5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:14:46', '2016-08-14 09:14:46', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(66, 1, '2016-08-14 09:15:25', '2016-08-14 09:15:25', '0 % - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK, ОК\r\n5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:15:25', '2016-08-14 09:15:25', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(67, 1, '2016-08-14 09:17:11', '2016-08-14 09:17:11', '0 % - <span style="color: #ff0000;">Я</span>ндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK, ОК\r\n5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:17:11', '2016-08-14 09:17:11', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(68, 1, '2016-08-14 09:17:41', '2016-08-14 09:17:41', '0 % - Яндекс.Директ\r\n10%- Google Adwords\r\n10 % - VK, ОК\r\n5 % - зачисление на аккаунт', 'КОМИССИЯ АГЕНСТВА', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-08-14 09:17:41', '2016-08-14 09:17:41', '', 27, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(69, 1, '2016-08-14 09:19:30', '2016-08-14 09:19:30', 'Персональный менеджер. Настройка аналитики - Метрика/Analytics. Консультация по улучшению работы Вашего сайта и о бесплатных возможностях интернета.', 'БЕСПЛАТНО', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-14 09:19:30', '2016-08-14 09:19:30', '', 30, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(70, 1, '2016-08-14 10:09:43', '2016-08-14 10:09:43', 'Как и все, любим крупные проекты , но умеем работать с любым бюджетом. Да - 10 у.е. тоже может быть рекламным бюджетом. Так же это может быть стоимость Вашего первого сайта.', 'БЮДЖЕТ', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-08-14 10:09:43', '2016-08-14 10:09:43', '', 25, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(71, 1, '2016-08-14 10:10:25', '2016-08-14 10:10:25', 'Заключаем договор, производите оплату. Заводим аккаунт, настраиваем и запускаем рекламную кампанию, устанавливаем счетчики для отслеживания эффективности кампании. Вы получаете заинтересованных посетителей на Ваш сайт.', 'Запуск', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-08-14 10:10:25', '2016-08-14 10:10:25', '', 20, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(72, 1, '2016-08-14 10:11:29', '2016-08-14 10:11:29', 'Знакомимся с Вами и Вашим бизнесом. Анализ сайта, если необходимо, его корректировка или разработка с нуля. Разрабатываем , согласуем с Вами стратегию, инструменты для рекламной кампании. Пишем тексты к каждому объявлению, согласуем.', 'Начало', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-14 10:11:29', '2016-08-14 10:11:29', '', 13, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(73, 1, '2016-08-14 10:12:07', '2016-08-14 10:12:07', 'Заключаем договор, производите оплату. Заводим аккаунт, настраиваем и запускаем рекламную кампанию, устанавливаем счетчики для отслеживания эффективности. Вы получаете заинтересованных посетителей на Ваш сайт.', 'Запуск', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-08-14 10:12:07', '2016-08-14 10:12:07', '', 20, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(74, 1, '2016-08-14 10:19:23', '2016-08-14 10:19:23', 'Анализируя полученную статистику при постоянном взаимодействии с Вами, работаем над повышением эффективности компании в рамках бюджета, а также над уменьшением бюджета без потери качества. Доступ к аккаунту и аналитике позволяет Вам следить за ходом рекламой кампании.', 'После старта', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2016-08-14 10:19:23', '2016-08-14 10:19:23', '', 23, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(75, 1, '2016-08-14 10:13:19', '2016-08-14 10:13:19', 'Анализируя полученную статистику при постоянном взаимодействии с Вами, работаем над повышением эффективности компании в рамках бюджета, а также над уменьшением бюджета без потери качества. Доступ к аккаунту и аналитике позволяет Вам следить за ходом рекламой компании.', 'После старта', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-14 10:13:19', '2016-08-14 10:13:19', '', 23, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(76, 1, '2016-08-14 10:19:33', '2016-08-14 10:19:33', 'Анализируя полученную статистику при постоянном взаимодействии с Вами, работаем над повышением эффективности кампании в рамках бюджета, а также над уменьшением бюджета без потери качества. Доступ к аккаунту и аналитике позволяет Вам следить за ходом рекламой кампании.', 'После старта', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-14 10:19:33', '2016-08-14 10:19:33', '', 23, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(77, 1, '2016-08-14 10:20:49', '2016-08-14 10:20:49', 'на связи:пн-вс 9:00-18:00         +375(44)747-50-73', 'Режим работы', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-14 10:20:49', '2016-08-14 10:20:49', '', 5, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(78, 1, '2016-08-14 10:21:45', '2016-08-14 10:21:45', 'на связи: пн - вс 9:00-18:00                     +375(44)747-50-73', 'Режим работы', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-08-14 10:21:45', '2016-08-14 10:21:45', '', 5, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(79, 1, '2016-10-19 20:26:09', '2016-10-19 20:26:09', '', '', '', 'publish', 'closed', 'closed', '', '79-2', '', '', '2016-10-19 20:26:09', '2016-10-19 20:26:09', '', 0, 'http://nayan.by/?page_id=79', 0, 'page', '', 0),
(80, 1, '2016-08-14 10:56:45', '2016-08-14 10:56:45', '', '', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-08-14 10:56:45', '2016-08-14 10:56:45', '', 79, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(85, 1, '2016-09-01 15:53:48', '2016-09-01 15:53:48', 'мы работаем: 09:00 - 18:00\r\nGSM/viber +375 (44) 747-50-73\r\ne-mail: info@nayan.by\r\nSkype: nayan.by\r\nИП Никифоренко Н.О.\r\nУНП 192665046\r\n<a href="#win6">Лицензия/Cертификаты</a>', 'NAYAN internet-marketing', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-09-01 15:53:48', '2016-09-01 15:53:48', '', 34, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(86, 1, '2016-09-01 15:55:03', '2016-09-01 15:55:03', '', 'Новый слайдер', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d1%8b%d0%b9-%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80', '', '', '2016-10-19 21:51:20', '2016-10-19 21:51:20', '', 0, 'http://nayan.by/?post_type=ml-slider&#038;p=86', 0, 'ml-slider', '', 0),
(87, 1, '2016-09-01 15:55:25', '2016-09-01 15:55:25', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2016-10-19 21:51:20', '2016-10-19 21:51:20', '', 0, 'http://nayan.by/wp-content/uploads/2016/09/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2016-09-01 15:55:27', '2016-09-01 15:55:27', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2016-10-19 21:51:20', '2016-10-19 21:51:20', '', 0, 'http://nayan.by/wp-content/uploads/2016/09/2.jpg', 1, 'attachment', 'image/jpeg', 0),
(90, 1, '2016-09-01 16:26:12', '2016-09-01 16:26:12', '', 'coder', '', 'inherit', 'open', 'closed', '', 'coder', '', '', '2016-09-01 16:28:19', '2016-09-01 16:28:19', '', 0, 'http://nayan.by/wp-content/uploads/2016/09/coder.png', 2, 'attachment', 'image/png', 0),
(92, 1, '2016-10-19 19:50:50', '2016-10-19 19:50:50', '', '%d0%ba%d0%bc%d1%81', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%bc%d1%81', '', '', '2016-10-19 21:51:20', '2016-10-19 21:51:20', '', 0, 'http://nayan.by/wp-content/uploads/2016/10/КМС.jpg', 2, 'attachment', 'image/jpeg', 0),
(93, 1, '2016-10-19 19:50:56', '2016-10-19 19:50:56', '', '%d1%82%d0%be%d0%b2%d0%b0%d1%80', '', 'inherit', 'open', 'closed', '', '%d1%82%d0%be%d0%b2%d0%b0%d1%80', '', '', '2016-10-19 21:51:20', '2016-10-19 21:51:20', '', 0, 'http://nayan.by/wp-content/uploads/2016/10/товар.jpg', 3, 'attachment', 'image/jpeg', 0),
(96, 1, '2016-10-19 20:19:12', '2016-10-19 20:19:12', '<img class="alignnone size-medium wp-image-93" src="http://nayan.by/wp-content/uploads/2016/10/товар-300x213.jpg" alt="%d1%82%d0%be%d0%b2%d0%b0%d1%80" width="300" height="213" />', '', '', 'publish', 'open', 'open', '', '96', '', '', '2016-10-19 20:19:12', '2016-10-19 20:19:12', '', 0, 'http://nayan.by/?p=96', 0, 'post', '', 0),
(97, 1, '2016-10-19 20:19:12', '2016-10-19 20:19:12', '<img class="alignnone size-medium wp-image-93" src="http://nayan.by/wp-content/uploads/2016/10/товар-300x213.jpg" alt="%d1%82%d0%be%d0%b2%d0%b0%d1%80" width="300" height="213" />', '', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2016-10-19 20:19:12', '2016-10-19 20:19:12', '', 96, 'http://nayan.by/контакты', 0, 'revision', '', 0),
(98, 1, '2016-10-19 21:45:14', '2016-10-19 21:45:14', '', 'google-partners-%d0%bc%d0%b5%d0%b4%d0%b8%d0%b9%d0%bd%d0%b0%d1%8f', '', 'inherit', 'open', 'closed', '', 'google-partners-%d0%bc%d0%b5%d0%b4%d0%b8%d0%b9%d0%bd%d0%b0%d1%8f', '', '', '2016-10-19 21:46:02', '2016-10-19 21:46:02', '', 0, 'http://nayan.by/wp-content/uploads/2016/10/Google-Partners-медийная.jpg', 4, 'attachment', 'image/jpeg', 0),
(99, 1, '2016-10-19 21:45:16', '2016-10-19 21:45:16', '', 'google-partners-%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', '', 'inherit', 'open', 'closed', '', 'google-partners-%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', '', '', '2016-10-19 21:46:02', '2016-10-19 21:46:02', '', 0, 'http://nayan.by/wp-content/uploads/2016/10/Google-Partners-мобильная.jpg', 5, 'attachment', 'image/jpeg', 0),
(100, 1, '2016-10-19 21:45:17', '2016-10-19 21:45:17', '', 'google-partners-%d0%bf%d0%be%d0%b8%d1%81%d0%ba', '', 'inherit', 'open', 'closed', '', 'google-partners-%d0%bf%d0%be%d0%b8%d1%81%d0%ba', '', '', '2016-10-19 21:46:02', '2016-10-19 21:46:02', '', 0, 'http://nayan.by/wp-content/uploads/2016/10/Google-Partners-поиск.jpg', 6, 'attachment', 'image/jpeg', 0),
(101, 1, '2016-10-19 21:45:18', '2016-10-19 21:45:18', '', 'google-partners-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d0%bd%d0%b0%d1%8f', '', 'inherit', 'open', 'closed', '', 'google-partners-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d0%bd%d0%b0%d1%8f', '', '', '2016-10-19 21:46:02', '2016-10-19 21:46:02', '', 0, 'http://nayan.by/wp-content/uploads/2016/10/Google-Partners-товарная.jpg', 7, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-01-24 12:39:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-24 12:39:56', '0000-00-00 00:00:00', '', 0, 'http://nayan.by/?p=102', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'top-menu', 'top-menu', 0),
(3, 'Принципы', '%d0%bf%d1%80%d0%b8%d0%bd%d1%86%d0%b8%d0%bf%d1%8b', 0),
(4, 'Цены', '%d1%86%d0%b5%d0%bd%d1%8b', 0),
(6, 'Политика конфиденциальности сайта', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b4%d0%b5%d0%bd%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d1%81%d0%b0%d0%b9%d1%82%d0%b0', 0),
(7, 'ценa', 'cena', 0),
(8, 'E-mail адрес форм обратной связи', 'e-mail-%d0%b0%d0%b4%d1%80%d0%b5%d1%81-%d1%84%d0%be%d1%80%d0%bc-%d0%be%d0%b1%d1%80%d0%b0%d1%82%d0%bd%d0%be%d0%b9-%d1%81%d0%b2%d1%8f%d0%b7%d0%b8', 0),
(9, '86', '86', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(5, 1, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 3, 0),
(20, 3, 0),
(23, 3, 0),
(25, 4, 0),
(27, 4, 0),
(30, 4, 0),
(34, 1, 0),
(87, 9, 0),
(88, 9, 0),
(92, 9, 0),
(93, 9, 0),
(96, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', 'Принцип в работе с клиентами - работать качественно, как для себя.\r\nВаша цель - найти компанию, которая делает свою работу профессионально, честно и за разумные деньги?\r\nПо всей вероятности мы нашли друг друга.', 0, 3),
(4, 4, 'category', '', 0, 3),
(6, 6, 'category', 'Агенство NAYAN, не разглашает персональные данные своих пользователей и гарантирует их безопасность.\r\nИспользуются сведения, предоставляемые пользователем, исключительно с целью связи с ним, в том числе для направления электронных уведомлений.', 0, 0),
(7, 7, 'post_tag', 'стоимость услуг', 0, 0),
(8, 8, 'category', 'info@nayan.by', 0, 0),
(9, 9, 'ml-slider', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nayan'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_user-settings', 'editor=html&post_dfw=on&hidetb=1&libraryContent=browse'),
(16, 1, 'wp_user-settings-time', '1500839133'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '102'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(25, 1, 'wp_media_library_mode', 'list'),
(26, 1, 'session_tokens', 'a:1:{s:64:"d22a7657f0215802684ef5fb1c7d85c180406c1fbbc4ba611fc1c8667a1ec480";a:4:{s:10:"expiration";i:1516970395;s:2:"ip";s:13:"178.120.55.75";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1516797595;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nayan', '$P$B87LLpI90nXEoSmV9.7yNNRy/yLBqi1', 'nayan', 'webmaster@nayan.by', '', '2016-08-03 15:49:20', '', 0, 'nayan');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_g_circles`
--
ALTER TABLE `wp_g_circles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_directions`
--
ALTER TABLE `wp_g_directions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_maps`
--
ALTER TABLE `wp_g_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_markers`
--
ALTER TABLE `wp_g_markers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_polygones`
--
ALTER TABLE `wp_g_polygones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_g_polylines`
--
ALTER TABLE `wp_g_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_g_circles`
--
ALTER TABLE `wp_g_circles`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_g_directions`
--
ALTER TABLE `wp_g_directions`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_g_maps`
--
ALTER TABLE `wp_g_maps`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_g_markers`
--
ALTER TABLE `wp_g_markers`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_g_polygones`
--
ALTER TABLE `wp_g_polygones`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_g_polylines`
--
ALTER TABLE `wp_g_polylines`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7686;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
