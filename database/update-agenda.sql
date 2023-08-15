-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 08:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_perangkat` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_perangkat`, `id_guru`, `id_mapel`, `ket`, `tanggal_upload`, `nama_file`, `tipe_file`, `ukuran_file`, `file`) VALUES
(20, 12, 1, 'TIK Kelas VII Smt 1 BAB 1', '2019-03-14', 'TIK-Kelas7', 'pdf', '133241', '../file/TIK-Kelas7.pdf'),
(21, 13, 3, '', '2023-04-10', 'Penulisan Laporan', 'docx', '13510', '../file/Penulisan Laporan.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id_agenda` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jam` varchar(20) NOT NULL,
  `materi` text NOT NULL,
  `absen` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_agenda`
--

INSERT INTO `tb_agenda` (`id_agenda`, `id_guru`, `id_mapel`, `tgl`, `jam`, `materi`, `absen`, `ket`, `status`) VALUES
(2, 13, 3, '2023-04-10', '08:13', '<p>Tes</p>\r\n', 'Hadir', 'Tes', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agendalain`
--

CREATE TABLE `tb_agendalain` (
  `id_lain` int(10) NOT NULL,
  `id_guru` int(10) NOT NULL,
  `tgl_kgt` date NOT NULL,
  `kegiatan` text NOT NULL,
  `isi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_agendalain`
--

INSERT INTO `tb_agendalain` (`id_lain`, `id_guru`, `tgl_kgt`, `kegiatan`, `isi`, `keterangan`) VALUES
(1, 12, '2019-03-16', 'UJI COBA APLIKASI UJIAN ONLINE UNTUK UNBK dan UKK', '<p>Assalamualaikum Wr. Wb<br />\r\nDiberitahuakan kepada segenap jajaran dewan guru Madrasah Tsanawiyah Negeri 2 Jember, bahwa pada Hari Minggu Tanggal 16 Maret 2019 diharapkan kedatangannya untuk<br />\r\nuji coba dan pelatihan pengisian dan pembuatan soal d', 'UJI COBA PEMBUATAN DAN PENGISIAN SOAL DI APLIKASI UJIAN ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gelar` varchar(100) NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `nip`, `kelamin`, `alamat`, `telp`, `username`, `password`, `gelar`, `tempat`, `tgl`, `agama`, `email`, `photo`) VALUES
(14, 'Dian', '123123', 'Laki-laki', 'batam', '081212122112', 'dian', '123', 'S.kom', 'batam', '2002-04-04', '', 'dan@gmail.com', 'lg.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `idkelas` int(11) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`idkelas`, `kelas`) VALUES
(9, 'XA-APHP'),
(10, 'XB-APHP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas_mapel`
--

CREATE TABLE `tb_kelas_mapel` (
  `id_kelas_m` int(11) NOT NULL,
  `idkelas` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `photok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nama`, `username`, `password`, `photok`) VALUES
(3, 'madian', 'kepsek', '123123', 'lg.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `idkelas` int(11) NOT NULL,
  `nama_mapel` varchar(60) NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `tingkat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `id_guru`, `idkelas`, `nama_mapel`, `jurusan`, `tingkat`) VALUES
(3, 13, 9, 'Informatika', 'APHP', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mastermapel`
--

CREATE TABLE `tb_mastermapel` (
  `id_mMapel` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mastermapel`
--

INSERT INTO `tb_mastermapel` (`id_mMapel`, `mapel`) VALUES
(15, 'Informatika'),
(16, 'Matematika'),
(17, 'BAHASA INGGRIS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tajaran`
--

CREATE TABLE `tb_tajaran` (
  `id_tajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tajaran`
--

INSERT INTO `tb_tajaran` (`id_tajaran`, `tahun_ajaran`, `status`) VALUES
(4, '2022/2023', 'Y'),
(5, '2023/2024', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_admin`, `nama`, `username`, `password`, `foto`) VALUES
(6, 'dian Project', 'admin  ', 'admin', 'lg.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_perangkat`);

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tb_agendalain`
--
ALTER TABLE `tb_agendalain`
  ADD PRIMARY KEY (`id_lain`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`idkelas`),
  ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `tb_kelas_mapel`
--
ALTER TABLE `tb_kelas_mapel`
  ADD PRIMARY KEY (`id_kelas_m`),
  ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `tb_mastermapel`
--
ALTER TABLE `tb_mastermapel`
  ADD PRIMARY KEY (`id_mMapel`);

--
-- Indexes for table `tb_tajaran`
--
ALTER TABLE `tb_tajaran`
  ADD PRIMARY KEY (`id_tajaran`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_perangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_agendalain`
--
ALTER TABLE `tb_agendalain`
  MODIFY `id_lain` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_kelas_mapel`
--
ALTER TABLE `tb_kelas_mapel`
  MODIFY `id_kelas_m` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_mastermapel`
--
ALTER TABLE `tb_mastermapel`
  MODIFY `id_mMapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_tajaran`
--
ALTER TABLE `tb_tajaran`
  MODIFY `id_tajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD CONSTRAINT `tb_agenda_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `tb_mapel` (`id_mapel`) ON DELETE CASCADE;

--
-- Constraints for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD CONSTRAINT `tb_mapel_ibfk_1` FOREIGN KEY (`idkelas`) REFERENCES `tb_kelas` (`idkelas`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
