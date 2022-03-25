-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 12:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `createbatch`
--

CREATE TABLE `createbatch` (
  `id` int(11) NOT NULL,
  `batchname` varchar(200) NOT NULL,
  `createddate` date NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_form`
--

CREATE TABLE `staff_form` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `mstatus` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(200) NOT NULL,
  `con` bigint(50) NOT NULL,
  `acon` bigint(50) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `add2` varchar(200) NOT NULL,
  `postcode` int(200) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `resume` blob NOT NULL,
  `course` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_form`
--

CREATE TABLE `student_form` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `faname` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(200) NOT NULL,
  `con` int(50) NOT NULL,
  `acon` int(50) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `add2` varchar(200) NOT NULL,
  `postcode` int(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `month` varchar(1) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `batch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createbatch`
--
ALTER TABLE `createbatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_form`
--
ALTER TABLE `staff_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_form`
--
ALTER TABLE `student_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createbatch`
--
ALTER TABLE `createbatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_form`
--
ALTER TABLE `staff_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_form`
--
ALTER TABLE `student_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
