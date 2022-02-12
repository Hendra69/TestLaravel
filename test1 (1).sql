-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2022 pada 20.45
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asal`
--

CREATE TABLE `asal` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ladmin_logables`
--

CREATE TABLE `ladmin_logables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `logable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logable_id` bigint(20) UNSIGNED NOT NULL,
  `new_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ladmin_options`
--

CREATE TABLE `ladmin_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ladmin_roles`
--

CREATE TABLE `ladmin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gates`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ladmin_roles`
--

INSERT INTO `ladmin_roles` (`id`, `name`, `gates`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '[\"administrator.account\",\"administrator.account.admin.index\",\"administrator.account.admin.create\",\"administrator.account.admin.update\",\"administrator.account.admin.destroy\",\"administrator.access\",\"administrator.access.role.index\",\"administrator.access.role.create\",\"administrator.access.role.update\",\"administrator.access.role.destroy\",\"administrator.access.permission.index\",\"administrator.access.permission.show\",\"administrator.access.permission.assign\",\"administrator.system\",\"administrator.system.activity.index\",\"administrator.system.activity.delete\",\"administrator.system.log.index\",\"administrator.profile.index\",\"administrator.profile.update\"]', '2022-02-09 02:03:33', '2022-02-09 02:03:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ladmin_role_user`
--

CREATE TABLE `ladmin_role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ladmin_role_user`
--

INSERT INTO `ladmin_role_user` (`role_id`, `user_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11);

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
(1, '0000_00_00_000000_create_ladmin_logables_table', 1),
(2, '0000_00_00_000000_create_ladmin_options_table', 1),
(3, '0000_00_00_000000_create_role_user_table', 1),
(4, '0000_00_00_000000_create_roles_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_02_07_081716_create_asal_table', 1),
(10, '2022_02_07_084530_create_siswas_table', 1),
(11, '2022_02_09_080640_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `nama`, `nilai`, `asal`, `kota`, `kab`, `jk`, `created_at`, `updated_at`) VALUES
(1, 'Caturangga Hidayanto M.Kom.', '15', 'UD Habibi (Persero) Tbk', 'Magelang', 'Tomohon', 'male', NULL, NULL),
(2, 'Dian Dewi Safitri M.Ak', '12', 'PT Santoso Wulandari (Persero) Tbk', 'Padangsidempuan', 'Gorontalo', 'male', NULL, NULL),
(3, 'Xanana Sihombing', '11', 'PD Januar', 'Pekanbaru', 'Surabaya', 'male', NULL, NULL),
(4, 'Umi Suartini', '11', 'CV Maulana Prasetya', 'Langsa', 'Sawahlunto', 'male', NULL, NULL),
(5, 'Artawan Ardianto', '11', 'Perum Nurdiyanti', 'Bukittinggi', 'Batu', 'male', NULL, NULL),
(6, 'Dimaz Sitompul M.Farm', '13', 'Perum Laksmiwati (Persero) Tbk', 'Padangsidempuan', 'Sukabumi', 'female', NULL, NULL),
(7, 'Zelaya Victoria Prastuti S.Pt', '17', 'PT Aryani Lestari', 'Bau-Bau', 'Pangkal Pinang', 'female', NULL, NULL),
(8, 'Gatot Hidayanto S.T.', '17', 'PT Nugroho Suryono Tbk', 'Pangkal Pinang', 'Parepare', 'female', NULL, NULL),
(9, 'Umi Puput Suryatmi S.H.', '30', 'UD Prayoga', 'Tomohon', 'Bontang', 'female', NULL, NULL),
(10, 'Rafid Mustofa', '19', 'Perum Prayoga Damanik', 'Surakarta', 'Medan', 'male', NULL, NULL),
(11, 'Indah Uchita Suartini M.M.', '12', 'Perum Firgantoro (Persero) Tbk', 'Tebing Tinggi', 'Blitar', 'male', NULL, NULL),
(12, 'Sari Suartini', '17', 'PT Mansur', 'Banjarbaru', 'Bukittinggi', 'female', NULL, NULL),
(13, 'Tantri Hassanah', '51', 'Perum Rahayu', 'Pariaman', 'Makassar', 'female', NULL, NULL),
(14, 'Lili Astuti', '88', 'CV Hutapea Gunawan (Persero) Tbk', 'Batam', 'Banda Aceh', 'male', NULL, NULL),
(15, 'Syahrini Genta Riyanti', '11', 'CV Kusmawati Usada Tbk', 'Bekasi', 'Madiun', 'male', NULL, NULL),
(16, 'Tomi Wira Hutasoit M.TI.', '93', 'PT Suryatmi', 'Tegal', 'Dumai', 'male', NULL, NULL),
(17, 'Makuta Sitorus', '17', 'CV Laksmiwati Nainggolan (Persero) Tbk', 'Medan', 'Bengkulu', 'male', NULL, NULL),
(18, 'Utama Siregar', '21', 'CV Palastri Salahudin', 'Tanjungbalai', 'Banda Aceh', 'male', NULL, NULL),
(19, 'Faizah Elma Haryanti S.Kom', '20', 'PD Wibowo', 'Ternate', 'Padang', 'female', NULL, NULL),
(20, 'Estiono Saefullah', '33', 'PT Santoso (Persero) Tbk', 'Ternate', 'Padangsidempuan', 'male', NULL, NULL),
(21, 'Nabila Riyanti', '16', 'Perum Aryani Suryatmi (Persero) Tbk', 'Kediri', 'Depok', 'female', NULL, NULL),
(22, 'Amalia Oktaviani', '22', 'Perum Permata Halimah (Persero) Tbk', 'Cirebon', 'Palembang', 'male', NULL, NULL),
(23, 'Uda Bakda Nashiruddin S.E.', '30', 'CV Prasasta', 'Gorontalo', 'Prabumulih', 'female', NULL, NULL),
(24, 'Wardi Hendri Budiyanto M.Farm', '17', 'UD Marpaung Widodo', 'Tomohon', 'Sungai Penuh', 'male', NULL, NULL),
(25, 'Farah Yulianti', '78', 'PD Saragih', 'Jayapura', 'Surabaya', 'male', NULL, NULL),
(26, 'Jane Puji Mardhiyah M.Ak', '11', 'UD Pratiwi Budiman (Persero) Tbk', 'Banda Aceh', 'Tanjungbalai', 'male', NULL, NULL),
(27, 'Luluh Natsir', '69', 'PT Saputra Tbk', 'Pontianak', 'Balikpapan', 'male', NULL, NULL),
(28, 'Jaeman Hutasoit', '17', 'UD Utama Dabukke', 'Tual', 'Binjai', 'male', NULL, NULL),
(29, 'Tari Namaga', '59', 'PD Nasyidah (Persero) Tbk', 'Sukabumi', 'Cimahi', 'male', NULL, NULL),
(30, 'Ikin Sirait', '62', 'PD Hariyah Yolanda Tbk', 'Langsa', 'Banjar', 'male', NULL, NULL),
(31, 'Padmi Haryanti', '20', 'PD Mulyani (Persero) Tbk', 'Pasuruan', 'Padang', 'female', NULL, NULL),
(32, 'Yunita Usamah', '13', 'CV Wahyudin (Persero) Tbk', 'Blitar', 'Sawahlunto', 'female', NULL, NULL),
(33, 'Kalim Mandala', '47', 'PD Kusmawati', 'Malang', 'Tidore Kepulauan', 'male', NULL, NULL),
(34, 'Warta Irawan S.Ked', '91', 'PT Purwanti Ramadan', 'Denpasar', 'Tomohon', 'female', NULL, NULL),
(35, 'Rafid Kurnia Manullang M.M.', '20', 'CV Agustina Melani Tbk', 'Batam', 'Kediri', 'female', NULL, NULL),
(36, 'Intan Wijayanti', '35', 'CV Suryono Tbk', 'Subulussalam', 'Solok', 'female', NULL, NULL),
(37, 'Ikin Dabukke', '12', 'PT Sitorus Haryanti', 'Batam', 'Tarakan', 'female', NULL, NULL),
(38, 'Yunita Puspasari', '13', 'PT Zulaika', 'Lubuklinggau', 'Probolinggo', 'female', NULL, NULL),
(39, 'Setya Nashiruddin S.Sos', '16', 'UD Siregar Hasanah (Persero) Tbk', 'Ternate', 'Administrasi Jakarta Selatan', 'male', NULL, NULL),
(40, 'Opan Wibisono', '22', 'Perum Permadi Uyainah (Persero) Tbk', 'Bandung', 'Sorong', 'male', NULL, NULL),
(41, 'Yusuf Hidayat', '58', 'Perum Mulyani', 'Pekalongan', 'Solok', 'male', NULL, NULL),
(42, 'Dinda Eva Riyanti S.Pt', '19', 'UD Hutapea', 'Palangka Raya', 'Sibolga', 'female', NULL, NULL),
(43, 'Bakiadi Suryono', '58', 'PD Laksmiwati', 'Magelang', 'Banjarbaru', 'female', NULL, NULL),
(44, 'Irnanto Maulana', '66', 'PD Usamah (Persero) Tbk', 'Pematangsiantar', 'Langsa', 'male', NULL, NULL),
(45, 'Tirtayasa Dabukke S.Ked', '63', 'Perum Suartini Lestari Tbk', 'Tangerang', 'Prabumulih', 'male', NULL, NULL),
(46, 'Latika Widiastuti', '18', 'PT Kusmawati Nurdiyanti', 'Tidore Kepulauan', 'Solok', 'male', NULL, NULL),
(47, 'Legawa Januar', '17', 'CV Dabukke', 'Yogyakarta', 'Kupang', 'male', NULL, NULL),
(48, 'Vanya Astuti', '11', 'CV Najmudin', 'Bengkulu', 'Ambon', 'male', NULL, NULL),
(49, 'Puput Palastri', '26', 'UD Haryanto Lailasari Tbk', 'Tomohon', 'Serang', 'female', NULL, NULL),
(50, 'Mulyanto Prasetyo', '16', 'UD Adriansyah Safitri', 'Pagar Alam', 'Ambon', 'female', NULL, NULL),
(51, 'Paramita Namaga', '54', 'PD Palastri Tbk', 'Tidore Kepulauan', 'Palangka Raya', 'male', NULL, NULL),
(52, 'Nasim Tamba', '15', 'PT Mandala Padmasari', 'Administrasi Jakarta Barat', 'Kupang', 'male', NULL, NULL),
(53, 'Vanya Pudjiastuti', '12', 'PT Pratiwi Mansur (Persero) Tbk', 'Jambi', 'Bandar Lampung', 'female', NULL, NULL),
(54, 'Daniswara Dasa Widodo M.M.', '21', 'Perum Suryatmi Tbk', 'Kendari', 'Pangkal Pinang', 'female', NULL, NULL),
(55, 'Wawan Irawan', '13', 'PD Kuswandari Tbk', 'Subulussalam', 'Tomohon', 'female', NULL, NULL),
(56, 'Rahayu Yulianti', '11', 'CV Siregar Yuniar', 'Batu', 'Tarakan', 'male', NULL, NULL),
(57, 'Kamaria Purwanti', '98', 'UD Natsir Tbk', 'Administrasi Jakarta Utara', 'Makassar', 'male', NULL, NULL),
(58, 'Nurul Zulaikha Widiastuti', '15', 'PT Utama Halimah (Persero) Tbk', 'Solok', 'Yogyakarta', 'female', NULL, NULL),
(59, 'Putri Yuliarti', '17', 'PD Winarno Tbk', 'Semarang', 'Kotamobagu', 'male', NULL, NULL),
(60, 'Wadi Firgantoro', '20', 'Perum Natsir', 'Pariaman', 'Jayapura', 'male', NULL, NULL),
(61, 'Clara Ilsa Anggraini M.Ak', '20', 'PT Prakasa Riyanti', 'Bima', 'Sorong', 'male', NULL, NULL),
(62, 'Salsabila Yulianti', '34', 'PD Nuraini', 'Sorong', 'Magelang', 'female', NULL, NULL),
(63, 'Puput Mardhiyah S.Ked', '11', 'Perum Maryati Lestari Tbk', 'Banjarmasin', 'Yogyakarta', 'male', NULL, NULL),
(64, 'Harsana Yono Adriansyah M.TI.', '27', 'UD Najmudin', 'Mojokerto', 'Makassar', 'male', NULL, NULL),
(65, 'Candra Pangestu', '11', 'PT Mustofa Andriani', 'Jambi', 'Subulussalam', 'female', NULL, NULL),
(66, 'Rachel Faizah Halimah S.E.I', '81', 'Perum Usamah Ramadan (Persero) Tbk', 'Singkawang', 'Pagar Alam', 'male', NULL, NULL),
(67, 'Kusuma Sitompul', '11', 'PD Sudiati', 'Serang', 'Kediri', 'male', NULL, NULL),
(68, 'Laras Calista Zulaika', '17', 'PT Wijayanti (Persero) Tbk', 'Bima', 'Pontianak', 'male', NULL, NULL),
(69, 'Hana Astuti', '12', 'PD Wahyudin Wibowo', 'Bitung', 'Blitar', 'male', NULL, NULL),
(70, 'Liman Niyaga Kusumo', '40', 'PD Irawan Permadi', 'Tasikmalaya', 'Palopo', 'male', NULL, NULL),
(71, 'Kamila Tiara Puspasari', '13', 'UD Zulaika Tbk', 'Tidore Kepulauan', 'Bogor', 'male', NULL, NULL),
(72, 'Usyi Devi Susanti', '19', 'CV Zulaika', 'Salatiga', 'Depok', 'male', NULL, NULL),
(73, 'Prabawa Budiyanto', '43', 'CV Nuraini', 'Langsa', 'Yogyakarta', 'male', NULL, NULL),
(74, 'Titin Anggraini S.H.', '21', 'UD Hasanah Pangestu', 'Pontianak', 'Pematangsiantar', 'female', NULL, NULL),
(75, 'Darsirah Kenzie Sihotang M.TI.', '17', 'Perum Maryadi Halim (Persero) Tbk', 'Bandung', 'Bandar Lampung', 'male', NULL, NULL),
(76, 'Tiara Agustina', '12', 'UD Wacana Tbk', 'Jambi', 'Depok', 'female', NULL, NULL),
(77, 'Jarwa Winarno', '17', 'UD Wijaya', 'Banda Aceh', 'Administrasi Jakarta Pusat', 'male', NULL, NULL),
(78, 'Kala Mahfud Widodo M.M.', '11', 'PD Permata (Persero) Tbk', 'Salatiga', 'Kotamobagu', 'female', NULL, NULL),
(79, 'Hani Widiastuti S.Ked', '19', 'CV Hutasoit Purwanti', 'Makassar', 'Makassar', 'male', NULL, NULL),
(80, 'Laras Hasna Padmasari M.TI.', '11', 'UD Lestari', 'Tasikmalaya', 'Tasikmalaya', 'female', NULL, NULL),
(81, 'Cecep Upik Kuswoyo S.Pd', '96', 'CV Nurdiyanti Siregar', 'Tanjungbalai', 'Tebing Tinggi', 'male', NULL, NULL),
(82, 'Ajimat Simbolon', '14', 'PT Lestari Irawan Tbk', 'Tanjung Pinang', 'Sawahlunto', 'male', NULL, NULL),
(83, 'Maida Hartati M.Kom.', '45', 'UD Kusumo Anggraini', 'Cirebon', 'Pasuruan', 'female', NULL, NULL),
(84, 'Cakrabirawa Ramadan', '13', 'PD Tarihoran (Persero) Tbk', 'Batu', 'Binjai', 'male', NULL, NULL),
(85, 'Yunita Hariyah S.Kom', '14', 'PT Pangestu', 'Blitar', 'Administrasi Jakarta Pusat', 'female', NULL, NULL),
(86, 'Harjaya Gunawan', '17', 'PT Najmudin', 'Palu', 'Pariaman', 'female', NULL, NULL),
(87, 'Fathonah Yani Wahyuni', '76', 'CV Yuniar Nasyidah', 'Bukittinggi', 'Bekasi', 'female', NULL, NULL),
(88, 'Baktiadi Hutasoit', '10', 'PD Palastri Rajata', 'Blitar', 'Banjarbaru', 'male', NULL, NULL),
(89, 'Aswani Saptono', '10', 'PT Suryono Sirait Tbk', 'Cirebon', 'Kupang', 'female', NULL, NULL),
(90, 'Endra Haryanto', '20', 'CV Palastri Safitri', 'Gunungsitoli', 'Lhokseumawe', 'male', NULL, NULL),
(91, 'Fathonah Irma Usada', '10', 'Perum Yuliarti Tbk', 'Madiun', 'Dumai', 'female', NULL, NULL),
(92, 'Nilam Haryanti', '10', 'PT Adriansyah Maulana', 'Kotamobagu', 'Tebing Tinggi', 'female', NULL, NULL),
(93, 'Fathonah Farah Astuti', '10', 'UD Mustofa (Persero) Tbk', 'Lubuklinggau', 'Pekalongan', 'male', NULL, NULL),
(94, 'Eka Nuraini', '60', 'UD Nurdiyanti Kuswoyo Tbk', 'Medan', 'Tangerang Selatan', 'male', NULL, NULL),
(95, 'Olivia Laila Prastuti', '13', 'CV Sinaga Prayoga Tbk', 'Manado', 'Banda Aceh', 'male', NULL, NULL),
(96, 'Lanjar Ardianto M.M.', '14', 'PD Maryati Permadi', 'Tebing Tinggi', 'Bukittinggi', 'male', NULL, NULL),
(97, 'Teddy Siregar', '68', 'PD Damanik (Persero) Tbk', 'Binjai', 'Lubuklinggau', 'male', NULL, NULL),
(98, 'Maria Halimah', '74', 'UD Kurniawan Nurdiyanti Tbk', 'Manado', 'Payakumbuh', 'female', NULL, NULL),
(99, 'Oman Umay Sitompul S.Farm', '41', 'UD Hutapea Handayani (Persero) Tbk', 'Palu', 'Administrasi Jakarta Selatan', 'male', NULL, NULL),
(100, 'Mila Cindy Halimah S.E.I', '57', 'PT Hutapea (Persero) Tbk', 'Sawahlunto', 'Tanjung Pinang', 'female', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tatang lubis', 'daan@gmail.com', NULL, '$2y$10$ztDiE.COXE9SxUsqJoca3ugw/gbz/FmIW29QINvqg2k/Csbs/auI.', NULL, '2022-02-10 04:17:23', '2022-02-10 04:17:23'),
(2, 'Holly Runolfsson', 'ressie.little@example.org', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JN0fUNLWbU', '2022-02-10 07:53:56', '2022-02-10 07:53:56'),
(3, 'Gladyce Bosco', 'bogisich.georgette@example.net', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XqbLjWfsOB', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(4, 'Myah Jakubowski', 'rodger36@example.com', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rYahqdkJpb', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(5, 'Fausto Medhurst', 'baumbach.zetta@example.net', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UvnHGgla4u', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(6, 'Mr. Erwin Mertz PhD', 'xrolfson@example.org', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GjZM8xi3Ji', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(7, 'Emilia Lakin', 'zoie33@example.org', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KsCHmDj7B8', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(8, 'Arnold Medhurst Jr.', 'everardo.mayer@example.org', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2kPoRRTYSB', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(9, 'Dr. Vallie Lynch', 'jeramie34@example.org', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PIHjT5fhJh', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(10, 'Cortney Langworth', 'xmedhurst@example.org', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oDcYjgcbVd', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(11, 'Glenda Kiehn IV', 'jesus.lueilwitz@example.net', '2022-02-10 07:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R9wkZ7xClH', '2022-02-10 07:53:57', '2022-02-10 07:53:57'),
(12, 'tatang', 'daan12@gmail.com', NULL, '$2y$10$6ruflkCkzdGpWHNMvLBZBO9h.yHuk9eouJVAjK.2lIZWYkXX1YYqK', NULL, '2022-02-11 11:15:17', '2022-02-11 11:15:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asal`
--
ALTER TABLE `asal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `ladmin_logables`
--
ALTER TABLE `ladmin_logables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ladmin_logables_logable_type_logable_id_index` (`logable_type`,`logable_id`);

--
-- Indeks untuk tabel `ladmin_options`
--
ALTER TABLE `ladmin_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ladmin_options_option_name_unique` (`option_name`);

--
-- Indeks untuk tabel `ladmin_roles`
--
ALTER TABLE `ladmin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
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
-- AUTO_INCREMENT untuk tabel `asal`
--
ALTER TABLE `asal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ladmin_logables`
--
ALTER TABLE `ladmin_logables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ladmin_options`
--
ALTER TABLE `ladmin_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ladmin_roles`
--
ALTER TABLE `ladmin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
