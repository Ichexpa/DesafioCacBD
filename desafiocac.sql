-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220604.11e8242d04
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 00:51:01
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafiocac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `numero` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `presupuesto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`numero`, `nombre`, `presupuesto`) VALUES
(11, 'Calidad', 40000),
(14, 'Informática', 80000),
(15, 'Gestión', 95000),
(16, 'Comunicación', 75000),
(37, 'Desarrollo', 65000),
(77, 'Investigación', 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`dni`, `nombre`, `apellidos`, `id_departamento`) VALUES
('32698547', 'Mariana', 'Lopez', 15),
('36985471', 'Omar', 'Diaz', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `fk_departamento` (`id_departamento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



