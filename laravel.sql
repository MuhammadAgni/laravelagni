-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2019 pada 15.27
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(10) NOT NULL,
  `nama` varchar(190) NOT NULL,
  `alamat` varchar(190) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `notelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `alamat`, `jabatan`, `notelp`) VALUES
(12341, 'HERRY SOFIAN, M.KOM', 'JL ELANG NO 11', 'LEKTOR', '08123456789'),
(12342, 'HERU CAHYA, MT', 'JL AFFANDI NO 17', 'ASS AHLI', '08123456788'),
(12343, 'PAULUS INSAP, Phd', 'JL RINGROAD NO 89', 'LEKTOR', '08123456787'),
(12344, 'NOVRIDO, MT', 'JL ADI SUCIPTO', 'LEKTOR', '08123456786'),
(12345, 'AGUS SASMITO, ST', 'JL MERAPI NO23', 'ASS AHLI', '08123456785');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `kd_jur` varchar(3) NOT NULL,
  `nama_jur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `kd_jur`, `nama_jur`) VALUES
(0, 'TK', 'TEKNIK KOMPUTER'),
(0, 'TKJ', 'TEKNIK KOMPUTER JARI'),
(0, 'TM', 'TEKNIK MESIN'),
(0, 'TS', 'TEKNIK SIPIL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(190) NOT NULL,
  `alamat` varchar(190) NOT NULL,
  `ipk` varchar(10) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `jur` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `ipk`, `id_dosen`, `jur`) VALUES
(123070201, 'LALU HERMAWAN', 'JL MAWAR NO 11', '3.01', 12346, 'ADM'),
(123070202, 'KURNIAWAN', 'JL AFFANDI NO 12', '2.75', 12344, 'TKJ'),
(123070203, 'INDRA KUSUMA', 'JL DEMANGA NO 4', '2.83', 12345, 'TKJ'),
(123070204, 'KARMAN MAULANA', 'JL BABARSARI NO 23', '2.91', 12343, 'TKJ'),
(123070206, 'WAWAN ADI PUTRA', 'JL KLEDOKAN NO 2', '3.21', 12341, 'TK'),
(123070207, 'M TAUFIK HIDAYAT', 'JL TAMBAKBAYAN NO 3', '3.11', 12341, 'TM'),
(123070208, 'FITRIADI BUDIMAN', 'JL MERPATI NO 24', '3.41', 12344, 'TM'),
(123070209, 'IDA KUSUMAWATI', 'JL BANTUL NO15', '3.32', 12343, 'TM'),
(123070210, 'HIDAYAT NUGRAHA', 'JL PASIFIK NO 6', '2.85', 12346, 'ADM'),
(1203070205, 'RIZAD RAHMAN', 'JL KAPAS NO 8', '2.5', 12344, 'TK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kd_jur`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
