-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-04-2022 a las 14:23:00
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm`
--

DROP TABLE IF EXISTS `adm`;
CREATE TABLE IF NOT EXISTS `adm` (
  `usu` varchar(21) COLLATE utf8_spanish_ci NOT NULL,
  `contra` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `adm`
--

INSERT INTO `adm` (`usu`, `contra`, `id`) VALUES
('gui', 1234, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dni`
--

DROP TABLE IF EXISTS `dni`;
CREATE TABLE IF NOT EXISTS `dni` (
  `dni` int NOT NULL,
  `mutual` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `obra` varchar(66) COLLATE utf8_spanish_ci NOT NULL,
  `carnet` varchar(68) COLLATE utf8_spanish_ci NOT NULL,
  `tel` bigint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dni`
--

INSERT INTO `dni` (`dni`, `mutual`, `obra`, `carnet`, `tel`, `id`) VALUES
(1, '', '', '', 0, 10),
(2, '', '', '', 0, 11),
(41658970, 'santander', 'rios', '5555555', 524845, 6),
(41658971, ' santander', ' rios', '2147483647', 3462368526, 22),
(41658978, 'santander', 'rios', '55555554', 3462368526, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turn`
--

DROP TABLE IF EXISTS `turn`;
CREATE TABLE IF NOT EXISTS `turn` (
  `dni` int NOT NULL,
  `med` varchar(64) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `atendido` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
