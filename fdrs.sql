-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-09-2023 a las 22:55:24
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fdrs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinador`
--

DROP TABLE IF EXISTS `coordinador`;
CREATE TABLE IF NOT EXISTS `coordinador` (
  `idCoordinador` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `cargo` varchar(15) NOT NULL,
  `coordinacion` varchar(25) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(32) NOT NULL,
  PRIMARY KEY (`coordinacion`),
  UNIQUE KEY `idCoordinador` (`idCoordinador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `coordinador`
--

INSERT INTO `coordinador` (`idCoordinador`, `nombre`, `apellido`, `cargo`, `coordinacion`, `correo`, `contraseña`) VALUES
(6, 'Jorge', '6', 'coordinador', 'admin', 'coordinador006@gmail.com', '487330f029c686df78bb49b490be67e7'),
(4, 'Glenda', 'Pineda', 'coordinador', 'bachillerato', 'coordinador004@gmail.com', 'f39a91651420415487cdc08a368d5997'),
(1, 'Gladis', '1', 'coordinador', 'parvularia', 'coordinador001@gmail.com', '7c30d2770bc78a540ca7bae10b6ee202'),
(5, 'Panezo', '5', 'coordinador', 'pastoral', 'coordinador005@gmail.com', 'c1b9b9693307cef1771d123652ea2736'),
(2, 'Brizuela', 'José', 'coordinador', 'primaria', 'coordinador002@gmail.com', 'f9e52e1f0485c2ffb20b40e25392029d'),
(7, 'Coordinador', '7', 'coordinador', 'servicio', 'coordinador007@gmail.com', '7c30d2770bc78a540ca7bae10b6ee202'),
(3, 'Gabriel', 'Coto', 'coordinador', 'tercer', 'coordinador003@gmail.com', '215f618152077afb76ae0431e1e73ebf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE IF NOT EXISTS `mensajes` (
  `idMensaje` int NOT NULL,
  `idEmisor` int NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `destino` varchar(15) NOT NULL,
  `contenido` text NOT NULL,
  PRIMARY KEY (`idMensaje`),
  KEY `idEmisor` (`idEmisor`),
  KEY `destino` (`destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`idMensaje`, `idEmisor`, `titulo`, `tipo`, `destino`, `contenido`) VALUES
(202121, 20212, 'Celebración del día del maestro ', 'felicitacion', 'admin', 'Por el buen trabajo desempeñado por parte de los miembros docentes, los cuales han demostrado un buen desempeño en su trabajo, se realizara una pequeña celebración '),
(202122, 20212, 'Compra de nuevos libros ', 'sugerencia', 'admin', 'Se ha tomado en cuenta los comentarios de los alumnos, de querer nuevos libros o de restaurar algunos ya que están en mal estado, y así mejorar los estudios y facilitar las invitaciones de ellos.'),
(202123, 20212, 'Distribución de docentes ', 'duda', 'admin', 'Debido al cambio de ambiente, nace la duda de como estarán asignados los docentes, los grados a los que estarán impartiendo clases y en que horarios.'),
(202141, 20214, 'Matricula', 'duda', 'admin', 'Quisiera saber cual es el proceso de matricula para el año 2022'),
(202142, 20214, 'Wow', 'felicitacion', 'bachillerato', 'Pase a ver un proyecto de Crea-J, llamado Sistema FDRS y quede muy impactado con el nivel de trabajo y dedicación de esos jóvenes'),
(202143, 20214, 'Cursos de vacaciones', 'duda', 'admin', 'Escuche que ustedes realizan cursos de diferentes ambitos durante las vacaciones, quisiera saber cuando, cuales y cuanto cuestan estos cursos.'),
(202151, 20215, 'Más cantidad de materiales didácticos ', 'sugerencia', 'primaria', 'Ya sea para poder estudiar, o hacer sus investigaciones, o contar con un proyector para poder presentar mejor información y hacer más entretenida la clase'),
(202152, 20215, 'Consulta', 'duda', 'servicio', 'Estoy atrasado con el pago de la colegiatura y quisiera saber si me puedo reunir con ustedes para platicar sobre mi situación.'),
(202153, 20215, 'Crea-J', 'felicitacion', 'primaria', 'Fue todo un exito la Crea-J, estuvo muy entretenida e interesante, felicidades por los logros.'),
(202172, 20217, 'Cambiar los pupitres ', 'sugerencia', 'tercer', 'Se han reportado varios pupitres en mal estado y varios alumnos de esa sección, los grados de tercer ciclo o no cuentan con pupitres suficientes o están en mal estado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
CREATE TABLE IF NOT EXISTS `respuesta` (
  `idRespuesta` int NOT NULL,
  `idRespondiendo` int NOT NULL,
  `idCoordinador` int NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  PRIMARY KEY (`idRespuesta`),
  UNIQUE KEY `idRespondiendo` (`idRespondiendo`),
  KEY `idCoordinador` (`idCoordinador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`idRespuesta`, `idRespondiendo`, `idCoordinador`, `titulo`, `contenido`) VALUES
(21, 202151, 2, 'Acerca de los materiales didácticos', 'Tomaremos en cuenta esta recomendación y dentro de poco se contarán con nuevos libros en libreria para que lso muchachos puedan investigar, además, ya se están instalando nuevos proyectores en los salones.'),
(22, 202153, 2, 'Agradecimiento', 'De todo corazón muchas gracias por sus palabras y estamos felices de que la Crea-j haya sido de sus agrado. '),
(61, 202121, 6, 'Gracias', 'Agradecemos de corazón sus felicitaciones. Bendiciones.'),
(62, 202122, 6, 'Respuesta', 'Tomaremos en cuenta sus sugerencias y trataremos de brindarles siempre lo mejor a los alumnos'),
(63, 202123, 6, 'Información sobre el cambio de docentes', 'Dentro de poco los docentes guías se comunicarán con los alumnos para proporcionarles dicha información ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `relacion` varchar(15) NOT NULL,
  `telefono` int NOT NULL,
  `correo` varchar(20) NOT NULL,
  `contra` varchar(32) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombres`, `apellidos`, `relacion`, `telefono`, `correo`, `contra`) VALUES
(20212, 'Carlos', 'Hernández', 'encargado', 74855698, 'carlos878@gmail.com', '9721303efb0c30db65979182c0294b07'),
(20214, 'José', 'Gomez', 'ajena', 78987778, 'jorgo88@gmail.com', '9721303efb0c30db65979182c0294b07'),
(20215, 'Xander', 'Martínez', 'encargado', 7895, 'xander798@gmail.com', '9721303efb0c30db65979182c0294b07'),
(20216, 'Ronald', 'Osvaldo', 'encargado', 7897, 'ronald008@gmail.com', '9721303efb0c30db65979182c0294b07'),
(20217, 'Carlos', 'Campos', 'estudiante', 21031234, 'carlos@gmail.com', '7f30eefe5c51e1ae0939dab2051db75f'),
(20221, 'Ronald', 'Manzano', 'estudiante', 46435253, 'manzano6deleon@gmail', '2f22297e28cee03d0cd69ea80f6d63aa'),
(20233, 'EsoTilin', 'Prueba', 'estudiante', 2121, 'esotilin@correo.com', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
