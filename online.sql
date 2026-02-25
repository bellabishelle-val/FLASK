-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Mary', '2020-07-01', 70000, 3),
(2, 'Vivian', '2025-05-12', 85000, 1),
(3, 'Timon', '2024-06-13', 69000, 2),
(4, 'Mbaite', '2022-05-15', 57000, 3),
(5, 'Vinnie', '2019-01-14', 85000, 1),
(6, 'Obinna', '2016-02-16', 37000, 2),
(7, 'Oji', '2017-09-17', 46000, 3),
(8, 'Kokoli', '2009-11-19', 82000, 1),
(9, 'Fatma', '2010-12-02', 46000, 2),
(10, 'Vashita', '2018-03-03', 50000, 3),
(11, 'Majembe', '2009-04-04', 98000, 1),
(12, 'Shluv', '2000-10-05', 91000, 2),
(13, 'Cassa', '2002-01-06', 75000, 3),
(14, 'Yvonne', '2001-03-20', 76000, 1),
(15, 'Boom', '2024-05-21', 83000, 2),
(16, 'Epstein', '2026-07-24', 80000, 3),
(17, 'Gadafi', '2023-09-28', 89000, 1),
(18, 'Bnbmah', '0000-00-00', 71000, 2),
(19, 'Reckless', '2012-12-29', 64000, 3),
(20, 'Cusons', '2017-06-25', 90000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `processor` varchar(100) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `storage` varchar(100) NOT NULL,
  `screensize` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `brand`, `processor`, `ram`, `storage`, `screensize`, `price`, `stock`, `photo`) VALUES
(1, 'Lenovo', 'LENOVO', 'intel_core', '32GB', '1TB', '40\"', 29000.00, 40, '<FileStorage: \'lenovo.jpg\' (\'image/jpeg\')>'),
(2, 'HP', 'HP', 'nvidia', '32GB', '2TB', '72\"', 40000.00, 80, '<FileStorage: \'hp.jpg\' (\'image/jpeg\')>'),
(3, 'Macbook', 'Apple', 'intel_core', '32GB', '3TB', '50\"', 399000.00, 50, '<FileStorage: \'macbook.jpg\' (\'image/jpeg\')>');

-- --------------------------------------------------------

--
-- Table structure for table `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`, `brand`, `model`, `storage`, `ram`, `battery`, `price`, `stock`, `photo`) VALUES
(2, 'SAMSUNG', 'SAMSUNG', 'ULTRA24', '256GB', '6GB', '9800mAh', 30000.00, 15, '<FileStorage: \'samsung.png\' (\'image/png\')>'),
(4, 'VIVO', 'VIVO', 'S16', '128GB', '6GB', '4300mAh', 24000.00, 20, '<FileStorage: \'vivo.jpg\' (\'image/jpeg\')>'),
(5, 'TECNO', 'TECNO', 'SPARK', '128GB', '4GB', '3300mAh', 18000.00, 40, '<FileStorage: \'tecno.jpg\' (\'image/jpeg\')>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
