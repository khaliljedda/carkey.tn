-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Host: carkeytnmw177.mysql.db
-- Generation Time: Mar 06, 2021 at 11:12 AM
-- Server version: 5.6.50-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carkeytnmw177`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `text`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prince Car Keys, le spécialiste de reproduction de clés automobiles sur Ksar hellal', 'PCK se place comme l’entreprise modèle dans la reproduction de clés automobiles à Ksar hellal et ses agglomérations.  L’équipe PCK va mettre son expertise à votre service pour vous reproduire une clé identique à celle que vous avez .  Dans son fonctionnement, l’entreprise PCK épargne le déplacement à ses clients. Ainsi pour bénéficier des services de PCK vous n’avez pas besoin de vous déplacer, un coup de fil fera l’affaire. Que vous soyez à Ksar hellal ou sa périphérie, PCK vous envoie une équipe en un temps record pour vous reproduire la clé de votre automobile.  PCK est doté d’outils de dernière génération qui peuvent reproduire tout type de clés automobiles pour arriver à bout de n’importe quel genre de voitures.', 'abouts\\March2020\\t6ftU9DWKXATsxLXotuB.jpg', '2020-03-20 08:13:00', '2020-04-07 20:55:26', NULL),
(2, 'PCK c’est une garantie de satisfaction', 'La société PCK votre spécialiste clé automobile se met toujours au service de sa clientèle pour lui permettre de pouvoir accéder rapidement à sa voiture. De ce fait une équipe est toujours prête à intervenir chez le client qui n’aura pas besoin de bouger de son domicile ou autre. Ainsi le client va s’épargner la peine de se déplacer, mais surtout il profitera d’un travail bien fait avec un tarif rapport qualité prix, le client va même faire des bénéfices en retour. Si le client s’était tourné vers le concessionnaire de sa voiture pour reproduire sa clé au lieu de faire appel à PCK, il devra d’abord se déplacer, mais aussi payer cher pour se faire reproduire sa clé de voiture ce qui peut prendre une semaine à 10 jours.', 'abouts/April2020/JE80aNYmnTFfqdXdIReq.png', '2020-03-14 08:15:00', '2020-04-07 19:35:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-03-13 21:28:22', '2020-03-13 21:28:22'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-03-13 21:28:22', '2020-03-13 21:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(63, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 9, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(67, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(68, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 7),
(84, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(86, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(87, 14, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(88, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(89, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(90, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(91, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 20, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 2),
(93, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(94, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(95, 20, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-03-13 21:28:05', '2020-03-13 21:28:05'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-03-13 21:28:05', '2020-03-13 21:28:05'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, NULL, NULL, 0, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-03-13 21:28:05', '2020-03-14 08:41:20'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-03-13 21:28:21', '2020-03-13 21:28:21'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-03-13 21:28:22', '2020-03-14 13:35:25'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-03-13 21:28:25', '2020-03-13 21:28:25'),
(7, 'about', 'about', 'About', 'Abouts', 'voyager-pen', 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 07:48:10', '2020-03-14 08:04:40'),
(9, 'abouts', 'abouts', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 08:07:04', '2020-03-14 08:14:42'),
(14, 'services', 'services', 'Service', 'Services', 'voyager-activity', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 08:48:41', '2020-03-14 08:51:27'),
(20, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-14 13:59:22', '2020-03-14 13:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'galleries\\March2020\\LTcZevYDqe7LnN5va5yf.jpg', '2020-03-14 13:59:00', '2020-03-15 08:58:07', NULL),
(2, 'galleries\\March2020\\8qn9J5Jjz6e3XkO2wKJs.jpg', '2020-03-14 13:59:00', '2020-03-15 08:57:57', NULL),
(3, 'galleries\\March2020\\gNEbtiiuH0vxp5HwXaOH.jpg', '2020-03-14 14:00:00', '2020-03-15 08:57:30', NULL),
(4, 'galleries\\March2020\\cLjeRrp8HPoNAegVLoSO.jpg', '2020-03-14 14:00:00', '2020-03-15 08:57:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `capacite` int(11) DEFAULT NULL,
  `recu` int(11) DEFAULT NULL,
  `lat` float DEFAULT '0',
  `leng` float DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `name`, `capacite`, `recu`, `lat`, `leng`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'khalil', 15, 12, 35.8283, 10.6881, '2020-03-25 15:03:00', '2020-03-29 16:32:38', 12365486),
(2, 'enit', 20, 12, 34.8283, 11.6881, '2020-03-25 15:58:00', '2020-03-29 16:32:30', 58647581),
(3, 'ensi', 12, 3, 35.7653, 10.8065, '2020-03-25 16:40:00', '2020-03-29 16:32:19', 995824852);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-03-13 21:28:09', '2020-03-13 21:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-03-13 21:28:09', '2020-03-13 21:28:09', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2020-03-13 21:28:09', '2020-03-14 13:31:31', 'voyager.media.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2020-03-13 21:28:09', '2020-03-14 13:31:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2020-03-13 21:28:11', '2020-03-14 13:31:31', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-03-13 21:28:12', '2020-03-14 07:49:53', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-03-13 21:28:12', '2020-03-14 07:49:53', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-03-13 21:28:12', '2020-03-14 07:49:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-03-13 21:28:13', '2020-03-14 07:49:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 2, '2020-03-13 21:28:13', '2020-03-14 08:11:05', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 9, '2020-03-13 21:28:21', '2020-03-14 13:31:31', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 8, '2020-03-13 21:28:23', '2020-03-14 13:31:31', 'voyager.posts.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-03-13 21:28:31', '2020-03-14 07:49:53', 'voyager.hooks', NULL),
(19, 1, 'abouts', '/admin/abouts', '_self', 'voyager-edit', '#000000', NULL, 3, '2020-03-14 08:10:33', '2020-03-14 08:11:05', NULL, ''),
(22, 1, 'Services', '', '_self', 'voyager-activity', NULL, NULL, 4, '2020-03-14 08:48:41', '2020-03-14 08:59:29', 'voyager.services.index', NULL),
(27, 1, 'Galleries', '', '_self', 'voyager-photos', '#000000', NULL, 5, '2020-03-14 13:59:23', '2020-03-15 08:57:05', 'voyager.galleries.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2020_03_15_163818_create_contact_us_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-03-13 21:28:26', '2020-03-13 21:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(2, 'browse_bread', NULL, '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(3, 'browse_database', NULL, '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(4, 'browse_media', NULL, '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(5, 'browse_compass', NULL, '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(6, 'browse_menus', 'menus', '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(7, 'read_menus', 'menus', '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(8, 'edit_menus', 'menus', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(9, 'add_menus', 'menus', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(10, 'delete_menus', 'menus', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(11, 'browse_roles', 'roles', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(12, 'read_roles', 'roles', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(13, 'edit_roles', 'roles', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(14, 'add_roles', 'roles', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(15, 'delete_roles', 'roles', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(16, 'browse_users', 'users', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(17, 'read_users', 'users', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(18, 'edit_users', 'users', '2020-03-13 21:28:15', '2020-03-13 21:28:15'),
(19, 'add_users', 'users', '2020-03-13 21:28:16', '2020-03-13 21:28:16'),
(20, 'delete_users', 'users', '2020-03-13 21:28:16', '2020-03-13 21:28:16'),
(21, 'browse_settings', 'settings', '2020-03-13 21:28:16', '2020-03-13 21:28:16'),
(22, 'read_settings', 'settings', '2020-03-13 21:28:16', '2020-03-13 21:28:16'),
(23, 'edit_settings', 'settings', '2020-03-13 21:28:16', '2020-03-13 21:28:16'),
(24, 'add_settings', 'settings', '2020-03-13 21:28:17', '2020-03-13 21:28:17'),
(25, 'delete_settings', 'settings', '2020-03-13 21:28:17', '2020-03-13 21:28:17'),
(26, 'browse_categories', 'categories', '2020-03-13 21:28:21', '2020-03-13 21:28:21'),
(27, 'read_categories', 'categories', '2020-03-13 21:28:21', '2020-03-13 21:28:21'),
(28, 'edit_categories', 'categories', '2020-03-13 21:28:21', '2020-03-13 21:28:21'),
(29, 'add_categories', 'categories', '2020-03-13 21:28:22', '2020-03-13 21:28:22'),
(30, 'delete_categories', 'categories', '2020-03-13 21:28:22', '2020-03-13 21:28:22'),
(31, 'browse_posts', 'posts', '2020-03-13 21:28:23', '2020-03-13 21:28:23'),
(32, 'read_posts', 'posts', '2020-03-13 21:28:24', '2020-03-13 21:28:24'),
(33, 'edit_posts', 'posts', '2020-03-13 21:28:24', '2020-03-13 21:28:24'),
(34, 'add_posts', 'posts', '2020-03-13 21:28:24', '2020-03-13 21:28:24'),
(35, 'delete_posts', 'posts', '2020-03-13 21:28:24', '2020-03-13 21:28:24'),
(36, 'browse_pages', 'pages', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(37, 'read_pages', 'pages', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(38, 'edit_pages', 'pages', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(39, 'add_pages', 'pages', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(40, 'delete_pages', 'pages', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(41, 'browse_hooks', NULL, '2020-03-13 21:28:31', '2020-03-13 21:28:31'),
(42, 'browse_about', 'about', '2020-03-14 07:48:10', '2020-03-14 07:48:10'),
(43, 'read_about', 'about', '2020-03-14 07:48:10', '2020-03-14 07:48:10'),
(44, 'edit_about', 'about', '2020-03-14 07:48:10', '2020-03-14 07:48:10'),
(45, 'add_about', 'about', '2020-03-14 07:48:10', '2020-03-14 07:48:10'),
(46, 'delete_about', 'about', '2020-03-14 07:48:10', '2020-03-14 07:48:10'),
(52, 'browse_abouts', 'abouts', '2020-03-14 08:07:05', '2020-03-14 08:07:05'),
(53, 'read_abouts', 'abouts', '2020-03-14 08:07:05', '2020-03-14 08:07:05'),
(54, 'edit_abouts', 'abouts', '2020-03-14 08:07:05', '2020-03-14 08:07:05'),
(55, 'add_abouts', 'abouts', '2020-03-14 08:07:05', '2020-03-14 08:07:05'),
(56, 'delete_abouts', 'abouts', '2020-03-14 08:07:05', '2020-03-14 08:07:05'),
(67, 'browse_services', 'services', '2020-03-14 08:48:41', '2020-03-14 08:48:41'),
(68, 'read_services', 'services', '2020-03-14 08:48:41', '2020-03-14 08:48:41'),
(69, 'edit_services', 'services', '2020-03-14 08:48:41', '2020-03-14 08:48:41'),
(70, 'add_services', 'services', '2020-03-14 08:48:41', '2020-03-14 08:48:41'),
(71, 'delete_services', 'services', '2020-03-14 08:48:41', '2020-03-14 08:48:41'),
(92, 'browse_galleries', 'galleries', '2020-03-14 13:59:22', '2020-03-14 13:59:22'),
(93, 'read_galleries', 'galleries', '2020-03-14 13:59:22', '2020-03-14 13:59:22'),
(94, 'edit_galleries', 'galleries', '2020-03-14 13:59:22', '2020-03-14 13:59:22'),
(95, 'add_galleries', 'galleries', '2020-03-14 13:59:22', '2020-03-14 13:59:22'),
(96, 'delete_galleries', 'galleries', '2020-03-14 13:59:22', '2020-03-14 13:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts\\March2020\\0IlfIP01UQces3LLMd8q.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-13 21:28:25', '2020-03-24 22:22:10'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-13 21:28:25', '2020-03-13 21:28:25'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-13 21:28:25', '2020-03-13 21:28:25'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-03-13 21:28:25', '2020-03-13 21:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-03-13 21:28:14', '2020-03-13 21:28:14'),
(2, 'user', 'Normal User', '2020-03-13 21:28:14', '2020-03-13 21:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'services/April2020/L6cFqSGM9v96wjczIvWS.jpg', 'Télécommande', 'Changement de coque sur les clés et \"plips\" de véhicules   Notre métier est d\'abord de remettre en état de fonctionnement, les télécommandes en panne y compris lorsque la coque est abimée, détériorée, usée, dans la mesure ou celle-ci est disponible sur le marché dans des délais et à des prix acceptables. Coque de Protection: Le matériau est du silicone Pour donner à votre clé de voiture la meilleure protection et aussi Looks very cool. Extrêmement léger et durable pour l\'utilisation. Un ajustement parfait pour votre clé.', '2020-03-14 08:59:00', '2020-04-07 20:10:26', NULL),
(3, 'services/April2020/hTtkpeAfn2W68yuoIg1R.png', 'SYNCHRONISATION DE VOTRE TÉLÉCOMMANDE DE VOITURE', 'Il n’est pas opportun de rappeler ici l’importance d’une télécommande de voiture tant tout le monde sait comment ça marche et à quoi elle sert. Ce qu’il faudrait souligner ici, c’est son importance face à son dysfonctionnement. En d’autres termes, c’est lorsqu’une télécommande de voiture est défaillante qu’on voit mieux son utilité. Elle sert entre autre au démarrage de véhicule, au verrouillage et déverrouillage de porte etc. Pour toutes ces raisons, elle mérite donc de toujours bien fonctionner afin de vous éviter des surprises désagréables. Chez PCK, le moindre premier signe de fatigue de votre télécommande est rapidement pris en charge.', '2020-03-15 08:53:00', '2020-04-07 20:36:28', NULL),
(4, 'services/April2020/t4xGlsXjFG7HmZ06uBSg.jpg', 'REPRODUCTION CLÉ Voiture, Moto, Poids Lourds, Maison.', 'Nous copions et reproduisons toutes les marques de clés de voiture.    À travers la ville de Ksar Hellal et son agglomération, nous copions et reproduisons toutes les marques de clés de voiture. Une copie clé voiture est la solution pour pouvoir profiter rapidement de votre voiture et faire vos courses. Au sein de la société PCK, tous nos équipements sont conforme pour effectuer une copie de votre clé. Toutes les marques de voiture sont prises en compte   À commencer par les voitures de marque française les plus communes, Citroën, Peugeot, Renault, jusqu’aux modèles spéciaux, en passant par toutes les marques étrangères comme des allemandes, des japonaises ou encore des américaines. Le travail s’effectue avec grand soin pour que vous ayez désormais une copie de votre clé en un temps record. Chez PCK, la satisfaction du client reste la première chose recherchée. Nous réalisons ainsi nos œuvres sur tous les modèles de véhicule sans aucune exception. Vous trouverez chez nous toute l’expertise dont vous avez besoin pour vous permettre à nouveau de disposer d’une clé et de rouler en toute sécurité à travers les routes de Tunis.', '2020-03-15 08:53:00', '2020-04-07 20:48:28', NULL),
(5, 'services/April2020/ScrAd6F2ccgZ9YVrMJbb.png', 'RÉPARATION TOUTE MARQUE DE CLÉ DE VOITURE', 'Service de réparation des télécommandes automobile, nous procédons à la réparation du circuit imprimé, le remplacement des boutons poussoirs micro switch manquants ou HS. Le remplacement, montage du nouveau boitier de télécommande, d\'une pile lithium longue durée Test HF, test du transpondeur.', '2020-03-15 14:01:00', '2020-04-07 19:37:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Prince  Car  Key', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'le spécialiste de la clé de voiture sur ksarhellal et sa région', '', 'text', 3, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2020/7vPnfww3RIBrAaFaHS81.png', '', 'image', 4, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 12, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/March2020/0avGaWyw2WsNifRwsZqZ.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'admin carkey', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/March2020/CPn0egpw4zEqDHNxWqiy.jpg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/March2020/lqNI44ZlJUJMGrxTch6F.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.email', 'email', 'prince@carkey.tn', NULL, 'text', 13, 'Site'),
(13, 'site.facebook', 'facebook', 'https://www.facebook.com/1KsarHellal/?modal=admin_todo_tour', NULL, 'text', 14, 'Site'),
(15, 'site.telephone', 'telephone', '50025900', NULL, 'text', 15, 'Site'),
(17, 'site.image', 'image', 'settings/May2020/XqhSVw4P6i7v7EMfI7HU.png', NULL, 'image', 6, 'Site'),
(18, 'site.bg image', 'bg image', '', NULL, 'image', 8, 'Site'),
(19, 'site.subtitle', 'subtitle', 'Spécialiste des clés automobiles', NULL, 'text', 2, 'Site'),
(23, 'site.adress', 'adress', 'Rue de Enfidha Ksar Hellal 5070', NULL, 'text', 16, 'Site'),
(24, 'site.instagram', 'instagram', 'instfknjfxmdn sdkfjsm l', NULL, 'text', 17, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-03-13 21:28:26', '2020-03-13 21:28:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-03-13 21:28:27', '2020-03-13 21:28:27'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-03-13 21:28:27', '2020-03-13 21:28:27'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-03-13 21:28:28', '2020-03-13 21:28:28'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-03-13 21:28:29', '2020-03-13 21:28:29'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-03-13 21:28:29', '2020-03-13 21:28:29'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-03-13 21:28:29', '2020-03-13 21:28:29'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-03-13 21:28:29', '2020-03-13 21:28:29'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-03-13 21:28:29', '2020-03-13 21:28:29'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-03-13 21:28:29', '2020-03-13 21:28:29'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-03-13 21:28:29', '2020-03-13 21:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\March2020\\GtsKRHlcfpzc0NzrK0ST.png', NULL, '$2y$10$0Uk2NjzARnwJn3Luf7Vk..jCziUQ0byLtvQNTh6210jxJF/WrPs9G', 'fluj6GWPh1c56N5rZoj2QmUnwqyJexS1TWPnD30arETj7mqy7cPVVFq6o8iF', '{\"locale\":\"en\"}', '2020-03-13 21:28:22', '2020-04-04 15:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
