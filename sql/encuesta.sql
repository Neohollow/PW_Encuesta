-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2018 a las 10:18:09
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

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
(1, 11, 'Curso mas bajo en el que estas matriculado'),
(2, 1, 'El/la profesor/a informa sobre los distintos aspectos de la guía docente o programa de la asignatura\r\n(objetivos, actividades, contenidos del temario, metodología, bibliografía, sistemas de evaluación,...)'),
(4, 1, ' Imparte las clases en el horario fijado'),
(4, 2, 'Asiste regularmente a clase'),
(4, 3, 'Cumple adecuadamente con su labor de tutoría'),
(5, 1, 'Se ajusta a la planificación de la asignatura'),
(5, 2, 'Se han coordinado las actividades teóricas y prácticas previstas'),
(5, 3, 'Se ajusta a los sistemas de evaluación especificados en la guía docente/programa de la asignatura'),
(5, 4, 'La bibliografía y otras fuentes de información recomendadas en el programa son útiles para el aprendizaje de la asignatura'),
(6, 1, 'El/la profesor/a organiza bien las actividades que se realizan en clase'),
(6, 2, 'Utiliza recursos didácticos (pizarra, transparencias, medios audiovisuales, material de apoyo en red virtual...) que facilitan el aprendizaje '),
(7, 1, 'Explica con claridad y resalta los contenidos importantes'),
(7, 2, 'Se interesa por el grado de comprensión de sus explicaciones'),
(7, 3, 'Expone ejemplos en los que se ponen en práctica los contenidos de la asignatura'),
(7, 4, 'Explica los contenidos con seguridad'),
(7, 5, 'Resuelve las dudas que se le plantean'),
(7, 6, 'Fomenta un clima de trabajo y participación'),
(7, 7, 'Propicia una comunicación fluida y espontánea'),
(7, 8, 'Motiva a los/as estudiantes para que se interesen por la asignatura'),
(7, 9, 'Es respetuoso/a en el trato con los/las estudiantes'),
(8, 1, 'Tengo claro lo que se me va a exigir para superar esta asignatura'),
(8, 2, 'Los criterios y sistemas de evaluación me parecen adecuados, en el contexto de la asignatura'),
(9, 1, 'Las actividades desarrolladas (teóricas, prácticas, de trabajo individual, en grupo,...)\r\ncontribuyen a alcanzar los objetivos de la asignatura'),
(9, 2, 'Estoy satisfecho/a con la labor docente de este/a profesor/a');

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
  ADD PRIMARY KEY (`id_seccion`,`id_pregunta`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
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
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
