-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2015 a las 06:17:18
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cursos_medios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
`id_estudiante` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Manny ', 'Manitas', 'manny@gmail.com'),
(2, 'Maka', 'Daza', 'makadaza22@gmail.com'),
(3, 'Juliana', 'Daza ', 'julianadaza18@gmail.com'),
(4, 'Manu', 'Daza', 'manudaza88@hotmail.com'),
(5, 'Dani', 'Martinez', 'danimartinezs17@hotmail.com'),
(6, 'Johana', 'Moreno', 'johanamoreno5@hotmail.com'),
(7, 'Manuel Alejandro', 'Miranda S.', 'manumir@gmail.com'),
(8, 'Maria Camila', 'Segura', 'camisegura89@gmail.com'),
(9, 'Alejandro', 'Bolivar', 'paquete316@gmail.com'),
(10, 'Ana Maria', 'Campo', 'anamariacampocely@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_materia`
--

CREATE TABLE IF NOT EXISTS `estudiante_materia` (
`id` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`id`, `id_estudiante`, `id_materia`) VALUES
(1, 1, 1),
(11, 1, 2),
(10, 1, 7),
(12, 1, 9),
(19, 2, 1),
(2, 2, 2),
(17, 2, 7),
(18, 2, 9),
(3, 3, 1),
(26, 3, 2),
(27, 3, 7),
(28, 3, 8),
(29, 3, 9),
(4, 4, 1),
(31, 4, 2),
(30, 4, 7),
(33, 5, 1),
(34, 5, 2),
(35, 5, 8),
(32, 5, 9),
(36, 6, 1),
(37, 6, 2),
(38, 6, 9),
(39, 7, 1),
(41, 7, 7),
(40, 7, 8),
(43, 8, 2),
(42, 8, 7),
(44, 8, 9),
(47, 9, 1),
(46, 9, 2),
(45, 9, 7),
(49, 10, 2),
(48, 10, 7),
(51, 10, 8),
(50, 10, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
`id_materia` int(11) NOT NULL,
  `codigo_materia` int(11) NOT NULL,
  `nombre_materia` varchar(45) NOT NULL,
  `id_profesor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `codigo_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 5432, 'HCI 2', 1),
(2, 180564, 'Programacion en Red', 2),
(7, 103095, 'Algoritmos', 3),
(8, 113095, 'Diseno tridimensional', 4),
(9, 120391, 'HCI 1', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`id_notas` int(11) NOT NULL,
  `nombre_nota` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id_notas`, `nombre_nota`, `porcentaje`, `id_materia`) VALUES
(1, 'Quiz Uno', 0.2, 1),
(2, 'Final', 0.8, 1),
(4, 'Parcial 1', 0.2, 1),
(5, 'Parcial 2', 0.2, 1),
(7, 'Quices', 0.2, 2),
(8, 'Parcial 1', 0.2, 2),
(9, 'Parcial 2', 0.2, 2),
(10, 'Examen Final', 0.4, 2),
(16, 'Quices', 0.2, 7),
(17, 'Parcial 1', 0.2, 7),
(18, 'Parcial 2', 0.2, 7),
(19, 'Examen Final', 0.4, 7),
(20, 'Quices', 0.2, 8),
(21, 'Parcial 1', 0.2, 8),
(22, 'Parcial 2', 0.2, 8),
(23, 'Examen Final', 0.4, 8),
(24, 'Quices', 0.2, 9),
(25, 'Parcial 1', 0.2, 9),
(26, 'Parcial 2', 0.2, 9),
(27, 'Examen Final', 0.4, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_estudiante`
--

CREATE TABLE IF NOT EXISTS `notas_estudiante` (
`id_nota_estudiante` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_notas` int(11) NOT NULL,
  `Calificacion` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notas_estudiante`
--

INSERT INTO `notas_estudiante` (`id_nota_estudiante`, `id_estudiante`, `id_materia`, `id_notas`, `Calificacion`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 1, 2, 5),
(3, 3, 1, 1, 2),
(4, 3, 1, 2, 1),
(5, 3, 1, 4, 5),
(6, 2, 1, 5, 5),
(7, 2, 1, 5, 5),
(8, 2, 2, 7, 2),
(9, 2, 7, 17, 5),
(10, 2, 8, 23, 5),
(11, 2, 9, 27, 5),
(12, 2, 9, 25, 5),
(13, 3, 1, 5, 5),
(14, 3, 2, 5, 5),
(15, 3, 7, 5, 5),
(16, 3, 8, 5, 5),
(17, 3, 9, 5, 5),
(18, 4, 1, 5, 5),
(19, 4, 2, 5, 5),
(20, 4, 7, 5, 5),
(21, 4, 8, 5, 5),
(22, 4, 9, 5, 5),
(23, 5, 1, 5, 5),
(24, 5, 2, 5, 5),
(25, 5, 7, 5, 5),
(26, 5, 8, 5, 5),
(27, 5, 9, 5, 5),
(28, 6, 1, 5, 5),
(29, 6, 2, 5, 5),
(30, 6, 7, 5, 5),
(31, 6, 8, 5, 5),
(32, 6, 9, 5, 5),
(33, 7, 1, 5, 5),
(34, 7, 2, 5, 5),
(35, 7, 7, 5, 5),
(36, 7, 8, 5, 5),
(37, 7, 9, 5, 5),
(38, 8, 1, 5, 5),
(39, 8, 2, 5, 5),
(40, 8, 7, 5, 5),
(41, 8, 8, 5, 5),
(42, 8, 9, 5, 5),
(43, 9, 1, 5, 5),
(44, 9, 2, 5, 5),
(45, 9, 7, 5, 5),
(46, 9, 8, 5, 5),
(47, 9, 9, 5, 5),
(48, 10, 1, 5, 5),
(49, 10, 2, 5, 5),
(50, 10, 7, 5, 5),
(51, 10, 8, 5, 5),
(52, 10, 9, 5, 5),
(53, 1, 1, 5, 5),
(54, 1, 2, 5, 5),
(55, 1, 7, 5, 5),
(56, 1, 8, 5, 5),
(57, 1, 9, 5, 5),
(58, 2, 2, 1, 5),
(59, 2, 2, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
`id_profesor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Hector ', 'Mejía ', 'thimael@gmail.com'),
(2, 'Jose ', 'Moncada ', 'moncadaJose@hotmail.com'),
(3, 'Ines ', 'Sarmiento', 'inesarmi@gmail.com'),
(4, 'Diana ', 'Giraldo Pinedo', 'dianagir@gmail.com'),
(5, 'Juan Manuel ', 'Salamanca ', 'juansalam@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
 ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_estudiante` (`id_estudiante`,`id_materia`), ADD KEY `id_estudiante_idx` (`id_estudiante`), ADD KEY `id_materia_idx` (`id_materia`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
 ADD PRIMARY KEY (`id_materia`), ADD KEY `id_profesor_idx` (`id_profesor`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
 ADD PRIMARY KEY (`id_notas`), ADD KEY `id_materia_idx` (`id_materia`);

--
-- Indices de la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
 ADD PRIMARY KEY (`id_nota_estudiante`), ADD KEY `id_estudiante_idx` (`id_estudiante`), ADD KEY `id_materia_idx` (`id_materia`), ADD KEY `id_nota_idx` (`id_notas`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
 ADD PRIMARY KEY (`id_profesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
MODIFY `id_notas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
MODIFY `id_nota_estudiante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
ADD CONSTRAINT `id_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
ADD CONSTRAINT `id_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
ADD CONSTRAINT `id_materia_nota` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
ADD CONSTRAINT `id_estudiante_notas` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `id_materia_notas` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `id_notas_notas` FOREIGN KEY (`id_notas`) REFERENCES `nota` (`id_notas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
