-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2019 at 09:12 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newYorkTimesBSBooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `BSBooksOf2019`
--

CREATE TABLE `BSBooksOf2019` (
  `book_id` int(30) NOT NULL,
  `book_name` varchar(60) NOT NULL,
  `book_author` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BSBooksOf2019`
--

INSERT INTO `BSBooksOf2019` (`book_id`, `book_name`, `book_author`) VALUES
(1000, 'WHERE THE CRAWDADS SING', 'Delia Owens'),
(1001, 'SUPERMARKET', 'Bobby Hall'),
(1002, 'TIAMAT''S WRATH', 'James S.A. Corey'),
(1003, 'WILD CARD', 'Stuart Woods'),
(1004, 'THE CORNWALLS ARE GONE', 'James Patterson');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
