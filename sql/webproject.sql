-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 10:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmentinfo`
--

CREATE TABLE `appointmentinfo` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` int(100) NOT NULL,
  `pnumber` int(100) NOT NULL,
  `date` date NOT NULL,
  `doctorname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointmentinfo`
--

INSERT INTO `appointmentinfo` (`id`, `name`, `address`, `age`, `pnumber`, `date`, `doctorname`) VALUES
(1, 'Bristy Paul', 'Rangpur', 17, 1710454341, '2021-03-29', 'Prof. Dr. R. K. Saha'),
(2, 'Sazol Borman', 'Gaibandha', 24, 1740394222, '2021-03-30', 'Dr. Mohammad Jahangir Talukder'),
(3, 'Digonta Roy', 'Gaibandha', 24, 1742525235, '2021-04-04', 'Dr. Mohammad Jahangir Talukder'),
(4, 'porijit kumar barman', 'gaibandha ', 23, 1733, '2021-12-20', 'Dr. Mohammad Jahangir Talukder'),
(5, 'ardhvgj', 'hgfjhbkj', 34, 12467, '2021-12-27', 'Dr. Mohammad Jahangir Talukder'),
(6, 'rehruj', 'trjhrtujr', 98, 0, '2021-12-14', 'Prof. Dr. R. K. Saha'),
(7, 'antor', 'gajjkmfdafgerg', 2147483647, 32423, '2022-01-07', 'Prof. Dr. R. K. Saha');

-- --------------------------------------------------------

--
-- Table structure for table `messageinfo`
--

CREATE TABLE `messageinfo` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pnumber` int(100) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messageinfo`
--

INSERT INTO `messageinfo` (`id`, `name`, `email`, `pnumber`, `message`) VALUES
(1, 'sazol', 'sazol@gmail.com', 1740394222, 'help me'),
(2, 'Bristy Paul', 'bristy@gmail.com', 1745452554, ''),
(3, 'Bristy Paul', 'bristy@gmail.com', 1745465546, 'help me....');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pnumber` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id`, `name`, `address`, `pnumber`, `email`, `password`) VALUES
(1, 'Bristy Paul', 'Rangpur', 1710454341, 'bristy@gmail.com', 12345),
(2, 'Sazol Borman', 'Gaibandha', 1740394222, 'sazol@gmail.com', 12345),
(3, 'Tumpa Sarker', 'Rangpur', 2147483647, 'tumpa@gmail.com', 12345),
(4, 'sazol Borman', 'Gaibandha', 1733, 'sazol222@gmail.com', 12345),
(5, 'porijit kumar barman', 'gaibandha', 1733, 'porijit@gmail.com', 12345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmentinfo`
--
ALTER TABLE `appointmentinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pnumber` (`pnumber`);

--
-- Indexes for table `messageinfo`
--
ALTER TABLE `messageinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message` (`message`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmentinfo`
--
ALTER TABLE `appointmentinfo`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messageinfo`
--
ALTER TABLE `messageinfo`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
