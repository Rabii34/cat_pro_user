-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 05:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `ctype` varchar(255) NOT NULL,
  `cdescription` text NOT NULL,
  `cstatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`, `ctype`, `cdescription`, `cstatus`) VALUES
(1, 'sports', 'football', 'best football for your players', 1),
(2, 'flower', 'Rose', 'fresh flowers', 1),
(3, 'fruits', 'Banana', 'fresh fruit', 1),
(4, 'Garments', 'T-shirt', 'new design T-shirt', 1),
(5, 'skincare', 'herbal products', 'products for face', 1),
(6, 'stationary', 'color boxes', 'all types of color pencil are available', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pcategory` int(11) NOT NULL,
  `pdescription` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pstatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pcategory`, `pdescription`, `price`, `pimage`, `pstatus`) VALUES
(1, 'banana', 3, 'fresh bnana', '300', '', 1),
(2, 'apple', 3, 'fresh apples', '800', '', 1),
(3, 'pink rose', 2, 'fresh roses', '400', '', 1),
(4, 'football', 1, 'best football', '8000', '', 1),
(5, 'tennis', 1, 'tennis kit', '15000', '', 1),
(6, 'sunflower', 2, 'fresh sunflowers', '800', '', 1),
(7, 'basketball', 1, 'best ball', '5000', '', 1),
(8, 'cricket', 1, 'cricket kit', '50000', '', 1),
(9, 'T-shirt', 4, 'black t-shirt', '4000', '', 1),
(10, 'orange', 3, 'fresh oranges', '400', '', 1),
(11, 'facewash', 5, 'pounds facewash', '600', '', 1),
(12, 'faber castell', 6, '24 colors ', '1500', '', 1),
(14, 'deer colors', 6, '12 colors', '600', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `rpass` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `pass`, `rpass`, `status`) VALUES
(1, 'Alishba', 'Hashmi', 'alishbaaaa@gmail.com', '$2y$10$EP7ALyJEDqTjOntNi0en.e/U6vBdb2PqmCdC2Pv2z/jUj4jF2CXfi', '', 1),
(3, 'rabia', 'kanwal', 'rabii@gmail.com', '$2y$10$h9c9lLN.z7gnMlQP3jbduu5ASidSajkZyVDxKJE5810zceQie2JHK', '', 1),
(4, 'tooba\r\n', 'tariq', 'moonaliza@gmail.com', '$2y$10$okd.JuqpbfMXCQ1VrVXMWOKmmUPeuHGiOKWQnH4ydwkFb40FTXKg6', '', 1),
(5, 'umbreen', 'Hashmi\r\n', 'umbreen@gmail.com', '$2y$10$1J2nXRdTdIo2rPI2qrK7DeozKBJuPLHWnCYK1kZRf6xk6pid6BALa', '', 1),
(6, 'kinza', 'khan', 'kinza@gmail.com', '$2y$10$uyX8F3sJ5e5D0EOuVmigXetenHj3FWCp7tpiQGUrzeOLbfZFdp2fe', '', 1),
(7, 'hiba', 'zuhaib', 'hiba@gmail.com', '$2y$10$lYQWhiGICSr.ycd1FX3cfO2SLS9Lm7Drmwq6VY3hlE1Gfxt3QMwbC', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cat_fk` (`pcategory`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cat_fk` FOREIGN KEY (`pcategory`) REFERENCES `category` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
