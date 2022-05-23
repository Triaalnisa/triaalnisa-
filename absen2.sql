-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 05:57 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `absen2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl-jurusan`
--

CREATE TABLE IF NOT EXISTS `tbl-jurusan` (
  `kd-jur` varchar(30) NOT NULL,
  `nm-jur` varchar(30) NOT NULL,
  PRIMARY KEY (`kd-jur`,`nm-jur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl-kelas`
--

CREATE TABLE IF NOT EXISTS `tbl-kelas` (
  `kd-kelas` varchar(30) NOT NULL,
  `nm-kelas` varchar(30) NOT NULL,
  PRIMARY KEY (`kd-kelas`,`nm-kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl-murid`
--

CREATE TABLE IF NOT EXISTS `tbl-murid` (
  `no-id` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kd-kelas` varchar(30) NOT NULL,
  `kd-jur` varchar(30) NOT NULL,
  PRIMARY KEY (`no-id`,`nama`,`kd-kelas`,`kd-jur`),
  KEY `kd-kelas` (`kd-kelas`),
  KEY `kd-jur` (`kd-jur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl-siswa`
--

CREATE TABLE IF NOT EXISTS `tbl-siswa` (
  `no-id` varchar(30) NOT NULL,
  `nm-siswa` varchar(30) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `nm-ortu` varchar(30) NOT NULL,
  PRIMARY KEY (`no-id`,`nm-siswa`,`ttl`,`alamat`,`nm-ortu`),
  KEY `no-id` (`no-id`),
  KEY `no-id_2` (`no-id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl-murid`
--
ALTER TABLE `tbl-murid`
  ADD CONSTRAINT `tbl@002dmurid_ibfk_3` FOREIGN KEY (`kd-jur`) REFERENCES `tbl-jurusan` (`kd-jur`),
  ADD CONSTRAINT `tbl@002dmurid_ibfk_1` FOREIGN KEY (`no-id`) REFERENCES `tbl-siswa` (`no-id`),
  ADD CONSTRAINT `tbl@002dmurid_ibfk_2` FOREIGN KEY (`kd-kelas`) REFERENCES `tbl-kelas` (`kd-kelas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
