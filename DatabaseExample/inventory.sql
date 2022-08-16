-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 01:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Simple Category', '2022-08-17 07:42:38', '2022-08-12 07:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_08_16_030946_create_categories_table', 1),
(10, '2022_08_16_030956_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('04ab9ad78c3449af1ffde526b6a351c532ffaf4168ca2d0a61d799885a7618c1e98e9690e4e04353', 5, 1, 'inventory_client', '[]', 0, '2022-08-16 05:31:07', '2022-08-16 05:31:07', '2023-08-16 11:31:07'),
('0d8070ba23a273f95fb0a1fa98e21fc29100dc279155d43da5e5ffec89d3014da9108307cb370e19', 3, 1, 'inventory_client', '[]', 0, '2022-08-16 05:28:38', '2022-08-16 05:28:38', '2023-08-16 11:28:38'),
('188bdb8f48c2469cc6de9deac1cc9fa8d0277513b9d3915cd427a6167e69d1f1a608d2f4f25f42ec', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:30:37', '2022-08-16 04:30:37', '2023-08-16 10:30:37'),
('1bb2aaf5b9ea07d548834061d2b38c1d13e8630650bd2857c25760108a89ebbd3c98755d07e93490', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:00:51', '2022-08-16 05:00:51', '2023-08-16 11:00:51'),
('2ce17f1011ff28b36334a80f16273e39c6124ff45250210bfcc8a71dae99f3ee62f783833f3e6ae2', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:19:04', '2022-08-16 05:19:04', '2023-08-16 11:19:04'),
('399f6ea8a246b6fd1d50db1afae22f44275159b37187ab0b83c5718bb619f7ab18190c87b7a27743', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:33:43', '2022-08-16 05:33:43', '2023-08-16 11:33:43'),
('42afc8d9ad0ff84e75ab459b79dccfed1ae9d8ad9a27f59044f960166d669554b21972b694ff7639', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:19:17', '2022-08-16 05:19:17', '2023-08-16 11:19:17'),
('4eb5e52266be55984740e289a9ead0f46f1402716ae3d7cf5e19654283cdff7dd1d6d80b100da48a', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:28:03', '2022-08-16 04:28:03', '2023-08-16 10:28:03'),
('5227433563d7c926b4c69e6be29534a0700dcfd3cfab6ecb6d5f722bd037f1242643ac5f806b8e67', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:46:23', '2022-08-16 04:46:23', '2023-08-16 10:46:23'),
('588eb30db8d5d0de5691a9bc41399e31f343f9e2fd42247857bd6d38cd1b6e3a722e2f34ab4b336e', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:17:17', '2022-08-16 05:17:17', '2023-08-16 11:17:17'),
('5faa02ef039248a970efdae21c48f2f19861a20ffee1a6a5a3445e87206a160dc767f9dbf6bd19ea', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:24:45', '2022-08-16 04:24:45', '2023-08-16 10:24:45'),
('7ccefe9ef29607aac6bfaf3671b351b298018914abfc6151c9e0d0089be1fe7364d88d96807ecc83', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:35:03', '2022-08-16 05:35:03', '2023-08-16 11:35:03'),
('852e9ffe44b01783176c3440bc5b00c8b4940bd947ca99ac8c6e53eff4622f8dedb8eeccae36f988', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:32:30', '2022-08-16 05:32:30', '2023-08-16 11:32:30'),
('90216db03a60c5efba245b265d93b902f263f31d499f8183fb1764a3719bd173c5044ed45bfd2fa0', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:35:56', '2022-08-16 04:35:56', '2023-08-16 10:35:56'),
('96ae39f0f62288a08c9db4d91fc072136f1b6515f8ca2cf1e6196f12b21574d6ab5414ec8378d45f', 1, 1, 'inventory', '[]', 0, '2022-08-16 00:23:10', '2022-08-16 00:23:10', '2023-08-16 06:23:10'),
('9cd3395de965a487e0635dd5d7fefd6d782ca6aaf17586f6e54894a22ab415b0ec96d1983938c5c2', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:30:19', '2022-08-16 05:30:19', '2023-08-16 11:30:19'),
('abb7ce99684ddb5017b66c706c057df59088d1d024c9e2ee58850a96a1e8818615bd2e8963bb2720', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:42:24', '2022-08-16 04:42:24', '2023-08-16 10:42:24'),
('b47d0550b623794a6fac8ae516711674743c644da3c02bbab45004de37892dc9c6ebd160180dd9b6', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:03:52', '2022-08-16 05:03:52', '2023-08-16 11:03:52'),
('c7750fdacb7a2f20f74830c99eb139418b6d76d1dadd3c0a67df246d62e74cb6adf1d3202f6c1c18', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:47:42', '2022-08-16 04:47:42', '2023-08-16 10:47:42'),
('cb5b3798465a7825539be1b2e1f0d14e3a18dcb48061dea766ba89eff2e079f0ca09d90f18d76bde', 4, 1, 'inventory_client', '[]', 0, '2022-08-16 05:30:35', '2022-08-16 05:30:35', '2023-08-16 11:30:35'),
('d20825a24d4089c58e1c039b27dc8a0f69bd2f50ed838d3e2eeedccfa2065ecd1b4e6991be543fac', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:37:05', '2022-08-16 04:37:05', '2023-08-16 10:37:05'),
('e605eee11ff4f9441ab30613515f434aef67e72bf796f63401be74317e7d6296e5bbd9d190c8ef85', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:18:09', '2022-08-16 05:18:09', '2023-08-16 11:18:09'),
('f0bf13be518da75f0455ba2f19d7b1e54c3d1a744474d058d057d5a85802e7047d67a43c402e7f46', 2, 1, 'inventory', '[]', 0, '2022-08-16 04:33:11', '2022-08-16 04:33:11', '2023-08-16 10:33:11'),
('f166ff4690d27128604cdc5abee4114dcd541797cf2b69d577544ce37eb128575e79407f5b7ec46c', 2, 1, 'inventory', '[]', 0, '2022-08-16 05:08:44', '2022-08-16 05:08:44', '2023-08-16 11:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'kkmewAS05lUrY2Wphxal5NM6QaSqBpGp2FgBlBMe', NULL, 'http://localhost', 1, 0, 0, '2022-08-16 00:23:04', '2022-08-16 00:23:04'),
(2, NULL, 'Laravel Password Grant Client', '7VdemmC3BzCmQGojZvrPLM38iukkwExyfONyC3E1', 'users', 'http://localhost', 0, 1, 0, '2022-08-16 00:23:04', '2022-08-16 00:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-16 00:23:04', '2022-08-16 00:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `detail`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 1, 'asdasd', 'adsasd', 34.00, 3434, '2022-08-16 02:53:06', '2022-08-16 02:53:06'),
(5, 1, 'zahid_office_computer', 'adasdsad', 324.00, 334, '2022-08-16 03:14:07', '2022-08-16 03:14:07'),
(7, 1, 'Test', 'TTTTTTTTTT', 333.00, 333, '2022-08-16 05:35:29', '2022-08-16 05:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'aiubzahdi@gmail.com', NULL, '$2y$10$I2eZvthnxxsfgqWuOSi6dOp00iQ8PPFqi1S8Zw6mxCbn77/6B8D3G', NULL, '2022-08-16 00:20:19', '2022-08-16 00:20:19'),
(2, 'Test', 'aiubzahdi22@gmail.com', NULL, '$2y$10$D/gQ5Jvtgaj8wYO727dpZe5oTG/L6JTd5.SLLrVZF1od2mqO322IW', NULL, '2022-08-16 00:21:03', '2022-08-16 00:21:03'),
(3, 'Testt', 'aa@gmail.com', NULL, '$2y$10$qbJJ1o8LsufkohKCISY4FOYZAwvlU2H5Nz7x7M5iQZRB5.Zmn3Sz6', NULL, '2022-08-16 05:28:38', '2022-08-16 05:28:38'),
(4, 'asdasdasd', 'ffff@gmail.com', NULL, '$2y$10$G0e3F95JQiXo7Q36OiIb7ubWynXKz.gYQXxDRl/1si1C3Nep6w2RC', NULL, '2022-08-16 05:30:35', '2022-08-16 05:30:35'),
(5, 'asd', 'aaaaa@gmail.com', NULL, '$2y$10$gy3Md9.hhDGsiIxxsS5al.dnDi79ppnzT6PIOFW9O3nkjflEwCMLq', NULL, '2022-08-16 05:31:07', '2022-08-16 05:31:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
