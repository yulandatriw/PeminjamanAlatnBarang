-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 12:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjamansv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_06_14_113024_create_peminjamanalat_table', 1),
(11, '2021_06_14_145853_create_peminjamanruang_table', 1),
(12, '2021_06_14_150133_create_admin_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjamanalat`
--

CREATE TABLE `peminjamanalat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `jumlah_alat` int(11) NOT NULL,
  `status_peminjaman` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_peminjaman` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamanalat`
--

INSERT INTO `peminjamanalat` (`id`, `nama_peminjam`, `nim_peminjam`, `no_hp`, `alamat`, `email_peminjam`, `tgl_peminjaman`, `tgl_pengembalian`, `jumlah_alat`, `status_peminjaman`, `ktm`, `surat_peminjaman`, `created_at`, `updated_at`) VALUES
(1, 'Dinda Putri Restika', 'M3119032', '081216213301', 'Sragen', 'dindarestika@gmail.com', '2021-06-29', '2021-06-30', 1, 'Disetujui', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 20:11:19', '2021-06-29 01:09:51'),
(2, 'Dita', 'M3119033', '081216213301', 'Boyolali', 'ditaros@gmail.com', '2021-06-29', '2021-06-30', 1, 'Ditolak', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 20:41:15', '2022-05-01 05:20:46'),
(3, 'Vili', 'M3119043', '081216213301', 'Tegal', 'vili@gmail.com', '2021-06-29', '2021-07-01', 1, 'ditolakkk', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 22:18:00', '2022-05-17 22:54:43'),
(4, 'Hafiidh', 'M3119045', '081216213301', 'Karanganyar', 'hafiidh@gmail.com', '2021-06-29', '2021-07-01', 1, 'Sedang diajukan', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 23:25:13', '2021-06-29 01:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `peminjamanruang`
--

CREATE TABLE `peminjamanruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_peminjam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `jumlah_ruang` int(11) NOT NULL,
  `status_peminjaman` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_peminjaman` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamanruang`
--

INSERT INTO `peminjamanruang` (`id`, `nama_peminjam`, `nim_peminjam`, `no_hp`, `alamat`, `email_peminjam`, `tgl_peminjaman`, `tgl_pengembalian`, `jumlah_ruang`, `status_peminjaman`, `ktm`, `surat_peminjaman`, `created_at`, `updated_at`) VALUES
(1, 'Dinda Putri Restika', 'M3119032', '081216213301', 'Sragen', 'dindarestika@gmail.com', '2021-06-29', '2021-06-30', 1, 'Sedang diajukan', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 20:24:22', '2021-06-29 01:11:35'),
(2, 'Dita', 'M3119033', '081216213301', 'Boyolali', 'ditaros@gmail.com', '2021-06-29', '2021-07-01', 1, 'Sedang diajukan', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 23:20:03', '2021-06-29 01:12:12'),
(3, 'Hafiidh', 'M3119045', '081216213301', 'Karanganyar', 'hafiidh@gmail.com', '2021-06-29', '2021-07-02', 1, 'Sedang diajukan', 'suratpinjam.pdf', 'suratpinjam.pdf', '2021-06-28 23:26:24', '2021-06-29 01:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dinda', 'admin@gmail.com', NULL, '$2y$10$XodjeGrpEKX3bqmw2mdxQO2TWxonxDIkRLfqXCQhskMp4ZvIg7Rkm', NULL, '2021-06-28 20:10:18', '2021-06-28 20:10:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peminjamanalat`
--
ALTER TABLE `peminjamanalat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjamanruang`
--
ALTER TABLE `peminjamanruang`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `peminjamanalat`
--
ALTER TABLE `peminjamanalat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjamanruang`
--
ALTER TABLE `peminjamanruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
