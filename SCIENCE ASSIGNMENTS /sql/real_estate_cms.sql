-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 08:36 AM
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
-- Database: `real_estate_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'Master Admin', 'diana.prince@example.com', '7e6063b80031e390cf169551f65aa946');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` longtext NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', '482c811da5d5b4bc6d497ffa98491e38', '555-0101'),
(2, 'Bob Smiths', 'bob.smith@example.com', '96b33694c4bb7dbd07391e0be54745fb', '555-0202'),
(3, 'Charlie Brown', 'charlie.brown@example.com', '7d347cf0ee68174a3588f6cba31b8a67', '555-0303'),
(4, 'Diana Prince', 'diana.prince@example.com', '7e6063b80031e390cf169551f65aa946', '555-0404'),
(5, 'Evan Lee', 'evan.lee@example.com', '31698d2b66690d88ea5e10db4463a325', '555-0505'),
(6, 'Igor Cantrell', 'kehe@mailinator.com', '6b72b1a474a2e1621b3fe68ba3841d2c', '+1 (257) 528-58');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `claim` int(11) NOT NULL DEFAULT 0,
  `agent_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `property_id`, `firstName`, `lastName`, `message`, `phone`, `email`, `claim`, `agent_id`, `status`, `created_at`) VALUES
(5, NULL, 'Tanisha', 'Stevens', 'Et omnis nemo aperia', '+1 (849) 838-3693', 'tifud@mailinator.com', 1, 4, 1, '2024-12-09 03:30:54'),
(6, NULL, 'Tanisha', 'Stevens', 'Et omnis nemo aperia', '+1 (849) 838-3693', 'tifud@mailinator.com', 1, 0, 0, '2024-12-09 03:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `type` enum('rent','sell') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `images`, `description`, `price`, `address`, `agent_id`, `type`, `created_at`) VALUES
(7, 'Cupidatat neque reruuuuu', '[\"\\/uploads\\/hero1.jpg\"]', 'Maiores anim laborum', 887.00, 'Labore incididunt al', 1, 'rent', '2024-10-04 05:44:04'),
(9, 'Modern Family Home', '[\"\\/uploads\\/hero2.jpeg\"]', 'A beautiful modern family home with spacious garden.', 35000.00, '123 Maple St, Springfield', 4, 'sell', '2024-10-25 22:32:03'),
(10, 'Downtown Condo', '[\"\\/uploads\\/hero3.jpg\"]', 'Luxury condo in the heart of downtown with stunning views.', 450000.00, '789 Elm St, Metropolis', 2, 'rent', '2024-10-25 22:32:03'),
(12, 'Quia elit dolorem i', '[\"\\/uploads\\/1733785716_dc30cc6bf126177ef5fc.png\"]', 'Aute dolor ab ab con', 489.00, 'Officiis voluptas ea', 1, 'rent', '2024-12-09 23:08:36'),
(13, 'In omnis illo ullam ', '[\"\\/uploads\\/1733786020_98518a462e94ab919835.png\"]', 'Dolores qui fugit u', 615.00, 'Qui perferendis cons', 1, 'rent', '2024-12-09 23:13:40'),
(14, 'Dolor et ex enim aut', '[\"\\/uploads\\/1733786261_2d8d82aadf236bb9d1f6.png\"]', 'In quaerat exercitat', 425.00, 'Aut sit voluptatem e', 1, 'rent', '2024-12-09 23:17:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
