-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 06:56 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shweaain`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_ratings`
--

CREATE TABLE `agent_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `agent_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_type_id` int(11) NOT NULL,
  `business_type_id` int(11) NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_rooms` smallint(6) DEFAULT NULL,
  `number_of_bathroom` smallint(6) NOT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deal_done` tinyint(4) NOT NULL,
  `is_approve` tinyint(4) NOT NULL,
  `number_of_cars_at_lot_size` smallint(6) DEFAULT NULL,
  `area` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lot_size` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `user_id` smallint(6) NOT NULL,
  `floor` smallint(6) DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `township_id` smallint(6) NOT NULL,
  `apartment_features_id` smallint(6) DEFAULT NULL,
  `img_id` smallint(6) DEFAULT NULL,
  `google_map_address` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_features`
--

CREATE TABLE `apartment_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_types`
--

CREATE TABLE `apartment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
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
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'apartment_id', 'text', 'Apartment Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 5, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(26, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 6, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 6, 'country_id', 'text', 'Country Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(30, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 4),
(31, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(32, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 7, 'states_id', 'text', 'States Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 7, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 3),
(35, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(36, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(37, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 8, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 8, 'apartments_id', 'text', 'Apartments Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(40, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(41, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(42, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 9, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(44, 9, 'agent_id', 'text', 'Agent Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(45, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(46, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(47, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 10, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(50, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(51, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 11, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(53, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(54, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(55, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 12, 'title_en', 'text', 'Title En', 0, 1, 1, 1, 1, 1, '{}', 2),
(57, 12, 'apartment_type_id', 'text', 'Apartment Type Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 12, 'business_type_id', 'text', 'Business Type Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 12, 'description_en', 'text', 'Description En', 0, 1, 1, 1, 1, 1, '{}', 5),
(60, 12, 'number_of_rooms', 'text', 'Number Of Rooms', 0, 1, 1, 1, 1, 1, '{}', 6),
(61, 12, 'number_of_bathroom', 'text', 'Number Of Bathroom', 1, 1, 1, 1, 1, 1, '{}', 7),
(62, 12, 'address_en', 'text', 'Address En', 0, 1, 1, 1, 1, 1, '{}', 8),
(63, 12, 'is_deal_done', 'text', 'Is Deal Done', 1, 1, 1, 1, 1, 1, '{}', 9),
(64, 12, 'is_approve', 'text', 'Is Approve', 1, 1, 1, 1, 1, 1, '{}', 10),
(65, 12, 'number_of_cars_at_lot_size', 'text', 'Number Of Cars At Lot Size', 0, 1, 1, 1, 1, 1, '{}', 11),
(66, 12, 'area', 'text', 'Area', 0, 1, 1, 1, 1, 1, '{}', 12),
(67, 12, 'lot_size', 'text', 'Lot Size', 0, 1, 1, 1, 1, 1, '{}', 13),
(68, 12, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 14),
(69, 12, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 15),
(70, 12, 'floor', 'text', 'Floor', 0, 1, 1, 1, 1, 1, '{}', 16),
(71, 12, 'available_date', 'text', 'Available Date', 0, 1, 1, 1, 1, 1, '{}', 17),
(72, 12, 'township_id', 'text', 'Township Id', 1, 1, 1, 1, 1, 1, '{}', 18),
(73, 12, 'apartment_features_id', 'text', 'Apartment Features Id', 0, 1, 1, 1, 1, 1, '{}', 19),
(74, 12, 'img_id', 'text', 'Img Id', 0, 1, 1, 1, 1, 1, '{}', 20),
(75, 12, 'google_map_address', 'text', 'Google Map Address', 0, 1, 1, 1, 1, 1, '{}', 21),
(76, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 22),
(77, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(78, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 24),
(79, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 13, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(81, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(82, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(83, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 14, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(85, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(86, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(87, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 16, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(89, 16, 'apartment_id', 'text', 'Apartment Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(90, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(91, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(92, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 17, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 17, 'avator_url', 'text', 'Avator Url', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 17, 'thumbnail_url', 'text', 'Thumbnail Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 17, 'preview_url', 'text', 'Preview Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 17, 'default_url', 'text', 'Default Url', 0, 1, 1, 1, 1, 1, '{}', 6),
(98, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(99, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

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
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(5, 'ratings', 'ratings', 'Rating', 'Ratings', 'voyager-star', 'App\\Rating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:27:42', '2020-09-06 09:27:42'),
(6, 'states', 'states', 'State', 'States', 'voyager-location', 'App\\State', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:28:16', '2020-09-06 09:28:16'),
(7, 'townships', 'townships', 'Township', 'Townships', 'voyager-location', 'App\\Township', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:28:26', '2020-09-06 09:28:26'),
(8, 'transactions', 'transactions', 'Transaction', 'Transactions', 'voyager-window-list', 'App\\Transaction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:29:15', '2020-09-06 09:29:15'),
(9, 'agent_ratings', 'agent-ratings', 'Agent Rating', 'Agent Ratings', 'voyager-star', 'App\\AgentRating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:29:45', '2020-09-06 09:29:45'),
(10, 'apartment_features', 'apartment-features', 'Apartment Feature', 'Apartment Features', 'voyager-lighthouse', 'App\\ApartmentFeature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(11, 'apartment_types', 'apartment-types', 'Apartment Type', 'Apartment Types', 'voyager-home', 'App\\ApartmentType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:30:31', '2020-09-06 09:30:31'),
(12, 'apartments', 'apartments', 'Apartment', 'Apartments', 'voyager-lighthouse', 'App\\Apartment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:30:47', '2020-09-06 09:30:47'),
(13, 'business_types', 'business-types', 'Business Type', 'Business Types', 'voyager-people', 'App\\BusinessType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(14, 'countries', 'countries', 'Country', 'Countries', 'voyager-location', 'App\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(16, 'favourites', 'favourites', 'Favourite', 'Favourites', 'voyager-heart', 'App\\Favourite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:33:10', '2020-09-06 09:33:10'),
(17, 'images', 'images', 'Image', 'Images', 'voyager-camera', 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:33:51', '2020-09-06 09:33:51');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `apartment_id` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avator_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(2, 'frontend_menu', '2020-09-06 09:37:00', '2020-09-06 09:37:21');

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
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-09-06 09:00:53', '2020-09-06 09:00:53', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2020-09-06 09:00:53', '2020-09-06 09:50:18', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 28, 1, '2020-09-06 09:00:53', '2020-09-06 09:49:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 28, 2, '2020-09-06 09:00:53', '2020-09-06 09:49:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2020-09-06 09:00:53', '2020-09-06 09:50:18', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2020-09-06 09:00:53', '2020-09-06 09:50:18', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.hooks', NULL),
(12, 1, 'Ratings', '', '_self', 'voyager-star', NULL, 26, 1, '2020-09-06 09:27:42', '2020-09-06 09:44:58', 'voyager.ratings.index', NULL),
(13, 1, 'States', '', '_self', 'voyager-location', NULL, 24, 2, '2020-09-06 09:28:16', '2020-09-06 09:40:29', 'voyager.states.index', NULL),
(14, 1, 'Townships', '', '_self', 'voyager-location', NULL, 24, 1, '2020-09-06 09:28:27', '2020-09-06 09:40:27', 'voyager.townships.index', NULL),
(15, 1, 'Transactions', '', '_self', 'voyager-window-list', NULL, 27, 2, '2020-09-06 09:29:15', '2020-09-06 09:47:13', 'voyager.transactions.index', NULL),
(16, 1, 'Agent Ratings', '', '_self', 'voyager-star', NULL, 26, 3, '2020-09-06 09:29:45', '2020-09-06 09:49:17', 'voyager.agent-ratings.index', NULL),
(17, 1, 'Apartment Features', '', '_self', 'voyager-lighthouse', NULL, 25, 3, '2020-09-06 09:30:12', '2020-09-06 09:50:09', 'voyager.apartment-features.index', NULL),
(18, 1, 'Apartment Types', '', '_self', 'voyager-home', NULL, 25, 2, '2020-09-06 09:30:31', '2020-09-06 09:50:09', 'voyager.apartment-types.index', NULL),
(19, 1, 'Apartments', '', '_self', 'voyager-lighthouse', NULL, 25, 1, '2020-09-06 09:30:47', '2020-09-06 09:41:45', 'voyager.apartments.index', NULL),
(20, 1, 'Business Types', '', '_self', 'voyager-people', NULL, 27, 1, '2020-09-06 09:31:46', '2020-09-06 09:47:09', 'voyager.business-types.index', NULL),
(21, 1, 'Countries', '', '_self', 'voyager-location', NULL, 24, 3, '2020-09-06 09:32:16', '2020-09-06 09:49:39', 'voyager.countries.index', NULL),
(22, 1, 'Favourites', '', '_self', 'voyager-heart', NULL, 26, 2, '2020-09-06 09:33:10', '2020-09-06 09:44:59', 'voyager.favourites.index', NULL),
(23, 1, 'Images', '', '_self', 'voyager-camera', NULL, NULL, 2, '2020-09-06 09:33:51', '2020-09-06 09:49:58', 'voyager.images.index', NULL),
(24, 1, 'Location', '', '_self', 'voyager-location', '#000000', NULL, 6, '2020-09-06 09:39:51', '2020-09-06 09:50:18', NULL, ''),
(25, 1, 'Apartments', '', '_self', 'voyager-home', '#000000', NULL, 3, '2020-09-06 09:40:59', '2020-09-06 09:49:58', NULL, ''),
(26, 1, 'Rating and Favourite', '', '_self', 'voyager-smile', '#000000', NULL, 5, '2020-09-06 09:44:43', '2020-09-06 09:49:58', NULL, ''),
(27, 1, 'Business', '', '_self', 'voyager-bar-chart', '#000000', NULL, 4, '2020-09-06 09:46:48', '2020-09-06 09:49:58', NULL, ''),
(28, 1, 'User and Role', '', '_self', 'voyager-people', '#000000', NULL, 8, '2020-09-06 09:48:33', '2020-09-06 09:50:18', NULL, '');

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
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2016_01_01_000000_add_voyager_user_fields', 1),
(54, '2016_01_01_000000_create_data_types_table', 1),
(55, '2016_01_01_000000_create_pages_table', 1),
(56, '2016_01_01_000000_create_posts_table', 1),
(57, '2016_02_15_204651_create_categories_table', 1),
(58, '2016_05_19_173453_create_menu_table', 1),
(59, '2016_10_21_190000_create_roles_table', 1),
(60, '2016_10_21_190000_create_settings_table', 1),
(61, '2016_11_30_135954_create_permission_table', 1),
(62, '2016_11_30_141208_create_permission_role_table', 1),
(63, '2016_12_26_201236_data_types__add__server_side', 1),
(64, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(65, '2017_01_14_005015_create_translations_table', 1),
(66, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(67, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(68, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(69, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(70, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(71, '2017_08_05_000000_add_group_to_settings_table', 1),
(72, '2017_11_26_013050_add_user_role_relationship', 1),
(73, '2017_11_26_015000_create_user_roles_table', 1),
(74, '2018_03_11_000000_add_user_settings', 1),
(75, '2018_03_14_000000_add_details_to_data_types_table', 1),
(76, '2018_03_16_000000_make_settings_value_nullable', 1),
(77, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'browse_admin', NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(2, 'browse_bread', NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(3, 'browse_database', NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(4, 'browse_media', NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(5, 'browse_compass', NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(6, 'browse_menus', 'menus', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(7, 'read_menus', 'menus', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(8, 'edit_menus', 'menus', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(9, 'add_menus', 'menus', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(10, 'delete_menus', 'menus', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(11, 'browse_roles', 'roles', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(12, 'read_roles', 'roles', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(13, 'edit_roles', 'roles', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(14, 'add_roles', 'roles', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(15, 'delete_roles', 'roles', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(16, 'browse_users', 'users', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(17, 'read_users', 'users', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(18, 'edit_users', 'users', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(19, 'add_users', 'users', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(20, 'delete_users', 'users', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(21, 'browse_settings', 'settings', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(22, 'read_settings', 'settings', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(23, 'edit_settings', 'settings', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(24, 'add_settings', 'settings', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(25, 'delete_settings', 'settings', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(26, 'browse_hooks', NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(27, 'browse_ratings', 'ratings', '2020-09-06 09:27:42', '2020-09-06 09:27:42'),
(28, 'read_ratings', 'ratings', '2020-09-06 09:27:42', '2020-09-06 09:27:42'),
(29, 'edit_ratings', 'ratings', '2020-09-06 09:27:42', '2020-09-06 09:27:42'),
(30, 'add_ratings', 'ratings', '2020-09-06 09:27:42', '2020-09-06 09:27:42'),
(31, 'delete_ratings', 'ratings', '2020-09-06 09:27:42', '2020-09-06 09:27:42'),
(32, 'browse_states', 'states', '2020-09-06 09:28:16', '2020-09-06 09:28:16'),
(33, 'read_states', 'states', '2020-09-06 09:28:16', '2020-09-06 09:28:16'),
(34, 'edit_states', 'states', '2020-09-06 09:28:16', '2020-09-06 09:28:16'),
(35, 'add_states', 'states', '2020-09-06 09:28:16', '2020-09-06 09:28:16'),
(36, 'delete_states', 'states', '2020-09-06 09:28:16', '2020-09-06 09:28:16'),
(37, 'browse_townships', 'townships', '2020-09-06 09:28:27', '2020-09-06 09:28:27'),
(38, 'read_townships', 'townships', '2020-09-06 09:28:27', '2020-09-06 09:28:27'),
(39, 'edit_townships', 'townships', '2020-09-06 09:28:27', '2020-09-06 09:28:27'),
(40, 'add_townships', 'townships', '2020-09-06 09:28:27', '2020-09-06 09:28:27'),
(41, 'delete_townships', 'townships', '2020-09-06 09:28:27', '2020-09-06 09:28:27'),
(42, 'browse_transactions', 'transactions', '2020-09-06 09:29:15', '2020-09-06 09:29:15'),
(43, 'read_transactions', 'transactions', '2020-09-06 09:29:15', '2020-09-06 09:29:15'),
(44, 'edit_transactions', 'transactions', '2020-09-06 09:29:15', '2020-09-06 09:29:15'),
(45, 'add_transactions', 'transactions', '2020-09-06 09:29:15', '2020-09-06 09:29:15'),
(46, 'delete_transactions', 'transactions', '2020-09-06 09:29:15', '2020-09-06 09:29:15'),
(47, 'browse_agent_ratings', 'agent_ratings', '2020-09-06 09:29:45', '2020-09-06 09:29:45'),
(48, 'read_agent_ratings', 'agent_ratings', '2020-09-06 09:29:45', '2020-09-06 09:29:45'),
(49, 'edit_agent_ratings', 'agent_ratings', '2020-09-06 09:29:45', '2020-09-06 09:29:45'),
(50, 'add_agent_ratings', 'agent_ratings', '2020-09-06 09:29:45', '2020-09-06 09:29:45'),
(51, 'delete_agent_ratings', 'agent_ratings', '2020-09-06 09:29:45', '2020-09-06 09:29:45'),
(52, 'browse_apartment_features', 'apartment_features', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(53, 'read_apartment_features', 'apartment_features', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(54, 'edit_apartment_features', 'apartment_features', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(55, 'add_apartment_features', 'apartment_features', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(56, 'delete_apartment_features', 'apartment_features', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(57, 'browse_apartment_types', 'apartment_types', '2020-09-06 09:30:31', '2020-09-06 09:30:31'),
(58, 'read_apartment_types', 'apartment_types', '2020-09-06 09:30:31', '2020-09-06 09:30:31'),
(59, 'edit_apartment_types', 'apartment_types', '2020-09-06 09:30:31', '2020-09-06 09:30:31'),
(60, 'add_apartment_types', 'apartment_types', '2020-09-06 09:30:31', '2020-09-06 09:30:31'),
(61, 'delete_apartment_types', 'apartment_types', '2020-09-06 09:30:31', '2020-09-06 09:30:31'),
(62, 'browse_apartments', 'apartments', '2020-09-06 09:30:47', '2020-09-06 09:30:47'),
(63, 'read_apartments', 'apartments', '2020-09-06 09:30:47', '2020-09-06 09:30:47'),
(64, 'edit_apartments', 'apartments', '2020-09-06 09:30:47', '2020-09-06 09:30:47'),
(65, 'add_apartments', 'apartments', '2020-09-06 09:30:47', '2020-09-06 09:30:47'),
(66, 'delete_apartments', 'apartments', '2020-09-06 09:30:47', '2020-09-06 09:30:47'),
(67, 'browse_business_types', 'business_types', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(68, 'read_business_types', 'business_types', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(69, 'edit_business_types', 'business_types', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(70, 'add_business_types', 'business_types', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(71, 'delete_business_types', 'business_types', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(72, 'browse_countries', 'countries', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(73, 'read_countries', 'countries', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(74, 'edit_countries', 'countries', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(75, 'add_countries', 'countries', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(76, 'delete_countries', 'countries', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(77, 'browse_favourites', 'favourites', '2020-09-06 09:33:10', '2020-09-06 09:33:10'),
(78, 'read_favourites', 'favourites', '2020-09-06 09:33:10', '2020-09-06 09:33:10'),
(79, 'edit_favourites', 'favourites', '2020-09-06 09:33:10', '2020-09-06 09:33:10'),
(80, 'add_favourites', 'favourites', '2020-09-06 09:33:10', '2020-09-06 09:33:10'),
(81, 'delete_favourites', 'favourites', '2020-09-06 09:33:10', '2020-09-06 09:33:10'),
(82, 'browse_images', 'images', '2020-09-06 09:33:51', '2020-09-06 09:33:51'),
(83, 'read_images', 'images', '2020-09-06 09:33:51', '2020-09-06 09:33:51'),
(84, 'edit_images', 'images', '2020-09-06 09:33:51', '2020-09-06 09:33:51'),
(85, 'add_images', 'images', '2020-09-06 09:33:51', '2020-09-06 09:33:51'),
(86, 'delete_images', 'images', '2020-09-06 09:33:51', '2020-09-06 09:33:51');

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
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(19, 3),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `apartment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Super Admin', 'Administrator', '2020-09-06 08:51:54', '2020-09-06 09:54:43'),
(2, 'user', 'Normal User', '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(3, 'Dev Admin', 'Developer Admin', '2020-09-06 09:54:27', '2020-09-06 09:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` int(10) UNSIGNED NOT NULL,
  `states_id` smallint(6) NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `apartments_id` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$ATAAeGmSynzlOS.b3o9LXeabiIvguObb.H7bNeZAX8odTViuwvybe', 'uJnm1lqOdpWWpolThqGvxLbAGYvtBtUKDEpnHW8WEhKLZpM10dZ4L0wO2x3V', '{\"locale\":\"en\"}', '2020-09-06 08:51:54', '2020-09-06 09:51:08'),
(2, 3, 'Admin', 'dev@admin.com', 'users/default.png', NULL, '$2y$10$ODTpUo4K4bvcYzo3Cojz5ussN8qsfdY9/8lUvUkfnjkjKr0WyaoTu', NULL, '{\"locale\":\"en\"}', '2020-09-06 09:51:33', '2020-09-06 09:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_ratings`
--
ALTER TABLE `agent_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment_features`
--
ALTER TABLE `apartment_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment_types`
--
ALTER TABLE `apartment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_ratings`
--
ALTER TABLE `agent_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apartment_features`
--
ALTER TABLE `apartment_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apartment_types`
--
ALTER TABLE `apartment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
