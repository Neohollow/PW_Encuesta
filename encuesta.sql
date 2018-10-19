-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-10-2018 a las 02:29:59
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
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Pass` text NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `Codigo`, `Pass`, `Nombre`) VALUES
(1, 1111, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Federico Pelaez'),
(2, 2222, 'd2f75e8204fedf2eacd261e2461b2964e3bfd5be', 'Pepito Grillo'),
(3, 3333, 'ae8fe380dd9aa5a7a956d9085fe7cf6b87d0d028', 'Karl Marx'),
(4, 4444, '83787f060a59493aefdcd4b2369990e7303e186e', 'Iosif Stalin');

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
