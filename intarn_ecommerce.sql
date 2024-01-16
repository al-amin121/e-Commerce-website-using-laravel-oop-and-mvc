-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 06:59 AM
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
-- Database: `intarn_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'wach clock', 'admin-assets/category-image/728520550.jpg', 1, '2023-12-19 09:13:53', '2023-12-19 23:35:28'),
(7, 'Leptop', 'admin-assets/category-image/1284870106.jpg', 1, '2023-12-19 22:35:07', '2023-12-19 22:35:07'),
(9, 'man shart', 'admin-assets/category-image/164410101.jpg', 1, '2023-12-20 08:47:29', '2023-12-20 08:47:29'),
(10, 'Food', 'admin-assets/category-image/347974787.jpg', 1, '2023-12-20 09:00:54', '2023-12-20 09:00:54');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_18_114550_create_sessions_table', 1),
(7, '2023_12_19_050443_create_categories_table', 2),
(8, '2023_12_20_045153_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Leptop asus', 7, '500', 'This is laptop  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda consequatur deleniti distinctio dolor dolore doloremque eligendi error excepturi, illo itaque labore modi odit omnis, quaerat quidem quisquam rem repellendus repudiandae sapiente sit soluta vitae. Distinctio impedit iste iure nesciunt nihil perspiciatis praesentium sequi sunt tempore! Laboriosam sed tenetur vero!', 'admin-assets/product-image/1930841981.jpg', 0, '2023-12-20 01:12:17', '2023-12-20 09:04:17'),
(3, 'T shart', 9, '499', 'T shart  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda consequatur deleniti distinctio dolor dolore doloremque eligendi error excepturi, illo itaque labore modi odit omnis, quaerat quidem quisquam rem repellendus repudiandae sapiente sit soluta vitae. Distinctio impedit iste iure nesciunt nihil perspiciatis praesentium sequi sunt tempore! Laboriosam sed tenetur vero!', 'admin-assets/product-image/706341108.jpg', 1, '2023-12-20 08:47:50', '2023-12-20 09:04:02'),
(6, 'wach clock', 6, '9999', 'wach clock  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda consequatur deleniti distinctio dolor dolore doloremque eligendi error excepturi, illo itaque labore modi odit omnis, quaerat quidem quisquam rem repellendus repudiandae sapiente sit soluta vitae. Distinctio impedit iste iure nesciunt nihil perspiciatis praesentium sequi sunt tempore! Laboriosam sed tenetur vero!', 'admin-assets/product-image/264190137.jpg', 1, '2023-12-20 08:50:56', '2023-12-20 09:03:50'),
(7, 'wach clock-2', 6, '499', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda consequatur deleniti distinctio dolor dolore doloremque eligendi error excepturi, illo itaque labore modi odit omnis, quaerat quidem quisquam rem repellendus repudiandae sapiente sit soluta vitae. Distinctio impedit iste iure nesciunt nihil perspiciatis praesentium sequi sunt tempore! Laboriosam sed tenetur vero!', 'admin-assets/product-image/1414966583.webp', 1, '2023-12-20 09:00:37', '2023-12-20 09:03:34'),
(8, 'Tea', 10, '454', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda consequatur deleniti distinctio dolor dolore doloremque eligendi error excepturi, illo itaque labore modi odit omnis, quaerat quidem quisquam rem repellendus repudiandae sapiente sit soluta vitae. Distinctio impedit iste iure nesciunt nihil perspiciatis praesentium sequi sunt tempore! Laboriosam sed tenetur vero!', 'admin-assets/product-image/1739359614.jpg', 1, '2023-12-20 09:01:25', '2023-12-20 09:03:22'),
(9, 'Ruti', 10, '500', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, assumenda consequatur deleniti distinctio dolor dolore doloremque eligendi error excepturi, illo itaque labore modi odit omnis, quaerat quidem quisquam rem repellendus repudiandae sapiente sit soluta vitae. Distinctio impedit iste iure nesciunt nihil perspiciatis praesentium sequi sunt tempore! Laboriosam sed tenetur vero!', 'admin-assets/product-image/533676928.jpg', 1, '2023-12-20 09:01:49', '2023-12-20 09:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5O1tTlq1SCPe37VphN6R9PdmofyF7Cew4TtzUVXH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaUN3anQ2U2RhTzd1QUdDNWE5elB0Tm85UkE3b1ozNFd1akpGcWM3SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJFgxWE0uN0RDclpSSEJEVTRtblBaZWViRXNUbUFrLzE4NHlZQmYwQ0QwTUpDWUVjVlZDd05DIjt9', 1703138168),
('YB4dP7HnAlKcruyFfTAdZQ3ckCCHbOa930rax5rz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGQ4d0h0S2toU3hjYTIzSHlucVhXRTNpaEl6YjVMeUptYkE3cTBlOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L2NhdGVnb3J5LzEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1703131076);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$X1XM.7DCrZRHBDU4mnPZeebEsTmAk/184yYBf0CD0MJCYEcVVCwNC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-18 05:54:26', '2023-12-18 05:54:26'),
(3, 'user', 'user@gmail.com', NULL, '$2y$12$UIkLQvLgwcOBcQIi34WNb.W9tIxVhRTqA0fw7HhkTPFQyrjPkY/1y', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-20 23:34:41', '2023-12-20 23:34:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
