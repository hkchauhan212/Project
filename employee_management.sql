-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2025 at 04:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `date`, `time_in`, `time_out`) VALUES
(1, 'kuldeep', '2025-02-24', '2025-02-24 09:15:25', '2025-02-24 09:15:44'),
(2, 'avadh', '2025-02-24', '2025-02-24 09:15:35', '2025-02-24 09:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Aadhar_No` varchar(12) NOT NULL,
  `Birthdate` date NOT NULL,
  `Education` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `Insert_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Email`, `Aadhar_No`, `Birthdate`, `Education`, `Address`, `Designation`, `Phone_No`, `Salary`, `Insert_Time`) VALUES
(2, 'asaszx', 'xccascada@gmail.com', '454678756898', '2025-12-10', 'sfse', 'csdzc', 'sdaesfsd', '4878744545', 121020.00, '2025-01-25 11:29:40'),
(3, 'kuldeep', 'kuldeep@gmail.com', '789886532164', '2025-02-19', 'bca', 'rajkot', 'developer', '9426062821', 12000.00, '2025-02-19 04:42:45'),
(4, 'kuldeep', 'kuldeep@gmail.com', '789564213654', '2005-02-20', 'bca', 'rajkot', 'developer', '9426062821', 12000.00, '2025-02-19 04:43:59'),
(6, 'avadh', 'avadh@gmail.com', '799454562354', '2005-07-29', 'bca', 'rajkot', 'developer', '7486078871', 15000.00, '2025-02-19 05:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('admin','employee') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'Admin@123', 'admin'),
(2, 'emp', 'Emp@123', 'employee'),
(3, 'avadh', 'Avadh@123', 'employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
