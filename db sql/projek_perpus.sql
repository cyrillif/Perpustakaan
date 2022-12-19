-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 03:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(1, '4000', 'Aktif', '2022-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(9, 'BK001', 17, 1, 'f19ae6920d7cb748c64845bef347b838.jpg', 'ISBN 978-602-61373-7-1', NULL, 'Panduan Lengkap Perakitan Komputer', 'Malang : Lembaga Kajian Profesi', 'Nurul Hidayati', '2018', '', 13, '2022-12-05 21:58:07'),
(10, 'BK0010', 17, 1, '261d143df17c7454011469aee90add78.png', 'ISBN 979-533-274-0', NULL, 'Pengenalan Komputer', 'Yogyakarta : Andi Offset', 'JOGIYANTO H.M', '1995', '', 4, '2022-12-05 22:01:01'),
(11, 'BK0011', 16, 1, 'f1afb8c902e525c8d09b154a8057e759.jpg', 'ISBN 978-602-401-542-8', NULL, '40 Project Robotic dan Aplikasi Android', 'Yogyakarta : Deepublish', 'Ricki Ananda', '2016', '', 7, '2022-12-05 22:03:38'),
(12, 'BK0012', 16, 1, '0600ae36846fcfdbc39a18651a1ee6c5.jpg', 'ISBN 978-623-01-9994-5', NULL, 'Arduino &amp; Johnny-Five : dasar pemrograman Arduino menggunakan Javascrit Robotic Programming Framework', 'Yogyakarta : Andi', 'Abdul Kadir', '2019', '', 15, '2022-12-05 22:05:48'),
(13, 'BK0013', 15, 2, 'be7898aa92312d59d2c092497057c81d.jpeg', 'ISBN 9798140451', NULL, 'Matematika ekonomi', 'Jakarta : Lembaga Penerbit Fakultas Ekonomi Universitas Indonesia', 'Soeheroe Tjokroprajitno', '1994', '', 21, '2022-12-05 22:12:10'),
(14, 'BK0014', 15, 2, 'ba3d374669b35db09b82910ddbb48fc9.jpg', 'ISBN 979-676-761-9', NULL, 'Cermat Matematika', 'Jakarta : Yudhistira', 'Husein Tampomas', '2003', '', 29, '2022-12-05 22:13:43'),
(15, 'BK0015', 19, 6, 'e1360c59d580ea966062eb2c65296c4e.png', 'ISBN 978-602-8187-68-8', NULL, 'Web Programming mudah dan cepat', 'Yogyakarta : Deepublish', 'Redi Panuju', '2018', '', 9, '2022-12-06 20:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(6, 'PJ0017', '0', 0, '2022-12-05'),
(7, 'PJ001', '4000', 1, '2022-12-05'),
(8, 'PJ0027', '0', 0, '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Pemrograman'),
(3, 'Agama'),
(4, 'Komik'),
(5, 'Populer'),
(6, 'Hukum'),
(7, 'Novel'),
(8, 'Olahraga'),
(9, 'Sains'),
(10, 'Statistika'),
(11, 'Akutansi'),
(12, 'Automotif'),
(13, 'Bahasa'),
(14, 'Komunikasi'),
(15, 'Matematika'),
(16, 'Robotic'),
(17, 'Komputer'),
(19, 'Web Programming');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(1, 'AG001', 'cyrill', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Cyrill Ilario Ifaru', 'Jakarta', '2000-07-02', 'Laki-Laki', 'Pasar Minggu', '082299485827', 'cyrill@gmail.com', '2022-10-29', 'user_1670221953.JPG'),
(2, 'AG002', 'luthfi', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Luthfi', 'Depok', '2002-11-19', 'Laki-Laki', 'Cinere', '083243543684', 'luthfi@gmail.com', '2022-11-21', 'user_1670221900.JPEG'),
(12, 'AG0012', 'alfia', '202cb962ac59075b964b07152d234b70', 'Petugas', 'alfia', 'Depok', '1998-06-25', 'Perempuan', 'Depok', '007096088', 'alfia@gmail.com', '2022-12-06', 'user_1670333048.JPEG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(11, 'PJ001', 'AG002', 'BK0014', 'Di Kembalikan', '2022-12-02', 2, '2022-12-04', '2022-12-05'),
(14, 'PJ0014', 'AG002', 'BK0014', 'Dipinjam', '2022-12-04', 2, '2022-12-06', '0'),
(15, 'PJ0014', 'AG002', 'BK0010', 'Dipinjam', '2022-12-04', 2, '2022-12-06', '0'),
(16, 'PJ0014', 'AG002', 'BK001', 'Dipinjam', '2022-12-04', 2, '2022-12-06', '0'),
(17, 'PJ0017', 'AG002', 'BK0014', 'Di Kembalikan', '2022-12-01', 4, '2022-12-05', '2022-12-05'),
(18, 'PJ0017', 'AG002', 'BK0010', 'Di Kembalikan', '2022-12-01', 4, '2022-12-05', '2022-12-05'),
(19, 'PJ0017', 'AG002', 'BK001', 'Di Kembalikan', '2022-12-01', 4, '2022-12-05', '2022-12-05'),
(20, 'PJ0017', 'AG002', 'BK0012', 'Di Kembalikan', '2022-12-01', 4, '2022-12-05', '2022-12-05'),
(26, 'PJ0021', 'AG002', 'BK0012', 'Dipinjam', '2022-12-01', 3, '2022-12-04', '0'),
(27, 'PJ0027', 'AG002', 'BK0015', 'Di Kembalikan', '2022-12-06', 2, '2022-12-08', '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 1'),
(2, 'Rak Buku 2'),
(3, 'Rak Buku 3'),
(4, 'Rak Buku 4'),
(5, 'Rak Buku 5'),
(6, 'Rak Buku 6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
