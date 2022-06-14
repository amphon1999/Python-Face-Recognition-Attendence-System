-- phpMyAdmin SQL Dump
-- version 5.2.1-dev+20220525.b2e1d944d2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 08:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_recognition`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `attend` varchar(1100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `type`, `name`, `time`, `date`, `attend`) VALUES
('6111500986', ' SE001', ' AMPHON', ' 00:00:02', ' 13/06/2022', ' Present');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `no` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `radio1` varchar(1100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `no`, `name`, `type`, `gender`, `phone`, `email`, `address`, `data`, `radio1`) VALUES
(1, 'a', 'a', 'Studen', 'Male', 'a', 'a', 'a', '2022-06-13 18:33:42', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `fname` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `cnum` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `ssq` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sa` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`fname`, `lname`, `cnum`, `email`, `ssq`, `sa`, `pwd`) VALUES
('ddd', 'ddd', '01', 'a@gmail.com', 'Your Date of Birth', '05', '000');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `dep` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `semester` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `std_id` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `std_name` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `div` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `roll` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `mob` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(1100) COLLATE utf8_unicode_ci NOT NULL,
  `radio1` varchar(1100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `dep`, `course`, `year`, `semester`, `std_id`, `std_name`, `div`, `roll`, `gender`, `dob`, `email`, `mob`, `address`, `teacher`, `radio1`) VALUES
(1, 'BSCS', 'SE', '2017-21', 'Semester-1', '6111500986', 'AMPHON', 'Morning', 'a', 'Male', 'a', 'a', 'a', 'a', 'a', 'Yes'),
(2, 'BSIT', 'FE', '2018-22', 'Semester-1', '6111501414', 'SAOWALUK', 'Morning', 'P', 'Female', 'P', 'p', 'P', 'p', 'P', 'Yes'),
(3, 'BSCS', 'SE', '2019-23', 'Semester-1', '1', '1', 'Morning', '1', 'Male', '1', '1', '1', '1', '1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
