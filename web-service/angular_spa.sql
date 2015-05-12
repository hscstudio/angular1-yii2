-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2015 at 01:30 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angular_spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `author`, `publisher`, `year`) VALUES
(1, 'Head First PHP & MySQL (2nd Edition)', 'xxx', 'Lynn Beighley and Michael Morrison', 'Amazonh', 2015),
(2, 'PHP and MySQL Web Development (5th Edition)', NULL, 'Luke Welling and Laura Thomson', 'Amazon', 2014),
(3, 'Secure Development for Mobile Apps: How to Design and Code Secure Mobile Applications with PHP and JavaScript', NULL, 'J. D. Glaser', 'Amazon', 2014),
(4, 'MySQL Cookbook: Solutions for Database Developers and Administrators', NULL, 'Paul DuBois', 'Amazon', 2014);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
