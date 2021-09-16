-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2021 at 01:12 PM
-- Server version: 10.2.40-MariaDB-log-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediasol_mediasolusitek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `gambar` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `username`, `password`, `gambar`) VALUES
(101, 'Ade Prisma Nugraha', 'adeprisma7@gmail.com', 'ade', '$2y$10$/UMYFXjnsFral7KA8W8oDujVTcwFk/tbs2ek2YEWJOARnyxgheMY.', 'ade.jpg'),
(102, 'Kevin Surya Perdana', 'kevinz_proJimin@gmail.com', 'kevin', '$2y$10$Z7L00t3mPwQrBRdWqY0NnOKh0kmeCmJFyjUR25q84B49t.1Bnkqiy', 'kevin.jpg'),
(104, 'Rachmansyah Anessa Putra', 'rachman_alucard@gmail.com', 'rachman', '$2y$10$4BQ665GXNiYeVC1PNhpSzuu7cx82znoGS86d8xPlpwihWlMYOEr2m', 'rachman.jpeg'),
(105, 'Ramdhani Kurniawan', 'ramdhani_balmond@gmail.com', 'ramdhani', '$2y$10$4BQ665GXNiYeVC1PNhpSzuu7cx82znoGS86d8xPlpwihWlMYOEr2m', 'ramdhani.jpg'),
(106, 'Ilyas', 'ilyas@gmail.com', 'Ilyas', '$2y$10$/UMYFXjnsFral7KA8W8oDujVTcwFk/tbs2ek2YEWJOARnyxgheMY.', 'nigga-david.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kode_kategori` int(1) NOT NULL,
  `kode_model` int(1) NOT NULL,
  `kode_merk` int(3) NOT NULL,
  `gambar` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kode_kategori`, `kode_model`, `kode_merk`, `gambar`) VALUES
(3001, 'Repair Bubut Manual', 2, 3, 9, '4e783d794bbc025a94c624652c217817.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` int(1) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `nama_kategori`) VALUES
(0, 'industrial'),
(1, 'aksesoris'),
(2, 'perbaikan');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `kode_merk` int(3) NOT NULL,
  `nama_merk` varchar(100) NOT NULL,
  `gambar_merk` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`kode_merk`, `nama_merk`, `gambar_merk`) VALUES
(0, 'san ou', 'logo san_ou.png'),
(1, 'bosi tools', 'logobositools.png'),
(2, 'charles bubut', 'logocharlesbubut.png'),
(3, 'dixon', 'logodixon.png'),
(4, 'full mark', 'logofullmark.png'),
(5, 'j&w', 'logoj&w.jpg'),
(6, 'weida', 'logomesinbubutweida.png'),
(7, 'vertex', 'logovertex.png'),
(8, 'lainnya', 'transparan.jpg'),
(9, 'CBM', 'logocbm.png');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `kode_model` int(1) NOT NULL,
  `nama_model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`kode_model`, `nama_model`) VALUES
(0, 'vertex'),
(1, 'bosi'),
(2, 'san ou'),
(3, 'mesin bubut manual'),
(4, 'mesin bubut cnc'),
(5, 'Lainnya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `nama_sepatu` (`nama_barang`),
  ADD KEY `kode_kategori` (`kode_kategori`),
  ADD KEY `kode_model` (`kode_model`),
  ADD KEY `fk_foreign_kode_merk` (`kode_merk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`kode_merk`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`kode_model`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`),
  ADD CONSTRAINT `barang_ibfk_3` FOREIGN KEY (`kode_model`) REFERENCES `model` (`kode_model`),
  ADD CONSTRAINT `fk_foreign_kode_merk` FOREIGN KEY (`kode_merk`) REFERENCES `merk` (`kode_merk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
