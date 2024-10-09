-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 05:07 PM
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
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `status`, `created_at`) VALUES
(1, 'Pop', 'active', '2024-09-09 14:03:50.000000'),
(2, 'Rock', 'inactive', '2024-09-09 14:03:50.000000'),
(3, 'Hip-Hop', 'active', '2024-09-09 14:03:50.000000'),
(4, 'Jazz', 'inactive', '2024-09-09 14:03:50.000000'),
(5, 'Classical', 'active', '2024-09-09 14:03:50.000000');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category_id` int(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `description`, `author`, `category_id`, `created_at`) VALUES
(1, 'Song of the Ocean', 'A calm and soothing melody inspired by the sea.', 'John Doe', 5, '2024-09-09 14:02:10.000000'),
(2, 'Rock Anthem', 'A high-energy rock anthem to get the crowd moving.', 'Jane Smith', 2, '2024-09-09 14:02:10.000000'),
(3, 'Hip-Hop Vibes', 'A smooth and rhythmic track with an urban feel.', 'MC Star', 5, '2024-09-09 14:02:10.000000'),
(4, 'Jazz Nights', 'A soothing jazz composition perfect for late nights.', 'Miles Davis', 3, '2024-09-09 14:02:10.000000'),
(5, 'Classical Harmony', 'A beautiful classical piece that resonates with peace.', 'Ludwig van Beethoven', 4, '2024-09-09 14:02:10.000000'),
(6, 'Summer Breeze', 'An upbeat song that captures the essence of summer.', 'Sarah Taylor', 1, '2024-09-09 14:02:10.000000'),
(7, 'Electric Dreams', 'A futuristic track filled with electronic beats.', 'DJ Future', 4, '2024-09-09 14:02:10.000000'),
(8, 'Indie Love', 'A heartfelt indie track about love and life.', 'Alex Turner', 2, '2024-09-09 14:02:10.000000'),
(9, 'Blues Revival', 'A modern take on traditional blues music.', 'B.B. King', 1, '2024-09-09 14:02:10.000000'),
(10, 'Pop Sensation', 'A catchy pop tune that stays in your head for days.', 'Taylor Swift', 5, '2024-09-09 14:02:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
