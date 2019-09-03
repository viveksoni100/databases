-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 09:03 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE IF NOT EXISTS `category_items` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `name`) VALUES
(1, 'Clothes'),
(5, 'Electronics'),
(3, 'Furniture'),
(2, 'Grocery'),
(4, 'Jewellery');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `item_id` int(4) NOT NULL,
  `quantity` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id_key` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `item_id`, `quantity`) VALUES
(1, 8, 2),
(2, 3, 1),
(3, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_items`
--

CREATE TABLE IF NOT EXISTS `shopping_items` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` double(10,2) NOT NULL,
  `category_id` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category_id_key` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `shopping_items`
--

INSERT INTO `shopping_items` (`id`, `name`, `price`, `category_id`) VALUES
(3, 'iPhone XP', 90000.00, 5),
(4, 'iPhone XR', 72000.00, 5),
(6, 'Kissan Ketchup', 250.00, 2),
(7, 'Study Table', 1500.00, 3),
(8, 'DENIM Ts', 1000.00, 1),
(9, 'Dove Soap', 50.00, 2),
(10, 'Lux Soap', 45.00, 2),
(11, 'DENIM Jacket', 2000.00, 1),
(12, 'DENIM Shirt', 1000.00, 1),
(13, 'wheyProtein', 500.00, 2),
(14, 'cadburyMarshmallow', 1000.00, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `item_id_key` FOREIGN KEY (`item_id`) REFERENCES `shopping_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopping_items`
--
ALTER TABLE `shopping_items`
  ADD CONSTRAINT `category_id_key` FOREIGN KEY (`category_id`) REFERENCES `category_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
