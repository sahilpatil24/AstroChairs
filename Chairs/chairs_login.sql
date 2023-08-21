-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4307:4307
-- Generation Time: Aug 21, 2023 at 05:08 PM
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
-- Database: `chairs_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `passwrd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `passwrd`) VALUES
(1, 'Rayleigh', 'sahil.sp0424@gmail.com', 'ded'),
(6, 'yo', '424@gmail.com', 'ded'),
(7, 'Rayleighr', 'RobertPirate@gmail.com', 'ded90G'),
(9, 'Rayleig', 'RoertPirate@gmail.com', 'ded90G'),
(10, 'Rayl', 'Roerirate@gmail.com', 'ded90G'),
(11, 'Jane', 'rate@gmail.com', 'ded90G'),
(12, 'Jan', 'rte@gmail.com', 'ded90G'),
(13, 'Ja', 're@gmail.com', 'ded90G'),
(14, 'Jane d', 'redx@gmail.com', 'ded90G'),
(15, 'Dedgc', 'Roberg', 'kugd'),
(17, 'Dedgf', 'Rober', 'kugd'),
(19, 'Dedgfd', 'Roberd', 'kugd'),
(27, 'Dedgfdc', 'Roberdd', 'kugd'),
(28, 'Dedgfdcdc', 'Roberddc', 'kugd'),
(30, 'Dedgfdcdcd', 'Roberddcc', 'kugd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
