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
-- Database: `clinicals`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinicaldata`
--

CREATE TABLE `clinicaldata` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `component_name` varchar(255) NOT NULL,
  `component_value` varchar(255) NOT NULL,
  `measured_date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clinicaldata`
--

INSERT INTO `clinicaldata` (`id`, `patient_id`, `component_name`, `component_value`, `measured_date_time`) VALUES
(1, 1, 'bp', '67/119', '2018-07-09 14:04:24'),
(2, 2, 'bp', '63/115', '2018-06-19 14:04:24'),
(3, 3, 'bp', '72/129', '2018-07-26 14:04:24'),
(4, 4, 'bp', '74/139', '2018-08-03 14:04:24'),
(5, 5, 'bp', '67/119', '2018-08-29 14:04:24'),
(6, 6, 'bp', '62/109', '2018-07-12 14:04:24'),
(7, 7, 'bp', '55/102', '2018-06-13 14:04:24'),
(8, 8, 'bp', '47/90', '2018-08-02 14:04:24'),
(9, 9, 'bp', '90/149', '2018-06-01 14:04:24'),
(10, 10, 'bp', '50/109', '2018-07-09 14:04:24'),
(49, 10, 'bp', '37/89', '2019-05-29 14:04:24'),
(50, 10, 'heartrate', '109', '2018-07-09 14:04:24'),
(51, 1, 'heartrate', '67', '2018-07-09 14:04:24'),
(52, 2, 'heartrate', '115', '2018-06-19 14:04:24'),
(53, 3, 'heartrate', '72', '2018-07-26 14:04:24'),
(54, 4, 'heartrate', '74', '2018-08-03 14:04:24'),
(55, 5, 'heartrate', '119', '2018-08-29 14:04:24'),
(56, 6, 'heartrate', '62', '2018-07-12 14:04:24'),
(57, 7, 'heartrate', '102', '2018-06-13 14:04:24'),
(58, 8, 'heartrate', '90', '2018-08-02 14:04:24'),
(59, 9, 'heartrate', '90', '2018-06-01 14:04:24'),
(60, 10, 'heartrate', '72', '2018-09-29 14:04:24'),
(61, 1, 'heartrate', '55', '2018-11-02 14:04:24'),
(62, 2, 'heartrate', '67', '2018-08-09 14:04:24'),
(63, 3, 'heartrate', '63', '2018-09-09 14:04:24'),
(64, 4, 'heartrate', '55', '2018-09-13 14:04:24'),
(65, 5, 'heartrate', '50', '2018-10-12 14:04:24'),
(66, 6, 'heartrate', '119', '2018-11-29 14:04:24'),
(67, 7, 'heartrate', '115', '2018-11-03 14:04:24'),
(68, 8, 'heartrate', '63', '2018-10-26 14:04:24'),
(69, 9, 'heartrate', '55', '2018-09-11 14:04:24'),
(70, 1, 'heartrate', '149', '2018-03-19 14:04:24'),
(71, 1, 'heartrate', '55', '2018-10-09 14:04:24'),
(72, 2, 'heartrate', '115', '2018-10-20 14:04:24'),
(73, 3, 'heartrate', '55', '2018-11-19 14:04:24'),
(74, 5, 'heartrate', '129', '2018-12-30 14:04:24'),
(75, 6, 'heartrate', '63', '2018-10-21 14:04:24'),
(76, 7, 'heartrate', '90', '2018-12-29 14:04:24'),
(77, 8, 'heartrate', '63', '2018-11-08 14:04:24'),
(78, 9, 'heartrate', '149', '2018-10-03 14:04:24'),
(79, 10, 'heartrate', '55', '2018-10-29 14:04:24'),
(80, 1, 'heartrate', '119', '2019-06-09 14:04:24'),
(81, 2, 'heartrate', '55', '2018-04-03 14:04:24'),
(82, 3, 'heartrate', '115', '2018-05-21 14:04:24'),
(83, 4, 'heartrate', '47', '2018-03-31 14:04:24'),
(84, 5, 'heartrate', '102', '2018-04-19 14:04:24'),
(85, 6, 'heartrate', '72', '2018-04-28 14:04:24'),
(86, 7, 'heartrate', '67', '2018-03-19 14:04:24'),
(87, 8, 'heartrate', '109', '2018-05-21 14:04:24'),
(88, 9, 'heartrate', '67', '2018-04-12 14:04:24'),
(89, 10, 'heartrate', '119', '2018-03-19 14:04:24'),
(91, 2, 'heartrate', '55/102', '2019-05-23 14:04:24'),
(92, 3, 'heartrate', '67', '2019-06-01 14:04:24'),
(93, 4, 'heartrate', '149', '2019-03-01 14:04:24'),
(94, 5, 'heartrate', '102', '2019-01-06 14:04:24'),
(95, 6, 'heartrate', '67/119', '2019-03-29 14:04:24'),
(96, 7, 'heartrate', '55', '2019-02-21 14:04:24'),
(97, 8, 'heartrate', '50', '2019-02-15 14:04:24'),
(98, 9, 'heartrate', '67', '2019-04-19 14:04:24'),
(99, 10, 'heartrate', '89', '2019-05-29 14:04:24'),
(100, 1, 'hw', '6/180', '2021-02-07 12:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `last_name`, `first_name`, `age`) VALUES
(1, 'John', 'Mccain', 52),
(2, 'Siva', 'Shankar', 32),
(3, 'Anthony', 'Simon', 22),
(4, 'Bruce', 'Sanhurst', 33),
(5, 'Abhram', 'Mani', 55),
(6, 'Gandhi', 'Singh', 12),
(7, 'Antti', 'Krovinan', 27),
(8, 'Simba', 'White', 24),
(9, 'Rose', 'Tanic', 29),
(10, 'Rowling', 'Lte', 49),
(11, 'Hope', 'DRR', 22),
(12, 'Narayan', 'Udit', 44);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinicaldata`
--
ALTER TABLE `clinicaldata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_patient` (`patient_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinicaldata`
--
ALTER TABLE `clinicaldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinicaldata`
--
ALTER TABLE `clinicaldata`
  ADD CONSTRAINT `fk_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
