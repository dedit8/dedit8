-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-03-2022 a las 19:28:13
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
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dni`
--

INSERT INTO `dni` (`dni`, `id`) VALUES
(1234, 9),
(123, 8),
(0, 7),
(41658970, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turn`
--

DROP TABLE IF EXISTS `turn`;
CREATE TABLE IF NOT EXISTS `turn` (
  `dni` int NOT NULL,
  `dia` varchar(33) COLLATE utf8_spanish_ci NOT NULL,
  `hora` time NOT NULL,
  `atendido` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `turn`
--

INSERT INTO `turn` (`dni`, `dia`, `hora`, `atendido`, `id`) VALUES
(41658970, '2022-03-16', '00:00:12', 'Si', 19),
(41658970, '', '00:00:00', 'Si', 18),
(41658970, '2022-02-02', '00:00:22', 'Si', 23),
(0, '2022-03-05', '00:00:12', '', 93),
(0, '2022-03-23', '00:00:16', '', 95),
(0, '2022-03-25', '00:00:15', '', 94),
(0, '2027-06-25', '00:00:23', '', 92),
(0, '2022-03-23', '23:21:00', '', 96),
(0, '2022-03-24', '15:30:00', '', 97);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
