-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2025 pada 07.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblatihan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) UNSIGNED NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `Aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `kategori`, `slug`, `Aktif`, `created_at`, `updated_at`) VALUES
(1, 'Kategori A', 'kategori-a', 'Y', NULL, NULL),
(2, 'Kategori B', 'kategori-b', 'Y', NULL, NULL),
(3, 'Kategori C', 'kategori-c', 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) DEFAULT 'Noimage.jpg',
  `hits` int(11) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `status` enum('publish','draft') NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `slug`, `user_id`, `content`, `image`, `hits`, `aktif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Judul Postingan Pertama', 'judul-postingan-pertama', 1, 'Ini adalah konten postingan pertama', 'image1.jpg', 0, 'Y', 'publish', NULL, NULL),
(2, 'Judul Postingan Kedua', 'judul-postingan-kedua', 2, 'Ini adalah konten postingan kedua', 'image2.jpg', 0, 'Y', 'publish', NULL, NULL),
(3, 'Judul Postingan Ketiga', 'judul-postingan-ketiga', 1, 'Ini adalah konten postingan ketiga', 'image3.jpg', 0, 'Y', 'publish', NULL, NULL),
(4, 'Judul Postingan Keempat', 'judul-postingan-keempat', 2, 'Ini adalah konten postingan keempat', 'image4.jpg', 0, 'Y', 'publish', NULL, NULL),
(5, 'Judul Postingan Kelima', 'judul-postingan-kelima', 1, 'Ini adalah konten postingan kelima', 'image5.jpg', 0, 'Y', 'publish', NULL, NULL),
(6, 'Judul Postingan Keenam', 'judul-postingan-keenam', 2, 'Ini adalah konten postingan keenam', 'image6.jpg', 0, 'Y', 'publish', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
