-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-11-2018 a las 17:53:04
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
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` int(11) NOT NULL,
  `cod_grupo` int(11) DEFAULT NULL,
  `cod_titulacion` int(11) DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL,
  `cod_asig` int(11) NOT NULL,
  `cod_titul` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_seccion` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `pregTexto` text,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_seccion`, `id_pregunta`, `pregTexto`, `id`) VALUES
(1, 1, 'Veces que te has matriculado en esta asignatura', 1),
(1, 2, 'Veces que te has examinado en esta asignatura', 2),
(1, 3, 'La asignatura me interesa', 3),
(1, 4, 'Hago uso de las tutorias', 4),
(1, 5, 'Dificultad de esta asignatura', 5),
(1, 6, 'Calificacion esperada', 6),
(1, 7, 'Asistencia a clase (% de horas lectivas)', 7),
(1, 8, 'Edad', 8),
(1, 9, 'Sexo', 9),
(1, 10, 'Curso mas alto en el que estas matriculado', 10),
(1, 11, 'Curso mas bajo en el que estas matriculado', 11),
(2, 1, 'El/la profesor/a informa sobre los distintos aspectos de la guía docente o programa de la asignatura\r\n(objetivos, actividades, contenidos del temario, metodología, bibliografía, sistemas de evaluación,...)', 12),
(4, 1, ' Imparte las clases en el horario fijado', 13),
(4, 2, 'Asiste regularmente a clase', 14),
(4, 3, 'Cumple adecuadamente con su labor de tutoría', 15),
(5, 1, 'Se ajusta a la planificación de la asignatura', 16),
(5, 2, 'Se han coordinado las actividades teóricas y prácticas previstas', 17),
(5, 3, 'Se ajusta a los sistemas de evaluación especificados en la guía docente/programa de la asignatura', 18),
(5, 4, 'La bibliografía y otras fuentes de información recomendadas en el programa son útiles para el aprendizaje de la asignatura', 19),
(6, 1, 'El/la profesor/a organiza bien las actividades que se realizan en clase', 20),
(6, 2, 'Utiliza recursos didácticos (pizarra, transparencias, medios audiovisuales, material de apoyo en red virtual...) que facilitan el aprendizaje ', 21),
(7, 1, 'Explica con claridad y resalta los contenidos importantes', 22),
(7, 2, 'Se interesa por el grado de comprensión de sus explicaciones', 23),
(7, 3, 'Expone ejemplos en los que se ponen en práctica los contenidos de la asignatura', 24),
(7, 4, 'Explica los contenidos con seguridad', 25),
(7, 5, 'Resuelve las dudas que se le plantean', 26),
(7, 6, 'Fomenta un clima de trabajo y participación', 27),
(7, 7, 'Propicia una comunicación fluida y espontánea', 28),
(7, 8, 'Motiva a los/as estudiantes para que se interesen por la asignatura', 29),
(7, 9, 'Es respetuoso/a en el trato con los/las estudiantes', 30),
(8, 1, 'Tengo claro lo que se me va a exigir para superar esta asignatura', 31),
(8, 2, 'Los criterios y sistemas de evaluación me parecen adecuados, en el contexto de la asignatura', 32),
(9, 1, 'Las actividades desarrolladas (teóricas, prácticas, de trabajo individual, en grupo,...)\r\ncontribuyen a alcanzar los objetivos de la asignatura', 33),
(9, 2, 'Estoy satisfecho/a con la labor docente de este/a profesor/a', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resest`
--

CREATE TABLE `resest` (
  `id` int(11) NOT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `texto` varchar(40) DEFAULT NULL,
  `id_asig` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resest`
--

INSERT INTO `resest` (`id`, `id_pregunta`, `id_usuario`, `texto`, `id_asig`) VALUES
(1, 1, 2, '>3', 12345),
(2, 2, 2, '>3', 12345),
(3, 3, 2, 'Bastante', 12345),
(4, 4, 2, 'Algo', 12345),
(5, 5, 2, 'Alta', 12345),
(6, 6, 2, 'Aprobado', 12345),
(7, 7, 2, 'Entre 50%-80%', 12345),
(8, 8, 2, '24-25', 12345),
(9, 9, 2, 'Mujer', 12345),
(10, 10, 2, '5', 12345),
(11, 11, 2, '3', 12345),
(12, 12, 2, '4', 12345),
(13, 13, 2, '3', 12345),
(14, 14, 2, '3', 12345),
(15, 15, 2, '4', 12345),
(16, 16, 2, 'NS', 12345),
(17, 17, 2, '4', 12345),
(18, 18, 2, 'NS', 12345),
(19, 19, 2, '3', 12345),
(20, 20, 2, '3', 12345),
(21, 21, 2, '5', 12345),
(22, 22, 2, '4', 12345),
(23, 23, 2, '3', 12345),
(24, 24, 2, '4', 12345),
(25, 25, 2, '5', 12345),
(26, 26, 2, '2', 12345),
(27, 27, 2, '4', 12345),
(28, 28, 2, '5', 12345),
(29, 29, 2, '5', 12345),
(30, 30, 2, '5', 12345),
(31, 31, 2, '5', 12345),
(32, 32, 2, '5', 12345),
(33, 33, 2, '4', 12345),
(34, 34, 2, '4', 12345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_seccion` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `id_respuesta` int(11) NOT NULL,
  `texto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_seccion`, `id_pregunta`, `id_respuesta`, `texto`) VALUES
(1, 1, 1, '1'),
(1, 1, 2, '2'),
(1, 1, 3, '3'),
(1, 1, 4, '>3'),
(1, 2, 1, '1'),
(1, 2, 2, '2'),
(1, 2, 3, '3'),
(1, 2, 4, '>3'),
(1, 3, 1, 'Nada'),
(1, 3, 2, 'Algo'),
(1, 3, 3, 'Bastante'),
(1, 3, 4, 'Mucho'),
(1, 4, 1, 'Nada'),
(1, 4, 2, 'Algo'),
(1, 4, 3, 'Bastante'),
(1, 4, 4, 'Mucho'),
(1, 5, 1, 'baja'),
(1, 5, 2, 'Media'),
(1, 5, 3, 'Alta'),
(1, 5, 4, 'Muy alta'),
(1, 6, 1, 'N.P.'),
(1, 6, 2, 'Suspenso'),
(1, 6, 3, 'Aprobado'),
(1, 6, 4, 'Notable'),
(1, 6, 5, 'Sobresaliente'),
(1, 6, 6, 'Matricula de Honor'),
(1, 7, 1, 'Menos del 50%'),
(1, 7, 2, 'Entre 50%-80%'),
(1, 7, 3, 'Mas del 80%'),
(1, 8, 1, '19'),
(1, 8, 2, '20-21'),
(1, 8, 3, '22-23'),
(1, 8, 4, '24-25'),
(1, 8, 5, '>25'),
(1, 9, 1, 'Hombre'),
(1, 9, 2, 'Mujer'),
(1, 10, 1, '1'),
(1, 10, 2, '2'),
(1, 10, 3, '3'),
(1, 10, 4, '4'),
(1, 10, 5, '5'),
(1, 10, 6, '6'),
(1, 11, 1, '1'),
(1, 11, 2, '2'),
(1, 11, 3, '3'),
(1, 11, 4, '4'),
(1, 11, 5, '5'),
(1, 11, 6, '6'),
(2, 1, 1, 'NS'),
(2, 1, 2, '1'),
(2, 1, 3, '2'),
(2, 1, 4, '3'),
(2, 1, 5, '4'),
(2, 1, 6, '5'),
(4, 1, 1, 'NS'),
(4, 1, 2, '1'),
(4, 1, 3, '2'),
(4, 1, 4, '3'),
(4, 1, 5, '4'),
(4, 1, 6, '5'),
(4, 2, 1, 'NS'),
(4, 2, 2, '1'),
(4, 2, 3, '2'),
(4, 2, 4, '3'),
(4, 2, 5, '4'),
(4, 2, 6, '5'),
(4, 3, 1, 'NS'),
(4, 3, 2, '1'),
(4, 3, 3, '2'),
(4, 3, 4, '3'),
(4, 3, 5, '4'),
(4, 3, 6, '5'),
(5, 1, 1, 'NS'),
(5, 1, 2, '1'),
(5, 1, 3, '2'),
(5, 1, 4, '3'),
(5, 1, 5, '4'),
(5, 1, 6, '5'),
(5, 2, 1, 'NS'),
(5, 2, 2, '1'),
(5, 2, 3, '2'),
(5, 2, 4, '3'),
(5, 2, 5, '4'),
(5, 2, 6, '5'),
(5, 3, 1, 'NS'),
(5, 3, 2, '1'),
(5, 3, 3, '2'),
(5, 3, 4, '3'),
(5, 3, 5, '4'),
(5, 3, 6, '5'),
(5, 4, 1, 'NS'),
(5, 4, 2, '1'),
(5, 4, 3, '2'),
(5, 4, 4, '3'),
(5, 4, 5, '4'),
(5, 4, 6, '5'),
(6, 1, 1, 'NS'),
(6, 1, 2, '1'),
(6, 1, 3, '2'),
(6, 1, 4, '3'),
(6, 1, 5, '4'),
(6, 1, 6, '5'),
(6, 2, 1, 'NS'),
(6, 2, 2, '1'),
(6, 2, 3, '2'),
(6, 2, 4, '3'),
(6, 2, 5, '4'),
(6, 2, 6, '5'),
(7, 1, 1, 'NS'),
(7, 1, 2, '1'),
(7, 1, 3, '2'),
(7, 1, 4, '3'),
(7, 1, 5, '4'),
(7, 1, 6, '5'),
(7, 2, 1, 'NS'),
(7, 2, 2, '1'),
(7, 2, 3, '2'),
(7, 2, 4, '3'),
(7, 2, 5, '4'),
(7, 2, 6, '5'),
(7, 3, 1, 'NS'),
(7, 3, 2, '1'),
(7, 3, 3, '2'),
(7, 3, 4, '3'),
(7, 3, 5, '4'),
(7, 3, 6, '5'),
(7, 4, 1, 'NS'),
(7, 4, 2, '1'),
(7, 4, 3, '2'),
(7, 4, 4, '3'),
(7, 4, 5, '4'),
(7, 4, 6, '5'),
(7, 5, 1, 'NS'),
(7, 5, 2, '1'),
(7, 5, 3, '2'),
(7, 5, 4, '3'),
(7, 5, 5, '4'),
(7, 5, 6, '5'),
(7, 6, 1, 'NS'),
(7, 6, 2, '1'),
(7, 6, 3, '2'),
(7, 6, 4, '3'),
(7, 6, 5, '4'),
(7, 6, 6, '5'),
(7, 7, 1, 'NS'),
(7, 7, 2, '1'),
(7, 7, 3, '2'),
(7, 7, 4, '3'),
(7, 7, 5, '4'),
(7, 7, 6, '5'),
(7, 8, 1, 'NS'),
(7, 8, 2, '1'),
(7, 8, 3, '2'),
(7, 8, 4, '3'),
(7, 8, 5, '4'),
(7, 8, 6, '5'),
(7, 9, 1, 'NS'),
(7, 9, 2, '1'),
(7, 9, 3, '2'),
(7, 9, 4, '3'),
(7, 9, 5, '4'),
(7, 9, 6, '5'),
(8, 1, 1, 'NS'),
(8, 1, 2, '1'),
(8, 1, 3, '2'),
(8, 1, 4, '3'),
(8, 1, 5, '4'),
(8, 1, 6, '5'),
(8, 2, 1, 'NS'),
(8, 2, 2, '1'),
(8, 2, 3, '2'),
(8, 2, 4, '3'),
(8, 2, 5, '4'),
(8, 2, 6, '5'),
(9, 1, 1, 'NS'),
(9, 1, 2, '1'),
(9, 1, 3, '2'),
(9, 1, 4, '3'),
(9, 1, 5, '4'),
(9, 1, 6, '5'),
(9, 2, 1, 'NS'),
(9, 2, 2, '1'),
(9, 2, 3, '2'),
(9, 2, 4, '3'),
(9, 2, 5, '4'),
(9, 2, 6, '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id_seccion` int(11) NOT NULL,
  `tipo_seccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id_seccion`, `tipo_seccion`) VALUES
(1, 'INFORMACION PERSONAL Y ACADEMICA DE LOS ESTUDIANTES:'),
(2, 'PLANIFICACIÓN DE LA ENSEÑANZA Y APRENDIZAJE:'),
(3, 'DESARROLLO DE LA DOCENCIA:'),
(4, 'Cumplimiento de las obligaciones docentes(del encargo docente)'),
(5, 'Cumplimiento de la planificación'),
(6, 'Metodología docente'),
(7, 'Competencias docentes desarrolladas por el/la profesor/a'),
(8, 'Sistemas de evaluación'),
(9, 'RESULTADOS:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulacion`
--

CREATE TABLE `titulacion` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(6) UNSIGNED NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasenna` varchar(500) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipo` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contrasenna`, `email`, `tipo`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', NULL, 1),
(2, 'user', '12dea96fec20593566ab75692c9949596833adc9', NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`,`cod_asig`,`cod_titul`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resest`
--
ALTER TABLE `resest`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_seccion`,`id_pregunta`,`id_respuesta`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Usuario` (`usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `resest`
--
ALTER TABLE `resest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
