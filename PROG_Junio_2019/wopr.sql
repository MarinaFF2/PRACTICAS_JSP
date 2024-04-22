-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2015 at 10:55 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wopr`
--

-- --------------------------------------------------------

--
-- Table structure for table `bases`
--

CREATE TABLE IF NOT EXISTS `bases` (
  `Cod_Sector` varchar(10) NOT NULL,
  `misiles` int(11) NOT NULL,
  `escudos` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bases`
--

INSERT INTO `bases` (`Cod_Sector`, `misiles`, `escudos`) VALUES
('201B', 12, 90),
('202B', 18, 110),
('203B', 36, 72),
('204B', 100, 100),
('205B', 45, 99);

-- --------------------------------------------------------

--
-- Table structure for table `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `Cod_Sector` varchar(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `habitantes` int(11) NOT NULL,
  `escudos` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciudades`
--

INSERT INTO `ciudades` (`Cod_Sector`, `Nombre`, `habitantes`, `escudos`) VALUES
('101C', 'Puertollano', 51220, 27),
('102C', 'Madrid', 3002123, 50),
('103C', 'Barcelona', 3452342, 48),
('104C', 'Retuerta Bullaque', 3734, 36),
('105C', 'Almodóvar', 4592, 30),
('106C', 'Argamasilla', 2348, 27),
('107C', 'Gotham', 24345, 48);

-- --------------------------------------------------------

--
-- Table structure for table `sectores`
--

CREATE TABLE IF NOT EXISTS `sectores` (
  `Cod_Sector` varchar(10) NOT NULL,
  `Habitable` varchar(4) NOT NULL,
  PRIMARY KEY (`Cod_Sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectores`
--

INSERT INTO `sectores` (`Cod_Sector`, `Habitable`) VALUES
('101C', 's'),
('102C', 's'),
('103C', 's'),
('104C', 's'),
('105C', 's'),
('106C', 's'),
('107C', 's'),
('201B', 's'),
('202B', 's'),
('203B', 's'),
('204B', 's'),
('205B', 's'),
('301O', 'n'),
('302O', 'n'),
('303O', 's'),
('304O', 'n'),
('305O', 'n'),
('306O', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `sector_no_h`
--

CREATE TABLE IF NOT EXISTS `sector_no_h` (
  `Cod_Sector` varchar(10) NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`Cod_Sector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sector_no_h`
--

INSERT INTO `sector_no_h` (`Cod_Sector`, `Descripcion`) VALUES
('301O', 'Bosque'),
('302O', 'Desierto'),
('303O', 'Glacial'),
('304O', 'Bosque'),
('305O', 'Desierto'),
('306O', 'Bosque');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `DNI` varchar(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Clave` varchar(20) NOT NULL,
  `Nivel` int(11) NOT NULL,
  `Ganadas` int(11) NOT NULL,
  `Perdidas` int(11) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`DNI`, `Nombre`, `Clave`, `Nivel`, `Ganadas`, `Perdidas`) VALUES
('10H', 'Laura', '10H', 2, 56, 54),
('11I', 'SergioS', '11I', 1, 53, 46),
('12J', 'Celia', '12J', 1, 86, 85),
('1A', 'Nathan', '1A', 1, 23, 24),
('2B', 'SergioA', '2B', 2, 56, 35),
('3C', 'Isabel', '3C', 1, 345, 244),
('4D', 'Victor', '4D', 2, 232, 563),
('5E', 'Paloma', '5E', 1, 56, 78),
('6F', 'Nestor', '6F', 1, 45, 65),
('7E', 'Alejandro', '7E', 2, 67, 57),
('8F', 'Carlos', '8F', 1, 64, 46),
('9G', 'Roberto', '9G', 2, 85, 57);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
