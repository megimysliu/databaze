-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2019 at 11:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `bileta`
--

CREATE TABLE `bileta` (
  `id_bilete` int(11) NOT NULL,
  `cmimi` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `titulli` varchar(20) NOT NULL,
  `lloji` varchar(20) NOT NULL,
  `kohezgjatja` varchar(20) NOT NULL,
  `pershkrimi` varchar(30) NOT NULL,
  `ora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `klienti`
--

CREATE TABLE `klienti` (
  `id_klienti` int(11) NOT NULL,
  `emri` varchar(20) NOT NULL,
  `mbiemri` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nr_tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ndenjese`
--

CREATE TABLE `ndenjese` (
  `id_ndenjese` int(11) NOT NULL,
  `nr_rreshti` int(11) NOT NULL,
  `rezervim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `punonjesi`
--

CREATE TABLE `punonjesi` (
  `id_punonjesi` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nr_tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salla`
--

CREATE TABLE `salla` (
  `id_salle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bileta`
--
ALTER TABLE `bileta`
  ADD PRIMARY KEY (`id_bilete`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `klienti`
--
ALTER TABLE `klienti`
  ADD PRIMARY KEY (`id_klienti`);

--
-- Indexes for table `ndenjese`
--
ALTER TABLE `ndenjese`
  ADD PRIMARY KEY (`id_ndenjese`);

--
-- Indexes for table `punonjesi`
--
ALTER TABLE `punonjesi`
  ADD PRIMARY KEY (`id_punonjesi`);

--
-- Indexes for table `salla`
--
ALTER TABLE `salla`
  ADD PRIMARY KEY (`id_salle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bileta`
--
ALTER TABLE `bileta`
  MODIFY `id_bilete` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klienti`
--
ALTER TABLE `klienti`
  MODIFY `id_klienti` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ndenjese`
--
ALTER TABLE `ndenjese`
  MODIFY `id_ndenjese` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punonjesi`
--
ALTER TABLE `punonjesi`
  MODIFY `id_punonjesi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salla`
--
ALTER TABLE `salla`
  MODIFY `id_salle` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
