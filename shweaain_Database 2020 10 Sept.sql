-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 04:10 AM
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
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_type_id` int(10) UNSIGNED NOT NULL,
  `business_type_id` int(10) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `floor` smallint(6) DEFAULT NULL,
  `available_date` date DEFAULT NULL,
  `township_id` int(10) UNSIGNED NOT NULL,
  `img_id` smallint(6) DEFAULT NULL,
  `google_map_address` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `title_en`, `apartment_type_id`, `business_type_id`, `description_en`, `number_of_rooms`, `number_of_bathroom`, `address_en`, `is_deal_done`, `is_approve`, `number_of_cars_at_lot_size`, `area`, `lot_size`, `price`, `user_id`, `customer_id`, `floor`, `available_date`, `township_id`, `img_id`, `google_map_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nice house at Mount St.', 1, 1, 'Nice house - 4 rooms - 3 parking slots. $1100', 4, 5, 'Mount St. 401', 0, 1, 3, '12', NULL, 1100, 4, NULL, 1, '0000-00-00', 4, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(2, 'Apartment at 12N - 900 monthly', 2, 1, 'Apartment at 12N - 2 rooms - 1 parking slot - 110K', 2, 1, '2th North Lane', 0, 1, 1, '12', NULL, 900, 4, NULL, 2, '0000-00-00', 4, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(3, 'Lincoln Condos - for rent', 3, 1, 'OFFER! Condo at Lincoln. 4 rooms -3 bathrooms - 3 parkings. Get it at 200K!', 4, 3, 'Lincoln St.', 0, 1, 3, '14', NULL, 2100, 4, NULL, 2, '0000-00-00', 4, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(4, 'For rent! House at Burlington', 1, 1, 'Looking at Farifield? Just what you need: 3 rooms - 4 bathrooms - 2 parking slots', 3, 4, 'Burlington Ave.', 0, 1, 2, '18', NULL, 1100, 4, NULL, 1, '0000-00-00', 5, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(5, 'Fairfield - apartment for rent', 2, 1, 'For rent. 3 rooms - 1 parking. Just at 700/mo', 3, 2, '3rd St.', 0, 1, 1, '15', NULL, 700, 4, NULL, 1, '0000-00-00', 5, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(6, 'For rent - house near downtown', 1, 1, 'Nice house near Downtown. 4 rooms - 3 parking slots. 850 mo', 4, 3, 'Fitzgerald Ave', 0, 1, 3, '13', NULL, 850, 4, NULL, 1, '0000-00-00', 6, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(7, 'House at dolphin - for rent', 1, 1, 'Quiet neighborhood. 3 rooms - 4 bathrooms. 2 parking slots. 790 mo', 3, 4, 'Dolphin Rd.', 0, 1, 2, '16', NULL, 790, 4, NULL, 2, '0000-00-00', 6, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(8, 'For rent at Creek Lane', 1, 1, 'For rent in albany. 3 rooms. 800 mo', 3, 3, 'Creek Lane', 0, 1, 2, '21', NULL, 800, 5, NULL, 2, '0000-00-00', 7, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(9, 'for rent near downtown', 1, 1, 'House at Los Pinos - 4 rooms - pool - 1200', 4, 4, 'Los Pinos Lane', 0, 1, 3, '15', NULL, 1200, 5, NULL, 1, '0000-00-00', 8, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(10, 'for rent in downtown', 2, 1, 'Single\'s apt. 1 room. 600 mo', 1, 1, 'Brown St.', 0, 1, 0, '18', NULL, 600, 5, NULL, 1, '0000-00-00', 8, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(11, 'offer - for rent at Brown', 2, 1, 'Comfortable. 2 rooms. 780 mo', 2, 1, 'Brown St.', 0, 1, 1, '12', NULL, 780, 5, NULL, 1, '0000-00-00', 8, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(12, 'For rent near Hollywood', 3, 1, 'Cond at Palm Road - 3 rooms - 2300K', 3, 4, 'Palm Rd.', 0, 1, 2, '19', NULL, 2300, 5, NULL, 2, '0000-00-00', 8, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(13, 'For rent at Franklin', 1, 1, 'House at Franklin - 1200', 2, 3, 'Franklin View', 0, 1, 1, '20', NULL, 1200, 5, NULL, 2, '0000-00-00', 9, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(14, 'For rent at Missouri St.', 1, 1, 'House at Missouri - 3 rooms - 1000 monthly', 3, 3, 'Missouri St.', 0, 1, 2, '14', NULL, 1000, 5, NULL, 1, '0000-00-00', 9, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(15, 'Mount St. 411 for rent', 1, 1, 'House for rent. 5 rooms. 1200/mo', 5, 4, 'Mount St. 411', 0, 1, 4, '18', NULL, 1200, 6, NULL, 1, '0000-00-00', 4, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(16, 'Mount St. 420 for rent', 2, 1, 'Apartment for rent. 2 rooms. 500/mo', 2, 2, 'Mount St. 420', 0, 1, 2, '10', NULL, 500, 6, NULL, 1, '0000-00-00', 4, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(17, '2nd St. for rent', 1, 1, 'House for rent. 3 rooms. 700/mo', 3, 3, '2nd St.', 0, 1, 2, '23', NULL, 700, 6, NULL, 2, '0000-00-00', 5, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(18, 'Burlington Ave. for rent', 1, 1, 'House for rent. 4 rooms. 850/mo', 4, 4, 'Burlington Ave.', 0, 1, 2, '12', NULL, 850, 6, NULL, 2, '0000-00-00', 5, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(19, 'Parker Lane for rent', 1, 1, 'House for rent. 4 rooms. 1050/mo', 4, 4, 'Parker Lane', 0, 1, 2, '14', NULL, 1050, 6, NULL, 1, '0000-00-00', 8, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL),
(20, 'Stranton Rd. For rent', 3, 1, 'Beautiful view of the city. 5 rooms. 2200/mo', 5, 4, 'Stranton Rd.', 0, 1, 3, '16', NULL, 2200, 6, NULL, 1, '0000-00-00', 8, NULL, NULL, '2020-09-07 17:30:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apartment_features`
--

CREATE TABLE `apartment_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_features`
--

INSERT INTO `apartment_features` (`id`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'AC', '2020-09-06 20:03:28', NULL),
(2, 'Microwave', '2020-09-07 17:32:11', NULL),
(3, 'Window coverings', '2020-09-07 17:32:23', NULL),
(4, 'Lawn', '2020-09-07 17:32:34', NULL),
(5, 'Swimming pool', '2020-09-07 17:32:49', NULL),
(6, 'WiFi', '2020-09-06 20:03:28', NULL),
(7, 'Dryer', '2020-09-07 17:11:08', NULL),
(8, 'Gym', '2020-09-07 17:33:13', NULL),
(9, 'TV cable', '2020-09-07 17:33:31', NULL),
(10, 'Laundry', '2020-09-07 17:33:43', NULL),
(11, 'Barbeque', '2020-09-07 17:34:10', NULL),
(12, 'Refrigerator', '2020-09-07 17:34:42', NULL),
(13, 'Sauna', '2020-09-07 17:34:42', NULL),
(14, 'Washer', '2020-09-07 17:35:13', NULL),
(15, 'Outdoor washer', '2020-09-07 17:35:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apartment_ratings`
--

CREATE TABLE `apartment_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `apartment_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_types`
--

CREATE TABLE `apartment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_types`
--

INSERT INTO `apartment_types` (`id`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'house', '2020-09-06 20:01:21', NULL),
(2, 'apartment', '2020-09-06 20:01:39', NULL),
(3, 'condo', '2020-09-06 20:01:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apt_feat_conn`
--

CREATE TABLE `apt_feat_conn` (
  `id` int(10) UNSIGNED NOT NULL,
  `apartment_feature_id` int(10) UNSIGNED NOT NULL,
  `apartment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'rent', '2020-09-07 16:09:26', NULL),
(2, 'sell', '2020-09-07 16:09:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'Myanmar', '2020-09-06 19:39:47', NULL),
(2, 'Singapore', '2020-09-06 19:39:47', NULL),
(3, 'United States', '2020-09-06 19:39:47', NULL),
(4, 'Ethiopia', '2020-09-06 19:39:47', NULL),
(5, 'Vietnam', '2020-09-06 19:39:47', NULL),
(6, 'Ecuador', '2020-09-06 19:39:47', NULL);

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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 7),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 10),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 11),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 8),
(22, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 5, 'apartment_id', 'text', 'Apartment Id', 1, 0, 1, 0, 0, 0, '{}', 2),
(24, 5, 'user_id', 'text', 'User Id', 1, 0, 1, 0, 0, 0, '{}', 4),
(25, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(26, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(27, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 6, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 6, 'country_id', 'text', 'Country Id', 1, 0, 1, 0, 0, 0, '{}', 3),
(30, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 4),
(31, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(32, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 7, 'states_id', 'text', 'States Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 7, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 3),
(35, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(36, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(37, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 8, 'user_id', 'text', 'User Id', 1, 0, 1, 0, 0, 0, '{}', 2),
(39, 8, 'apartments_id', 'text', 'Apartments Id', 1, 0, 1, 0, 0, 0, '{}', 3),
(40, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(41, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(42, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 9, 'user_id', 'text', 'User Id', 0, 0, 1, 0, 0, 0, '{}', 2),
(44, 9, 'agent_id', 'text', 'Agent Id', 0, 0, 1, 0, 0, 0, '{}', 4),
(45, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(46, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
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
(57, 12, 'apartment_type_id', 'text', 'Apartment Type Id', 1, 0, 0, 0, 0, 0, '{}', 3),
(58, 12, 'business_type_id', 'text', 'Business Type Id', 1, 0, 1, 0, 0, 0, '{}', 5),
(59, 12, 'description_en', 'text', 'Description En', 0, 1, 1, 1, 1, 1, '{}', 7),
(60, 12, 'number_of_rooms', 'text', 'Number Of Rooms', 0, 1, 1, 1, 1, 1, '{}', 8),
(61, 12, 'number_of_bathroom', 'text', 'Number Of Bathroom', 1, 1, 1, 1, 1, 1, '{}', 9),
(62, 12, 'address_en', 'text', 'Address En', 0, 1, 1, 1, 1, 1, '{}', 10),
(63, 12, 'is_deal_done', 'checkbox', 'Is Deal Done', 1, 1, 1, 1, 1, 1, '{}', 11),
(64, 12, 'is_approve', 'checkbox', 'Is Approve', 1, 1, 1, 1, 1, 1, '{}', 12),
(65, 12, 'number_of_cars_at_lot_size', 'text', 'Number Of Cars At Lot Size', 0, 1, 1, 1, 1, 1, '{}', 13),
(66, 12, 'area', 'text', 'Area', 0, 1, 1, 1, 1, 1, '{}', 14),
(67, 12, 'lot_size', 'text', 'Lot Size', 0, 1, 1, 1, 1, 1, '{}', 15),
(68, 12, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 16),
(69, 12, 'user_id', 'text', 'User Id', 1, 0, 1, 0, 0, 0, '{}', 17),
(70, 12, 'floor', 'text', 'Floor', 0, 1, 1, 1, 1, 1, '{}', 19),
(71, 12, 'available_date', 'date', 'Available Date', 0, 1, 1, 1, 1, 1, '{}', 20),
(72, 12, 'township_id', 'text', 'Township Id', 1, 0, 1, 0, 0, 0, '{}', 21),
(73, 12, 'apartment_features_id', 'text', 'Apartment Features Id', 0, 0, 1, 0, 0, 0, '{}', 23),
(74, 12, 'img_id', 'text', 'Img Id', 0, 0, 1, 0, 0, 0, '{}', 25),
(75, 12, 'google_map_address', 'text', 'Google Map Address', 0, 1, 1, 1, 1, 1, '{}', 27),
(76, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 28),
(77, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 29),
(78, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 1, 0, 0, 0, '{}', 30),
(79, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 13, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(81, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(82, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(83, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 14, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, '{}', 2),
(85, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(86, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(87, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 16, 'user_id', 'text', 'User Id', 1, 0, 1, 0, 0, 0, '{}', 2),
(89, 16, 'apartment_id', 'text', 'Apartment Id', 1, 0, 1, 0, 0, 0, '{}', 4),
(90, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(91, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(92, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 17, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 17, 'avator_url', 'text', 'Avator Url', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 17, 'thumbnail_url', 'text', 'Thumbnail Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 17, 'preview_url', 'text', 'Preview Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 17, 'default_url', 'text', 'Default Url', 0, 1, 1, 1, 1, 1, '{}', 6),
(98, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(99, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(100, 12, 'apartment_hasone_apartment_type_relationship', 'relationship', 'apartment_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ApartmentType\",\"table\":\"apartment_types\",\"type\":\"belongsTo\",\"column\":\"apartment_type_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(102, 12, 'apartment_belongsto_business_type_relationship', 'relationship', 'business_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\BusinessType\",\"table\":\"business_types\",\"type\":\"belongsTo\",\"column\":\"apartment_type_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(103, 12, 'apartment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(104, 12, 'apartment_hasmany_apartment_feature_relationship', 'relationship', 'apartment_features', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ApartmentFeature\",\"table\":\"apartment_features\",\"type\":\"hasMany\",\"column\":\"name_en\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(105, 12, 'apartment_belongsto_township_relationship', 'relationship', 'townships', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Township\",\"table\":\"townships\",\"type\":\"belongsTo\",\"column\":\"township_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 22),
(106, 12, 'apartment_hasmany_image_relationship', 'relationship', 'images', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Image\",\"table\":\"images\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"default_url\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 26),
(107, 7, 'township_belongsto_state_relationship', 'relationship', 'states', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"states_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(108, 6, 'state_belongsto_country_relationship', 'relationship', 'countries', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(109, 8, 'transaction_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsTo\",\"column\":\"apartments_id\",\"key\":\"id\",\"label\":\"title_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(110, 8, 'transaction_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(111, 16, 'favourite_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(112, 16, 'favourite_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsTo\",\"column\":\"apartment_id\",\"key\":\"id\",\"label\":\"title_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(113, 5, 'rating_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsTo\",\"column\":\"apartment_id\",\"key\":\"id\",\"label\":\"title_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(114, 5, 'rating_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(115, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(116, 9, 'agent_rating_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(117, 9, 'agent_rating_belongsto_user_relationship_1', 'relationship', 'Agent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"agent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(118, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 18, 'apartment_id', 'text', 'Apartment Id', 1, 0, 1, 0, 0, 0, '{}', 2),
(120, 18, 'user_id', 'text', 'User Id', 1, 0, 1, 0, 0, 0, '{}', 5),
(121, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(122, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(123, 18, 'rate', 'text', 'Rate', 0, 1, 1, 1, 1, 1, '{}', 4),
(124, 18, 'apartment_rating_belongsto_apartment_relationship', 'relationship', 'apartments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Apartment\",\"table\":\"apartments\",\"type\":\"belongsTo\",\"column\":\"apartment_id\",\"key\":\"id\",\"label\":\"title_en\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(125, 18, 'apartment_rating_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"agent_ratings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:00:53', '2020-09-06 11:28:26'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-09-06 09:00:53', '2020-09-06 09:00:53'),
(5, 'ratings', 'ratings', 'Rating', 'Ratings', 'voyager-star', 'App\\Rating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:27:42', '2020-09-06 11:32:48'),
(6, 'states', 'states', 'State', 'States', 'voyager-location', 'App\\State', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:28:16', '2020-09-06 11:19:07'),
(7, 'townships', 'townships', 'Township', 'Townships', 'voyager-location', 'App\\Township', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:28:26', '2020-09-06 11:09:50'),
(8, 'transactions', 'transactions', 'Transaction', 'Transactions', 'voyager-window-list', 'App\\Transaction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:29:15', '2020-09-06 11:19:43'),
(9, 'agent_ratings', 'agent-ratings', 'Agent Rating', 'Agent Ratings', 'voyager-star', 'App\\AgentRating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:29:45', '2020-09-06 11:31:43'),
(10, 'apartment_features', 'apartment-features', 'Apartment Feature', 'Apartment Features', 'voyager-lighthouse', 'App\\ApartmentFeature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:30:12', '2020-09-06 09:30:12'),
(11, 'apartment_types', 'apartment-types', 'Apartment Type', 'Apartment Types', 'voyager-home', 'App\\ApartmentType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:30:31', '2020-09-06 10:47:27'),
(12, 'apartments', 'apartments', 'Apartment', 'Apartments', 'voyager-lighthouse', 'App\\Apartment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:30:47', '2020-09-06 11:24:37'),
(13, 'business_types', 'business-types', 'Business Type', 'Business Types', 'voyager-people', 'App\\BusinessType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:31:46', '2020-09-06 09:31:46'),
(14, 'countries', 'countries', 'Country', 'Countries', 'voyager-location', 'App\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:32:16', '2020-09-06 09:32:16'),
(16, 'favourites', 'favourites', 'Favourite', 'Favourites', 'voyager-heart', 'App\\Favourite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 09:33:10', '2020-09-06 11:22:00'),
(17, 'images', 'images', 'Image', 'Images', 'voyager-camera', 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-06 09:33:51', '2020-09-06 09:33:51'),
(18, 'apartment_ratings', 'apartment-ratings', 'Apartment Rating', 'Apartment Ratings', NULL, 'App\\ApartmentRating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-06 11:37:19', '2020-09-06 11:41:38');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2020-09-06 09:00:53', '2020-09-06 10:06:43', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 28, 1, '2020-09-06 09:00:53', '2020-09-06 09:49:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 28, 2, '2020-09-06 09:00:53', '2020-09-06 09:49:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-09-06 09:00:53', '2020-09-06 11:45:44', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-09-06 09:00:53', '2020-09-06 10:06:43', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-09-06 09:00:53', '2020-09-06 09:37:48', 'voyager.hooks', NULL),
(13, 1, 'States', '', '_self', 'voyager-location', NULL, 24, 2, '2020-09-06 09:28:16', '2020-09-06 11:45:50', 'voyager.states.index', NULL),
(14, 1, 'Townships', '', '_self', 'voyager-location', NULL, 24, 1, '2020-09-06 09:28:27', '2020-09-06 11:45:50', 'voyager.townships.index', NULL),
(15, 1, 'Transactions', '', '_self', 'voyager-window-list', NULL, 27, 2, '2020-09-06 09:29:15', '2020-09-11 07:07:29', 'voyager.transactions.index', NULL),
(16, 1, 'Agent Ratings', '', '_self', 'voyager-star', NULL, 26, 3, '2020-09-06 09:29:45', '2020-09-11 07:07:25', 'voyager.agent-ratings.index', NULL),
(17, 1, 'Apartment Features', '', '_self', 'voyager-lighthouse', NULL, 25, 1, '2020-09-06 09:30:12', '2020-09-06 11:45:38', 'voyager.apartment-features.index', NULL),
(18, 1, 'Apartment Types', '', '_self', 'voyager-home', NULL, 25, 3, '2020-09-06 09:30:31', '2020-09-11 07:07:29', 'voyager.apartment-types.index', NULL),
(20, 1, 'Business Types', '', '_self', 'voyager-people', NULL, 27, 1, '2020-09-06 09:31:46', '2020-09-06 09:47:09', 'voyager.business-types.index', NULL),
(21, 1, 'Countries', '', '_self', 'voyager-location', NULL, 24, 3, '2020-09-06 09:32:16', '2020-09-06 11:45:50', 'voyager.countries.index', NULL),
(22, 1, 'Favourites', '', '_self', 'voyager-heart', NULL, 26, 2, '2020-09-06 09:33:10', '2020-09-11 07:07:18', 'voyager.favourites.index', NULL),
(23, 1, 'Images', '', '_self', 'voyager-camera', NULL, 25, 4, '2020-09-06 09:33:51', '2020-09-11 07:07:29', 'voyager.images.index', NULL),
(24, 1, 'Location', '', '_self', 'voyager-location', '#000000', NULL, 5, '2020-09-06 09:39:51', '2020-09-06 10:06:43', NULL, ''),
(25, 1, 'Apartments', '', '_self', 'voyager-home', '#000000', NULL, 2, '2020-09-06 09:40:59', '2020-09-06 10:06:43', NULL, ''),
(26, 1, 'Rating and Favourite', '', '_self', 'voyager-smile', '#000000', NULL, 4, '2020-09-06 09:44:43', '2020-09-06 10:06:43', NULL, ''),
(27, 1, 'Business', '', '_self', 'voyager-bar-chart', '#000000', NULL, 3, '2020-09-06 09:46:48', '2020-09-06 10:06:43', NULL, ''),
(28, 1, 'User and Role', '', '_self', 'voyager-people', '#000000', NULL, 7, '2020-09-06 09:48:33', '2020-09-06 10:06:43', NULL, ''),
(29, 1, 'Apartment Ratings', '', '_self', NULL, NULL, 26, 1, '2020-09-06 11:37:19', '2020-09-11 07:07:18', 'voyager.apartment-ratings.index', NULL),
(30, 1, 'Apartments', '', '_self', 'voyager-home', '#000000', 25, 2, '2020-09-11 07:07:08', '2020-09-11 07:08:15', 'voyager.apartments.index', 'null');

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
(77, '2019_08_19_000000_create_failed_jobs_table', 1),
(88, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(89, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(90, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(91, '2016_06_01_000004_create_oauth_clients_table', 2),
(92, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('003b8cf815491e54a9662d8dd5dff07c438cebcc15d99fb34009c027282c339e9d4fa9236b62ddbe', 3, '2', NULL, '[]', 0, '2020-09-07 01:35:49', '2020-09-07 01:35:49', '2021-09-06 20:35:49'),
('02215156531523e6a57a2a94ab4af409bf74cac1a92e83c98e164ed5b54bd7f6ed2812f145459fe0', 3, '2', NULL, '[]', 0, '2020-09-07 21:12:29', '2020-09-07 21:12:29', '2021-09-07 16:12:29'),
('042c03f0b77b8fae2c618cd0ea0e06ce2fb9118ed1babe06e4c6bb53e736f77950b76c9dd6dfaffc', 3, '2', NULL, '[]', 0, '2020-09-07 21:06:39', '2020-09-07 21:06:39', '2021-09-07 16:06:39'),
('05c545d92b42fe3f60b1ef27d5ee55b39f04e18e9688d8c8d726b9221ca7823d90e4c9afce4f74ca', 3, '2', NULL, '[]', 0, '2020-09-07 20:49:50', '2020-09-07 20:49:50', '2021-09-07 15:49:50'),
('07fe33915823832c5a3428bcf1bc6ec7739250b8a8360d7119c9230e6b9103264e14151d46e64149', 3, '2', NULL, '[]', 0, '2020-09-08 00:47:29', '2020-09-08 00:47:29', '2021-09-07 19:47:29'),
('0944d11238e548d4ae5adf4017a8beb3c634d138c80860162080ecb18b7f24b8dd90732396a78e82', 3, '2', NULL, '[]', 0, '2020-09-07 02:36:02', '2020-09-07 02:36:02', '2021-09-06 21:36:02'),
('09fbbc7a334b32abdac36ad2b2864bf51a41204ff469be5ae0ddda447976fd87459435b2a2cd801e', 3, '2', NULL, '[]', 0, '2020-09-07 21:12:28', '2020-09-07 21:12:28', '2021-09-07 16:12:28'),
('0b018c9031a0b592452fbfed52b107a8f41300eb621edf368bc70ee7fee6e7d606dde7c9adfd821f', 3, '2', NULL, '[]', 0, '2020-09-07 02:37:57', '2020-09-07 02:37:57', '2021-09-06 21:37:57'),
('0f07043a3c2bc21590dc14c6d2ecf3b3f7c73e113dda1c65f43c972f43a9e907f4c4147fe5dca821', 3, '2', NULL, '[]', 0, '2020-09-07 00:55:22', '2020-09-07 00:55:22', '2021-09-06 19:55:22'),
('115f36f147f6729b84d4b3a60e5438ac28ea8142a08046b2b5029306ca6e83512757744c93316162', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:06', '2020-09-07 21:02:06', '2021-09-07 16:02:06'),
('128c3490b009791e2b890d55a30391052b7b045c63a3be80a14635fd1972f9100cf2fe44ecc911c1', 3, '2', NULL, '[]', 0, '2020-09-07 01:38:49', '2020-09-07 01:38:49', '2021-09-06 20:38:49'),
('1318d1c2f1124f1f995e68a29c89d8df94aca9c7a5eac8faf2230b86f733d289a086a87161e6595f', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:24', '2020-09-07 21:02:24', '2021-09-07 16:02:24'),
('15b94f411be385e35c0fcede30c6552b912c8935b5a1397bd34cf653046ee1188b427e6d766df0a0', 3, '2', NULL, '[]', 0, '2020-09-07 20:58:31', '2020-09-07 20:58:31', '2021-09-07 15:58:31'),
('17be5eb2c923739f0f622af8bc0cef38ad01576793261345501f9128ac08920e8cd76d45858f900a', 3, '2', NULL, '[]', 0, '2020-09-07 21:06:07', '2020-09-07 21:06:07', '2021-09-07 16:06:07'),
('183ecc0b949ec11fd7a58dded0079cdf396ad89b945a16be5e626f2de2f91f4fae94abff0f94f17e', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:10', '2020-09-07 21:02:10', '2021-09-07 16:02:10'),
('18c678a54f9c1f01ba127e64a58f2cae1f81db3c1353bf7427fd3d409fb5ba245bfa502c5fefdf7b', 3, '2', NULL, '[]', 0, '2020-09-07 05:49:44', '2020-09-07 05:49:44', '2021-09-07 00:49:44'),
('1cc8ddebaeb50a1cbddb1ef5dcf89c67df773f1392170a9199a1a76d0ed864b6722aeed6fac62493', 3, '2', NULL, '[]', 0, '2020-09-07 20:52:47', '2020-09-07 20:52:47', '2021-09-07 15:52:47'),
('1d91625bc53c5f564ec4c73a44e784ded30c4300c27edaf122eecf3af31b5faea1996d91b832427c', 3, '2', NULL, '[]', 0, '2020-09-07 20:59:43', '2020-09-07 20:59:43', '2021-09-07 15:59:43'),
('1e26764f16a80727b7d79bc84486af369151f165bb2ae842fed18a8e30ce5f0b502021da5ac5ce31', 3, '2', NULL, '[]', 0, '2020-09-07 21:13:42', '2020-09-07 21:13:42', '2021-09-07 16:13:42'),
('1f87c900838d2c9c3f56aced47d10b61fd6f1eb37154c6c38dbaec64060a7d9ba0f994a1784ae803', 3, '2', NULL, '[]', 0, '2020-09-07 21:29:31', '2020-09-07 21:29:31', '2021-09-07 16:29:31'),
('20c93c461cf35b251269f309f0ebcc5962ccdd8d61f496ee321e5621ca4aa9147ce3a7d47e91e10e', 3, '2', NULL, '[]', 0, '2020-09-06 23:57:08', '2020-09-06 23:57:08', '2021-09-06 18:57:08'),
('2126e65b310343fd963d3697bc56d68cadece8075c63866e6cb0e727a144bc9e489975b0f53768a4', 3, '2', NULL, '[]', 0, '2020-09-07 20:59:33', '2020-09-07 20:59:33', '2021-09-07 15:59:33'),
('2340f578e78f20f138b149aad1924f0f4ba4b6a6a679e09e8a9a78d8171b80b57d7f09d0f25f4a7d', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:23', '2020-09-07 21:02:23', '2021-09-07 16:02:23'),
('2359987b721fef364c545eb1471aea519c40e90d3cd3885f21eb7b2e10ffd9c4c39ce2069085cd2f', 3, '2', NULL, '[]', 0, '2020-09-06 23:41:33', '2020-09-06 23:41:33', '2021-09-06 18:41:33'),
('2820db641f7ecc74641e42104c89b32f88c247b30c03ff99828a7c329e7b80f2852c45b73152594a', 3, '2', NULL, '[]', 0, '2020-09-07 02:39:35', '2020-09-07 02:39:35', '2021-09-06 21:39:35'),
('2d2ae07d40b2a34aeed1fbdc6942959889c923cfc7d2cf1195d33147ea0a4038f8c2933627a94b55', 3, '2', NULL, '[]', 0, '2020-09-07 01:23:33', '2020-09-07 01:23:33', '2021-09-06 20:23:33'),
('3080b47b06f87a04fcb06f89cd78ff266bcc3c92886e3a66a7643c2e9c1cf36fde7192f244c60f66', 3, '2', NULL, '[]', 0, '2020-09-08 00:37:58', '2020-09-08 00:37:58', '2021-09-07 19:37:58'),
('329222c2a01a8d05d564ab85d1afaa4d89cd39b96f7e48222ad288ca9d4810ae3918ef3c592fe24e', 3, '2', NULL, '[]', 0, '2020-09-07 21:29:30', '2020-09-07 21:29:30', '2021-09-07 16:29:30'),
('3562cd6cc25e7101ce434dd46a6c484fbb1fd2fcd153fe6722046da2981c8135f7df69ab77b10767', 3, '2', NULL, '[]', 0, '2020-09-07 00:04:28', '2020-09-07 00:04:28', '2021-09-06 19:04:28'),
('366183c1d4783ff82664d3e4c5288e99a122c807ad1efe7bdf283b41bda10878c59220845ca3e172', 3, '2', NULL, '[]', 0, '2020-09-08 00:42:09', '2020-09-08 00:42:09', '2021-09-07 19:42:09'),
('3adcb15aaba0bd48a7630ff91dc59a0f117c1ea1730b8b8addec472fdb73f9e8c8e3f5e2d7719735', 3, '2', NULL, '[]', 0, '2020-09-07 01:35:55', '2020-09-07 01:35:55', '2021-09-06 20:35:55'),
('3e484d7bd98826bd03134e0f94b63513fab30e5f78919415fe5062fa8c3bced8a0841a2b5bf47733', 3, '2', NULL, '[]', 0, '2020-09-07 21:12:32', '2020-09-07 21:12:32', '2021-09-07 16:12:32'),
('4018ba29becaec0ebe11b234234cc93988698d5eb0e6209a956a5d4246e2e23a5bdc1fa42ef1ee0b', 3, '2', NULL, '[]', 0, '2020-09-07 02:04:03', '2020-09-07 02:04:03', '2021-09-06 21:04:03'),
('40a899baf6bf11269773ac160e3adaa94c81ef06db7dfe1ede996a3a0146bbe1406f64d38fd2b49b', 3, '2', NULL, '[]', 0, '2020-09-07 01:11:03', '2020-09-07 01:11:03', '2021-09-06 20:11:03'),
('40f07d5a04ab5b4f1205b557afdfd8b6cb91719ed7eacde2c81fd27cda36fa792946d9a20b9ba067', 3, '2', NULL, '[]', 0, '2020-09-07 00:56:50', '2020-09-07 00:56:50', '2021-09-06 19:56:50'),
('4120948a80cedeaf04c6e53eb2d8f2d3f86a67d647adfbd6b9010fb6e7556f00be0e626974501b97', 3, '2', NULL, '[]', 0, '2020-09-07 02:18:20', '2020-09-07 02:18:20', '2021-09-06 21:18:20'),
('423e26d73d7e5eb34cb8d5e3b428050057b7bceca85477a92feef2125a6fdd8afe2145818c7df2d0', 3, '2', NULL, '[]', 0, '2020-09-11 04:12:55', '2020-09-11 04:12:55', '2021-09-10 23:12:55'),
('43cfc8e29fc9863cfcbc907b8889e2b0da40ecb993f1dddeeed6e11ac9c450594d40eff494eb2a2b', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:10', '2020-09-07 21:02:10', '2021-09-07 16:02:10'),
('46ce0b1549c4244be264d235ae7a89aca327c43fe1cb92fa69d21170de20dd56b48a9a13223def44', 3, '2', NULL, '[]', 0, '2020-09-07 00:05:27', '2020-09-07 00:05:27', '2021-09-06 19:05:27'),
('48b3848e2a13ae229d40368923f45e96a81eb180d394a3d8d86b58d3b27c50b240e225e6b92b6dca', 3, '2', NULL, '[]', 0, '2020-09-07 21:08:10', '2020-09-07 21:08:10', '2021-09-07 16:08:10'),
('4e9bdea113db2a9156b84a28b145ae69793bc2d75a13f5091d5cc137c9504461f05a95d10457f0c3', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:11', '2020-09-07 21:02:11', '2021-09-07 16:02:11'),
('53777ed7c1e6627203eb58d5c6478a0b4aedc5de53d3cf8cae2291c6a742c3cd0b9d92ac8081724a', 3, '2', NULL, '[]', 0, '2020-09-07 20:39:02', '2020-09-07 20:39:02', '2021-09-07 15:39:02'),
('5386fbc85ccba18a71ee70f65eb3a2ce05371cf80cf0dd5c261e46b73ecbe3daaea84a54cf5a2ad8', 3, '2', NULL, '[]', 0, '2020-09-11 04:14:10', '2020-09-11 04:14:10', '2021-09-10 23:14:10'),
('58f3c324c6cbcbd539f8e3a13314e65a1843a7f5181f3918795e25f1d5cba22b47c316ff626fad7d', 3, '2', NULL, '[]', 0, '2020-09-07 01:10:34', '2020-09-07 01:10:34', '2021-09-06 20:10:34'),
('5969c0902e08e59aaa9d0bc504d39e878bad2202dae0d6fc8f01e4e2cdf488a1306ae2e890581954', 3, '2', NULL, '[]', 0, '2020-09-07 21:01:50', '2020-09-07 21:01:50', '2021-09-07 16:01:50'),
('5e5d84a9fb8c7f88f7fb84775a7af9e89759d4e9b5ef5a8e934c93e3ee3d2f50caae7b75545b3da5', 3, '2', NULL, '[]', 0, '2020-09-07 01:22:43', '2020-09-07 01:22:43', '2021-09-06 20:22:43'),
('5e5fdeaf857f740f4372ed6d2eb3290d318a6e40e1260155adc722e2b6282fa7a00704fb164055ec', 3, '2', NULL, '[]', 0, '2020-09-07 01:23:31', '2020-09-07 01:23:31', '2021-09-06 20:23:31'),
('5fdcd9b35fd6bef2f4c90d90b953ccabe9fed08885f22e2621dfbd2b86c84f8a292fa0adcd8276e3', 3, '2', NULL, '[]', 0, '2020-09-08 00:37:56', '2020-09-08 00:37:56', '2021-09-07 19:37:56'),
('67d0efa8ae1b438868ec9624a2481997a6f5a3eb4a64af720371e7043dc02fdc9eb0321d0e1b83b8', 3, '2', NULL, '[]', 0, '2020-09-07 20:52:49', '2020-09-07 20:52:49', '2021-09-07 15:52:49'),
('67fdc08ca7000882a655b0c8c0ba4cb0f0876ae5620daeb19d71ced89f7022b1f8177ebd6dda1aea', 3, '2', NULL, '[]', 0, '2020-09-07 20:48:56', '2020-09-07 20:48:56', '2021-09-07 15:48:56'),
('6b84772018fb93c086bfbb99f549d2ec969f616aedd68e832ff74cfbd4b97931466e6108e798a145', 3, '2', NULL, '[]', 0, '2020-09-07 21:00:29', '2020-09-07 21:00:29', '2021-09-07 16:00:29'),
('6cd2c652579b87e5092a41736a4c35d444333447ebb43f006db468ec0b533079d8d78094b4d3bc2c', 3, '2', NULL, '[]', 0, '2020-09-07 02:33:06', '2020-09-07 02:33:06', '2021-09-06 21:33:06'),
('6eb327d36f54dc8bfeae2ed8984001631c55a2846aec341388afb5a6702b312b891acf583e3fdacc', 3, '2', NULL, '[]', 0, '2020-09-07 02:33:47', '2020-09-07 02:33:47', '2021-09-06 21:33:47'),
('71831593e886d23817116b68d2daa4095a22090da3fc11aeda2c201756ca07ba78deacb8b80f8329', 3, '2', NULL, '[]', 0, '2020-09-07 20:51:57', '2020-09-07 20:51:57', '2021-09-07 15:51:57'),
('718932db39b18053890693a434e1ae35a5dbd37605dc10bb93ab27003d0c39016396accce98ed6d9', 3, '2', NULL, '[]', 0, '2020-09-07 20:52:42', '2020-09-07 20:52:42', '2021-09-07 15:52:42'),
('72e072bcccdac4acc6e51aec6a6c652aadd1f4e9246f5e4c2bce20aa6157c4e410abc38686a119e6', 3, '2', NULL, '[]', 0, '2020-09-07 21:03:42', '2020-09-07 21:03:42', '2021-09-07 16:03:42'),
('747bd9ad9746b085298ab361381e60a4e90fe68fd28c6ecd8e5134203a6a70da3a158433a18a822f', 3, '2', NULL, '[]', 0, '2020-09-07 02:43:32', '2020-09-07 02:43:32', '2021-09-06 21:43:32'),
('7565072314c1db1a18a1399cb8870199709bfdffc66b7bedb58ba66da8d065b77ebd7480bc17519c', 3, '2', NULL, '[]', 0, '2020-09-07 00:04:41', '2020-09-07 00:04:41', '2021-09-06 19:04:41'),
('77fe9352f63218f77507bb246699eab9786ed07a6c82b19bd596478484a895ca8a4b1f1070bcdd14', 3, '2', NULL, '[]', 0, '2020-09-06 23:36:16', '2020-09-06 23:36:16', '2021-09-06 18:36:16'),
('786a36a2a1b24de0db1969f5890d783c2b5eb8390fc8745bb79667a410821c8b33f08ead1b0613e8', 3, '2', NULL, '[]', 0, '2020-09-07 20:31:23', '2020-09-07 20:31:23', '2021-09-07 15:31:23'),
('800282a1236028f449a17a3d23690c4c75d226c83965065eed56548bd67861bdd347be2310c3f18d', 3, '2', NULL, '[]', 0, '2020-09-07 20:58:27', '2020-09-07 20:58:27', '2021-09-07 15:58:27'),
('8162260ee3134ea9810bea7e4baea65f39b33b527e5c973cbd176f21fdf9e84060cf920b7dc11dcf', 3, '2', NULL, '[]', 0, '2020-09-07 21:12:29', '2020-09-07 21:12:29', '2021-09-07 16:12:29'),
('825f823fcb62eadfde5e916080ed6339218774c9e80d4e6bbae82c60cc65f2a04dcc1c82f987a9b0', 3, '2', NULL, '[]', 0, '2020-09-07 01:49:34', '2020-09-07 01:49:34', '2021-09-06 20:49:34'),
('8297709448b1f08ed0b40b231bc25deba6b18f4dd51e886398c8a6e9782d9c5c896366f2a526701a', 3, '2', NULL, '[]', 0, '2020-09-07 00:05:26', '2020-09-07 00:05:26', '2021-09-06 19:05:26'),
('875d6b8b4848861f13ca6326f0cdb035b94e23fb79616b1dc92ba15e855f16683c2970eef5dfa625', 3, '2', NULL, '[]', 0, '2020-09-08 00:11:21', '2020-09-08 00:11:21', '2021-09-07 19:11:21'),
('8b629928b990f531e17c82669d7af446d5fd41ae1e588928f4dd348a1eb42f74f7641c954eaa3c80', 3, '2', NULL, '[]', 0, '2020-09-07 00:56:24', '2020-09-07 00:56:24', '2021-09-06 19:56:24'),
('8c93c9889b20e8d1dc1a3d3436aaf3730735fdcade0aedeb3e4b9fa9a7e2eaef86fb09769fe607ed', 3, '2', NULL, '[]', 0, '2020-09-06 23:19:34', '2020-09-06 23:19:34', '2021-09-06 18:19:34'),
('8cf5b2fb8eca9a0dd55e332db864294e505c90b04651b562ffebc49d4ebf3858c57795ed92299e11', 3, '2', NULL, '[]', 0, '2020-09-07 20:55:20', '2020-09-07 20:55:20', '2021-09-07 15:55:20'),
('8df576f46affd4bc36eee9822a0d509e5c64bc9d146e07659b49b25f8710b481cdc3f7594ed43811', 3, '2', NULL, '[]', 0, '2020-09-07 00:58:56', '2020-09-07 00:58:56', '2021-09-06 19:58:56'),
('8fbdaaf7b3b9c3bf2549638c14e89337c9368f8272bc2034e7c3865a1615579ca80b1993d600e88e', 3, '2', NULL, '[]', 0, '2020-09-07 21:03:10', '2020-09-07 21:03:10', '2021-09-07 16:03:10'),
('909527e5b2c5827e20a8015446cf2ea6b10eda2efb1221679e2289bd7fcbb67a97c55335f1340088', 3, '2', NULL, '[]', 0, '2020-09-07 00:05:50', '2020-09-07 00:05:50', '2021-09-06 19:05:50'),
('91f09ba99868bcd5440ba948b47ef40da54719386631d6f53edccb9f05204d9cdce383aa9e582382', 3, '2', NULL, '[]', 0, '2020-09-08 00:43:37', '2020-09-08 00:43:37', '2021-09-07 19:43:37'),
('931bd3e5d3c649ea96277e2ef697cad6dbf25467bd44b14e2145d63cee0778a91e4e6b8de9f0ad90', 3, '2', NULL, '[]', 0, '2020-09-07 20:59:49', '2020-09-07 20:59:49', '2021-09-07 15:59:49'),
('953287f7c212583b90a277c53d85bf7c6bc1652db5480508ef3eed50b7e1dab9dd8e6928c7606245', 3, '2', NULL, '[]', 0, '2020-09-11 04:15:30', '2020-09-11 04:15:30', '2021-09-10 23:15:30'),
('957ec27456a7aa6c900bf6445ef6e9b8a843c1dc84eb3280dae1060f7c5d386d3779c0c3667f89bd', 3, '2', NULL, '[]', 0, '2020-09-07 21:08:21', '2020-09-07 21:08:21', '2021-09-07 16:08:21'),
('99a4fc43768161f030b19165527e7af2a062d0aec2f08de6f81d5217dc6c6090f2c7eae48c3efc47', 3, '2', NULL, '[]', 0, '2020-09-08 00:37:03', '2020-09-08 00:37:03', '2021-09-07 19:37:03'),
('99deee18f2b3835f1c27e5aa57ae15b3577874cc133977f39896f6be33f99a47bc71d9f1873c44a0', 3, '2', NULL, '[]', 0, '2020-09-07 01:12:20', '2020-09-07 01:12:20', '2021-09-06 20:12:20'),
('9aa191af376a8fd035aab1156c6ae4367188412aeac218b8fc26e48bf7421b6c915aef95487c1219', 3, '2', NULL, '[]', 0, '2020-09-08 00:38:06', '2020-09-08 00:38:06', '2021-09-07 19:38:06'),
('9b17c9d6bf34bf7705320f7b4433af5aba15bd65859f8198b475c27345e0ce889c90539d32b88e15', 3, '2', NULL, '[]', 0, '2020-09-08 00:43:04', '2020-09-08 00:43:04', '2021-09-07 19:43:04'),
('9b42a0d188d84b228f5aa590bb27fa0fd3b965e69ed02092bf7650e8f557a9c3ff90ce92620b8ea0', 3, '2', NULL, '[]', 0, '2020-09-07 20:39:43', '2020-09-07 20:39:43', '2021-09-07 15:39:43'),
('a1add50a9e7c83cfb8ff4504e34d10e54cafdcb081556c73c0031d8c6dbfbbb14ccb3187f387b8d1', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:37', '2020-09-07 21:02:37', '2021-09-07 16:02:37'),
('a5b0c76332c70f99f92708558182b492018ca7312d4e4d5165cd5d182a92658a3252b0514419b291', 3, '2', NULL, '[]', 0, '2020-09-07 00:05:18', '2020-09-07 00:05:18', '2021-09-06 19:05:18'),
('a908f5c76d4db0014e15106009dec46435d4e9ea1e8714c7ac7b2c8d1a8ebefc00ac930e4bd3f1d7', 3, '2', NULL, '[]', 0, '2020-09-07 21:23:39', '2020-09-07 21:23:39', '2021-09-07 16:23:39'),
('ac8976ff257d6ccdadc7d206100f251a8b005be358947d69396de392f1297dcef2affeb1f42f038f', 3, '2', NULL, '[]', 0, '2020-09-07 21:00:04', '2020-09-07 21:00:04', '2021-09-07 16:00:04'),
('b038dd507a6815649dcee19e8f3b5bfdd5d5de3c96984aeef1d72f769623290e09b8eb1f25c1259e', 3, '2', NULL, '[]', 0, '2020-09-07 00:53:11', '2020-09-07 00:53:11', '2021-09-06 19:53:11'),
('b1b9adfdda57e494bd26412935d8c67db9d2622b7f8e3e3f4d30562dd764b73ce449f493205a6378', 3, '2', NULL, '[]', 0, '2020-09-07 01:02:00', '2020-09-07 01:02:00', '2021-09-06 20:02:00'),
('b1f62adbf56f815a3ff01fbbff0640ef5e776a6b416836946033f37642bcb7df3a8464d0f21d11a0', 3, '2', NULL, '[]', 0, '2020-09-07 21:10:16', '2020-09-07 21:10:16', '2021-09-07 16:10:16'),
('b4201674ae37ce5f32f0b6337c0c57ffab619005892be5b680cdcd809d8900560f878e99605b5a02', 3, '2', NULL, '[]', 0, '2020-09-07 00:55:28', '2020-09-07 00:55:28', '2021-09-06 19:55:28'),
('b472e4b0aae97cffa1dfbf1751a6cc8b450c8a620baf8ad729f3c9223110864f5a146e561a0d51e0', 3, '2', NULL, '[]', 0, '2020-09-07 02:42:43', '2020-09-07 02:42:43', '2021-09-06 21:42:43'),
('b4bc1c0550df6e5db1203718d6fe7582e920ef58de3534626a1561294f447eb3fb762c92fce0f408', 3, '2', NULL, '[]', 0, '2020-09-07 00:04:27', '2020-09-07 00:04:27', '2021-09-06 19:04:27'),
('b51e03c85702e5f7b03decca1e907330ddecc983fec0c515e5102d1e3e3fc907b44a75d2a5e3fd1b', 3, '2', NULL, '[]', 0, '2020-09-07 01:54:53', '2020-09-07 01:54:53', '2021-09-06 20:54:53'),
('b6007b1ac74065ea7ccdf930103e5e554a6ee75186be937601fa9c0436f64bb8f327de475c0ac690', 3, '2', NULL, '[]', 0, '2020-09-07 21:04:51', '2020-09-07 21:04:51', '2021-09-07 16:04:51'),
('b8831737729874790ddb1ab24c25fbc44d3bbbecf496f3446f0727ed176ddb4dfbf631af9de0b3c3', 3, '2', NULL, '[]', 0, '2020-09-07 02:43:44', '2020-09-07 02:43:44', '2021-09-06 21:43:44'),
('b92fc610a64ccda99f34b380e615329a9229d8f250d5e1c355950cdb3164d00ade243c5c51bcf267', 3, '2', NULL, '[]', 0, '2020-09-11 04:12:55', '2020-09-11 04:12:55', '2021-09-10 23:12:55'),
('bb01948e6a8fedc5e8aacdae092bafac8941f6fdf3807b5c2df5961a1acf69a92b7150c43e701572', 3, '2', NULL, '[]', 0, '2020-09-06 21:15:29', '2020-09-06 21:15:29', '2021-09-06 16:15:29'),
('bf4a94a70a904a99fb79c7f2f596fd7ab9c4ecfdf0477490e5b7e3b168307c82cfffdc2e578188d8', 3, '2', NULL, '[]', 0, '2020-09-07 01:24:32', '2020-09-07 01:24:32', '2021-09-06 20:24:32'),
('c15d7d6fc3edc52a79794abf58ad80da2def17652c4e13b1ec9437779b474c988379fc76ee44d515', 3, '2', NULL, '[]', 0, '2020-09-07 21:25:39', '2020-09-07 21:25:39', '2021-09-07 16:25:39'),
('c5f826b2d354b24706f87817fafe2dd439132ab936e5e0936d1ae5bd43e5689b16efb303b197e8ec', 3, '2', NULL, '[]', 0, '2020-09-07 02:04:10', '2020-09-07 02:04:10', '2021-09-06 21:04:10'),
('ca446982213d2ca1bc4f4a0b18f0f41355d1c8f2e85216889ad2e5233e3668f2992869cf11e50e85', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:11', '2020-09-07 21:02:11', '2021-09-07 16:02:11'),
('d1b25adfe522bb3e1ee28d6eabd5059b21c8895a625c537eda08fb712413628aa62bc88995c4bb8d', 3, '2', NULL, '[]', 0, '2020-09-07 21:23:37', '2020-09-07 21:23:37', '2021-09-07 16:23:37'),
('d20dc3c3bcef946bff087eace569cb9dad36a9a16745222b2c1f4758616db67b44ada1764feec8b7', 3, '2', NULL, '[]', 0, '2020-09-07 01:49:46', '2020-09-07 01:49:46', '2021-09-06 20:49:46'),
('d5a5c649103bbc991920ab70df1d99ec1e07a87cc57f506418ed0b1fd1fae431d4a9c702cdcac160', 3, '2', NULL, '[]', 0, '2020-09-07 02:32:53', '2020-09-07 02:32:53', '2021-09-06 21:32:53'),
('d6bb75e3723872fc489c6bba1d025a0125fec4834565ab6c30966f3cd94b07f3281c4195c0f3599d', 3, '2', NULL, '[]', 0, '2020-09-07 00:04:21', '2020-09-07 00:04:21', '2021-09-06 19:04:21'),
('d77410c72b6be902160ab2fd355297cd7f118ce5e96c80b578a979640e8542bd2171c573c35aed48', 3, '2', NULL, '[]', 0, '2020-09-07 02:32:19', '2020-09-07 02:32:19', '2021-09-06 21:32:19'),
('d8b7922123c1a9798d9775d1d0b0842907dd562bfa02faaac06b942ee4aa1b7572c6038a1eca7ba5', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:10', '2020-09-07 21:02:10', '2021-09-07 16:02:10'),
('d9fe5e0fe7f543ad21f752ca417263f8e38201a5691bd3387c1a476e5f8a532ee2fcefbccc6a61b3', 3, '2', NULL, '[]', 0, '2020-09-07 21:14:23', '2020-09-07 21:14:23', '2021-09-07 16:14:23'),
('dbbee9e70cba9b7992bbcd2136f37a9f6f20ba36c6a0b27c78e2db4b813582a7de88af5d6b1efa1e', 3, '2', NULL, '[]', 0, '2020-09-08 00:11:21', '2020-09-08 00:11:21', '2021-09-07 19:11:21'),
('dd60e5e9fd7a19295fc9970461c301a4f7dd1b578b4dbf30bafad2c1c5295e12f0b8af9bbfab5391', 3, '2', NULL, '[]', 0, '2020-09-07 20:38:36', '2020-09-07 20:38:36', '2021-09-07 15:38:36'),
('df968e24e95d130301504b0209d453865df9449dec93ceab2a1cc5980a1184fe2680a12145556dfc', 3, '2', NULL, '[]', 0, '2020-09-07 00:04:25', '2020-09-07 00:04:25', '2021-09-06 19:04:25'),
('e2fe4ff85bc1d09ab03733717ff12dae70cde1fa9b10c3caf753e05f5c7236f1973c387df6cc20fc', 3, '2', NULL, '[]', 0, '2020-09-07 00:06:26', '2020-09-07 00:06:26', '2021-09-06 19:06:26'),
('e4488eddfc073e16372d21abc22a7dcb54e2297b31d3e32c3824a07188e6429682ca605cdd34c869', 3, '2', NULL, '[]', 0, '2020-09-07 01:35:20', '2020-09-07 01:35:20', '2021-09-06 20:35:20'),
('e5509ef426bef42dfc91272236bd5b91379dee5805037720b33231a338053d00dd8a553dd4413d25', 3, '2', NULL, '[]', 0, '2020-09-07 20:42:44', '2020-09-07 20:42:44', '2021-09-07 15:42:44'),
('eb92cddde2cb8d512dbe691bb69d19c55200c6af7e3a0078d51072f5f9a810870bd205bffefb068d', 3, '2', NULL, '[]', 0, '2020-09-07 21:12:26', '2020-09-07 21:12:26', '2021-09-07 16:12:26'),
('eb9ec5b9fe3a4260dec4d9238c7f0578e28c32612fdf18c0ae92bad56e3097d5a138be1cc4f20a7b', 3, '2', NULL, '[]', 0, '2020-09-07 21:02:05', '2020-09-07 21:02:05', '2021-09-07 16:02:05'),
('ec597d7e5085749e003212cb38870aceb91cbadd95004918ebdaa8b6b3d0813f9550c0fc60a63a04', 3, '2', NULL, '[]', 0, '2020-09-07 01:23:29', '2020-09-07 01:23:29', '2021-09-06 20:23:29'),
('ed1c8b8408e7cbd4b1ff7bafdb2ca809ad335038f8cbbdc6ff629e5d3168ef443b2f1ce5c883b65c', 3, '2', NULL, '[]', 0, '2020-09-08 00:42:34', '2020-09-08 00:42:34', '2021-09-07 19:42:34'),
('ee68e275474f732fdf102ebdbeb80158e44ed43335bf46bdb2b4f21b445838291fddf865502c06f4', 3, '2', NULL, '[]', 0, '2020-09-07 02:03:52', '2020-09-07 02:03:52', '2021-09-06 21:03:52'),
('f504beb0a5daf45965cdf5324b11e5a1558dbea97be96b3d5110421f9411e63e421283d658e11a5c', 3, '2', NULL, '[]', 0, '2020-09-07 02:34:21', '2020-09-07 02:34:21', '2021-09-06 21:34:21'),
('f62cbfd48c11e90b153579d17da08352139bc2374388dc1aebffbc68ce63c5bb46e65760caf0006c', 3, '2', NULL, '[]', 0, '2020-09-07 00:05:27', '2020-09-07 00:05:27', '2021-09-06 19:05:27'),
('f74fc2ed6f530edf422e17b9d366996e38a03e0072241d0bfa5c70fce5c1b8d440909f38d423f604', 3, '2', NULL, '[]', 0, '2020-09-08 00:47:29', '2020-09-08 00:47:29', '2021-09-07 19:47:29'),
('f765d768cad8fe1196b3a92a7e62d6b66aec81554c5a50fdcf1cef9e69a910193ec88e2cb896ff65', 3, '2', NULL, '[]', 0, '2020-09-07 20:52:50', '2020-09-07 20:52:50', '2021-09-07 15:52:50'),
('fcb29f593d73df3c2ef515000026cadf5193ba05cffbddffec24ce34da6d19e4922e4b301304c165', 3, '2', NULL, '[]', 0, '2020-09-07 20:45:18', '2020-09-07 20:45:18', '2021-09-07 15:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Shweaain Personal Access Client', 'eoWO9K1Am6oPaOD4S7brkWM1mgtuqjMB27pXLcxl', NULL, 'http://localhost', 1, 0, 0, '2020-09-06 21:13:06', '2020-09-06 21:13:06'),
(2, NULL, 'Shweaain Password Grant Client', '6vnvkJVOtHhUTWqUAeaiyltBEh0OM1J7zPEi2HCd', 'users', 'http://localhost', 0, 1, 0, '2020-09-06 21:13:06', '2020-09-06 21:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '1', '2020-09-06 21:13:06', '2020-09-06 21:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('025e2b1f2a3c42d4c408b72b2c7b8f16ca6e8b8ca9deaf25d48d4e499295720403d8ad63186f40c7', '9b17c9d6bf34bf7705320f7b4433af5aba15bd65859f8198b475c27345e0ce889c90539d32b88e15', 0, '2021-09-07 19:43:04'),
('043b331692b58cdf89d28109a9e8bc4a6c7253a47115dfbb916b0b3fe4c446c9b8352ce16232150c', '800282a1236028f449a17a3d23690c4c75d226c83965065eed56548bd67861bdd347be2310c3f18d', 0, '2021-09-07 15:58:27'),
('051f3e1b0d5bfdd3b5c2d774e462f9c2f14dd8887fce80d4eac9414f6a5a54b80bd87369fbb916a5', '2340f578e78f20f138b149aad1924f0f4ba4b6a6a679e09e8a9a78d8171b80b57d7f09d0f25f4a7d', 0, '2021-09-07 16:02:23'),
('0963066d887e322552eef72fb688dd702fa24dcb54c0f911ef29910392296b66f9cefb3774e3cb8f', '2359987b721fef364c545eb1471aea519c40e90d3cd3885f21eb7b2e10ffd9c4c39ce2069085cd2f', 0, '2021-09-06 18:41:33'),
('0a54b877c2daf49c612e6df0b472d24e551f2b385c01a4f9934634eef2440c128f4625bd98a10f77', '46ce0b1549c4244be264d235ae7a89aca327c43fe1cb92fa69d21170de20dd56b48a9a13223def44', 0, '2021-09-06 19:05:27'),
('12769c50e745841e81192a5403117c8305551655bf8c0e4b39ffc66176400f01c169fe01adf9c09f', '15b94f411be385e35c0fcede30c6552b912c8935b5a1397bd34cf653046ee1188b427e6d766df0a0', 0, '2021-09-07 15:58:31'),
('14b2f149f2d973c58114ced06f0c9017ff0bf43674fdce9557a4b6600e633823d86dfa3c554e70a1', '4018ba29becaec0ebe11b234234cc93988698d5eb0e6209a956a5d4246e2e23a5bdc1fa42ef1ee0b', 0, '2021-09-06 21:04:03'),
('1731429a370bc6a68c680a60d98f04dc197099db56c7ffc49cbabdf55334968ad98999946e91e253', '115f36f147f6729b84d4b3a60e5438ac28ea8142a08046b2b5029306ca6e83512757744c93316162', 0, '2021-09-07 16:02:06'),
('181d48a2611d8afb8b6389aa14e898d22de1efb22d968243924e6a0f9c5e37debcde0aa4672a6e93', '40f07d5a04ab5b4f1205b557afdfd8b6cb91719ed7eacde2c81fd27cda36fa792946d9a20b9ba067', 0, '2021-09-06 19:56:50'),
('1cc41f104ff6d2b5bf7f1090ee6f464a72e203b06a71d7a3138d3690b3c6854c61f5e24138dc7aad', 'f504beb0a5daf45965cdf5324b11e5a1558dbea97be96b3d5110421f9411e63e421283d658e11a5c', 0, '2021-09-06 21:34:21'),
('1d029be58db38e7e718f1d7bd610063419fa2fea0633ff4e19b32ddb131fd62a0cef8e215374864f', 'eb92cddde2cb8d512dbe691bb69d19c55200c6af7e3a0078d51072f5f9a810870bd205bffefb068d', 0, '2021-09-07 16:12:26'),
('1d5dd7b4366c1855bb6bba1febc7d0bf76993d6e1e06172b49fb9df01f10052e8b2e349478df7657', '67d0efa8ae1b438868ec9624a2481997a6f5a3eb4a64af720371e7043dc02fdc9eb0321d0e1b83b8', 0, '2021-09-07 15:52:49'),
('1e196dbc219b60c3fcf8465eeb5edbb43f164c9e9c2af2879d4acf870d95a32671e20630a8a46ca9', 'd5a5c649103bbc991920ab70df1d99ec1e07a87cc57f506418ed0b1fd1fae431d4a9c702cdcac160', 0, '2021-09-06 21:32:53'),
('1e5dd79ed0c5d128af1dc9b11cf4fc92f8ea886dca6bceba21d2ca6eefc9d6818ace260bd5cf173d', 'd77410c72b6be902160ab2fd355297cd7f118ce5e96c80b578a979640e8542bd2171c573c35aed48', 0, '2021-09-06 21:32:19'),
('1f3e2465f738fd59ee97def6aeb22598f84ae6aef5f439ca23e75b060661d210f4b46bad9710290e', '957ec27456a7aa6c900bf6445ef6e9b8a843c1dc84eb3280dae1060f7c5d386d3779c0c3667f89bd', 0, '2021-09-07 16:08:21'),
('1f9cacee68abfb54d8dfeb2e1114a6363ac72004e5cd35b1390f615b896fce5575b4f13a0a33f208', '5fdcd9b35fd6bef2f4c90d90b953ccabe9fed08885f22e2621dfbd2b86c84f8a292fa0adcd8276e3', 0, '2021-09-07 19:37:56'),
('283c6c1f80ebeb4fac03499086afc87e51750994cd2e9659365b1e9079135443d12471ef9d575ba3', 'f62cbfd48c11e90b153579d17da08352139bc2374388dc1aebffbc68ce63c5bb46e65760caf0006c', 0, '2021-09-06 19:05:27'),
('2da7464ed1ef1a8f535163575dec0a356dc1a802af42d2fd305197db34ee933431169d3aedcb58da', 'bf4a94a70a904a99fb79c7f2f596fd7ab9c4ecfdf0477490e5b7e3b168307c82cfffdc2e578188d8', 0, '2021-09-06 20:24:32'),
('307907012216c40336f882e729e6eeec51e2aecba1b52b23b3fbb40f9bbcf7cfa6b31e79d991aa3e', '09fbbc7a334b32abdac36ad2b2864bf51a41204ff469be5ae0ddda447976fd87459435b2a2cd801e', 0, '2021-09-07 16:12:28'),
('311e84e56385d1a89fe01b81468e33e37a65d2f54949bff6ed78cf65d4afb427fd1ec7abb806e029', 'c15d7d6fc3edc52a79794abf58ad80da2def17652c4e13b1ec9437779b474c988379fc76ee44d515', 0, '2021-09-07 16:25:39'),
('31610e035ed8b31fcc7a5461104d6736b23f0b57a87d73b3d3756859ab387942fd1e65607c0ac0ba', '0b018c9031a0b592452fbfed52b107a8f41300eb621edf368bc70ee7fee6e7d606dde7c9adfd821f', 0, '2021-09-06 21:37:57'),
('361e606197fc696465f379772727e740ce5e70049e2cf74498a78da29452e2c27d8aecd368aac844', '2d2ae07d40b2a34aeed1fbdc6942959889c923cfc7d2cf1195d33147ea0a4038f8c2933627a94b55', 0, '2021-09-06 20:23:33'),
('3a5673bd294db018e7937b59a5bac486623bb7e6735e26a4ec6fd2271e1dbebdc07a1cff7bed396e', 'f74fc2ed6f530edf422e17b9d366996e38a03e0072241d0bfa5c70fce5c1b8d440909f38d423f604', 0, '2021-09-07 19:47:29'),
('4029c0eebfec7ec5f596205525d58ef31c381d4b8e8add8748f72b8b7ce9bb2921286b447ef117b8', 'dd60e5e9fd7a19295fc9970461c301a4f7dd1b578b4dbf30bafad2c1c5295e12f0b8af9bbfab5391', 0, '2021-09-07 15:38:36'),
('402ef7fc25cc80437a2f3343cc66573acff8fa86934bbbd1c93dc8dd91c2bff58a6ef071d478e19d', '99deee18f2b3835f1c27e5aa57ae15b3577874cc133977f39896f6be33f99a47bc71d9f1873c44a0', 0, '2021-09-06 20:12:20'),
('41485a9977c1015f753bc883dbc71ba06a654eaf3648eee8f6bfd9e409fd719d21a90bda57188f4c', 'ca446982213d2ca1bc4f4a0b18f0f41355d1c8f2e85216889ad2e5233e3668f2992869cf11e50e85', 0, '2021-09-07 16:02:11'),
('41d5a13defb30a2f7991d699b54f4936fd1cde30626cea97e4cecfe0adc793d4e8636c03274309a0', '71831593e886d23817116b68d2daa4095a22090da3fc11aeda2c201756ca07ba78deacb8b80f8329', 0, '2021-09-07 15:51:57'),
('46f4cb919ad71ecaee5b67288ce8f793bf26fd160ad8c1bc21ab32b52bf6a0b3355050c3572fe94b', 'e4488eddfc073e16372d21abc22a7dcb54e2297b31d3e32c3824a07188e6429682ca605cdd34c869', 0, '2021-09-06 20:35:20'),
('47d1255185f015f552c4f10de0e72bc783818b93aac4aa56915737009e86218ccd850a22ae2fd744', 'b8831737729874790ddb1ab24c25fbc44d3bbbecf496f3446f0727ed176ddb4dfbf631af9de0b3c3', 0, '2021-09-06 21:43:44'),
('49af0711a29e59001a23f74b873fd523be07c8882957cdb0089f0d6b8e298e400d24b0f71d84eaca', 'fcb29f593d73df3c2ef515000026cadf5193ba05cffbddffec24ce34da6d19e4922e4b301304c165', 0, '2021-09-07 15:45:18'),
('4b48d5f90ae98cebc6ea44abe345c9c2ceed8fbb2d438cbda0a61588e5234d36efe17c0be457cb90', '5e5d84a9fb8c7f88f7fb84775a7af9e89759d4e9b5ef5a8e934c93e3ee3d2f50caae7b75545b3da5', 0, '2021-09-06 20:22:43'),
('4c4506e07e79bacfc76ce4e2be69be6720e7d48736cd4f7bd65b3f5baeb31401a4dfb47e72f86082', 'd1b25adfe522bb3e1ee28d6eabd5059b21c8895a625c537eda08fb712413628aa62bc88995c4bb8d', 0, '2021-09-07 16:23:37'),
('4fcd77a13e5a95ca533749a0864ad856b153b74a8f8addc095579feacd76cd75ab987e6afbe0f758', '423e26d73d7e5eb34cb8d5e3b428050057b7bceca85477a92feef2125a6fdd8afe2145818c7df2d0', 0, '2021-09-10 23:12:55'),
('5668e97683ea6ebac78a0d346c474c83a03ca7672ab20bc8ca2a80f683a4c17bfb440ab4a3806f90', '786a36a2a1b24de0db1969f5890d783c2b5eb8390fc8745bb79667a410821c8b33f08ead1b0613e8', 0, '2021-09-07 15:31:23'),
('576b6edda8db169318bf7249b4b389289a40aa5daea955efa078f345b16bbdb8d8a3e875dd9f4774', '17be5eb2c923739f0f622af8bc0cef38ad01576793261345501f9128ac08920e8cd76d45858f900a', 0, '2021-09-07 16:06:07'),
('584c72f4ebff6c63610bcbdf3279925ed8f90e5f47772d2fdc5dc5943cd2afb148826d0516d3c3bf', 'bb01948e6a8fedc5e8aacdae092bafac8941f6fdf3807b5c2df5961a1acf69a92b7150c43e701572', 0, '2021-09-06 16:15:29'),
('59781795ecab6782baa5146e20ca225fa3230624ab55fcf144970282a28781871eda48522d433a39', 'b6007b1ac74065ea7ccdf930103e5e554a6ee75186be937601fa9c0436f64bb8f327de475c0ac690', 0, '2021-09-07 16:04:51'),
('5ad917a8e53c93891b4d2499e565767f0fb2f7506efad95f21d8e298d94afcbe7e4a11a6b3728449', '4120948a80cedeaf04c6e53eb2d8f2d3f86a67d647adfbd6b9010fb6e7556f00be0e626974501b97', 0, '2021-09-06 21:18:20'),
('5b0e6071d1b0efcd7fa9139aad2e1d19e7f6574c87a20729bf6f23459da3d06cb581f6d7f4f21185', 'd20dc3c3bcef946bff087eace569cb9dad36a9a16745222b2c1f4758616db67b44ada1764feec8b7', 0, '2021-09-06 20:49:46'),
('5bb9a90117ccec49245ccfe9ddf880a28a8c83b53be60cacc07a15a12800a857c718c5f478ea64b8', '329222c2a01a8d05d564ab85d1afaa4d89cd39b96f7e48222ad288ca9d4810ae3918ef3c592fe24e', 0, '2021-09-07 16:29:30'),
('5c3857dbb5d50fd01fe599bc0569c8ccbd66439348cb899e3148bcc7b8c8f0fa5fd55fd6515c3385', 'b92fc610a64ccda99f34b380e615329a9229d8f250d5e1c355950cdb3164d00ade243c5c51bcf267', 0, '2021-09-10 23:12:55'),
('5c98d3997168a86d8bcb03b5ccdb312a3cfe447eba8cd89309acee789fe5dd66ef00930ecce4ca63', '1f87c900838d2c9c3f56aced47d10b61fd6f1eb37154c6c38dbaec64060a7d9ba0f994a1784ae803', 0, '2021-09-07 16:29:31'),
('60c1de65053e0928a2375f3ac656a7c5e1f7a087746ee922911b53eab79189d961dbeef57f2af54a', '77fe9352f63218f77507bb246699eab9786ed07a6c82b19bd596478484a895ca8a4b1f1070bcdd14', 0, '2021-09-06 18:36:16'),
('6286359b34364d84be3660eb891549f6733c98a0da026963ec948e43b804e7b9e27ab4f2aaac3fff', '1d91625bc53c5f564ec4c73a44e784ded30c4300c27edaf122eecf3af31b5faea1996d91b832427c', 0, '2021-09-07 15:59:43'),
('629f1c4ea1c3d1d8b7be3afc7cb5ecb0cc30de4a0cc002241ace831ed14266d613a32424d0ff571c', '718932db39b18053890693a434e1ae35a5dbd37605dc10bb93ab27003d0c39016396accce98ed6d9', 0, '2021-09-07 15:52:42'),
('680440ead6b880577efdeef8c92accf9fffc3b31aebf911791be830bff6b286f423571c0456f5ef7', 'ac8976ff257d6ccdadc7d206100f251a8b005be358947d69396de392f1297dcef2affeb1f42f038f', 0, '2021-09-07 16:00:04'),
('6a89d199f72202735a119451ec478d39fd4b00cedff4686e777c204cecf93d5df3d0cba03eb55c57', '2126e65b310343fd963d3697bc56d68cadece8075c63866e6cb0e727a144bc9e489975b0f53768a4', 0, '2021-09-07 15:59:33'),
('6b7a48d30b3d5e04d9766c37940ec2d5517e28a1c1dddcfe9119d4084c5ea94ea401061700b35618', '5386fbc85ccba18a71ee70f65eb3a2ce05371cf80cf0dd5c261e46b73ecbe3daaea84a54cf5a2ad8', 0, '2021-09-10 23:14:10'),
('6bd8d3a54c89d92420dece140949b9f5225e86128a6f7e940c54949576b6402a244a76a2acf72fee', '8162260ee3134ea9810bea7e4baea65f39b33b527e5c973cbd176f21fdf9e84060cf920b7dc11dcf', 0, '2021-09-07 16:12:29'),
('6d3dce0a1feddc1cba1edc9b62ab4a65686cf56865946f4284d73e4efccc39c998a0fc348a97abd9', 'e5509ef426bef42dfc91272236bd5b91379dee5805037720b33231a338053d00dd8a553dd4413d25', 0, '2021-09-07 15:42:44'),
('6eac8ae896db6fbb6052f25da31d9249fdcc4d55a722a514a6af3a202240c2487cd71720675fb641', '4e9bdea113db2a9156b84a28b145ae69793bc2d75a13f5091d5cc137c9504461f05a95d10457f0c3', 0, '2021-09-07 16:02:11'),
('71789d9d5a8205c92da53cecb3416b536cc6a116192b98ec1a6e9832ba68beb159aa34006462788e', '1318d1c2f1124f1f995e68a29c89d8df94aca9c7a5eac8faf2230b86f733d289a086a87161e6595f', 0, '2021-09-07 16:02:24'),
('72992fc53a4f4fc93a2c8aafebdf195a325018933eeb3a7df0f363921c433948f44cb1ebff31d2c3', '8297709448b1f08ed0b40b231bc25deba6b18f4dd51e886398c8a6e9782d9c5c896366f2a526701a', 0, '2021-09-06 19:05:26'),
('7351c8328ea3a9d9e347f8ec38059835af4ef0186a55a7173c057f0f951a0282dcfc8ab14484492e', '8df576f46affd4bc36eee9822a0d509e5c64bc9d146e07659b49b25f8710b481cdc3f7594ed43811', 0, '2021-09-06 19:58:56'),
('7612daf78d7f7bbb876dbb7e7284c97d03d6bec34b4d2fceedd6c4b9e415bf7c36d41f722d347f2e', 'a908f5c76d4db0014e15106009dec46435d4e9ea1e8714c7ac7b2c8d1a8ebefc00ac930e4bd3f1d7', 0, '2021-09-07 16:23:39'),
('79685685eb04fc0ae4f9aea21e28e697c9dae834cc8d231eb490d01e501d191d4b831a66738c7eb9', '003b8cf815491e54a9662d8dd5dff07c438cebcc15d99fb34009c027282c339e9d4fa9236b62ddbe', 0, '2021-09-06 20:35:49'),
('7c0bbfc6bc698a77aceb60994d4b7e3143f11ec6937f0f041fa80dbe6f62ed78eb2452a5480e0c29', 'b51e03c85702e5f7b03decca1e907330ddecc983fec0c515e5102d1e3e3fc907b44a75d2a5e3fd1b', 0, '2021-09-06 20:54:53'),
('7cc10fd6feec31aca8c084cfb64c9988df59a42c22d1b9fe1a046d53e6d428f62d31f223e7d7fafe', 'a5b0c76332c70f99f92708558182b492018ca7312d4e4d5165cd5d182a92658a3252b0514419b291', 0, '2021-09-06 19:05:18'),
('7e9cd6de0595621a7d1dee4b4de0210c79d6f0b14eaa9b24748f903a8b95d917b8fc2b9976b8a79e', 'e2fe4ff85bc1d09ab03733717ff12dae70cde1fa9b10c3caf753e05f5c7236f1973c387df6cc20fc', 0, '2021-09-06 19:06:26'),
('7fa94c4b4880190f61f5d04f5eca9284958ef5086c7f3440b91f42b47e2812a74a72563dd85cb8c7', '183ecc0b949ec11fd7a58dded0079cdf396ad89b945a16be5e626f2de2f91f4fae94abff0f94f17e', 0, '2021-09-07 16:02:10'),
('7fdf5d6dff1fe7c16ee15dbd1c334b64c599448f2b55689c56f2743567e84c797d6257c2ec4ad3ba', '3080b47b06f87a04fcb06f89cd78ff266bcc3c92886e3a66a7643c2e9c1cf36fde7192f244c60f66', 0, '2021-09-07 19:37:58'),
('8467fa0ca593b53de0621284c7501f916e316540695a3509c4fa4eeecb64b6d5d31a14e59ba3cc66', '02215156531523e6a57a2a94ab4af409bf74cac1a92e83c98e164ed5b54bd7f6ed2812f145459fe0', 0, '2021-09-07 16:12:29'),
('87115fa2a3d551305a54ff5e8381b453d19b1b12f0aeff61ce5311b302fab3f864901ffb3d540ee5', '8b629928b990f531e17c82669d7af446d5fd41ae1e588928f4dd348a1eb42f74f7641c954eaa3c80', 0, '2021-09-06 19:56:24'),
('88086c376a1bf73a1e98f78f45ff951521001f554474afb7f786c57d11c0b4226c889fce4a3d865c', '042c03f0b77b8fae2c618cd0ea0e06ce2fb9118ed1babe06e4c6bb53e736f77950b76c9dd6dfaffc', 0, '2021-09-07 16:06:39'),
('88a30f5a49cd436531eb2f6a961ac269baf27d99fc7cacc97ed7c7326588881a0b8d6b1852511ce0', '6eb327d36f54dc8bfeae2ed8984001631c55a2846aec341388afb5a6702b312b891acf583e3fdacc', 0, '2021-09-06 21:33:47'),
('88e77d4ff4f3ba13e6df4eb67de5716e9f54d402e0e872872fcd006047b1e42bb0370f59905d091a', 'd9fe5e0fe7f543ad21f752ca417263f8e38201a5691bd3387c1a476e5f8a532ee2fcefbccc6a61b3', 0, '2021-09-07 16:14:23'),
('8a60dcf277803809fe36bdca23e0224d1d54843c4bbf65e8443009a703b70712c1aa35ad61b9d166', 'b4201674ae37ce5f32f0b6337c0c57ffab619005892be5b680cdcd809d8900560f878e99605b5a02', 0, '2021-09-06 19:55:28'),
('8acbcd482c3aa6dd93cb725814de1cc288add13606d86883730bfac16772dc32d85794379c63ceaa', '1cc8ddebaeb50a1cbddb1ef5dcf89c67df773f1392170a9199a1a76d0ed864b6722aeed6fac62493', 0, '2021-09-07 15:52:47'),
('8ad289c3fcf1b02018ea5d68119f1f82dfc0342747dd5a807686f533dd662df3106533874503050e', '5969c0902e08e59aaa9d0bc504d39e878bad2202dae0d6fc8f01e4e2cdf488a1306ae2e890581954', 0, '2021-09-07 16:01:50'),
('8c4c84c2c44f25bf994077a2e9d12643e05d8813a753086b856c787d16a79b2532b1783c02bbc9ef', '7565072314c1db1a18a1399cb8870199709bfdffc66b7bedb58ba66da8d065b77ebd7480bc17519c', 0, '2021-09-06 19:04:41'),
('8d811d5ec9b27fda519407e7a8847a821a368312845e53e335410e34873265e115941710f15ad5e0', '366183c1d4783ff82664d3e4c5288e99a122c807ad1efe7bdf283b41bda10878c59220845ca3e172', 0, '2021-09-07 19:42:09'),
('8d9285dbbd466aad1bc4db2992612cb7d70c54d9519a6ea1d72935734812ad026894ab64b3befe6a', '05c545d92b42fe3f60b1ef27d5ee55b39f04e18e9688d8c8d726b9221ca7823d90e4c9afce4f74ca', 0, '2021-09-07 15:49:50'),
('90057115979762b6eb031807429e1d5f4db56cfad9332522b1365e3e0b72140eafdded2014097092', '9aa191af376a8fd035aab1156c6ae4367188412aeac218b8fc26e48bf7421b6c915aef95487c1219', 0, '2021-09-07 19:38:06'),
('94460e5f30f1eeb8d3c921cd683bb4f558f7099056654a839a89005f92b6c06267f9691709f5ace0', '6cd2c652579b87e5092a41736a4c35d444333447ebb43f006db468ec0b533079d8d78094b4d3bc2c', 0, '2021-09-06 21:33:06'),
('95b2bdff2ab2164ff913e064f4cb0a5f7447f9f7f280b4ce98f3b159543ee44d0018fa41675dda6c', '40a899baf6bf11269773ac160e3adaa94c81ef06db7dfe1ede996a3a0146bbe1406f64d38fd2b49b', 0, '2021-09-06 20:11:03'),
('9731a745e4d9ee2ebcc50dd2fac9c716fb4bd0b1b0a1b125f1d85b1a9d952210bd586c18cc5fece9', '53777ed7c1e6627203eb58d5c6478a0b4aedc5de53d3cf8cae2291c6a742c3cd0b9d92ac8081724a', 0, '2021-09-07 15:39:02'),
('9747b6b8da48c840d75fd5b1ca509f514280ed65d5c2f1c496178ee62f606df97b97f0cf69fdd6d1', '99a4fc43768161f030b19165527e7af2a062d0aec2f08de6f81d5217dc6c6090f2c7eae48c3efc47', 0, '2021-09-07 19:37:03'),
('9b2ed0dfd0f8f18f780f9b2a6978f5cdd6e265b22c258f8d013af239b9212045a8db709c10d7fab0', '6b84772018fb93c086bfbb99f549d2ec969f616aedd68e832ff74cfbd4b97931466e6108e798a145', 0, '2021-09-07 16:00:29'),
('9be37c42024b4e6cce506c5bc5032608d4305fa0f921586fb2bae52f3deff70744090a23848f3c03', '909527e5b2c5827e20a8015446cf2ea6b10eda2efb1221679e2289bd7fcbb67a97c55335f1340088', 0, '2021-09-06 19:05:50'),
('a0194d36c3b803666c707cf1c12a08bb09ab95eb82ed2f900ec0e9b06d15d4a8528a6eebd8f037a0', '3adcb15aaba0bd48a7630ff91dc59a0f117c1ea1730b8b8addec472fdb73f9e8c8e3f5e2d7719735', 0, '2021-09-06 20:35:55'),
('a02f8562b69d1256fc62e1b2e95abbd728184ff4a886b7117d203f95292b156a37eced3a876d4e86', '5e5fdeaf857f740f4372ed6d2eb3290d318a6e40e1260155adc722e2b6282fa7a00704fb164055ec', 0, '2021-09-06 20:23:31'),
('a4cd25ea05375183620f0fe93d2c2c0fbecedcc0c46fbcb0cd4717ab7eedb8abbfa367df0d540cc5', '58f3c324c6cbcbd539f8e3a13314e65a1843a7f5181f3918795e25f1d5cba22b47c316ff626fad7d', 0, '2021-09-06 20:10:34'),
('a61261477840920f836d213a33bcee602737ecf30895a6dec28b3e9a6445f00146b17b4517ff4256', 'ee68e275474f732fdf102ebdbeb80158e44ed43335bf46bdb2b4f21b445838291fddf865502c06f4', 0, '2021-09-06 21:03:52'),
('a64c8de4ede9f39f475a457f85e4e4af44613e4b9675d860552113b4546346286017124d85beb45d', '20c93c461cf35b251269f309f0ebcc5962ccdd8d61f496ee321e5621ca4aa9147ce3a7d47e91e10e', 0, '2021-09-06 18:57:08'),
('aa38df504026145568ca0b2ca8bedb702ab941abf2abb545099016d2c84bd856edb58604d56167a2', 'b472e4b0aae97cffa1dfbf1751a6cc8b450c8a620baf8ad729f3c9223110864f5a146e561a0d51e0', 0, '2021-09-06 21:42:43'),
('ab77ac6db8684c16a19ba4c4a77d60d6de521c829906c302b76a13eebb57afe449582a01b73ec473', '2820db641f7ecc74641e42104c89b32f88c247b30c03ff99828a7c329e7b80f2852c45b73152594a', 0, '2021-09-06 21:39:35'),
('b0c055f8b998b9db9d4d69a6180812b79523086fa835aa0a0c0ea759cabd7118e3253e3f70efd2e2', 'b1b9adfdda57e494bd26412935d8c67db9d2622b7f8e3e3f4d30562dd764b73ce449f493205a6378', 0, '2021-09-06 20:02:00'),
('b12e64cc9116d01f735fbce060fa03300bbdc82dfde39525bb46cdfeca4031f98ff97c62534c5ea1', '72e072bcccdac4acc6e51aec6a6c652aadd1f4e9246f5e4c2bce20aa6157c4e410abc38686a119e6', 0, '2021-09-07 16:03:42'),
('b153fe3946b5a4ca6da2aaa03ea22a5d8533cb447ab31da32229ed0830b04bc3dbfb1637deee39df', '43cfc8e29fc9863cfcbc907b8889e2b0da40ecb993f1dddeeed6e11ac9c450594d40eff494eb2a2b', 0, '2021-09-07 16:02:10'),
('b2dd4ebfd5fd7890ef331dd7c0276ed01ad3497ec01f054a12e2f40671f6ea7bbcc396f9ea17ffba', 'b4bc1c0550df6e5db1203718d6fe7582e920ef58de3534626a1561294f447eb3fb762c92fce0f408', 0, '2021-09-06 19:04:27'),
('b441f1dd96addebb97a482ff1539ffb589b791dd6f37001058decef64d2a400509df105f64df9744', 'ed1c8b8408e7cbd4b1ff7bafdb2ca809ad335038f8cbbdc6ff629e5d3168ef443b2f1ce5c883b65c', 0, '2021-09-07 19:42:34'),
('b71e034a8879141beccd2c4a83be484ceb0afc148e4b8b8bff4f0978c353a2aae2c0b4d1fc6da8ee', '48b3848e2a13ae229d40368923f45e96a81eb180d394a3d8d86b58d3b27c50b240e225e6b92b6dca', 0, '2021-09-07 16:08:10'),
('b9eed86a025791cbd99324821d9ffb5d0af47d39b8cdeed735cfece1a2af4cb8f3c63e74fb244584', '875d6b8b4848861f13ca6326f0cdb035b94e23fb79616b1dc92ba15e855f16683c2970eef5dfa625', 0, '2021-09-07 19:11:21'),
('bb394e34853ec4a5fa6718e9be42626126dc62b1a81aa6a6782c33d6ed7cbbd99639ce7e3f9ac192', 'd8b7922123c1a9798d9775d1d0b0842907dd562bfa02faaac06b942ee4aa1b7572c6038a1eca7ba5', 0, '2021-09-07 16:02:10'),
('bb73e39045a65f6a8b101c83037b51cb0b0f8b672f252dd5d87178b84e1f95a8ab859b391c15eaa9', 'b038dd507a6815649dcee19e8f3b5bfdd5d5de3c96984aeef1d72f769623290e09b8eb1f25c1259e', 0, '2021-09-06 19:53:11'),
('bcfb981e32d4f2ca8ce14bdf7a9319e671ff3e04fe33b8283ebe1b0e329676c82a2b108f695b8f67', '3562cd6cc25e7101ce434dd46a6c484fbb1fd2fcd153fe6722046da2981c8135f7df69ab77b10767', 0, '2021-09-06 19:04:28'),
('c16efd3b26c30a14c9a95160402b7a3f1f6a91dba72cfd989eaeb8825823425de2627474d99685d4', 'b1f62adbf56f815a3ff01fbbff0640ef5e776a6b416836946033f37642bcb7df3a8464d0f21d11a0', 0, '2021-09-07 16:10:16'),
('c433330c31d6192570fc1b79291763b793153b2a354212b318fa811d1793a87fd5bb11df3463ec91', 'f765d768cad8fe1196b3a92a7e62d6b66aec81554c5a50fdcf1cef9e69a910193ec88e2cb896ff65', 0, '2021-09-07 15:52:50'),
('c65c903f8d00b31a8c70712f3cb62de97ead1e7fcf05a2d0b608a3bce93e63b9361fba76ddc2da20', 'eb9ec5b9fe3a4260dec4d9238c7f0578e28c32612fdf18c0ae92bad56e3097d5a138be1cc4f20a7b', 0, '2021-09-07 16:02:05'),
('c781e17e79f33fdd1c51c76fa6e634166ea876f57f81d18b6000072f401529086fe28023af924fc1', '3e484d7bd98826bd03134e0f94b63513fab30e5f78919415fe5062fa8c3bced8a0841a2b5bf47733', 0, '2021-09-07 16:12:32'),
('caf5c74f5a45b581ddb48d688fdd5dbd5ef5e0aef93ade5b0988d2926f372972d11c1eb93049bfbd', '18c678a54f9c1f01ba127e64a58f2cae1f81db3c1353bf7427fd3d409fb5ba245bfa502c5fefdf7b', 0, '2021-09-07 00:49:44'),
('cb23e239e36134798f035cc07796e39a5a3e0b58e283a585a66086d0f9786ad4a7eb4d7b246cedee', '91f09ba99868bcd5440ba948b47ef40da54719386631d6f53edccb9f05204d9cdce383aa9e582382', 0, '2021-09-07 19:43:37'),
('cd2ea26e56b132daaee60b3ff15fde66878a28ea0fb16def0a3506b4f3cd4bcc379dace2e46e98f3', 'dbbee9e70cba9b7992bbcd2136f37a9f6f20ba36c6a0b27c78e2db4b813582a7de88af5d6b1efa1e', 0, '2021-09-07 19:11:21'),
('cdef61c8b797b8747d9538f6b613eb299b5137ce98e10220fc79f43e847c1d7b117452df765e3f48', '931bd3e5d3c649ea96277e2ef697cad6dbf25467bd44b14e2145d63cee0778a91e4e6b8de9f0ad90', 0, '2021-09-07 15:59:49'),
('ce1bb6f55db24e80d5cef3a36171658a280e9b74444c9a3c6fbde4210db33146c63237fa5690c150', '9b42a0d188d84b228f5aa590bb27fa0fd3b965e69ed02092bf7650e8f557a9c3ff90ce92620b8ea0', 0, '2021-09-07 15:39:43'),
('cf98af465dc9cba66f497a26621298cbf272a002788313f5763fb8a6a81e1b92c18efe2258bd7d95', '0944d11238e548d4ae5adf4017a8beb3c634d138c80860162080ecb18b7f24b8dd90732396a78e82', 0, '2021-09-06 21:36:02'),
('cf996532766f140a939acbbfdd14e15a75e7628d1de9c198f7427dd11e041759906a1c33f2ecf02c', 'df968e24e95d130301504b0209d453865df9449dec93ceab2a1cc5980a1184fe2680a12145556dfc', 0, '2021-09-06 19:04:25'),
('d04dd8366fdd956cbd4889367b55153de7d0eea4f1940a40c57600dde2867bc381a7047ce4067b0a', 'd6bb75e3723872fc489c6bba1d025a0125fec4834565ab6c30966f3cd94b07f3281c4195c0f3599d', 0, '2021-09-06 19:04:21'),
('d1f321870b87fe3a4772dbf2ef2fb7241f35475577dcd37af29d866fd9b61f6db2dc38c9a7594766', '0f07043a3c2bc21590dc14c6d2ecf3b3f7c73e113dda1c65f43c972f43a9e907f4c4147fe5dca821', 0, '2021-09-06 19:55:22'),
('d6d5df2686a3ee35915acc4d6e4ddc97e7316bae023d01a7114632a0e862e91a05507617e3d44b9b', '953287f7c212583b90a277c53d85bf7c6bc1652db5480508ef3eed50b7e1dab9dd8e6928c7606245', 0, '2021-09-10 23:15:30'),
('d9d292943fedbc810d6c1465f278297cb447b75275cd09a5febd35710ac969980291af156db0d396', '747bd9ad9746b085298ab361381e60a4e90fe68fd28c6ecd8e5134203a6a70da3a158433a18a822f', 0, '2021-09-06 21:43:32'),
('dccb636708e1b481902c5c5bfbf34ac388a4d7446804479233fb3645fba6b723ea226d4c02052498', 'c5f826b2d354b24706f87817fafe2dd439132ab936e5e0936d1ae5bd43e5689b16efb303b197e8ec', 0, '2021-09-06 21:04:10'),
('e0799860ed1a5ac0da2eeb5edbd2dc0bb79184aa3dbf9aea08150075b6d5645512d04d9386e4c55b', 'a1add50a9e7c83cfb8ff4504e34d10e54cafdcb081556c73c0031d8c6dbfbbb14ccb3187f387b8d1', 0, '2021-09-07 16:02:37'),
('ea1249b1b2b137d87a87e69742044b29d73bbed36a678034e4226dbcddff12cf2922e72f8dbc3939', '8c93c9889b20e8d1dc1a3d3436aaf3730735fdcade0aedeb3e4b9fa9a7e2eaef86fb09769fe607ed', 0, '2021-09-06 18:19:35'),
('eb441b7134a9d3b8fef6876ebda0a01c2413a50bfa6ea35b3e1d26e4a9c8798cba39f7a098484179', '8cf5b2fb8eca9a0dd55e332db864294e505c90b04651b562ffebc49d4ebf3858c57795ed92299e11', 0, '2021-09-07 15:55:20'),
('f3bb4eac45822c2b2fea8f4cbf6c4d793dcc09a2b25c254556f9274fa2f20cc5a93b525fd94e9af5', 'ec597d7e5085749e003212cb38870aceb91cbadd95004918ebdaa8b6b3d0813f9550c0fc60a63a04', 0, '2021-09-06 20:23:29'),
('f4eaee5e888fa27d4518c50b2177af2fb0a03a39b6bb466173a651666b0415050a2b9dc3c90e3598', '8fbdaaf7b3b9c3bf2549638c14e89337c9368f8272bc2034e7c3865a1615579ca80b1993d600e88e', 0, '2021-09-07 16:03:10'),
('f574244f806d5ff74ea93054906d172fee36f1816d6914bbbd97bf924d9f5dde3c56ed9b3df53e39', '07fe33915823832c5a3428bcf1bc6ec7739250b8a8360d7119c9230e6b9103264e14151d46e64149', 0, '2021-09-07 19:47:29'),
('f7bca9cc58318cb7ad52a13979c380225ca59bfff220265a790992d5ea625326c9b4d1d39ab0a31b', '67fdc08ca7000882a655b0c8c0ba4cb0f0876ae5620daeb19d71ced89f7022b1f8177ebd6dda1aea', 0, '2021-09-07 15:48:56'),
('f7ecff5573cc03d5169b1576d8c9f4d39a18918b024101ed0556fd5f13a2e69e495daaefb9bdbc5f', '825f823fcb62eadfde5e916080ed6339218774c9e80d4e6bbae82c60cc65f2a04dcc1c82f987a9b0', 0, '2021-09-06 20:49:34'),
('f909a2da59603708f0d47658a341810565a273ce1c61922d92ddffa1d39ab6321293817a6842bebc', '1e26764f16a80727b7d79bc84486af369151f165bb2ae842fed18a8e30ce5f0b502021da5ac5ce31', 0, '2021-09-07 16:13:42'),
('fd1218be9685772625907e0b090aef5db6a0e340b5b1bc7071075465afadeff99864df7fe3ef935d', '128c3490b009791e2b890d55a30391052b7b045c63a3be80a14635fd1972f9100cf2fe44ecc911c1', 0, '2021-09-06 20:38:49');

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
(86, 'delete_images', 'images', '2020-09-06 09:33:51', '2020-09-06 09:33:51'),
(87, 'browse_apartment_ratings', 'apartment_ratings', '2020-09-06 11:37:19', '2020-09-06 11:37:19'),
(88, 'read_apartment_ratings', 'apartment_ratings', '2020-09-06 11:37:19', '2020-09-06 11:37:19'),
(89, 'edit_apartment_ratings', 'apartment_ratings', '2020-09-06 11:37:19', '2020-09-06 11:37:19'),
(90, 'add_apartment_ratings', 'apartment_ratings', '2020-09-06 11:37:19', '2020-09-06 11:37:19'),
(91, 'delete_apartment_ratings', 'apartment_ratings', '2020-09-06 11:37:19', '2020-09-06 11:37:19');

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
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name_en`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Mandalay', 1, '2020-09-06 19:56:49', NULL),
(2, 'Yangon', 1, '2020-09-06 19:56:49', NULL),
(3, 'Singapore', 2, '2020-09-06 19:56:49', NULL),
(4, 'Iowa', 3, '2020-09-06 19:56:49', NULL),
(5, 'Illinois', 3, '2020-09-06 19:56:49', NULL),
(6, 'New York', 3, '2020-09-06 19:56:49', NULL),
(7, 'California', 3, '2020-09-06 19:56:49', NULL),
(8, 'Addis Ababa', 4, '2020-09-06 19:56:49', NULL),
(9, 'Afar', 4, '2020-09-06 19:56:49', NULL),
(10, 'Hanoi', 5, '2020-09-06 19:56:49', NULL),
(11, '7th region', 5, '2020-09-06 19:56:49', NULL),
(12, 'Pichincha', 6, '2020-09-06 19:56:49', NULL),
(13, 'Guayas', 6, '2020-09-06 19:56:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` int(10) UNSIGNED NOT NULL,
  `states_id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipCode` int(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `states_id`, `name_en`, `zipCode`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mandalay', 112233, '2020-09-07 20:55:04', NULL),
(2, 2, 'Yangon', 112343, '2020-09-07 20:55:04', NULL),
(3, 3, 'Singapore', 25342, '2020-09-07 20:55:04', NULL),
(4, 4, 'Des Moines', 50047, '2020-09-07 20:55:04', NULL),
(5, 4, 'Fairfield', 52556, '2020-09-07 20:55:04', NULL),
(6, 5, 'Chicago', 34230, '2020-09-07 20:55:04', NULL),
(7, 6, 'Albany', 10001, '2020-09-07 20:55:04', NULL),
(8, 7, 'Los Angeles', 90002, '2020-09-07 20:55:04', NULL),
(9, 7, 'Sacramento', 92347, '2020-09-07 20:55:04', NULL),
(10, 8, 'Addis Abeba', 1232, '2020-09-07 20:55:04', NULL),
(11, 9, 'Semera', 366, '2020-09-07 20:55:04', NULL),
(12, 10, 'Ha Noi', 34556, '2020-09-07 20:55:04', NULL),
(13, 11, 'Ho Chi Mihn City', 27840, '2020-09-07 20:55:04', NULL),
(14, 12, 'Quito', 170501, '2020-09-07 20:55:04', NULL),
(15, 13, 'Guayaquil', 89755, '2020-09-07 20:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartments_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` smallint(6) DEFAULT NULL,
  `provider` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` tinyint(4) DEFAULT NULL,
  `is_agent` tinyint(4) DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `lang`, `payment_id`, `provider`, `provider_id`, `ip_address`, `image_id`, `is_agent`, `about`, `phone`, `DOB`, `gender`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'admin', 'users/default.png', NULL, '$2y$10$ATAAeGmSynzlOS.b3o9LXeabiIvguObb.H7bNeZAX8odTViuwvybe', 'uJnm1lqOdpWWpolThqGvxLbAGYvtBtUKDEpnHW8WEhKLZpM10dZ4L0wO2x3V', '{\"locale\":\"en\"}', '2020-09-06 08:51:54', '2020-09-06 09:51:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, 'Admin', 'dev@admin.com', 'dev', 'users/default.png', NULL, '$2y$10$ODTpUo4K4bvcYzo3Cojz5ussN8qsfdY9/8lUvUkfnjkjKr0WyaoTu', NULL, '{\"locale\":\"en\"}', '2020-09-06 09:51:33', '2020-09-06 09:55:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 'Mohan', 'user@gmail.com', 'mohan', 'users/default.png', NULL, '$2y$10$o3glpA7ClQ2osJsCh3xg1ONprMpohb.TBvtq04Nuv9qytio49LEEC', NULL, NULL, '2020-09-06 19:30:31', '2020-09-06 19:30:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1785456667', '1996-08-16', 'M'),
(4, 2, 'John Smith', 'jsmith@memailservc.com', 'jsmith', 'users/default.png', '0000-00-00 00:00:00', '$2y$10$ODTpUo4K4bvcYzo3Cojz5ussN8qsfdY9/8lUvUkfnjkjKr0WyaoTu', 'NULL', '\" {\"\"locale\"\":\"\"en\"\"}\"', '2020-09-07 20:34:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1123456789', '1980-09-07', 'M'),
(5, 2, 'Raul Perez', 'rperez@memailservc.com', 'rperez', 'users/default.png', '0000-00-00 00:00:00', '$2y$10$ODTpUo4K4bvcYzo3Cojz5ussN8qsfdY9/8lUvUkfnjkjKr0WyaoTu', 'NULL', '\" {\"\"locale\"\":\"\"en\"\"}\"', '2020-09-07 20:34:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1345678901', '1988-11-02', 'M'),
(6, 2, 'James Doyle', 'jdoyle@memailservc.com', 'jdoyle', 'users/default.png', '0000-00-00 00:00:00', '$2y$10$ODTpUo4K4bvcYzo3Cojz5ussN8qsfdY9/8lUvUkfnjkjKr0WyaoTu', 'NULL', '\" {\"\"locale\"\":\"\"en\"\"}\"', '2020-09-07 20:34:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1567890123', '1976-09-02', 'M'),
(7, 2, 'George Brown', 'gbrown@memailservc.com', 'gbrown', 'users/default.png', '0000-00-00 00:00:00', '$2y$10$ODTpUo4K4bvcYzo3Cojz5ussN8qsfdY9/8lUvUkfnjkjKr0WyaoTu', 'NULL', '\" {\"\"locale\"\":\"\"en\"\"}\"', '2020-09-07 20:34:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1789012345', '1986-11-01', 'M');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_type_id` (`apartment_type_id`),
  ADD KEY `business_type_id` (`business_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `township_id` (`township_id`);

--
-- Indexes for table `apartment_features`
--
ALTER TABLE `apartment_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment_ratings`
--
ALTER TABLE `apartment_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_id` (`apartment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `apartment_types`
--
ALTER TABLE `apartment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apt_feat_conn`
--
ALTER TABLE `apt_feat_conn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_id` (`apartment_id`),
  ADD KEY `apartment_feature_id` (`apartment_feature_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_id` (`states_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartments_id` (`apartments_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `apartment_features`
--
ALTER TABLE `apartment_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `apartment_ratings`
--
ALTER TABLE `apartment_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apartment_types`
--
ALTER TABLE `apartment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(36) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent_ratings`
--
ALTER TABLE `agent_ratings`
  ADD CONSTRAINT `agent_ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_ibfk_1` FOREIGN KEY (`apartment_type_id`) REFERENCES `apartment_types` (`id`),
  ADD CONSTRAINT `apartments_ibfk_2` FOREIGN KEY (`business_type_id`) REFERENCES `business_types` (`id`),
  ADD CONSTRAINT `apartments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `apartments_ibfk_4` FOREIGN KEY (`township_id`) REFERENCES `townships` (`id`);

--
-- Constraints for table `apartment_ratings`
--
ALTER TABLE `apartment_ratings`
  ADD CONSTRAINT `apartment_ratings_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`),
  ADD CONSTRAINT `apartment_ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `apt_feat_conn`
--
ALTER TABLE `apt_feat_conn`
  ADD CONSTRAINT `apt_feat_conn_ibfk_1` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`),
  ADD CONSTRAINT `apt_feat_conn_ibfk_2` FOREIGN KEY (`apartment_feature_id`) REFERENCES `apartment_features` (`id`);

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
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `townships`
--
ALTER TABLE `townships`
  ADD CONSTRAINT `townships_ibfk_1` FOREIGN KEY (`states_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`apartments_id`) REFERENCES `apartments` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
