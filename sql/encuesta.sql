-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-10-2018 a las 09:47:26
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `cod_asignatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `id_profesor`, `cod_asignatura`) VALUES
(1, 1234, 567);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_seccion` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `pregTexto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_seccion`, `id_pregunta`, `pregTexto`) VALUES
(1, 1, 'Veces que te has matriculado en esta asignatura'),
(1, 2, 'Veces que te has examinado en esta asignatura'),
(1, 3, 'La asignatura me interesa'),
(1, 4, 'Hago uso de las tutorias'),
(1, 5, 'Dificultad de esta asignatura'),
(1, 6, 'Calificacion esperada'),
(1, 7, 'Asistencia a clase (% de horas lectivas)'),
(1, 8, 'Edad'),
(1, 9, 'Sexo'),
(1, 10, 'Curso mas alto en el que estas matriculado'),
(1, 11, 'Curso mas bajo en el que estas matriculado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesor`
--

CREATE TABLE `Profesor` (
  `id_profesor` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Pass` text NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Profesor`
--

INSERT INTO `Profesor` (`id_profesor`, `Codigo`, `Pass`, `Nombre`) VALUES
(1, 1111, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Federico Pelaez'),
(2, 2222, 'd2f75e8204fedf2eacd261e2461b2964e3bfd5be', 'Pepito Grillo'),
(3, 3333, 'ae8fe380dd9aa5a7a956d9085fe7cf6b87d0d028', 'Karl Marx'),
(4, 4444, '83787f060a59493aefdcd4b2369990e7303e186e', 'Iosif Stalin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_pregunta` int(11) NOT NULL,
  `id_respuesta` int(11) NOT NULL,
  `id_encuesta` int(11) NOT NULL,
  `texto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id_seccion` int(11) NOT NULL,
  `tipo_seccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_seccion`,`id_pregunta`);

--
-- Indices de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_pregunta`,`id_respuesta`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id_seccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
