-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2017 at 08:38 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1834937_parcial2`
--
CREATE DATABASE IF NOT EXISTS `id1834937_parcial2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1834937_parcial2`;

-- --------------------------------------------------------

--
-- Table structure for table `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `idcorr` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corregimiento`
--

INSERT INTO `corregimiento` (`id`, `iddist`, `idcorr`, `nombre`) VALUES
(1, 1, 1, 'Bajo Boquete'),
(2, 1, 2, 'Alto Boquete'),
(3, 2, 1, 'Pedregal'),
(4, 2, 2, 'San Carlos'),
(5, 1, 1, 'Almirante'),
(6, 1, 2, 'Guabito'),
(7, 2, 1, 'Mira mar'),
(8, 2, 2, 'Puerto Peña'),
(9, 1, 1, 'Canoas'),
(10, 1, 1, 'Sixaola');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `idprov`, `iddist`, `nombre`) VALUES
(1, 'pa-04', 1, 'Boquete'),
(2, 'pa-04', 2, 'David'),
(3, 'pa-01', 1, 'Changuinola'),
(4, 'pa-01', 2, 'Chiriquí Grande'),
(5, 'cr-01', 1, 'Talamaca'),
(6, 'cr-02', 1, 'Corredores');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `idpais`, `nombre`) VALUES
(1, 'pa', 'Panamá'),
(2, 'cr', 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `idpais`, `idprov`, `nombre`) VALUES
(1, 'pa', 'pa-04', 'Chiriquí'),
(2, 'pa', 'pa-01', 'Bocas del toro'),
(3, 'pa', 'cr-01', 'Limón'),
(4, 'pa', 'cr-02', 'Puntarenas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `id1834937_parcial2`
--
CREATE DATABASE IF NOT EXISTS `id1834937_parcial2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1834937_parcial2`;

-- --------------------------------------------------------

--
-- Table structure for table `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `idcorr` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corregimiento`
--

INSERT INTO `corregimiento` (`id`, `iddist`, `idcorr`, `nombre`) VALUES
(1, 1, 1, 'Bajo Boquete'),
(2, 1, 2, 'Alto Boquete'),
(3, 2, 1, 'Pedregal'),
(4, 2, 2, 'San Carlos'),
(5, 1, 1, 'Almirante'),
(6, 1, 2, 'Guabito'),
(7, 2, 1, 'Mira mar'),
(8, 2, 2, 'Puerto Peña'),
(9, 1, 1, 'Canoas'),
(10, 1, 1, 'Sixaola');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `idprov`, `iddist`, `nombre`) VALUES
(1, 'pa-04', 1, 'Boquete'),
(2, 'pa-04', 2, 'David'),
(3, 'pa-01', 1, 'Changuinola'),
(4, 'pa-01', 2, 'Chiriquí Grande'),
(5, 'cr-01', 1, 'Talamaca'),
(6, 'cr-02', 1, 'Corredores');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `idpais`, `nombre`) VALUES
(1, 'pa', 'Panamá'),
(2, 'cr', 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `idpais`, `idprov`, `nombre`) VALUES
(1, 'pa', 'pa-04', 'Chiriquí'),
(2, 'pa', 'pa-01', 'Bocas del toro'),
(3, 'pa', 'cr-01', 'Limón'),
(4, 'pa', 'cr-02', 'Puntarenas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `id1834937_parcial2`
--
CREATE DATABASE IF NOT EXISTS `id1834937_parcial2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1834937_parcial2`;

-- --------------------------------------------------------

--
-- Table structure for table `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `idcorr` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corregimiento`
--

INSERT INTO `corregimiento` (`id`, `iddist`, `idcorr`, `nombre`) VALUES
(1, 1, 1, 'Bajo Boquete'),
(2, 1, 2, 'Alto Boquete'),
(3, 2, 1, 'Pedregal'),
(4, 2, 2, 'San Carlos'),
(5, 1, 1, 'Almirante'),
(6, 1, 2, 'Guabito'),
(7, 2, 1, 'Mira mar'),
(8, 2, 2, 'Puerto Peña'),
(9, 1, 1, 'Canoas'),
(10, 1, 1, 'Sixaola');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `idprov`, `iddist`, `nombre`) VALUES
(1, 'pa-04', 1, 'Boquete'),
(2, 'pa-04', 2, 'David'),
(3, 'pa-01', 1, 'Changuinola'),
(4, 'pa-01', 2, 'Chiriquí Grande'),
(5, 'cr-01', 1, 'Talamaca'),
(6, 'cr-02', 1, 'Corredores');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `idpais`, `nombre`) VALUES
(1, 'pa', 'Panamá'),
(2, 'cr', 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `idpais`, `idprov`, `nombre`) VALUES
(1, 'pa', 'pa-04', 'Chiriquí'),
(2, 'pa', 'pa-01', 'Bocas del toro'),
(3, 'pa', 'cr-01', 'Limón'),
(4, 'pa', 'cr-02', 'Puntarenas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `id1834937_parcial2`
--
CREATE DATABASE IF NOT EXISTS `id1834937_parcial2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1834937_parcial2`;

-- --------------------------------------------------------

--
-- Table structure for table `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `idcorr` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corregimiento`
--

INSERT INTO `corregimiento` (`id`, `iddist`, `idcorr`, `nombre`) VALUES
(1, 1, 1, 'Bajo Boquete'),
(2, 1, 2, 'Alto Boquete'),
(3, 2, 1, 'Pedregal'),
(4, 2, 2, 'San Carlos'),
(5, 1, 1, 'Almirante'),
(6, 1, 2, 'Guabito'),
(7, 2, 1, 'Mira mar'),
(8, 2, 2, 'Puerto Peña'),
(9, 1, 1, 'Canoas'),
(10, 1, 1, 'Sixaola');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `idprov`, `iddist`, `nombre`) VALUES
(1, 'pa-04', 1, 'Boquete'),
(2, 'pa-04', 2, 'David'),
(3, 'pa-01', 1, 'Changuinola'),
(4, 'pa-01', 2, 'Chiriquí Grande'),
(5, 'cr-01', 1, 'Talamaca'),
(6, 'cr-02', 1, 'Corredores');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `idpais`, `nombre`) VALUES
(1, 'pa', 'Panamá'),
(2, 'cr', 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `idpais`, `idprov`, `nombre`) VALUES
(1, 'pa', 'pa-04', 'Chiriquí'),
(2, 'pa', 'pa-01', 'Bocas del toro'),
(3, 'pa', 'cr-01', 'Limón'),
(4, 'pa', 'cr-02', 'Puntarenas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `id1834937_parcial2`
--
CREATE DATABASE IF NOT EXISTS `id1834937_parcial2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1834937_parcial2`;

-- --------------------------------------------------------

--
-- Table structure for table `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `idcorr` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corregimiento`
--

INSERT INTO `corregimiento` (`id`, `iddist`, `idcorr`, `nombre`) VALUES
(1, 1, 1, 'Bajo Boquete'),
(2, 1, 2, 'Alto Boquete'),
(3, 2, 1, 'Pedregal'),
(4, 2, 2, 'San Carlos'),
(5, 1, 1, 'Almirante'),
(6, 1, 2, 'Guabito'),
(7, 2, 1, 'Mira mar'),
(8, 2, 2, 'Puerto Peña'),
(9, 1, 1, 'Canoas'),
(10, 1, 1, 'Sixaola');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `idprov`, `iddist`, `nombre`) VALUES
(1, 'pa-04', 1, 'Boquete'),
(2, 'pa-04', 2, 'David'),
(3, 'pa-01', 1, 'Changuinola'),
(4, 'pa-01', 2, 'Chiriquí Grande'),
(5, 'cr-01', 1, 'Talamaca'),
(6, 'cr-02', 1, 'Corredores');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `idpais`, `nombre`) VALUES
(1, 'pa', 'Panamá'),
(2, 'cr', 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `idpais`, `idprov`, `nombre`) VALUES
(1, 'pa', 'pa-04', 'Chiriquí'),
(2, 'pa', 'pa-01', 'Bocas del toro'),
(3, 'pa', 'cr-01', 'Limón'),
(4, 'pa', 'cr-02', 'Puntarenas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `id1834937_parcial2`
--
CREATE DATABASE IF NOT EXISTS `id1834937_parcial2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1834937_parcial2`;

-- --------------------------------------------------------

--
-- Table structure for table `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id` int(10) UNSIGNED NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `idcorr` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corregimiento`
--

INSERT INTO `corregimiento` (`id`, `iddist`, `idcorr`, `nombre`) VALUES
(1, 1, 1, 'Bajo Boquete'),
(2, 1, 2, 'Alto Boquete'),
(3, 2, 1, 'Pedregal'),
(4, 2, 2, 'San Carlos'),
(5, 1, 1, 'Almirante'),
(6, 1, 2, 'Guabito'),
(7, 2, 1, 'Mira mar'),
(8, 2, 2, 'Puerto Peña'),
(9, 1, 1, 'Canoas'),
(10, 1, 1, 'Sixaola');

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `idprov`, `iddist`, `nombre`) VALUES
(1, 'pa-04', 1, 'Boquete'),
(2, 'pa-04', 2, 'David'),
(3, 'pa-01', 1, 'Changuinola'),
(4, 'pa-01', 2, 'Chiriquí Grande'),
(5, 'cr-01', 1, 'Talamaca'),
(6, 'cr-02', 1, 'Corredores');

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `idpais`, `nombre`) VALUES
(1, 'pa', 'Panamá'),
(2, 'cr', 'Costa Rica');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `idpais`, `idprov`, `nombre`) VALUES
(1, 'pa', 'pa-04', 'Chiriquí'),
(2, 'pa', 'pa-01', 'Bocas del toro'),
(3, 'pa', 'cr-01', 'Limón'),
(4, 'pa', 'cr-02', 'Puntarenas');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
