-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 31. Jul 2025 um 10:26
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mini_garage`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-tom@tom.de|127.0.0.1', 'i:1;', 1753818773),
('laravel-cache-tom@tom.de|127.0.0.1:timer', 'i:1753818773;', 1753818773);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_images`
--

CREATE TABLE `car_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_model_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `car_images`
--

INSERT INTO `car_images` (`id`, `car_model_id`, `image_path`, `created_at`, `updated_at`) VALUES
(19, 11, 'models/oYD5c1gNjNcVmN55MkONvzG97NfRLLfnXdRJW075.webp', '2025-07-31 05:06:16', '2025-07-31 05:06:16'),
(20, 11, 'models/zzjsg7bSIUTIJRcJomJb4LTog3EVpZvxx9em318N.webp', '2025-07-31 05:06:16', '2025-07-31 05:06:16'),
(21, 11, 'models/ASaAM3TDm4LMYirvZCcoxkn9Dvw07ofwocXbrdQQ.webp', '2025-07-31 05:06:16', '2025-07-31 05:06:16'),
(22, 11, 'models/xGHw6jho8W04PaS8kf8HYVDLfGygmQcZkmU0lYN8.webp', '2025-07-31 05:06:16', '2025-07-31 05:06:16'),
(23, 12, 'models/xXy1ilRQuWfqRHfpmRmJAXmEN3HzZJhQ8DUqQH2H.webp', '2025-07-31 05:07:26', '2025-07-31 05:07:26'),
(24, 12, 'models/C1PkC4st9REOGJetGciYSO93I1zKTPwe51vXyiZ5.webp', '2025-07-31 05:07:26', '2025-07-31 05:07:26'),
(25, 12, 'models/2oyQkW4gybsWf002Qr1GhbikA4SJp0FE5F50yrFG.webp', '2025-07-31 05:07:26', '2025-07-31 05:07:26'),
(26, 12, 'models/xuSX3JWY7OOp8XYZoc3Tt92i3lTZXCN6Dj3FbZEu.webp', '2025-07-31 05:07:26', '2025-07-31 05:07:26'),
(27, 12, 'models/lrMJ9FlsR8YUjVWBaATLrPGXDCgcOV0pHW3QGHBw.webp', '2025-07-31 05:07:26', '2025-07-31 05:07:26'),
(28, 13, 'models/1Q7qur1QAj7JtN7L08vOH2JYNlHaqxo1IkRelwdN.jpg', '2025-07-31 05:08:58', '2025-07-31 05:08:58'),
(29, 13, 'models/ledKkAPMafo2qbjU71W5aJHNiFN9LsrAot2alCyN.jpg', '2025-07-31 05:08:58', '2025-07-31 05:08:58'),
(30, 13, 'models/rtaHVWQFmF6MfGBCVPogTZP1yXTtEh22KDNPkw9n.jpg', '2025-07-31 05:08:58', '2025-07-31 05:08:58'),
(31, 13, 'models/mUkbq6sgBgxWGzJpREL1iuB7xlMFdtnPap7OzZbF.jpg', '2025-07-31 05:08:58', '2025-07-31 05:08:58'),
(32, 14, 'models/4uCLKtqL92NYMTtCWm0vyC4qqL5AUwLLK1Q977xV.jpg', '2025-07-31 05:10:01', '2025-07-31 05:10:01'),
(33, 14, 'models/1oozQQbkXOb8zEFhRIizFiMt1NVSHyxgN9WpQqEZ.jpg', '2025-07-31 05:10:01', '2025-07-31 05:10:01'),
(34, 14, 'models/XfTOXTMmOkqIO6X10x1gPmt0ckoms9d1Cu0eJHeu.jpg', '2025-07-31 05:10:01', '2025-07-31 05:10:01'),
(35, 14, 'models/Hb5X73yBIaAE5OOkgUFE0BYbh2H8Y2chH07BKe4D.jpg', '2025-07-31 05:10:01', '2025-07-31 05:10:01'),
(36, 16, 'models/g3YIFDG15AZz44aQYCKEooNzgghDI32nxyVPw9k7.jpg', '2025-07-31 05:11:25', '2025-07-31 05:11:25'),
(37, 16, 'models/JRMp18lJmQSMdjJyL6rcyQtFLYzuSrpdVAxHylO2.jpg', '2025-07-31 05:11:25', '2025-07-31 05:11:25'),
(38, 16, 'models/Rtv9tp4x2qMGhvLMJBfWHWHNRASBEZyX9J33pr43.jpg', '2025-07-31 05:11:25', '2025-07-31 05:11:25'),
(39, 16, 'models/TqILMSpAnNLOL6veWnNeo1t83DC7eakinkF4rS9w.jpg', '2025-07-31 05:11:25', '2025-07-31 05:11:25'),
(41, 18, 'models/Lxk2IHOCxbYiT9Fp4u6ivVQAn58VHVZmIcTsuPTt.jpg', '2025-07-31 05:14:22', '2025-07-31 05:14:22'),
(44, 21, 'models/WNbjhTNQcRpj7X11gsmgwX3gkRRBri10q0didfmk.webp', '2025-07-31 05:33:50', '2025-07-31 05:33:50'),
(45, 21, 'models/4dorLPIo5DjTseEjmKMSuKVztoAWusQMhplZzJ2w.webp', '2025-07-31 05:33:50', '2025-07-31 05:33:50'),
(46, 21, 'models/n5N74wCsjcUi9byrexWOpX4iEhZfOpEHQlolVuiJ.webp', '2025-07-31 05:33:50', '2025-07-31 05:33:50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_models`
--

CREATE TABLE `car_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `car_models`
--

INSERT INTO `car_models` (`id`, `user_id`, `title`, `description`, `image_path`, `created_at`, `updated_at`) VALUES
(11, 3, 'BMW M4 GT3', 'First upload', '', '2025-07-31 05:06:16', '2025-07-31 05:06:16'),
(12, 3, 'Subaru BRZ', 'Tamiya Kit', '', '2025-07-31 05:07:26', '2025-07-31 05:07:26'),
(13, 1, 'Mitsubish GTO twin turbo', 'Last Kit i made', '', '2025-07-31 05:08:58', '2025-07-31 05:08:58'),
(14, 1, 'Toyota Supra 94\'', 'JDM', '', '2025-07-31 05:10:01', '2025-07-31 05:10:01'),
(16, 1, 'Nissan Skyline 90\'s', 'Another one to my JDM collection', '', '2025-07-31 05:11:25', '2025-07-31 05:11:25'),
(18, 1, 'Mazda RX-7 92\'', 'My first Kit', '', '2025-07-31 05:14:22', '2025-07-31 05:14:22'),
(21, 2, 'LBWK Ferrari F40', NULL, '', '2025-07-31 05:33:50', '2025-07-31 05:33:50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_model_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `comments`
--

INSERT INTO `comments` (`id`, `car_model_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(16, 11, 1, 'Nice!!!', '2025-07-31 05:21:02', '2025-07-31 05:21:02');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `failed_jobs`
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
-- Tabellenstruktur für Tabelle `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2025_07_26_145558_create_car_models_table', 1),
(9, '2025_07_28_122522_create_comments_table', 2),
(10, '2025_07_28_133114_create_car_images_table', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sessions`
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
-- Daten für Tabelle `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('N87QJQKkfrXDszSKhvU4224jvmIxyp4liSwKNNAe', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDI5MThlSzI3a3NYTWRXSkdVd043eEVTNVpoTUR5a3hnWmQ4SjV4QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1753950287);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'alex@alex.de', NULL, '$2y$12$WLAqOscLaVzCgXL4hQz/qeWu6jPf3vg4i4pQSVCjRqHphrSl3sG8G', 'm1HuTmDChEkUFeJ12YrFoGEsjNevVeyyqPMoIvVjTnIk6XUs9QFlh94fxylA', '2025-07-28 11:12:22', '2025-07-28 11:12:22'),
(2, 'Hugo', 'hugo@hugo.de', NULL, '$2y$12$/rQSJ5W7pznrEQCMwxZJpeMUwti460Oobz4Wjcwi78BlLyhPYRJHW', NULL, '2025-07-28 11:12:44', '2025-07-28 11:12:44'),
(3, 'Tom', 'tom@tom.de', NULL, '$2y$12$WVy97ylamEXXux5GGNfzX.RIs1WUuA6Wqf5MA/8eCosASEDGwDQ..', NULL, '2025-07-31 05:04:19', '2025-07-31 05:04:19');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indizes für die Tabelle `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indizes für die Tabelle `car_images`
--
ALTER TABLE `car_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_images_car_model_id_foreign` (`car_model_id`);

--
-- Indizes für die Tabelle `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_models_user_id_foreign` (`user_id`);

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_car_model_id_foreign` (`car_model_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indizes für die Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indizes für die Tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indizes für die Tabelle `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indizes für die Tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `car_images`
--
ALTER TABLE `car_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT für Tabelle `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `car_images`
--
ALTER TABLE `car_images`
  ADD CONSTRAINT `car_images_car_model_id_foreign` FOREIGN KEY (`car_model_id`) REFERENCES `car_models` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `car_models`
--
ALTER TABLE `car_models`
  ADD CONSTRAINT `car_models_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_car_model_id_foreign` FOREIGN KEY (`car_model_id`) REFERENCES `car_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
