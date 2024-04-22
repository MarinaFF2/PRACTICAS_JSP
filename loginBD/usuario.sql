-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-10-2019 a las 09:32:38
-- Versión del servidor: 5.7.27-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `correo` varchar(150) NOT NULL,
  `edad` int(150) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `opcion` tinyint(1) NOT NULL,
  `actividad` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de usuarios';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`correo`, `edad`, `clave`, `opcion`, `actividad`) VALUES
('ala@gmail.com', 12, '1', 0, 0),
('ale@gmail.com', 23, '1', 0, 0),
('h@gmail.com', 2, '1', 1, 10),
('hawaiiii@gmail.com', 2, '2', 1, 0),
('hii@gmail.com', 231, '1', 1, 0),
('hola@gmail.com', 14, '1', 1, 13),
('holiwi@gmail.com', 12, '3', 1, 0),
('ola@gmail.com', 12, '1', 0, 23),
('ql@gmail.com', 234, '1', 0, 0),
('we@gmail.com', 123, '1', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`correo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
