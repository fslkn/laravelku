-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2020 pada 05.42
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2020_01_22_040908_create_gambars_table', 1),
(4, '2020_01_22_083558_create_pegawais_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai_eloquent`
--

CREATE TABLE `pegawai_eloquent` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(150) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai_eloquent`
--

INSERT INTO `pegawai_eloquent` (`id`, `nama`, `email`, `alamat`, `telepon`, `pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Lanjar Pratama S.Kom', 'melinda.wacana@firgantoro.com', 'Ds. Lumban Tobing No. 402, Dumai 11261, Bengkulu', '(+62) 866 6630 0646', 'karyawan', NULL, NULL),
(2, 'Lulut Warsita Situmorang M.Ak', 'alaksmiwati@sudiati.id', 'Ds. Baan No. 584, Payakumbuh 95706, Bengkulu', '029 2682 2138', 'karyawan', NULL, NULL),
(3, 'Leo Sihotang M.TI.', 'lukita.usamah@yahoo.com', 'Dk. Fajar No. 635, Pematangsiantar 52193, SumBar', '(+62) 363 8244 277', 'karyawan', NULL, NULL),
(4, 'Nardi Ramadan', 'mayasari.oni@yahoo.com', 'Ki. Babadak No. 77, Batam 35287, KalUt', '0987 6702 114', 'karyawan', NULL, NULL),
(5, 'Halim Dongoran', 'prakasa.paiman@winarsih.ac.id', 'Jr. Merdeka No. 799, Tangerang 30475, SumUt', '(+62) 622 3213 202', 'karyawan', NULL, NULL),
(6, 'Victoria Jamalia Novitasari S.Ked', 'wsaragih@wastuti.or.id', 'Jr. Nakula No. 633, Palopo 63451, JaTim', '0904 7131 6660', 'karyawan', NULL, NULL),
(7, 'Jasmin Natalia Riyanti', 'gatra09@najmudin.co', 'Ki. Nakula No. 499, Makassar 28024, KepR', '0342 8531 1003', 'karyawan', NULL, NULL),
(8, 'Kenes Cengkir Situmorang', 'rsihombing@gmail.co.id', 'Psr. Acordion No. 329, Pekanbaru 62284, SumUt', '0215 5464 119', 'karyawan', NULL, NULL),
(9, 'Asirwanda Santoso', 'hutapea.indah@gmail.co.id', 'Jln. Merdeka No. 697, Binjai 18376, KalBar', '(+62) 725 0655 2608', 'karyawan', NULL, NULL),
(10, 'Mila Winarsih S.Pt', 'bsusanti@gmail.com', 'Jln. Taman No. 482, Sabang 45076, Banten', '0725 4617 396', 'karyawan', NULL, NULL),
(11, 'Gandewa Januar', 'ayu50@gmail.com', 'Jr. Adisumarmo No. 244, Pangkal Pinang 64669, KalSel', '(+62) 282 9950 216', 'karyawan', NULL, NULL),
(12, 'Bagiya Rajasa', 'zulaikha60@gmail.com', 'Psr. Yap Tjwan Bing No. 424, Bandar Lampung 13288, KalBar', '(+62) 913 2713 195', 'karyawan', NULL, NULL),
(13, 'Pranawa Widodo', 'jasmani.tamba@gmail.co.id', 'Kpg. Kebonjati No. 179, Bogor 53996, Jambi', '0208 7932 0375', 'karyawan', NULL, NULL),
(14, 'Raisa Nuraini', 'lestari.umi@yahoo.com', 'Kpg. Baranangsiang No. 501, Bandung 98549, SulUt', '0777 7183 268', 'karyawan', NULL, NULL),
(15, 'Niyaga Pradana', 'vanya.mahendra@mustofa.go.id', 'Ki. Rumah Sakit No. 512, Sukabumi 78582, Gorontalo', '(+62) 957 2016 209', 'karyawan', NULL, NULL),
(16, 'Luhung Cayadi Adriansyah M.TI.', 'kenes.puspasari@wastuti.biz.id', 'Kpg. Lumban Tobing No. 81, Pekanbaru 18264, SulTeng', '0374 9162 695', 'karyawan', NULL, NULL),
(17, 'Najam Jailani', 'waskita.mursinin@nashiruddin.tv', 'Jr. Kalimalang No. 654, Mojokerto 35429, Bengkulu', '(+62) 21 8097 568', 'karyawan', NULL, NULL),
(18, 'Gasti Uyainah', 'ihsan24@maryati.com', 'Gg. Rajawali Timur No. 526, Tarakan 17965, KalTim', '(+62) 266 0902 771', 'karyawan', NULL, NULL),
(19, 'Samiah Fujiati M.Farm', 'ghani.aryani@yahoo.com', 'Gg. Babakan No. 978, Palangka Raya 13805, Banten', '(+62) 782 2308 6718', 'karyawan', NULL, NULL),
(20, 'Garda Tampubolon S.Pd', 'baktianto47@gmail.com', 'Dk. Bakaru No. 761, Kendari 98609, SulBar', '(+62) 243 6318 9744', 'karyawan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `alamat`, `created_at`, `updated_at`) VALUES
(41, 'Malas Noding', 123456, 'Kpg. Otto No. 157, Salatiga 34190, KepR', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(42, 'Diki Alfarabi hadi', 123457, 'Psr. Wahid No. 119, Langsa 17291, JaTim', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(43, 'Bagas Santoso', 123458, 'Jr. Monginsidi No. 569, Padangsidempuan 24306, SulBar', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(44, 'Genta Haryanti', 123459, 'Psr. Gajah Mada No. 696, Mataram 90223, BaBel', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(45, 'Laravel Excel', 123460, 'Kpg. Suryo Pranoto No. 291, Pekanbaru 76772, Maluku', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(46, 'Wasis Bakianto Rajasa', 123461, 'Dk. Sadang Serang No. 367, Semarang 32762, SulTra', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(47, 'Excel Laravel', 123462, 'Ki. Abdul Rahmat No. 1, Banjarbaru 58914, NTB', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(48, 'Zaenab Winarsih', 123463, 'Dk. Padang No. 638, Bitung 46505, Aceh', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(49, 'Malika Tina Hasanah', 123464, 'Jln. W.R. Supratman No. 392, Bitung 66104, JaTim', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(50, 'PHPExcel Laravel', 123465, 'Dk. Imam No. 224, Banjar 37365, PapBar', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(51, 'Paramita Rahimah', 123466, 'Dk. Qrisdoren No. 548, Surabaya 30826, KalTeng', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(52, 'Paris Padmasari', 123467, 'Ki. Bacang No. 93, Pariaman 82570, DIY', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(53, 'Bakijan Mahendra S.H.', 123468, 'Ki. Tambak No. 692, Mataram 65862, Aceh', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(54, 'Damar Tamba', 123469, 'Dk. Lada No. 238, Bandar Lampung 65062, MalUt', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(55, 'Bajragin Atmaja Kurniawan', 123470, 'Dk. Karel S. Tubun No. 988, Jayapura 18450, Bali', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(56, 'Cakrawangsa Sihombing', 123471, 'Jr. Babah No. 536, Bekasi 20996, Aceh', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(57, 'Najwa Rahimah', 123472, 'Gg. K.H. Maskur No. 475, Cimahi 25535, KalSel', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(58, 'Jaswadi Hardana Maryadi', 123473, 'Jln. Abang No. 590, Tegal 31208, Lampung', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(59, 'Shakila Nurdiyanti', 123474, 'Jr. Tangkuban Perahu No. 553, Bitung 27727, SumBar', '2020-01-22 20:01:25', '2020-01-22 20:01:25'),
(60, 'Caraka Nardi Permadi', 123475, 'Kpg. Daan No. 258, Bandar Lampung 97410, SulBar', '2020-01-22 20:01:25', '2020-01-22 20:01:25');

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
(1, 'FaisalAdiPrayugo', 'solikinikilos@polowijen.com', NULL, '$2y$10$sCWO5bAKCHiPKkqYOsCgYujodkt92MjF5hXZcIapqO.Qbj56j927S', NULL, '2020-01-21 20:31:37', '2020-01-21 20:31:37'),
(2, 'Faisal Adi Prayugo', 'faisaladiprayugo87@gmail.com', NULL, '$2y$10$y1s96BLx02OZa/QLi/lS7ukQiRA/h0rllrqLfD/FN93sZr4yDolRq', NULL, '2020-01-22 00:22:09', '2020-01-22 00:22:09'),
(3, 'Faisal Adi Prayugo', 'faisaladiprayugo12@gmail.com', NULL, '$2y$10$hIogeuoVKlPkDfuCVARgIuikF0P5l.c8KW/SO11.GIwZogPpsns0e', NULL, '2020-01-22 00:25:20', '2020-01-22 00:25:20'),
(4, 'solikin', 'solikinikilos1@gmail.com', NULL, '$2y$10$rOZ8vLgSmrcHXW5fuO2nWeApDgqOAOneJo7jnce3/YMl7ZT1Jq55i', NULL, '2020-01-22 00:27:26', '2020-01-22 00:27:26'),
(5, 'solikin', 'solikinikilos12@gmail.com', NULL, '$2y$10$6PLK.aHMMwdtBLbKPlIjgeil4oP08zO7tBYipaQgtbPJeOzUKiXru', NULL, '2020-01-22 00:28:56', '2020-01-22 00:28:56'),
(6, 'qwrtyisad', 'werty@laravel.com', NULL, '$2y$10$q61EL5Noetssq20Bu1Bv4ON1L/EWF2Bkash/CHF0KujJboJXCBcNa', NULL, '2020-01-22 00:33:17', '2020-01-22 00:33:17'),
(7, 'ertyuiqwe', 'qwesadf@gamia.com', NULL, '$2y$10$3nnPGqJGPI.8duC3GY0zeeXGlCs6ty2.hIQLA2lyD8wIX2zrsORNe', NULL, '2020-01-22 00:39:23', '2020-01-22 00:39:23'),
(8, 'ertyuiqwe', 'qwesaadf@gamia.com', NULL, '$2y$10$LMmL2WbU5a5aL9W4J0THPeVPVmYO6wI11E8Cnci7ApOo30II1Bloa', NULL, '2020-01-22 00:40:33', '2020-01-22 00:40:33'),
(9, 'ertyuiqwe', 'qwesaaadf@gamia.com', NULL, '$2y$10$S70myhmNH8X8UkmTqLJhtu4rZWKZ5tGkUQEUxyFGTlRXB6iE8fKZC', NULL, '2020-01-22 00:41:59', '2020-01-22 00:41:59'),
(10, 'Example', 'example@example.com', NULL, '$2y$10$x3lFvPR3ciqG/zBa8buyUOLhVPz5XPUhr7zWeZGKF.oQTAL7zWc76', NULL, '2020-01-22 00:42:30', '2020-01-22 00:42:30'),
(11, 'qqqweqwe', 'zxczxc@zxczxc.com', NULL, '$2y$10$hgRaldNWmCsqP44q72OK3.FzHiugyXiVDaWO8oZfitcUCDiYbQAA.', NULL, '2020-01-22 00:44:13', '2020-01-22 00:44:13'),
(12, 'ljkjlkjlkj', 'lklkjlkj@gmail.com', NULL, '$2y$10$RUXe4aMM3SIxoMJER9lsCeLqM2tXCEW537ngECA/Y/GvPnlUg6Mjm', NULL, '2020-01-22 00:47:26', '2020-01-22 00:47:26'),
(13, 'ljkjlkjlkj', 'lklkmjlkj@gmail.com', NULL, '$2y$10$I5I6u3aXNVGHjLAZR.OatOOJ6hm/F.lcjJkUh3mGdQl8U0R2lX9S2', NULL, '2020-01-22 00:48:21', '2020-01-22 00:48:21'),
(14, 'faisal', 'faisaladi@laravel.com', NULL, '$2y$10$VD8cPwUfo2mjdWILMuHoqeowOgVjfnaS1eWDUc8Oxh4fWWps/YaPm', NULL, '2020-01-22 01:21:20', '2020-01-22 01:21:20'),
(15, 'faisal', 'afaiasd@fasd.com', NULL, '$2y$10$Jry7OogtHYKvFVGTRXAxyurLY5vZUvUtYB.p.CrGY/zDuJ141ZVVG', NULL, '2020-01-22 01:22:22', '2020-01-22 01:22:22'),
(16, 'faisal', 'afaiasd@faasd.com', NULL, '$2y$10$iz7.iejFHa327lKC53Zp7uhjw6kuZLVw4Rl5P82CxriAl3kZffcE2', NULL, '2020-01-22 01:24:12', '2020-01-22 01:24:12'),
(17, 'zzz', 'zzz@test.com', NULL, '$2y$10$p63rjALOEfV4v6h1JhuZ5uQEokDqGlww4uPHoOnTPKQJUPgqnKdI6', NULL, '2020-01-22 01:25:12', '2020-01-22 01:25:12'),
(18, 'qwe', 'qwe@mail.com', NULL, '$2y$10$xsQN02EUGmO/kUdKuJEMQ.ilHmpZeHhwjR9DafdsN2whlSo2G/GTa', NULL, '2020-01-22 01:27:49', '2020-01-22 01:27:49'),
(19, 'qwerty', 'qwerty@mail.com', NULL, '$2y$10$397FURFpU1fz5Jf2/ugYBu5/hjs.AUJlm7pm/l/HxnIrJJTj6h2i.', NULL, '2020-01-22 01:30:46', '2020-01-22 01:30:46'),
(20, 'qwerty', 'kokoko@mail.com', NULL, '$2y$10$UvPVRJlkIe0GpfKOlwNq.ea/sRTwpIZJQLBdCUoMDxQbFBV/n01NK', NULL, '2020-01-22 01:33:48', '2020-01-22 01:33:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai_eloquent`
--
ALTER TABLE `pegawai_eloquent`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pegawai_eloquent`
--
ALTER TABLE `pegawai_eloquent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
