-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 06:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_car`
--

CREATE TABLE `add_car` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `cmodel` varchar(50) NOT NULL,
  `cnumber` varchar(50) NOT NULL,
  `reg_date` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_car`
--

INSERT INTO `add_car` (`id`, `cname`, `cmodel`, `cnumber`, `reg_date`, `price`, `fileupload`, `status`) VALUES
(7, 'BMW', 'L11', 'KL 13 8625', '24-12-2024', '1000', 'photo/car-5.jpg', '1'),
(8, 'RANGER OVER', 'LX3', 'KL15 8989', '25-12-2024', '3000', 'photo/car-2.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`id`, `username`, `password`) VALUES
(1, 'admin', '321');

-- --------------------------------------------------------

--
-- Table structure for table `book_tb`
--

CREATE TABLE `book_tb` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `cmodel` varchar(50) NOT NULL,
  `cnumber` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `cuname` varchar(50) NOT NULL,
  `mob` varchar(50) NOT NULL,
  `lnumber` varchar(50) NOT NULL,
  `fdate` varchar(50) NOT NULL,
  `tdate` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tb`
--

INSERT INTO `book_tb` (`id`, `cname`, `cmodel`, `cnumber`, `price`, `cuname`, `mob`, `lnumber`, `fdate`, `tdate`, `address`) VALUES
(5, 'BMW', 'L11', 'KL 13 8625', '1000', 'Jubin', '9744322911', 'LIC333', '2024-12-26', '2024-12-28', 'NAVANEETHAM');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `mob` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `lnumber` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`id`, `name`, `place`, `mob`, `dob`, `lnumber`, `pass`) VALUES
(9, 'Jubin', 'Kannur', '9744322911', '12/25/2024', 'LIC333', '1983'),
(10, 'Najun', 'Kannur', '9744322912', '12/30/2024', 'LIC999', '1986');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `cuname` varchar(50) NOT NULL,
  `mob` varchar(50) NOT NULL,
  `lnumber` varchar(50) NOT NULL,
  `review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `cuname`, `mob`, `lnumber`, `review`) VALUES
(1, 'Jubin', '9744322911', 'LIC333', 'gfgfgf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_car`
--
ALTER TABLE `add_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_tb`
--
ALTER TABLE `book_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_car`
--
ALTER TABLE `add_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_tb`
--
ALTER TABLE `book_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
