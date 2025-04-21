-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 08:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wanderlust`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `manage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `manage`) VALUES
(0, 'saurab', 1),
(1, 'tejas_shinde', 1),
(2, 'Prashant_lamkhade', 1),
(3, 'prashantlamkhade', 1),
(4, 'tejasshinde', 1),
(5, 'omi', 1),
(7, 'abhi', 1),
(8, 'saurab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'user', '2024-02-26 13:15:14'),
(2, 2, 'user', '2024-02-28 14:38:14'),
(3, 3, 'user', '2024-04-11 13:13:03'),
(4, 4, 'user', '2024-04-12 07:50:22'),
(5, 5, 'user', '2024-08-30 13:53:27'),
(6, 6, 'user', '2024-10-08 12:56:21'),
(7, 7, 'user', '2024-12-30 13:16:58'),
(8, 8, 'user', '2025-04-21 06:53:17'),
(9, 9, 'user', '2025-04-21 06:59:06'),
(10, 10, 'user', '2025-04-21 07:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'prashant@gmail.com', '$2y$12$TaGIomzksRnyRZxgxdAIReee/d6bMzULc6To.fz7isezF3Zq3maGW', NULL, NULL, 0, '2024-04-11 06:16:06', '2024-02-26 13:15:14', '2024-04-11 06:16:06'),
(2, 2, 'email_password', NULL, 'rahul@gmail.com', '$2y$12$CV.2WGdCfDd5f93feWSciuWfGMpgRJt/Ukdh.DHTqdnjyPS5FFJmC', NULL, NULL, 0, '2024-04-16 07:55:23', '2024-02-28 14:38:14', '2024-04-16 07:55:23'),
(3, 3, 'email_password', NULL, 'prashant@gmail.com1', '$2y$12$WGA76L4Fq01Urg5nLuIB5OxITwDqCSnmKRLw.4YzAld72bNYOEZP2', NULL, NULL, 0, '2024-04-11 14:52:43', '2024-04-11 13:13:03', '2024-04-11 14:52:43'),
(4, 4, 'email_password', NULL, 'prashantlamkhade2004@gmail.com', '$2y$12$ZOFrc0v0264u7ded38K7V.nT7ihRUO8N3XfD1va7kGhZn3AOe/tEi', NULL, NULL, 0, '2024-04-16 07:56:16', '2024-04-12 07:50:21', '2024-04-16 07:56:16'),
(5, 5, 'email_password', NULL, 'om@gmail.com', '$2y$12$oGkuOi0NsCnps.GcFnaqyuGA.NZ4cFjexADjC9xf/mvhig.TtLH3O', NULL, NULL, 0, '2024-08-30 14:04:45', '2024-08-30 13:53:26', '2024-08-30 14:04:45'),
(6, 6, 'email_password', NULL, 'abhishek@gmail.com', '$2y$12$Xqnj8UONuRv6t0xBALf1HO1ZJ9vR1EaULVyWvUvfsXwFfET1gD7wq', NULL, NULL, 0, '2024-10-08 13:04:59', '2024-10-08 12:56:20', '2024-10-08 13:04:59'),
(7, 7, 'email_password', NULL, 'saurabh@gmail.com', '$2y$12$yLiC519.YcMlRXTpb4sb1.74MjJaapAtFAONx.gD6VqjufNf5zaXu', NULL, NULL, 0, NULL, '2024-12-30 13:16:58', '2024-12-30 13:16:58'),
(8, 8, 'email_password', NULL, 'prashantnew@gmail.com', '$2y$12$9m8AbOXxtw9a19NF3FW1D.LwZ3OLOceQ94STNjo2Ny/ppK8rYUz5W', NULL, NULL, 0, '2025-04-21 07:05:26', '2025-04-21 06:53:16', '2025-04-21 07:05:26'),
(9, 9, 'email_password', NULL, 'tejasnew@gmail.com', '$2y$12$lMyfCsOhSIDqZ4pDiMR8QuF6PM9KAHwg5d3nwOQgbhlqc0.zGdA66', NULL, NULL, 0, '2025-04-21 07:23:13', '2025-04-21 06:59:05', '2025-04-21 07:23:13'),
(10, 10, 'email_password', NULL, 'prashantl@gmail.com', '$2y$12$Ymhz8F6A1/nwJ8NttbJyEeJd44Ckqy3hfin3R3CWKcV3zhHh.dr96', NULL, NULL, 0, '2025-04-21 07:21:20', '2025-04-21 07:14:04', '2025-04-21 07:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashantlamkhade2004@gmail.com', NULL, '2024-02-27 02:42:33', 0),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-02-27 02:42:55', 0),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-02-27 02:45:13', 0),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-02-27 02:45:26', 0),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-02-27 02:45:27', 0),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-02-27 02:45:48', 0),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-27 02:47:53', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-27 02:48:51', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-27 09:28:33', 1),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-27 09:30:16', 1),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-27 09:31:33', 1),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-02-28 14:18:49', 0),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-28 14:19:01', 1),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-02-28 14:35:58', 1),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-02-28 14:41:19', 1),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-02 07:58:34', 1),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', NULL, '2024-03-02 08:01:49', 0),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', 1, '2024-03-02 08:01:57', 1),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-02 08:03:40', 1),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-09 05:46:53', 1),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-09 08:00:01', 1),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-18 09:25:28', 1),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', NULL, '2024-03-18 09:39:57', 0),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-18 09:40:06', 1),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-18 09:45:17', 1),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-18 13:57:22', 1),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', 1, '2024-03-18 14:05:36', 1),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-24 04:46:39', 1),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-24 04:46:59', 1),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-24 04:47:11', 1),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-24 05:24:48', 1),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-25 15:34:01', 1),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', NULL, '2024-03-27 08:24:14', 0),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-27 08:24:25', 1),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-27 08:42:47', 1),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-27 10:18:12', 1),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-27 15:14:25', 1),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-28 09:55:49', 1),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-28 09:57:25', 1),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-28 10:02:47', 1),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-28 10:10:04', 1),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-03-30 10:21:06', 1),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-03-30 10:35:57', 1),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-04-01 09:25:43', 1),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-04-11 03:09:08', 1),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-04-11 04:17:46', 1),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', 1, '2024-04-11 06:16:06', 1),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-04-11 13:10:40', 0),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-11 14:38:31', 0),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-11 14:38:46', 0),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-11 14:38:59', 0),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', NULL, '2024-04-11 14:39:19', 0),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', NULL, '2024-04-11 14:39:38', 0),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', NULL, '2024-04-11 14:39:53', 0),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-11 14:40:05', 1),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com1', 3, '2024-04-11 14:41:04', 1),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-11 14:47:50', 1),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-04-11 14:52:19', 0),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com1', 3, '2024-04-11 14:52:43', 1),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-11 16:07:10', 0),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-11 16:07:21', 0),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-11 16:07:39', 0),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'rahul@gmail.com', 2, '2024-04-11 16:08:42', 1),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'rahul@gmail.com', 2, '2024-04-11 16:08:43', 1),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-04-12 07:43:40', 0),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-12 07:43:53', 0),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-12 07:44:11', 1),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant1@gmail.com', NULL, '2024-04-12 07:52:33', 0),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashantlamkhade2004@gmail.com', 4, '2024-04-12 07:53:13', 1),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-12 07:54:59', 1),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashantlamkhade2004@gmail.com', 4, '2024-04-12 07:55:42', 1),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-12 08:25:04', 1),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-12 08:37:48', 1),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashantlamkhade2004@gmail.com', 4, '2024-04-12 08:39:09', 1),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-04-16 07:53:31', 0),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-16 07:53:47', 1),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'rahul@gmail.com', 2, '2024-04-16 07:55:23', 1),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'email_password', 'prashantlamkhade2004@gmail.com', 4, '2024-04-16 07:56:16', 1),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-08-30 13:51:42', 0),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-08-30 13:51:59', 0),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'prashant1@gmail.com', NULL, '2024-08-30 13:52:19', 0),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'om@gmail.com', 5, '2024-08-30 13:59:58', 1),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'email_password', 'om@gmail.com', 5, '2024-08-30 14:04:45', 1),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'prashant@gmail.com', NULL, '2024-10-08 12:55:13', 0),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'email_password', 'abhishek@gmail.com', 6, '2024-10-08 13:04:59', 1),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', NULL, '2024-12-30 13:15:25', 0),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', NULL, '2024-12-30 13:15:32', 0),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', NULL, '2025-04-21 06:52:26', 0),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', NULL, '2025-04-21 06:52:35', 0),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'tejas@gmail.com', NULL, '2025-04-21 06:58:06', 0),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', NULL, '2025-04-21 07:03:24', 0),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', 8, '2025-04-21 07:03:37', 1),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', 8, '2025-04-21 07:05:26', 1),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'tejasnew@gmail.com', 9, '2025-04-21 07:07:09', 1),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashant@gmail.com', NULL, '2025-04-21 07:11:10', 0),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', NULL, '2025-04-21 07:11:24', 0),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', NULL, '2025-04-21 07:11:33', 0),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', NULL, '2025-04-21 07:11:45', 0),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', NULL, '2025-04-21 07:12:00', 0),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantnew@gmail.com', NULL, '2025-04-21 07:12:40', 0),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'tejasnew@gmail.com', 9, '2025-04-21 07:13:03', 1),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantl@gmail.com', 10, '2025-04-21 07:14:28', 1),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantl@gmail.com', 10, '2025-04-21 07:17:03', 1),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantl@gmail.com', 10, '2025-04-21 07:17:49', 1),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'prashantl@gmail.com', 10, '2025-04-21 07:21:20', 1),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'email_password', 'tejasnew@gmail.com', 9, '2025-04-21 07:23:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(5) UNSIGNED NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-01-04-142246', 'App\\Database\\Migrations\\Students', 'default', 'App', 1711266120, 1),
(2, '2024-03-23-051025', 'App\\Database\\Migrations\\WanderLust', 'default', 'App', 1711266120, 1),
(6, '2024-03-24-074718', 'App\\Database\\Migrations\\Review', 'default', 'App', 1711266589, 2),
(7, '2024-03-24-081346', 'App\\Database\\Migrations\\Temp', 'default', 'App', 1711268087, 3),
(8, '2024-03-27-085913', 'App\\Database\\Migrations\\Admin', 'default', 'App', 1711530325, 4),
(9, '2024-03-27-091035', 'App\\Database\\Migrations\\Admin', 'default', 'App', 1711530661, 5),
(10, '2024-04-11-105108', 'App\\Database\\Migrations\\Owner', 'default', 'App', 1712832809, 6);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `oid` int(11) NOT NULL,
  `oname` varchar(255) DEFAULT NULL,
  `oemail` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `enter_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`oid`, `oname`, `oemail`, `uid`, `enter_date`) VALUES
(12, 'rahulya', 'rahul@gmail.com', 2, '2024-04-11'),
(13, 'rahulya', 'rahul@gmail.com', 2, '2024-04-11'),
(14, 'rahulya', 'rahul@gmail.com', 2, '2024-04-11'),
(15, 'rahulya', 'rahul@gmail.com', 2, '2024-04-11'),
(16, 'prashantlamkhade', 'prashantlamkhade2004@gmail.com', 4, '2024-04-12'),
(17, 'omi', 'om@gmail.com', 5, '2024-08-30'),
(18, 'abhi', 'abhishek@gmail.com', 6, '2024-10-08'),
(19, 'saurab', 'saurabh@gmail.com', 7, '2024-12-30'),
(21, 'prashantLamkhade02', 'prashantl@gmail.com', 10, '2025-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `rid` int(11) NOT NULL,
  `rvalue` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  `rtitle` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`rid`, `rvalue`, `comment`, `list_id`, `rtitle`, `uid`) VALUES
(6, 5, 'very nice home and i am very happy with  its', 12, 'rahulya', 0),
(7, 2, '', 1, 'rahulya', 0),
(8, 2, 'add', 12, 'pashya', 0),
(9, 3, 'nice', 12, 'pashya', 0),
(11, 2, 'new new new newe abcdefg jdk;n sdn jjjjjjjj f ', 11, 'rahulya', 0),
(12, 5, 'as o f klsd lsd f', 11, 'rahulya', 0),
(13, 5, 'abcd', 1, 'pashya', 0),
(14, 3, 'adddd new review !!!!!!!', 1, 'pashya', 0),
(15, 5, '', 12, 'pashya', 0),
(16, 5, 'newwwwwwwwwwwww', 1, 'pashya', 0),
(17, 3, 'kk', 14, 'pashya', 0),
(18, 5, 'very nice review ', 3, 'pashya', 0),
(20, 5, 'very nice apartment and safe also.', 37, 'prashantlamkhade', 4),
(21, 3, 'nice', 37, 'prashantlamkhade', 4),
(22, 1, 'Good !!', 37, 'rahulya', 2),
(23, 5, 'nice', 38, 'omi', 5),
(24, 5, '', 3, 'omi', 5),
(25, 5, 'very nice', 1, 'abhi', 6),
(26, 4, 'nn', 39, 'abhi', 6),
(27, 5, 'changle ahe ghar', 1, 'saurab', 7),
(28, 5, 'asdas', 10, 'pashya..02', 8),
(29, 5, 'Very nice home ', 4, 'pashya..02', 8);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `blog_id` int(5) UNSIGNED NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pashya', NULL, NULL, 1, '2024-04-11 13:10:23', '2024-02-26 13:15:13', '2024-04-11 13:10:23', '2024-04-11 13:10:23'),
(2, 'rahulya', NULL, NULL, 1, '2024-04-16 07:55:29', '2024-02-28 14:38:13', '2024-02-28 14:38:14', NULL),
(3, 'pashyaa', NULL, NULL, 1, '2024-04-11 16:33:29', '2024-04-11 13:13:03', '2025-04-21 07:23:38', '2025-04-21 07:23:38'),
(4, 'prashantlamkhade', NULL, NULL, 1, '2024-04-16 07:56:57', '2024-04-12 07:50:21', '2024-04-12 07:50:22', NULL),
(5, 'omi', NULL, NULL, 1, '2024-08-30 14:04:45', '2024-08-30 13:53:26', '2024-08-30 13:53:27', NULL),
(6, 'abhi', NULL, NULL, 1, '2024-10-08 13:08:38', '2024-10-08 12:56:19', '2024-10-08 12:56:21', NULL),
(7, 'saurab', NULL, NULL, 1, '2024-12-30 13:25:34', '2024-12-30 13:16:57', '2024-12-30 13:16:58', NULL),
(8, 'pashya..02', NULL, NULL, 1, '2025-04-21 07:06:48', '2025-04-21 06:53:15', '2025-04-21 07:07:38', '2025-04-21 07:07:38'),
(9, 'tejasshinde', NULL, NULL, 1, '2025-04-21 07:23:42', '2025-04-21 06:59:04', '2025-04-21 06:59:06', NULL),
(10, 'prashantLamkhade02', NULL, NULL, 1, '2025-04-21 07:22:48', '2025-04-21 07:14:03', '2025-04-21 07:14:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wanderlustdata`
--

CREATE TABLE `wanderlustdata` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `Owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wanderlustdata`
--

INSERT INTO `wanderlustdata` (`id`, `title`, `description`, `image`, `price`, `location`, `country`, `Owner_id`) VALUES
(1, 'Home', 'Very nice home', 'home1.jpg', 12000, 'sangamner', 'India', NULL),
(3, 'tour', 'nice', 'home3.jpg', 12000, 'sangamner', 'usa', NULL),
(4, 'sangamner', 'khupach bhari homr', 'home4.jpg', 120000, 'UK', 'ADS', NULL),
(5, 'new home', 'abcd', 'home2.jpg', 50000, 'ad', 'India', NULL),
(7, 'tourrrrrrr', 'nice home', 'home5.jpg', 199991, 'sangamner', 'India', NULL),
(8, 'hut', 'very nice hut traveling', 'hut.jpg', 12000, 'sangamner', 'India', NULL),
(9, 'tejas ka home ', 'very beautiful home >>>', 'home1.jpg', 1000, 'sangamner', 'India', NULL),
(10, 'tejas ka home ', 'aa', 'hut.jpg', 1000, 'sangamner', 'India', NULL),
(11, 'tourrrrrrr', 'aa', 'hut.jpg', 1000, 'sangamner', 'India', 2),
(12, 'Torrero', 'aasdf', 'hut.jpg', 1233, 'sangamner', 'India', 2),
(14, 'xzxz', 'kzxnz', 'home5.jpg', 1000, '', 'India', 1),
(15, 'tourrrrrrr', 'aaaa', 'home5.jpg', 12000, 'sangamner', 'India', 1),
(16, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(17, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(18, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(19, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(20, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(21, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(22, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(23, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(24, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(25, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(26, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(27, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(28, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(29, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(30, 'tourrrrrrr', 'sdfs', 'home5.jpg', 1000, 'sangamner', 'India', 1),
(31, 'tourrrrrrr', 'asds', 'estate3.jpeg', 0, 'sangamner', 'India', 3),
(32, 'tourrrrrrr', 'abcd', 'home3.jpg', 1000, 'sangamner', 'India', 3),
(33, 'home', 'abc', 'homeLogin.gif', 12000, '', 'India', 2),
(34, 'home', 'abc', 'homeLogin.gif', 12000, '', 'India', 2),
(35, 'home', 'abc', 'homeLogin.gif', 12000, '', 'India', 2),
(36, 'Home', 'A good description should be a narrative. It should tell the story of your property. It should focus on the emotions that the property and its amenities evoke. This is where you can describe the style of the property, the history of those who have operated there, and the importance of its place in the neighborhood.', 'homeLogin.gif', 50000, 'Sa', 'India', 2),
(37, 'home', 'very nice home and easy to stay', 'home3.webp', 12000, 'Sangamner,Maharashtra', 'India', 4),
(38, 'om', 'mmmmmmmmmmmmm', 'sg6bqi6wjkdctvhbpdqx.jpg', 0, '', 'India', 5),
(39, 'Abhi che ghar', 'khup bhari ahe', 'document.jpg', 1600000, 'CHOKAGO', 'USA', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `list_id` (`list_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wanderlustdata`
--
ALTER TABLE `wanderlustdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `blog_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wanderlustdata`
--
ALTER TABLE `wanderlustdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `wanderlustdata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
