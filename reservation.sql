-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 06:03 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` bigint(20) NOT NULL,
  `arrival_city` varchar(255) DEFAULT NULL,
  `date_of_departure` datetime DEFAULT NULL,
  `departure_city` varchar(255) DEFAULT NULL,
  `estimated_departure_time` datetime DEFAULT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `operating_airlines` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `arrival_city`, `date_of_departure`, `departure_city`, `estimated_departure_time`, `flight_number`, `operating_airlines`) VALUES
(1, 'AA1', '2018-02-05 03:14:07', 'AUS', '2018-02-05 03:14:07', '2018-02-05', 'Indian Airways'),
(2, 'AA2', '2018-02-05 03:14:07', 'AUS', '2018-02-05 03:14:07', '2018-02-05', 'Indian Airways'),
(3, 'AA3', '2018-02-05 03:14:07', 'AUS', '2018-02-05 03:14:07', '2018-02-05', 'Indian Airways'),
(4, 'SW1', '2018-02-05 03:14:07', 'AUS', '2018-02-05 03:14:07', '2018-02-05', 'Indian Airways'),
(5, 'UA1', '2018-02-05 03:14:07', 'NYC', '2018-02-05 03:14:07', '2018-02-05', 'Indian Airways'),
(6, 'UA1', '2018-02-05 03:14:07', 'NYC', '2018-02-05 03:14:07', '2018-02-05', 'Indian Airways'),
(7, 'SW1', '2018-02-05 03:14:07', 'AUS', '2018-02-05 03:14:07', '2018-02-06', 'Indian Airways'),
(8, 'SW2', '2018-02-05 03:14:07', 'AUS', '2018-02-05 03:14:07', '2018-02-06', 'Indian Airways'),
(9, 'SW3', '2018-02-05 03:14:07', 'NYC', '2018-02-05 03:14:07', '2018-02-06', 'Indian Airways'),
(10, 'UA1', '2018-02-05 03:14:07', 'NYC', '2018-02-05 03:14:07', '2018-02-06', 'Indian Airways'),
(11, 'AMD', '2021-02-05 09:37:02', 'RJT', '2021-02-05 09:37:02', '2018-02-06', 'Indian Airways');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `email`, `first_name`, `last_name`, `middle_name`, `phone`) VALUES
(1, 'viveksoni100@gmail.com', 'Vivek', 'Soni', NULL, '8866128862');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) NOT NULL,
  `checked_in` bit(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `number_of_bags` int(11) DEFAULT NULL,
  `flight_id` bigint(20) DEFAULT NULL,
  `passenger_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `checked_in`, `created`, `number_of_bags`, `flight_id`, `passenger_id`) VALUES
(12, b'1', '2018-02-05 03:14:07', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKasu7mudg91n0ypk81rx93ucp5` (`flight_id`),
  ADD KEY `FK3biwcv0wn3a1lp86g0ecsbnvd` (`passenger_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK3biwcv0wn3a1lp86g0ecsbnvd` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `FKasu7mudg91n0ypk81rx93ucp5` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
