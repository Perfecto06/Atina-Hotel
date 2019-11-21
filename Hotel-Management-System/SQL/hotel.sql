-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 02:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`First_Name`, `Last_Name`, `username`, `password`, `id`) VALUES
('Aryan', 'Verma', 'arv', 'admin', 1),
('Priyanshi', 'Gupta', 'prg', 'admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`First_Name`, `Last_Name`, `password`, `username`, `id`) VALUES
('priya', 'gupta', '12345', 'pg123', 4),
('aryan', 'Verma', '12345', 'aaa', 5),
('aayush', 'sahaay', '12345', ';as', 6),
('aryan', 'sahay', '12345', 'oo', 7),
('Bhavanshu', 'Jain', '123456', 'bj', 8),
('aayush', 'asdf', '123456', 'asdfgh', 9),
('aryan', 'verma', '12345', 'qwerty', 10);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `room_no` int(11) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `number` bigint(20) NOT NULL,
  `paid` int(11) NOT NULL,
  `days` date NOT NULL,
  `room_no1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`username`, `name`, `room_no`, `checkin`, `checkout`, `number`, `paid`, `days`, `room_no1`) VALUES
('pg123', 'priya', 1, '2019-11-23', '2019-11-29', 1234566877, 1, '0000-00-00', 100),
('aaa', 'Aryan', 4, '2019-11-19', '2019-11-22', 1234567890, 1, '0000-00-00', 103),
(';as', 'aryan', 1, '2019-11-12', '2019-11-15', 9874563211, 1, '0000-00-00', 104),
('bj', 'Bhavanshu Jain', 4, '2019-11-14', '2019-11-16', 9874563211, 0, '0000-00-00', 111),
('asdfgh', 'Aman', 3, '2019-11-09', '2019-11-28', 9874563211, 1, '0000-00-00', 132),
('arv', 'Bhavanshu Jain', 2, '2019-11-15', '2019-11-19', 9874563211, 1, '0000-00-00', 134),
('qwerty', 'Aman', 3, '2019-11-16', '2019-11-21', 9874563210, 1, '0000-00-00', 135);

-- --------------------------------------------------------

--
-- Table structure for table `room_details`
--

CREATE TABLE `room_details` (
  `room_type` varchar(30) NOT NULL,
  `room_no` int(11) NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`room_no1`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `username_3` (`username`);

--
-- Indexes for table `room_details`
--
ALTER TABLE `room_details`
  ADD UNIQUE KEY `room_no` (`room_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `room_no1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `room_details`
--
ALTER TABLE `room_details`
  MODIFY `room_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
