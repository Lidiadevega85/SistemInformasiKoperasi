-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 04:05 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `IDAnggota` varchar(5) NOT NULL,
  `NamaAnggota` varchar(30) NOT NULL,
  `TglLahir` varchar(20) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `JK` varchar(20) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `HP` varchar(15) NOT NULL,
  `SimPokok` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`IDAnggota`, `NamaAnggota`, `TglLahir`, `Agama`, `JK`, `Alamat`, `HP`, `SimPokok`) VALUES
('A001', 'Fitri Permata Sari', '23 Mei 1987', 'Islam', 'Perempuan', 'Batu Payuang', '085263150298', 120000),
('A002', 'Lusiana Eka Putri', '25 Januari 1990', 'Islam', 'Perempuan', 'Kepala Bukit', '082321211515', 120000),
('A003', 'Mahendra', '25 Juni 1980', 'Islam', 'Laki-Laki', 'Payakumbuh', '085234123456', 120000),
('A004', 'Budianto', '10 Januari 1980', 'Islam', 'Laki-Laki', 'Bukittinggi', '085234909090', 120000),
('A005', 'Hartati Yamin', '30 April 1986', 'Islam', 'Perempuan', 'Padang', '085209876543', 120000),
('A006', 'Andrico', '11 Februari 1991', 'Islam', 'Laki-Laki', 'Payakumbuh', '085278654321', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `No_Kwitansi` varchar(5) NOT NULL,
  `Tanggal` varchar(20) NOT NULL,
  `Nomor` varchar(5) NOT NULL,
  `IDAnggota` varchar(5) NOT NULL,
  `Besar` double NOT NULL,
  `Jangka` int(11) NOT NULL,
  `Ke` int(11) NOT NULL,
  `Angsuran` double NOT NULL,
  `Bunga` double NOT NULL,
  `Bayar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angsuran`
--

INSERT INTO `angsuran` (`No_Kwitansi`, `Tanggal`, `Nomor`, `IDAnggota`, `Besar`, `Jangka`, `Ke`, `Angsuran`, `Bunga`, `Bayar`) VALUES
('K001', '12 Februari 2020', 'P001', 'A001', 5000000, 10, 1, 500000, 50000, 550000),
('K002', '10 April 2020', 'P002', 'A002', 3000000, 10, 1, 300000, 30000, 330000),
('K003', '10 Mei 2020', 'P003', 'A005', 2000000, 10, 1, 200000, 20000, 220000),
('K004', '20 Juli 2020', 'P004', 'A006', 1000000, 10, 1, 100000, 10000, 110000),
('K005', '21 November 2020', 'P005', 'A003', 2500000, 10, 1, 250000, 25000, 275000);

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `Nomor` varchar(5) NOT NULL,
  `Tanggal` varchar(20) NOT NULL,
  `IDAnggota` varchar(5) NOT NULL,
  `Besar` double NOT NULL,
  `Jangka` int(11) NOT NULL,
  `Provisi` double NOT NULL,
  `Terima` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`Nomor`, `Tanggal`, `IDAnggota`, `Besar`, `Jangka`, `Provisi`, `Terima`) VALUES
('P001', '12 Januari 2020', 'A001', 5000000, 10, 50000, 4950000),
('P002', '10 Maret 2020', 'A002', 3000000, 10, 30000, 2970000),
('P003', '10 April 2020', 'A005', 2000000, 10, 20000, 1980000),
('P004', '20 Juni 2020', 'A006', 1000000, 10, 10000, 990000),
('P005', '21 Oktober 2020', 'A003', 2500000, 10, 25000, 2475000);

-- --------------------------------------------------------

--
-- Table structure for table `tbsimpanan`
--

CREATE TABLE `tbsimpanan` (
  `No_Transaksi` varchar(5) NOT NULL,
  `Tanggal` varchar(20) NOT NULL,
  `IDAnggota` varchar(5) NOT NULL,
  `JmlSimWajib` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsimpanan`
--

INSERT INTO `tbsimpanan` (`No_Transaksi`, `Tanggal`, `IDAnggota`, `JmlSimWajib`) VALUES
('S001', '10 Januari 202', 'A001', 30000),
('S002', '11 Februari 2020', 'A002', 30000),
('S003', '14 Maret 2020', 'A003', 30000),
('S004', '10 Agustus 2020', 'A004', 30000),
('S005', '24 September 2020', 'A005', 30000),
('S006', '10 November 2020', 'A006', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`IDAnggota`);

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD PRIMARY KEY (`No_Kwitansi`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`Nomor`);

--
-- Indexes for table `tbsimpanan`
--
ALTER TABLE `tbsimpanan`
  ADD PRIMARY KEY (`No_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
