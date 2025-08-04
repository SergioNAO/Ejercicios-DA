-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2025 a las 06:34:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `AlumnoId` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `SalonId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`AlumnoId`, `Nombre`, `Direccion`, `SalonId`) VALUES
(1, 'Luis Perez', 'Delgado 123', 1),
(2, 'Juan Lopez', 'Hidalgo 323', 1),
(3, 'Carlos Blanco', 'Constitucion 234', 1),
(4, 'Raul Torres', 'Universidad 1123', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `AlumnoId` int(11) DEFAULT NULL,
  `MaterialId` int(11) DEFAULT NULL,
  `MesAño` varchar(10) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`AlumnoId`, `MaterialId`, `MesAño`, `monto`) VALUES
(1, 90, '01/2001', 98),
(3, 90, '01/2001', 80),
(1, 90, '02/2001', 89),
(3, 90, '02/2001', 95),
(1, 90, '03/2001', 100),
(3, 90, '03/2001', 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `MaestroId` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Sueldo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestro`
--

INSERT INTO `maestro` (`MaestroId`, `Nombre`, `Sueldo`) VALUES
(1, 'Francisco Martinez', 4000.00),
(2, 'Luis Gonzalez', 5000.00),
(3, 'Carmen Sanchez', 4500.00),
(4, 'Melissa Garza', 8000.00),
(10, 'Hector Cruz', 6000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `SalonId` int(11) NOT NULL,
  `MaestroId` int(11) DEFAULT NULL,
  `GradoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`SalonId`, `MaestroId`, `GradoId`) VALUES
(1, 10, 4),
(2, 4, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`AlumnoId`),
  ADD KEY `SalonId` (`SalonId`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`MaestroId`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`SalonId`),
  ADD KEY `MaestroId` (`MaestroId`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`SalonId`) REFERENCES `salon` (`SalonId`);

--
-- Filtros para la tabla `salon`
--
ALTER TABLE `salon`
  ADD CONSTRAINT `salon_ibfk_1` FOREIGN KEY (`MaestroId`) REFERENCES `maestro` (`MaestroId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
