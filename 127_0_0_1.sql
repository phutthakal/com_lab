-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 11:36 AM
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
-- Database: `bme680_data`
--
CREATE DATABASE IF NOT EXISTS `bme680_data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bme680_data`;

-- --------------------------------------------------------

--
-- Table structure for table `sensor_data`
--

CREATE TABLE `sensor_data` (
  `id` int(11) NOT NULL,
  `sensor_id` int(11) NOT NULL,
  `temperature` float DEFAULT NULL,
  `humidity` float DEFAULT NULL,
  `pressure` float DEFAULT NULL,
  `gas_resistance` float DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sensor_data`
--

INSERT INTO `sensor_data` (`id`, `sensor_id`, `temperature`, `humidity`, `pressure`, `gas_resistance`, `timestamp`) VALUES
(1, 1, 28.35, 53.7, 1004.88, 46.94, '2024-08-14 14:35:58'),
(2, 2, 28.41, 53.64, 1004.91, 48.65, '2024-08-14 14:35:58'),
(3, 1, 28.22, 53.06, 1004.91, 49.26, '2024-08-14 14:36:01'),
(4, 2, 28.27, 53.08, 1004.93, 51.37, '2024-08-14 14:36:01'),
(5, 1, 28.12, 52.7, 1004.93, 52.27, '2024-08-14 14:36:04'),
(6, 2, 28.2, 52.73, 1004.94, 54.48, '2024-08-14 14:36:04'),
(7, 1, 28.07, 52.41, 1004.93, 55.31, '2024-08-14 14:36:07'),
(8, 2, 28.16, 52.45, 1004.93, 57.71, '2024-08-14 14:36:07'),
(9, 0, 0, 0, 0, 0, '2024-08-15 07:49:25'),
(10, 0, 0, 0, 0, 0, '2024-08-15 07:49:26'),
(11, 0, 0, 0, 0, 0, '2024-08-15 07:49:26'),
(12, 0, 0, 0, 0, 0, '2024-08-15 07:49:27'),
(13, 0, 0, 0, 0, 0, '2024-08-15 07:49:27'),
(14, 0, 0, 0, 0, 0, '2024-08-15 07:49:28'),
(15, 0, 0, 0, 0, 0, '2024-08-15 07:49:28'),
(16, 0, 0, 0, 0, 0, '2024-08-15 07:49:29'),
(17, 0, 0, 0, 0, 0, '2024-08-15 07:49:29'),
(18, 0, 0, 0, 0, 0, '2024-08-15 07:49:30'),
(19, 0, 0, 0, 0, 0, '2024-08-15 07:49:30'),
(20, 0, 0, 0, 0, 0, '2024-08-15 07:49:31'),
(21, 0, 0, 0, 0, 0, '2024-08-15 07:49:31'),
(22, 0, 0, 0, 0, 0, '2024-08-15 07:49:32'),
(23, 0, 0, 0, 0, 0, '2024-08-15 07:49:32'),
(24, 0, 0, 0, 0, 0, '2024-08-15 07:49:33'),
(25, 0, 0, 0, 0, 0, '2024-08-15 07:49:33'),
(26, 0, 0, 0, 0, 0, '2024-08-15 07:49:34'),
(27, 0, 0, 0, 0, 0, '2024-08-15 07:49:34'),
(28, 0, 0, 0, 0, 0, '2024-08-15 07:49:35'),
(29, 0, 0, 0, 0, 0, '2024-08-15 07:49:35'),
(30, 0, 0, 0, 0, 0, '2024-08-15 07:49:36'),
(31, 0, 0, 0, 0, 0, '2024-08-15 07:49:36'),
(32, 0, 0, 0, 0, 0, '2024-08-15 07:49:37'),
(33, 0, 0, 0, 0, 0, '2024-08-15 07:49:37'),
(34, 0, 0, 0, 0, 0, '2024-08-15 07:49:38'),
(35, 0, 0, 0, 0, 0, '2024-08-15 07:49:38'),
(36, 0, 0, 0, 0, 0, '2024-08-15 07:49:39'),
(37, 0, 0, 0, 0, 0, '2024-08-15 07:49:39'),
(38, 0, 0, 0, 0, 0, '2024-08-15 07:49:40'),
(39, 0, 0, 0, 0, 0, '2024-08-15 07:49:40'),
(40, 0, 0, 0, 0, 0, '2024-08-15 07:49:41'),
(41, 0, 0, 0, 0, 0, '2024-08-15 07:49:41'),
(42, 0, 0, 0, 0, 0, '2024-08-15 07:49:42'),
(43, 0, 0, 0, 0, 0, '2024-08-15 07:49:42'),
(44, 0, 0, 0, 0, 0, '2024-08-15 07:49:43'),
(45, 0, 0, 0, 0, 0, '2024-08-15 07:49:43'),
(46, 0, 0, 0, 0, 0, '2024-08-15 07:49:44'),
(47, 0, 0, 0, 0, 0, '2024-08-15 07:49:44'),
(48, 0, 0, 0, 0, 0, '2024-08-15 07:49:45'),
(49, 0, 0, 0, 0, 0, '2024-08-15 07:49:45'),
(50, 0, 0, 0, 0, 0, '2024-08-15 07:49:46'),
(51, 0, 0, 0, 0, 0, '2024-08-15 07:49:46'),
(52, 0, 0, 0, 0, 0, '2024-08-15 07:49:47'),
(53, 0, 0, 0, 0, 0, '2024-08-15 07:49:47'),
(54, 0, 0, 0, 0, 0, '2024-08-15 07:49:48'),
(55, 0, 0, 0, 0, 0, '2024-08-15 07:49:48'),
(56, 0, 0, 0, 0, 0, '2024-08-15 07:49:49'),
(57, 0, 0, 0, 0, 0, '2024-08-15 07:49:49'),
(58, 0, 0, 0, 0, 0, '2024-08-15 07:49:50'),
(59, 0, 0, 0, 0, 0, '2024-08-15 07:49:50'),
(60, 0, 0, 0, 0, 0, '2024-08-15 07:49:51'),
(61, 0, 0, 0, 0, 0, '2024-08-15 07:49:51'),
(62, 0, 0, 0, 0, 0, '2024-08-15 07:49:52'),
(63, 0, 0, 0, 0, 0, '2024-08-15 07:49:52'),
(64, 0, 0, 0, 0, 0, '2024-08-15 07:49:53'),
(65, 0, 0, 0, 0, 0, '2024-08-15 07:49:53'),
(66, 0, 0, 0, 0, 0, '2024-08-15 07:49:54'),
(67, 0, 0, 0, 0, 0, '2024-08-15 07:49:54'),
(68, 0, 0, 0, 0, 0, '2024-08-15 07:49:55'),
(69, 0, 0, 0, 0, 0, '2024-08-15 07:49:55'),
(70, 0, 0, 0, 0, 0, '2024-08-15 07:49:56'),
(71, 0, 0, 0, 0, 0, '2024-08-15 07:49:56'),
(72, 0, 0, 0, 0, 0, '2024-08-15 07:49:57'),
(73, 0, 0, 0, 0, 0, '2024-08-15 07:49:57'),
(74, 0, 0, 0, 0, 0, '2024-08-15 07:49:58'),
(75, 0, 0, 0, 0, 0, '2024-08-15 07:49:58'),
(76, 0, 0, 0, 0, 0, '2024-08-15 07:49:59'),
(77, 0, 0, 0, 0, 0, '2024-08-15 07:49:59'),
(78, 0, 0, 0, 0, 0, '2024-08-15 07:50:00'),
(79, 0, 0, 0, 0, 0, '2024-08-15 07:50:00'),
(80, 0, 0, 0, 0, 0, '2024-08-15 07:50:01'),
(81, 0, 0, 0, 0, 0, '2024-08-15 07:50:01'),
(82, 0, 0, 0, 0, 0, '2024-08-15 07:50:03'),
(83, 0, 0, 0, 0, 0, '2024-08-15 07:50:03'),
(84, 0, 0, 0, 0, 0, '2024-08-15 07:50:04'),
(85, 0, 0, 0, 0, 0, '2024-08-15 07:50:04'),
(86, 0, 0, 0, 0, 0, '2024-08-15 07:50:05'),
(87, 0, 0, 0, 0, 0, '2024-08-15 07:50:05'),
(88, 0, 0, 0, 0, 0, '2024-08-15 07:50:06'),
(89, 0, 0, 0, 0, 0, '2024-08-15 07:50:06'),
(90, 0, 0, 0, 0, 0, '2024-08-15 07:50:07'),
(91, 0, 0, 0, 0, 0, '2024-08-15 07:50:07'),
(92, 0, 0, 0, 0, 0, '2024-08-15 07:50:08'),
(93, 0, 0, 0, 0, 0, '2024-08-15 07:50:08'),
(94, 0, 0, 0, 0, 0, '2024-08-15 07:50:09'),
(95, 0, 0, 0, 0, 0, '2024-08-15 07:50:09'),
(96, 0, 0, 0, 0, 0, '2024-08-15 07:50:10'),
(97, 0, 0, 0, 0, 0, '2024-08-15 07:50:10'),
(98, 0, 0, 0, 0, 0, '2024-08-15 07:50:11'),
(99, 0, 0, 0, 0, 0, '2024-08-15 07:50:11'),
(100, 0, 0, 0, 0, 0, '2024-08-15 07:50:12'),
(101, 0, 0, 0, 0, 0, '2024-08-15 07:50:12'),
(102, 0, 0, 0, 0, 0, '2024-08-15 07:50:13'),
(103, 0, 0, 0, 0, 0, '2024-08-15 07:50:13'),
(104, 0, 0, 0, 0, 0, '2024-08-15 07:50:14'),
(105, 0, 0, 0, 0, 0, '2024-08-15 07:50:14'),
(106, 0, 0, 0, 0, 0, '2024-08-15 07:50:15'),
(107, 0, 0, 0, 0, 0, '2024-08-15 07:50:15'),
(108, 0, 0, 0, 0, 0, '2024-08-15 07:50:16'),
(109, 0, 0, 0, 0, 0, '2024-08-15 07:50:16'),
(110, 0, 0, 0, 0, 0, '2024-08-15 07:50:17'),
(111, 0, 0, 0, 0, 0, '2024-08-15 07:50:17'),
(112, 0, 0, 0, 0, 0, '2024-08-15 07:50:18'),
(113, 0, 0, 0, 0, 0, '2024-08-15 07:50:18'),
(114, 0, 0, 0, 0, 0, '2024-08-15 07:50:19'),
(115, 0, 0, 0, 0, 0, '2024-08-15 07:50:19'),
(116, 0, 0, 0, 0, 0, '2024-08-15 07:50:20'),
(117, 0, 0, 0, 0, 0, '2024-08-15 07:50:20'),
(118, 0, 0, 0, 0, 0, '2024-08-15 07:50:21'),
(119, 0, 0, 0, 0, 0, '2024-08-15 07:50:21'),
(120, 0, 0, 0, 0, 0, '2024-08-15 07:50:22'),
(121, 0, 0, 0, 0, 0, '2024-08-15 07:50:22'),
(122, 0, 0, 0, 0, 0, '2024-08-15 07:50:23'),
(123, 0, 0, 0, 0, 0, '2024-08-15 07:50:23'),
(124, 0, 0, 0, 0, 0, '2024-08-15 07:50:24'),
(125, 0, 0, 0, 0, 0, '2024-08-15 07:50:24'),
(126, 0, 0, 0, 0, 0, '2024-08-15 07:50:25'),
(127, 0, 0, 0, 0, 0, '2024-08-15 07:50:25'),
(128, 0, 0, 0, 0, 0, '2024-08-15 07:50:26'),
(129, 0, 0, 0, 0, 0, '2024-08-15 07:50:26'),
(130, 0, 0, 0, 0, 0, '2024-08-15 07:50:27'),
(131, 0, 0, 0, 0, 0, '2024-08-15 07:50:27'),
(132, 0, 0, 0, 0, 0, '2024-08-15 07:50:28'),
(133, 0, 0, 0, 0, 0, '2024-08-15 07:50:28'),
(134, 0, 0, 0, 0, 0, '2024-08-15 07:50:29'),
(135, 0, 0, 0, 0, 0, '2024-08-15 07:50:29'),
(136, 0, 0, 0, 0, 0, '2024-08-15 07:50:30'),
(137, 0, 0, 0, 0, 0, '2024-08-15 07:50:30'),
(138, 0, 0, 0, 0, 0, '2024-08-15 07:50:31'),
(139, 0, 0, 0, 0, 0, '2024-08-15 07:50:31'),
(140, 0, 0, 0, 0, 0, '2024-08-15 07:50:32'),
(141, 0, 0, 0, 0, 0, '2024-08-15 07:50:32'),
(142, 0, 0, 0, 0, 0, '2024-08-15 07:50:32'),
(143, 0, 0, 0, 0, 0, '2024-08-15 07:50:32'),
(144, 0, 0, 0, 0, 0, '2024-08-15 07:50:33'),
(145, 0, 0, 0, 0, 0, '2024-08-15 07:50:33'),
(146, 0, 0, 0, 0, 0, '2024-08-15 07:50:34'),
(147, 0, 0, 0, 0, 0, '2024-08-15 07:50:34'),
(148, 0, 0, 0, 0, 0, '2024-08-15 07:50:35'),
(149, 0, 0, 0, 0, 0, '2024-08-15 07:50:35'),
(150, 0, 0, 0, 0, 0, '2024-08-15 07:50:36'),
(151, 0, 0, 0, 0, 0, '2024-08-15 07:50:36'),
(152, 0, 0, 0, 0, 0, '2024-08-15 07:50:37'),
(153, 0, 0, 0, 0, 0, '2024-08-15 07:50:37'),
(154, 0, 0, 0, 0, 0, '2024-08-15 07:50:38'),
(155, 0, 0, 0, 0, 0, '2024-08-15 07:50:38'),
(156, 0, 0, 0, 0, 0, '2024-08-15 07:50:39'),
(157, 0, 0, 0, 0, 0, '2024-08-15 07:50:39'),
(158, 0, 0, 0, 0, 0, '2024-08-15 07:50:40'),
(159, 0, 0, 0, 0, 0, '2024-08-15 07:50:40'),
(160, 0, 0, 0, 0, 0, '2024-08-15 07:50:41'),
(161, 0, 0, 0, 0, 0, '2024-08-15 07:50:41'),
(162, 0, 0, 0, 0, 0, '2024-08-15 07:50:42'),
(163, 0, 0, 0, 0, 0, '2024-08-15 07:50:42'),
(164, 0, 0, 0, 0, 0, '2024-08-15 07:50:43'),
(165, 0, 0, 0, 0, 0, '2024-08-15 07:50:43'),
(166, 0, 0, 0, 0, 0, '2024-08-15 07:50:44'),
(167, 0, 0, 0, 0, 0, '2024-08-15 07:50:44'),
(168, 0, 0, 0, 0, 0, '2024-08-15 07:50:45'),
(169, 0, 0, 0, 0, 0, '2024-08-15 07:50:45'),
(170, 0, 0, 0, 0, 0, '2024-08-15 07:50:46'),
(171, 0, 0, 0, 0, 0, '2024-08-15 07:50:46'),
(172, 0, 0, 0, 0, 0, '2024-08-15 07:50:47'),
(173, 0, 0, 0, 0, 0, '2024-08-15 07:50:47'),
(174, 0, 0, 0, 0, 0, '2024-08-15 07:50:48'),
(175, 0, 0, 0, 0, 0, '2024-08-15 07:50:48'),
(176, 0, 0, 0, 0, 0, '2024-08-15 07:50:49'),
(177, 0, 0, 0, 0, 0, '2024-08-15 07:50:49'),
(178, 0, 0, 0, 0, 0, '2024-08-15 07:50:50'),
(179, 0, 0, 0, 0, 0, '2024-08-15 07:50:50'),
(180, 0, 0, 0, 0, 0, '2024-08-15 07:50:51'),
(181, 0, 0, 0, 0, 0, '2024-08-15 07:50:51'),
(182, 0, 0, 0, 0, 0, '2024-08-15 07:50:52'),
(183, 0, 0, 0, 0, 0, '2024-08-15 07:50:52'),
(184, 0, 0, 0, 0, 0, '2024-08-15 07:50:53'),
(185, 0, 0, 0, 0, 0, '2024-08-15 07:50:53'),
(186, 0, 0, 0, 0, 0, '2024-08-15 07:50:54'),
(187, 0, 0, 0, 0, 0, '2024-08-15 07:50:54'),
(188, 0, 0, 0, 0, 0, '2024-08-15 07:50:55'),
(189, 0, 0, 0, 0, 0, '2024-08-15 07:50:55'),
(190, 0, 0, 0, 0, 0, '2024-08-15 07:50:55'),
(191, 0, 0, 0, 0, 0, '2024-08-15 07:50:56'),
(192, 0, 0, 0, 0, 0, '2024-08-15 07:50:56'),
(193, 0, 0, 0, 0, 0, '2024-08-15 07:50:57'),
(194, 0, 0, 0, 0, 0, '2024-08-15 07:50:57'),
(195, 0, 0, 0, 0, 0, '2024-08-15 07:50:58'),
(196, 0, 0, 0, 0, 0, '2024-08-15 07:50:58'),
(197, 0, 0, 0, 0, 0, '2024-08-15 07:50:59'),
(198, 0, 0, 0, 0, 0, '2024-08-15 07:50:59'),
(199, 0, 0, 0, 0, 0, '2024-08-15 07:51:01'),
(200, 0, 0, 0, 0, 0, '2024-08-15 07:51:01'),
(201, 0, 0, 0, 0, 0, '2024-08-15 07:51:02'),
(202, 0, 0, 0, 0, 0, '2024-08-15 07:51:02'),
(203, 0, 0, 0, 0, 0, '2024-08-15 07:51:03'),
(204, 0, 0, 0, 0, 0, '2024-08-15 07:51:03'),
(205, 0, 0, 0, 0, 0, '2024-08-15 07:51:04'),
(206, 0, 0, 0, 0, 0, '2024-08-15 07:51:04'),
(207, 0, 0, 0, 0, 0, '2024-08-15 07:51:05'),
(208, 0, 0, 0, 0, 0, '2024-08-15 07:51:05'),
(209, 0, 0, 0, 0, 0, '2024-08-15 07:51:06'),
(210, 0, 0, 0, 0, 0, '2024-08-15 07:51:06'),
(211, 0, 0, 0, 0, 0, '2024-08-15 07:51:07'),
(212, 0, 0, 0, 0, 0, '2024-08-15 07:51:07'),
(213, 0, 0, 0, 0, 0, '2024-08-15 07:51:08'),
(214, 0, 0, 0, 0, 0, '2024-08-15 07:51:08'),
(215, 0, 0, 0, 0, 0, '2024-08-15 07:51:09'),
(216, 0, 0, 0, 0, 0, '2024-08-15 07:51:09'),
(217, 0, 0, 0, 0, 0, '2024-08-15 07:51:10'),
(218, 0, 0, 0, 0, 0, '2024-08-15 07:51:10'),
(219, 0, 0, 0, 0, 0, '2024-08-15 07:51:11'),
(220, 0, 0, 0, 0, 0, '2024-08-15 07:51:11'),
(221, 0, 0, 0, 0, 0, '2024-08-15 07:51:12'),
(222, 0, 0, 0, 0, 0, '2024-08-15 07:51:12'),
(223, 0, 0, 0, 0, 0, '2024-08-15 07:51:13'),
(224, 0, 0, 0, 0, 0, '2024-08-15 07:51:13'),
(225, 0, 0, 0, 0, 0, '2024-08-15 07:51:14'),
(226, 0, 0, 0, 0, 0, '2024-08-15 07:51:14'),
(227, 0, 0, 0, 0, 0, '2024-08-15 07:51:15'),
(228, 0, 0, 0, 0, 0, '2024-08-15 07:51:15'),
(229, 0, 0, 0, 0, 0, '2024-08-15 07:51:16'),
(230, 0, 0, 0, 0, 0, '2024-08-15 07:51:16'),
(231, 0, 0, 0, 0, 0, '2024-08-15 07:51:17'),
(232, 0, 0, 0, 0, 0, '2024-08-15 07:51:17'),
(233, 0, 0, 0, 0, 0, '2024-08-15 07:51:18'),
(234, 0, 0, 0, 0, 0, '2024-08-15 07:51:18'),
(235, 0, 0, 0, 0, 0, '2024-08-15 07:51:19'),
(236, 0, 0, 0, 0, 0, '2024-08-15 07:51:19'),
(237, 0, 0, 0, 0, 0, '2024-08-15 07:51:20'),
(238, 0, 0, 0, 0, 0, '2024-08-15 07:51:20'),
(239, 0, 0, 0, 0, 0, '2024-08-15 07:51:20'),
(240, 0, 0, 0, 0, 0, '2024-08-15 07:51:20'),
(241, 0, 0, 0, 0, 0, '2024-08-15 07:51:21'),
(242, 0, 0, 0, 0, 0, '2024-08-15 07:51:21'),
(243, 0, 0, 0, 0, 0, '2024-08-15 07:51:22'),
(244, 0, 0, 0, 0, 0, '2024-08-15 07:51:22'),
(245, 0, 0, 0, 0, 0, '2024-08-15 07:51:23'),
(246, 0, 0, 0, 0, 0, '2024-08-15 07:51:23'),
(247, 0, 0, 0, 0, 0, '2024-08-15 07:51:24'),
(248, 0, 0, 0, 0, 0, '2024-08-15 07:51:24'),
(249, 0, 0, 0, 0, 0, '2024-08-15 07:51:25'),
(250, 0, 0, 0, 0, 0, '2024-08-15 07:51:25'),
(251, 0, 0, 0, 0, 0, '2024-08-15 07:51:26'),
(252, 0, 0, 0, 0, 0, '2024-08-15 07:51:26'),
(253, 0, 0, 0, 0, 0, '2024-08-15 07:51:27'),
(254, 0, 0, 0, 0, 0, '2024-08-15 07:51:27'),
(255, 0, 0, 0, 0, 0, '2024-08-15 07:51:27'),
(256, 0, 0, 0, 0, 0, '2024-08-15 07:51:29'),
(257, 0, 0, 0, 0, 0, '2024-08-15 07:51:29'),
(258, 1, 1, 0, 0, 0, '2024-08-15 07:51:30'),
(259, 2, 2, 0, 0, 0, '2024-08-15 07:51:30'),
(260, 0, 0, 0, 0, 0, '2024-08-15 07:51:31'),
(261, 0, 0, 0, 0, 0, '2024-08-15 07:51:31'),
(262, 0, 0, 0, 0, 0, '2024-08-15 07:51:32'),
(263, 0, 0, 0, 0, 0, '2024-08-15 07:51:32'),
(264, 0, 0, 0, 0, 0, '2024-08-15 07:51:33'),
(265, 0, 0, 0, 0, 0, '2024-08-15 07:51:33'),
(266, 0, 0, 0, 0, 0, '2024-08-15 07:51:34'),
(267, 0, 0, 0, 0, 0, '2024-08-15 07:51:34'),
(268, 0, 0, 0, 0, 0, '2024-08-15 07:51:35'),
(269, 0, 0, 0, 0, 0, '2024-08-15 07:51:35'),
(270, 0, 0, 0, 0, 0, '2024-08-15 07:51:36'),
(271, 0, 0, 0, 0, 0, '2024-08-15 07:51:36'),
(272, 0, 0, 0, 0, 0, '2024-08-15 07:51:37'),
(273, 0, 0, 0, 0, 0, '2024-08-15 07:51:37'),
(274, 0, 0, 0, 0, 0, '2024-08-15 07:51:37'),
(275, 0, 0, 0, 0, 0, '2024-08-15 07:51:37'),
(276, 0, 0, 0, 0, 0, '2024-08-15 07:51:38'),
(277, 0, 0, 0, 0, 0, '2024-08-15 07:51:38'),
(278, 0, 0, 0, 0, 0, '2024-08-15 07:51:39'),
(279, 0, 0, 0, 0, 0, '2024-08-15 07:51:39'),
(280, 0, 0, 0, 0, 0, '2024-08-15 07:51:40'),
(281, 0, 0, 0, 0, 0, '2024-08-15 07:51:40'),
(282, 0, 0, 0, 0, 0, '2024-08-15 07:51:41'),
(283, 0, 0, 0, 0, 0, '2024-08-15 07:51:41'),
(284, 0, 0, 0, 0, 0, '2024-08-15 07:51:42'),
(285, 0, 0, 0, 0, 0, '2024-08-15 07:51:42'),
(286, 0, 0, 0, 0, 0, '2024-08-15 07:51:43'),
(287, 0, 0, 0, 0, 0, '2024-08-15 07:51:43'),
(288, 0, 0, 0, 0, 0, '2024-08-15 07:51:44'),
(289, 0, 0, 0, 0, 0, '2024-08-15 07:51:44'),
(290, 0, 0, 0, 0, 0, '2024-08-15 07:51:45'),
(291, 0, 0, 0, 0, 0, '2024-08-15 07:51:45'),
(292, 0, 0, 0, 0, 0, '2024-08-15 07:51:46'),
(293, 0, 0, 0, 0, 0, '2024-08-15 07:51:46'),
(294, 0, 0, 0, 0, 0, '2024-08-15 07:51:47'),
(295, 0, 0, 0, 0, 0, '2024-08-15 07:51:47'),
(296, 0, 0, 0, 0, 0, '2024-08-15 07:51:48'),
(297, 0, 0, 0, 0, 0, '2024-08-15 07:51:48'),
(298, 0, 0, 0, 0, 0, '2024-08-15 07:51:49'),
(299, 0, 0, 0, 0, 0, '2024-08-15 07:51:49'),
(300, 0, 0, 0, 0, 0, '2024-08-15 07:51:50'),
(301, 0, 0, 0, 0, 0, '2024-08-15 07:51:50'),
(302, 0, 0, 0, 0, 0, '2024-08-15 07:51:51'),
(303, 0, 0, 0, 0, 0, '2024-08-15 07:51:51'),
(304, 0, 0, 0, 0, 0, '2024-08-15 07:51:53'),
(305, 0, 0, 0, 0, 0, '2024-08-15 07:51:54'),
(306, 0, 0, 0, 0, 0, '2024-08-15 07:51:55'),
(307, 0, 0, 0, 0, 0, '2024-08-15 07:51:56'),
(308, 0, 0, 0, 0, 0, '2024-08-15 07:51:57'),
(309, 0, 0, 0, 0, 0, '2024-08-15 07:51:58'),
(310, 0, 0, 0, 0, 0, '2024-08-15 07:51:59'),
(311, 0, 0, 0, 0, 0, '2024-08-15 07:52:00'),
(312, 0, 0, 0, 0, 0, '2024-08-15 07:52:01'),
(313, 0, 0, 0, 0, 0, '2024-08-15 07:52:02'),
(314, 0, 0, 0, 0, 0, '2024-08-15 07:52:03'),
(315, 0, 0, 0, 0, 0, '2024-08-15 07:52:04'),
(316, 0, 0, 0, 0, 0, '2024-08-15 07:52:05'),
(317, 0, 0, 0, 0, 0, '2024-08-15 07:52:06'),
(318, 0, 0, 0, 0, 0, '2024-08-15 07:52:07'),
(319, 0, 0, 0, 0, 0, '2024-08-15 07:52:08'),
(320, 0, 0, 0, 0, 0, '2024-08-15 07:52:09'),
(321, 0, 0, 0, 0, 0, '2024-08-15 07:52:10'),
(322, 0, 0, 0, 0, 0, '2024-08-15 07:52:11'),
(323, 0, 0, 0, 0, 0, '2024-08-15 07:52:12'),
(324, 0, 0, 0, 0, 0, '2024-08-15 07:52:13'),
(325, 0, 0, 0, 0, 0, '2024-08-15 07:52:14'),
(326, 0, 0, 0, 0, 0, '2024-08-15 07:52:15'),
(327, 0, 0, 0, 0, 0, '2024-08-15 07:52:16'),
(328, 0, 0, 0, 0, 0, '2024-08-15 07:52:17'),
(329, 0, 0, 0, 0, 0, '2024-08-15 07:52:18'),
(330, 0, 0, 0, 0, 0, '2024-08-15 07:52:19'),
(331, 0, 0, 0, 0, 0, '2024-08-15 07:52:20'),
(332, 0, 0, 0, 0, 0, '2024-08-15 07:52:21'),
(333, 0, 0, 0, 0, 0, '2024-08-15 07:52:22'),
(334, 0, 0, 0, 0, 0, '2024-08-15 07:52:23'),
(335, 0, 0, 0, 0, 0, '2024-08-15 07:52:24'),
(336, 0, 0, 0, 0, 0, '2024-08-15 07:52:25'),
(337, 0, 0, 0, 0, 0, '2024-08-15 07:52:26'),
(338, 0, 0, 0, 0, 0, '2024-08-15 07:52:27'),
(339, 0, 0, 0, 0, 0, '2024-08-15 07:52:28'),
(340, 0, 0, 0, 0, 0, '2024-08-15 07:52:29'),
(341, 0, 0, 0, 0, 0, '2024-08-15 07:52:30'),
(342, 0, 0, 0, 0, 0, '2024-08-15 07:52:31'),
(343, 0, 0, 0, 0, 0, '2024-08-15 07:52:32'),
(344, 0, 0, 0, 0, 0, '2024-08-15 07:52:33'),
(345, 0, 0, 0, 0, 0, '2024-08-15 07:52:34'),
(346, 0, 0, 0, 0, 0, '2024-08-15 07:52:35'),
(347, 0, 0, 0, 0, 0, '2024-08-15 07:52:36'),
(348, 0, 0, 0, 0, 0, '2024-08-15 07:52:37'),
(349, 0, 0, 0, 0, 0, '2024-08-15 07:52:38'),
(350, 0, 0, 0, 0, 0, '2024-08-15 07:52:39'),
(351, 0, 0, 0, 0, 0, '2024-08-15 07:52:40'),
(352, 0, 0, 0, 0, 0, '2024-08-15 07:52:41'),
(353, 0, 0, 0, 0, 0, '2024-08-15 07:52:42'),
(354, 0, 0, 0, 0, 0, '2024-08-15 07:52:43'),
(355, 0, 0, 0, 0, 0, '2024-08-15 07:52:44'),
(356, 0, 0, 0, 0, 0, '2024-08-15 07:52:45'),
(357, 0, 0, 0, 0, 0, '2024-08-15 07:52:47'),
(358, 0, 0, 0, 0, 0, '2024-08-15 07:52:48'),
(359, 0, 0, 0, 0, 0, '2024-08-15 07:52:49'),
(360, 0, 0, 0, 0, 0, '2024-08-15 07:52:50'),
(361, 0, 0, 0, 0, 0, '2024-08-15 07:52:51'),
(362, 0, 0, 0, 0, 0, '2024-08-15 07:52:52'),
(363, 0, 0, 0, 0, 0, '2024-08-15 07:52:53'),
(364, 0, 0, 0, 0, 0, '2024-08-15 07:52:54'),
(365, 1, 26.2, 1000, 62.4, 74, '2024-08-15 07:52:55'),
(366, 2, 30.5, 2000, 89, 66, '2024-08-15 07:52:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sensor_data`
--
ALTER TABLE `sensor_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sensor_data`
--
ALTER TABLE `sensor_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
