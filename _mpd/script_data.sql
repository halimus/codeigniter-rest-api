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
(5, 'Arabic'),
(1, 'English'),
(4, 'French'),
(3, 'Italian'),
(2, 'Spanish');


--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`) VALUES
(3, 'Advanced'),
(1, 'Beginner'),
(4, 'Expert'),
(2, 'Intermediate');


--
-- Dumping data for table `field`
--

INSERT INTO `field` (`field_id`, `field_name`) VALUES
(4, 'Cook'),
(2, 'History'),
(1, 'IT'),
(3, 'Sport');


--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`, `phone`, `email`, `password`) VALUES
(1, 'Kevin', 'Tatroe', '929-267-2563', 'k.tattroe@domaine.com', NULL),
(2, 'Steve', 'Prettyman', '223-526-0125', 's.prettyman@domaine.com', NULL),
(3, 'Larry', 'Ullman', '324-255-8064', 'l.ullman@domaine.com', NULL),
(4, 'Brett', 'McLaughlin', NULL, 'b.mclaughlin@domaine.com', NULL);


