-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 05:21 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
`id_perangkat` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_perangkat`, `id_guru`, `id_mapel`, `ket`, `tanggal_upload`, `nama_file`, `tipe_file`, `ukuran_file`, `file`) VALUES
(20, 12, 1, 'TIK Kelas VII Smt 1 BAB 1', '2019-03-14', 'TIK-Kelas7', 'pdf', '133241', '../file/TIK-Kelas7.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agenda`
--

CREATE TABLE IF NOT EXISTS `tb_agenda` (
`id_agenda` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jam` varchar(20) NOT NULL,
  `materi` text NOT NULL,
  `absen` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_agenda`
--

INSERT INTO `tb_agenda` (`id_agenda`, `id_guru`, `id_mapel`, `tgl`, `jam`, `materi`, `absen`, `ket`, `status`) VALUES
(1, 12, 1, '2019-03-14', '10:45 - 11:45', '<p><strong>Pengenalan Teknologi Informasi dan Komunikasi</strong></p>\r\n\r\n<p><strong>1. Apa itu TIK ?<br />\r\n2. Apa kegunaan TIK pada masa sekarang ?<br />\r\n3. Peranan penting TIK pada zaman sekarang dan seterusnya</strong></p>\r\n', '40 Siswa', 'Siswa masuk kelas semua', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_agendalain`
--

CREATE TABLE IF NOT EXISTS `tb_agendalain` (
`id_lain` int(10) NOT NULL,
  `id_guru` int(10) NOT NULL,
  `tgl_kgt` date NOT NULL,
  `kegiatan` text NOT NULL,
  `isi` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_agendalain`
--

INSERT INTO `tb_agendalain` (`id_lain`, `id_guru`, `tgl_kgt`, `kegiatan`, `isi`, `keterangan`) VALUES
(1, 12, '2019-03-16', 'UJI COBA APLIKASI UJIAN ONLINE UNTUK UNBK dan UKK', '<p>Assalamualaikum Wr. Wb<br />\r\nDiberitahuakan kepada segenap jajaran dewan guru Madrasah Tsanawiyah Negeri 2 Jember, bahwa pada Hari Minggu Tanggal 16 Maret 2019 diharapkan kedatangannya untuk<br />\r\nuji coba dan pelatihan pengisian dan pembuatan soal d', 'UJI COBA PEMBUATAN DAN PENGISIAN SOAL DI APLIKASI UJIAN ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE IF NOT EXISTS `tb_guru` (
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `nip`, `kelamin`, `alamat`, `telp`, `username`, `password`, `gelar`, `tempat`, `tgl`, `agama`, `email`, `photo`) VALUES
(1, 'Muhammad Abduh', '197409301999', 'Laki-laki', '        Ladang Laweh', '082214609889', 'guru', 'guru', 'M.Ag', 'Padang', '2018-05-28', 'Islam', 'bitras90@gmail.com', 'admin.jpg'),
(8, 'Asri Hidayat', '002897867', 'Laki-laki', 'Tabek Gadang', '7695', 'a', 'a', 'S.Pd', 'Kuansing', '2018-05-26', 'Islam', 'gdg@gmail.cpm', '10304432100006.png'),
(7, 'Abdul Yamin', '001970769769', 'Laki-laki', 'Desa Sibak, Ipuh Muko-muko', '082214607669', 'yamin', 'yamin', 'S.Pd', 'Sibak', '2018-05-17', 'Islam', 'ocikyamin93@gmail.com', 'userk.png'),
(9, 'Revi Sumardi', '000584635654', 'Laki-laki', '   Palambayan', '098089977', 'r', 'r', 'S.Pd', 'Padang', '2018-05-04', 'Islam', 'revi@gmail.com', 'guruc.png'),
(10, 'Randu Franstio', '900808098079', 'Laki-laki', ' Tabek Gadang', '089797', 'rdn', 'rdn', 'S.Pd', 'Sijunjung', '2018-05-01', 'Islam', 'randu@gmail.com', '10304432100006.png'),
(11, 'Andro Sudirno', '08808080', 'Laki-laki', 'dff', '6666', 'tes', 'tes', 'spd', 'sss', '2018-07-19', 'Islam', 'ee@gmail.com', 'userk.png'),
(12, 'Vanny Hadiwijaya', '1210651275', 'Laki-laki', 'JL. Gajah Mada 23 No. 158', '082132972137', 'vanny', 'vanny', 'S.Kom', 'Jember', '1993-09-08', 'Islam', 'vannyhadiwijaya@gmail.com', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE IF NOT EXISTS `tb_kelas` (
`idkelas` int(11) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`idkelas`, `kelas`) VALUES
(1, 'VII-A'),
(2, 'VII-B'),
(3, 'VII-C'),
(4, 'VII-D'),
(5, 'VII-E'),
(6, 'VII-F'),
(7, 'VII-PDCI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas_mapel`
--

CREATE TABLE IF NOT EXISTS `tb_kelas_mapel` (
`id_kelas_m` int(11) NOT NULL,
  `idkelas` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kepsek`
--

CREATE TABLE IF NOT EXISTS `tb_kepsek` (
`id_kepsek` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `photok` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nama`, `username`, `password`, `photok`) VALUES
(1, 'Dra. Nurul Faridha', 'kepsek', 'kepsek', 'userk.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE IF NOT EXISTS `tb_mapel` (
`id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `idkelas` int(11) NOT NULL,
  `nama_mapel` varchar(60) NOT NULL,
  `jurusan` varchar(60) NOT NULL,
  `tingkat` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `id_guru`, `idkelas`, `nama_mapel`, `jurusan`, `tingkat`) VALUES
(1, 12, 7, 'Teknologi Informasi dan Komunikasi', 'SMP/MTs', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mastermapel`
--

CREATE TABLE IF NOT EXISTS `tb_mastermapel` (
`id_mMapel` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mastermapel`
--

INSERT INTO `tb_mastermapel` (`id_mMapel`, `mapel`) VALUES
(4, 'Bahasa Indonesia'),
(5, 'Bahasa Inggris'),
(11, 'Matematika'),
(12, 'Ilmu Pengetahuan Alam'),
(13, 'Ilmu Pengetahuan Sosial'),
(14, 'Teknologi Informasi dan Komunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tajaran`
--

CREATE TABLE IF NOT EXISTS `tb_tajaran` (
`id_tajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tajaran`
--

INSERT INTO `tb_tajaran` (`id_tajaran`, `tahun_ajaran`, `status`) VALUES
(1, '2017 / 2018', 'T'),
(2, '2018 -2019', 'T'),
(3, '2019 / 2020', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`id_admin` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_admin`, `nama`, `username`, `password`, `foto`) VALUES
(2, 'Aplikasi Pendidikan', 'admin', 'admin', 'userk.png'),
(5, '1', '1', '1', 'userk.png');

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
 ADD PRIMARY KEY (`id_agenda`), ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tb_agendalain`
--
ALTER TABLE `tb_agendalain`
 ADD PRIMARY KEY (`id_lain`), ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
 ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
 ADD PRIMARY KEY (`idkelas`), ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `tb_kelas_mapel`
--
ALTER TABLE `tb_kelas_mapel`
 ADD PRIMARY KEY (`id_kelas_m`), ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
 ADD PRIMARY KEY (`id_kepsek`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
 ADD PRIMARY KEY (`id_mapel`), ADD KEY `idkelas` (`idkelas`);

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
MODIFY `id_perangkat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_agendalain`
--
ALTER TABLE `tb_agendalain`
MODIFY `id_lain` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
MODIFY `idkelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_kelas_mapel`
--
ALTER TABLE `tb_kelas_mapel`
MODIFY `id_kelas_m` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_mastermapel`
--
ALTER TABLE `tb_mastermapel`
MODIFY `id_mMapel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tb_tajaran`
--
ALTER TABLE `tb_tajaran`
MODIFY `id_tajaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
