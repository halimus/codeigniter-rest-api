-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2016 at 11:12 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `booksdb`
--

USE `booksdb`;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'English'),
(2, 'Spanish'),
(3, 'Italian'),
(4, 'French'),
(5, 'Arabic');


--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`) VALUES
(1, 'Beginner'),
(2, 'Intermediate'),
(3, 'Advanced'),
(4, 'Expert');


--
-- Dumping data for table `field`
--

INSERT INTO `field` (`field_id`, `field_name`) VALUES
(1, 'IT'),
(2, 'History'),
(3, 'Sport'),
(4, 'Cook');


--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `ip_address`, `author_status`) VALUES
(1, 'Kevin', 'Tatroe', '929-267-2563', 'k.tattroe@domaine.com', '81dc9bdb52d04dc20036dbd8313ed055', '127.0.0.1', 'active'),
(2, 'Steve', 'Prettyman', '223-526-0125', 's.prettyman@domaine.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.12', 'active'),
(3, 'Larry', 'Ullman', '324-255-8064', 'l.ullman@domaine.com', '81dc9bdb52d04dc20036dbd8313ed055', '127.0.0.1', 'active'),
(4, 'Brett', 'McLaughlin', NULL, 'b.mclaughlin@domaine.com', '81dc9bdb52d04dc20036dbd8313ed055', '192.168.0.5', 'active');


