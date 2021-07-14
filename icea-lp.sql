-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jul-2021 às 23:03
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `icea-lp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_commentmeta`
--

CREATE TABLE `icea_lp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_comments`
--

CREATE TABLE `icea_lp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_links`
--

CREATE TABLE `icea_lp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_options`
--

CREATE TABLE `icea_lp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_options`
--

INSERT INTO `icea_lp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/icea-lp', 'yes'),
(2, 'home', 'http://localhost/icea-lp', 'yes'),
(3, 'blogname', 'Icea', 'yes'),
(4, 'blogdescription', 'Sofás e Colchões direto da fábrica com o melhor preço! ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'contato@mixsolucoesweb.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:129:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"banners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"banners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"banners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"banners/([^/]+)/embed/?$\";s:40:\"index.php?banners=$matches[1]&embed=true\";s:28:\"banners/([^/]+)/trackback/?$\";s:34:\"index.php?banners=$matches[1]&tb=1\";s:36:\"banners/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&paged=$matches[2]\";s:43:\"banners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&cpage=$matches[2]\";s:32:\"banners/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?banners=$matches[1]&page=$matches[2]\";s:24:\"banners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"banners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"banners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"produtos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"produtos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"produtos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"produtos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"produtos/([^/]+)/embed/?$\";s:41:\"index.php?produtos=$matches[1]&embed=true\";s:29:\"produtos/([^/]+)/trackback/?$\";s:35:\"index.php?produtos=$matches[1]&tb=1\";s:37:\"produtos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&paged=$matches[2]\";s:44:\"produtos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&cpage=$matches[2]\";s:33:\"produtos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?produtos=$matches[1]&page=$matches[2]\";s:25:\"produtos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"produtos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"produtos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"produtos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'icea-lp', 'yes'),
(41, 'stylesheet', 'icea-lp', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1640625481', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'icea_lp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1626297485;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1626326285;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626326584;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626369484;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626369515;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626369518;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625076152;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'acf_version', '5.7.0-beta4', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(168, 'current_theme', 'Acqua Time', 'yes'),
(169, 'theme_mods_clear', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625076081;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(180, 'theme_mods_icea-lp', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:3;s:20:\"footer_institucional\";i:4;s:12:\"footer_ajuda\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(181, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626279199;s:7:\"checked\";a:1:{s:7:\"icea-lp\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(182, 'options_logo', '57', 'no'),
(183, '_options_logo', 'field_60dcabf7ddf0a', 'no'),
(184, 'options_telefone', '(41) 3155-0035', 'no'),
(185, '_options_telefone', 'field_60dcab57ddf03', 'no'),
(186, 'options_whatsapp', '(41) 99998-2603', 'no'),
(187, '_options_whatsapp', 'field_60dcab66ddf04', 'no'),
(188, 'options_sac', '(41) 3501-6710', 'no'),
(189, '_options_sac', 'field_60dcab85ddf05', 'no'),
(190, 'options_e-mail', 'icea@iceaestofados.com.br', 'no'),
(191, '_options_e-mail', 'field_60dcab8fddf06', 'no'),
(192, 'options_horario_de_atendimento', 'Seg a Sex 9 às 19, Sábados das 9 às 18 e Domingos 10 às 18h', 'no'),
(193, '_options_horario_de_atendimento', 'field_60dcab9bddf07', 'no'),
(194, 'options_imagem_pagamento', '79', 'no'),
(195, '_options_imagem_pagamento', 'field_60dcac7c0a18c', 'no'),
(196, 'options_imagens_seguranca', '1', 'no'),
(197, '_options_imagens_seguranca', 'field_60dcacb10a18e', 'no'),
(218, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":1}', 'yes'),
(235, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(238, 'recovery_mode_email_last_sent', '1625242832', 'yes'),
(248, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1626284380;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(249, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"contato@mixsolucoesweb.com.br\";s:7:\"version\";s:5:\"5.7.2\";s:9:\"timestamp\";i:1625246524;}', 'no'),
(251, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(267, 'options_imagens_seguranca_0_imagem', '67', 'no'),
(268, '_options_imagens_seguranca_0_imagem', 'field_60dcace90a18f', 'no'),
(304, '_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', '1626369496', 'no'),
(305, '_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(362, '_site_transient_timeout_theme_roots', '1626286181', 'no'),
(363, '_site_transient_theme_roots', 'a:1:{s:7:\"icea-lp\";s:7:\"/themes\";}', 'no'),
(364, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626284383;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"5.7.0-beta4\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.8\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.7\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}}', 'no'),
(367, '_site_transient_timeout_available_translations', '1626301552', 'no');
INSERT INTO `icea_lp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(368, '_site_transient_available_translations', 'a:126:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-08 18:29:33\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 14:01:58\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-20 19:46:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-25 07:27:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-06 08:29:04\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-30 15:14:54\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 10:32:41\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-09 08:43:53\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-08 07:32:43\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-07 23:23:07\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-07 23:24:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-14 20:06:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.7.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-14 20:06:23\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 13:33:04\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-30 19:50:02\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-16 08:10:36\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 04:12:40\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 07:22:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 04:12:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 04:12:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-18 09:35:35\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-02 03:00:51\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-10 20:43:51\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-04 22:59:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 02:05:15\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-16 02:17:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 02:05:34\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-16 13:07:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.6.4\";s:7:\"updated\";s:19:\"2020-12-11 02:12:59\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.11\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.11/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-24 16:08:10\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 12:40:09\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-28 10:15:19\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-06 05:21:48\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-24 08:28:29\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-30 13:29:35\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-21 09:58:55\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.25\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-28 16:42:59\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 08:03:31\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 13:34:18\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-26 14:52:10\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-24 02:11:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-18 13:45:37\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-20 01:00:08\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-03 08:25:10\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-30 20:40:17\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.11\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.11/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2020-09-30 14:08:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-08 04:56:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-17 10:36:11\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-27 17:07:17\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.6/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-08 06:18:21\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.11\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.11/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-18 08:55:40\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-17 11:46:51\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-10 14:42:01\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-14 08:58:17\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.26\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-02 12:53:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-09 09:41:48\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 08:18:42\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-30 09:51:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-14 06:38:46\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 18:30:49\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.6/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-11 15:17:09\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-23 11:54:14\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:6:\"5.1.10\";s:7:\"updated\";s:19:\"2019-04-30 13:03:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.1.10/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 15:40:47\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 19:47:34\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-02 21:27:49\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.3.8\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.8/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.5.5\";s:7:\"updated\";s:19:\"2021-07-13 19:33:34\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-23 09:26:34\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-17 19:11:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.6\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-23 07:16:16\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-15 12:16:10\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-03 09:42:47\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 03:20:55\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_postmeta`
--

CREATE TABLE `icea_lp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_postmeta`
--

INSERT INTO `icea_lp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 8, '_edit_lock', '1626296412:1'),
(38, 23, '_edit_last', '1'),
(39, 23, '_edit_lock', '1625863090:1'),
(40, 37, '_edit_last', '1'),
(41, 37, '_edit_lock', '1625867232:1'),
(44, 8, '_edit_last', '1'),
(45, 8, '_wp_page_template', 'templates/home.php'),
(46, 8, 'banners_topo', '1'),
(47, 8, '_banners_topo', 'field_60dcadd19c968'),
(48, 8, 'titulo_conteudo', 'Título do conteúdo'),
(49, 8, '_titulo_conteudo', 'field_60dcaf6967802'),
(50, 8, 'texto_conteudo', 'Ut lacinia egestas rutrum. Maecenas purus nisi, viverra id tristique at, porttitor a elit. In dapibus tortor ornare commodo tincidunt. Curabitur maximus mi ut faucibus pharetra. Nullam eget fermentum mauris. Suspendisse sed faucibus est. Aenean condimentum erat et leo sollicitudin finibus.'),
(51, 8, '_texto_conteudo', 'field_60dcaf8467803'),
(52, 8, 'link_conteudo', 'Veja mais'),
(53, 8, '_link_conteudo', 'field_60dcafa267804'),
(54, 8, 'imagem_principal_conteudo', '76'),
(55, 8, '_imagem_principal_conteudo', 'field_60dcafe267805'),
(56, 8, 'banners_promocoes_conteudo', '2'),
(57, 8, '_banners_promocoes_conteudo', 'field_60dcb00367806'),
(58, 8, 'banners_baixo', '2'),
(59, 8, '_banners_baixo', 'field_60dcb0806780a'),
(60, 10, 'banners_topo', '1'),
(61, 10, '_banners_topo', 'field_60dcadd19c968'),
(62, 10, 'titulo_conteudo', 'Título do conteúdo'),
(63, 10, '_titulo_conteudo', 'field_60dcaf6967802'),
(64, 10, 'texto_conteudo', 'Ut lacinia egestas rutrum. Maecenas purus nisi, viverra id tristique at, porttitor a elit. In dapibus tortor ornare commodo tincidunt. Curabitur maximus mi ut faucibus pharetra. Nullam eget fermentum mauris. Suspendisse sed faucibus est. Aenean condimentum erat et leo sollicitudin finibus.'),
(65, 10, '_texto_conteudo', 'field_60dcaf8467803'),
(66, 10, 'link_conteudo', 'Veja mais'),
(67, 10, '_link_conteudo', 'field_60dcafa267804'),
(68, 10, 'imagem_principal_conteudo', '76'),
(69, 10, '_imagem_principal_conteudo', 'field_60dcafe267805'),
(70, 10, 'banners_promocoes_conteudo', '2'),
(71, 10, '_banners_promocoes_conteudo', 'field_60dcb00367806'),
(72, 10, 'banners_baixo', '2'),
(73, 10, '_banners_baixo', 'field_60dcb0806780a'),
(74, 57, '_wp_attached_file', '2021/06/logo-icea.png'),
(75, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:84;s:4:\"file\";s:21:\"2021/06/logo-icea.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-icea-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:20:\"logo-icea-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 8, 'banners_baixo_0_imagem', '80'),
(77, 8, '_banners_baixo_0_imagem', 'field_60dcb09f6780b'),
(78, 8, 'banners_baixo_0_links', '1'),
(79, 8, '_banners_baixo_0_links', 'field_60dcb0b26780c'),
(80, 10, 'banners_baixo_0_imagem', '80'),
(81, 10, '_banners_baixo_0_imagem', 'field_60dcb09f6780b'),
(82, 10, 'banners_baixo_0_links', '1'),
(83, 10, '_banners_baixo_0_links', 'field_60dcb0b26780c'),
(102, 60, '_menu_item_type', 'custom'),
(103, 60, '_menu_item_menu_item_parent', '0'),
(104, 60, '_menu_item_object_id', '60'),
(105, 60, '_menu_item_object', 'custom'),
(106, 60, '_menu_item_target', ''),
(107, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 60, '_menu_item_xfn', ''),
(109, 60, '_menu_item_url', 'https://www.iceaestofados.com.br/categoria/sala-de-estar'),
(111, 61, '_menu_item_type', 'custom'),
(112, 61, '_menu_item_menu_item_parent', '0'),
(113, 61, '_menu_item_object_id', '61'),
(114, 61, '_menu_item_object', 'custom'),
(115, 61, '_menu_item_target', ''),
(116, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 61, '_menu_item_xfn', ''),
(118, 61, '_menu_item_url', 'https://www.iceaestofados.com.br/categoria/quarto'),
(120, 62, '_menu_item_type', 'custom'),
(121, 62, '_menu_item_menu_item_parent', '0'),
(122, 62, '_menu_item_object_id', '62'),
(123, 62, '_menu_item_object', 'custom'),
(124, 62, '_menu_item_target', ''),
(125, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 62, '_menu_item_xfn', ''),
(127, 62, '_menu_item_url', 'https://www.iceaestofados.com.br/categoria/poltronas'),
(129, 63, '_menu_item_type', 'custom'),
(130, 63, '_menu_item_menu_item_parent', '0'),
(131, 63, '_menu_item_object_id', '63'),
(132, 63, '_menu_item_object', 'custom'),
(133, 63, '_menu_item_target', ''),
(134, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 63, '_menu_item_xfn', ''),
(136, 63, '_menu_item_url', 'https://www.iceaestofados.com.br/categoria/sala-de-jantar'),
(138, 64, '_menu_item_type', 'custom'),
(139, 64, '_menu_item_menu_item_parent', '0'),
(140, 64, '_menu_item_object_id', '64'),
(141, 64, '_menu_item_object', 'custom'),
(142, 64, '_menu_item_target', ''),
(143, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 64, '_menu_item_xfn', ''),
(145, 64, '_menu_item_url', 'https://www.iceaestofados.com.br/categoria/promocao'),
(156, 10, 'banners_topo_0_imagem', '68'),
(157, 10, '_banners_topo_0_imagem', 'field_60dcae269c969'),
(158, 10, 'banners_topo_0_links_0_link', ''),
(159, 10, '_banners_topo_0_links_0_link', 'field_60dcae629c96b'),
(160, 10, 'banners_topo_0_links', '2'),
(161, 10, '_banners_topo_0_links', 'field_60dcae3a9c96a'),
(162, 66, '_edit_last', '1'),
(163, 66, '_edit_lock', '1625249025:1'),
(164, 66, '_wp_trash_meta_status', 'publish'),
(165, 66, '_wp_trash_meta_time', '1625249169'),
(166, 66, '_wp_desired_post_slug', 'teste'),
(167, 67, '_wp_attached_file', '2021/07/113877.png'),
(168, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:95;s:4:\"file\";s:18:\"2021/07/113877.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 8, 'banners_topo_0_imagem', '68'),
(172, 8, '_banners_topo_0_imagem', 'field_60dcae269c969'),
(179, 10, 'banners_topo_0_links_0_texto_link', 'botão 1'),
(180, 10, '_banners_topo_0_links_0_texto_link', 'field_60e88f55c2543'),
(185, 10, 'banners_topo_0_links_1_texto_link', 'Botão 2'),
(186, 10, '_banners_topo_0_links_1_texto_link', 'field_60e88f55c2543'),
(187, 10, 'banners_topo_0_links_1_link', ''),
(188, 10, '_banners_topo_0_links_1_link', 'field_60dcae629c96b'),
(195, 10, 'banners_topo_0_banner_desktop', '74'),
(196, 10, '_banners_topo_0_banner_desktop', 'field_60dcae269c969'),
(197, 10, 'banners_topo_0_banner_mobile', '75'),
(198, 10, '_banners_topo_0_banner_mobile', 'field_60e4923033d12'),
(213, 10, 'banners_topo_1_banner_desktop', '72'),
(214, 10, '_banners_topo_1_banner_desktop', 'field_60dcae269c969'),
(215, 10, 'banners_topo_1_banner_mobile', '73'),
(216, 10, '_banners_topo_1_banner_mobile', 'field_60e4923033d12'),
(217, 10, 'banners_topo_1_links_0_texto_link', 'teste3'),
(218, 10, '_banners_topo_1_links_0_texto_link', 'field_60e4908b4f290'),
(219, 10, 'banners_topo_1_links_0_link', '#'),
(220, 10, '_banners_topo_1_links_0_link', 'field_60dcae629c96b'),
(221, 10, 'banners_topo_1_links', '1'),
(222, 10, '_banners_topo_1_links', 'field_60dcae3a9c96a'),
(223, 74, '_wp_attached_file', '2021/07/banner.jpg'),
(224, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1916;s:6:\"height\";i:545;s:4:\"file\";s:18:\"2021/07/banner.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x85.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x291.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x218.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"banner-1536x437.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:437;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:18:\"banner-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"produto\";a:4:{s:4:\"file\";s:18:\"banner-700x545.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 75, '_wp_attached_file', '2021/07/banner-mobile.jpg'),
(226, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2021/07/banner-mobile.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banner-mobile-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banner-mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:25:\"banner-mobile-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:25:\"banner-mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 8, 'banners_topo_0_banner_desktop', '74'),
(228, 8, '_banners_topo_0_banner_desktop', 'field_60dcae269c969'),
(229, 8, 'banners_topo_0_banner_mobile', '75'),
(230, 8, '_banners_topo_0_banner_mobile', 'field_60e4923033d12'),
(231, 8, 'banners_topo_0_links_0_texto_link', 'botão 1'),
(232, 8, '_banners_topo_0_links_0_texto_link', 'field_60e88f55c2543'),
(233, 8, 'banners_topo_0_links_0_link', ''),
(234, 8, '_banners_topo_0_links_0_link', 'field_60dcae629c96b'),
(235, 8, 'banners_topo_0_links_1_texto_link', 'Botão 2'),
(236, 8, '_banners_topo_0_links_1_texto_link', 'field_60e88f55c2543'),
(237, 8, 'banners_topo_0_links_1_link', ''),
(238, 8, '_banners_topo_0_links_1_link', 'field_60dcae629c96b'),
(239, 8, 'banners_topo_0_links', '2'),
(240, 8, '_banners_topo_0_links', 'field_60dcae3a9c96a'),
(241, 76, '_wp_attached_file', '2021/07/imagem-principal.jpg'),
(242, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:539;s:6:\"height\";i:335;s:4:\"file\";s:28:\"2021/07/imagem-principal.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"imagem-principal-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-principal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:28:\"imagem-principal-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-principal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 77, '_wp_attached_file', '2021/07/promocao.jpg'),
(244, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:582;s:6:\"height\";i:130;s:4:\"file\";s:20:\"2021/07/promocao.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"promocao-300x67.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"promocao-150x130.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"post\";a:4:{s:4:\"file\";s:20:\"promocao-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:20:\"promocao-150x130.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 10, 'banners_promocoes_conteudo_0_imagem', '77'),
(254, 10, '_banners_promocoes_conteudo_0_imagem', 'field_60dcb01167807'),
(255, 10, 'banners_promocoes_conteudo_0_link', ''),
(256, 10, '_banners_promocoes_conteudo_0_link', 'field_60dcb02467808'),
(257, 10, 'banners_promocoes_conteudo_1_imagem', '77'),
(258, 10, '_banners_promocoes_conteudo_1_imagem', 'field_60dcb01167807'),
(259, 10, 'banners_promocoes_conteudo_1_link', ''),
(260, 10, '_banners_promocoes_conteudo_1_link', 'field_60dcb02467808'),
(262, 60, '_wp_old_date', '2021-07-02'),
(263, 61, '_wp_old_date', '2021-07-02'),
(264, 62, '_wp_old_date', '2021-07-02'),
(265, 63, '_wp_old_date', '2021-07-02'),
(266, 64, '_wp_old_date', '2021-07-02'),
(270, 8, 'banners_promocoes_conteudo_0_imagem', '77'),
(271, 8, '_banners_promocoes_conteudo_0_imagem', 'field_60dcb01167807'),
(272, 8, 'banners_promocoes_conteudo_0_link', ''),
(273, 8, '_banners_promocoes_conteudo_0_link', 'field_60dcb02467808'),
(274, 8, 'banners_promocoes_conteudo_1_imagem', '77'),
(275, 8, '_banners_promocoes_conteudo_1_imagem', 'field_60dcb01167807'),
(276, 8, 'banners_promocoes_conteudo_1_link', ''),
(277, 8, '_banners_promocoes_conteudo_1_link', 'field_60dcb02467808'),
(278, 79, '_wp_attached_file', '2021/07/pagamento.png'),
(279, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:39;s:4:\"file\";s:21:\"2021/07/pagamento.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pagamento-150x39.png\";s:5:\"width\";i:150;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"produtoThumbnail\";a:4:{s:4:\"file\";s:20:\"pagamento-150x39.png\";s:5:\"width\";i:150;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 8, 'banners_baixo_0_links_0_link', ''),
(285, 8, '_banners_baixo_0_links_0_link', 'field_60dcb0c06780d'),
(286, 8, 'banners_baixo_1_imagem', '81'),
(287, 8, '_banners_baixo_1_imagem', 'field_60dcb09f6780b'),
(288, 8, 'banners_baixo_1_links_0_link', ''),
(289, 8, '_banners_baixo_1_links_0_link', 'field_60dcb0c06780d'),
(290, 8, 'banners_baixo_1_links', '1'),
(291, 8, '_banners_baixo_1_links', 'field_60dcb0b26780c'),
(292, 10, 'banners_baixo_0_links_0_link', ''),
(293, 10, '_banners_baixo_0_links_0_link', 'field_60dcb0c06780d'),
(294, 10, 'banners_baixo_1_imagem', '81'),
(295, 10, '_banners_baixo_1_imagem', 'field_60dcb09f6780b'),
(296, 10, 'banners_baixo_1_links_0_link', ''),
(297, 10, '_banners_baixo_1_links_0_link', 'field_60dcb0c06780d'),
(298, 10, 'banners_baixo_1_links', '1'),
(299, 10, '_banners_baixo_1_links', 'field_60dcb0b26780c'),
(300, 8, 'banners_baixo_0_banner_desktop', '74'),
(301, 8, '_banners_baixo_0_banner_desktop', 'field_60dcb09f6780b'),
(302, 8, 'banners_baixo_0_banner_mobile', '75'),
(303, 8, '_banners_baixo_0_banner_mobile', 'field_60e8916437393'),
(304, 8, 'banners_baixo_0_links_0_texto_link', 'Botão 1'),
(305, 8, '_banners_baixo_0_links_0_texto_link', 'field_60e88f00ac756'),
(306, 8, 'banners_baixo_1_banner_desktop', '74'),
(307, 8, '_banners_baixo_1_banner_desktop', 'field_60dcb09f6780b'),
(308, 8, 'banners_baixo_1_banner_mobile', '75'),
(309, 8, '_banners_baixo_1_banner_mobile', 'field_60e8916437393'),
(310, 8, 'banners_baixo_1_links_0_texto_link', 'Botão 2'),
(311, 8, '_banners_baixo_1_links_0_texto_link', 'field_60e88f00ac756'),
(312, 10, 'banners_baixo_0_banner_desktop', '74'),
(313, 10, '_banners_baixo_0_banner_desktop', 'field_60dcb09f6780b'),
(314, 10, 'banners_baixo_0_banner_mobile', '75'),
(315, 10, '_banners_baixo_0_banner_mobile', 'field_60e8916437393'),
(316, 10, 'banners_baixo_0_links_0_texto_link', 'Botão 1'),
(317, 10, '_banners_baixo_0_links_0_texto_link', 'field_60e88f00ac756'),
(318, 10, 'banners_baixo_1_banner_desktop', '74'),
(319, 10, '_banners_baixo_1_banner_desktop', 'field_60dcb09f6780b'),
(320, 10, 'banners_baixo_1_banner_mobile', '75'),
(321, 10, '_banners_baixo_1_banner_mobile', 'field_60e8916437393'),
(322, 10, 'banners_baixo_1_links_0_texto_link', 'Botão 2'),
(323, 10, '_banners_baixo_1_links_0_texto_link', 'field_60e88f00ac756'),
(324, 88, '_menu_item_type', 'custom'),
(325, 88, '_menu_item_menu_item_parent', '0'),
(326, 88, '_menu_item_object_id', '88'),
(327, 88, '_menu_item_object', 'custom'),
(328, 88, '_menu_item_target', ''),
(329, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 88, '_menu_item_xfn', ''),
(331, 88, '_menu_item_url', 'https://www.iceaestofados.com.br/institucional/1704/7331'),
(333, 89, '_menu_item_type', 'custom'),
(334, 89, '_menu_item_menu_item_parent', '0'),
(335, 89, '_menu_item_object_id', '89'),
(336, 89, '_menu_item_object', 'custom'),
(337, 89, '_menu_item_target', ''),
(338, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(339, 89, '_menu_item_xfn', ''),
(340, 89, '_menu_item_url', 'https://www.iceaestofados.com.br/institucional/1704/7482'),
(342, 90, '_menu_item_type', 'custom'),
(343, 90, '_menu_item_menu_item_parent', '0'),
(344, 90, '_menu_item_object_id', '90'),
(345, 90, '_menu_item_object', 'custom'),
(346, 90, '_menu_item_target', ''),
(347, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(348, 90, '_menu_item_xfn', ''),
(349, 90, '_menu_item_url', 'https://www.iceaestofados.com.br/institucional/1705/6387'),
(351, 91, '_menu_item_type', 'custom'),
(352, 91, '_menu_item_menu_item_parent', '0'),
(353, 91, '_menu_item_object_id', '91'),
(354, 91, '_menu_item_object', 'custom'),
(355, 91, '_menu_item_target', ''),
(356, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 91, '_menu_item_xfn', ''),
(358, 91, '_menu_item_url', 'https://www.iceaestofados.com.br/institucional/1705/6385'),
(360, 92, '_menu_item_type', 'custom'),
(361, 92, '_menu_item_menu_item_parent', '0'),
(362, 92, '_menu_item_object_id', '92'),
(363, 92, '_menu_item_object', 'custom'),
(364, 92, '_menu_item_target', ''),
(365, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(366, 92, '_menu_item_xfn', ''),
(367, 92, '_menu_item_url', 'https://www.iceaestofados.com.br/institucional/1705/6388'),
(369, 93, '_menu_item_type', 'custom'),
(370, 93, '_menu_item_menu_item_parent', '0'),
(371, 93, '_menu_item_object_id', '93'),
(372, 93, '_menu_item_object', 'custom'),
(373, 93, '_menu_item_target', ''),
(374, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(375, 93, '_menu_item_xfn', ''),
(376, 93, '_menu_item_url', 'https://www.iceaestofados.com.br/Company/CommonQuestions'),
(378, 94, '_wp_attached_file', '2021/07/logo-MMD-04-tons-de-cinza-1.png'),
(379, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:101;s:6:\"height\";i:39;s:4:\"file\";s:39:\"2021/07/logo-MMD-04-tons-de-cinza-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 10, 'banners_baixo_1_links_1_link', ''),
(385, 10, '_banners_baixo_1_links_1_link', 'field_60dcb0c06780d'),
(386, 10, 'banners_baixo_1_links_1_texto_link', 'Botão 3'),
(387, 10, '_banners_baixo_1_links_1_texto_link', 'field_60e88f00ac756'),
(388, 95, '_edit_lock', '1626282796:1'),
(389, 95, '_wp_trash_meta_status', 'publish'),
(390, 95, '_wp_trash_meta_time', '1626282811'),
(391, 96, '_wp_trash_meta_status', 'publish'),
(392, 96, '_wp_trash_meta_time', '1626282842'),
(393, 97, '_wp_trash_meta_status', 'publish'),
(394, 97, '_wp_trash_meta_time', '1626282871'),
(395, 60, '_wp_old_date', '2021-07-06'),
(396, 61, '_wp_old_date', '2021-07-06'),
(397, 62, '_wp_old_date', '2021-07-06'),
(398, 63, '_wp_old_date', '2021-07-06'),
(399, 64, '_wp_old_date', '2021-07-06'),
(404, 10, 'banners_promocoes_conteudo_2_imagem', '77'),
(405, 10, '_banners_promocoes_conteudo_2_imagem', 'field_60dcb01167807'),
(406, 10, 'banners_promocoes_conteudo_2_link', 'oreoiroe3'),
(407, 10, '_banners_promocoes_conteudo_2_link', 'field_60dcb02467808');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_posts`
--

CREATE TABLE `icea_lp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_posts`
--

INSERT INTO `icea_lp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2021-06-30 14:22:12', '2021-06-30 17:22:12', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-07-14 18:02:23', '2021-07-14 21:02:23', '', 0, 'http://localhost/icea-lp/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-06-30 14:22:12', '2021-06-30 17:22:12', '', 'home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-06-30 14:22:12', '2021-06-30 17:22:12', '', 8, 'http://localhost/icea-lp/2021/06/30/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2021-06-30 14:22:16', '2021-06-30 17:22:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-06-30 14:22:16', '2021-06-30 17:22:16', '', 8, 'http://localhost/icea-lp/2021/06/30/8-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"configuracoes-tema\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Configurações', 'configuracoes', 'publish', 'closed', 'closed', '', 'group_60dcaae58f2b8', '', '', '2021-07-09 16:04:55', '2021-07-09 19:04:55', '', 0, 'http://localhost/icea-lp/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_60dcabd4ddf08', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_60dcabf7ddf0a', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Contatos', 'contatos', 'publish', 'closed', 'closed', '', 'field_60dcab0fddf02', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=26', 2, 'acf-field', '', 0),
(27, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_60dcab57ddf03', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=27', 3, 'acf-field', '', 0),
(28, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'WhatsApp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_60dcab66ddf04', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=28', 4, 'acf-field', '', 0),
(29, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'SAC', 'sac', 'publish', 'closed', 'closed', '', 'field_60dcab85ddf05', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=29', 5, 'acf-field', '', 0),
(30, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_60dcab8fddf06', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=30', 6, 'acf-field', '', 0),
(31, 1, '2021-06-30 14:38:50', '2021-06-30 17:38:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Horário de Atendimento', 'horario_de_atendimento', 'publish', 'closed', 'closed', '', 'field_60dcab9bddf07', '', '', '2021-06-30 14:38:50', '2021-06-30 17:38:50', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=31', 7, 'acf-field', '', 0),
(32, 1, '2021-06-30 14:42:54', '2021-06-30 17:42:54', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Pagamento', 'pagamento', 'publish', 'closed', 'closed', '', 'field_60dcac570a18b', '', '', '2021-06-30 14:42:54', '2021-06-30 17:42:54', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=32', 8, 'acf-field', '', 0),
(33, 1, '2021-06-30 14:42:54', '2021-06-30 17:42:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_pagamento', 'publish', 'closed', 'closed', '', 'field_60dcac7c0a18c', '', '', '2021-06-30 14:42:54', '2021-06-30 17:42:54', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=33', 9, 'acf-field', '', 0),
(34, 1, '2021-06-30 14:42:54', '2021-06-30 17:42:54', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Segurança', 'seguranca', 'publish', 'closed', 'closed', '', 'field_60dcac9c0a18d', '', '', '2021-06-30 14:42:54', '2021-06-30 17:42:54', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&p=34', 10, 'acf-field', '', 0),
(35, 1, '2021-06-30 14:42:54', '2021-06-30 17:42:54', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:16:\"Adicionar imagem\";}', 'Imagens', 'imagens_seguranca', 'publish', 'closed', 'closed', '', 'field_60dcacb10a18e', '', '', '2021-07-09 15:42:39', '2021-07-09 18:42:39', '', 23, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=35', 11, 'acf-field', '', 0),
(36, 1, '2021-06-30 14:42:54', '2021-06-30 17:42:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_60dcace90a18f', '', '', '2021-06-30 14:42:54', '2021-06-30 17:42:54', '', 35, 'http://localhost/icea-lp/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2021-06-30 14:48:48', '2021-06-30 17:48:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_60dcad791ad79', '', '', '2021-07-09 15:12:06', '2021-07-09 18:12:06', '', 0, 'http://localhost/icea-lp/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2021-06-30 14:48:48', '2021-06-30 17:48:48', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banners Topo', 'banners_topo', 'publish', 'closed', 'closed', '', 'field_60dcad809c967', '', '', '2021-06-30 14:48:48', '2021-06-30 17:48:48', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2021-06-30 14:48:48', '2021-06-30 17:48:48', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:16:\"Adicionar Banner\";}', 'Banners', 'banners_topo', 'publish', 'closed', 'closed', '', 'field_60dcadd19c968', '', '', '2021-06-30 14:48:48', '2021-06-30 17:48:48', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2021-06-30 14:48:48', '2021-06-30 17:48:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Desktop', 'banner_desktop', 'publish', 'closed', 'closed', '', 'field_60dcae269c969', '', '', '2021-07-06 14:26:27', '2021-07-06 17:26:27', '', 39, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2021-06-30 14:48:48', '2021-06-30 17:48:48', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:14:\"Adicionar Link\";}', 'Links', 'links', 'publish', 'closed', 'closed', '', 'field_60dcae3a9c96a', '', '', '2021-07-09 15:03:17', '2021-07-09 18:03:17', '', 39, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=41', 2, 'acf-field', '', 0),
(42, 1, '2021-06-30 14:48:48', '2021-06-30 17:48:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_60dcae629c96b', '', '', '2021-07-09 15:03:17', '2021-07-09 18:03:17', '', 41, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=42', 1, 'acf-field', '', 0),
(44, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Conteúdo', 'conteudo', 'publish', 'closed', 'closed', '', 'field_60dcaf4867801', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=44', 2, 'acf-field', '', 0),
(45, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_conteudo', 'publish', 'closed', 'closed', '', 'field_60dcaf6967802', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=45', 3, 'acf-field', '', 0),
(46, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_conteudo', 'publish', 'closed', 'closed', '', 'field_60dcaf8467803', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=46', 4, 'acf-field', '', 0),
(47, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_conteudo', 'publish', 'closed', 'closed', '', 'field_60dcafa267804', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=47', 5, 'acf-field', '', 0),
(48, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Principal', 'imagem_principal_conteudo', 'publish', 'closed', 'closed', '', 'field_60dcafe267805', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=48', 6, 'acf-field', '', 0),
(49, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:16:\"Adicionar Banner\";}', 'Banners Promoções', 'banners_promocoes_conteudo', 'publish', 'closed', 'closed', '', 'field_60dcb00367806', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=49', 7, 'acf-field', '', 0),
(50, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_60dcb01167807', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 49, 'http://localhost/icea-lp/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_60dcb02467808', '', '', '2021-07-07 15:40:25', '2021-07-07 18:40:25', '', 49, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Banner Baixo', 'banner_baixo', 'publish', 'closed', 'closed', '', 'field_60dcb06567809', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=52', 8, 'acf-field', '', 0),
(53, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:16:\"Adicionar Banner\";}', 'Banners', 'banners_baixo', 'publish', 'closed', 'closed', '', 'field_60dcb0806780a', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 37, 'http://localhost/icea-lp/?post_type=acf-field&p=53', 9, 'acf-field', '', 0),
(54, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Desktop', 'banner_desktop', 'publish', 'closed', 'closed', '', 'field_60dcb09f6780b', '', '', '2021-07-09 15:12:06', '2021-07-09 18:12:06', '', 53, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:14:\"Adicionar Link\";}', 'Links', 'links', 'publish', 'closed', 'closed', '', 'field_60dcb0b26780c', '', '', '2021-07-09 15:12:06', '2021-07-09 18:12:06', '', 53, 'http://localhost/icea-lp/?post_type=acf-field&#038;p=55', 2, 'acf-field', '', 0),
(56, 1, '2021-06-30 14:59:18', '2021-06-30 17:59:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_60dcb0c06780d', '', '', '2021-06-30 14:59:18', '2021-06-30 17:59:18', '', 55, 'http://localhost/icea-lp/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2021-06-30 15:17:23', '2021-06-30 18:17:23', '', 'logo-icea', '', 'inherit', 'open', 'closed', '', 'logo-icea', '', '', '2021-07-01 16:59:20', '2021-07-01 19:59:20', '', 8, 'http://localhost/icea-lp/wp-content/uploads/2021/06/logo-icea.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2021-07-14 18:00:08', '2021-07-02 16:41:42', '', 'Sala de estar', '', 'publish', 'closed', 'closed', '', 'sala-de-estar', '', '', '2021-07-14 18:00:08', '2021-07-14 21:00:08', '', 0, 'http://localhost/icea-lp/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2021-07-14 18:00:08', '2021-07-02 17:29:16', '', 'Quarto', '', 'publish', 'closed', 'closed', '', 'quarto', '', '', '2021-07-14 18:00:08', '2021-07-14 21:00:08', '', 0, 'http://localhost/icea-lp/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2021-07-14 18:00:08', '2021-07-02 17:30:24', '', 'Poltronas', '', 'publish', 'closed', 'closed', '', 'poltronas', '', '', '2021-07-14 18:00:08', '2021-07-14 21:00:08', '', 0, 'http://localhost/icea-lp/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2021-07-14 18:00:08', '2021-07-02 17:30:24', '', 'Sala de jantar', '', 'publish', 'closed', 'closed', '', 'sala-de-jantar', '', '', '2021-07-14 18:00:08', '2021-07-14 21:00:08', '', 0, 'http://localhost/icea-lp/?p=63', 4, 'nav_menu_item', '', 0),
(64, 1, '2021-07-14 18:00:08', '2021-07-02 17:30:24', '', 'Promoção', '', 'publish', 'closed', 'closed', '', 'promocao', '', '', '2021-07-14 18:00:08', '2021-07-14 21:00:08', '', 0, 'http://localhost/icea-lp/?p=64', 5, 'nav_menu_item', '', 0),
(66, 1, '2021-07-02 15:05:59', '2021-07-02 18:05:59', '', 'Teste', '', 'trash', 'closed', 'closed', '', 'teste__trashed', '', '', '2021-07-02 15:06:09', '2021-07-02 18:06:09', '', 0, 'http://localhost/icea-lp/?post_type=banners&#038;p=66', 0, 'banners', '', 0),
(67, 1, '2021-07-05 15:03:26', '2021-07-05 18:03:26', '', '', '', 'inherit', 'open', 'closed', '', '113877', '', '', '2021-07-05 15:03:44', '2021-07-05 18:03:44', '', 0, 'http://localhost/icea-lp/wp-content/uploads/2021/07/113877.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2021-07-06 14:26:27', '2021-07-06 17:26:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Mobile', 'banner_mobile', 'publish', 'closed', 'closed', '', 'field_60e4923033d12', '', '', '2021-07-06 14:26:27', '2021-07-06 17:26:27', '', 39, 'http://localhost/icea-lp/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(74, 1, '2021-07-06 14:57:04', '2021-07-06 17:57:04', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2021-07-06 14:57:04', '2021-07-06 17:57:04', '', 8, 'http://localhost/icea-lp/wp-content/uploads/2021/07/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2021-07-06 14:57:40', '2021-07-06 17:57:40', '', 'banner-mobile', '', 'inherit', 'open', 'closed', '', 'banner-mobile', '', '', '2021-07-06 14:57:40', '2021-07-06 17:57:40', '', 8, 'http://localhost/icea-lp/wp-content/uploads/2021/07/banner-mobile.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2021-07-06 15:33:15', '2021-07-06 18:33:15', '', 'imagem-principal', '', 'inherit', 'open', 'closed', '', 'imagem-principal', '', '', '2021-07-06 15:33:15', '2021-07-06 18:33:15', '', 8, 'http://localhost/icea-lp/wp-content/uploads/2021/07/imagem-principal.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2021-07-06 15:33:52', '2021-07-06 18:33:52', '', 'promocao', '', 'inherit', 'open', 'closed', '', 'promocao-2', '', '', '2021-07-06 15:33:52', '2021-07-06 18:33:52', '', 8, 'http://localhost/icea-lp/wp-content/uploads/2021/07/promocao.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2021-07-07 17:12:00', '2021-07-07 20:12:00', '', 'pagamento', '', 'inherit', 'open', 'closed', '', 'pagamento', '', '', '2021-07-07 17:12:00', '2021-07-07 20:12:00', '', 0, 'http://localhost/icea-lp/wp-content/uploads/2021/07/pagamento.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2021-07-09 15:02:15', '2021-07-09 18:02:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto Link', 'texto_link', 'publish', 'closed', 'closed', '', 'field_60e88f00ac756', '', '', '2021-07-09 15:02:15', '2021-07-09 18:02:15', '', 55, 'http://localhost/icea-lp/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2021-07-09 15:03:17', '2021-07-09 18:03:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto Link', 'texto_link', 'publish', 'closed', 'closed', '', 'field_60e88f55c2543', '', '', '2021-07-09 15:03:17', '2021-07-09 18:03:17', '', 41, 'http://localhost/icea-lp/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(87, 1, '2021-07-09 15:12:06', '2021-07-09 18:12:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Mobile', 'banner_mobile', 'publish', 'closed', 'closed', '', 'field_60e8916437393', '', '', '2021-07-09 15:12:06', '2021-07-09 18:12:06', '', 53, 'http://localhost/icea-lp/?post_type=acf-field&p=87', 1, 'acf-field', '', 0),
(88, 1, '2021-07-09 15:20:44', '2021-07-09 18:20:44', '', 'A Icea', '', 'publish', 'closed', 'closed', '', 'a-icea', '', '', '2021-07-09 15:20:44', '2021-07-09 18:20:44', '', 0, 'http://localhost/icea-lp/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2021-07-09 15:20:44', '2021-07-09 18:20:44', '', 'Nossas Lojas', '', 'publish', 'closed', 'closed', '', 'nossas-lojas', '', '', '2021-07-09 15:20:44', '2021-07-09 18:20:44', '', 0, 'http://localhost/icea-lp/?p=89', 2, 'nav_menu_item', '', 0),
(90, 1, '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 'Este site é seguro ?', '', 'publish', 'closed', 'closed', '', 'este-site-e-seguro', '', '', '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 0, 'http://localhost/icea-lp/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 'Entregas', '', 'publish', 'closed', 'closed', '', 'entregas', '', '', '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 0, 'http://localhost/icea-lp/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 'Trocas e Devoluções', '', 'publish', 'closed', 'closed', '', 'trocas-e-devolucoes', '', '', '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 0, 'http://localhost/icea-lp/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 'Dúvidas Frequentes', '', 'publish', 'closed', 'closed', '', 'duvidas-frequentes', '', '', '2021-07-09 15:31:34', '2021-07-09 18:31:34', '', 0, 'http://localhost/icea-lp/?p=93', 4, 'nav_menu_item', '', 0),
(94, 1, '2021-07-09 17:40:49', '2021-07-09 20:40:49', '', 'logo-MMD-04-tons-de-cinza 1', '', 'inherit', 'open', 'closed', '', 'logo-mmd-04-tons-de-cinza-1', '', '', '2021-07-09 17:40:49', '2021-07-09 20:40:49', '', 0, 'http://localhost/icea-lp/wp-content/uploads/2021/07/logo-MMD-04-tons-de-cinza-1.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2021-07-14 14:13:31', '2021-07-14 17:13:31', '{\n    \"blogdescription\": {\n        \"value\": \"Sof\\u00e1s e Colch\\u00f5es direto da f\\u00e1brica com o melhor pre\\u00e7o! Icea Estofados\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-14 17:13:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7597902d-7566-4053-8fda-dc5a960fee3c', '', '', '2021-07-14 14:13:31', '2021-07-14 17:13:31', '', 0, 'http://localhost/icea-lp/?p=95', 0, 'customize_changeset', '', 0),
(96, 1, '2021-07-14 14:14:02', '2021-07-14 17:14:02', '{\n    \"blogname\": {\n        \"value\": \"Icea Estofados\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-14 17:14:02\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Sof\\u00e1s e Colch\\u00f5es direto da f\\u00e1brica com o melhor pre\\u00e7o! \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-14 17:14:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf0ae92c-475b-4c80-9595-af8bddeecbec', '', '', '2021-07-14 14:14:02', '2021-07-14 17:14:02', '', 0, 'http://localhost/icea-lp/2021/07/14/cf0ae92c-475b-4c80-9595-af8bddeecbec/', 0, 'customize_changeset', '', 0),
(97, 1, '2021-07-14 14:14:31', '2021-07-14 17:14:31', '{\n    \"blogname\": {\n        \"value\": \"Icea\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-14 17:14:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '143b708c-509e-453e-a5cd-599819c3118e', '', '', '2021-07-14 14:14:31', '2021-07-14 17:14:31', '', 0, 'http://localhost/icea-lp/2021/07/14/143b708c-509e-453e-a5cd-599819c3118e/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_termmeta`
--

CREATE TABLE `icea_lp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_terms`
--

CREATE TABLE `icea_lp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_terms`
--

INSERT INTO `icea_lp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(3, 'Menu Principal', 'menu-principal', 0),
(4, 'Institucional', 'institucional', 0),
(5, 'Ajuda', 'ajuda', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_term_relationships`
--

CREATE TABLE `icea_lp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_term_relationships`
--

INSERT INTO `icea_lp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(60, 3, 0),
(61, 3, 0),
(62, 3, 0),
(63, 3, 0),
(64, 3, 0),
(88, 4, 0),
(89, 4, 0),
(90, 5, 0),
(91, 5, 0),
(92, 5, 0),
(93, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_term_taxonomy`
--

CREATE TABLE `icea_lp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_term_taxonomy`
--

INSERT INTO `icea_lp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_usermeta`
--

CREATE TABLE `icea_lp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_usermeta`
--

INSERT INTO `icea_lp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mixsolucoes'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'icea_lp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'icea_lp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ad9d78b06c11f7ddfa42dc811622b8709ac6cf9090fdf9cf1bb575771103b44d\";a:4:{s:10:\"expiration\";i:1627500309;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1626290709;}}'),
(17, 1, 'icea_lp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'icea_lp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'icea_lp_user-settings-time', '1625680767'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-banners\";i:1;s:22:\"add-post-type-produtos\";i:2;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icea_lp_users`
--

CREATE TABLE `icea_lp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `icea_lp_users`
--

INSERT INTO `icea_lp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mixsolucoes', '$P$BlJHeM1Ko4/ZqgWoUi4sb9KWdBLIMx.', 'mixsolucoes', 'contato@mixsolucoesweb.com.br', 'http://localhost/icea-lp', '2021-06-30 17:18:03', '', 0, 'mixsolucoes');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `icea_lp_commentmeta`
--
ALTER TABLE `icea_lp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `icea_lp_comments`
--
ALTER TABLE `icea_lp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `icea_lp_links`
--
ALTER TABLE `icea_lp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `icea_lp_options`
--
ALTER TABLE `icea_lp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `icea_lp_postmeta`
--
ALTER TABLE `icea_lp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `icea_lp_posts`
--
ALTER TABLE `icea_lp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `icea_lp_termmeta`
--
ALTER TABLE `icea_lp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `icea_lp_terms`
--
ALTER TABLE `icea_lp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `icea_lp_term_relationships`
--
ALTER TABLE `icea_lp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `icea_lp_term_taxonomy`
--
ALTER TABLE `icea_lp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `icea_lp_usermeta`
--
ALTER TABLE `icea_lp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `icea_lp_users`
--
ALTER TABLE `icea_lp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `icea_lp_commentmeta`
--
ALTER TABLE `icea_lp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `icea_lp_comments`
--
ALTER TABLE `icea_lp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `icea_lp_links`
--
ALTER TABLE `icea_lp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `icea_lp_options`
--
ALTER TABLE `icea_lp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT de tabela `icea_lp_postmeta`
--
ALTER TABLE `icea_lp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT de tabela `icea_lp_posts`
--
ALTER TABLE `icea_lp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de tabela `icea_lp_termmeta`
--
ALTER TABLE `icea_lp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `icea_lp_terms`
--
ALTER TABLE `icea_lp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `icea_lp_term_taxonomy`
--
ALTER TABLE `icea_lp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `icea_lp_usermeta`
--
ALTER TABLE `icea_lp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `icea_lp_users`
--
ALTER TABLE `icea_lp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
