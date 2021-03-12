-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2021 pada 11.09
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkos`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `detail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detail` (
`id` int(11)
,`nama_kos` text
,`jenis` text
,`alamat` text
,`jarak` text
,`luas` text
,`deskripsi` text
,`image` text
,`kondisi` text
,`fasilitas` text
,`harga` text
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `id_kriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `nama`, `id_kriteria`) VALUES
(1, 'Kasur', '5fd64e4111020'),
(2, 'Lemari', '5fd64e4111020'),
(3, 'Parkir', '5fd6537b54f1a'),
(4, 'Kasur', '5fd654d224bd0'),
(5, 'Lemari', '5fd654d224bd0'),
(6, 'Wifi', '5fd654d224bd0'),
(7, 'Parkir', '5fd654d224bd0'),
(8, 'Kipas', '5fd654d224bd0'),
(9, 'Tv', '5fd654d224bd0'),
(10, 'Kasur', '5fd654dd9a906'),
(11, 'Lemari', '5fd654dd9a906'),
(12, 'Wifi', '5fd654dd9a906'),
(13, 'Parkir', '5fd654dd9a906'),
(14, 'Kipas', '5fd654dd9a906'),
(15, 'Tv', '5fd654dd9a906'),
(16, 'Kasur', '5fd7506f4895a'),
(17, 'Lemari', '5fd7506f4895a'),
(18, 'Wifi', '5fd7506f4895a'),
(19, 'Parkir', '5fd7506f4895a'),
(20, 'Tv', '5fd7506f4895a'),
(21, 'Kasur', '5fe388465bd36'),
(22, 'Lemari', '5fe388465bd36'),
(23, 'Wifi', '5fe388465bd36'),
(24, 'Parkir', '5fe388465bd36'),
(25, 'Kasur', '602a0a08c2ed6'),
(26, 'Lemari', '602a0a08c2ed6'),
(27, 'Kasur', '602a0bc64b0b3'),
(28, 'Kasur', '603471fed18ae'),
(29, 'Kasur', '60347267f11af'),
(30, 'Lemari', '60347267f11af'),
(31, 'Kasur', '603482c654fdb'),
(32, 'Lemari', '603482c654fdb'),
(33, 'Kasur', '6034883e95030'),
(34, 'Lemari', '6034883e95030'),
(35, 'Wifi', '6034883e95030'),
(36, 'Kasur', '603488cf7ff55'),
(37, 'Lemari', '603488cf7ff55'),
(38, 'Kasur', '6035cf44b570d'),
(39, 'Wifi', '6035cf44b570d'),
(40, 'Kasur', '6035cfeab1325'),
(41, 'Kasur', '6036f81ad2863'),
(42, 'Kipas', '603709479870d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorite`
--

CREATE TABLE `favorite` (
  `id_favorite` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kosan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` text NOT NULL,
  `id_kosan` text NOT NULL,
  `file_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id`, `id_kosan`, `file_name`) VALUES
('5fd64e415dbbc', '1', '2.jpg'),
('5fd64e4161caa', '1', '3.jpg'),
('5fd6537b8ef10', '2', '8.jpg'),
('5fd6537b92b52', '2', '9.jpg'),
('5fd654dde32ab', '4', '4.jpg'),
('5fd654dde6a3c', '4', '5.jpg'),
('5fd7506fac990', '5', '5.jpg'),
('5fe38848e55f9', '6', ''),
('602a0a0928147', '8', 'BLACKMATTE_CUSTOM_Vivo_Y19.jpeg'),
('602a0bc68d86f', '9', ''),
('603471ff168d5', '11', ''),
('603472682d69b', '12', ''),
('603482c9884eb', '13', ''),
('6034883ed3727', '14', ''),
('6035cf45d879e', '16', ''),
('6035cfeae9cd5', '17', 'WARNA_CASENYA_SAMAIN_KAYA_GINI.jpg'),
('6036f81af2904', '22', ''),
('6036f81b004e6', '22', ''),
('60370947dc7e8', '23', 'blackmate_vivo_y91_201010105B9U6M.jpg'),
('60370947e24be', '23', 'vivo_y91c_Anticrack_2010100UGT4M11.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `id_kriteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `nama`, `id_kriteria`) VALUES
(1, 'Bersih', '5fd64e4111020'),
(2, 'Baru Dicat Ulang', '5fd64e4111020'),
(3, 'Bangunan Arsitektur Modern', '5fd64e4111020'),
(4, 'Bersih', '5fd6537b54f1a'),
(5, '1 Lokasi Dengan Pemilik', '5fd6537b54f1a'),
(6, ' Lebih Dari 1 Lantai', '5fd6537b54f1a'),
(7, 'Bersih', '5fd654d224bd0'),
(8, 'Baru Dicat Ulang', '5fd654d224bd0'),
(9, '1 Lokasi Dengan Pemilik', '5fd654d224bd0'),
(10, 'Bangunan Arsitektur Modern', '5fd654d224bd0'),
(11, ' Lebih Dari 1 Lantai', '5fd654d224bd0'),
(12, 'Bersih', '5fd654dd9a906'),
(13, 'Baru Dicat Ulang', '5fd654dd9a906'),
(14, '1 Lokasi Dengan Pemilik', '5fd654dd9a906'),
(15, 'Bangunan Arsitektur Modern', '5fd654dd9a906'),
(16, ' Lebih Dari 1 Lantai', '5fd654dd9a906'),
(17, 'Bersih', '5fd7506f4895a'),
(18, 'Bersih', '5fe388465bd36'),
(19, '1 Lokasi Dengan Pemilik', '602a0a08c2ed6'),
(20, 'Bersih', '602a0bc64b0b3'),
(21, 'Bersih', '603471fed18ae'),
(22, 'Bersih', '60347267f11af'),
(23, 'Bersih', '603482c654fdb'),
(24, 'Baru Dicat Ulang', '603482c654fdb'),
(25, '1 Lokasi Dengan Pemilik', '603482c654fdb'),
(26, 'Bersih', '6034883e95030'),
(27, 'Bersih', '603488cf7ff55'),
(28, 'Bersih', '6035cf44b570d'),
(29, 'Bersih', '6035cfeab1325'),
(30, 'Bersih', '6036f81ad2863'),
(31, '1 Lokasi Dengan Pemilik', '603709479870d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kosan`
--

CREATE TABLE `kosan` (
  `id` int(11) NOT NULL,
  `nama_kos` text NOT NULL,
  `jenis` text NOT NULL,
  `alamat` text NOT NULL,
  `desk` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kosan`
--

INSERT INTO `kosan` (`id`, `nama_kos`, `jenis`, `alamat`, `desk`, `image`) VALUES
(2, 'Murah Kost', 'putra', 'Jalan mantan no 32 kec.jember', 'Kosan termurah yang pernah ada tapi banyak jurignya hehe', '1798489014.jpg'),
(4, 'Mahal Kost', 'putri', 'Jalan kenangan nomor 32 kab.pelakor ', 'Kosan termahal yang pernah ada , selain mahal tersedia paket rebahan', '1797078082.jpg'),
(5, 'Indekos Anggrek', 'putri', 'jl. kalimantan5', 'nyaman dan terjangkau', '185994381.jpg'),
(6, 'kost hantu', 'putra', 'jl. jawa 7', '', '1.jpg'),
(7, 'asssdddc', 'putra', 'ascxdc', '', '2.jpg'),
(8, 'kos coba', 'putra', 'jl. coba2', 'bagus dong', '2.jpg'),
(9, 'asw', 'putra', 'qwesdf', 'sx', '2.jpg'),
(10, 'db', 'Indekos Putri', 'jember aja', 'baik', '3.jpg'),
(11, 'asas', 'putra', 'cona', '', '1.jpg'),
(12, 'selasa', 'putri', 'selasa', 'selasa', '4.jpg'),
(13, 'sebelas', 'putra', 'jl. jawa sebelas', 'bagus', '5.jpg'),
(14, 'kos 12', 'putra', 'jl. mastrip', 'bagus selalu', 'default.jpg'),
(15, 'coba', 'putri', 'jl. riau', 'bagus banget', 'default.jpg'),
(16, 'kos rabu', 'putri', 'jl. jawa 7', 'rabunya kak', 'default.jpg'),
(17, 'asd', 'putri', 'dfd', 'rabu', '745808634.jpeg'),
(23, 'sembilan', 'putri', 'sembilan', 'sembilan', '707565220.jpeg');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `kosan_view`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `kosan_view` (
`id` int(11)
,`nama_kos` text
,`jenis` text
,`alamat` text
,`desk` text
,`harga` text
,`jarak` text
,`luas` text
,`file_name` text
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` text NOT NULL,
  `id_kos` text NOT NULL,
  `harga` text NOT NULL,
  `jarak` text NOT NULL,
  `luas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `id_kos`, `harga`, `jarak`, `luas`) VALUES
('5fd64e4111020', '1', '500k-600k', '>1km', '4x4'),
('5fd6537b54f1a', '2', '300k', '>15km', '4x2'),
('5fd654dd9a906', '4', '>600k', '>1km', '4x5'),
('5fd7506f4895a', '5', '400k-500k', '2km-5km', '3x3'),
('5fe388465bd36', '6', '400k-500k', '>1km', '3x4'),
('602a0a08c2ed6', '8', '300k-400k', '6km-10km', '3x3'),
('602a0bc64b0b3', '9', '500k-600k', '>1km', '4x5'),
('603471fed18ae', '11', '300k', '2km-5km', '4x4'),
('60347267f11af', '12', '500k-600k', '6km-10km', '4x4'),
('603482c654fdb', '13', '400k-500k', '6km-10km', '3x4'),
('6034883e95030', '14', '300k', '6km-10km', '3x4'),
('603488cf7ff55', '15', '300k', '2km-5km', '4x4'),
('6035cf44b570d', '16', '400k-500k', '2km-5km', '4x5'),
('6035cfeab1325', '17', '300k', '11km-15km', '4x5'),
('6036f81ad2863', '22', '500k-600k', '2km-5km', '4x4'),
('603709479870d', '23', '300k-400k', '2km-5km', '4x4');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `kriteria_v`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `kriteria_v` (
`id_kos` text
,`harga` text
,`jarak` text
,`luas` text
,`kondisi` text
,`fasilitas` text
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(20) NOT NULL,
  `tanggal_baut` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_ubah` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `nama_level`, `tanggal_baut`, `tanggal_ubah`) VALUES
(1, 'admin', '2021-02-23 02:45:18', '2021-02-23 02:45:18'),
(2, 'pemilik', '2021-02-23 02:45:18', '2021-02-23 02:45:18'),
(3, 'pencari', '2021-02-23 02:45:18', '2021-02-23 02:45:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `tanggal_buat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_ubah` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_level`, `username`, `alamat`, `email`, `password`, `telepon`, `tanggal_buat`, `tanggal_ubah`) VALUES
(5, 2, 'pemilik', 'adaa', 'pemilik@gmail.com', '58399557dae3c60e23c78606771dfa3d', '091876354', '2021-02-23 02:47:51', '2021-02-23 02:47:51'),
(6, 1, 'admin', 'jl. alamanda 5', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '098765432', '2021-02-23 15:00:06', '2021-02-23 15:00:06'),
(7, 3, 'pencari', 'wertyu', 'sdfgh@gamil.com', '86ecd2486b77ff40f3b16569a19a3dc2', '09865', '2021-03-03 09:38:56', '2021-03-03 09:38:56');

-- --------------------------------------------------------

--
-- Struktur untuk view `detail`
--
DROP TABLE IF EXISTS `detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail`  AS SELECT `kosan_view`.`id` AS `id`, `kosan_view`.`nama_kos` AS `nama_kos`, `kosan_view`.`jenis` AS `jenis`, `kosan_view`.`alamat` AS `alamat`, `kosan_view`.`jarak` AS `jarak`, `kosan_view`.`luas` AS `luas`, `kosan_view`.`desk` AS `deskripsi`, `kosan_view`.`file_name` AS `image`, `kriteria_v`.`kondisi` AS `kondisi`, `kriteria_v`.`fasilitas` AS `fasilitas`, `kriteria_v`.`harga` AS `harga` FROM (`kosan_view` join `kriteria_v` on(`kosan_view`.`id` = `kriteria_v`.`id_kos`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `kosan_view`
--
DROP TABLE IF EXISTS `kosan_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kosan_view`  AS SELECT `kosan`.`id` AS `id`, `kosan`.`nama_kos` AS `nama_kos`, `kosan`.`jenis` AS `jenis`, `kosan`.`alamat` AS `alamat`, `kosan`.`desk` AS `desk`, `kriteria`.`harga` AS `harga`, `kriteria`.`jarak` AS `jarak`, `kriteria`.`luas` AS `luas`, `gambar`.`file_name` AS `file_name` FROM ((`kosan` join `gambar` on(`kosan`.`id` = `gambar`.`id_kosan`)) join `kriteria` on(`kosan`.`id` = `kriteria`.`id_kos`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `kriteria_v`
--
DROP TABLE IF EXISTS `kriteria_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kriteria_v`  AS SELECT `kriteria`.`id_kos` AS `id_kos`, `kriteria`.`harga` AS `harga`, `kriteria`.`jarak` AS `jarak`, `kriteria`.`luas` AS `luas`, `kondisi`.`nama` AS `kondisi`, `fasilitas`.`nama` AS `fasilitas` FROM ((`kriteria` join `kondisi` on(`kriteria`.`id_kriteria` = `kondisi`.`id_kriteria`)) join `fasilitas` on(`kriteria`.`id_kriteria` = `fasilitas`.`id_kriteria`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id_favorite`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kosan`
--
ALTER TABLE `kosan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`),
  ADD UNIQUE KEY `id_level` (`id_level`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `kosan`
--
ALTER TABLE `kosan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
