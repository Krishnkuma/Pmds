-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 08:52 AM
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
-- Database: `pmpkwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `aashirvaad`
--

CREATE TABLE `aashirvaad` (
  `id` int(10) NOT NULL,
  `img` varchar(50) NOT NULL,
  `des` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `availability` int(5) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `price/gm` text NOT NULL,
  `mrp` int(10) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aashirvaad`
--

INSERT INTO `aashirvaad` (`id`, `img`, `des`, `name`, `availability`, `brand`, `price`, `price/gm`, `mrp`, `quantity`) VALUES
(1, 'aa.webp', 'Aashirvaad Aata 1kg from PMPK mart', 'Aata', 12, 'Aashirvaad', 32, '3.2/100gm', 40, 1),
(2, 'af.jpg', 'Whole Wheat Floor with multigrain and fenugreek 1kg', 'Whole Wheat Floor', 18, 'Aashirvaad', 45, '4.5/100gm', 50, 1),
(3, 'au.webp', 'Urad Whole 1kg from PMPK mart', 'Urad Whole', 16, 'Aashirvaad', 48, '4.8/100gm', 60, 1),
(4, 'aus.jpg', 'Urad Dal Split 1kg from PMPK mart', 'Urad Dal Split', 24, 'Aashirvaad', 42, '4.2/100gm', 50, 1),
(5, 'avu.jpg', 'Instant Veggie Upma 1kg from PMPK mart', 'Instant Veggie Upma', 8, 'Aashirvaad', 85, '8.5/100gm', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `img` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(20) NOT NULL,
  `mrp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kiranaking`
--

CREATE TABLE `kiranaking` (
  `id` int(10) NOT NULL,
  `img` varchar(30) NOT NULL,
  `des` varchar(60) NOT NULL,
  `name` varchar(50) NOT NULL,
  `availability` int(10) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `price/gm` text NOT NULL,
  `mrp` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kiranaking`
--

INSERT INTO `kiranaking` (`id`, `img`, `des`, `name`, `availability`, `brand`, `price`, `price/gm`, `mrp`, `quantity`) VALUES
(1, 'kirana 8.webp', 'Chakki fresh Aata 10kg from PMPK mart', 'Chakki Fresh Aata', 10, 'Kirana king', 336, '33.6/1kg', 420, 1),
(2, 'kirana 9.webp', 'Classic White Sugar 1kg from PMPK mart', 'Classic White Sugar', 18, 'Kirana King', 45, '4.5/100gm', 50, 1),
(3, 'kirana 10.jpg', 'Classic Poha 800gm from PMPK mart', 'Classic Poha', 16, 'Kirana King', 48, '6/100gm', 60, 1),
(4, 'kirana 11.jpg', 'Suji 1kg from PMPK mar', 'Suji', 12, 'Kirana King', 42, '4.2/100gm', 50, 1),
(5, 'kirana 12.jpg', 'Basmati Rice 10kg from PMPK mart', 'Basmati Rice', 8, 'Kirana King', 850, '85/1kg', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `laxmibhog`
--

CREATE TABLE `laxmibhog` (
  `id` int(10) NOT NULL,
  `img` varchar(30) NOT NULL,
  `des` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `available` int(10) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `price/gm` varchar(20) NOT NULL,
  `mrp` int(20) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laxmibhog`
--

INSERT INTO `laxmibhog` (`id`, `img`, `des`, `name`, `available`, `brand`, `price`, `price/gm`, `mrp`, `quantity`) VALUES
(1, 'laxmibhogaata.webp', 'Chakki fresh Aata 10kg from PMPK mart', 'Chakki Fresh Aata', 10, 'laxmi bhog', 336, '33.6/1kg', 420, 1),
(2, 'besan.jpg', 'Besan 1kg from PMPK mart', 'Besan', 16, 'Laxmi Bhog', 23, '4.5/100gm', 25, 1),
(3, 'lbdalia.png', 'Laxmi Bhog Dalia 1kg from PMPK mart', 'Dalia', 16, 'Laxmi Bhog', 66, '6.6/100gm', 70, 1),
(4, 'lbmaida.png', 'Maida 1kg from PMPK mart', 'Maida', 23, 'Laxmi Bhog', 42, '4.2/100gm', 50, 1),
(5, 'ls.jpg', 'Suji 1kg from PMPK mart', 'Suji', 12, 'Laxmi Bhog', 40, '4/100gm', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patanjali`
--

CREATE TABLE `patanjali` (
  `id` int(10) NOT NULL,
  `img` varchar(30) NOT NULL,
  `des` varchar(60) NOT NULL,
  `name` varchar(30) NOT NULL,
  `available` int(10) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `price/gm` text NOT NULL,
  `mrp` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patanjali`
--

INSERT INTO `patanjali` (`id`, `img`, `des`, `name`, `available`, `brand`, `price`, `price/gm`, `mrp`, `quantity`) VALUES
(1, 'ph.jpg', 'Patanjali Honey 100gm from PMPK mart', 'Honey', 13, 'Patanjali', '68', '.68/gm', 80, 1),
(2, 'php.png', 'Hing Powder 100gm from PMPK mart  Hing', 'Hing Powder', 23, 'Patanjali', '120', '1.2/gm', 150, 1),
(3, 'pm.webp', 'Moosli Pak 100gm from PMPK mart', 'Moosli Pak', 6, 'Patanjali', '48', '.48/gm', 60, 1),
(4, 'pp.jpg', 'Pachak 200gm from PMPK mart', 'pachak', 12, 'Patanjali', '90', '.45/gm', 100, 1),
(5, 'pd.webp', 'Dant kanti 100gm from PMPK mart', 'Dant Kanti', 23, 'Patanjali', '70', '7/gm', 100, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aashirvaad`
--
ALTER TABLE `aashirvaad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kiranaking`
--
ALTER TABLE `kiranaking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laxmibhog`
--
ALTER TABLE `laxmibhog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patanjali`
--
ALTER TABLE `patanjali`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aashirvaad`
--
ALTER TABLE `aashirvaad`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `kiranaking`
--
ALTER TABLE `kiranaking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laxmibhog`
--
ALTER TABLE `laxmibhog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patanjali`
--
ALTER TABLE `patanjali`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
