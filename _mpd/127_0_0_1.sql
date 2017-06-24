-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2017 at 02:48 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_api`
--
CREATE DATABASE IF NOT EXISTS `codeigniter_api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codeigniter_api`;

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, '1234', 1, 0, 0, NULL, 1222),
(2, 2, '12345', 1, 0, 0, NULL, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `limits`
--

INSERT INTO `limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES
(5, 'uri:api/users/users/:get', 2, 1498158183, '1234'),
(6, 'method-name:users_get', 2, 1498158300, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `ip_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Halim', 'Lardjane', '123-456=7890', 'halim@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '127.0.0.1', 'active', '2017-06-19 02:21:45', NULL),
(2, 'Sara', 'Toualbi', '777-777-7777', 'sara@toualbi.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.5', 'active', '2017-06-19 02:22:24', NULL),
(3, 'Katia', 'Larabesque', '444-444-4444', 'katia@lara.com', '81dc9bdb52d04dc20036dbd8313ed055', '10.34.123.88', 'inactive', '2017-06-19 02:23:12', NULL),
(4, 'Wassila', 'Lauren', NULL, 'wassila@gmai.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'deleted', '2017-06-19 02:23:43', NULL),
(5, 'Alex', 'Top', '333-333-3333', 'alex@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '333-333-3333', 'active', '2017-06-19 02:24:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `role` enum('administrator','colaborator') NOT NULL,
  `status` enum('active','inactive','deleted') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `ip_address`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Halimovitch', 'Lardjani', '123-456-7890', 'halim.webdev@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '127.0.0.1', 'administrator', 'active', '2017-06-19 18:03:57', '2017-06-22 03:38:22'),
(2, 'Maria', 'Robert', '222-222-2222', 'maria.robert@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.12', 'colaborator', 'active', '2017-06-19 18:05:52', NULL),
(3, 'Mike', 'James', '333-333-333', 'mike.james@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.4', 'colaborator', 'active', '2017-06-19 18:10:24', NULL),
(4, 'Jhon', 'Tim', '444-444-4444', 'jhon.tim@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.23', 'colaborator', 'active', '2017-06-19 18:12:05', NULL),
(5, 'Mark', 'Robert', '555-555-5555', 'mark.robert@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.11', 'colaborator', 'active', '2017-06-19 18:13:59', NULL),
(6, 'Sara', 'Akli', '666-666-6666', 'sara.akli@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.7', 'colaborator', 'active', '2017-06-19 18:15:23', NULL),
(7, 'Erica', 'Adam', '777-777-7777', 'erica.adam@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.17', 'colaborator', 'active', '2017-06-19 18:16:55', NULL),
(8, 'Steve', 'Steve', '888-888-8888', 's.steve@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.13', 'colaborator', 'active', '2017-06-19 18:18:09', NULL),
(9, 'Kafia', 'taraki', '1234567890', 'kafia@gmail.com', '25f9e794323b453885f5181f1b624d0b', '::1', 'colaborator', 'active', '2017-06-20 08:05:46', NULL),
(10, 'Wahiba', 'Babaci', '999-999-9999', 'wahiba@gmail.com', '25d55ad283aa400af464c76d713c07ad', '::1', 'colaborator', 'active', '2017-06-21 06:58:49', NULL),
(11, 'fsdf', 'sdfsdfsdf', 'sfsdfsdfsdfsdf', 'scottmaria.robert@email.com', '6f3c3487639eef5d97a73975c66fce94', '::1', 'colaborator', 'active', '2017-06-21 07:02:22', NULL),
(12, 'sdasd', 'sadasd', 'asdasdads', 'scottmike.james@email.com', 'b8a8b4bc839f7bbdea063ed2c74dcf84', '::1', 'colaborator', 'active', '2017-06-21 07:05:23', NULL),
(13, 'test', 'test', 'testtest', 'test@test.com', '05a671c66aefea124cc08b76ea6d30bb', '::1', 'colaborator', 'active', '2017-06-21 07:09:52', NULL),
(14, 'test', 'test', 'testtest', 'test4@test.com', '05a671c66aefea124cc08b76ea6d30bb', '::1', 'colaborator', 'active', '2017-06-21 07:16:06', '2017-06-21 08:20:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=853;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
