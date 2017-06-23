-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2017 at 01:57 AM
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

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839419, 0.134008, '1', 200),
(2, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839420, 0.0990059, '1', 200),
(3, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839421, 0.126007, '1', 200),
(4, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839437, 0.138008, '1', 200),
(5, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839438, 0.077004, '1', 200),
(6, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839555, 0.109006, '1', 200),
(7, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839560, 0.098006, '1', 200),
(8, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497839562, 0.080004, '1', 200),
(9, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497840115, 0.124007, '1', 200),
(10, 'api/student/format/json', 'get', 'a:9:{s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497840212, 0.0800052, '1', 200),
(11, 'api/student/format/xml', 'get', 'a:9:{s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497840217, 0.222013, '1', 200),
(12, 'api/student/format/csv', 'get', 'a:9:{s:6:"format";s:3:"csv";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497840223, 0.111007, '1', 200),
(13, 'api/student', 'get', 'a:10:{s:0:"";N;s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497841164, 0.120007, '1', 200),
(14, 'api/student/format/json', 'get', 'a:9:{s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497841169, 0.125007, '1', 200),
(15, 'api/student/format/json', 'get', 'a:9:{s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497841175, 0.109006, '1', 200),
(16, 'api/student.html', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497842847, 0.216012, '1', 200),
(17, 'api/student.html', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497842852, 0.153009, '1', 200),
(18, 'api/student.csv', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497842857, 0.150008, '1', 200),
(19, 'api/student.xml', 'get', 'a:8:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497842865, 0.104006, '1', 200),
(20, 'api/student/id/1', 'get', 'a:9:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843290, 0.111006, '1', 200),
(21, 'api/student/id/1/format/csv', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"csv";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843301, 0.145008, '1', 200),
(22, 'api/student/id/1/format/xml', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843304, 0.0780041, '1', 200),
(23, 'api/student/id/1', 'get', 'a:9:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843526, 0.103006, '1', 200),
(24, 'api/student/id/1/format/json', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843564, 0.0810039, '1', 200),
(25, 'api/student/id/1/format/xml', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843603, 0.130008, '1', 200),
(26, 'api/student/id/1/format/html', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"html";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843610, 0.096005, '1', 200),
(27, 'api/student', 'get', 'a:10:{s:0:"";N;s:6:"format";s:4:"html";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843623, 0.170009, '1', 200),
(28, 'api/student/format/html', 'get', 'a:9:{s:6:"format";s:4:"html";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843627, 0.0900059, '1', 200),
(29, 'api/student/id/1/format/html', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"html";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843634, 0.0940061, '1', 200),
(30, 'api/student/id/1', 'get', 'a:9:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843859, 0.073004, '1', 200),
(31, 'api/student/id/1/format/json', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843864, 0.0640039, '1', 200),
(32, 'api/student/id/1/format/xml', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843924, 0.121007, '1', 200),
(33, 'api/student/id/1/format/html', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"html";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843928, 0.120007, '1', 200),
(34, 'api/student/id/1/format/csv', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"csv";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843934, 0.077004, '1', 200),
(35, 'api/student/id/1', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843938, 0.114006, '1', 200),
(36, 'api/student/id/1', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843943, 0.099005, '1', 200),
(37, 'api/student/id/1', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"html";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843948, 0.100006, '1', 200),
(38, 'api/student/id/1', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"csv";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497843952, 0.0680039, '1', 200),
(39, 'api/student/id/1.json', 'get', 'a:9:{s:2:"id";s:6:"1.json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497844106, 0.159009, '1', 200),
(40, 'api/student/id/1', 'get', 'a:9:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497847607, 0.111006, '1', 200),
(41, 'api/student/id/1/format/json', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497847612, 0.144008, '1', 200),
(42, 'api/student/id/1', 'get', 'a:10:{s:2:"id";s:1:"1";s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497847616, 0.0900049, '1', 200),
(43, 'api/student', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497890414, 2.74816, '1', 200),
(44, 'api/student/format/json', 'get', 'a:9:{s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497890424, 0.0520029, '1', 200),
(45, 'api/student/format/json', 'get', 'a:9:{s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497890434, 0.0620041, '1', 200),
(46, 'api/student/format/csv', 'get', 'a:9:{s:6:"format";s:3:"csv";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497890445, 0.082005, '1', 200),
(47, 'api/users', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497896911, 0.100005, '1', 500),
(48, 'api/users', 'get', 'a:9:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497896965, 0.0820041, '1', 500),
(49, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897267, 0.0870049, '1', 200),
(50, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897286, 0.113007, '1', 200),
(51, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897287, 0.156009, '1', 200),
(52, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897288, 0.125007, '1', 200),
(53, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897897, 0.0750041, '1', 200),
(54, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897898, 0.0930049, '1', 200),
(55, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897899, 0.092005, '1', 200),
(56, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897900, 0.073004, '1', 200),
(57, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897901, 0.105006, '1', 200),
(58, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897902, 0.127008, '1', 200),
(59, 'api/users', 'get', 'a:10:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:9:"max-age=0";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897903, 0.162009, '1', 200),
(60, 'api/users/id/1', 'get', 'a:8:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897950, 0.18101, '1', 200),
(61, 'api/users/id/1/format/xml', 'get', 'a:9:{s:2:"id";s:1:"1";s:6:"format";s:3:"xml";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897969, 0.076005, '1', 200),
(62, 'api/users/id/1/format/json', 'get', 'a:9:{s:2:"id";s:1:"1";s:6:"format";s:4:"json";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497897977, 0.079004, '1', 200),
(63, 'api/users/id/1', 'get', 'a:9:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:25:"Upgrade-Insecure-Requests";s:1:"1";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:6:"Accept";s:85:"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";}', '', '::1', 1497898025, 0.122007, '1', 200),
(64, 'api/users', 'post', 'a:18:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"57";s:6:"Accept";s:46:"application/json, text/javascript, */*; q=0.01";s:6:"Origin";s:16:"http://localhost";s:16:"X-Requested-With";s:14:"XMLHttpRequest";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:12:"Content-Type";s:48:"application/x-www-form-urlencoded; charset=UTF-8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:4:"role";s:0:"";s:6:"status";s:0:"";}', '', '::1', 1497922086, 0.0710039, '1', 400),
(65, 'api/users', 'post', 'a:18:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:2:"57";s:6:"Accept";s:46:"application/json, text/javascript, */*; q=0.01";s:6:"Origin";s:16:"http://localhost";s:16:"X-Requested-With";s:14:"XMLHttpRequest";s:10:"User-Agent";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36";s:12:"Content-Type";s:48:"application/x-www-form-urlencoded; charset=UTF-8";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.8";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:4:"role";s:0:"";s:6:"status";s:0:"";}', '', '::1', 1497922130, 0.0940051, '1', 400),
(66, 'api/users', 'post', 'a:17:{s:0:"";N;s:4:"Host";s:9:"localhost";s:10:"User-Agent";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0";s:6:"Accept";s:46:"application/json, text/javascript, */*; q=0.01";s:15:"Accept-Language";s:14:"en-US,en;q=0.5";s:15:"Accept-Encoding";s:13:"gzip, deflate";s:12:"Content-Type";s:48:"application/x-www-form-urlencoded; charset=UTF-8";s:16:"X-Requested-With";s:14:"XMLHttpRequest";s:7:"Referer";s:39:"http://localhost/CodeIgniter-3.1.4-API/";s:14:"Content-Length";s:2:"57";s:10:"Connection";s:10:"keep-alive";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:4:"role";s:0:"";s:6:"status";s:0:"";}', '', '::1', 1497922248, 0.150009, '1', 400);

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
  `status` enum('active','inactive','deleted') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `ip_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Halim', 'Lardjane', '123-456-7890', 'halim.webdev@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '127.0.0.1', 'active', '2017-06-19 18:03:57', NULL),
(2, 'Maria', 'Robert', '222-222-2222', 'maria.robert@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.12', 'active', '2017-06-19 18:05:52', NULL),
(3, 'Mike', 'James', '333-333-333', 'mike.james@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.4', 'active', '2017-06-19 18:10:24', NULL),
(4, 'Jhon', 'Tim', '444-444-4444', 'jhon.tim@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.23', 'inactive', '2017-06-19 18:12:05', NULL),
(5, 'Mark', 'Robert', '555-555-5555', 'mark.robert@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.11', 'inactive', '2017-06-19 18:13:59', NULL),
(6, 'Sara', 'Akli', '666-666-6666', 'sara.akli@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.7', 'active', '2017-06-19 18:15:23', NULL),
(7, 'Erica', 'Adam', '777-777-7777', 'erica.adam@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.17', 'active', '2017-06-19 18:16:55', NULL),
(8, 'Steve', 'Steve', '888-888-8888', 's.steve@email.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.13', 'inactive', '2017-06-19 18:18:09', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
