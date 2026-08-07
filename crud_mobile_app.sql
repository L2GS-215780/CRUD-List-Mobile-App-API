-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2026 at 04:17 PM
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
-- Database: `crud_mobile_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud_list`
--

CREATE TABLE `crud_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crud_list`
--

INSERT INTO `crud_list` (`id`, `name`, `description`, `created_at`, `update_at`) VALUES
(1, 'Buy Groceries', 'Purchase essential groceries such as rice, eggs, vegetables, milk, bread, and other household necessities for the week.', '2026-08-07 13:22:33', NULL),
(2, 'Clean the Room', 'Organize your workspace, make the bed, vacuum the floor, and throw away any unnecessary clutter.', '2026-08-07 13:22:33', NULL),
(3, 'Water the Plants', 'Water all indoor and outdoor plants, remove any dry leaves, and check if they need additional care.', '2026-08-07 13:22:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud_list`
--
ALTER TABLE `crud_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud_list`
--
ALTER TABLE `crud_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
