-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 02:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `nip`, `pangkat`, `id_user`) VALUES
(1, 'Deni Kurniawan, S. Pd.', '198006302003121003', 'Penata Muda  / IIIa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diklat`
--

CREATE TABLE `tbl_diklat` (
  `id_diklat` int(10) NOT NULL,
  `id_sm` varchar(30) DEFAULT NULL,
  `id_bagian` int(10) DEFAULT NULL,
  `jenis_diklat` text DEFAULT NULL,
  `lokasi` text DEFAULT NULL,
  `tgl_awal` varchar(12) DEFAULT NULL,
  `tgl_akhir` varchar(12) DEFAULT NULL,
  `lama` varchar(10) DEFAULT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(1, 'a9c95b71e504c14a62eecaf72285d31d', '2022-08-07_SM_1659884027.pdf', '122.72'),
(5, '523916689830d9104ad1551008ead2e4', '2024-01-30_SM_1706599895.docx', '13.39'),
(3, 'be1ca52dd58c1f463b1e2ef8d4565e10', '2022-08-17_SM_1660753033.pdf', '100.71'),
(4, 'fb7ae2e583bc6c4003139c5a76742583', '2024-01-30_SM_1706586394.docx', '56.48'),
(6, 'e200955e31e599dbe46b0b1b5f6c5ad6', '2024-01-30_SM_1706600785.docx', '13.39'),
(7, '78e2335da4bcc579243680c83785cf77', '2024-01-30_SM_1706601071.docx', '13.39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_madrasah`
--

CREATE TABLE `tbl_madrasah` (
  `id` int(2) NOT NULL,
  `nm_kepala` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `madrasah` varchar(100) DEFAULT NULL,
  `npsn` varchar(20) DEFAULT NULL,
  `nsm` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tapel` varchar(20) DEFAULT NULL,
  `kop_1` text DEFAULT NULL,
  `kop_2` text DEFAULT NULL,
  `telp` text DEFAULT NULL,
  `id_user` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_madrasah`
--

INSERT INTO `tbl_madrasah` (`id`, `nm_kepala`, `nip`, `jabatan`, `madrasah`, `npsn`, `nsm`, `alamat`, `tapel`, `kop_1`, `kop_2`, `telp`, `id_user`) VALUES
(1, 'GAREND DODY HUSNI PRATAMA', '199909082020101004', 'KETUA HIMPUNAN', 'UNIVERSITAS JANABADRA', '40142312', '151335150006', 'YOGYAKARTA', '2021/2022', '-', 'UNIVERSITAS JANABADRA', 'ftujb@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(4) NOT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `nm_siswa` varchar(255) DEFAULT NULL,
  `ttl` varchar(255) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `jurusan` varchar(10) DEFAULT NULL,
  `nm_ort` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `id_user` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `id_surat` varchar(20) DEFAULT NULL,
  `tgl_id_surat` varchar(12) DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `pelaksana` varchar(255) DEFAULT NULL,
  `bagian` varchar(255) DEFAULT NULL,
  `peringatan` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ska`
--

CREATE TABLE `tbl_ska` (
  `id_ska` int(10) NOT NULL,
  `id_siswa` int(10) DEFAULT NULL,
  `nomor_ska` varchar(4) DEFAULT NULL,
  `no_ska` varchar(100) DEFAULT NULL,
  `jenis_ska` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_ska` varchar(100) DEFAULT NULL,
  `id_user` int(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ttd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ska`
--

INSERT INTO `tbl_ska` (`id_ska`, `id_siswa`, `nomor_ska`, `no_ska`, `jenis_ska`, `keterangan`, `tgl_ska`, `id_user`, `date`, `ttd`) VALUES
(1, 1, '009', 'MA-SM/V/2022', '1', 'kegiatan paskibraka kabupaten', 'Sungai Selatan, 08 Agustus 2022', 8, '2024-01-30 10:54:03', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `bagian` varchar(255) DEFAULT NULL,
  `disposisi` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL,
  `lampiran` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `sifat` varchar(20) DEFAULT NULL,
  `dibaca` int(1) DEFAULT NULL,
  `tgl_ajuan` varchar(20) DEFAULT NULL,
  `segera` text DEFAULT NULL,
  `biasa` text DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_disposisi` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `bagian`, `disposisi`, `id_user`, `tgl_sm`, `lampiran`, `status`, `sifat`, `dibaca`, `tgl_ajuan`, `segera`, `biasa`, `catatan`, `tgl_disposisi`) VALUES
(1, '001', '07-08-2022', '01.004/SMA-SM/V/2018', '2022-07-01', 'Kemenag Sungsel', 'PP.01', 'Pelaksanaan KSM Kabupaten', 'a9c95b71e504c14a62eecaf72285d31d', 'Guru', 'Deni Kurniawan, S. Pd.', 2, '2022-08-07', '1 Lampiran', 'Asli', 'Segera', 3, '2022-08-07', 'Tindak lanjuti', 'Bicarakan dengan saya', '-', '2022-08-07 21:57:32'),
(2, '002', '17-08-2022', '01.004/SMA-SM/V/2022', '2022-08-16', 'Perpusda', 'PP.00', 'Pelaksaan Bazar Buku Pendidikan', 'be1ca52dd58c1f463b1e2ef8d4565e10', 'Kepala Perpustakaan', 'Deni Kurniawan, S. Pd.', 2, '2022-08-17', '1 Lampiran', 'Asli', 'Segera', 3, '2022-08-17', 'Tindak lanjuti<br>Setuju<br>Edarkan', 'Bicarakan dengan saya<br>Bicarakan bersama', 'Menghadap saya dan melakukan koordinasi', '2022-08-17 23:21:41'),
(3, '1111', '30-01-2024', '1111', '2024-01-30', 'ffff', '12', 'fdddd', 'fb7ae2e583bc6c4003139c5a76742583', 'Kepala TU', 'Arsip<br>Deni Kurniawan, S. Pd.', 2, '2024-01-30', '1 Lampiran', 'Asli', 'Segera', 3, '2024-01-30', 'Setuju', 'Bicarakan dengan saya', '', '2024-01-30 10:51:16'),
(4, '0123', '30-01-2024', '11', '2024-01-30', 'HImpunan Informatika UJB', '', 'ijin konser', '523916689830d9104ad1551008ead2e4', 'Kepala TU', 'Arsip', 2, '2024-01-30', '1 Lampiran', 'Asli', 'Segera', 3, '2024-01-30', 'Tindak lanjuti<br>Setuju', 'Perbaiki<br>Diarsipkan', '', '2024-01-30 14:40:40'),
(5, '12222', '30-01-2024', '1111', '2024-01-30', 'hmjif', '', 'ffeferffr', 'e200955e31e599dbe46b0b1b5f6c5ad6', 'Arsip', 'Arsip', 2, '2024-01-30', '1 Lampiran', 'Asli', 'Segera', 3, '2024-01-30', 'Setuju', 'Simpan<br>Diarsipkan', '', '2024-01-30 14:48:18'),
(6, '11111111', '30-01-2024', '111', '2024-01-30', '111', '', '111', '78e2335da4bcc579243680c83785cf77', 'Kepala TU', 'Arsip', 2, '2024-01-30', '1 Lampiran', 'Asli', 'Segera', 3, '2024-01-30', 'Setuju', 'Bicarakan dengan saya', '', '2024-01-30 20:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `level` enum('s_admin','admin','user','ktu','kepala') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(3, 'user', '21232f297a57a5a743894a0e4a801fc3', 'Suharto, S. Ag.', 'user@gmail.com', 'Jl. Solok Utara Gang 7 - Sungai Selatan', '081444451251', '-', 'user', 'aktif', '07-08-2022 20:15:11', '07-08-2022 21:59:50'),
(2, 'petugas', '21232f297a57a5a743894a0e4a801fc3', 'HIMPUNAN', 'hmjif@gmail.com', 'YOGYA', '081444451251', '-', 'admin', 'aktif', '07-08-2022 20:16:09', '30-01-2024 20:20:38'),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@gmail.com', 'Jl. Tentara Rakyat Mataram No.55-57, Bumijo, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55231', '081444451251', '-', 's_admin', 'aktif', '07-08-2022 17:03:12', '30-01-2024 20:43:52'),
(4, 'ktu', '21232f297a57a5a743894a0e4a801fc3', 'Sutrisno, S. Pd.', 'ktu@gmail.com', 'Jl. Solok Utara Gang 7 - Sungai Selatan', '081444451251', '-', 'ktu', 'aktif', '07-08-2022 20:14:40', '17-08-2022 23:22:10'),
(5, 'kepala', '21232f297a57a5a743894a0e4a801fc3', 'Drs. Nam Nam, M. Pd. I.', 'kepala@gmail.com', 'Jl. Solok Utara Gang 7 - Sungai Selatan', '081444451251', '-', 'kepala', 'aktif', '07-08-2022 20:12:51', '17-08-2022 23:19:36'),
(6, 'KepalaFt', '35378a6fc5548bfa950eee74b6949f08', 'DEKAN', 'dekan@GMAIL.COM', '-', '-', '-', 'kepala', 'aktif', '30-01-2024 10:29:42', '30-01-2024 20:38:49'),
(7, 'TU', 'ca3361ad64c4cfc6cf56de774c7a903c', 'HUMAS', 'humas@gmail.com', '-', '-', '-', 'ktu', 'aktif', '30-01-2024 10:29:58', '30-01-2024 20:38:09'),
(8, 'UserFt', '988bad9dbecfa8788d151325b38c5dfd', 'UserFt', '-', '-', '-', '-', 'user', 'aktif', '30-01-2024 10:30:19', '30-01-2024 10:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `tbl_diklat`
--
ALTER TABLE `tbl_diklat`
  ADD PRIMARY KEY (`id_diklat`);

--
-- Indexes for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `tbl_madrasah`
--
ALTER TABLE `tbl_madrasah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `tbl_ska`
--
ALTER TABLE `tbl_ska`
  ADD PRIMARY KEY (`id_ska`);

--
-- Indexes for table `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_diklat`
--
ALTER TABLE `tbl_diklat`
  MODIFY `id_diklat` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_madrasah`
--
ALTER TABLE `tbl_madrasah`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ska`
--
ALTER TABLE `tbl_ska`
  MODIFY `id_ska` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
