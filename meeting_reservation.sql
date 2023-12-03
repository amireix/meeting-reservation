-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 11:20 PM
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
-- Database: `meeting_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2023_12_01_123324_make_rooms_table', 1),
(24, '2023_12_01_123656_make_slots_table', 1),
(25, '2023_12_01_131751_make_reservation_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `slot_id`, `name`, `phone`, `email`, `company_name`, `created_at`, `updated_at`) VALUES
(1, 33, 'sec-reservation', '2', 'qwe@f.com', 'ami', NULL, NULL),
(2, 34, 'sec-reservation', '2', 'qwe@f.com', 'ami', NULL, NULL),
(3, 9, 'first-reservation', '2', 'qwe@f.com', 'ami', NULL, NULL),
(4, 8, 'first-reservation', '2', 'qwe@f.com', 'ami', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'First Room', '', NULL, NULL),
(2, 'Second Room', '', NULL, NULL),
(3, 'Third Room', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `start`, `end`, `room_id`, `created_at`, `updated_at`) VALUES
(1, '09:00 PM', '09:30 PM', 1, NULL, NULL),
(2, '09:30 PM', '10:00 PM', 1, NULL, NULL),
(3, '10:00 PM', '10:30 PM', 1, NULL, NULL),
(4, '10:30 PM', '11:00 PM', 1, NULL, NULL),
(5, '11:00 PM', '11:30 PM', 1, NULL, NULL),
(6, '11:30 PM', '12:00 AM', 1, NULL, NULL),
(7, '12:00 AM', '12:30 AM', 1, NULL, NULL),
(8, '12:30 AM', '01:00 AM', 1, NULL, NULL),
(9, '01:00 AM', '01:30 AM', 1, NULL, NULL),
(10, '01:30 AM', '02:00 AM', 1, NULL, NULL),
(11, '02:00 AM', '02:30 AM', 1, NULL, NULL),
(12, '02:30 AM', '03:00 AM', 1, NULL, NULL),
(13, '03:00 AM', '03:30 AM', 1, NULL, NULL),
(14, '03:30 AM', '04:00 AM', 1, NULL, NULL),
(15, '04:00 AM', '04:30 AM', 1, NULL, NULL),
(16, '04:30 AM', '05:00 AM', 1, NULL, NULL),
(17, '05:00 AM', '05:30 AM', 1, NULL, NULL),
(18, '05:30 AM', '06:00 AM', 1, NULL, NULL),
(19, '06:00 AM', '06:30 AM', 1, NULL, NULL),
(20, '06:30 AM', '07:00 AM', 1, NULL, NULL),
(21, '07:00 AM', '07:30 AM', 1, NULL, NULL),
(22, '07:30 AM', '08:00 AM', 1, NULL, NULL),
(23, '08:00 AM', '08:30 AM', 1, NULL, NULL),
(24, '08:30 AM', '09:00 AM', 1, NULL, NULL),
(25, '09:00 PM', '09:30 PM', 2, NULL, NULL),
(26, '09:30 PM', '10:00 PM', 2, NULL, NULL),
(27, '10:00 PM', '10:30 PM', 2, NULL, NULL),
(28, '10:30 PM', '11:00 PM', 2, NULL, NULL),
(29, '11:00 PM', '11:30 PM', 2, NULL, NULL),
(30, '11:30 PM', '12:00 AM', 2, NULL, NULL),
(31, '12:00 AM', '12:30 AM', 2, NULL, NULL),
(32, '12:30 AM', '01:00 AM', 2, NULL, NULL),
(33, '01:00 AM', '01:30 AM', 2, NULL, NULL),
(34, '01:30 AM', '02:00 AM', 2, NULL, NULL),
(35, '02:00 AM', '02:30 AM', 2, NULL, NULL),
(36, '02:30 AM', '03:00 AM', 2, NULL, NULL),
(37, '03:00 AM', '03:30 AM', 2, NULL, NULL),
(38, '03:30 AM', '04:00 AM', 2, NULL, NULL),
(39, '04:00 AM', '04:30 AM', 2, NULL, NULL),
(40, '04:30 AM', '05:00 AM', 2, NULL, NULL),
(41, '05:00 AM', '05:30 AM', 2, NULL, NULL),
(42, '05:30 AM', '06:00 AM', 2, NULL, NULL),
(43, '06:00 AM', '06:30 AM', 2, NULL, NULL),
(44, '06:30 AM', '07:00 AM', 2, NULL, NULL),
(45, '07:00 AM', '07:30 AM', 2, NULL, NULL),
(46, '07:30 AM', '08:00 AM', 2, NULL, NULL),
(47, '08:00 AM', '08:30 AM', 2, NULL, NULL),
(48, '08:30 AM', '09:00 AM', 2, NULL, NULL),
(49, '09:00 PM', '09:30 PM', 3, NULL, NULL),
(50, '09:30 PM', '10:00 PM', 3, NULL, NULL),
(51, '10:00 PM', '10:30 PM', 3, NULL, NULL),
(52, '10:30 PM', '11:00 PM', 3, NULL, NULL),
(53, '11:00 PM', '11:30 PM', 3, NULL, NULL),
(54, '11:30 PM', '12:00 AM', 3, NULL, NULL),
(55, '12:00 AM', '12:30 AM', 3, NULL, NULL),
(56, '12:30 AM', '01:00 AM', 3, NULL, NULL),
(57, '01:00 AM', '01:30 AM', 3, NULL, NULL),
(58, '01:30 AM', '02:00 AM', 3, NULL, NULL),
(59, '02:00 AM', '02:30 AM', 3, NULL, NULL),
(60, '02:30 AM', '03:00 AM', 3, NULL, NULL),
(61, '03:00 AM', '03:30 AM', 3, NULL, NULL),
(62, '03:30 AM', '04:00 AM', 3, NULL, NULL),
(63, '04:00 AM', '04:30 AM', 3, NULL, NULL),
(64, '04:30 AM', '05:00 AM', 3, NULL, NULL),
(65, '05:00 AM', '05:30 AM', 3, NULL, NULL),
(66, '05:30 AM', '06:00 AM', 3, NULL, NULL),
(67, '06:00 AM', '06:30 AM', 3, NULL, NULL),
(68, '06:30 AM', '07:00 AM', 3, NULL, NULL),
(69, '07:00 AM', '07:30 AM', 3, NULL, NULL),
(70, '07:30 AM', '08:00 AM', 3, NULL, NULL),
(71, '08:00 AM', '08:30 AM', 3, NULL, NULL),
(72, '08:30 AM', '09:00 AM', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slot_id` (`slot_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slots_room_id_foreign` (`room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_slot_id_foreign` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slots`
--
ALTER TABLE `slots`
  ADD CONSTRAINT `slots_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
