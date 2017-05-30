-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `map2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `map2`;
USE `map2`;

--
-- Table structure for table `map2`.`corregimiento`
--

DROP TABLE IF EXISTS `corregimiento`;
CREATE TABLE `corregimiento` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `iddist` int(10) unsigned NOT NULL,
  `idcorr` int(10) unsigned NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map2`.`corregimiento`
--

/*!40000 ALTER TABLE `corregimiento` DISABLE KEYS */;
INSERT INTO `corregimiento` (`id`,`iddist`,`idcorr`,`nombre`) VALUES 
 (1,1,1,'Aserrio'),
 (2,1,2,'Consepción'),
 (3,2,1,'Pedregal'),
 (4,2,2,'San Carlos'),
 (5,1,1,'Almirante'),
 (6,1,2,'Guabito'),
 (7,2,1,'Mira mar'),
 (8,2,2,'Puerto Peña'),
 (9,1,1,'La cuesta'),
 (10,1,1,'Sixaola');
/*!40000 ALTER TABLE `corregimiento` ENABLE KEYS */;


--
-- Table structure for table `map2`.`distrito`
--

DROP TABLE IF EXISTS `distrito`;
CREATE TABLE `distrito` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `idprov` varchar(10) NOT NULL,
  `iddist` int(10) unsigned NOT NULL,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map2`.`distrito`
--

/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` (`id`,`idprov`,`iddist`,`nombre`) VALUES 
 (1,'pa-04',1,'Bugaba'),
 (2,'pa-04',2,'David'),
 (3,'pa-01',1,'Changuinola'),
 (4,'pa-01',2,'Chiriquí grande'),
 (5,'cr-01',1,'Talamaca'),
 (6,'cr-02',1,'Corredores');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;


--
-- Table structure for table `map2`.`pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `idpais` varchar(5) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map2`.`pais`
--

/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`id`,`idpais`,`nombre`) VALUES 
 (1,'pa','Panamá'),
 (2,'cr','Costa Rica');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;


--
-- Table structure for table `map2`.`provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `idpais` varchar(5) NOT NULL,
  `idprov` varchar(7) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map2`.`provincia`
--

/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` (`id`,`idpais`,`idprov`,`nombre`) VALUES 
 (1,'pa','pa-04','Chiriquí'),
 (2,'pa','pa-01','Bocas del toro'),
 (3,'pa','cr-01','Limón'),
 (4,'pa','cr-02','Puntarenas');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
