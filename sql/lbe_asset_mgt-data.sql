-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 04:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbe_asset_mgt`
--
CREATE DATABASE IF NOT EXISTS `lbe_asset_mgt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lbe_asset_mgt`;

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `name`, `category_id`, `created_by`, `qty`, `requestable`, `created_at`, `updated_at`, `deleted_at`, `location_id`, `purchase_date`, `purchase_cost`, `order_number`, `company_id`, `min_amt`, `manufacturer_id`, `model_number`, `image`, `supplier_id`, `notes`) VALUES
(1, 'Apple Keyboard', 4, 1, 43, 0, '2024-12-27 14:57:12', '2024-12-27 14:57:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'FDFSF323', 'accessory-image--K4nwnFdxCt.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accessories_checkout`
--

CREATE TABLE `accessories_checkout` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `assigned_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `action_type` varchar(191) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(191) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `item_type` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `expected_checkin` date DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `accept_signature` varchar(100) DEFAULT NULL,
  `log_meta` text DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `stored_eula` text DEFAULT NULL,
  `action_source` varchar(191) DEFAULT NULL,
  `remote_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_logs`
--

INSERT INTO `action_logs` (`id`, `created_by`, `action_type`, `target_id`, `target_type`, `location_id`, `note`, `filename`, `item_type`, `item_id`, `expected_checkin`, `accepted_id`, `created_at`, `updated_at`, `deleted_at`, `thread_id`, `company_id`, `accept_signature`, `log_meta`, `action_date`, `stored_eula`, `action_source`, `remote_ip`, `user_agent`) VALUES
(1, NULL, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\User', 1, NULL, NULL, '2024-12-24 02:49:58', '2024-12-24 02:49:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(2, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1, NULL, NULL, '2024-12-27 11:26:23', '2024-12-27 11:26:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(3, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\User', 2, NULL, NULL, '2024-12-27 11:30:15', '2024-12-27 11:30:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(4, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\User', 3, NULL, NULL, '2024-12-27 11:31:13', '2024-12-27 11:31:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(5, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\User', 4, NULL, NULL, '2024-12-27 11:32:05', '2024-12-27 11:32:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(6, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Consumable', 1, NULL, NULL, '2024-12-27 14:48:01', '2024-12-27 14:48:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(7, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Component', 1, NULL, NULL, '2024-12-27 14:54:53', '2024-12-27 14:54:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(8, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Accessory', 1, NULL, NULL, '2024-12-27 14:57:13', '2024-12-27 14:57:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(9, 1, 'add seats', NULL, NULL, NULL, 'added 80 seats', NULL, 'App\\Models\\License', 1, NULL, NULL, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cli/unknown', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(10, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\License', 1, NULL, NULL, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'importer', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(11, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 2, NULL, NULL, '2024-12-27 15:11:52', '2024-12-27 15:11:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(12, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 3, NULL, NULL, '2024-12-27 15:12:20', '2024-12-27 15:12:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(13, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 4, NULL, NULL, '2024-12-27 15:13:21', '2024-12-27 15:13:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(14, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 5, NULL, NULL, '2024-12-27 15:13:35', '2024-12-27 15:13:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(15, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 6, NULL, NULL, '2024-12-27 15:13:54', '2024-12-27 15:13:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(16, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 7, NULL, NULL, '2024-12-27 15:14:08', '2024-12-27 15:14:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(17, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 8, NULL, NULL, '2024-12-27 15:18:22', '2024-12-27 15:18:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(18, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 9, NULL, NULL, '2024-12-27 15:18:40', '2024-12-27 15:18:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(19, 1, 'create', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 10, NULL, NULL, '2024-12-27 15:19:08', '2024-12-27 15:19:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(20, 1, 'update', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 3, NULL, NULL, '2024-12-27 15:19:27', '2024-12-27 15:19:27', NULL, NULL, NULL, NULL, '{\"status_id\":{\"old\":2,\"new\":\"1\"}}', NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(21, 1, 'update', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 10, NULL, NULL, '2024-12-27 15:20:14', '2024-12-27 15:20:14', NULL, NULL, NULL, NULL, '{\"status_id\":{\"old\":2,\"new\":\"3\"}}', NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(22, 1, 'update', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 5, NULL, NULL, '2024-12-27 15:20:53', '2024-12-27 15:20:53', NULL, NULL, NULL, NULL, '{\"byod\":{\"old\":0,\"new\":\"1\"}}', NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(23, 1, 'checkout', 2, 'App\\Models\\User', NULL, NULL, NULL, 'App\\Models\\Asset', 1, NULL, NULL, '2024-12-27 15:23:04', '2024-12-27 15:23:04', NULL, NULL, NULL, NULL, '{\"expected_checkin\":{\"old\":null,\"new\":\"2025-01-16\"}}', '2024-12-27 20:53:04', NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(24, 1, 'checkin from', 2, 'App\\Models\\User', NULL, NULL, NULL, 'App\\Models\\Asset', 1, NULL, NULL, '2024-12-27 15:34:22', '2024-12-27 15:34:22', NULL, NULL, NULL, NULL, '{\"status_id\":{\"old\":2,\"new\":\"1\"},\"expected_checkin\":{\"old\":\"2025-01-16\",\"new\":null}}', '2024-12-27 21:04:22', NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(25, 1, 'update', NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Asset', 1, NULL, NULL, '2024-12-27 15:34:58', '2024-12-27 15:34:58', NULL, NULL, NULL, NULL, '{\"status_id\":{\"old\":1,\"new\":\"2\"}}', NULL, NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(26, 1, 'checkout', 2, 'App\\Models\\User', NULL, NULL, NULL, 'App\\Models\\Asset', 1, NULL, NULL, '2024-12-27 15:35:15', '2024-12-27 15:35:15', NULL, NULL, NULL, NULL, NULL, '2024-12-27 21:05:15', NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(27, 1, 'checkout', 1, 'App\\Models\\Asset', NULL, NULL, NULL, 'App\\Models\\Asset', 4, NULL, NULL, '2024-12-27 15:36:09', '2024-12-27 15:36:09', NULL, NULL, NULL, NULL, NULL, '2024-12-27 21:06:09', NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(28, 1, 'checkout', 2, 'App\\Models\\Location', 2, NULL, NULL, 'App\\Models\\Asset', 8, NULL, NULL, '2024-12-27 15:36:41', '2024-12-27 15:36:41', NULL, NULL, NULL, NULL, '{\"location_id\":{\"old\":null,\"new\":2}}', '2024-12-27 21:06:41', NULL, 'gui', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `asset_tag` varchar(191) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `serial` varchar(191) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `asset_eol_date` date DEFAULT NULL,
  `eol_explicit` tinyint(1) NOT NULL DEFAULT 0,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `physical` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `warranty_months` int(11) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  `rtd_location_id` int(11) DEFAULT NULL,
  `_snipeit_ram_1` varchar(191) DEFAULT NULL,
  `accepted` varchar(191) DEFAULT NULL,
  `last_checkout` datetime DEFAULT NULL,
  `last_checkin` datetime DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_type` varchar(191) DEFAULT NULL,
  `last_audit_date` datetime DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `checkin_counter` int(11) NOT NULL DEFAULT 0,
  `checkout_counter` int(11) NOT NULL DEFAULT 0,
  `requests_counter` int(11) NOT NULL DEFAULT 0,
  `byod` tinyint(1) DEFAULT 0,
  `_snipeit_cpu_2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `asset_eol_date`, `eol_explicit`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `created_by`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `_snipeit_ram_1`, `accepted`, `last_checkout`, `last_checkin`, `expected_checkin`, `company_id`, `assigned_type`, `last_audit_date`, `next_audit_date`, `location_id`, `checkin_counter`, `checkout_counter`, `requests_counter`, `byod`, `_snipeit_cpu_2`) VALUES
(1, NULL, 'SANGKAJ-00001', 1, '27aa8378-b0f4-4289-84a4-405da95c6147', NULL, NULL, 0, NULL, NULL, 2, NULL, NULL, 1, '2024-12-27 11:26:23', '2024-12-27 15:35:15', 1, NULL, 2, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, '2024-12-27 21:05:15', '2024-12-27 21:04:22', NULL, NULL, 'App\\Models\\User', NULL, NULL, NULL, 1, 2, 0, 0, NULL),
(2, NULL, 'SANGKAJ-00002', 1, '18d6e6a4-d362-4de9-beb4-7f62fb93de6f', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:11:52', '2024-12-27 15:11:52', 1, NULL, 2, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(3, NULL, 'SANGKAJ-00003', 1, 'f9b473c6-c810-42f2-8335-27ce468889a8', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:12:20', '2024-12-27 15:19:27', 1, NULL, 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(4, NULL, 'SANGKAJ-00004', 2, '4751495c-cee0-4961-b788-94a545b5643e', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, 1, '2024-12-27 15:13:21', '2024-12-27 15:36:09', 1, NULL, 2, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-12-27 21:06:09', NULL, NULL, NULL, 'App\\Models\\Asset', NULL, NULL, NULL, 0, 1, 0, 0, NULL),
(5, NULL, 'SANGKAJ-00005', 2, '17b3cf8d-fead-46f5-a8b0-49906bb90a00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:13:35', '2024-12-27 15:20:53', 1, NULL, 2, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(6, NULL, 'SANGKAJ-00006', 2, '7a6a2fdb-160c-4d91-8e05-a0337a90d9db', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:13:54', '2024-12-27 15:13:54', 1, NULL, 2, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(7, NULL, 'SANGKAJ-00007', 2, 'c1a57909-3b2e-47fe-ab2f-843401b2a7de', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:14:08', '2024-12-27 15:14:08', 1, NULL, 2, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(8, NULL, 'SANGKAJ-00008', 3, '9a863968-180e-451d-a723-dc85e2d5d8ff', NULL, NULL, 0, NULL, NULL, 2, NULL, NULL, 1, '2024-12-27 15:18:22', '2024-12-27 15:36:41', 1, NULL, 2, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-12-27 21:06:41', NULL, NULL, NULL, 'App\\Models\\Location', NULL, NULL, 2, 0, 1, 0, 0, NULL),
(9, NULL, 'SANGKAJ-00009', 3, 'e287bb64-ff4f-434c-88ab-210ad433c77b', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:18:40', '2024-12-27 15:18:40', 1, NULL, 2, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(10, NULL, 'SANGKAJ-00010', 3, '90bcab28-ffd4-48c9-ba5d-c2eeb1400698', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-12-27 15:19:08', '2024-12-27 15:20:14', 1, NULL, 3, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_logs`
--

CREATE TABLE `asset_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `checkedout_to` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_type` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_maintenances`
--

CREATE TABLE `asset_maintenances` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `asset_maintenance_type` varchar(191) NOT NULL,
  `title` varchar(100) NOT NULL,
  `is_warranty` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  `asset_maintenance_time` int(11) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_uploads`
--

CREATE TABLE `asset_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `filename` varchar(191) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `filenotes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `eula_text` longtext DEFAULT NULL,
  `use_default_eula` tinyint(1) NOT NULL DEFAULT 0,
  `require_acceptance` tinyint(1) NOT NULL DEFAULT 0,
  `category_type` varchar(191) DEFAULT 'asset',
  `checkin_email` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `deleted_at`, `eula_text`, `use_default_eula`, `require_acceptance`, `category_type`, `checkin_email`, `image`) VALUES
(1, 'Misc Software', '2024-12-24 02:43:58', '2024-12-24 02:43:58', NULL, NULL, NULL, 0, 0, 'license', 0, NULL),
(2, 'LAPTOP', '2024-12-27 10:53:36', '2024-12-27 10:53:36', NULL, NULL, NULL, 0, 0, 'asset', 0, NULL),
(3, 'PAD', '2024-12-27 11:37:35', '2024-12-27 11:37:35', 1, NULL, NULL, 0, 0, 'asset', 0, NULL),
(4, 'USB-KEYBOARD', '2024-12-27 11:40:35', '2024-12-27 11:40:35', 1, NULL, NULL, 0, 0, 'accessory', 0, NULL),
(5, 'printer ink', '2024-12-27 13:33:20', '2024-12-27 13:33:20', 1, NULL, NULL, 0, 0, 'consumable', 0, NULL),
(6, 'HDMI Cables', '2024-12-27 13:35:47', '2024-12-27 13:35:47', 1, NULL, NULL, 0, 0, 'component', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_acceptances`
--

CREATE TABLE `checkout_acceptances` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkoutable_type` varchar(191) NOT NULL,
  `checkoutable_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `signature_filename` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stored_eula` text DEFAULT NULL,
  `stored_eula_file` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_requests`
--

CREATE TABLE `checkout_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `requestable_id` int(11) NOT NULL,
  `requestable_type` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `fulfilled_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `fax`, `email`, `phone`, `created_at`, `updated_at`, `image`, `created_by`) VALUES
(1, 'Haag, Schmidt and Farrell', NULL, NULL, NULL, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `order_number` varchar(191) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `serial` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `name`, `category_id`, `location_id`, `company_id`, `created_by`, `supplier_id`, `qty`, `order_number`, `purchase_date`, `purchase_cost`, `model_number`, `manufacturer_id`, `created_at`, `updated_at`, `deleted_at`, `min_amt`, `serial`, `image`, `notes`) VALUES
(1, 'HDMI Display cable', 6, NULL, NULL, 1, NULL, 15, NULL, NULL, NULL, 'DRESSSS123', 3, '2024-12-27 14:54:53', '2024-12-27 14:54:53', NULL, NULL, '33FT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_assets`
--

CREATE TABLE `components_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `assigned_qty` int(11) DEFAULT 1,
  `component_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumables`
--

CREATE TABLE `consumables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `item_no` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consumables`
--

INSERT INTO `consumables` (`id`, `name`, `category_id`, `location_id`, `created_by`, `supplier_id`, `qty`, `requestable`, `created_at`, `updated_at`, `deleted_at`, `purchase_date`, `purchase_cost`, `order_number`, `company_id`, `min_amt`, `model_number`, `manufacturer_id`, `item_no`, `image`, `notes`) VALUES
(1, 'EPSON INK', 5, 1, 1, NULL, 10, 0, '2024-12-27 14:48:01', '2024-12-27 14:48:01', NULL, NULL, NULL, '24242', NULL, NULL, 'C11CE58501', 2, '1231', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consumables_users`
--

CREATE TABLE `consumables_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `format` varchar(191) NOT NULL,
  `element` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `field_values` text DEFAULT NULL,
  `field_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `db_column` varchar(191) DEFAULT NULL,
  `help_text` text DEFAULT NULL,
  `show_in_email` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_requestable_list` tinyint(1) DEFAULT 0,
  `is_unique` tinyint(1) DEFAULT 0,
  `display_in_user_view` tinyint(1) DEFAULT 0,
  `auto_add_to_fieldsets` tinyint(1) DEFAULT 0,
  `show_in_listview` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `format`, `element`, `created_at`, `updated_at`, `created_by`, `field_values`, `field_encrypted`, `db_column`, `help_text`, `show_in_email`, `show_in_requestable_list`, `is_unique`, `display_in_user_view`, `auto_add_to_fieldsets`, `show_in_listview`) VALUES
(1, 'RAM', 'numeric', 'text', NULL, '2024-12-27 10:48:42', 1, NULL, 0, '_snipeit_ram_1', NULL, 0, 0, 0, 0, 0, 0),
(2, 'CPU', '', 'text', '2024-12-27 10:49:21', '2024-12-27 10:50:15', 1, NULL, 0, '_snipeit_cpu_2', NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fieldsets`
--

CREATE TABLE `custom_fieldsets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fieldsets`
--

INSERT INTO `custom_fieldsets` (`id`, `name`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'Computers', '2024-12-27 10:49:34', '2024-12-27 10:49:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_custom_fieldset`
--

CREATE TABLE `custom_field_custom_fieldset` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_fieldset_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_custom_fieldset`
--

INSERT INTO `custom_field_custom_fieldset` (`id`, `custom_field_id`, `custom_fieldset_id`, `order`, `required`) VALUES
(2, 1, 2, 0, 0),
(3, 2, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `fax`, `phone`, `created_by`, `company_id`, `location_id`, `manager_id`, `notes`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(1, 'IT', NULL, '0202547854', 1, NULL, NULL, 1, NULL, '2024-12-27 11:19:18', '2024-12-27 11:19:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `depreciations`
--

CREATE TABLE `depreciations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `months` int(11) NOT NULL,
  `depreciation_min` decimal(8,2) DEFAULT NULL,
  `depreciation_type` varchar(191) NOT NULL DEFAULT 'amount',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depreciations`
--

INSERT INTO `depreciations` (`id`, `name`, `months`, `depreciation_min`, `depreciation_type`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'AFTER 3 Month', 36, 25000.00, 'amount', '2024-12-27 10:58:51', '2024-12-27 10:58:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) NOT NULL,
  `filesize` int(11) NOT NULL,
  `import_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_row` text DEFAULT NULL,
  `first_row` text DEFAULT NULL,
  `field_map` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `name`, `file_path`, `filesize`, `import_type`, `created_at`, `updated_at`, `header_row`, `first_row`, `field_map`, `created_by`) VALUES
(1, NULL, '2024-12-27-083256-sample-licensescsv', 732, 'license', '2024-12-27 15:02:56', '2024-12-27 15:03:12', '[\"Name\",\"Email\",\"Username\",\"Item name\",\"Category\",\"serial number\",\"manufacturer\",\"purchase date\",\"purchase cost\",\"purchase_order\",\"order number\",\"Licensed To Name\",\"Licensed to Email\",\"expiration date\",\"maintained\",\"reassignable\",\"seats\",\"company\",\"supplier\",\"notes\"]', '[\"Helen Anderson\",\"cspencer0@privacy.gov.au\",\"cspencer0\",\"Argentum Malachite Athletes Foot Relief\",\"Misc Software\",\"1aa5b0eb-79c5-40b2-8943-5472a6893c3c\",\"Beer, Leannon and Lubowitz\",\"7\\/13\\/12\",\"$79.66 \",\"53008\",\"386436062-5\",\"Cynthia Spencer\",\"cspencer0@gov.uk\",\"1\\/27\\/16\",\"FALSE\",\"no\",\"80\",\"Haag, Schmidt and Farrell\",\"Hegmann, Mohr and Cremin\",\"Sed ante. Vivamus tortor. Duis mattis egestas metus.\\n\\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\"]', '{\"Name\":\"item_name\",\"Email\":\"email\",\"Username\":\"username\",\"Item name\":\"item_name\",\"Category\":\"category\",\"serial number\":\"serial\",\"manufacturer\":\"manufacturer\",\"purchase date\":\"purchase_date\",\"purchase cost\":\"purchase_cost\",\"order number\":\"order_number\",\"Licensed To Name\":\"license_name\",\"Licensed to Email\":\"license_email\",\"expiration date\":\"expiration_date\",\"maintained\":\"maintained\",\"reassignable\":\"reassignable\",\"seats\":\"seats\",\"company\":\"company\",\"supplier\":\"supplier\",\"notes\":\"notes\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kits`
--

CREATE TABLE `kits` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kits`
--

INSERT INTO `kits` (`id`, `name`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'SERVER', '2024-12-27 15:04:14', '2024-12-27 15:04:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kits_accessories`
--

CREATE TABLE `kits_accessories` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_consumables`
--

CREATE TABLE `kits_consumables` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_licenses`
--

CREATE TABLE `kits_licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_models`
--

CREATE TABLE `kits_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kits_models`
--

INSERT INTO `kits_models` (`id`, `kit_id`, `model_id`, `quantity`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 1, 2, 1, NULL, NULL, NULL),
(2, 1, 3, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `serial` text DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `license_name` varchar(120) DEFAULT NULL,
  `license_email` varchar(191) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `purchase_order` varchar(191) DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `maintained` tinyint(1) DEFAULT NULL,
  `reassignable` tinyint(1) NOT NULL DEFAULT 1,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`id`, `name`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `seats`, `notes`, `created_by`, `depreciation_id`, `created_at`, `updated_at`, `deleted_at`, `license_name`, `license_email`, `depreciate`, `supplier_id`, `expiration_date`, `purchase_order`, `termination_date`, `maintained`, `reassignable`, `company_id`, `manufacturer_id`, `category_id`, `min_amt`) VALUES
(1, 'Argentum Malachite Athletes Foot Relief', '1aa5b0eb-79c5-40b2-8943-5472a6893c3c', '2012-07-13', NULL, '386436062-5', 80, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\n\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 1, NULL, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, 'Cynthia Spencer', 'cspencer0@gov.uk', NULL, 2, '2016-01-27', '', NULL, 0, 0, 1, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `license_seats`
--

CREATE TABLE `license_seats` (
  `id` int(10) UNSIGNED NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_seats`
--

INSERT INTO `license_seats` (`id`, `license_id`, `assigned_to`, `notes`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `asset_id`) VALUES
(1, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(2, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(3, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(4, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(5, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(6, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(7, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(8, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(9, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(10, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(11, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(12, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(13, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(14, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(15, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(16, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(17, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(18, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(19, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(20, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(21, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(22, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(23, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(24, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(25, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(26, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(27, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(28, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(29, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(30, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(31, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(32, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(33, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(34, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(35, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(36, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(37, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(38, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(39, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(40, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(41, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(42, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(43, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(44, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(45, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(46, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(47, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(48, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(49, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(50, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(51, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(52, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(53, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(54, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(55, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(56, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(57, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(58, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(59, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(60, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(61, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(62, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(63, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(64, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(65, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(66, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(67, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(68, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(69, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(70, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(71, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(72, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(73, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(74, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(75, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(76, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(77, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(78, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(79, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL),
(80, 1, NULL, NULL, 1, '2024-12-27 15:03:12', '2024-12-27 15:03:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `ldap_ou` varchar(191) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `city`, `state`, `country`, `created_at`, `updated_at`, `created_by`, `address`, `address2`, `zip`, `fax`, `phone`, `deleted_at`, `parent_id`, `currency`, `ldap_ou`, `manager_id`, `image`) VALUES
(1, 'Pune', 'Pune', NULL, 'IN', '2024-12-27 11:20:16', '2024-12-27 11:20:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Shivaji nagar', NULL, NULL, 'IN', '2024-12-27 11:21:09', '2024-12-27 11:21:09', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `remote_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(191) DEFAULT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `username`, `remote_ip`, `user_agent`, `successful`, `created_at`, `updated_at`) VALUES
(1, 'dipakpere', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 1, '2024-12-24 02:49:58', NULL),
(2, 'vinayak.songirikar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 1, '2024-12-27 15:24:00', NULL),
(3, 'vinayak.songirikar', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 1, '2024-12-27 15:27:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `support_url` varchar(191) DEFAULT NULL,
  `warranty_lookup_url` varchar(191) DEFAULT NULL,
  `support_phone` varchar(191) DEFAULT NULL,
  `support_email` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `created_at`, `updated_at`, `created_by`, `deleted_at`, `url`, `support_url`, `warranty_lookup_url`, `support_phone`, `support_email`, `image`) VALUES
(1, 'Apple', '2024-12-27 10:54:43', '2024-12-27 11:06:39', NULL, NULL, 'https://www.apple.com/', 'https://www.apple.com/support', 'https://checkcoverage.apple.com/LOCALE/SERIAL', '918412018144', 'support@apple.com', 'manufacturer-image-1-M06PlqIhQa.jpg'),
(2, 'EPSON Pvt LTD', '2024-12-27 14:46:33', '2024-12-27 15:07:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'manufacturer-image-2-fXY9X9sUrC.png'),
(3, 'Hitachi', '2024-12-27 14:53:41', '2024-12-27 15:08:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'manufacturer-image-3-8CHZApfiaL.png'),
(4, 'QUICK HEAL', '2024-12-27 15:03:12', '2024-12-27 15:07:24', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'manufacturer-image-4-jVaz9p2yHT.png');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
(2, '2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
(3, '2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
(4, '2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
(5, '2013_03_23_193214_update_users_table', 1),
(6, '2013_11_13_075318_create_models_table', 1),
(7, '2013_11_13_075335_create_categories_table', 1),
(8, '2013_11_13_075347_create_manufacturers_table', 1),
(9, '2013_11_15_015858_add_user_id_to_categories', 1),
(10, '2013_11_15_112701_add_user_id_to_manufacturers', 1),
(11, '2013_11_15_190327_create_assets_table', 1),
(12, '2013_11_15_190357_create_temp_licenses_table', 1),
(13, '2013_11_15_201848_add_license_name_to_licenses', 1),
(14, '2013_11_16_040323_create_depreciations_table', 1),
(15, '2013_11_16_042851_add_depreciation_id_to_models', 1),
(16, '2013_11_16_084923_add_user_id_to_models', 1),
(17, '2013_11_16_103258_create_locations_table', 1),
(18, '2013_11_16_103336_add_location_id_to_assets', 1),
(19, '2013_11_16_103407_add_checkedout_to_to_assets', 1),
(20, '2013_11_16_103425_create_history_table', 1),
(21, '2013_11_17_054359_drop_licenses_table', 1),
(22, '2013_11_17_054526_add_physical_to_assets', 1),
(23, '2013_11_17_055126_create_settings_table', 1),
(24, '2013_11_17_062634_add_license_to_assets', 1),
(25, '2013_11_18_134332_add_contacts_to_users', 1),
(26, '2013_11_18_142847_add_info_to_locations', 1),
(27, '2013_11_18_152942_remove_location_id_from_asset', 1),
(28, '2013_11_18_164423_set_nullvalues_for_user', 1),
(29, '2013_11_19_013337_create_asset_logs_table', 1),
(30, '2013_11_19_061409_edit_added_on_asset_logs_table', 1),
(31, '2013_11_19_062250_edit_location_id_asset_logs_table', 1),
(32, '2013_11_20_055822_add_soft_delete_on_assets', 1),
(33, '2013_11_20_121404_add_soft_delete_on_locations', 1),
(34, '2013_11_20_123137_add_soft_delete_on_manufacturers', 1),
(35, '2013_11_20_123725_add_soft_delete_on_categories', 1),
(36, '2013_11_20_130248_create_status_labels', 1),
(37, '2013_11_20_130830_add_status_id_on_assets_table', 1),
(38, '2013_11_20_131544_add_status_type_on_status_labels', 1),
(39, '2013_11_20_134103_add_archived_to_assets', 1),
(40, '2013_11_21_002321_add_uploads_table', 1),
(41, '2013_11_21_024531_remove_deployable_boolean_from_status_labels', 1),
(42, '2013_11_22_075308_add_option_label_to_settings_table', 1),
(43, '2013_11_22_213400_edits_to_settings_table', 1),
(44, '2013_11_25_013244_recreate_licenses_table', 1),
(45, '2013_11_25_031458_create_license_seats_table', 1),
(46, '2013_11_25_032022_add_type_to_actionlog_table', 1),
(47, '2013_11_25_033008_delete_bad_licenses_table', 1),
(48, '2013_11_25_033131_create_new_licenses_table', 1),
(49, '2013_11_25_033534_add_licensed_to_licenses_table', 1),
(50, '2013_11_25_101308_add_warrantee_to_assets_table', 1),
(51, '2013_11_25_104343_alter_warranty_column_on_assets', 1),
(52, '2013_11_25_150450_drop_parent_from_categories', 1),
(53, '2013_11_25_151920_add_depreciate_to_assets', 1),
(54, '2013_11_25_152903_add_depreciate_to_licenses_table', 1),
(55, '2013_11_26_211820_drop_license_from_assets_table', 1),
(56, '2013_11_27_062510_add_note_to_asset_logs_table', 1),
(57, '2013_12_01_113426_add_filename_to_asset_log', 1),
(58, '2013_12_06_094618_add_nullable_to_licenses_table', 1),
(59, '2013_12_10_084038_add_eol_on_models_table', 1),
(60, '2013_12_12_055218_add_manager_to_users_table', 1),
(61, '2014_01_28_031200_add_qr_code_to_settings_table', 1),
(62, '2014_02_13_183016_add_qr_text_to_settings_table', 1),
(63, '2014_05_24_093839_alter_default_license_depreciation_id', 1),
(64, '2014_05_27_231658_alter_default_values_licenses', 1),
(65, '2014_06_19_191508_add_asset_name_to_settings', 1),
(66, '2014_06_20_004847_make_asset_log_checkedout_to_nullable', 1),
(67, '2014_06_20_005050_make_asset_log_purchasedate_to_nullable', 1),
(68, '2014_06_24_003011_add_suppliers', 1),
(69, '2014_06_24_010742_add_supplier_id_to_asset', 1),
(70, '2014_06_24_012839_add_zip_to_supplier', 1),
(71, '2014_06_24_033908_add_url_to_supplier', 1),
(72, '2014_07_08_054116_add_employee_id_to_users', 1),
(73, '2014_07_09_134316_add_requestable_to_assets', 1),
(74, '2014_07_17_085822_add_asset_to_software', 1),
(75, '2014_07_17_161625_make_asset_id_in_logs_nullable', 1),
(76, '2014_08_12_053504_alpha_0_4_2_release', 1),
(77, '2014_08_17_083523_make_location_id_nullable', 1),
(78, '2014_10_16_200626_add_rtd_location_to_assets', 1),
(79, '2014_10_24_000417_alter_supplier_state_to_32', 1),
(80, '2014_10_24_015641_add_display_checkout_date', 1),
(81, '2014_10_28_222654_add_avatar_field_to_users_table', 1),
(82, '2014_10_29_045924_add_image_field_to_models_table', 1),
(83, '2014_11_01_214955_add_eol_display_to_settings', 1),
(84, '2014_11_04_231416_update_group_field_for_reporting', 1),
(85, '2014_11_05_212408_add_fields_to_licenses', 1),
(86, '2014_11_07_021042_add_image_to_supplier', 1),
(87, '2014_11_20_203007_add_username_to_user', 1),
(88, '2014_11_20_223947_add_auto_to_settings', 1),
(89, '2014_11_20_224421_add_prefix_to_settings', 1),
(90, '2014_11_21_104401_change_licence_type', 1),
(91, '2014_12_09_082500_add_fields_maintained_term_to_licenses', 1),
(92, '2015_02_04_155757_increase_user_field_lengths', 1),
(93, '2015_02_07_013537_add_soft_deleted_to_log', 1),
(94, '2015_02_10_040958_fix_bad_assigned_to_ids', 1),
(95, '2015_02_10_053310_migrate_data_to_new_statuses', 1),
(96, '2015_02_11_044104_migrate_make_license_assigned_null', 1),
(97, '2015_02_11_104406_migrate_create_requests_table', 1),
(98, '2015_02_12_001312_add_mac_address_to_asset', 1),
(99, '2015_02_12_024100_change_license_notes_type', 1),
(100, '2015_02_17_231020_add_localonly_to_settings', 1),
(101, '2015_02_19_222322_add_logo_and_colors_to_settings', 1),
(102, '2015_02_24_072043_add_alerts_to_settings', 1),
(103, '2015_02_25_022931_add_eula_fields', 1),
(104, '2015_02_25_204513_add_accessories_table', 1),
(105, '2015_02_26_091228_add_accessories_user_table', 1),
(106, '2015_02_26_115128_add_deleted_at_models', 1),
(107, '2015_02_26_233005_add_category_type', 1),
(108, '2015_03_01_231912_update_accepted_at_to_acceptance_id', 1),
(109, '2015_03_05_011929_add_qr_type_to_settings', 1),
(110, '2015_03_18_055327_add_note_to_user', 1),
(111, '2015_04_29_234704_add_slack_to_settings', 1),
(112, '2015_05_04_085151_add_parent_id_to_locations_table', 1),
(113, '2015_05_22_124421_add_reassignable_to_licenses', 1),
(114, '2015_06_10_003314_fix_default_for_user_notes', 1),
(115, '2015_06_10_003554_create_consumables', 1),
(116, '2015_06_15_183253_move_email_to_username', 1),
(117, '2015_06_23_070346_make_email_nullable', 1),
(118, '2015_06_26_213716_create_asset_maintenances_table', 1),
(119, '2015_07_04_212443_create_custom_fields_table', 1),
(120, '2015_07_09_014359_add_currency_to_settings_and_locations', 1),
(121, '2015_07_21_122022_add_expected_checkin_date_to_asset_logs', 1),
(122, '2015_07_24_093845_add_checkin_email_to_category_table', 1),
(123, '2015_07_25_055415_remove_email_unique_constraint', 1),
(124, '2015_07_29_230054_add_thread_id_to_asset_logs_table', 1),
(125, '2015_07_31_015430_add_accepted_to_assets', 1),
(126, '2015_09_09_195301_add_custom_css_to_settings', 1),
(127, '2015_09_21_235926_create_custom_field_custom_fieldset', 1),
(128, '2015_09_22_000104_create_custom_fieldsets', 1),
(129, '2015_09_22_003321_add_fieldset_id_to_assets', 1),
(130, '2015_09_22_003413_migrate_mac_address', 1),
(131, '2015_09_28_003314_fix_default_purchase_order', 1),
(132, '2015_10_01_024551_add_accessory_consumable_price_info', 1),
(133, '2015_10_12_192706_add_brand_to_settings', 1),
(134, '2015_10_22_003314_fix_defaults_accessories', 1),
(135, '2015_10_23_182625_add_checkout_time_and_expected_checkout_date_to_assets', 1),
(136, '2015_11_05_061015_create_companies_table', 1),
(137, '2015_11_05_061115_add_company_id_to_consumables_table', 1),
(138, '2015_11_05_183749_add_image_to_assets', 1),
(139, '2015_11_06_092038_add_company_id_to_accessories_table', 1),
(140, '2015_11_06_100045_add_company_id_to_users_table', 1),
(141, '2015_11_06_134742_add_company_id_to_licenses_table', 1),
(142, '2015_11_08_035832_add_company_id_to_assets_table', 1),
(143, '2015_11_08_222305_add_ldap_fields_to_settings', 1),
(144, '2015_11_15_151803_add_full_multiple_companies_support_to_settings_table', 1),
(145, '2015_11_26_195528_import_ldap_settings', 1),
(146, '2015_11_30_191504_remove_fk_company_id', 1),
(147, '2015_12_21_193006_add_ldap_server_cert_ignore_to_settings_table', 1),
(148, '2015_12_30_233509_add_timestamp_and_userId_to_custom_fields', 1),
(149, '2015_12_30_233658_add_timestamp_and_userId_to_custom_fieldsets', 1),
(150, '2016_01_28_041048_add_notes_to_models', 1),
(151, '2016_02_19_070119_add_remember_token_to_users_table', 1),
(152, '2016_02_19_073625_create_password_resets_table', 1),
(153, '2016_03_02_193043_add_ldap_flag_to_users', 1),
(154, '2016_03_02_220517_update_ldap_filter_to_longer_field', 1),
(155, '2016_03_08_225351_create_components_table', 1),
(156, '2016_03_09_024038_add_min_stock_to_tables', 1),
(157, '2016_03_10_133849_add_locale_to_users', 1),
(158, '2016_03_10_135519_add_locale_to_settings', 1),
(159, '2016_03_11_185621_add_label_settings_to_settings', 1),
(160, '2016_03_22_125911_fix_custom_fields_regexes', 1),
(161, '2016_04_28_141554_add_show_to_users', 1),
(162, '2016_05_16_164733_add_model_mfg_to_consumable', 1),
(163, '2016_05_19_180351_add_alt_barcode_settings', 1),
(164, '2016_05_19_191146_add_alter_interval', 1),
(165, '2016_05_19_192226_add_inventory_threshold', 1),
(166, '2016_05_20_024859_remove_option_keys_from_settings_table', 1),
(167, '2016_05_20_143758_remove_option_value_from_settings_table', 1),
(168, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(169, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(170, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(171, '2016_06_01_000004_create_oauth_clients_table', 1),
(172, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(173, '2016_06_01_140218_add_email_domain_and_format_to_settings', 1),
(174, '2016_06_22_160725_add_user_id_to_maintenances', 1),
(175, '2016_07_13_150015_add_is_ad_to_settings', 1),
(176, '2016_07_14_153609_add_ad_domain_to_settings', 1),
(177, '2016_07_22_003348_fix_custom_fields_regex_stuff', 1),
(178, '2016_07_22_054850_one_more_mac_addr_fix', 1),
(179, '2016_07_22_143045_add_port_to_ldap_settings', 1),
(180, '2016_07_22_153432_add_tls_to_ldap_settings', 1),
(181, '2016_07_27_211034_add_zerofill_to_settings', 1),
(182, '2016_08_02_124944_add_color_to_statuslabel', 1),
(183, '2016_08_04_134500_add_disallow_ldap_pw_sync_to_settings', 1),
(184, '2016_08_09_002225_add_manufacturer_to_licenses', 1),
(185, '2016_08_12_121613_add_manufacturer_to_accessories_table', 1),
(186, '2016_08_23_143353_add_new_fields_to_custom_fields', 1),
(187, '2016_08_23_145619_add_show_in_nav_to_status_labels', 1),
(188, '2016_08_30_084634_make_purchase_cost_nullable', 1),
(189, '2016_09_01_141051_add_requestable_to_asset_model', 1),
(190, '2016_09_02_001448_create_checkout_requests_table', 1),
(191, '2016_09_04_180400_create_actionlog_table', 1),
(192, '2016_09_04_182149_migrate_asset_log_to_action_log', 1),
(193, '2016_09_19_235935_fix_fieldtype_for_target_type', 1),
(194, '2016_09_23_140722_fix_modelno_in_consumables_to_string', 1),
(195, '2016_09_28_231359_add_company_to_logs', 1),
(196, '2016_10_14_130709_fix_order_number_to_varchar', 1),
(197, '2016_10_16_015024_rename_modelno_to_model_number', 1),
(198, '2016_10_16_015211_rename_consumable_modelno_to_model_number', 1),
(199, '2016_10_16_143235_rename_model_note_to_notes', 1),
(200, '2016_10_16_165052_rename_component_total_qty_to_qty', 1),
(201, '2016_10_19_145520_fix_order_number_in_components_to_string', 1),
(202, '2016_10_27_151715_add_serial_to_components', 1),
(203, '2016_10_27_213251_increase_serial_field_capacity', 1),
(204, '2016_10_29_002724_enable_2fa_fields', 1),
(205, '2016_10_29_082408_add_signature_to_acceptance', 1),
(206, '2016_11_01_030818_fix_forgotten_filename_in_action_logs', 1),
(207, '2016_11_13_020954_rename_component_serial_number_to_serial', 1),
(208, '2016_11_16_172119_increase_purchase_cost_size', 1),
(209, '2016_11_17_161317_longer_state_field_in_location', 1),
(210, '2016_11_17_193706_add_model_number_to_accessories', 1),
(211, '2016_11_24_160405_add_missing_target_type_to_logs_table', 1),
(212, '2016_12_07_173720_increase_size_of_state_in_suppliers', 1),
(213, '2016_12_19_004212_adjust_locale_length_to_10', 1),
(214, '2016_12_19_133936_extend_phone_lengths_in_supplier_and_elsewhere', 1),
(215, '2016_12_27_212631_make_asset_assigned_to_polymorphic', 1),
(216, '2017_01_09_040429_create_locations_ldap_query_field', 1),
(217, '2017_01_14_002418_create_imports_table', 1),
(218, '2017_01_25_063357_fix_utf8_custom_field_column_names', 1),
(219, '2017_03_03_154632_add_time_date_display_to_settings', 1),
(220, '2017_03_10_210807_add_fields_to_manufacturer', 1),
(221, '2017_05_08_195520_increase_size_of_field_values_in_custom_fields', 1),
(222, '2017_05_22_204422_create_departments', 1),
(223, '2017_05_22_233509_add_manager_to_locations_table', 1),
(224, '2017_06_14_122059_add_next_autoincrement_to_settings', 1),
(225, '2017_06_18_151753_add_header_and_first_row_to_importer_table', 1),
(226, '2017_07_07_191533_add_login_text', 1),
(227, '2017_07_25_130710_add_thumbsize_to_settings', 1),
(228, '2017_08_03_160105_set_asset_archived_to_zero_default', 1),
(229, '2017_08_22_180636_add_secure_password_options', 1),
(230, '2017_08_25_074822_add_auditing_tables', 1),
(231, '2017_08_25_101435_add_auditing_to_settings', 1),
(232, '2017_09_18_225619_fix_assigned_type_not_being_nulled', 1),
(233, '2017_10_03_015503_drop_foreign_keys', 1),
(234, '2017_10_10_123504_allow_nullable_depreciation_id_in_models', 1),
(235, '2017_10_17_133709_add_display_url_to_settings', 1),
(236, '2017_10_19_120002_add_custom_forgot_password_url', 1),
(237, '2017_10_19_130406_add_image_and_supplier_to_accessories', 1),
(238, '2017_10_20_234129_add_location_indices_to_assets', 1),
(239, '2017_10_25_202930_add_images_uploads_to_locations_manufacturers_etc', 1),
(240, '2017_10_27_180947_denorm_asset_locations', 1),
(241, '2017_10_27_192423_migrate_denormed_asset_locations', 1),
(242, '2017_10_30_182938_add_address_to_user', 1),
(243, '2017_11_08_025918_add_alert_menu_setting', 1),
(244, '2017_11_08_123942_labels_display_company_name', 1),
(245, '2017_12_12_010457_normalize_asset_last_audit_date', 1),
(246, '2017_12_12_033618_add_actionlog_meta', 1),
(247, '2017_12_26_170856_re_normalize_last_audit', 1),
(248, '2018_01_17_184354_add_archived_in_list_setting', 1),
(249, '2018_01_19_203121_add_dashboard_message_to_settings', 1),
(250, '2018_01_24_062633_add_footer_settings_to_settings', 1),
(251, '2018_01_24_093426_add_modellist_preferenc', 1),
(252, '2018_02_22_160436_add_remote_user_settings', 1),
(253, '2018_03_03_011032_add_theme_to_settings', 1),
(254, '2018_03_06_054937_add_default_flag_on_statuslabels', 1),
(255, '2018_03_23_212048_add_display_in_email_to_custom_fields', 1),
(256, '2018_03_24_030738_add_show_images_in_email_setting', 1),
(257, '2018_03_24_050108_add_cc_alerts', 1),
(258, '2018_03_29_053618_add_canceled_at_and_fulfilled_at_in_requests', 1),
(259, '2018_03_29_070121_add_drop_unique_requests', 1),
(260, '2018_03_29_070511_add_new_index_requestable', 1),
(261, '2018_04_02_150700_labels_display_model_name', 1),
(262, '2018_04_16_133902_create_custom_field_default_values_table', 1),
(263, '2018_05_04_073223_add_category_to_licenses', 1),
(264, '2018_05_04_075235_add_update_license_category', 1),
(265, '2018_05_08_031515_add_gdpr_privacy_footer', 1),
(266, '2018_05_14_215229_add_indexes', 1),
(267, '2018_05_14_223646_add_indexes_to_assets', 1),
(268, '2018_05_14_233638_denorm_counters_on_assets', 1),
(269, '2018_05_16_153409_add_first_counter_totals_to_assets', 1),
(270, '2018_06_21_134622_add_version_footer', 1),
(271, '2018_07_05_215440_add_unique_serial_option_to_settings', 1),
(272, '2018_07_17_005911_create_login_attempts_table', 1),
(273, '2018_07_24_154348_add_logo_to_print_assets', 1),
(274, '2018_07_28_023826_create_checkout_acceptances_table', 1),
(275, '2018_08_20_204842_add_depreciation_option_to_settings', 1),
(276, '2018_09_10_082212_create_checkout_acceptances_for_unaccepted_assets', 1),
(277, '2018_10_18_191228_add_kits_licenses_table', 1),
(278, '2018_10_19_153910_add_kits_table', 1),
(279, '2018_10_19_154013_add_kits_models_table', 1),
(280, '2018_12_05_211936_add_favicon_to_settings', 1),
(281, '2018_12_05_212119_add_email_logo_to_settings', 1),
(282, '2019_02_07_185953_add_kits_consumables_table', 1),
(283, '2019_02_07_190030_add_kits_accessories_table', 1),
(284, '2019_02_12_182750_add_actiondate_to_actionlog', 1),
(285, '2019_02_14_154310_change_auto_increment_prefix_to_nullable', 1),
(286, '2019_02_16_143518_auto_increment_back_to_string', 1),
(287, '2019_02_17_205048_add_label_logo_to_settings', 1),
(288, '2019_02_20_234421_make_serial_nullable', 1),
(289, '2019_02_21_224703_make_fields_nullable_for_integrity', 1),
(290, '2019_04_06_060145_add_user_skin_setting', 1),
(291, '2019_04_06_205355_add_setting_allow_user_skin', 1),
(292, '2019_06_12_184327_rename_groups_table', 1),
(293, '2019_07_23_140906_add_show_assigned_assets_to_settings', 1),
(294, '2019_08_20_084049_add_custom_remote_user_header', 1),
(295, '2019_12_04_223111_passport_upgrade', 1),
(296, '2020_02_04_172100_add_ad_append_domain_settings', 1),
(297, '2020_04_29_222305_add_saml_fields_to_settings', 1),
(298, '2020_08_11_200712_add_saml_key_rollover', 1),
(299, '2020_10_22_233743_move_accessory_checkout_note_to_join_table', 1),
(300, '2020_10_23_161736_fix_zero_values_for_locations', 1),
(301, '2020_11_18_214827_widen_license_serial_field', 1),
(302, '2020_12_14_233815_add_digit_separator_to_settings', 1),
(303, '2020_12_18_090026_swap_target_type_index_order', 1),
(304, '2020_12_21_153235_update_min_password', 1),
(305, '2020_12_21_210105_fix_bad_ldap_server_url_for_v5', 1),
(306, '2021_02_05_172502_add_provider_to_oauth_table', 1),
(307, '2021_03_18_184102_adds_several_ldap_fields', 1),
(308, '2021_04_07_001811_add_ldap_dept', 1),
(309, '2021_04_14_180125_add_ids_to_tables', 1),
(310, '2021_06_07_155421_add_serial_number_indexes', 1),
(311, '2021_06_07_155436_add_company_id_indexes', 1),
(312, '2021_07_28_031345_add_client_side_l_d_a_p_cert_to_settings', 1),
(313, '2021_07_28_040554_add_client_side_l_d_a_p_key_to_settings', 1),
(314, '2021_08_11_005206_add_depreciation_minimum_value', 1),
(315, '2021_08_24_124354_make_ldap_client_certs_nullable', 1),
(316, '2021_09_20_183216_change_default_label_to_nullable', 1),
(317, '2021_12_27_151849_change_supplier_address_length', 1),
(318, '2022_01_10_182548_add_license_id_index_to_license_seats', 1),
(319, '2022_02_03_214958_blank_out_ldap_active_flag', 1),
(320, '2022_02_16_152431_add_unique_constraint_to_custom_field', 1),
(321, '2022_03_03_225655_add_notes_to_accessories', 1),
(322, '2022_03_03_225754_add_notes_to_components', 1),
(323, '2022_03_03_225824_add_notes_to_consumables', 1),
(324, '2022_03_04_080836_add_remote_to_user', 1),
(325, '2022_03_09_001334_add_eula_to_checkout_acceptance', 1),
(326, '2022_03_10_175740_add_eula_to_action_logs', 1),
(327, '2022_03_21_162724_adds_ldap_manager', 1),
(328, '2022_04_05_135340_add_primary_key_to_custom_fields_pivot', 1),
(329, '2022_05_16_235350_remove_stored_eula_field', 1),
(330, '2022_06_23_164407_add_user_id_to_users', 1),
(331, '2022_06_28_234539_add_username_index_to_users', 1),
(332, '2022_07_07_010406_add_indexes_to_license_seats', 1),
(333, '2022_08_10_141328_add_notes_denorm_to_consumables_users', 1),
(334, '2022_08_25_213308_adds_ldap_default_group_to_settings_table', 1),
(335, '2022_09_29_040231_add_chart_type_to_settings', 1),
(336, '2022_10_05_163044_add_start_termination_date_to_users', 1),
(337, '2022_10_25_193823_add_externalid_to_users', 1),
(338, '2022_10_25_215520_add_label2_settings', 1),
(339, '2022_11_07_134348_add_display_to_user_in_custom_fields', 1),
(340, '2022_11_15_232525_adds_should_autoassign_bool_to_users_table', 1),
(341, '2022_12_20_171851_fix_nullable_migration_for_settings', 1),
(342, '2023_01_18_122534_add_byod_to_assets', 1),
(343, '2023_01_21_225350_add_eol_date_on_assets_table', 1),
(344, '2023_01_23_232933_add_vip_to_users', 1),
(345, '2023_02_12_224353_fix_unescaped_customfields_format', 1),
(346, '2023_02_28_173527_adds_webhook_option_to_settings_table', 1),
(347, '2023_03_21_215218_update_slack_setting', 1),
(348, '2023_04_12_135822_add_supplier_to_components', 1),
(349, '2023_04_25_085912_add_autoadd_to_customfields', 1),
(350, '2023_04_25_181817_adds_ldap_location_to_settings_table', 1),
(351, '2023_04_26_160235_add_warranty_url_to_manufacturers', 1),
(352, '2023_05_08_132921_increase_state_to_more_than_3', 1),
(353, '2023_05_10_001836_add_google_auth_to_settings', 1),
(354, '2023_07_05_092237_change_settings_table_increase_saml_idp_metadata_size', 1),
(355, '2023_07_06_092507_add_phone_fax_to_locations', 1),
(356, '2023_07_13_052204_denormalized_eol_and_add_column_for_explicit_date_to_assets', 1),
(357, '2023_07_14_004221_add_show_in_list_view_to_custom_fields', 1),
(358, '2023_08_01_174150_change_webhook_settings_variable_type', 1),
(359, '2023_08_13_172600_add_email_to_companies', 1),
(360, '2023_08_17_202638_add_last_checkin_to_assets', 1),
(361, '2023_08_21_064609_add_name_ordering_to_settings', 1),
(362, '2023_08_21_181742_add_min_amt_to_models_table', 1),
(363, '2023_09_13_200913_fix_asset_model_min_qty_nullability', 1),
(364, '2023_10_25_064324_add_show_in_requestable_to_custom_fields', 1),
(365, '2023_12_14_032522_add_remote_ip_and_action_source_to_action_logs', 1),
(366, '2023_12_15_024643_add_indexes_to_new_activity_report_fields', 1),
(367, '2023_12_19_081112_fix_language_dirs', 1),
(368, '2024_01_24_145544_create_saml_nonce_table', 1),
(369, '2024_02_28_080016_add_created_by_to_permission_groups', 1),
(370, '2024_02_28_093807_add_min_qty_to_licenses', 1),
(371, '2024_03_18_164714_add_note_to_checkout_acceptance_table', 1),
(372, '2024_03_18_221612_update_legacy_locale', 1),
(373, '2024_05_27_143554_add_parent_id_index_to_locations', 1),
(374, '2024_06_24_130348_add_profile_edit_to_settings', 1),
(375, '2024_07_04_103729_add_default_avatar_to_settings', 1),
(376, '2024_07_16_184145_add_deprecitation_type_to_depreciations_table', 1),
(377, '2024_07_23_172032_change_no__n_o_to_nb__n_o', 1),
(378, '2024_07_26_143301_add_checkout_for_all_types_to_accessories', 1),
(379, '2024_08_06_175114_add_shortcuts_enabled_to_settings_table', 1),
(380, '2024_08_07_204014_add_play_sounds_to_profile', 1),
(381, '2024_08_15_111816_add_confetti_to_users', 1),
(382, '2024_08_16_104137_add_due_checkin_days_to_settings', 1),
(383, '2024_09_17_204302_change_user_id_to_created_by', 1),
(384, '2024_10_23_162301_add_manufacturer_id_model_number_to_consumables', 1),
(385, '2024_11_06_211457_add_manager_indexes_to_location_and_user', 1),
(386, '2024_11_07_113631_improve_manager_indexes_on_users_and_locations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `eol` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `deprecated_mac_address` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fieldset_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `name`, `model_number`, `min_amt`, `manufacturer_id`, `category_id`, `created_at`, `updated_at`, `depreciation_id`, `created_by`, `eol`, `image`, `deprecated_mac_address`, `deleted_at`, `fieldset_id`, `notes`, `requestable`) VALUES
(1, 'Apple MacBook15 Air Laptop', 'Mac15', NULL, 1, 2, '2024-12-27 11:01:56', '2024-12-27 13:41:50', NULL, 1, 60, 'assetmodel-image--PEVYgdDDgI.jpg', 0, NULL, 2, NULL, 0),
(2, 'Ipad', 'A1432', NULL, 1, 3, '2024-12-27 11:38:52', '2024-12-27 11:38:52', NULL, 1, NULL, 'assetmodel-image--PuPgugOpQX.jpg', 0, NULL, NULL, NULL, 0),
(3, 'Apple MacBook Pro 14 Laptop', 'MacBook Pro 14', NULL, 1, 2, '2024-12-27 13:41:35', '2024-12-27 13:41:35', NULL, 1, 60, 'assetmodel-image--4vYklW2XOb.jpg', 0, NULL, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `models_custom_fields`
--

CREATE TABLE `models_custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_model_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `default_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
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
(1, NULL, 'Snipe-IT Personal Access Client', 'WnjyS8FskeAPCuYE7N8vhklY8kqb4pJKLoviGmDZ', NULL, 'http://localhost', 1, 0, 0, '2024-12-24 02:44:01', '2024-12-24 02:44:01'),
(2, NULL, 'Snipe-IT Password Grant Client', 'snqsyoodevAShjiLtiuE7mgAoGIp12fxco9Qqfjw', 'users', 'http://localhost', 0, 1, 0, '2024-12-24 02:44:01', '2024-12-24 02:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-12-24 02:44:01', '2024-12-24 02:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requested_assets`
--

CREATE TABLE `requested_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `denied_at` datetime DEFAULT NULL,
  `notes` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_code` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saml_nonces`
--

CREATE TABLE `saml_nonces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nonce` varchar(191) NOT NULL,
  `not_valid_after` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `per_page` int(11) NOT NULL DEFAULT 20,
  `site_name` varchar(100) NOT NULL DEFAULT 'Snipe IT Asset Management',
  `qr_code` int(11) DEFAULT NULL,
  `qr_text` varchar(32) DEFAULT NULL,
  `display_asset_name` int(11) DEFAULT NULL,
  `display_checkout_date` int(11) DEFAULT NULL,
  `display_eol` int(11) DEFAULT NULL,
  `auto_increment_assets` int(11) NOT NULL DEFAULT 0,
  `auto_increment_prefix` varchar(191) DEFAULT NULL,
  `load_remote` tinyint(1) NOT NULL DEFAULT 1,
  `logo` varchar(191) DEFAULT NULL,
  `header_color` varchar(191) DEFAULT NULL,
  `alert_email` varchar(191) DEFAULT NULL,
  `alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `default_eula_text` longtext DEFAULT NULL,
  `barcode_type` varchar(191) DEFAULT 'QRCODE',
  `webhook_endpoint` text DEFAULT NULL,
  `webhook_channel` varchar(191) DEFAULT NULL,
  `webhook_botname` varchar(191) DEFAULT NULL,
  `webhook_selected` varchar(191) DEFAULT 'slack',
  `default_currency` varchar(10) DEFAULT NULL,
  `custom_css` text DEFAULT NULL,
  `brand` tinyint(4) NOT NULL DEFAULT 1,
  `ldap_enabled` varchar(191) DEFAULT NULL,
  `ldap_server` varchar(191) DEFAULT NULL,
  `ldap_uname` varchar(191) DEFAULT NULL,
  `ldap_pword` longtext DEFAULT NULL,
  `ldap_basedn` varchar(191) DEFAULT NULL,
  `ldap_default_group` varchar(191) DEFAULT NULL,
  `ldap_filter` text DEFAULT NULL,
  `ldap_username_field` varchar(191) DEFAULT 'samaccountname',
  `ldap_lname_field` varchar(191) DEFAULT 'sn',
  `ldap_fname_field` varchar(191) DEFAULT 'givenname',
  `ldap_auth_filter_query` varchar(191) DEFAULT 'uid=',
  `ldap_version` int(11) DEFAULT 3,
  `ldap_active_flag` varchar(191) DEFAULT NULL,
  `ldap_dept` varchar(191) DEFAULT NULL,
  `ldap_emp_num` varchar(191) DEFAULT NULL,
  `ldap_email` varchar(191) DEFAULT NULL,
  `ldap_phone_field` varchar(191) DEFAULT NULL,
  `ldap_jobtitle` varchar(191) DEFAULT NULL,
  `ldap_manager` varchar(191) DEFAULT NULL,
  `ldap_country` varchar(191) DEFAULT NULL,
  `ldap_location` varchar(191) DEFAULT NULL,
  `full_multiple_companies_support` tinyint(1) NOT NULL DEFAULT 0,
  `ldap_server_cert_ignore` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(10) DEFAULT 'en-US',
  `labels_per_page` tinyint(4) NOT NULL DEFAULT 30,
  `labels_width` decimal(6,5) NOT NULL DEFAULT 2.62500,
  `labels_height` decimal(6,5) NOT NULL DEFAULT 1.00000,
  `labels_pmargin_left` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_right` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_top` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_pmargin_bottom` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_display_bgutter` decimal(6,5) NOT NULL DEFAULT 0.07000,
  `labels_display_sgutter` decimal(6,5) NOT NULL DEFAULT 0.05000,
  `labels_fontsize` tinyint(4) NOT NULL DEFAULT 9,
  `labels_pagewidth` decimal(7,5) NOT NULL DEFAULT 8.50000,
  `labels_pageheight` decimal(7,5) NOT NULL DEFAULT 11.00000,
  `labels_display_name` tinyint(4) NOT NULL DEFAULT 0,
  `labels_display_serial` tinyint(4) NOT NULL DEFAULT 1,
  `labels_display_tag` tinyint(4) NOT NULL DEFAULT 1,
  `alt_barcode` varchar(191) DEFAULT 'C128',
  `alt_barcode_enabled` tinyint(1) DEFAULT 1,
  `alert_interval` int(11) DEFAULT 30,
  `alert_threshold` int(11) DEFAULT 5,
  `name_display_format` varchar(10) DEFAULT 'first_last',
  `email_domain` varchar(191) DEFAULT NULL,
  `email_format` varchar(191) DEFAULT 'filastname',
  `username_format` varchar(191) DEFAULT 'filastname',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0,
  `ad_domain` varchar(191) DEFAULT NULL,
  `ldap_port` varchar(5) NOT NULL DEFAULT '389',
  `ldap_tls` tinyint(1) NOT NULL DEFAULT 0,
  `zerofill_count` int(11) NOT NULL DEFAULT 5,
  `ldap_pw_sync` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_enabled` tinyint(4) DEFAULT NULL,
  `require_accept_signature` tinyint(1) NOT NULL DEFAULT 0,
  `date_display_format` varchar(191) NOT NULL DEFAULT 'Y-m-d',
  `time_display_format` varchar(191) NOT NULL DEFAULT 'h:i A',
  `next_auto_tag_base` bigint(20) NOT NULL DEFAULT 1,
  `login_note` text DEFAULT NULL,
  `thumbnail_max_h` int(11) DEFAULT 50,
  `pwd_secure_uncommon` tinyint(1) NOT NULL DEFAULT 0,
  `pwd_secure_complexity` varchar(191) DEFAULT NULL,
  `pwd_secure_min` int(11) NOT NULL DEFAULT 8,
  `audit_interval` int(11) DEFAULT NULL,
  `audit_warning_days` int(11) DEFAULT NULL,
  `show_url_in_emails` tinyint(1) NOT NULL DEFAULT 0,
  `custom_forgot_pass_url` varchar(191) DEFAULT NULL,
  `show_alerts_in_menu` tinyint(1) NOT NULL DEFAULT 1,
  `labels_display_company_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_archived_in_list` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_message` text DEFAULT NULL,
  `support_footer` char(5) DEFAULT 'on',
  `footer_text` text DEFAULT NULL,
  `modellist_displays` char(191) DEFAULT 'image,category,manufacturer,model_number',
  `login_remote_user_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_common_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_custom_logout_url` varchar(191) NOT NULL DEFAULT '',
  `skin` char(191) DEFAULT NULL,
  `show_images_in_email` tinyint(1) NOT NULL DEFAULT 1,
  `admin_cc_email` char(191) DEFAULT NULL,
  `labels_display_model` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_policy_link` char(191) DEFAULT NULL,
  `version_footer` char(5) DEFAULT 'on',
  `unique_serial` tinyint(1) NOT NULL DEFAULT 0,
  `logo_print_assets` tinyint(1) NOT NULL DEFAULT 0,
  `depreciation_method` char(10) DEFAULT 'default',
  `favicon` char(191) DEFAULT NULL,
  `default_avatar` varchar(191) DEFAULT 'default.png',
  `email_logo` char(191) DEFAULT NULL,
  `label_logo` char(191) DEFAULT NULL,
  `allow_user_skin` tinyint(1) NOT NULL DEFAULT 0,
  `show_assigned_assets` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_header_name` varchar(191) NOT NULL DEFAULT '',
  `ad_append_domain` tinyint(1) NOT NULL DEFAULT 0,
  `saml_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `saml_idp_metadata` mediumtext DEFAULT NULL,
  `saml_attr_mapping_username` varchar(191) DEFAULT NULL,
  `saml_forcelogin` tinyint(1) NOT NULL DEFAULT 0,
  `saml_slo` tinyint(1) NOT NULL DEFAULT 0,
  `saml_sp_x509cert` text DEFAULT NULL,
  `saml_sp_privatekey` text DEFAULT NULL,
  `saml_custom_settings` text DEFAULT NULL,
  `saml_sp_x509certNew` text DEFAULT NULL,
  `digit_separator` char(191) DEFAULT '1,234.56',
  `ldap_client_tls_cert` text DEFAULT NULL,
  `ldap_client_tls_key` text DEFAULT NULL,
  `dash_chart_type` varchar(191) DEFAULT 'name',
  `label2_enable` tinyint(1) NOT NULL DEFAULT 0,
  `label2_template` varchar(191) DEFAULT 'DefaultLabel',
  `label2_title` varchar(191) DEFAULT NULL,
  `label2_asset_logo` tinyint(1) NOT NULL DEFAULT 0,
  `label2_1d_type` varchar(191) NOT NULL DEFAULT 'default',
  `label2_2d_type` varchar(191) NOT NULL DEFAULT 'default',
  `label2_2d_target` varchar(191) NOT NULL DEFAULT 'hardware_id',
  `label2_fields` varchar(191) NOT NULL DEFAULT 'name=name;serial=serial;model=model.name;',
  `google_login` tinyint(1) DEFAULT 0,
  `google_client_id` varchar(191) DEFAULT NULL,
  `google_client_secret` varchar(191) DEFAULT NULL,
  `profile_edit` tinyint(1) DEFAULT 1,
  `shortcuts_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `due_checkin_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `created_by`, `per_page`, `site_name`, `qr_code`, `qr_text`, `display_asset_name`, `display_checkout_date`, `display_eol`, `auto_increment_assets`, `auto_increment_prefix`, `load_remote`, `logo`, `header_color`, `alert_email`, `alerts_enabled`, `default_eula_text`, `barcode_type`, `webhook_endpoint`, `webhook_channel`, `webhook_botname`, `webhook_selected`, `default_currency`, `custom_css`, `brand`, `ldap_enabled`, `ldap_server`, `ldap_uname`, `ldap_pword`, `ldap_basedn`, `ldap_default_group`, `ldap_filter`, `ldap_username_field`, `ldap_lname_field`, `ldap_fname_field`, `ldap_auth_filter_query`, `ldap_version`, `ldap_active_flag`, `ldap_dept`, `ldap_emp_num`, `ldap_email`, `ldap_phone_field`, `ldap_jobtitle`, `ldap_manager`, `ldap_country`, `ldap_location`, `full_multiple_companies_support`, `ldap_server_cert_ignore`, `locale`, `labels_per_page`, `labels_width`, `labels_height`, `labels_pmargin_left`, `labels_pmargin_right`, `labels_pmargin_top`, `labels_pmargin_bottom`, `labels_display_bgutter`, `labels_display_sgutter`, `labels_fontsize`, `labels_pagewidth`, `labels_pageheight`, `labels_display_name`, `labels_display_serial`, `labels_display_tag`, `alt_barcode`, `alt_barcode_enabled`, `alert_interval`, `alert_threshold`, `name_display_format`, `email_domain`, `email_format`, `username_format`, `is_ad`, `ad_domain`, `ldap_port`, `ldap_tls`, `zerofill_count`, `ldap_pw_sync`, `two_factor_enabled`, `require_accept_signature`, `date_display_format`, `time_display_format`, `next_auto_tag_base`, `login_note`, `thumbnail_max_h`, `pwd_secure_uncommon`, `pwd_secure_complexity`, `pwd_secure_min`, `audit_interval`, `audit_warning_days`, `show_url_in_emails`, `custom_forgot_pass_url`, `show_alerts_in_menu`, `labels_display_company_name`, `show_archived_in_list`, `dashboard_message`, `support_footer`, `footer_text`, `modellist_displays`, `login_remote_user_enabled`, `login_common_disabled`, `login_remote_user_custom_logout_url`, `skin`, `show_images_in_email`, `admin_cc_email`, `labels_display_model`, `privacy_policy_link`, `version_footer`, `unique_serial`, `logo_print_assets`, `depreciation_method`, `favicon`, `default_avatar`, `email_logo`, `label_logo`, `allow_user_skin`, `show_assigned_assets`, `login_remote_user_header_name`, `ad_append_domain`, `saml_enabled`, `saml_idp_metadata`, `saml_attr_mapping_username`, `saml_forcelogin`, `saml_slo`, `saml_sp_x509cert`, `saml_sp_privatekey`, `saml_custom_settings`, `saml_sp_x509certNew`, `digit_separator`, `ldap_client_tls_cert`, `ldap_client_tls_key`, `dash_chart_type`, `label2_enable`, `label2_template`, `label2_title`, `label2_asset_logo`, `label2_1d_type`, `label2_2d_type`, `label2_2d_target`, `label2_fields`, `google_login`, `google_client_id`, `google_client_secret`, `profile_edit`, `shortcuts_enabled`, `due_checkin_days`) VALUES
(1, '2024-12-24 02:49:58', '2024-12-27 15:29:34', 1, 20, 'Sangkaj Group', NULL, NULL, NULL, NULL, NULL, 1, 'SANGKAJ-', 1, 'setting-logo-1-JYQyewlQ6k.jpg', NULL, 'you@example.com', 1, NULL, 'QRCODE', NULL, NULL, NULL, 'slack', 'INR', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'samaccountname', 'sn', 'givenname', 'uid=', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'en-US', 30, 2.62500, 1.00000, 0.21975, 0.21975, 0.50000, 0.50000, 0.07000, 0.05000, 9, 8.50000, 11.00000, 0, 0, 0, 'C128', 1, 30, 5, 'first_last', 'gmail.com', 'filastname', 'filastname', 0, NULL, '389', 0, 5, 1, NULL, 0, 'Y-m-d', 'h:i A', 11, NULL, 50, 0, NULL, 10, NULL, NULL, 0, NULL, 1, 0, 0, NULL, 'on', NULL, 'image,category,manufacturer,model_number', 0, 0, '', 'blue', 1, NULL, 0, NULL, 'on', 0, 0, 'default', 'setting-favicon-1-AmTymdto8t.ico', 'default.png', 'setting-email_logo-1-KE4TRbKTd9.jpg', 'setting-label_logo-1-usGSnRDmld.jpg', 0, 0, '', 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '1,234.56', NULL, NULL, 'name', 1, 'DefaultLabel', 'SANGKAJ', 1, 'C128', 'QRCODE', 'hardware_id', 'name=name;serial=serial;model=model.name', 0, NULL, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_labels`
--

CREATE TABLE `status_labels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deployable` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `show_in_nav` tinyint(1) DEFAULT 0,
  `default_label` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_labels`
--

INSERT INTO `status_labels` (`id`, `name`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `deployable`, `pending`, `archived`, `notes`, `color`, `show_in_nav`, `default_label`) VALUES
(1, 'Pending', 1, NULL, NULL, NULL, 0, 1, 0, 'These assets are not yet ready to be deployed, usually because of configuration or waiting on parts.', NULL, 0, 0),
(2, 'Ready to Deploy', 1, NULL, NULL, NULL, 1, 0, 0, 'These assets are ready to deploy.', NULL, 0, 0),
(3, 'Archived', 1, NULL, NULL, NULL, 0, 0, 1, 'These assets are no longer in circulation or viable.', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `address2` varchar(250) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `phone` varchar(35) DEFAULT NULL,
  `fax` varchar(35) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `address2`, `city`, `state`, `country`, `phone`, `fax`, `email`, `contact`, `notes`, `created_at`, `updated_at`, `created_by`, `deleted_at`, `zip`, `url`, `image`) VALUES
(1, 'Broad Apple', 'Door No 55, 58, 80 Feet Rd', NULL, 'Pune', 'Maharashtra', 'IN', NULL, NULL, 'you@example.com', NULL, NULL, '2024-12-27 11:18:06', '2024-12-27 11:18:06', 1, NULL, '431007', NULL, NULL),
(2, 'Hegmann, Mohr and Cremin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-27 15:03:12', '2024-12-27 15:03:12', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `permissions` text DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `activation_code` varchar(191) DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(191) DEFAULT NULL,
  `reset_password_code` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `gravatar` varchar(191) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `jobtitle` varchar(191) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `employee_num` text DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` text DEFAULT NULL,
  `ldap_import` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(10) DEFAULT 'en-US',
  `show_in_list` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` varchar(32) DEFAULT NULL,
  `two_factor_enrolled` tinyint(1) NOT NULL DEFAULT 0,
  `two_factor_optin` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `skin` varchar(191) DEFAULT NULL,
  `remote` tinyint(1) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `scim_externalid` varchar(191) DEFAULT NULL,
  `autoassign_licenses` tinyint(1) NOT NULL DEFAULT 1,
  `vip` tinyint(1) DEFAULT 0,
  `enable_sounds` tinyint(1) NOT NULL DEFAULT 0,
  `enable_confetti` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `created_by`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`, `deleted_at`, `website`, `country`, `gravatar`, `location_id`, `phone`, `jobtitle`, `manager_id`, `employee_num`, `avatar`, `username`, `notes`, `company_id`, `remember_token`, `ldap_import`, `locale`, `show_in_list`, `two_factor_secret`, `two_factor_enrolled`, `two_factor_optin`, `department_id`, `address`, `city`, `state`, `zip`, `skin`, `remote`, `start_date`, `end_date`, `scim_externalid`, `autoassign_licenses`, `vip`, `enable_sounds`, `enable_confetti`) VALUES
(1, 'you@example.com', '$2y$10$sx0mkJBaGJeiIzTbVm8Ek.RI3UhxCxx42qlbgnOkG/aL4kioV6XTO', '{\"superuser\":1}', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Dipak', 'Pere', '2024-12-24 02:49:58', '2024-12-24 02:49:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dipakpere', NULL, NULL, 'RcBmFPrC5pDEOilB1eNSJms9PMufw7jqtSGhAcevWNNW6Uc4L2jX8GyJ5Bnl', 0, 'en-US', 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, 0, 0),
(2, 'vinayak.songirikar@gmail.com', '$2y$10$kjBQrasBywYgWmbfF9RxJ.VFh1PBx.z0GuV72/NpID4t4VHRt6M0W', '{\"superuser\":\"-1\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"1\",\"assets.create\":\"1\",\"assets.edit\":\"1\",\"assets.delete\":\"1\",\"assets.checkin\":\"1\",\"assets.checkout\":\"1\",\"assets.audit\":\"1\",\"assets.view.requestable\":\"1\",\"assets.view.encrypted_custom_fields\":\"1\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"accessories.files\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"consumables.files\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"components.files\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\",\"self.view_purchase_cost\":\"0\"}', 1, 1, NULL, NULL, '2024-12-27 15:27:06', NULL, NULL, 'Vinayak', 'Songirikar', '2024-12-27 11:30:15', '2024-12-27 15:27:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vinayak.songirikar', NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0),
(3, 'yogesh.deshmukh@gmail.com', '$2y$10$sqcYd40NTr1OGZsb7LaP/eI3L/NrUTMNzteRLReW3J/d2Tw2dtGMC', '{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"assets.view.encrypted_custom_fields\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"accessories.files\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"consumables.files\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"components.files\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\",\"self.view_purchase_cost\":\"0\"}', 0, 1, NULL, NULL, NULL, NULL, NULL, 'Yogesh', 'Deshmukh', '2024-12-27 11:31:13', '2024-12-27 11:31:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yogesh.deshmukh', NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0),
(4, 'vinodkjadhav2@gmail.com', '$2y$10$jNdMAH70k8hPOeSbaNKLDueRC3EtzGRWjGAdtWDCtzSl0GxCgNkP2', '{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"assets.view.encrypted_custom_fields\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"accessories.files\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"consumables.files\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"components.files\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\",\"self.view_purchase_cost\":\"0\"}', 0, 1, NULL, NULL, NULL, NULL, NULL, 'Vinod', 'Jadhav', '2024-12-27 11:32:05', '2024-12-27 11:32:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vinod.jadhav', NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessories_company_id_index` (`company_id`);

--
-- Indexes for table `accessories_checkout`
--
ALTER TABLE `accessories_checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_logs_thread_id_index` (`thread_id`),
  ADD KEY `action_logs_created_at_index` (`created_at`),
  ADD KEY `action_logs_item_type_item_id_action_type_index` (`item_type`,`item_id`,`action_type`),
  ADD KEY `action_logs_target_type_target_id_action_type_index` (`target_type`,`target_id`,`action_type`),
  ADD KEY `action_logs_target_type_target_id_index` (`target_type`,`target_id`),
  ADD KEY `action_logs_company_id_index` (`company_id`),
  ADD KEY `action_logs_action_type_index` (`action_type`),
  ADD KEY `action_logs_remote_ip_index` (`remote_ip`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_rtd_location_id_index` (`rtd_location_id`),
  ADD KEY `assets_assigned_type_assigned_to_index` (`assigned_type`,`assigned_to`),
  ADD KEY `assets_created_at_index` (`created_at`),
  ADD KEY `assets_deleted_at_status_id_index` (`deleted_at`,`status_id`),
  ADD KEY `assets_deleted_at_model_id_index` (`deleted_at`,`model_id`),
  ADD KEY `assets_deleted_at_assigned_type_assigned_to_index` (`deleted_at`,`assigned_type`,`assigned_to`),
  ADD KEY `assets_deleted_at_supplier_id_index` (`deleted_at`,`supplier_id`),
  ADD KEY `assets_deleted_at_location_id_index` (`deleted_at`,`location_id`),
  ADD KEY `assets_deleted_at_rtd_location_id_index` (`deleted_at`,`rtd_location_id`),
  ADD KEY `assets_deleted_at_asset_tag_index` (`deleted_at`,`asset_tag`),
  ADD KEY `assets_deleted_at_name_index` (`deleted_at`,`name`),
  ADD KEY `assets_serial_index` (`serial`),
  ADD KEY `assets_company_id_index` (`company_id`);

--
-- Indexes for table `asset_logs`
--
ALTER TABLE `asset_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_maintenances`
--
ALTER TABLE `asset_maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_uploads`
--
ALTER TABLE `asset_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_acceptances`
--
ALTER TABLE `checkout_acceptances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkout_acceptances_checkoutable_type_checkoutable_id_index` (`checkoutable_type`,`checkoutable_id`);

--
-- Indexes for table `checkout_requests`
--
ALTER TABLE `checkout_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkout_requests_user_id_requestable_id_requestable_type` (`user_id`,`requestable_id`,`requestable_type`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_name_unique` (`name`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_company_id_index` (`company_id`);

--
-- Indexes for table `components_assets`
--
ALTER TABLE `components_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumables`
--
ALTER TABLE `consumables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consumables_company_id_index` (`company_id`);

--
-- Indexes for table `consumables_users`
--
ALTER TABLE `consumables_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fieldsets`
--
ALTER TABLE `custom_fieldsets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_custom_fieldset`
--
ALTER TABLE `custom_field_custom_fieldset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_index` (`company_id`);

--
-- Indexes for table `depreciations`
--
ALTER TABLE `depreciations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_accessories`
--
ALTER TABLE `kits_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_consumables`
--
ALTER TABLE `kits_consumables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_licenses`
--
ALTER TABLE `kits_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_models`
--
ALTER TABLE `kits_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `licenses_company_id_index` (`company_id`);

--
-- Indexes for table `license_seats`
--
ALTER TABLE `license_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_seats_license_id_index` (`license_id`),
  ADD KEY `license_seats_assigned_to_license_id_index` (`assigned_to`,`license_id`),
  ADD KEY `license_seats_asset_id_license_id_index` (`asset_id`,`license_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_parent_id_index` (`parent_id`),
  ADD KEY `locations_manager_id_deleted_at_index` (`manager_id`,`deleted_at`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models_custom_fields`
--
ALTER TABLE `models_custom_fields`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requested_assets`
--
ALTER TABLE `requested_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saml_nonces`
--
ALTER TABLE `saml_nonces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saml_nonces_nonce_index` (`nonce`),
  ADD KEY `saml_nonces_not_valid_after_index` (`not_valid_after`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_labels`
--
ALTER TABLE `status_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_company_id_index` (`company_id`),
  ADD KEY `users_username_deleted_at_index` (`username`,`deleted_at`),
  ADD KEY `users_manager_id_deleted_at_index` (`manager_id`,`deleted_at`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accessories_checkout`
--
ALTER TABLE `accessories_checkout`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `asset_logs`
--
ALTER TABLE `asset_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_maintenances`
--
ALTER TABLE `asset_maintenances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_uploads`
--
ALTER TABLE `asset_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout_acceptances`
--
ALTER TABLE `checkout_acceptances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checkout_requests`
--
ALTER TABLE `checkout_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_assets`
--
ALTER TABLE `components_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consumables`
--
ALTER TABLE `consumables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `consumables_users`
--
ALTER TABLE `consumables_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fieldsets`
--
ALTER TABLE `custom_fieldsets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_field_custom_fieldset`
--
ALTER TABLE `custom_field_custom_fieldset`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `depreciations`
--
ALTER TABLE `depreciations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kits`
--
ALTER TABLE `kits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kits_accessories`
--
ALTER TABLE `kits_accessories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kits_consumables`
--
ALTER TABLE `kits_consumables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kits_licenses`
--
ALTER TABLE `kits_licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kits_models`
--
ALTER TABLE `kits_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_seats`
--
ALTER TABLE `license_seats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `models_custom_fields`
--
ALTER TABLE `models_custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requested_assets`
--
ALTER TABLE `requested_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saml_nonces`
--
ALTER TABLE `saml_nonces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_labels`
--
ALTER TABLE `status_labels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
