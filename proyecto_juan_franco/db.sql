-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-06-2022 a las 17:18:54
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chessbattle`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(13, 'Hola', 'subtitulo1', 'Cuerpo7', 'rspgzmuw0m8ntxqvzopo'),
(14, 'titulo2', 'subtitulo2', 'cuerpo2', 'dnmfx4anvpzr61wijnwz'),
(15, 'titulo3', 'subtitulo3', 'cuerpo3', 'nwu75knscegbk49slyxd'),
(18, 'Lorem ipsum dolor sit amet, consectetur ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Est sit amet facilisis magna etiam tempor orci. Cursus risus at ultrices mi tempus. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing. Auctor urna nunc id cursus metus aliquam eleifend mi. Ultricies lacus sed turpis tincidunt id. Egestas integer eget aliquet nibh praesent. Egestas sed tempus urna et pharetra pharetra massa massa ultricies. Ante in nibh mauris cursus. Vitae tortor condimentum lacinia quis vel. Eu non diam phasellus vestibulum lorem sed risus ultricies.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Est sit amet facilisis magna etiam tempor orci. Cursus risus at ultrices mi tempus. Magna eget est lorem ipsum dolor sit amet consectetur adipiscing. Auctor urna nunc id cursus metus aliquam eleifend mi. Ultricies lacus sed turpis tincidunt id. Egestas integer eget aliquet nibh praesent. Egestas sed tempus urna et pharetra pharetra massa massa ultricies. Ante in nibh mauris cursus. Vitae tortor condimentum lacinia quis vel. Eu non diam phasellus vestibulum lorem sed risus ultricies.', 'fxoctm0v6r9s22pzqkmw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

DROP TABLE IF EXISTS `salas`;
CREATE TABLE IF NOT EXISTS `salas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `miembros` text NOT NULL,
  `portada` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'juan', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'gabriel', 'd93591bdf7860e1e4ee2fca799911215');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
