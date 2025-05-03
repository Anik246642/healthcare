-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 05:37 PM
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
-- Database: `hygeon_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patient_id`, `doctor_id`, `appointment_date`, `appointment_time`, `status`, `created_at`, `description`) VALUES
(1, 3, 2, '2025-02-11', '14:00:00', 'approved', '2025-02-11 07:09:04', 'Throat ache and pain.'),
(2, 3, 2, '2025-02-25', '15:00:00', 'pending', '2025-02-25 06:16:47', 'fsdfdsfsdfsf'),
(3, 4, 6, '2025-05-08', '16:30:00', 'pending', '2025-05-03 15:19:24', 'mental issue');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '1 - Admin, 2 - Doctor, 3 - Patient',
  `doc_reg` varchar(255) DEFAULT NULL COMMENT 'Doctor registration number',
  `user_otp` int(4) DEFAULT NULL,
  `uid_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `doctor_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_type`, `doc_reg`, `user_otp`, `uid_created_at`, `doctor_category`) VALUES
(1, 'Gustavo Fringe', 'xyz@domain.com', '$2y$10$hc1PPSPqlIjBmHBpVaC3ieKA.7cCEImrH/qniA77JNXbYZLL3QIYK', 1, NULL, NULL, '2025-02-11 07:00:46', NULL),
(2, 'Mili Adhikary', 'abc@domain.com', '$2y$10$n6leL40LBrlf.mxoLKL5CelFo73pgUEIOWHa9u6mM8Y1q..mYjIey', 2, NULL, NULL, '2025-02-11 07:06:13', 'General Physician'),
(3, 'Ankush Paul', 'qwerty@domain.com', '$2y$10$pet8TVTvJH0mIVrzlgXiz.UyUvUlMvFr2qNOHTen1AwPqUBaZd6..', 3, NULL, NULL, '2025-02-11 07:07:18', NULL),
(4, 'Anik Ghosh', 'ghoshghosh246@gmail.com', '$2y$10$JAl87sd.LyAECvXp1ISc2ujMxDf7ZJSlTOd/Dk5xnbyDS3q.Fm5KW', 3, NULL, NULL, '2025-05-03 14:57:44', NULL),
(5, 'Riya Shaw', 'demo@domain.com', '$2y$10$enWd9YHhgAlsp.dbZzmRBOVJVy0mh1tQEG/r9jXkILlOX38rZer.i', 2, NULL, NULL, '2025-05-03 15:07:05', NULL),
(6, 'Manish  Saha', 'drmanish45@gmail.com', '$2y$10$qOm/CNa8mMbWrJ3s9ugqoe03OCqPuFV5Gt8GLVwNyebY5G4OBjB4W', 2, NULL, NULL, '2025-05-03 15:16:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_ip`
--

CREATE TABLE `user_ip` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `uid_login_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_ip`
--

INSERT INTO `user_ip` (`id`, `user_id`, `ip_address`, `uid_login_at`) VALUES
(1, 1, '::1', '2025-02-11 06:59:16'),
(2, 1, '::1', '2025-02-11 06:59:27'),
(3, 1, '::1', '2025-02-11 07:00:53'),
(4, 2, '::1', '2025-02-11 07:05:38'),
(5, 1, '::1', '2025-02-11 07:05:45'),
(6, 3, '::1', '2025-02-11 07:07:18'),
(7, 1, '::1', '2025-02-11 07:07:25'),
(8, 3, '::1', '2025-02-11 07:08:31'),
(9, 1, '::1', '2025-02-11 07:09:15'),
(10, 2, '::1', '2025-02-11 07:10:57'),
(11, 3, '::1', '2025-02-11 07:11:26'),
(12, 2, '::1', '2025-02-11 07:11:46'),
(13, 1, '::1', '2025-02-25 05:23:12'),
(14, 2, '::1', '2025-02-25 05:25:12'),
(15, 3, '::1', '2025-02-25 05:25:42'),
(16, 1, '::1', '2025-02-25 05:51:31'),
(17, 1, '::1', '2025-02-25 05:56:27'),
(18, 2, '::1', '2025-02-25 06:11:32'),
(19, 3, '::1', '2025-02-25 06:16:32'),
(20, 2, '::1', '2025-02-25 06:17:04'),
(21, 1, '::1', '2025-02-27 06:11:08'),
(22, 1, '::1', '2025-04-02 06:06:03'),
(23, 4, '::1', '2025-05-03 14:57:44'),
(24, 2, '::1', '2025-05-03 15:01:02'),
(25, 4, '::1', '2025-05-03 15:02:46'),
(26, 5, '::1', '2025-05-03 15:05:40'),
(27, 5, '::1', '2025-05-03 15:06:28'),
(28, 5, '::1', '2025-05-03 15:07:26'),
(29, 6, '::1', '2025-05-03 15:16:01'),
(30, 6, '::1', '2025-05-03 15:16:21'),
(31, 4, '::1', '2025-05-03 15:17:44'),
(32, 6, '::1', '2025-05-03 15:19:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `user_ip`
--
ALTER TABLE `user_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_ip`
--
ALTER TABLE `user_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_ip`
--
ALTER TABLE `user_ip`
  ADD CONSTRAINT `user_ip_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
